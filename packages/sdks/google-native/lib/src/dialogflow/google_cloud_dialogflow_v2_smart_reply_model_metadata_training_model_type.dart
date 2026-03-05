/// Optional. Type of the smart reply model. If not provided, model_type is used.
enum GoogleCloudDialogflowV2SmartReplyModelMetadataTrainingModelType {
  modelTypeUnspecified("MODEL_TYPE_UNSPECIFIED"),
  smartReplyDualEncoderModel("SMART_REPLY_DUAL_ENCODER_MODEL"),
  smartReplyBertModel("SMART_REPLY_BERT_MODEL");

  const GoogleCloudDialogflowV2SmartReplyModelMetadataTrainingModelType(this.wireValue);
  final String wireValue;

  static GoogleCloudDialogflowV2SmartReplyModelMetadataTrainingModelType fromValue(String value) {
    for (final item in GoogleCloudDialogflowV2SmartReplyModelMetadataTrainingModelType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleCloudDialogflowV2SmartReplyModelMetadataTrainingModelType value: $value');
  }
}

