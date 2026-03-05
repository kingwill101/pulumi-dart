/// Gets or sets the job action type.
enum JobActionType {
  valueHttp("Http"),
  valueHttps("Https"),
  valueStorageQueue("StorageQueue"),
  valueServiceBusQueue("ServiceBusQueue"),
  valueServiceBusTopic("ServiceBusTopic");

  const JobActionType(this.wireValue);
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

