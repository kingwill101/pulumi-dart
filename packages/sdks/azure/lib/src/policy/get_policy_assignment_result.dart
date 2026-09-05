// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_policy_assignment_identity.dart';
import 'get_policy_assignment_non_compliance_message.dart';

/// Result data returned by getPolicyAssignment.
class GetPolicyAssignmentResult {
  /// The description of this Policy Assignment.
  final String? description;
  /// The display name of this Policy Assignment.
  final String? displayName;
  /// Whether this Policy is enforced or not?
  final bool? enforce;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// A `identity` block as defined below.
  final List<GetPolicyAssignmentIdentity>? identities;
  /// The Azure Region where the Policy Assignment exists.
  final String? location;
  /// A JSON mapping of any Metadata for this Policy.
  final String? metadata;
  final String? name;
  /// A `nonComplianceMessage` block as defined below.
  final List<GetPolicyAssignmentNonComplianceMessage>? nonComplianceMessages;
  /// A `notScopes` block as defined below.
  final List<String>? notScopes;
  /// A JSON mapping of any Parameters for this Policy.
  final String? parameters;
  /// The ID of the assigned Policy Definition.
  final String? policyDefinitionId;
  final String? scopeId;

  /// Creates a new [GetPolicyAssignmentResult].
  /// [description] The description of this Policy Assignment.
  /// [displayName] The display name of this Policy Assignment.
  /// [enforce] Whether this Policy is enforced or not?
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [identities] A `identity` block as defined below.
  /// [location] The Azure Region where the Policy Assignment exists.
  /// [metadata] A JSON mapping of any Metadata for this Policy.
  /// [name] Optional.
  /// [nonComplianceMessages] A `nonComplianceMessage` block as defined below.
  /// [notScopes] A `notScopes` block as defined below.
  /// [parameters] A JSON mapping of any Parameters for this Policy.
  /// [policyDefinitionId] The ID of the assigned Policy Definition.
  /// [scopeId] Optional.
  const GetPolicyAssignmentResult({
    this.description,
    this.displayName,
    this.enforce,
    this.id,
    this.identities,
    this.location,
    this.metadata,
    this.name,
    this.nonComplianceMessages,
    this.notScopes,
    this.parameters,
    this.policyDefinitionId,
    this.scopeId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'displayName': ?displayName,
      'enforce': ?enforce,
      'id': ?id,
      'identities': ?(() { final guardedValue = identities; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetPolicyAssignmentIdentity, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'location': ?location,
      'metadata': ?metadata,
      'name': ?name,
      'nonComplianceMessages': ?(() { final guardedValue = nonComplianceMessages; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetPolicyAssignmentNonComplianceMessage, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'notScopes': ?notScopes,
      'parameters': ?parameters,
      'policyDefinitionId': ?policyDefinitionId,
      'scopeId': ?scopeId,
    };
  }

  factory GetPolicyAssignmentResult.fromMap(Map<String, dynamic> map) {
    return GetPolicyAssignmentResult(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      enforce: (() { final guardedValue = map['enforce']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      identities: (() { final guardedValue = map['identities']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetPolicyAssignmentIdentity>(guardedValue, (value) => GetPolicyAssignmentIdentity.fromMap((value as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      nonComplianceMessages: (() { final guardedValue = map['nonComplianceMessages']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetPolicyAssignmentNonComplianceMessage>(guardedValue, (value) => GetPolicyAssignmentNonComplianceMessage.fromMap((value as Map).cast<String, dynamic>())); })(),
      notScopes: (() { final guardedValue = map['notScopes']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return guardedValue as String; })(),
      policyDefinitionId: (() { final guardedValue = map['policyDefinitionId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      scopeId: (() { final guardedValue = map['scopeId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
