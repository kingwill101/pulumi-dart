// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_bigquery_capacity_commitment_capacity_commitment_args_doc}
/// The set of arguments for CapacityCommitment.
/// {@endtemplate}
/// {@macro pulumi_bigquery_capacity_commitment_capacity_commitment_args_doc}
class CapacityCommitmentArgs {
  /// The optional capacity commitment ID. Capacity commitment name will be generated automatically if this field is
  /// empty. This field must only contain lower case alphanumeric characters or dashes. The first and last character
  /// cannot be a dash. Max length is 64 characters. NOTE: this ID won't be kept if the capacity commitment is split
  /// or merged.
  final pulumi.Input<String>? capacityCommitmentId;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// The edition type. Valid values are STANDARD, ENTERPRISE, ENTERPRISE_PLUS
  final pulumi.Input<String>? edition;
  /// If true, fail the request if another project in the organization has a capacity commitment.
  final pulumi.Input<String>? enforceSingleAdminProjectPerOrg;
  /// The geographic location where the transfer config should reside.
  /// Examples: US, EU, asia-northeast1. The default value is US.
  final pulumi.Input<String>? location;
  /// Capacity commitment plan. Valid values are at https://cloud.google.com/bigquery/docs/reference/reservations/rpc/google.cloud.bigquery.reservation.v1#commitmentplan
  final pulumi.Input<String> plan;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The plan this capacity commitment is converted to after commitmentEndTime passes. Once the plan is changed, committed period is extended according to commitment plan. Only applicable for some commitment plans.
  final pulumi.Input<String>? renewalPlan;
  /// Number of slots in this commitment.
  final pulumi.Input<int> slotCount;

  /// Creates a new [CapacityCommitmentArgs].
  /// [capacityCommitmentId] The optional capacity commitment ID. Capacity commitment name will be generated automatically if this field is
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [edition] The edition type. Valid values are STANDARD, ENTERPRISE, ENTERPRISE_PLUS
  /// [enforceSingleAdminProjectPerOrg] If true, fail the request if another project in the organization has a capacity commitment.
  /// [location] The geographic location where the transfer config should reside.
  /// [plan] Capacity commitment plan. Valid values are at https://cloud.google.com/bigquery/docs/reference/reservations/rpc/google.cloud.bigquery.reservation.v1#commitmentplan
  /// [project] The ID of the project in which the resource belongs.
  /// [renewalPlan] The plan this capacity commitment is converted to after commitmentEndTime passes. Once the plan is changed, committed period is extended according to commitment plan. Only applicable for some commitment plans.
  /// [slotCount] Number of slots in this commitment.
  const CapacityCommitmentArgs({
    this.capacityCommitmentId,
    this.deletionPolicy,
    this.edition,
    this.enforceSingleAdminProjectPerOrg,
    this.location,
    required this.plan,
    this.project,
    this.renewalPlan,
    required this.slotCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacityCommitmentId': ?capacityCommitmentId,
      'deletionPolicy': ?deletionPolicy,
      'edition': ?edition,
      'enforceSingleAdminProjectPerOrg': ?enforceSingleAdminProjectPerOrg,
      'location': ?location,
      'plan': plan,
      'project': ?project,
      'renewalPlan': ?renewalPlan,
      'slotCount': slotCount,
    };
  }

  factory CapacityCommitmentArgs.fromMap(Map<String, dynamic> map) {
    return CapacityCommitmentArgs(
      capacityCommitmentId: (() { final guardedValue = map['capacityCommitmentId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      edition: (() { final guardedValue = map['edition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enforceSingleAdminProjectPerOrg: (() { final guardedValue = map['enforceSingleAdminProjectPerOrg']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      plan: pulumi.Input.fromValue(map['plan'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      renewalPlan: (() { final guardedValue = map['renewalPlan']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      slotCount: pulumi.Input.fromValue(map['slotCount'] as int),
    );
  }
}
