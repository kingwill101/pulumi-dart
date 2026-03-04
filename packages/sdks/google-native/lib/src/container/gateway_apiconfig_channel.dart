/// The Gateway API release channel to use for Gateway API.
enum GatewayAPIConfigChannel {
  channelUnspecified("CHANNEL_UNSPECIFIED"),
  channelDisabled("CHANNEL_DISABLED"),
  channelExperimental("CHANNEL_EXPERIMENTAL"),
  channelStandard("CHANNEL_STANDARD");

  const GatewayAPIConfigChannel(this.wireValue);
  final String wireValue;

  static GatewayAPIConfigChannel fromValue(String value) {
    for (final item in GatewayAPIConfigChannel.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GatewayAPIConfigChannel value: $value');
  }
}
