/// The application client type
enum ClientType {
  valueNone("none"),
  valueDotnet("dotnet"),
  valueJava("java"),
  valuePython("python"),
  valueGo("go"),
  valuePhp("php"),
  valueRuby("ruby"),
  valueDjango("django"),
  valueNodejs("nodejs"),
  valueSpringBoot("springBoot"),
  valueKafkaSpringBoot("kafka-springBoot"),
  valueJmsSpringBoot("jms-springBoot"),
  valueDapr("dapr");

  const ClientType(this.wireValue);
  final String wireValue;

  static ClientType fromValue(String value) {
    for (final item in ClientType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ClientType value: $value');
  }
}
