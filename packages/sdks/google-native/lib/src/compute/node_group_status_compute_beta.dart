enum NodeGroupStatusComputeBeta {
  creating("CREATING"),
  deleting("DELETING"),
  invalid("INVALID"),
  ready("READY");

  const NodeGroupStatusComputeBeta(this.wireValue);
  final String wireValue;

  static NodeGroupStatusComputeBeta fromValue(String value) {
    for (final item in NodeGroupStatusComputeBeta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NodeGroupStatusComputeBeta value: $value');
  }
}

