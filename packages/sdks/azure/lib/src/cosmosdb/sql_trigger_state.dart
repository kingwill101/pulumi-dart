// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering SqlTrigger resources.
class SqlTriggerState {
  /// Body of the Trigger.
  final pulumi.Input<String>? body;
  /// The id of the Cosmos DB SQL Container to create the SQL Trigger within. Changing this forces a new SQL Trigger to be created.
  final pulumi.Input<String>? containerId;
  /// The name which should be used for this SQL Trigger. Changing this forces a new SQL Trigger to be created.
  final pulumi.Input<String>? name;
  /// The operation the trigger is associated with. Possible values are `All`, `Create`, `Update`, `Delete` and `Replace`.
  final pulumi.Input<String>? operation;
  /// Type of the Trigger. Possible values are `Pre` and `Post`.
  final pulumi.Input<String>? type;

  /// Creates a new [SqlTriggerState].
  /// [body] Body of the Trigger.
  /// [containerId] The id of the Cosmos DB SQL Container to create the SQL Trigger within. Changing this forces a new SQL Trigger to be created.
  /// [name] The name which should be used for this SQL Trigger. Changing this forces a new SQL Trigger to be created.
  /// [operation] The operation the trigger is associated with. Possible values are `All`, `Create`, `Update`, `Delete` and `Replace`.
  /// [type] Type of the Trigger. Possible values are `Pre` and `Post`.
  SqlTriggerState({
    pulumi.Output<String>? body,
    pulumi.Output<String>? containerId,
    pulumi.Output<String>? name,
    pulumi.Output<String>? operation,
    pulumi.Output<String>? type,
  }) :
      body = pulumi.Input.asOptionalInput<String>(body),
      containerId = pulumi.Input.asOptionalInput<String>(containerId),
      name = pulumi.Input.asOptionalInput<String>(name),
      operation = pulumi.Input.asOptionalInput<String>(operation),
      type = pulumi.Input.asOptionalInput<String>(type);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'body': ?body,
      'containerId': ?containerId,
      'name': ?name,
      'operation': ?operation,
      'type': ?type,
    };
  }

  factory SqlTriggerState.fromMap(Map<String, dynamic> map) {
    return SqlTriggerState(
      body: map['body'] == null ? null : pulumi.Output.create<String>(map['body'] as String),
      containerId: map['containerId'] == null ? null : pulumi.Output.create<String>(map['containerId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      operation: map['operation'] == null ? null : pulumi.Output.create<String>(map['operation'] as String),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
    );
  }
}

