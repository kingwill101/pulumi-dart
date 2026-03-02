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
    this.body,
    this.containerId,
    this.name,
    this.operation,
    this.type,
  });

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
      body: map['body'] == null ? null : (map['body']! as String).input(),
      containerId: map['containerId'] == null ? null : (map['containerId']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      operation: map['operation'] == null ? null : (map['operation']! as String).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
    );
  }
}

