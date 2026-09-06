import 'package:pulumi/pulumi.dart' as pulumi;

/// The platform where the assessed resource resides
enum Source implements pulumi.PulumiEnum<String> {
  valueAzure("Azure"),
  valueOnPremise("OnPremise"),
  valueOnPremiseSql("OnPremiseSql");

  const Source(this.wireValue);
  @override
  final String wireValue;

  static Source fromValue(String value) {
    for (final item in Source.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Source value: $value');
  }
}
