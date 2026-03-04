/// Policy for how the initial upload sync session is performed.
enum InitialUploadPolicy {
  serverAuthoritative("ServerAuthoritative"),
  merge("Merge");

  const InitialUploadPolicy(this.wireValue);
  final String wireValue;

  static InitialUploadPolicy fromValue(String value) {
    for (final item in InitialUploadPolicy.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InitialUploadPolicy value: $value');
  }
}
