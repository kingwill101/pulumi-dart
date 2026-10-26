import 'package:pulumi/pulumi.dart' as pulumi;

/// Potential issues with the underlying Pub/Sub subscription configuration. Only populated on get requests.
enum PubsubConfigState implements pulumi.PulumiEnum<String> {
  stateUnspecified("STATE_UNSPECIFIED"),
  ok("OK"),
  subscriptionDeleted("SUBSCRIPTION_DELETED"),
  topicDeleted("TOPIC_DELETED"),
  subscriptionMisconfigured("SUBSCRIPTION_MISCONFIGURED");

  const PubsubConfigState(this.wireValue);
  @override
  final String wireValue;

  static PubsubConfigState fromValue(String value) {
    for (final item in PubsubConfigState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PubsubConfigState value: $value');
  }
}
