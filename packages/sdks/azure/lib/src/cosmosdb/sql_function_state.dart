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
  SqlFunctionState({
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
      body: map['body'] == null ? null : (map['body'] as String).input(),
      containerId: map['containerId'] == null ? null : (map['containerId'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
    );
  }
}

