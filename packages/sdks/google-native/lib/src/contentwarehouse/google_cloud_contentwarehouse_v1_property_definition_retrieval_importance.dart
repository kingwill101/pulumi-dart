import 'package:pulumi/pulumi.dart' as pulumi;

/// The retrieval importance of the property during search.
enum GoogleCloudContentwarehouseV1PropertyDefinitionRetrievalImportance implements pulumi.PulumiEnum<String> {
  retrievalImportanceUnspecified("RETRIEVAL_IMPORTANCE_UNSPECIFIED"),
  highest("HIGHEST"),
  higher("HIGHER"),
  high("HIGH"),
  medium("MEDIUM"),
  low("LOW"),
  lowest("LOWEST");

  const GoogleCloudContentwarehouseV1PropertyDefinitionRetrievalImportance(this.wireValue);
  @override
  final String wireValue;

  static GoogleCloudContentwarehouseV1PropertyDefinitionRetrievalImportance fromValue(String value) {
    for (final item in GoogleCloudContentwarehouseV1PropertyDefinitionRetrievalImportance.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleCloudContentwarehouseV1PropertyDefinitionRetrievalImportance value: $value');
  }
}
