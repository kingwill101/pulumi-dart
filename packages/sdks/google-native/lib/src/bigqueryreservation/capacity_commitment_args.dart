// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'capacity_commitment_edition.dart';
import 'capacity_commitment_plan.dart';
import 'capacity_commitment_renewal_plan.dart';

/// {@template pulumi_bigqueryreservation_v1_capacity_commitment_args_doc}
/// The set of arguments for CapacityCommitment.
/// {@endtemplate}
/// {@macro pulumi_bigqueryreservation_v1_capacity_commitment_args_doc}
class CapacityCommitmentArgs {
  /// The optional capacity commitment ID. Capacity commitment name will be generated automatically if this field is empty. This field must only contain lower case alphanumeric characters or dashes. The first and last character cannot be a dash. Max length is 64 characters. NOTE: this ID won't be kept if the capacity commitment is split or merged.
  final pulumi.Input<String>? capacityCommitmentId;
  /// Edition of the capacity commitment.
  final pulumi.Input<CapacityCommitmentEdition>? edition;
  /// If true, fail the request if another project in the organization has a capacity commitment.
  final pulumi.Input<bool>? enforceSingleAdminProjectPerOrg;
  final pulumi.Input<String>? location;
  /// Applicable only for commitments located within one of the BigQuery multi-regions (US or EU). If set to true, this commitment is placed in the organization's secondary region which is designated for disaster recovery purposes. If false, this commitment is placed in the organization's default region. NOTE: this is a preview feature. Project must be allow-listed in order to set this field.
  final pulumi.Input<bool>? multiRegionAuxiliary;
  /// Capacity commitment commitment plan.
  final pulumi.Input<CapacityCommitmentPlan>? plan;
  final pulumi.Input<String>? project;
  /// The plan this capacity commitment is converted to after commitment_end_time passes. Once the plan is changed, committed period is extended according to commitment plan. Only applicable for ANNUAL and TRIAL commitments.
  final pulumi.Input<CapacityCommitmentRenewalPlan>? renewalPlan;
  /// Number of slots in this commitment.
  final pulumi.Input<String>? slotCount;

  /// Creates a new [CapacityCommitmentArgs].
  /// [capacityCommitmentId] The optional capacity commitment ID. Capacity commitment name will be generated automatically if this field is empty. This field must only contain lower case alphanumeric characters or dashes. The first and last character cannot be a dash. Max length is 64 characters. NOTE: this ID won't be kept if the capacity commitment is split or merged.
  /// [edition] Edition of the capacity commitment.
  /// [enforceSingleAdminProjectPerOrg] If true, fail the request if another project in the organization has a capacity commitment.
  /// [location] Optional.
  /// [multiRegionAuxiliary] Applicable only for commitments located within one of the BigQuery multi-regions (US or EU). If set to true, this commitment is placed in the organization's secondary region which is designated for disaster recovery purposes. If false, this commitment is placed in the organization's default region. NOTE: this is a preview feature. Project must be allow-listed in order to set this field.
  /// [plan] Capacity commitment commitment plan.
  /// [project] Optional.
  /// [renewalPlan] The plan this capacity commitment is converted to after commitment_end_time passes. Once the plan is changed, committed period is extended according to commitment plan. Only applicable for ANNUAL and TRIAL commitments.
  /// [slotCount] Number of slots in this commitment.
  CapacityCommitmentArgs({
    this.capacityCommitmentId,
    this.edition,
    this.enforceSingleAdminProjectPerOrg,
    this.location,
    this.multiRegionAuxiliary,
    this.plan,
    this.project,
    this.renewalPlan,
    this.slotCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacityCommitmentId': ?capacityCommitmentId,
      'edition': ?pulumi.Input.mapOptionalInputValue<CapacityCommitmentEdition, String>(edition, (value) => value.value),
      'enforceSingleAdminProjectPerOrg': ?enforceSingleAdminProjectPerOrg,
      'location': ?location,
      'multiRegionAuxiliary': ?multiRegionAuxiliary,
      'plan': ?pulumi.Input.mapOptionalInputValue<CapacityCommitmentPlan, String>(plan, (value) => value.value),
      'project': ?project,
      'renewalPlan': ?pulumi.Input.mapOptionalInputValue<CapacityCommitmentRenewalPlan, String>(renewalPlan, (value) => value.value),
      'slotCount': ?slotCount,
    };
  }

  factory CapacityCommitmentArgs.fromMap(Map<String, dynamic> map) {
    return CapacityCommitmentArgs(
      capacityCommitmentId: map['capacityCommitmentId'] == null ? null : (map['capacityCommitmentId'] as String).input(),
      edition: map['edition'] == null ? null : (CapacityCommitmentEdition.fromValue(map['edition'] as String)).input(),
      enforceSingleAdminProjectPerOrg: map['enforceSingleAdminProjectPerOrg'] == null ? null : (map['enforceSingleAdminProjectPerOrg'] as bool).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      multiRegionAuxiliary: map['multiRegionAuxiliary'] == null ? null : (map['multiRegionAuxiliary'] as bool).input(),
      plan: map['plan'] == null ? null : (CapacityCommitmentPlan.fromValue(map['plan'] as String)).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      renewalPlan: map['renewalPlan'] == null ? null : (CapacityCommitmentRenewalPlan.fromValue(map['renewalPlan'] as String)).input(),
      slotCount: map['slotCount'] == null ? null : (map['slotCount'] as String).input(),
    );
  }
}

