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
      'assignedStandard': ?assignedStandard == null ? null : assignedStandard!.toMap(),
      'attestationData': ?attestationData == null ? null : attestationData!.toMap(),
      'azureApiVersion': azureApiVersion,
      'description': ?description,
      'displayName': ?displayName,
      'effect': ?effect,
      'excludedScopes': ?excludedScopes,
      'exemptionData': ?exemptionData == null ? null : exemptionData!.toMap(),
      'expiresOn': ?expiresOn,
      'id': id,
      'metadata': ?metadata == null ? null : metadata!.toMap(),
      'name': name,
      'type': type,
    };
  }

  factory GetStandardAssignmentResult.fromMap(Map<String, dynamic> map) {
    return GetStandardAssignmentResult(
      assignedStandard: map['assignedStandard'] == null ? null : AssignedStandardItemResponse.fromMap((map['assignedStandard']! as Map).cast<String, dynamic>()),
      attestationData: map['attestationData'] == null ? null : StandardAssignmentPropertiesResponseAttestationData.fromMap((map['attestationData']! as Map).cast<String, dynamic>()),
      azureApiVersion: map['azureApiVersion'] as String,
      description: map['description'] == null ? null : map['description']! as String,
      displayName: map['displayName'] == null ? null : map['displayName']! as String,
      effect: map['effect'] == null ? null : map['effect']! as String,
      excludedScopes: map['excludedScopes'] == null ? null : (map['excludedScopes']! as List).cast<String>(),
      exemptionData: map['exemptionData'] == null ? null : StandardAssignmentPropertiesResponseExemptionData.fromMap((map['exemptionData']! as Map).cast<String, dynamic>()),
      expiresOn: map['expiresOn'] == null ? null : map['expiresOn']! as String,
      id: map['id'] as String,
      metadata: map['metadata'] == null ? null : StandardAssignmentMetadataResponse.fromMap((map['metadata']! as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      type: map['type'] as String,
    );
  }
}

