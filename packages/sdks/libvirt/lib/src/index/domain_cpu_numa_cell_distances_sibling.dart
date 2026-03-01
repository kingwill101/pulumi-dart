// ignore_for_file: unused_element, unnecessary_cast


class DomainCpuNumaCellDistancesSibling {
  /// Sets the identifier for the sibling CPU, accommodating specific access configurations.
  final double? id;
  /// Specifies the value for the distance metric of sibling CPUs within the NUMA cell.
  final double value;

  /// Creates a new [DomainCpuNumaCellDistancesSibling].
  /// [id] Sets the identifier for the sibling CPU, accommodating specific access configurations.
  /// [value] Specifies the value for the distance metric of sibling CPUs within the NUMA cell.
  DomainCpuNumaCellDistancesSibling({
    this.id,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'value': value,
    };
  }

  factory DomainCpuNumaCellDistancesSibling.fromMap(Map<String, dynamic> map) {
    return DomainCpuNumaCellDistancesSibling(
      id: map['id'] == null ? null : map['id'] as double,
      value: map['value'] as double,
    );
  }
}

