// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_policy_assignment_identity.dart';
import 'get_policy_assignment_non_compliance_message.dart';

/// Result data returned by getPolicyAssignment.
class GetPolicyAssignmentResult {
  /// The description of this Policy Assignment.
  final String description;

  /// The display name of this Policy Assignment.
  final String displayName;

  /// Whether this Policy is enforced or not?
  final bool enforce;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// A `identity` block as defined below.
  final List<GetPolicyAssignmentIdentity> identities;

  /// The Azure Region where the Policy Assignment exists.
  final String location;

  /// A JSON mapping of any Metadata for this Policy.
  final String metadata;
  final String name;

  /// A `non_compliance_message` block as defined below.
  final List<GetPolicyAssignmentNonComplianceMessage> nonComplianceMessages;

  /// A `not_scopes` block as defined below.
  final List<String> notScopes;

  /// A JSON mapping of any Parameters for this Policy.
  final String parameters;

  /// The ID of the assigned Policy Definition.
  final String policyDefinitionId;
  final String scopeId;

  /// Creates a new [GetPolicyAssignmentResult].
  /// [description] The description of this Policy Assignment.
  /// [displayName] The display name of this Policy Assignment.
  /// [enforce] Whether this Policy is enforced or not?
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [identities] A `identity` block as defined below.
  /// [location] The Azure Region where the Policy Assignment exists.
  /// [metadata] A JSON mapping of any Metadata for this Policy.
  /// [name] Required.
  /// [nonComplianceMessages] A `non_compliance_message` block as defined below.
  /// [notScopes] A `not_scopes` block as defined below.
  /// [parameters] A JSON mapping of any Parameters for this Policy.
  /// [policyDefinitionId] The ID of the assigned Policy Definition.
  /// [scopeId] Required.
  GetPolicyAssignmentResult({
    required this.description,
    required this.displayName,
    required this.enforce,
    required this.id,
    required this.identities,
    required this.location,
    required this.metadata,
    required this.name,
    required this.nonComplianceMessages,
    required this.notScopes,
    required this.parameters,
    required this.policyDefinitionId,
    required this.scopeId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'displayName': displayName,
      'enforce': enforce,
      'id': id,
      'identities':
          pulumi.Input.encodeList<
            GetPolicyAssignmentIdentity,
            Map<String, dynamic>
          >(identities, (value) => value.toMap()),
      'location': location,
      'metadata': metadata,
      'name': name,
      'nonComplianceMessages':
          pulumi.Input.encodeList<
            GetPolicyAssignmentNonComplianceMessage,
            Map<String, dynamic>
          >(nonComplianceMessages, (value) => value.toMap()),
      'notScopes': notScopes,
      'parameters': parameters,
      'policyDefinitionId': policyDefinitionId,
      'scopeId': scopeId,
    };
  }

  factory GetPolicyAssignmentResult.fromMap(Map<String, dynamic> map) {
    return GetPolicyAssignmentResult(
      description: map['description'] as String,
      displayName: map['displayName'] as String,
      enforce: map['enforce'] as bool,
      id: map['id'] as String,
      identities: pulumi.Input.decodeList<GetPolicyAssignmentIdentity>(
        map['identities']!,
        (value) => GetPolicyAssignmentIdentity.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      location: map['location'] as String,
      metadata: map['metadata'] as String,
      name: map['name'] as String,
      nonComplianceMessages:
          pulumi.Input.decodeList<GetPolicyAssignmentNonComplianceMessage>(
            map['nonComplianceMessages']!,
            (value) => GetPolicyAssignmentNonComplianceMessage.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      notScopes: (map['notScopes'] as List).cast<String>(),
      parameters: map['parameters'] as String,
      policyDefinitionId: map['policyDefinitionId'] as String,
      scopeId: map['scopeId'] as String,
    );
  }
}
