import 'package:pulumi/pulumi.dart' as pulumi;

/// The role of the contact.
enum Role implements pulumi.PulumiEnum<String> {
  valueNoc("Noc"),
  valuePolicy("Policy"),
  valueTechnical("Technical"),
  valueService("Service"),
  valueEscalation("Escalation"),
  valueOther("Other");

  const Role(this.wireValue);
  @override
  final String wireValue;

  static Role fromValue(String value) {
    for (final item in Role.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Role value: $value');
  }
}
