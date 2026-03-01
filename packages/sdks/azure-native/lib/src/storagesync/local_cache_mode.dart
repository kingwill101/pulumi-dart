/// Policy for enabling follow-the-sun business models: link local cache to cloud behavior to pre-populate before local access.
enum LocalCacheMode {
  downloadNewAndModifiedFiles("DownloadNewAndModifiedFiles"),
  updateLocallyCachedFiles("UpdateLocallyCachedFiles");

  const LocalCacheMode(this.value);
  final String value;

  static LocalCacheMode fromValue(String value) {
    for (final item in LocalCacheMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LocalCacheMode value: $value');
  }
}

