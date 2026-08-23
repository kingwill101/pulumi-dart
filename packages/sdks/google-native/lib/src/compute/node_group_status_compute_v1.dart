enum NodeGroupStatusComputeV1 {
  creating("CREATING"),
  deleting("DELETING"),
  invalid("INVALID"),
  ready("READY");

  const NodeGroupStatusComputeV1(this.wireValue);
  final String wireValue;

  static NodeGroupStatusComputeV1 fromValue(String value) {
    for (final item in NodeGroupStatusComputeV1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NodeGroupStatusComputeV1 value: $value');
  }
}
