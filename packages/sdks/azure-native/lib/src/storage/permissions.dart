/// The signed permissions for the service SAS. Possible values include: Read (r), Write (w), Delete (d), List (l), Add (a), Create (c), Update (u) and Process (p).
enum Permissions {
  valueR("r"),
  valueD("d"),
  valueW("w"),
  valueL("l"),
  valueA("a"),
  valueC("c"),
  valueU("u"),
  valueP("p");

  const Permissions(this.value);
  final String value;

  static Permissions fromValue(String value) {
    for (final item in Permissions.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Permissions value: $value');
  }
}

