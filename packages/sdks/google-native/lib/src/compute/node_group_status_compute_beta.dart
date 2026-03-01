enum NodeGroupStatusComputeBeta {
  creating("CREATING"),
  deleting("DELETING"),
  invalid("INVALID"),
  ready("READY");

  const NodeGroupStatusComputeBeta(this.value);
  final String value;

  static NodeGroupStatusComputeBeta fromValue(String value) {
    for (final item in NodeGroupStatusComputeBeta.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NodeGroupStatusComputeBeta value: $value');
  }
}

