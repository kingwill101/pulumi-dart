import 'package:pulumi/pulumi.dart' as pulumi;

/// Policy for enabling follow-the-sun business models: link local cache to cloud behavior to pre-populate before local access.
enum LocalCacheMode implements pulumi.PulumiEnum<String> {
  downloadNewAndModifiedFiles("DownloadNewAndModifiedFiles"),
  updateLocallyCachedFiles("UpdateLocallyCachedFiles");

  const LocalCacheMode(this.wireValue);
  @override
  final String wireValue;

  static LocalCacheMode fromValue(String value) {
    for (final item in LocalCacheMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LocalCacheMode value: $value');
  }
}
