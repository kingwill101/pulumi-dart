/// Gets or sets the state of managed eventhub. If enabled managed eventhub will be created, if disabled the managed eventhub will be removed.
enum ManagedEventHubState {
  valueNotSpecified("NotSpecified"),
  valueDisabled("Disabled"),
  valueEnabled("Enabled");

  const ManagedEventHubState(this.value);
  final String value;

  static ManagedEventHubState fromValue(String value) {
    for (final item in ManagedEventHubState.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ManagedEventHubState value: $value');
  }
}

