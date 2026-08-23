// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class KubernetesClusterMaintenanceWindowNotAllowed {
  /// The end of a time span, formatted as an RFC3339 string.
  final pulumi.Input<String> end;
  /// The start of a time span, formatted as an RFC3339 string.
  final pulumi.Input<String> start;

  /// Creates a new [KubernetesClusterMaintenanceWindowNotAllowed].
  /// [end] The end of a time span, formatted as an RFC3339 string.
  /// [start] The start of a time span, formatted as an RFC3339 string.
  const KubernetesClusterMaintenanceWindowNotAllowed({
    required this.end,
    required this.start,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'end': end,
      'start': start,
    };
  }

  factory KubernetesClusterMaintenanceWindowNotAllowed.fromMap(Map<String, dynamic> map) {
    return KubernetesClusterMaintenanceWindowNotAllowed(
      end: pulumi.Input.fromValue(map['end'] as String),
      start: pulumi.Input.fromValue(map['start'] as String),
    );
  }
}
