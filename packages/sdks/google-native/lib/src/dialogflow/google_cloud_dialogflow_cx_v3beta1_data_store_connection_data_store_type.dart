/// The type of the connected data store.
enum GoogleCloudDialogflowCxV3beta1DataStoreConnectionDataStoreType {
  dataStoreTypeUnspecified("DATA_STORE_TYPE_UNSPECIFIED"),
  publicWeb("PUBLIC_WEB"),
  unstructured("UNSTRUCTURED"),
  structured("STRUCTURED");

  const GoogleCloudDialogflowCxV3beta1DataStoreConnectionDataStoreType(this.wireValue);
  final String wireValue;

  static GoogleCloudDialogflowCxV3beta1DataStoreConnectionDataStoreType fromValue(String value) {
    for (final item in GoogleCloudDialogflowCxV3beta1DataStoreConnectionDataStoreType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleCloudDialogflowCxV3beta1DataStoreConnectionDataStoreType value: $value');
  }
}

