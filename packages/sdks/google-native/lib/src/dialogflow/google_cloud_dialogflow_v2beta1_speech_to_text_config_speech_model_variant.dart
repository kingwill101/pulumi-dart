/// The speech model used in speech to text. `SPEECH_MODEL_VARIANT_UNSPECIFIED`, `USE_BEST_AVAILABLE` will be treated as `USE_ENHANCED`. It can be overridden in AnalyzeContentRequest and StreamingAnalyzeContentRequest request. If enhanced model variant is specified and an enhanced version of the specified model for the language does not exist, then it would emit an error.
enum GoogleCloudDialogflowV2beta1SpeechToTextConfigSpeechModelVariant {
  speechModelVariantUnspecified("SPEECH_MODEL_VARIANT_UNSPECIFIED"),
  useBestAvailable("USE_BEST_AVAILABLE"),
  useStandard("USE_STANDARD"),
  useEnhanced("USE_ENHANCED");

  const GoogleCloudDialogflowV2beta1SpeechToTextConfigSpeechModelVariant(
    this.wireValue,
  );
  final String wireValue;

  static GoogleCloudDialogflowV2beta1SpeechToTextConfigSpeechModelVariant
  fromValue(String value) {
    for (final item
        in GoogleCloudDialogflowV2beta1SpeechToTextConfigSpeechModelVariant
            .values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown GoogleCloudDialogflowV2beta1SpeechToTextConfigSpeechModelVariant value: $value',
    );
  }
}
