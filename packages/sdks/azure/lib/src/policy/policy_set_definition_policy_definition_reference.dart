// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PolicySetDefinitionPolicyDefinitionReference {
  /// Parameter values for the references Policy Definition in JSON format.
  final pulumi.Input<String?>? parameterValues;
  /// The ID of the Policy Definition to include in this Policy Set Definition.
  final pulumi.Input<String> policyDefinitionId;
  /// Specifies a list of Policy Definition Groups names that this Policy Definition Reference belongs to.
  final pulumi.Input<List<String>?>? policyGroupNames;
  /// A unique ID within this Policy Set Definition for this Policy Definition Reference.
  final pulumi.Input<String?>? referenceId;
  /// The version of the Policy Definition to use.
  final pulumi.Input<String?>? version;

  /// Creates a new [PolicySetDefinitionPolicyDefinitionReference].
  /// [parameterValues] Parameter values for the references Policy Definition in JSON format.
  /// [policyDefinitionId] The ID of the Policy Definition to include in this Policy Set Definition.
  /// [policyGroupNames] Specifies a list of Policy Definition Groups names that this Policy Definition Reference belongs to.
  /// [referenceId] A unique ID within this Policy Set Definition for this Policy Definition Reference.
  /// [version] The version of the Policy Definition to use.
  const PolicySetDefinitionPolicyDefinitionReference({
    this.parameterValues,
    required this.policyDefinitionId,
    this.policyGroupNames,
    this.referenceId,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parameterValues': ?parameterValues,
      'policyDefinitionId': policyDefinitionId,
      'policyGroupNames': ?policyGroupNames,
      'referenceId': ?referenceId,
      'version': ?version,
    };
  }

  factory PolicySetDefinitionPolicyDefinitionReference.fromMap(Map<String, dynamic> map) {
    return PolicySetDefinitionPolicyDefinitionReference(
      parameterValues: (() { final guardedValue = map['parameterValues']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policyDefinitionId: pulumi.Input.fromValue(map['policyDefinitionId'] as String),
      policyGroupNames: (() { final guardedValue = map['policyGroupNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      referenceId: (() { final guardedValue = map['referenceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
