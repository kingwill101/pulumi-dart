// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'schema_policy.dart';

/// Input properties used for looking up and filtering Schema resources.
class SchemaState {
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

  /// Creates a new [SchemaState].
  /// [database] The DATABASE in which where this schema will be created. (Default: The database used by your `provider` configuration)
  /// [dropCascade] When true, will also drop all the objects that are contained in the schema. (Default: false)
  /// [ifNotExists] When true, use the existing schema if it exists. (Default: true)
  /// [name] The name of the schema. Must be unique in the PostgreSQL
  /// [owner] The ROLE who owns the schema.
  /// [policies] Can be specified multiple times for each policy.  Each
  SchemaState({
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
      'policies': ?pulumi.Input.mapOptionalInputValue<List<SchemaPolicy>, List<Map<String, dynamic>>>(policies, (value) => pulumi.Input.encodeList<SchemaPolicy, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory SchemaState.fromMap(Map<String, dynamic> map) {
    return SchemaState(
      database: map['database'] == null ? null : (map['database']! as String).input(),
      dropCascade: map['dropCascade'] == null ? null : (map['dropCascade']! as bool).input(),
      ifNotExists: map['ifNotExists'] == null ? null : (map['ifNotExists']! as bool).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      owner: map['owner'] == null ? null : (map['owner']! as String).input(),
      policies: map['policies'] == null ? null : (pulumi.Input.decodeList<SchemaPolicy>(map['policies']!, (value) => SchemaPolicy.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

