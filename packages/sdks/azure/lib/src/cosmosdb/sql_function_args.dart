// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cosmosdb_sql_function_sql_function_args_doc}
/// The set of arguments for SqlFunction.
/// {@endtemplate}
/// {@macro pulumi_cosmosdb_sql_function_sql_function_args_doc}
class SqlFunctionArgs {
  /// Body of the User Defined Function.
  final pulumi.Input<String> body;
  /// The id of the Cosmos DB SQL Container to create the SQL User Defined Function within. Changing this forces a new SQL User Defined Function to be created.
  final pulumi.Input<String> containerId;
  /// The name which should be used for this SQL User Defined Function. Changing this forces a new SQL User Defined Function to be created.
  final pulumi.Input<String>? name;

  /// Creates a new [SqlFunctionArgs].
  /// [body] Body of the User Defined Function.
  /// [containerId] The id of the Cosmos DB SQL Container to create the SQL User Defined Function within. Changing this forces a new SQL User Defined Function to be created.
  /// [name] The name which should be used for this SQL User Defined Function. Changing this forces a new SQL User Defined Function to be created.
  SqlFunctionArgs({
    required this.body,
    required this.containerId,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'body': body,
      'containerId': containerId,
      'name': ?name,
    };
  }

  factory SqlFunctionArgs.fromMap(Map<String, dynamic> map) {
    return SqlFunctionArgs(
      body: (map['body'] as String).input(),
      containerId: (map['containerId'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
    );
  }
}

