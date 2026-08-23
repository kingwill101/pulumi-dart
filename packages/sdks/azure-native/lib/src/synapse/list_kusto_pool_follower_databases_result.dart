// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'follower_database_definition_response.dart';

/// Result data returned by listKustoPoolFollowerDatabases.
class ListKustoPoolFollowerDatabasesResult {
  /// The list of follower database result.
  final List<FollowerDatabaseDefinitionResponse>? value;

  /// Creates a new [ListKustoPoolFollowerDatabasesResult].
  /// [value] The list of follower database result.
  const ListKustoPoolFollowerDatabasesResult({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?(() { final guardedValue = value; if (guardedValue == null) return null; return pulumi.Input.encodeList<FollowerDatabaseDefinitionResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory ListKustoPoolFollowerDatabasesResult.fromMap(Map<String, dynamic> map) {
    return ListKustoPoolFollowerDatabasesResult(
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.decodeList<FollowerDatabaseDefinitionResponse>(guardedValue, (value) => FollowerDatabaseDefinitionResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
