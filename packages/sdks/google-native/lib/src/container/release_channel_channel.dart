/// channel specifies which release channel the cluster is subscribed to.
enum ReleaseChannelChannel {
  unspecified("UNSPECIFIED"),
  rapid("RAPID"),
  regular("REGULAR"),
  stable("STABLE");

  const ReleaseChannelChannel(this.wireValue);
  final String wireValue;

  static ReleaseChannelChannel fromValue(String value) {
    for (final item in ReleaseChannelChannel.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ReleaseChannelChannel value: $value');
  }
}

