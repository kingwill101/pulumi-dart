/// channel specifies which release channel the cluster is subscribed to.
enum ReleaseChannelChannelContainerV1beta1 {
  unspecified("UNSPECIFIED"),
  rapid("RAPID"),
  regular("REGULAR"),
  stable("STABLE");

  const ReleaseChannelChannelContainerV1beta1(this.wireValue);
  final String wireValue;

  static ReleaseChannelChannelContainerV1beta1 fromValue(String value) {
    for (final item in ReleaseChannelChannelContainerV1beta1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown ReleaseChannelChannelContainerV1beta1 value: $value',
    );
  }
}
