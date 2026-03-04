// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dlp_v2_get_organization_job_trigger_args_doc}
/// Arguments for getOrganizationJobTrigger.
/// {@endtemplate}
/// {@macro pulumi_dlp_v2_get_organization_job_trigger_args_doc}
class GetOrganizationJobTriggerArgs {
  final pulumi.Input<String> jobTriggerId;
  final pulumi.Input<String> location;
  final pulumi.Input<String> organizationId;

  /// Creates a new [GetOrganizationJobTriggerArgs].
  /// [jobTriggerId] Required.
  /// [location] Required.
  /// [organizationId] Required.
  GetOrganizationJobTriggerArgs({
    required this.jobTriggerId,
    required this.location,
    required this.organizationId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'jobTriggerId': jobTriggerId,
      'location': location,
      'organizationId': organizationId,
    };
  }

  factory GetOrganizationJobTriggerArgs.fromMap(Map<String, dynamic> map) {
    return GetOrganizationJobTriggerArgs(
      jobTriggerId: pulumi.Input.fromValue(map['jobTriggerId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      organizationId: pulumi.Input.fromValue(map['organizationId'] as String),
    );
  }
}
