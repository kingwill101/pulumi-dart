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
    pulumi.Output<String>? body,
    pulumi.Output<String>? containerId,
    pulumi.Output<String>? name,
  }) :
      body = pulumi.Input.asOptionalInput<String>(body),
      containerId = pulumi.Input.asOptionalInput<String>(containerId),
      name = pulumi.Input.asOptionalInput<String>(name);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'body': ?body,
      'containerId': ?containerId,
      'name': ?name,
    };
  }

  factory SqlFunctionState.fromMap(Map<String, dynamic> map) {
    return SqlFunctionState(
      body: map['body'] == null ? null : pulumi.Output.create<String>(map['body'] as String),
      containerId: map['containerId'] == null ? null : pulumi.Output.create<String>(map['containerId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
    );
  }
}

