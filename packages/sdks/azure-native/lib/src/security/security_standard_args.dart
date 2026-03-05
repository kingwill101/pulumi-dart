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
    this.assessments,
    this.cloudProviders,
    this.description,
    this.displayName,
    this.policySetDefinitionId,
    required this.scope,
    this.standardId,
  });

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
      assessments: (() { final guardedValue = map['assessments']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PartialAssessmentProperties>(guardedValue, (value) => PartialAssessmentProperties.fromMap((value as Map).cast<String, dynamic>()))); })(),
      cloudProviders: (() { final guardedValue = map['cloudProviders']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policySetDefinitionId: (() { final guardedValue = map['policySetDefinitionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scope: pulumi.Input.fromValue(map['scope'] as String),
      standardId: (() { final guardedValue = map['standardId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

