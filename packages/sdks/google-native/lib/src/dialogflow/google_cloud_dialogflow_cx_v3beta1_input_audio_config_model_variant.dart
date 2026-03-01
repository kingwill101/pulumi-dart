/// Optional. Which variant of the Speech model to use.
enum GoogleCloudDialogflowCxV3beta1InputAudioConfigModelVariant {
  speechModelVariantUnspecified("SPEECH_MODEL_VARIANT_UNSPECIFIED"),
  useBestAvailable("USE_BEST_AVAILABLE"),
  useStandard("USE_STANDARD"),
  useEnhanced("USE_ENHANCED");

  const GoogleCloudDialogflowCxV3beta1InputAudioConfigModelVariant(this.value);
  final String value;

  static GoogleCloudDialogflowCxV3beta1InputAudioConfigModelVariant fromValue(String value) {
    for (final item in GoogleCloudDialogflowCxV3beta1InputAudioConfigModelVariant.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleCloudDialogflowCxV3beta1InputAudioConfigModelVariant value: $value');
  }
}

