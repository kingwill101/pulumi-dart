// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_synchronization_job_synchronization_job_args_doc}
/// The set of arguments for SynchronizationJob.
/// {@endtemplate}
/// {@macro pulumi_index_synchronization_job_synchronization_job_args_doc}
class SynchronizationJobArgs {
  /// Whether the provisioning job is enabled. Default state is `true`.
  final pulumi.Input<bool>? enabled;
  /// The ID of the service principal for which this synchronization job should be created. Changing this field forces a new resource to be created.
  final pulumi.Input<String> servicePrincipalId;
  /// Identifier of the synchronization template this job is based on.
  final pulumi.Input<String> templateId;

  /// Creates a new [SynchronizationJobArgs].
  /// [enabled] Whether the provisioning job is enabled. Default state is `true`.
  /// [servicePrincipalId] The ID of the service principal for which this synchronization job should be created. Changing this field forces a new resource to be created.
  /// [templateId] Identifier of the synchronization template this job is based on.
  const SynchronizationJobArgs({
    this.enabled,
    required this.servicePrincipalId,
    required this.templateId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'servicePrincipalId': servicePrincipalId,
      'templateId': templateId,
    };
  }

  factory SynchronizationJobArgs.fromMap(Map<String, dynamic> map) {
    return SynchronizationJobArgs(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      servicePrincipalId: pulumi.Input.fromValue(map['servicePrincipalId'] as String),
      templateId: pulumi.Input.fromValue(map['templateId'] as String),
    );
  }
}

