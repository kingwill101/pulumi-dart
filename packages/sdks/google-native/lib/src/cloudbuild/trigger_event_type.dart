/// EventType allows the user to explicitly set the type of event to which this BuildTrigger should respond. This field will be validated against the rest of the configuration if it is set.
enum TriggerEventType {
  eventTypeUnspecified("EVENT_TYPE_UNSPECIFIED"),
  repo("REPO"),
  webhook("WEBHOOK"),
  pubsub("PUBSUB"),
  manual("MANUAL");

  const TriggerEventType(this.wireValue);
  final String wireValue;

  static TriggerEventType fromValue(String value) {
    for (final item in TriggerEventType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TriggerEventType value: $value');
  }
}
