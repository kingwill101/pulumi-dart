// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'index_field.dart';

/// Input properties used for looking up and filtering Index resources.
class IndexState {
  /// The API scope at which a query is run.
  /// Default value is `ANY_API`.
  /// Possible values are: `ANY_API`, `DATASTORE_MODE_API`, `MONGODB_COMPATIBLE_API`.
  final pulumi.Input<String?>? apiScope;
  /// The collection being indexed.
  final pulumi.Input<String?>? collection;
  /// The Firestore database id. Defaults to `"(default)"`.
  final pulumi.Input<String?>? database;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// The density configuration for this index.
  /// Possible values are: `SPARSE_ALL`, `SPARSE_ANY`, `DENSE`.
  final pulumi.Input<String?>? density;
  /// The field(s) supported by this index. Indexes with the `ANY_API` `apiScope` in Standard
  /// edition databases have special behavior with respect to the `__name__` field. In these
  /// indexes, the last non-stored field entry is always for the field path `__name__`. If, on
  /// creation, `__name__` was not specified as the last field, it will be added automatically
  /// with the same direction as that of the last field defined. If the final field in an
  /// index is not directional, the `__name__` will be ordered `"ASCENDING"` (unless explicitly
  /// specified otherwise).
  /// Structure is documented below.
  final pulumi.Input<List<IndexField>?>? fields;
  /// Optional. Whether the index is multikey. By default, the index is not multikey. For non-multikey indexes, none of the paths in the index definition reach or traverse an array, except via an explicit array index. For multikey indexes, at most one of the paths in the index definition reach or traverse an array, except via an explicit array index. Violations will result in errors. Note this field only applies to indexes with MONGODB_COMPATIBLE_API ApiScope.
  final pulumi.Input<bool?>? multikey;
  /// A server defined name for this index. Format:
  /// `projects/{{project}}/databases/{{database}}/collectionGroups/{{collection}}/indexes/{{server_generated_id}}`
  final pulumi.Input<String?>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The scope at which a query is run.
  /// Default value is `COLLECTION`.
  /// Possible values are: `COLLECTION`, `COLLECTION_GROUP`, `COLLECTION_RECURSIVE`.
  final pulumi.Input<String?>? queryScope;
  /// Whether to skip waiting for the index to be created.
  final pulumi.Input<bool?>? skipWait;
  /// Whether it is an unique index. Unique index ensures all values for the indexed field(s) are unique across documents.
  final pulumi.Input<bool?>? unique;

  /// Creates a new [IndexState].
  /// [apiScope] The API scope at which a query is run.
  /// [collection] The collection being indexed.
  /// [database] The Firestore database id. Defaults to `"(default)"`.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [density] The density configuration for this index.
  /// [fields] The field(s) supported by this index. Indexes with the `ANY_API` `apiScope` in Standard
  /// [multikey] Optional. Whether the index is multikey. By default, the index is not multikey. For non-multikey indexes, none of the paths in the index definition reach or traverse an array, except via an explicit array index. For multikey indexes, at most one of the paths in the index definition reach or traverse an array, except via an explicit array index. Violations will result in errors. Note this field only applies to indexes with MONGODB_COMPATIBLE_API ApiScope.
  /// [name] A server defined name for this index. Format:
  /// [project] The ID of the project in which the resource belongs.
  /// [queryScope] The scope at which a query is run.
  /// [skipWait] Whether to skip waiting for the index to be created.
  /// [unique] Whether it is an unique index. Unique index ensures all values for the indexed field(s) are unique across documents.
  const IndexState({
    this.apiScope,
    this.collection,
    this.database,
    this.deletionPolicy,
    this.density,
    this.fields,
    this.multikey,
    this.name,
    this.project,
    this.queryScope,
    this.skipWait,
    this.unique,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiScope': ?apiScope,
      'collection': ?collection,
      'database': ?database,
      'deletionPolicy': ?deletionPolicy,
      'density': ?density,
      'fields': ?pulumi.Input.mapOptionalInputValue<List<IndexField>, List<Map<String, dynamic>>>(fields, (value) => pulumi.Input.encodeList<IndexField, Map<String, dynamic>>(value, (value) => value.toMap())),
      'multikey': ?multikey,
      'name': ?name,
      'project': ?project,
      'queryScope': ?queryScope,
      'skipWait': ?skipWait,
      'unique': ?unique,
    };
  }

  factory IndexState.fromMap(Map<String, dynamic> map) {
    return IndexState(
      apiScope: (() { final guardedValue = map['apiScope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      collection: (() { final guardedValue = map['collection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      database: (() { final guardedValue = map['database']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      density: (() { final guardedValue = map['density']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fields: (() { final guardedValue = map['fields']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<IndexField>(guardedValue, (value) => IndexField.fromMap((value as Map).cast<String, dynamic>()))); })(),
      multikey: (() { final guardedValue = map['multikey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      queryScope: (() { final guardedValue = map['queryScope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      skipWait: (() { final guardedValue = map['skipWait']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      unique: (() { final guardedValue = map['unique']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
