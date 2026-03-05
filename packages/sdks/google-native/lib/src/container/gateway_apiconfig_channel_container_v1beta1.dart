/// The Gateway API release channel to use for Gateway API.
enum GatewayAPIConfigChannelContainerV1beta1 {
  channelUnspecified("CHANNEL_UNSPECIFIED"),
  channelDisabled("CHANNEL_DISABLED"),
  channelExperimental("CHANNEL_EXPERIMENTAL"),
  channelStandard("CHANNEL_STANDARD");

  const GatewayAPIConfigChannelContainerV1beta1(this.wireValue);
  final String wireValue;

  static GatewayAPIConfigChannelContainerV1beta1 fromValue(String value) {
    for (final item in GatewayAPIConfigChannelContainerV1beta1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GatewayAPIConfigChannelContainerV1beta1 value: $value');
  }
}

