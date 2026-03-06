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
  const CapacityCommitmentState({
    this.capacityCommitmentId,
    this.commitmentEndTime,
    this.commitmentStartTime,
    this.edition,
    this.enforceSingleAdminProjectPerOrg,
    this.location,
    this.name,
    this.plan,
    this.project,
    this.renewalPlan,
    this.slotCount,
    this.state,
  });

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
      capacityCommitmentId: (() { final guardedValue = map['capacityCommitmentId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      commitmentEndTime: (() { final guardedValue = map['commitmentEndTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      commitmentStartTime: (() { final guardedValue = map['commitmentStartTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      edition: (() { final guardedValue = map['edition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enforceSingleAdminProjectPerOrg: (() { final guardedValue = map['enforceSingleAdminProjectPerOrg']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      plan: (() { final guardedValue = map['plan']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      renewalPlan: (() { final guardedValue = map['renewalPlan']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      slotCount: (() { final guardedValue = map['slotCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

