// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'follower_database_definition_response.dart';

/// Result data returned by listKustoPoolFollowerDatabases.
class ListKustoPoolFollowerDatabasesResult {
  /// The list of follower database result.
  final List<FollowerDatabaseDefinitionResponse>? value;

  /// Creates a new [ListKustoPoolFollowerDatabasesResult].
  /// [value] The list of follower database result.
  ListKustoPoolFollowerDatabasesResult({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value == null ? null : pulumi.Input.encodeList<FollowerDatabaseDefinitionResponse, Map<String, dynamic>>(value!, (value) => value.toMap()),
    };
  }

  factory ListKustoPoolFollowerDatabasesResult.fromMap(Map<String, dynamic> map) {
    return ListKustoPoolFollowerDatabasesResult(
      value: map['value'] == null ? null : pulumi.Input.decodeList<FollowerDatabaseDefinitionResponse>(map['value']!, (value) => FollowerDatabaseDefinitionResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

