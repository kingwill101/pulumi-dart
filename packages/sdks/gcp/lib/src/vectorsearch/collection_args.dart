// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'collection_encryption_spec.dart';
import 'collection_vector_schema.dart';

/// {@template pulumi_vectorsearch_collection_collection_args_doc}
/// The set of arguments for Collection.
/// {@endtemplate}
/// {@macro pulumi_vectorsearch_collection_collection_args_doc}
class CollectionArgs {
  /// ID of the Collection to create.
  /// The id must be 1-63 characters long, and comply with
  /// [RFC1035](https://www.ietf.org/rfc/rfc1035.txt).
  /// Specifically, it must be 1-63 characters long and match the regular
  /// expression `a-z?`.
  final pulumi.Input<String> collectionId;
  /// JSON Schema for data.
  /// Field names must contain only alphanumeric characters,
  /// underscores, and hyphens.
  final pulumi.Input<String?>? dataSchema;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// User-specified description of the collection
  final pulumi.Input<String?>? description;
  /// User-specified display name of the collection
  final pulumi.Input<String?>? displayName;
  /// Represents a customer-managed encryption key specification that can be
  /// applied to a Vector Search collection.
  /// Structure is documented below.
  final pulumi.Input<CollectionEncryptionSpec?>? encryptionSpec;
  /// Labels as key value pairs.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>?>? labels;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String> location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// Schema for vector fields. Only vector fields in this schema will be
  /// searchable.
  /// Field names must contain only alphanumeric characters,
  /// underscores, and hyphens.
  /// Structure is documented below.
  final pulumi.Input<List<CollectionVectorSchema>?>? vectorSchemas;

  /// Creates a new [CollectionArgs].
  /// [collectionId] ID of the Collection to create.
  /// [dataSchema] JSON Schema for data.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] User-specified description of the collection
  /// [displayName] User-specified display name of the collection
  /// [encryptionSpec] Represents a customer-managed encryption key specification that can be
  /// [labels] Labels as key value pairs.
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [project] The ID of the project in which the resource belongs.
  /// [vectorSchemas] Schema for vector fields. Only vector fields in this schema will be
  const CollectionArgs({
    required this.collectionId,
    this.dataSchema,
    this.deletionPolicy,
    this.description,
    this.displayName,
    this.encryptionSpec,
    this.labels,
    required this.location,
    this.project,
    this.vectorSchemas,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'collectionId': collectionId,
      'dataSchema': ?dataSchema,
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'displayName': ?displayName,
      'encryptionSpec': ?pulumi.Input.mapOptionalInputValue<CollectionEncryptionSpec, Map<String, dynamic>>(encryptionSpec, (value) => value.toMap()),
      'labels': ?labels,
      'location': location,
      'project': ?project,
      'vectorSchemas': ?pulumi.Input.mapOptionalInputValue<List<CollectionVectorSchema>, List<Map<String, dynamic>>>(vectorSchemas, (value) => pulumi.Input.encodeList<CollectionVectorSchema, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory CollectionArgs.fromMap(Map<String, dynamic> map) {
    return CollectionArgs(
      collectionId: pulumi.Input.fromValue(map['collectionId'] as String),
      dataSchema: (() { final guardedValue = map['dataSchema']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      encryptionSpec: (() { final guardedValue = map['encryptionSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CollectionEncryptionSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vectorSchemas: (() { final guardedValue = map['vectorSchemas']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CollectionVectorSchema>(guardedValue, (value) => CollectionVectorSchema.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
