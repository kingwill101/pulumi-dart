/// The type of the ingressStartAt, It can be "EarliestAvailable", "EventSourceCreationTime", "CustomEnqueuedTime".
enum IngressStartAtType {
  valueEarliestAvailable("EarliestAvailable"),
  valueEventSourceCreationTime("EventSourceCreationTime"),
  valueCustomEnqueuedTime("CustomEnqueuedTime");

  const IngressStartAtType(this.wireValue);
  final String wireValue;

  static IngressStartAtType fromValue(String value) {
    for (final item in IngressStartAtType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IngressStartAtType value: $value');
  }
}
