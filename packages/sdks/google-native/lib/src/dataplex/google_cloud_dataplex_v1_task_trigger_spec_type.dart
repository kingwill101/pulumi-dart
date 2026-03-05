/// Required. Immutable. Trigger type of the user-specified Task.
enum GoogleCloudDataplexV1TaskTriggerSpecType {
  typeUnspecified("TYPE_UNSPECIFIED"),
  onDemand("ON_DEMAND"),
  recurring("RECURRING");

  const GoogleCloudDataplexV1TaskTriggerSpecType(this.wireValue);
  final String wireValue;

  static GoogleCloudDataplexV1TaskTriggerSpecType fromValue(String value) {
    for (final item in GoogleCloudDataplexV1TaskTriggerSpecType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleCloudDataplexV1TaskTriggerSpecType value: $value');
  }
}

