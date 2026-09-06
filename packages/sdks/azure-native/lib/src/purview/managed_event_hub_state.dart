import 'package:pulumi/pulumi.dart' as pulumi;

/// Gets or sets the state of managed eventhub. If enabled managed eventhub will be created, if disabled the managed eventhub will be removed.
enum ManagedEventHubState implements pulumi.PulumiEnum<String> {
  notSpecified("NotSpecified"),
  disabled("Disabled"),
  enabled("Enabled");

  const ManagedEventHubState(this.wireValue);
  @override
  final String wireValue;

  static ManagedEventHubState fromValue(String value) {
    for (final item in ManagedEventHubState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ManagedEventHubState value: $value');
  }
}
