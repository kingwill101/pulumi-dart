enum NodeGroupStatus {
  creating("CREATING"),
  deleting("DELETING"),
  invalid("INVALID"),
  ready("READY");

  const NodeGroupStatus(this.wireValue);
  final String wireValue;

  static NodeGroupStatus fromValue(String value) {
    for (final item in NodeGroupStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NodeGroupStatus value: $value');
  }
}

