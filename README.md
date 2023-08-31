# PopClip Azure Text To Speech
A PopClip extension to speak selected text with [Azure TTS](https://learn.microsoft.com/en-us/azure/ai-services/speech-service/rest-text-to-speech?tabs=streaming).

## Installation
1. Go to [azure_tts.sh](./azure_tts.sh)
2. Select all the code, if you select with <kbd>Command</kbd> + <kbd>A</kbd> you need to use the customized keyboard shortcut you've set to call PopClip.
3. Click `Install Extension "Azure TTS"`
4. Input the options, then click OK.

<details>
   <summary>Fill the options</summary>

1. To get **Azure Region** and **Azure Subscription Key**, you need to create an Azure account. https://azure.microsoft.com/en-us/free/
2. Then go to https://portal.azure.com/#home
3. Click **Create a resource**
4. Search for **Speech**, check **Azure services only**, ensure the result belongs to **Microsoft Azure Service**
5. Click it, then click **Create** and following the steps.
   - Choose Free(F0) for Pricing Tier. The limitation is 0.5 million characters free per month, it should be enough for using this extension.
6. Go to https://portal.azure.com/#home, click the app you created, you'll see the **Azure Region** **and Azure Subscription Key**.

You can find the values of options here.
- [x] [Region](https://learn.microsoft.com/en-us/azure/ai-services/speech-service/regions#speech-service)
- [x] [OutputFormat](https://learn.microsoft.com/en-us/azure/ai-services/speech-service/rest-text-to-speech?tabs=streaming#audio-outputs)
- [x] [Language and Voice](https://learn.microsoft.com/en-us/azure/ai-services/speech-service/language-support?tabs=tts#supported-languages)
- [ ] [Voice styles and roles](https://learn.microsoft.com/en-us/azure/ai-services/speech-service/language-support?tabs=tts#voice-styles-and-roles)(Not support yet)

</details>


## Features
After installing, select the text below and click the speak with wave icon.
```
Be reverent before the dawning day. Do not think of what will be in a year, or in ten years. Think of to-day.
```

You can compare with the `say` command, by running it in Terminal.
```bash
say "Be reverent before the dawning day. Do not think of what will be in a year, or in ten years. Think of to-day."
```

You can click the loading icon to stop while speeching. 

## LICENSE
AGPL-3.0
