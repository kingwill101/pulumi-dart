/// The role of the contact.
enum Role {
  valueNoc("Noc"),
  valuePolicy("Policy"),
  valueTechnical("Technical"),
  valueService("Service"),
  valueEscalation("Escalation"),
  valueOther("Other");

  const Role(this.wireValue);
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
