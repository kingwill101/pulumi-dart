// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'assigned_standard_item.dart';
import 'standard_assignment_properties_attestation_data.dart';
import 'standard_assignment_properties_exemption_data.dart';

/// {@template pulumi_security_standard_assignment_args_doc}
/// The set of arguments for StandardAssignment.
/// {@endtemplate}
/// {@macro pulumi_security_standard_assignment_args_doc}
class StandardAssignmentArgs {
  /// Standard item with key as applied to this standard assignment over the given scope
  final pulumi.Input<AssignedStandardItem>? assignedStandard;
  /// Additional data about assignment that has Attest effect
  final pulumi.Input<StandardAssignmentPropertiesAttestationData>? attestationData;
  /// Description of the standardAssignment
  final pulumi.Input<String>? description;
  /// Display name of the standardAssignment
  final pulumi.Input<String>? displayName;
  /// Expected effect of this assignment (Audit/Exempt/Attest)
  final pulumi.Input<String>? effect;
  /// Excluded scopes, filter out the descendants of the scope (on management scopes)
  final pulumi.Input<List<String>>? excludedScopes;
  /// Additional data about assignment that has Exempt effect
  final pulumi.Input<StandardAssignmentPropertiesExemptionData>? exemptionData;
  /// Expiration date of this assignment as a full ISO date
  final pulumi.Input<String>? expiresOn;
  /// The identifier of the resource.
  final pulumi.Input<String> resourceId;
  /// The standard assignments assignment key - unique key for the standard assignment
  final pulumi.Input<String>? standardAssignmentName;

  /// Creates a new [StandardAssignmentArgs].
  /// [assignedStandard] Standard item with key as applied to this standard assignment over the given scope
  /// [attestationData] Additional data about assignment that has Attest effect
  /// [description] Description of the standardAssignment
  /// [displayName] Display name of the standardAssignment
  /// [effect] Expected effect of this assignment (Audit/Exempt/Attest)
  /// [excludedScopes] Excluded scopes, filter out the descendants of the scope (on management scopes)
  /// [exemptionData] Additional data about assignment that has Exempt effect
  /// [expiresOn] Expiration date of this assignment as a full ISO date
  /// [resourceId] The identifier of the resource.
  /// [standardAssignmentName] The standard assignments assignment key - unique key for the standard assignment
  StandardAssignmentArgs({
    this.assignedStandard,
    this.attestationData,
    this.description,
    this.displayName,
    this.effect,
    this.excludedScopes,
    this.exemptionData,
    this.expiresOn,
    required this.resourceId,
    this.standardAssignmentName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assignedStandard': ?pulumi.Input.mapOptionalInputValue<AssignedStandardItem, Map<String, dynamic>>(assignedStandard, (value) => value.toMap()),
      'attestationData': ?pulumi.Input.mapOptionalInputValue<StandardAssignmentPropertiesAttestationData, Map<String, dynamic>>(attestationData, (value) => value.toMap()),
      'description': ?description,
      'displayName': ?displayName,
      'effect': ?effect,
      'excludedScopes': ?excludedScopes,
      'exemptionData': ?pulumi.Input.mapOptionalInputValue<StandardAssignmentPropertiesExemptionData, Map<String, dynamic>>(exemptionData, (value) => value.toMap()),
      'expiresOn': ?expiresOn,
      'resourceId': resourceId,
      'standardAssignmentName': ?standardAssignmentName,
    };
  }

  factory StandardAssignmentArgs.fromMap(Map<String, dynamic> map) {
    return StandardAssignmentArgs(
      assignedStandard: map['assignedStandard'] == null ? null : (AssignedStandardItem.fromMap((map['assignedStandard']! as Map).cast<String, dynamic>())).input(),
      attestationData: map['attestationData'] == null ? null : (StandardAssignmentPropertiesAttestationData.fromMap((map['attestationData']! as Map).cast<String, dynamic>())).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      effect: map['effect'] == null ? null : (map['effect']! as String).input(),
      excludedScopes: map['excludedScopes'] == null ? null : ((map['excludedScopes']! as List).cast<String>()).input(),
      exemptionData: map['exemptionData'] == null ? null : (StandardAssignmentPropertiesExemptionData.fromMap((map['exemptionData']! as Map).cast<String, dynamic>())).input(),
      expiresOn: map['expiresOn'] == null ? null : (map['expiresOn']! as String).input(),
      resourceId: (map['resourceId'] as String).input(),
      standardAssignmentName: map['standardAssignmentName'] == null ? null : (map['standardAssignmentName']! as String).input(),
    );
  }
}

