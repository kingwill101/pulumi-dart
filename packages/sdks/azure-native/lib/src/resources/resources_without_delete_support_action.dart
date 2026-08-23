/// Some resources do not support deletion.  This flag will denote how the stack should handle those resources.
enum ResourcesWithoutDeleteSupportAction {
  detach("detach"),
  fail("fail");

  const ResourcesWithoutDeleteSupportAction(this.wireValue);
  final String wireValue;

  static ResourcesWithoutDeleteSupportAction fromValue(String value) {
    for (final item in ResourcesWithoutDeleteSupportAction.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ResourcesWithoutDeleteSupportAction value: $value');
  }
}
