import 'package:pulumi/pulumi.dart' as pulumi;

/// The signed services accessible with the account SAS. Possible values include: Blob (b), Queue (q), Table (t), File (f).
enum Services implements pulumi.PulumiEnum<String> {
  valueB("b"),
  valueQ("q"),
  valueT("t"),
  valueF("f");

  const Services(this.wireValue);
  @override
  final String wireValue;

  static Services fromValue(String value) {
    for (final item in Services.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Services value: $value');
  }
}
