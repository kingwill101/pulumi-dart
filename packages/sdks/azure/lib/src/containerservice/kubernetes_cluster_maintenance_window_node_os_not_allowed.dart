// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class KubernetesClusterMaintenanceWindowNodeOsNotAllowed {
  /// The end of a time span, formatted as an RFC3339 string.
  final pulumi.Input<String> end;
  /// The start of a time span, formatted as an RFC3339 string.
  final pulumi.Input<String> start;

  /// Creates a new [KubernetesClusterMaintenanceWindowNodeOsNotAllowed].
  /// [end] The end of a time span, formatted as an RFC3339 string.
  /// [start] The start of a time span, formatted as an RFC3339 string.
  KubernetesClusterMaintenanceWindowNodeOsNotAllowed({
    required this.end,
    required this.start,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'end': end,
      'start': start,
    };
  }

  factory KubernetesClusterMaintenanceWindowNodeOsNotAllowed.fromMap(Map<String, dynamic> map) {
    return KubernetesClusterMaintenanceWindowNodeOsNotAllowed(
      end: (map['end'] as String).input(),
      start: (map['start'] as String).input(),
    );
  }
}

