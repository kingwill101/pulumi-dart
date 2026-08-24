// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_d1_database_filter.dart';

/// {@template pulumi_index_get_d1_database_get_d1_database_args_doc}
/// Arguments for getD1Database.
/// {@endtemplate}
/// {@macro pulumi_index_get_d1_database_get_d1_database_args_doc}
class GetD1DatabaseArgs {
  /// Account identifier tag.
  final pulumi.Input<String?>? accountId;
  /// D1 database identifier (UUID).
  final pulumi.Input<String?>? databaseId;
  /// Comma-separated list of fields to include in the response. When omitted,
  /// all fields are returned.
  final pulumi.Input<List<String>?>? fields;
  final pulumi.Input<GetD1DatabaseFilter?>? filter;

  /// Creates a new [GetD1DatabaseArgs].
  /// [accountId] Account identifier tag.
  /// [databaseId] D1 database identifier (UUID).
  /// [fields] Comma-separated list of fields to include in the response. When omitted,
  /// [filter] Optional.
  const GetD1DatabaseArgs({
    this.accountId,
    this.databaseId,
    this.fields,
    this.filter,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'databaseId': ?databaseId,
      'fields': ?fields,
      'filter': ?pulumi.Input.mapOptionalInputValue<GetD1DatabaseFilter, Map<String, dynamic>>(filter, (value) => value.toMap()),
    };
  }

  factory GetD1DatabaseArgs.fromMap(Map<String, dynamic> map) {
    return GetD1DatabaseArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      databaseId: (() { final guardedValue = map['databaseId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fields: (() { final guardedValue = map['fields']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetD1DatabaseFilter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
