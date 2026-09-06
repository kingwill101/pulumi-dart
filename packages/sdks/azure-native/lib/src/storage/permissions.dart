import 'package:pulumi/pulumi.dart' as pulumi;

/// The signed permissions for the service SAS. Possible values include: Read (r), Write (w), Delete (d), List (l), Add (a), Create (c), Update (u) and Process (p).
enum Permissions implements pulumi.PulumiEnum<String> {
  valueR("r"),
  valueD("d"),
  valueW("w"),
  valueL("l"),
  valueA("a"),
  valueC("c"),
  valueU("u"),
  valueP("p");

  const Permissions(this.wireValue);
  @override
  final String wireValue;

  static Permissions fromValue(String value) {
    for (final item in Permissions.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Permissions value: $value');
  }
}
