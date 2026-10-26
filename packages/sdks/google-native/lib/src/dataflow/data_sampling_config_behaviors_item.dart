import 'package:pulumi/pulumi.dart' as pulumi;

enum DataSamplingConfigBehaviorsItem implements pulumi.PulumiEnum<String> {
  dataSamplingBehaviorUnspecified("DATA_SAMPLING_BEHAVIOR_UNSPECIFIED"),
  disabled("DISABLED"),
  alwaysOn("ALWAYS_ON"),
  exceptions("EXCEPTIONS");

  const DataSamplingConfigBehaviorsItem(this.wireValue);
  @override
  final String wireValue;

  static DataSamplingConfigBehaviorsItem fromValue(String value) {
    for (final item in DataSamplingConfigBehaviorsItem.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DataSamplingConfigBehaviorsItem value: $value');
  }
}
