/// The alias kind.
enum AliasContextKind {
  kindUnspecified("KIND_UNSPECIFIED"),
  fixed("FIXED"),
  movable("MOVABLE"),
  other("OTHER");

  const AliasContextKind(this.wireValue);
  final String wireValue;

  static AliasContextKind fromValue(String value) {
    for (final item in AliasContextKind.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AliasContextKind value: $value');
  }
}
