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
    required pulumi.Output<String> jobTriggerId,
    required pulumi.Output<String> location,
    required pulumi.Output<String> organizationId,
  }) :
      jobTriggerId = pulumi.Input.asInput<String>(jobTriggerId),
      location = pulumi.Input.asInput<String>(location),
      organizationId = pulumi.Input.asInput<String>(organizationId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'jobTriggerId': jobTriggerId,
      'location': location,
      'organizationId': organizationId,
    };
  }

  factory GetOrganizationJobTriggerArgs.fromMap(Map<String, dynamic> map) {
    return GetOrganizationJobTriggerArgs(
      jobTriggerId: pulumi.Output.create<String>(map['jobTriggerId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      organizationId: pulumi.Output.create<String>(map['organizationId'] as String),
    );
  }
}

