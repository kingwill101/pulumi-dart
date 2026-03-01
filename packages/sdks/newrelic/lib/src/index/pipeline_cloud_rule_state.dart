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
    pulumi.Output<String>? accountId,
    pulumi.Output<String>? description,
    pulumi.Output<String>? name,
    pulumi.Output<String>? nrql,
  }) :
      accountId = pulumi.Input.asOptionalInput<String>(accountId),
      description = pulumi.Input.asOptionalInput<String>(description),
      name = pulumi.Input.asOptionalInput<String>(name),
      nrql = pulumi.Input.asOptionalInput<String>(nrql);

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
      accountId: map['accountId'] == null ? null : pulumi.Output.create<String>(map['accountId'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      nrql: map['nrql'] == null ? null : pulumi.Output.create<String>(map['nrql'] as String),
    );
  }
}

