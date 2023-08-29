# PopClip Azure Text To Speech
A PopClip extension to speak selected text with [Azure TTS](https://learn.microsoft.com/en-us/azure/ai-services/speech-service/rest-text-to-speech?tabs=streaming).

## Installation
1. Go to [azure_tts.sh](./azure_tts.sh)
2. Select all the code, if you select with <kbd>Command</kbd> + <kbd>A</kbd>you need to use the customized keyboard shortcut you've set to call PopClip.
3. Click `Install Extension "Azure TTS"`
4. Input the `Azure Region` and `Azure Subscription Key`, then click OK.

## Features
After installing, select the text below and click the speak with wave icon.
```
Be reverent before the dawning day. Do not think of what will be in a year, or in ten years. Think of to-day.
```

You can compare with the `say` command, by running it in Terminal.
```bash
say "Be reverent before the dawning day. Do not think of what will be in a year, or in ten years. Think of to-day."
```

## TODO
Make dropdown list in options to select.
- [ ] all the [region](https://learn.microsoft.com/en-us/azure/ai-services/speech-service/regions#speech-service) (maybe pasting will be better in this case.)
- [ ] [OutputFormat](https://learn.microsoft.com/en-us/azure/ai-services/speech-service/rest-text-to-speech?tabs=streaming#audio-outputs)
- [ ] [Language and Voice](https://learn.microsoft.com/en-us/azure/ai-services/speech-service/language-support?tabs=tts)
- [ ] [Voice styles and roles](https://learn.microsoft.com/en-us/azure/ai-services/speech-service/language-support?tabs=tts#voice-styles-and-roles)

I may do it slowly because I don't have enough time to complete it, Pull Requests are always welcome!

## LICENSE
AGPL-3.0
