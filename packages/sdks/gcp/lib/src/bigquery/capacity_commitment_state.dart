// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering CapacityCommitment resources.
class CapacityCommitmentState {
  /// The optional capacity commitment ID. Capacity commitment name will be generated automatically if this field is
  /// empty. This field must only contain lower case alphanumeric characters or dashes. The first and last character
  /// cannot be a dash. Max length is 64 characters. NOTE: this ID won't be kept if the capacity commitment is split
  /// or merged.
  final pulumi.Input<String>? capacityCommitmentId;
  /// The start of the current commitment period. It is applicable only for ACTIVE capacity commitments.
  final pulumi.Input<String>? commitmentEndTime;
  /// The start of the current commitment period. It is applicable only for ACTIVE capacity commitments.
  final pulumi.Input<String>? commitmentStartTime;
  /// The edition type. Valid values are STANDARD, ENTERPRISE, ENTERPRISE_PLUS
  final pulumi.Input<String>? edition;
  /// If true, fail the request if another project in the organization has a capacity commitment.
  final pulumi.Input<String>? enforceSingleAdminProjectPerOrg;
  /// The geographic location where the transfer config should reside.
  /// Examples: US, EU, asia-northeast1. The default value is US.
  final pulumi.Input<String>? location;
  /// The resource name of the capacity commitment, e.g., projects/myproject/locations/US/capacityCommitments/123
  final pulumi.Input<String>? name;
  /// Capacity commitment plan. Valid values are at https://cloud.google.com/bigquery/docs/reference/reservations/rpc/google.cloud.bigquery.reservation.v1#commitmentplan
  final pulumi.Input<String>? plan;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The plan this capacity commitment is converted to after commitmentEndTime passes. Once the plan is changed, committed period is extended according to commitment plan. Only applicable for some commitment plans.
  final pulumi.Input<String>? renewalPlan;
  /// Number of slots in this commitment.
  final pulumi.Input<int>? slotCount;
  /// State of the commitment
  final pulumi.Input<String>? state;

  /// Creates a new [CapacityCommitmentState].
  /// [capacityCommitmentId] The optional capacity commitment ID. Capacity commitment name will be generated automatically if this field is
  /// [commitmentEndTime] The start of the current commitment period. It is applicable only for ACTIVE capacity commitments.
  /// [commitmentStartTime] The start of the current commitment period. It is applicable only for ACTIVE capacity commitments.
  /// [edition] The edition type. Valid values are STANDARD, ENTERPRISE, ENTERPRISE_PLUS
  /// [enforceSingleAdminProjectPerOrg] If true, fail the request if another project in the organization has a capacity commitment.
  /// [location] The geographic location where the transfer config should reside.
  /// [name] The resource name of the capacity commitment, e.g., projects/myproject/locations/US/capacityCommitments/123
  /// [plan] Capacity commitment plan. Valid values are at https://cloud.google.com/bigquery/docs/reference/reservations/rpc/google.cloud.bigquery.reservation.v1#commitmentplan
  /// [project] The ID of the project in which the resource belongs.
  /// [renewalPlan] The plan this capacity commitment is converted to after commitmentEndTime passes. Once the plan is changed, committed period is extended according to commitment plan. Only applicable for some commitment plans.
  /// [slotCount] Number of slots in this commitment.
  /// [state] State of the commitment
  CapacityCommitmentState({
    pulumi.Output<String>? capacityCommitmentId,
    pulumi.Output<String>? commitmentEndTime,
    pulumi.Output<String>? commitmentStartTime,
    pulumi.Output<String>? edition,
    pulumi.Output<String>? enforceSingleAdminProjectPerOrg,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? plan,
    pulumi.Output<String>? project,
    pulumi.Output<String>? renewalPlan,
    pulumi.Output<int>? slotCount,
    pulumi.Output<String>? state,
  }) :
      capacityCommitmentId = pulumi.Input.asOptionalInput<String>(capacityCommitmentId),
      commitmentEndTime = pulumi.Input.asOptionalInput<String>(commitmentEndTime),
      commitmentStartTime = pulumi.Input.asOptionalInput<String>(commitmentStartTime),
      edition = pulumi.Input.asOptionalInput<String>(edition),
      enforceSingleAdminProjectPerOrg = pulumi.Input.asOptionalInput<String>(enforceSingleAdminProjectPerOrg),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      plan = pulumi.Input.asOptionalInput<String>(plan),
      project = pulumi.Input.asOptionalInput<String>(project),
      renewalPlan = pulumi.Input.asOptionalInput<String>(renewalPlan),
      slotCount = pulumi.Input.asOptionalInput<int>(slotCount),
      state = pulumi.Input.asOptionalInput<String>(state);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacityCommitmentId': ?capacityCommitmentId,
      'commitmentEndTime': ?commitmentEndTime,
      'commitmentStartTime': ?commitmentStartTime,
      'edition': ?edition,
      'enforceSingleAdminProjectPerOrg': ?enforceSingleAdminProjectPerOrg,
      'location': ?location,
      'name': ?name,
      'plan': ?plan,
      'project': ?project,
      'renewalPlan': ?renewalPlan,
      'slotCount': ?slotCount,
      'state': ?state,
    };
  }

  factory CapacityCommitmentState.fromMap(Map<String, dynamic> map) {
    return CapacityCommitmentState(
      capacityCommitmentId: map['capacityCommitmentId'] == null ? null : pulumi.Output.create<String>(map['capacityCommitmentId'] as String),
      commitmentEndTime: map['commitmentEndTime'] == null ? null : pulumi.Output.create<String>(map['commitmentEndTime'] as String),
      commitmentStartTime: map['commitmentStartTime'] == null ? null : pulumi.Output.create<String>(map['commitmentStartTime'] as String),
      edition: map['edition'] == null ? null : pulumi.Output.create<String>(map['edition'] as String),
      enforceSingleAdminProjectPerOrg: map['enforceSingleAdminProjectPerOrg'] == null ? null : pulumi.Output.create<String>(map['enforceSingleAdminProjectPerOrg'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      plan: map['plan'] == null ? null : pulumi.Output.create<String>(map['plan'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      renewalPlan: map['renewalPlan'] == null ? null : pulumi.Output.create<String>(map['renewalPlan'] as String),
      slotCount: map['slotCount'] == null ? null : pulumi.Output.create<int>(map['slotCount'] as int),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
    );
  }
}

