import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of the connected data store.
enum GoogleCloudDialogflowCxV3DataStoreConnectionDataStoreType implements pulumi.PulumiEnum<String> {
  dataStoreTypeUnspecified("DATA_STORE_TYPE_UNSPECIFIED"),
  publicWeb("PUBLIC_WEB"),
  unstructured("UNSTRUCTURED"),
  structured("STRUCTURED");

  const GoogleCloudDialogflowCxV3DataStoreConnectionDataStoreType(this.wireValue);
  @override
  final String wireValue;

  static GoogleCloudDialogflowCxV3DataStoreConnectionDataStoreType fromValue(String value) {
    for (final item in GoogleCloudDialogflowCxV3DataStoreConnectionDataStoreType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleCloudDialogflowCxV3DataStoreConnectionDataStoreType value: $value');
  }
}
