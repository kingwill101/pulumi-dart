import 'package:pulumi/pulumi.dart' as pulumi;

/// The region of the instance
enum Region implements pulumi.PulumiEnum<String> {
  eastus("eastus"),
  centralus("centralus"),
  westus("westus"),
  westeurope("westeurope"),
  japaneast("japaneast"),
  koreacentral("koreacentral");

  const Region(this.wireValue);
  @override
  final String wireValue;

  static Region fromValue(String value) {
    for (final item in Region.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Region value: $value');
  }
}
