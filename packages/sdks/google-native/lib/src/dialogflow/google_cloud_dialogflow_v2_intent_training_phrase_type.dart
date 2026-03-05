/// Required. The type of the training phrase.
enum GoogleCloudDialogflowV2IntentTrainingPhraseType {
  typeUnspecified("TYPE_UNSPECIFIED"),
  example("EXAMPLE"),
  template("TEMPLATE");

  const GoogleCloudDialogflowV2IntentTrainingPhraseType(this.wireValue);
  final String wireValue;

  static GoogleCloudDialogflowV2IntentTrainingPhraseType fromValue(String value) {
    for (final item in GoogleCloudDialogflowV2IntentTrainingPhraseType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleCloudDialogflowV2IntentTrainingPhraseType value: $value');
  }
}

