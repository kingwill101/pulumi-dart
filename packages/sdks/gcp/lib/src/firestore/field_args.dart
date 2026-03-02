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
  FieldArgs({
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
      collection: (map['collection'] as String).input(),
      database: map['database'] == null ? null : (map['database']! as String).input(),
      field: (map['field'] as String).input(),
      indexConfig: map['indexConfig'] == null ? null : (FieldIndexConfig.fromMap((map['indexConfig']! as Map).cast<String, dynamic>())).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      ttlConfig: map['ttlConfig'] == null ? null : (FieldTtlConfig.fromMap((map['ttlConfig']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

