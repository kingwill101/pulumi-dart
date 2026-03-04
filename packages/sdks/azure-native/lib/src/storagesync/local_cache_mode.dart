/// Policy for enabling follow-the-sun business models: link local cache to cloud behavior to pre-populate before local access.
enum LocalCacheMode {
  downloadNewAndModifiedFiles("DownloadNewAndModifiedFiles"),
  updateLocallyCachedFiles("UpdateLocallyCachedFiles");

  const LocalCacheMode(this.wireValue);
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
