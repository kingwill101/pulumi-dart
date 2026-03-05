// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkloadStatusConfigStatic {
  /// Relevant information about the workload.
  final pulumi.Input<String>? description;
  /// Whether the static status configuration is enabled or not.
  final pulumi.Input<bool> enabled;
  /// The status of the workload.
  final pulumi.Input<String> status;
  /// A short description of the status of the workload.
  final pulumi.Input<String>? summary;

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
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      status: pulumi.Input.fromValue(map['status'] as String),
      summary: (() { final guardedValue = map['summary']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

