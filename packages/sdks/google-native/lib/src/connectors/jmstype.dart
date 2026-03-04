/// Optional. Type of the JMS Source. i.e. Queue or Topic
enum JMSType {
  typeUnspecified("TYPE_UNSPECIFIED"),
  queue("QUEUE"),
  topic("TOPIC");

  const JMSType(this.wireValue);
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
