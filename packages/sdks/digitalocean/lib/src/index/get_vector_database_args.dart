// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_vector_database_get_vector_database_args_doc}
/// Arguments for getVectorDatabase.
/// {@endtemplate}
/// {@macro pulumi_index_get_vector_database_get_vector_database_args_doc}
class GetVectorDatabaseArgs {
  /// The ID of the vector database.
  final pulumi.Input<String>? id;
  /// The name of the vector database.
  final pulumi.Input<String>? name;

  /// Creates a new [GetVectorDatabaseArgs].
  /// [id] The ID of the vector database.
  /// [name] The name of the vector database.
  const GetVectorDatabaseArgs({
    this.id,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'name': ?name,
    };
  }

  factory GetVectorDatabaseArgs.fromMap(Map<String, dynamic> map) {
    return GetVectorDatabaseArgs(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
