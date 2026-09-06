import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of the ingressStartAt, It can be "EarliestAvailable", "EventSourceCreationTime", "CustomEnqueuedTime".
enum IngressStartAtType implements pulumi.PulumiEnum<String> {
  valueEarliestAvailable("EarliestAvailable"),
  valueEventSourceCreationTime("EventSourceCreationTime"),
  valueCustomEnqueuedTime("CustomEnqueuedTime");

  const IngressStartAtType(this.wireValue);
  @override
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
