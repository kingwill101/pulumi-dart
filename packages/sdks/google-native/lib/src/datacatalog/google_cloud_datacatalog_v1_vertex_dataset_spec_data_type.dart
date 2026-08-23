/// Type of the dataset.
enum GoogleCloudDatacatalogV1VertexDatasetSpecDataType {
  dataTypeUnspecified("DATA_TYPE_UNSPECIFIED"),
  table("TABLE"),
  image("IMAGE"),
  text("TEXT"),
  video("VIDEO"),
  conversation("CONVERSATION"),
  timeSeries("TIME_SERIES"),
  document("DOCUMENT"),
  textToSpeech("TEXT_TO_SPEECH"),
  translation("TRANSLATION"),
  storeVision("STORE_VISION"),
  enterpriseKnowledgeGraph("ENTERPRISE_KNOWLEDGE_GRAPH"),
  textPrompt("TEXT_PROMPT");

  const GoogleCloudDatacatalogV1VertexDatasetSpecDataType(this.wireValue);
  final String wireValue;

  static GoogleCloudDatacatalogV1VertexDatasetSpecDataType fromValue(String value) {
    for (final item in GoogleCloudDatacatalogV1VertexDatasetSpecDataType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleCloudDatacatalogV1VertexDatasetSpecDataType value: $value');
  }
}
