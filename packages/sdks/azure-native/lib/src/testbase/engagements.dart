import 'package:pulumi/pulumi.dart' as pulumi;

enum Engagements implements pulumi.PulumiEnum<String> {
  valueMVI("MVI"),
  valueMVP("MVP"),
  valueSUVP("SUVP"),
  valueMAPP("MAPP"),
  valueOther("Other");

  const Engagements(this.wireValue);
  @override
  final String wireValue;

  static Engagements fromValue(String value) {
    for (final item in Engagements.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Engagements value: $value');
  }
}
