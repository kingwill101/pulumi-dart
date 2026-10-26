import 'package:pulumi/pulumi.dart' as pulumi;

/// Optional. Type of the article suggestion model. If not provided, model_type is used.
enum GoogleCloudDialogflowV2ArticleSuggestionModelMetadataTrainingModelType implements pulumi.PulumiEnum<String> {
  modelTypeUnspecified("MODEL_TYPE_UNSPECIFIED"),
  smartReplyDualEncoderModel("SMART_REPLY_DUAL_ENCODER_MODEL"),
  smartReplyBertModel("SMART_REPLY_BERT_MODEL");

  const GoogleCloudDialogflowV2ArticleSuggestionModelMetadataTrainingModelType(this.wireValue);
  @override
  final String wireValue;

  static GoogleCloudDialogflowV2ArticleSuggestionModelMetadataTrainingModelType fromValue(String value) {
    for (final item in GoogleCloudDialogflowV2ArticleSuggestionModelMetadataTrainingModelType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleCloudDialogflowV2ArticleSuggestionModelMetadataTrainingModelType value: $value');
  }
}
