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
  /// Optional. The ID of the parent DataAttribute resource, should belong to the same data taxonomy. Circular dependency in parent chain is not valid. Maximum depth of the hierarchy allowed is 4. a -&gt; b -&gt; c -&gt; d -&gt; e, depth = 4
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
  /// [parentId] Optional. The ID of the parent DataAttribute resource, should belong to the same data taxonomy. Circular dependency in parent chain is not valid. Maximum depth of the hierarchy allowed is 4. a -&gt; b -&gt; c -&gt; d -&gt; e, depth = 4
  /// [project] Optional.
  /// [resourceAccessSpec] Optional. Specified when applied to a resource (eg: Cloud Storage bucket, BigQuery dataset, BigQuery table).
  const AttributeArgs({
    this.dataAccessSpec,
    required this.dataAttributeId,
    required this.dataTaxonomyId,
    this.description,
    this.displayName,
    this.etag,
    this.labels,
    this.location,
    this.parentId,
    this.project,
    this.resourceAccessSpec,
  });

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
      dataAccessSpec: (() { final guardedValue = map['dataAccessSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudDataplexV1DataAccessSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dataAttributeId: pulumi.Input.fromValue(map['dataAttributeId'] as String),
      dataTaxonomyId: pulumi.Input.fromValue(map['dataTaxonomyId'] as String),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parentId: (() { final guardedValue = map['parentId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceAccessSpec: (() { final guardedValue = map['resourceAccessSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudDataplexV1ResourceAccessSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

