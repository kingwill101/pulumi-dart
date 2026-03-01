// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'partial_assessment_properties.dart';

/// {@template pulumi_security_security_standard_args_doc}
/// The set of arguments for SecurityStandard.
/// {@endtemplate}
/// {@macro pulumi_security_security_standard_args_doc}
class SecurityStandardArgs {
  /// List of assessment keys to apply to standard scope.
  final pulumi.Input<List<PartialAssessmentProperties>>? assessments;
  /// List of all standard supported clouds.
  final pulumi.Input<List<String>>? cloudProviders;
  /// Description of the standard
  final pulumi.Input<String>? description;
  /// Display name of the standard, equivalent to the standardId
  final pulumi.Input<String>? displayName;
  /// The policy set definition id associated with the standard.
  final pulumi.Input<String>? policySetDefinitionId;
  /// The scope of the security standard. Valid scopes are: management group (format: 'providers/Microsoft.Management/managementGroups/{managementGroup}'), subscription (format: 'subscriptions/{subscriptionId}'), or security connector (format: 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Security/securityConnectors/{securityConnectorName})'
  final pulumi.Input<String> scope;
  /// The Security Standard key - unique key for the standard type
  final pulumi.Input<String>? standardId;

  /// Creates a new [SecurityStandardArgs].
  /// [assessments] List of assessment keys to apply to standard scope.
  /// [cloudProviders] List of all standard supported clouds.
  /// [description] Description of the standard
  /// [displayName] Display name of the standard, equivalent to the standardId
  /// [policySetDefinitionId] The policy set definition id associated with the standard.
  /// [scope] The scope of the security standard. Valid scopes are: management group (format: 'providers/Microsoft.Management/managementGroups/{managementGroup}'), subscription (format: 'subscriptions/{subscriptionId}'), or security connector (format: 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Security/securityConnectors/{securityConnectorName})'
  /// [standardId] The Security Standard key - unique key for the standard type
  SecurityStandardArgs({
    pulumi.Output<List<PartialAssessmentProperties>>? assessments,
    pulumi.Output<List<String>>? cloudProviders,
    pulumi.Output<String>? description,
    pulumi.Output<String>? displayName,
    pulumi.Output<String>? policySetDefinitionId,
    required pulumi.Output<String> scope,
    pulumi.Output<String>? standardId,
  }) :
      assessments = pulumi.Input.asOptionalInput<List<PartialAssessmentProperties>>(assessments),
      cloudProviders = pulumi.Input.asOptionalInput<List<String>>(cloudProviders),
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      policySetDefinitionId = pulumi.Input.asOptionalInput<String>(policySetDefinitionId),
      scope = pulumi.Input.asInput<String>(scope),
      standardId = pulumi.Input.asOptionalInput<String>(standardId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assessments': ?pulumi.Input.mapOptionalInputValue<List<PartialAssessmentProperties>, List<Map<String, dynamic>>>(assessments, (value) => pulumi.Input.encodeList<PartialAssessmentProperties, Map<String, dynamic>>(value, (value) => value.toMap())),
      'cloudProviders': ?cloudProviders,
      'description': ?description,
      'displayName': ?displayName,
      'policySetDefinitionId': ?policySetDefinitionId,
      'scope': scope,
      'standardId': ?standardId,
    };
  }

  factory SecurityStandardArgs.fromMap(Map<String, dynamic> map) {
    return SecurityStandardArgs(
      assessments: map['assessments'] == null ? null : pulumi.Output.create<List<PartialAssessmentProperties>>(pulumi.Input.decodeList<PartialAssessmentProperties>(map['assessments'], (value) => PartialAssessmentProperties.fromMap((value as Map).cast<String, dynamic>()))),
      cloudProviders: map['cloudProviders'] == null ? null : pulumi.Output.create<List<String>>((map['cloudProviders'] as List).cast<String>()),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      policySetDefinitionId: map['policySetDefinitionId'] == null ? null : pulumi.Output.create<String>(map['policySetDefinitionId'] as String),
      scope: pulumi.Output.create<String>(map['scope'] as String),
      standardId: map['standardId'] == null ? null : pulumi.Output.create<String>(map['standardId'] as String),
    );
  }
}

