// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_synapse_sql_pool_workload_classifier_sql_pool_workload_classifier_args_doc}
/// The set of arguments for SqlPoolWorkloadClassifier.
/// {@endtemplate}
/// {@macro pulumi_synapse_sql_pool_workload_classifier_sql_pool_workload_classifier_args_doc}
class SqlPoolWorkloadClassifierArgs {
  /// Specifies the session context value that a request can be classified against.
  final pulumi.Input<String>? context;
  /// The workload classifier end time for classification. It's of the `HH:MM` format in UTC time zone.
  final pulumi.Input<String>? endTime;
  /// The workload classifier importance. The allowed values are `low`, `below_normal`, `normal`, `above_normal` and `high`.
  final pulumi.Input<String>? importance;
  /// Specifies the label value that a request can be classified against.
  final pulumi.Input<String>? label;
  /// The workload classifier member name used to classified against.
  final pulumi.Input<String> memberName;
  /// The name which should be used for this Synapse SQL Pool Workload Classifier. Changing this forces a new Synapse SQL Pool Workload Classifier to be created.
  final pulumi.Input<String>? name;
  /// The workload classifier start time for classification. It's of the `HH:MM` format in UTC time zone.
  final pulumi.Input<String>? startTime;
  /// The ID of the Synapse SQL Pool Workload Group. Changing this forces a new Synapse SQL Pool Workload Classifier to be created.
  final pulumi.Input<String> workloadGroupId;

  /// Creates a new [SqlPoolWorkloadClassifierArgs].
  /// [context] Specifies the session context value that a request can be classified against.
  /// [endTime] The workload classifier end time for classification. It's of the `HH:MM` format in UTC time zone.
  /// [importance] The workload classifier importance. The allowed values are `low`, `below_normal`, `normal`, `above_normal` and `high`.
  /// [label] Specifies the label value that a request can be classified against.
  /// [memberName] The workload classifier member name used to classified against.
  /// [name] The name which should be used for this Synapse SQL Pool Workload Classifier. Changing this forces a new Synapse SQL Pool Workload Classifier to be created.
  /// [startTime] The workload classifier start time for classification. It's of the `HH:MM` format in UTC time zone.
  /// [workloadGroupId] The ID of the Synapse SQL Pool Workload Group. Changing this forces a new Synapse SQL Pool Workload Classifier to be created.
  SqlPoolWorkloadClassifierArgs({
    pulumi.Output<String>? context,
    pulumi.Output<String>? endTime,
    pulumi.Output<String>? importance,
    pulumi.Output<String>? label,
    required pulumi.Output<String> memberName,
    pulumi.Output<String>? name,
    pulumi.Output<String>? startTime,
    required pulumi.Output<String> workloadGroupId,
  }) :
      context = pulumi.Input.asOptionalInput<String>(context),
      endTime = pulumi.Input.asOptionalInput<String>(endTime),
      importance = pulumi.Input.asOptionalInput<String>(importance),
      label = pulumi.Input.asOptionalInput<String>(label),
      memberName = pulumi.Input.asInput<String>(memberName),
      name = pulumi.Input.asOptionalInput<String>(name),
      startTime = pulumi.Input.asOptionalInput<String>(startTime),
      workloadGroupId = pulumi.Input.asInput<String>(workloadGroupId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'context': ?context,
      'endTime': ?endTime,
      'importance': ?importance,
      'label': ?label,
      'memberName': memberName,
      'name': ?name,
      'startTime': ?startTime,
      'workloadGroupId': workloadGroupId,
    };
  }

  factory SqlPoolWorkloadClassifierArgs.fromMap(Map<String, dynamic> map) {
    return SqlPoolWorkloadClassifierArgs(
      context: map['context'] == null ? null : pulumi.Output.create<String>(map['context'] as String),
      endTime: map['endTime'] == null ? null : pulumi.Output.create<String>(map['endTime'] as String),
      importance: map['importance'] == null ? null : pulumi.Output.create<String>(map['importance'] as String),
      label: map['label'] == null ? null : pulumi.Output.create<String>(map['label'] as String),
      memberName: pulumi.Output.create<String>(map['memberName'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      startTime: map['startTime'] == null ? null : pulumi.Output.create<String>(map['startTime'] as String),
      workloadGroupId: pulumi.Output.create<String>(map['workloadGroupId'] as String),
    );
  }
}

