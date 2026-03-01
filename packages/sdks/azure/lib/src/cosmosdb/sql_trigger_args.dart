// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cosmosdb_sql_trigger_sql_trigger_args_doc}
/// The set of arguments for SqlTrigger.
/// {@endtemplate}
/// {@macro pulumi_cosmosdb_sql_trigger_sql_trigger_args_doc}
class SqlTriggerArgs {
  /// Body of the Trigger.
  final pulumi.Input<String> body;
  /// The id of the Cosmos DB SQL Container to create the SQL Trigger within. Changing this forces a new SQL Trigger to be created.
  final pulumi.Input<String> containerId;
  /// The name which should be used for this SQL Trigger. Changing this forces a new SQL Trigger to be created.
  final pulumi.Input<String>? name;
  /// The operation the trigger is associated with. Possible values are `All`, `Create`, `Update`, `Delete` and `Replace`.
  final pulumi.Input<String> operation;
  /// Type of the Trigger. Possible values are `Pre` and `Post`.
  final pulumi.Input<String> type;

  /// Creates a new [SqlTriggerArgs].
  /// [body] Body of the Trigger.
  /// [containerId] The id of the Cosmos DB SQL Container to create the SQL Trigger within. Changing this forces a new SQL Trigger to be created.
  /// [name] The name which should be used for this SQL Trigger. Changing this forces a new SQL Trigger to be created.
  /// [operation] The operation the trigger is associated with. Possible values are `All`, `Create`, `Update`, `Delete` and `Replace`.
  /// [type] Type of the Trigger. Possible values are `Pre` and `Post`.
  SqlTriggerArgs({
    required pulumi.Output<String> body,
    required pulumi.Output<String> containerId,
    pulumi.Output<String>? name,
    required pulumi.Output<String> operation,
    required pulumi.Output<String> type,
  }) :
      body = pulumi.Input.asInput<String>(body),
      containerId = pulumi.Input.asInput<String>(containerId),
      name = pulumi.Input.asOptionalInput<String>(name),
      operation = pulumi.Input.asInput<String>(operation),
      type = pulumi.Input.asInput<String>(type);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'body': body,
      'containerId': containerId,
      'name': ?name,
      'operation': operation,
      'type': type,
    };
  }

  factory SqlTriggerArgs.fromMap(Map<String, dynamic> map) {
    return SqlTriggerArgs(
      body: pulumi.Output.create<String>(map['body'] as String),
      containerId: pulumi.Output.create<String>(map['containerId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      operation: pulumi.Output.create<String>(map['operation'] as String),
      type: pulumi.Output.create<String>(map['type'] as String),
    );
  }
}

