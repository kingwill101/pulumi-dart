// ignore_for_file: unused_element, unnecessary_cast


class KubernetesClusterMaintenanceWindowAutoUpgradeNotAllowed {
  /// The end of a time span, formatted as an RFC3339 string.
  final String end;
  /// The start of a time span, formatted as an RFC3339 string.
  final String start;

  /// Creates a new [KubernetesClusterMaintenanceWindowAutoUpgradeNotAllowed].
  /// [end] The end of a time span, formatted as an RFC3339 string.
  /// [start] The start of a time span, formatted as an RFC3339 string.
  KubernetesClusterMaintenanceWindowAutoUpgradeNotAllowed({
    required this.end,
    required this.start,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'end': end,
      'start': start,
    };
  }

  factory KubernetesClusterMaintenanceWindowAutoUpgradeNotAllowed.fromMap(Map<String, dynamic> map) {
    return KubernetesClusterMaintenanceWindowAutoUpgradeNotAllowed(
      end: map['end'] as String,
      start: map['start'] as String,
    );
  }
}

