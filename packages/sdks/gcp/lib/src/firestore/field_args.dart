// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'field_index_config.dart';
import 'field_ttl_config.dart';

/// {@template pulumi_firestore_field_field_args_doc}
/// The set of arguments for Field.
/// {@endtemplate}
/// {@macro pulumi_firestore_field_field_args_doc}
class FieldArgs {
  /// The id of the collection group to configure.
  final pulumi.Input<String> collection;
  /// The Firestore database id. Defaults to `"(default)"`.
  final pulumi.Input<String>? database;
  /// The id of the field to configure.
  final pulumi.Input<String> field;
  /// The single field index configuration for this field.
  /// Creating an index configuration for this field will override any inherited configuration with the
  /// indexes specified. Configuring the index configuration with an empty block disables all indexes on
  /// the field.
  /// Structure is documented below.
  final pulumi.Input<FieldIndexConfig>? indexConfig;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The TTL configuration for this Field. If set to an empty block (i.e. `ttl_config {}`), a TTL policy is configured based on the field. If unset, a TTL policy is not configured (or will be disabled upon updating the resource).
  /// Structure is documented below.
  final pulumi.Input<FieldTtlConfig>? ttlConfig;

  /// Creates a new [FieldArgs].
  /// [collection] The id of the collection group to configure.
  /// [database] The Firestore database id. Defaults to `"(default)"`.
  /// [field] The id of the field to configure.
  /// [indexConfig] The single field index configuration for this field.
  /// [project] The ID of the project in which the resource belongs.
  /// [ttlConfig] The TTL configuration for this Field. If set to an empty block (i.e. `ttl_config {}`), a TTL policy is configured based on the field. If unset, a TTL policy is not configured (or will be disabled upon updating the resource).
  const FieldArgs({
    required this.collection,
    this.database,
    required this.field,
    this.indexConfig,
    this.project,
    this.ttlConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'collection': collection,
      'database': ?database,
      'field': field,
      'indexConfig': ?pulumi.Input.mapOptionalInputValue<FieldIndexConfig, Map<String, dynamic>>(indexConfig, (value) => value.toMap()),
      'project': ?project,
      'ttlConfig': ?pulumi.Input.mapOptionalInputValue<FieldTtlConfig, Map<String, dynamic>>(ttlConfig, (value) => value.toMap()),
    };
  }

  factory FieldArgs.fromMap(Map<String, dynamic> map) {
    return FieldArgs(
      collection: pulumi.Input.fromValue(map['collection'] as String),
      database: (() { final guardedValue = map['database']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      field: pulumi.Input.fromValue(map['field'] as String),
      indexConfig: (() { final guardedValue = map['indexConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FieldIndexConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ttlConfig: (() { final guardedValue = map['ttlConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FieldTtlConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

