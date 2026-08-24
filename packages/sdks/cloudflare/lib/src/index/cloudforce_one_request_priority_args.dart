// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_cloudforce_one_request_priority_cloudforce_one_request_priority_args_doc}
/// The set of arguments for CloudforceOneRequestPriority.
/// {@endtemplate}
/// {@macro pulumi_index_cloudforce_one_request_priority_cloudforce_one_request_priority_args_doc}
class CloudforceOneRequestPriorityArgs {
  /// Identifier.
  final pulumi.Input<String> accountId;
  /// List of labels.
  final pulumi.Input<List<String>> labels;
  /// Priority.
  final pulumi.Input<int> priority;
  /// Requirement.
  final pulumi.Input<String> requirement;
  /// The CISA defined Traffic Light Protocol (TLP).
  /// Available values: "clear", "amber", "amber-strict", "green", "red".
  final pulumi.Input<String> tlp;

  /// Creates a new [CloudforceOneRequestPriorityArgs].
  /// [accountId] Identifier.
  /// [labels] List of labels.
  /// [priority] Priority.
  /// [requirement] Requirement.
  /// [tlp] The CISA defined Traffic Light Protocol (TLP).
  const CloudforceOneRequestPriorityArgs({
    required this.accountId,
    required this.labels,
    required this.priority,
    required this.requirement,
    required this.tlp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'labels': labels,
      'priority': priority,
      'requirement': requirement,
      'tlp': tlp,
    };
  }

  factory CloudforceOneRequestPriorityArgs.fromMap(Map<String, dynamic> map) {
    return CloudforceOneRequestPriorityArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      labels: pulumi.Input.fromValue((map['labels'] as List).cast<String>()),
      priority: pulumi.Input.fromValue((map['priority'] as num).toInt()),
      requirement: pulumi.Input.fromValue(map['requirement'] as String),
      tlp: pulumi.Input.fromValue(map['tlp'] as String),
    );
  }
}
