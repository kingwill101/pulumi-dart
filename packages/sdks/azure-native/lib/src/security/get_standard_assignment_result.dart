// ignore_for_file: unused_element, unnecessary_cast

import 'assigned_standard_item_response.dart';
import 'standard_assignment_metadata_response.dart';
import 'standard_assignment_properties_response_attestation_data.dart';
import 'standard_assignment_properties_response_exemption_data.dart';

/// Result data returned by getStandardAssignment.
class GetStandardAssignmentResult {
  /// Standard item with key as applied to this standard assignment over the given scope
  final AssignedStandardItemResponse? assignedStandard;
  /// Additional data about assignment that has Attest effect
  final StandardAssignmentPropertiesResponseAttestationData? attestationData;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Description of the standardAssignment
  final String? description;
  /// Display name of the standardAssignment
  final String? displayName;
  /// Expected effect of this assignment (Audit/Exempt/Attest)
  final String? effect;
  /// Excluded scopes, filter out the descendants of the scope (on management scopes)
  final List<String>? excludedScopes;
  /// Additional data about assignment that has Exempt effect
  final StandardAssignmentPropertiesResponseExemptionData? exemptionData;
  /// Expiration date of this assignment as a full ISO date
  final String? expiresOn;
  /// Resource Id
  final String id;
  /// The standard assignment metadata.
  final StandardAssignmentMetadataResponse? metadata;
  /// Resource name
  final String name;
  /// Resource type
  final String type;

  /// Creates a new [GetStandardAssignmentResult].
  /// [assignedStandard] Standard item with key as applied to this standard assignment over the given scope
  /// [attestationData] Additional data about assignment that has Attest effect
  /// [azureApiVersion] The Azure API version of the resource.
  /// [description] Description of the standardAssignment
  /// [displayName] Display name of the standardAssignment
  /// [effect] Expected effect of this assignment (Audit/Exempt/Attest)
  /// [excludedScopes] Excluded scopes, filter out the descendants of the scope (on management scopes)
  /// [exemptionData] Additional data about assignment that has Exempt effect
  /// [expiresOn] Expiration date of this assignment as a full ISO date
  /// [id] Resource Id
  /// [metadata] The standard assignment metadata.
  /// [name] Resource name
  /// [type] Resource type
  GetStandardAssignmentResult({
    this.assignedStandard,
    this.attestationData,
    required this.azureApiVersion,
    this.description,
    this.displayName,
    this.effect,
    this.excludedScopes,
    this.exemptionData,
    this.expiresOn,
    required this.id,
    this.metadata,
    required this.name,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assignedStandard': ?assignedStandard?.toMap(),
      'attestationData': ?attestationData?.toMap(),
      'azureApiVersion': azureApiVersion,
      'description': ?description,
      'displayName': ?displayName,
      'effect': ?effect,
      'excludedScopes': ?excludedScopes,
      'exemptionData': ?exemptionData?.toMap(),
      'expiresOn': ?expiresOn,
      'id': id,
      'metadata': ?metadata?.toMap(),
      'name': name,
      'type': type,
    };
  }

  factory GetStandardAssignmentResult.fromMap(Map<String, dynamic> map) {
    return GetStandardAssignmentResult(
      assignedStandard: (() { final guardedValue = map['assignedStandard']; if (guardedValue == null) return null; return AssignedStandardItemResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      attestationData: (() { final guardedValue = map['attestationData']; if (guardedValue == null) return null; return StandardAssignmentPropertiesResponseAttestationData.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      azureApiVersion: map['azureApiVersion'] as String,
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      effect: (() { final guardedValue = map['effect']; if (guardedValue == null) return null; return guardedValue as String; })(),
      excludedScopes: (() { final guardedValue = map['excludedScopes']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      exemptionData: (() { final guardedValue = map['exemptionData']; if (guardedValue == null) return null; return StandardAssignmentPropertiesResponseExemptionData.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      expiresOn: (() { final guardedValue = map['expiresOn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return StandardAssignmentMetadataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      name: map['name'] as String,
      type: map['type'] as String,
    );
  }
}

