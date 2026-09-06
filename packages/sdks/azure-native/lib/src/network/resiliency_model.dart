import 'package:pulumi/pulumi.dart' as pulumi;

/// Property to indicate if the Express Route Gateway has resiliency model of MultiHomed or SingleHomed
enum ResiliencyModel implements pulumi.PulumiEnum<String> {
  valueSingleHomed("SingleHomed"),
  valueMultiHomed("MultiHomed");

  const ResiliencyModel(this.wireValue);
  @override
  final String wireValue;

  static ResiliencyModel fromValue(String value) {
    for (final item in ResiliencyModel.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ResiliencyModel value: $value');
  }
}
