// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_database_ca_get_database_ca_args_doc}
/// Arguments for getDatabaseCa.
/// {@endtemplate}
/// {@macro pulumi_index_get_database_ca_get_database_ca_args_doc}
class GetDatabaseCaArgs {
  /// The ID of the source database cluster.
  final pulumi.Input<String> clusterId;

  /// Creates a new [GetDatabaseCaArgs].
  /// [clusterId] The ID of the source database cluster.
  const GetDatabaseCaArgs({
    required this.clusterId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterId': clusterId,
    };
  }

  factory GetDatabaseCaArgs.fromMap(Map<String, dynamic> map) {
    return GetDatabaseCaArgs(
      clusterId: pulumi.Input.fromValue(map['clusterId'] as String),
    );
  }
}

