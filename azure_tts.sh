#!/bin/zsh
# #popclip
# name: Azure TTS
# icon: symbol:message.and.waveform
# options:
# - { identifier: region, label: Azure Region, type: string, default value: eastus, description: "Region for Speech Service" }
# - { identifier: key, label: Azure Subscription Key, type: string, description: "The key of Speech Resource" }
# - { identifier: format, label: Audio Outputs, type: string, default value: audio-16khz-32kbitrate-mono-mp3, description: "Microsoft Output Format" }
# - { identifier: lang, label: Locale, type: string, default value: en-US, description: "The language to speech" }
# - { identifier: voice, label: Text-to-speech Voices, type: string, default value: en-US-JennyMultilingualNeural, description: "The voice name with locale prefixed" }

# Create a temporary audio file
temp_audio_file=$(mktemp)

# Use curl to download and save the audio data to the temporary file
curl -X POST "https://${POPCLIP_OPTION_REGION}.tts.speech.microsoft.com/cognitiveservices/v1" \
     -H "Ocp-Apim-Subscription-Key: ${POPCLIP_OPTION_KEY}" \
     -H "Content-Type: application/ssml+xml" \
     -H "X-Microsoft-OutputFormat: ${POPCLIP_OPTION_FORMAT}" \
     -d "<speak version=\"1.0\" xmlns=\"http://www.w3.org/2001/10/synthesis\" xml:lang=\"${POPCLIP_OPTION_LANG}\">
    <voice name=\"${POPCLIP_OPTION_VOICE}\">
        $POPCLIP_TEXT
    </voice>
</speak>" -so "$temp_audio_file"

# Play the temporary audio file using afplay
afplay "$temp_audio_file"

# Clean up the temporary audio file when you're done with it
rm "$temp_audio_file"
