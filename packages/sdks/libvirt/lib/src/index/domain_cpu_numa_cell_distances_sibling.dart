// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainCpuNumaCellDistancesSibling {
  /// Sets the identifier for the sibling CPU, accommodating specific access configurations.
  final pulumi.Input<double>? id;
  /// Specifies the value for the distance metric of sibling CPUs within the NUMA cell.
  final pulumi.Input<double> value;

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
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      value: pulumi.Input.fromValue(map['value'] as double),
    );
  }
}

