// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dataplex_v1_data_access_spec.dart';
import 'google_cloud_dataplex_v1_resource_access_spec.dart';

/// {@template pulumi_dataplex_v1_attribute_args_doc}
/// The set of arguments for Attribute.
/// {@endtemplate}
/// {@macro pulumi_dataplex_v1_attribute_args_doc}
class AttributeArgs {
  /// Optional. Specified when applied to data stored on the resource (eg: rows, columns in BigQuery Tables).
  final pulumi.Input<GoogleCloudDataplexV1DataAccessSpec>? dataAccessSpec;
  /// Required. DataAttribute identifier. * Must contain only lowercase letters, numbers and hyphens. * Must start with a letter. * Must be between 1-63 characters. * Must end with a number or a letter. * Must be unique within the DataTaxonomy.
  final pulumi.Input<String> dataAttributeId;
  final pulumi.Input<String> dataTaxonomyId;
  /// Optional. Description of the DataAttribute.
  final pulumi.Input<String>? description;
  /// Optional. User friendly display name.
  final pulumi.Input<String>? displayName;
  /// This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  final pulumi.Input<String>? etag;
  /// Optional. User-defined labels for the DataAttribute.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  /// Optional. The ID of the parent DataAttribute resource, should belong to the same data taxonomy. Circular dependency in parent chain is not valid. Maximum depth of the hierarchy allowed is 4. a -> b -> c -> d -> e, depth = 4
  final pulumi.Input<String>? parentId;
  final pulumi.Input<String>? project;
  /// Optional. Specified when applied to a resource (eg: Cloud Storage bucket, BigQuery dataset, BigQuery table).
  final pulumi.Input<GoogleCloudDataplexV1ResourceAccessSpec>? resourceAccessSpec;

  /// Creates a new [AttributeArgs].
  /// [dataAccessSpec] Optional. Specified when applied to data stored on the resource (eg: rows, columns in BigQuery Tables).
  /// [dataAttributeId] Required. DataAttribute identifier. * Must contain only lowercase letters, numbers and hyphens. * Must start with a letter. * Must be between 1-63 characters. * Must end with a number or a letter. * Must be unique within the DataTaxonomy.
  /// [dataTaxonomyId] Required.
  /// [description] Optional. Description of the DataAttribute.
  /// [displayName] Optional. User friendly display name.
  /// [etag] This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  /// [labels] Optional. User-defined labels for the DataAttribute.
  /// [location] Optional.
  /// [parentId] Optional. The ID of the parent DataAttribute resource, should belong to the same data taxonomy. Circular dependency in parent chain is not valid. Maximum depth of the hierarchy allowed is 4. a -> b -> c -> d -> e, depth = 4
  /// [project] Optional.
  /// [resourceAccessSpec] Optional. Specified when applied to a resource (eg: Cloud Storage bucket, BigQuery dataset, BigQuery table).
  AttributeArgs({
    pulumi.Output<GoogleCloudDataplexV1DataAccessSpec>? dataAccessSpec,
    required pulumi.Output<String> dataAttributeId,
    required pulumi.Output<String> dataTaxonomyId,
    pulumi.Output<String>? description,
    pulumi.Output<String>? displayName,
    pulumi.Output<String>? etag,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? location,
    pulumi.Output<String>? parentId,
    pulumi.Output<String>? project,
    pulumi.Output<GoogleCloudDataplexV1ResourceAccessSpec>? resourceAccessSpec,
  }) :
      dataAccessSpec = pulumi.Input.asOptionalInput<GoogleCloudDataplexV1DataAccessSpec>(dataAccessSpec),
      dataAttributeId = pulumi.Input.asInput<String>(dataAttributeId),
      dataTaxonomyId = pulumi.Input.asInput<String>(dataTaxonomyId),
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      etag = pulumi.Input.asOptionalInput<String>(etag),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      parentId = pulumi.Input.asOptionalInput<String>(parentId),
      project = pulumi.Input.asOptionalInput<String>(project),
      resourceAccessSpec = pulumi.Input.asOptionalInput<GoogleCloudDataplexV1ResourceAccessSpec>(resourceAccessSpec);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataAccessSpec': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDataplexV1DataAccessSpec, Map<String, dynamic>>(dataAccessSpec, (value) => value.toMap()),
      'dataAttributeId': dataAttributeId,
      'dataTaxonomyId': dataTaxonomyId,
      'description': ?description,
      'displayName': ?displayName,
      'etag': ?etag,
      'labels': ?labels,
      'location': ?location,
      'parentId': ?parentId,
      'project': ?project,
      'resourceAccessSpec': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDataplexV1ResourceAccessSpec, Map<String, dynamic>>(resourceAccessSpec, (value) => value.toMap()),
    };
  }

  factory AttributeArgs.fromMap(Map<String, dynamic> map) {
    return AttributeArgs(
      dataAccessSpec: map['dataAccessSpec'] == null ? null : pulumi.Output.create<GoogleCloudDataplexV1DataAccessSpec>(GoogleCloudDataplexV1DataAccessSpec.fromMap((map['dataAccessSpec'] as Map).cast<String, dynamic>())),
      dataAttributeId: pulumi.Output.create<String>(map['dataAttributeId'] as String),
      dataTaxonomyId: pulumi.Output.create<String>(map['dataTaxonomyId'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      etag: map['etag'] == null ? null : pulumi.Output.create<String>(map['etag'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      parentId: map['parentId'] == null ? null : pulumi.Output.create<String>(map['parentId'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      resourceAccessSpec: map['resourceAccessSpec'] == null ? null : pulumi.Output.create<GoogleCloudDataplexV1ResourceAccessSpec>(GoogleCloudDataplexV1ResourceAccessSpec.fromMap((map['resourceAccessSpec'] as Map).cast<String, dynamic>())),
    );
  }
}

