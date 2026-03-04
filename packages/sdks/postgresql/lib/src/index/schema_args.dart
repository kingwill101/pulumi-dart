// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'schema_policy.dart';

/// {@template pulumi_index_schema_schema_args_doc}
/// The set of arguments for Schema.
/// {@endtemplate}
/// {@macro pulumi_index_schema_schema_args_doc}
class SchemaArgs {
  /// The DATABASE in which where this schema will be created. (Default: The database used by your `provider` configuration)
  final pulumi.Input<String>? database;

  /// When true, will also drop all the objects that are contained in the schema. (Default: false)
  final pulumi.Input<bool>? dropCascade;

  /// When true, use the existing schema if it exists. (Default: true)
  final pulumi.Input<bool>? ifNotExists;

  /// The name of the schema. Must be unique in the PostgreSQL
  /// database instance where it is configured.
  final pulumi.Input<String>? name;

  /// The ROLE who owns the schema.
  final pulumi.Input<String>? owner;

  /// Can be specified multiple times for each policy.  Each
  /// policy block supports fields documented below.
  final pulumi.Input<List<SchemaPolicy>>? policies;

  /// Creates a new [SchemaArgs].
  /// [database] The DATABASE in which where this schema will be created. (Default: The database used by your `provider` configuration)
  /// [dropCascade] When true, will also drop all the objects that are contained in the schema. (Default: false)
  /// [ifNotExists] When true, use the existing schema if it exists. (Default: true)
  /// [name] The name of the schema. Must be unique in the PostgreSQL
  /// [owner] The ROLE who owns the schema.
  /// [policies] Can be specified multiple times for each policy.  Each
  SchemaArgs({
    this.database,
    this.dropCascade,
    this.ifNotExists,
    this.name,
    this.owner,
    this.policies,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'database': ?database,
      'dropCascade': ?dropCascade,
      'ifNotExists': ?ifNotExists,
      'name': ?name,
      'owner': ?owner,
      'policies':
          ?pulumi.Input.mapOptionalInputValue<
            List<SchemaPolicy>,
            List<Map<String, dynamic>>
          >(
            policies,
            (value) =>
                pulumi.Input.encodeList<SchemaPolicy, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
    };
  }

  factory SchemaArgs.fromMap(Map<String, dynamic> map) {
    return SchemaArgs(
      database: (() {
        final guardedValue = map['database'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dropCascade: (() {
        final guardedValue = map['dropCascade'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      ifNotExists: (() {
        final guardedValue = map['ifNotExists'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      owner: (() {
        final guardedValue = map['owner'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      policies: (() {
        final guardedValue = map['policies'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<SchemaPolicy>(
            guardedValue,
            (value) =>
                SchemaPolicy.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
    );
  }
}
