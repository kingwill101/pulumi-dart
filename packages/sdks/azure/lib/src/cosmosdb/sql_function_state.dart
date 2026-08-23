// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering SqlFunction resources.
class SqlFunctionState {
  /// Body of the User Defined Function.
  final pulumi.Input<String>? body;
  /// The id of the Cosmos DB SQL Container to create the SQL User Defined Function within. Changing this forces a new SQL User Defined Function to be created.
  final pulumi.Input<String>? containerId;
  /// The name which should be used for this SQL User Defined Function. Changing this forces a new SQL User Defined Function to be created.
  final pulumi.Input<String>? name;

  /// Creates a new [SqlFunctionState].
  /// [body] Body of the User Defined Function.
  /// [containerId] The id of the Cosmos DB SQL Container to create the SQL User Defined Function within. Changing this forces a new SQL User Defined Function to be created.
  /// [name] The name which should be used for this SQL User Defined Function. Changing this forces a new SQL User Defined Function to be created.
  const SqlFunctionState({
    this.body,
    this.containerId,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'body': ?body,
      'containerId': ?containerId,
      'name': ?name,
    };
  }

  factory SqlFunctionState.fromMap(Map<String, dynamic> map) {
    return SqlFunctionState(
      body: (() { final guardedValue = map['body']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      containerId: (() { final guardedValue = map['containerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
