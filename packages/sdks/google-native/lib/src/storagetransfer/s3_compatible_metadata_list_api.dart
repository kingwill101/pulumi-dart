/// The Listing API to use for discovering objects. When not specified, Transfer Service will attempt to determine the right API to use.
enum S3CompatibleMetadataListApi {
  listApiUnspecified("LIST_API_UNSPECIFIED"),
  listObjectsV2("LIST_OBJECTS_V2"),
  listObjects("LIST_OBJECTS");

  const S3CompatibleMetadataListApi(this.value);
  final String value;

  static S3CompatibleMetadataListApi fromValue(String value) {
    for (final item in S3CompatibleMetadataListApi.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown S3CompatibleMetadataListApi value: $value');
  }
}

