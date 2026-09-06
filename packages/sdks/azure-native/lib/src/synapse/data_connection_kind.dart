import 'package:pulumi/pulumi.dart' as pulumi;

/// Kind of the endpoint for the data connection
enum DataConnectionKind implements pulumi.PulumiEnum<String> {
  valueEventHub("EventHub"),
  valueEventGrid("EventGrid"),
  valueIotHub("IotHub");

  const DataConnectionKind(this.wireValue);
  @override
  final String wireValue;

  static DataConnectionKind fromValue(String value) {
    for (final item in DataConnectionKind.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DataConnectionKind value: $value');
  }
}
