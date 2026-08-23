// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainIdMapUiD {
  /// Sets the count of group ID mappings specified for the domain's identity management.
  final pulumi.Input<double> count;
  /// Configures the starting GID for the group ID mapping in the domain.
  final pulumi.Input<double> start;
  /// Sets the target GID for the group ID mapping in the domain.
  final pulumi.Input<double> target;

  /// Creates a new [DomainIdMapUiD].
  /// [count] Sets the count of group ID mappings specified for the domain's identity management.
  /// [start] Configures the starting GID for the group ID mapping in the domain.
  /// [target] Sets the target GID for the group ID mapping in the domain.
  const DomainIdMapUiD({
    required this.count,
    required this.start,
    required this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'start': start,
      'target': target,
    };
  }

  factory DomainIdMapUiD.fromMap(Map<String, dynamic> map) {
    return DomainIdMapUiD(
      count: pulumi.Input.fromValue(map['count'] as double),
      start: pulumi.Input.fromValue(map['start'] as double),
      target: pulumi.Input.fromValue(map['target'] as double),
    );
  }
}
