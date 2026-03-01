/// Optional: Specifies the update channel for the monthly Redis updates your Redis Cache will receive. Caches using 'Preview' update channel get latest Redis updates at least 4 weeks ahead of 'Stable' channel caches. Default value is 'Stable'.
enum UpdateChannel {
  stable("Stable"),
  preview("Preview");

  const UpdateChannel(this.value);
  final String value;

  static UpdateChannel fromValue(String value) {
    for (final item in UpdateChannel.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown UpdateChannel value: $value');
  }
}

