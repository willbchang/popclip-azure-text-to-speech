#!/bin/zsh
# #popclip
# name: Azure TTS
# icon: symbol:message.and.waveform

# Please apply for your own key
AZURE_REGION=
AZURE_SUBSCRIPTION_KEY=

# Create a temporary audio file
temp_audio_file=$(mktemp)

# Use curl to download and save the audio data to the temporary file
curl -X POST "https://${AZURE_REGION}.tts.speech.microsoft.com/cognitiveservices/v1" \
     -H "Ocp-Apim-Subscription-Key: ${AZURE_SUBSCRIPTION_KEY}" \
     -H "Content-Type: application/ssml+xml" \
     -H "X-Microsoft-OutputFormat: audio-16khz-32kbitrate-mono-mp3" \
     -d "<speak version=\"1.0\" xmlns=\"http://www.w3.org/2001/10/synthesis\" xml:lang=\"en-US\">
    <voice name=\"en-US-JennyMultilingualNeural\">
        $POPCLIP_TEXT
    </voice>
</speak>" -so "$temp_audio_file"

# Play the temporary audio file using afplay
afplay "$temp_audio_file"

# Clean up the temporary audio file when you're done with it
rm "$temp_audio_file"
