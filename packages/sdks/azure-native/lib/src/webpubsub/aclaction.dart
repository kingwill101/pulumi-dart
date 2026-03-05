/// Azure Networking ACL Action.
enum ACLAction {
  valueAllow("Allow"),
  valueDeny("Deny");

  const ACLAction(this.wireValue);
  final String wireValue;

  static ACLAction fromValue(String value) {
    for (final item in ACLAction.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ACLAction value: $value');
  }
}

