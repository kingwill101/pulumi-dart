/// Required. The type of the training phrase.
enum GoogleCloudDialogflowV2beta1IntentTrainingPhraseType {
  typeUnspecified("TYPE_UNSPECIFIED"),
  example("EXAMPLE"),
  template("TEMPLATE");

  const GoogleCloudDialogflowV2beta1IntentTrainingPhraseType(this.wireValue);
  final String wireValue;

  static GoogleCloudDialogflowV2beta1IntentTrainingPhraseType fromValue(String value) {
    for (final item in GoogleCloudDialogflowV2beta1IntentTrainingPhraseType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleCloudDialogflowV2beta1IntentTrainingPhraseType value: $value');
  }
}
