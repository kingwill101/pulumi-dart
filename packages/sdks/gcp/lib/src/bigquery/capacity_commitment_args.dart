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
  /// [edition] The edition type. Valid values are STANDARD, ENTERPRISE, ENTERPRISE_PLUS
  /// [enforceSingleAdminProjectPerOrg] If true, fail the request if another project in the organization has a capacity commitment.
  /// [location] The geographic location where the transfer config should reside.
  /// [plan] Capacity commitment plan. Valid values are at https://cloud.google.com/bigquery/docs/reference/reservations/rpc/google.cloud.bigquery.reservation.v1#commitmentplan
  /// [project] The ID of the project in which the resource belongs.
  /// [renewalPlan] The plan this capacity commitment is converted to after commitmentEndTime passes. Once the plan is changed, committed period is extended according to commitment plan. Only applicable for some commitment plans.
  /// [slotCount] Number of slots in this commitment.
  CapacityCommitmentArgs({
    this.capacityCommitmentId,
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
      capacityCommitmentId: map['capacityCommitmentId'] == null ? null : (map['capacityCommitmentId'] as String).input(),
      edition: map['edition'] == null ? null : (map['edition'] as String).input(),
      enforceSingleAdminProjectPerOrg: map['enforceSingleAdminProjectPerOrg'] == null ? null : (map['enforceSingleAdminProjectPerOrg'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      plan: (map['plan'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      renewalPlan: map['renewalPlan'] == null ? null : (map['renewalPlan'] as String).input(),
      slotCount: (map['slotCount'] as int).input(),
    );
  }
}

