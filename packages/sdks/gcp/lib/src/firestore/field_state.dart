// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'field_index_config.dart';
import 'field_ttl_config.dart';

/// Input properties used for looking up and filtering Field resources.
class FieldState {
  /// The id of the collection group to configure.
  final pulumi.Input<String>? collection;
  /// The Firestore database id. Defaults to `"(default)"`.
  final pulumi.Input<String>? database;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// The id of the field to configure.
  final pulumi.Input<String>? field;
  /// The single field index configuration for this field.
  /// Creating an index configuration for this field will override any inherited configuration with the
  /// indexes specified. Configuring the index configuration with an empty block disables all indexes on
  /// the field.
  /// Structure is documented below.
  final pulumi.Input<FieldIndexConfig>? indexConfig;
  /// The name of this field. Format:
  /// `projects/{{project}}/databases/{{database}}/collectionGroups/{{collection}}/fields/{{field}}`
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Whether to skip waiting for the field operation to complete.
  final pulumi.Input<bool>? skipWait;
  /// The TTL configuration for this Field. If set to an empty (i.e. `ttlConfig {}`) or non-empty block, a TTL policy is configured based on the field. If unset, a TTL policy is not configured (or will be disabled upon updating the resource).
  /// Structure is documented below.
  final pulumi.Input<FieldTtlConfig>? ttlConfig;

  /// Creates a new [FieldState].
  /// [collection] The id of the collection group to configure.
  /// [database] The Firestore database id. Defaults to `"(default)"`.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [field] The id of the field to configure.
  /// [indexConfig] The single field index configuration for this field.
  /// [name] The name of this field. Format:
  /// [project] The ID of the project in which the resource belongs.
  /// [skipWait] Whether to skip waiting for the field operation to complete.
  /// [ttlConfig] The TTL configuration for this Field. If set to an empty (i.e. `ttlConfig {}`) or non-empty block, a TTL policy is configured based on the field. If unset, a TTL policy is not configured (or will be disabled upon updating the resource).
  const FieldState({
    this.collection,
    this.database,
    this.deletionPolicy,
    this.field,
    this.indexConfig,
    this.name,
    this.project,
    this.skipWait,
    this.ttlConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'collection': ?collection,
      'database': ?database,
      'deletionPolicy': ?deletionPolicy,
      'field': ?field,
      'indexConfig': ?pulumi.Input.mapOptionalInputValue<FieldIndexConfig, Map<String, dynamic>>(indexConfig, (value) => value.toMap()),
      'name': ?name,
      'project': ?project,
      'skipWait': ?skipWait,
      'ttlConfig': ?pulumi.Input.mapOptionalInputValue<FieldTtlConfig, Map<String, dynamic>>(ttlConfig, (value) => value.toMap()),
    };
  }

  factory FieldState.fromMap(Map<String, dynamic> map) {
    return FieldState(
      collection: (() { final guardedValue = map['collection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      database: (() { final guardedValue = map['database']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      field: (() { final guardedValue = map['field']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      indexConfig: (() { final guardedValue = map['indexConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FieldIndexConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      skipWait: (() { final guardedValue = map['skipWait']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ttlConfig: (() { final guardedValue = map['ttlConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FieldTtlConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
