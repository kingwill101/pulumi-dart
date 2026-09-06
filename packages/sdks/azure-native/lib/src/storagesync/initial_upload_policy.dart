import 'package:pulumi/pulumi.dart' as pulumi;

/// Policy for how the initial upload sync session is performed.
enum InitialUploadPolicy implements pulumi.PulumiEnum<String> {
  serverAuthoritative("ServerAuthoritative"),
  merge("Merge");

  const InitialUploadPolicy(this.wireValue);
  @override
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
