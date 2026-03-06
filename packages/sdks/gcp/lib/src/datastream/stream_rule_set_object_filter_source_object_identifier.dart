// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stream_rule_set_object_filter_source_object_identifier_mongodb_identifier.dart';
import 'stream_rule_set_object_filter_source_object_identifier_mysql_identifier.dart';
import 'stream_rule_set_object_filter_source_object_identifier_oracle_identifier.dart';
import 'stream_rule_set_object_filter_source_object_identifier_postgresql_identifier.dart';
import 'stream_rule_set_object_filter_source_object_identifier_salesforce_identifier.dart';
import 'stream_rule_set_object_filter_source_object_identifier_spanner_identifier.dart';
import 'stream_rule_set_object_filter_source_object_identifier_sql_server_identifier.dart';

class StreamRuleSetObjectFilterSourceObjectIdentifier {
  /// A nested object resource.
  /// Structure is documented below.
  final pulumi.Input<StreamRuleSetObjectFilterSourceObjectIdentifierMongodbIdentifier>? mongodbIdentifier;
  /// A nested object resource.
  /// Structure is documented below.
  final pulumi.Input<StreamRuleSetObjectFilterSourceObjectIdentifierMysqlIdentifier>? mysqlIdentifier;
  /// A nested object resource.
  /// Structure is documented below.
  final pulumi.Input<StreamRuleSetObjectFilterSourceObjectIdentifierOracleIdentifier>? oracleIdentifier;
  /// A nested object resource.
  /// Structure is documented below.
  final pulumi.Input<StreamRuleSetObjectFilterSourceObjectIdentifierPostgresqlIdentifier>? postgresqlIdentifier;
  /// A nested object resource.
  /// Structure is documented below.
  final pulumi.Input<StreamRuleSetObjectFilterSourceObjectIdentifierSalesforceIdentifier>? salesforceIdentifier;
  /// A nested object resource.
  /// Structure is documented below.
  final pulumi.Input<StreamRuleSetObjectFilterSourceObjectIdentifierSpannerIdentifier>? spannerIdentifier;
  /// A nested object resource.
  /// Structure is documented below.
  final pulumi.Input<StreamRuleSetObjectFilterSourceObjectIdentifierSqlServerIdentifier>? sqlServerIdentifier;

  /// Creates a new [StreamRuleSetObjectFilterSourceObjectIdentifier].
  /// [mongodbIdentifier] A nested object resource.
  /// [mysqlIdentifier] A nested object resource.
  /// [oracleIdentifier] A nested object resource.
  /// [postgresqlIdentifier] A nested object resource.
  /// [salesforceIdentifier] A nested object resource.
  /// [spannerIdentifier] A nested object resource.
  /// [sqlServerIdentifier] A nested object resource.
  const StreamRuleSetObjectFilterSourceObjectIdentifier({
    this.mongodbIdentifier,
    this.mysqlIdentifier,
    this.oracleIdentifier,
    this.postgresqlIdentifier,
    this.salesforceIdentifier,
    this.spannerIdentifier,
    this.sqlServerIdentifier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mongodbIdentifier': ?pulumi.Input.mapOptionalInputValue<StreamRuleSetObjectFilterSourceObjectIdentifierMongodbIdentifier, Map<String, dynamic>>(mongodbIdentifier, (value) => value.toMap()),
      'mysqlIdentifier': ?pulumi.Input.mapOptionalInputValue<StreamRuleSetObjectFilterSourceObjectIdentifierMysqlIdentifier, Map<String, dynamic>>(mysqlIdentifier, (value) => value.toMap()),
      'oracleIdentifier': ?pulumi.Input.mapOptionalInputValue<StreamRuleSetObjectFilterSourceObjectIdentifierOracleIdentifier, Map<String, dynamic>>(oracleIdentifier, (value) => value.toMap()),
      'postgresqlIdentifier': ?pulumi.Input.mapOptionalInputValue<StreamRuleSetObjectFilterSourceObjectIdentifierPostgresqlIdentifier, Map<String, dynamic>>(postgresqlIdentifier, (value) => value.toMap()),
      'salesforceIdentifier': ?pulumi.Input.mapOptionalInputValue<StreamRuleSetObjectFilterSourceObjectIdentifierSalesforceIdentifier, Map<String, dynamic>>(salesforceIdentifier, (value) => value.toMap()),
      'spannerIdentifier': ?pulumi.Input.mapOptionalInputValue<StreamRuleSetObjectFilterSourceObjectIdentifierSpannerIdentifier, Map<String, dynamic>>(spannerIdentifier, (value) => value.toMap()),
      'sqlServerIdentifier': ?pulumi.Input.mapOptionalInputValue<StreamRuleSetObjectFilterSourceObjectIdentifierSqlServerIdentifier, Map<String, dynamic>>(sqlServerIdentifier, (value) => value.toMap()),
    };
  }

  factory StreamRuleSetObjectFilterSourceObjectIdentifier.fromMap(Map<String, dynamic> map) {
    return StreamRuleSetObjectFilterSourceObjectIdentifier(
      mongodbIdentifier: (() { final guardedValue = map['mongodbIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StreamRuleSetObjectFilterSourceObjectIdentifierMongodbIdentifier.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      mysqlIdentifier: (() { final guardedValue = map['mysqlIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StreamRuleSetObjectFilterSourceObjectIdentifierMysqlIdentifier.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      oracleIdentifier: (() { final guardedValue = map['oracleIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StreamRuleSetObjectFilterSourceObjectIdentifierOracleIdentifier.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      postgresqlIdentifier: (() { final guardedValue = map['postgresqlIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StreamRuleSetObjectFilterSourceObjectIdentifierPostgresqlIdentifier.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      salesforceIdentifier: (() { final guardedValue = map['salesforceIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StreamRuleSetObjectFilterSourceObjectIdentifierSalesforceIdentifier.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      spannerIdentifier: (() { final guardedValue = map['spannerIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StreamRuleSetObjectFilterSourceObjectIdentifierSpannerIdentifier.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sqlServerIdentifier: (() { final guardedValue = map['sqlServerIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StreamRuleSetObjectFilterSourceObjectIdentifierSqlServerIdentifier.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

