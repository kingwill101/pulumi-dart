// ignore_for_file: unused_element, unnecessary_cast


class KubernetesClusterMaintenanceWindowNotAllowed {
  /// The end of a time span, formatted as an RFC3339 string.
  final String end;
  /// The start of a time span, formatted as an RFC3339 string.
  final String start;

  /// Creates a new [KubernetesClusterMaintenanceWindowNotAllowed].
  /// [end] The end of a time span, formatted as an RFC3339 string.
  /// [start] The start of a time span, formatted as an RFC3339 string.
  KubernetesClusterMaintenanceWindowNotAllowed({
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
      end: map['end'] as String,
      start: map['start'] as String,
    );
  }
}

