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
    pulumi.Output<String>? database,
    pulumi.Output<bool>? dropCascade,
    pulumi.Output<bool>? ifNotExists,
    pulumi.Output<String>? name,
    pulumi.Output<String>? owner,
    pulumi.Output<List<SchemaPolicy>>? policies,
  }) :
      database = pulumi.Input.asOptionalInput<String>(database),
      dropCascade = pulumi.Input.asOptionalInput<bool>(dropCascade),
      ifNotExists = pulumi.Input.asOptionalInput<bool>(ifNotExists),
      name = pulumi.Input.asOptionalInput<String>(name),
      owner = pulumi.Input.asOptionalInput<String>(owner),
      policies = pulumi.Input.asOptionalInput<List<SchemaPolicy>>(policies);

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

  factory SchemaArgs.fromMap(Map<String, dynamic> map) {
    return SchemaArgs(
      database: map['database'] == null ? null : pulumi.Output.create<String>(map['database'] as String),
      dropCascade: map['dropCascade'] == null ? null : pulumi.Output.create<bool>(map['dropCascade'] as bool),
      ifNotExists: map['ifNotExists'] == null ? null : pulumi.Output.create<bool>(map['ifNotExists'] as bool),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      owner: map['owner'] == null ? null : pulumi.Output.create<String>(map['owner'] as String),
      policies: map['policies'] == null ? null : pulumi.Output.create<List<SchemaPolicy>>(pulumi.Input.decodeList<SchemaPolicy>(map['policies'], (value) => SchemaPolicy.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

