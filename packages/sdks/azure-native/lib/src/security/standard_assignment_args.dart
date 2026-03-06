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
  const StandardAssignmentArgs({
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
      assignedStandard: (() { final guardedValue = map['assignedStandard']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AssignedStandardItem.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      attestationData: (() { final guardedValue = map['attestationData']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StandardAssignmentPropertiesAttestationData.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      effect: (() { final guardedValue = map['effect']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      excludedScopes: (() { final guardedValue = map['excludedScopes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      exemptionData: (() { final guardedValue = map['exemptionData']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StandardAssignmentPropertiesExemptionData.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      expiresOn: (() { final guardedValue = map['expiresOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceId: pulumi.Input.fromValue(map['resourceId'] as String),
      standardAssignmentName: (() { final guardedValue = map['standardAssignmentName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

