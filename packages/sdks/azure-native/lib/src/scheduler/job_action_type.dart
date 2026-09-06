import 'package:pulumi/pulumi.dart' as pulumi;

/// Gets or sets the job action type.
enum JobActionType implements pulumi.PulumiEnum<String> {
  valueHttp("Http"),
  valueHttps("Https"),
  valueStorageQueue("StorageQueue"),
  valueServiceBusQueue("ServiceBusQueue"),
  valueServiceBusTopic("ServiceBusTopic");

  const JobActionType(this.wireValue);
  @override
  final String wireValue;

  static JobActionType fromValue(String value) {
    for (final item in JobActionType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown JobActionType value: $value');
  }
}
