// ignore_for_file: unused_element, unnecessary_cast


class WorkloadStatusConfigStatic {
  /// Relevant information about the workload.
  final String? description;
  /// Whether the static status configuration is enabled or not.
  final bool enabled;
  /// The status of the workload.
  final String status;
  /// A short description of the status of the workload.
  final String? summary;

  /// Creates a new [WorkloadStatusConfigStatic].
  /// [description] Relevant information about the workload.
  /// [enabled] Whether the static status configuration is enabled or not.
  /// [status] The status of the workload.
  /// [summary] A short description of the status of the workload.
  WorkloadStatusConfigStatic({
    this.description,
    required this.enabled,
    required this.status,
    this.summary,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'enabled': enabled,
      'status': status,
      'summary': ?summary,
    };
  }

  factory WorkloadStatusConfigStatic.fromMap(Map<String, dynamic> map) {
    return WorkloadStatusConfigStatic(
      description: map['description'] == null ? null : map['description'] as String,
      enabled: map['enabled'] as bool,
      status: map['status'] as String,
      summary: map['summary'] == null ? null : map['summary'] as String,
    );
  }
}

