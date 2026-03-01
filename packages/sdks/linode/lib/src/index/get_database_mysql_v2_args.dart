// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_database_mysql_v2_get_database_mysql_v2_args_doc}
/// Arguments for getDatabaseMysqlV2.
/// {@endtemplate}
/// {@macro pulumi_index_get_database_mysql_v2_get_database_mysql_v2_args_doc}
class GetDatabaseMysqlV2Args {
  /// The ID of the MySQL database.
  final pulumi.Input<String> id;

  /// Creates a new [GetDatabaseMysqlV2Args].
  /// [id] The ID of the MySQL database.
  GetDatabaseMysqlV2Args({
    required pulumi.Output<String> id,
  }) :
      id = pulumi.Input.asInput<String>(id);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory GetDatabaseMysqlV2Args.fromMap(Map<String, dynamic> map) {
    return GetDatabaseMysqlV2Args(
      id: pulumi.Output.create<String>(map['id'] as String),
    );
  }
}

