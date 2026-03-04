// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering PipelineCloudRule resources.
class PipelineCloudRuleState {
  /// The account ID where the Pipeline Cloud Rule will be created.
  final pulumi.Input<String>? accountId;

  /// Additional information about the rule.
  final pulumi.Input<String>? description;

  /// The name of the rule. This must be unique within an account.
  final pulumi.Input<String>? name;

  /// The NRQL query that defines the data to be processed by this Pipeline Cloud Rule.
  final pulumi.Input<String>? nrql;

  /// Creates a new [PipelineCloudRuleState].
  /// [accountId] The account ID where the Pipeline Cloud Rule will be created.
  /// [description] Additional information about the rule.
  /// [name] The name of the rule. This must be unique within an account.
  /// [nrql] The NRQL query that defines the data to be processed by this Pipeline Cloud Rule.
  PipelineCloudRuleState({
    this.accountId,
    this.description,
    this.name,
    this.nrql,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'description': ?description,
      'name': ?name,
      'nrql': ?nrql,
    };
  }

  factory PipelineCloudRuleState.fromMap(Map<String, dynamic> map) {
    return PipelineCloudRuleState(
      accountId: (() {
        final guardedValue = map['accountId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      nrql: (() {
        final guardedValue = map['nrql'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
