import 'package:pulumi/pulumi.dart' as pulumi;

/// The Gateway API release channel to use for Gateway API.
enum GatewayAPIConfigChannel implements pulumi.PulumiEnum<String> {
  channelUnspecified("CHANNEL_UNSPECIFIED"),
  channelDisabled("CHANNEL_DISABLED"),
  channelExperimental("CHANNEL_EXPERIMENTAL"),
  channelStandard("CHANNEL_STANDARD");

  const GatewayAPIConfigChannel(this.wireValue);
  @override
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
