import 'package:pulumi/pulumi.dart' as pulumi;

/// Optional. Type of the JMS Source. i.e. Queue or Topic
enum JMSType implements pulumi.PulumiEnum<String> {
  typeUnspecified("TYPE_UNSPECIFIED"),
  queue("QUEUE"),
  topic("TOPIC");

  const JMSType(this.wireValue);
  @override
  final String wireValue;

  static JMSType fromValue(String value) {
    for (final item in JMSType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown JMSType value: $value');
  }
}
