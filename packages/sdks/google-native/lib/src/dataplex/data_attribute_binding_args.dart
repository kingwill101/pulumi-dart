// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dataplex_v1_data_attribute_binding_path.dart';

/// {@template pulumi_dataplex_v1_data_attribute_binding_args_doc}
/// The set of arguments for DataAttributeBinding.
/// {@endtemplate}
/// {@macro pulumi_dataplex_v1_data_attribute_binding_args_doc}
class DataAttributeBindingArgs {
  /// Optional. List of attributes to be associated with the resource, provided in the form: projects/{project}/locations/{location}/dataTaxonomies/{dataTaxonomy}/attributes/{data_attribute_id}
  final pulumi.Input<List<String>>? attributes;
  /// Required. DataAttributeBinding identifier. * Must contain only lowercase letters, numbers and hyphens. * Must start with a letter. * Must be between 1-63 characters. * Must end with a number or a letter. * Must be unique within the Location.
  final pulumi.Input<String> dataAttributeBindingId;
  /// Optional. Description of the DataAttributeBinding.
  final pulumi.Input<String>? description;
  /// Optional. User friendly display name.
  final pulumi.Input<String>? displayName;
  /// This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding. Etags must be used when calling the DeleteDataAttributeBinding and the UpdateDataAttributeBinding method.
  final pulumi.Input<String>? etag;
  /// Optional. User-defined labels for the DataAttributeBinding.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  /// Optional. The list of paths for items within the associated resource (eg. columns and partitions within a table) along with attribute bindings.
  final pulumi.Input<List<GoogleCloudDataplexV1DataAttributeBindingPath>>? paths;
  final pulumi.Input<String>? project;
  /// Optional. Immutable. The resource name of the resource that is associated to attributes. Presently, only entity resource is supported in the form: projects/{project}/locations/{location}/lakes/{lake}/zones/{zone}/entities/{entity_id} Must belong in the same project and region as the attribute binding, and there can only exist one active binding for a resource.
  final pulumi.Input<String>? resource;

  /// Creates a new [DataAttributeBindingArgs].
  /// [attributes] Optional. List of attributes to be associated with the resource, provided in the form: projects/{project}/locations/{location}/dataTaxonomies/{dataTaxonomy}/attributes/{data_attribute_id}
  /// [dataAttributeBindingId] Required. DataAttributeBinding identifier. * Must contain only lowercase letters, numbers and hyphens. * Must start with a letter. * Must be between 1-63 characters. * Must end with a number or a letter. * Must be unique within the Location.
  /// [description] Optional. Description of the DataAttributeBinding.
  /// [displayName] Optional. User friendly display name.
  /// [etag] This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding. Etags must be used when calling the DeleteDataAttributeBinding and the UpdateDataAttributeBinding method.
  /// [labels] Optional. User-defined labels for the DataAttributeBinding.
  /// [location] Optional.
  /// [paths] Optional. The list of paths for items within the associated resource (eg. columns and partitions within a table) along with attribute bindings.
  /// [project] Optional.
  /// [resource] Optional. Immutable. The resource name of the resource that is associated to attributes. Presently, only entity resource is supported in the form: projects/{project}/locations/{location}/lakes/{lake}/zones/{zone}/entities/{entity_id} Must belong in the same project and region as the attribute binding, and there can only exist one active binding for a resource.
  DataAttributeBindingArgs({
    this.attributes,
    required this.dataAttributeBindingId,
    this.description,
    this.displayName,
    this.etag,
    this.labels,
    this.location,
    this.paths,
    this.project,
    this.resource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attributes': ?attributes,
      'dataAttributeBindingId': dataAttributeBindingId,
      'description': ?description,
      'displayName': ?displayName,
      'etag': ?etag,
      'labels': ?labels,
      'location': ?location,
      'paths': ?pulumi.Input.mapOptionalInputValue<List<GoogleCloudDataplexV1DataAttributeBindingPath>, List<Map<String, dynamic>>>(paths, (value) => pulumi.Input.encodeList<GoogleCloudDataplexV1DataAttributeBindingPath, Map<String, dynamic>>(value, (value) => value.toMap())),
      'project': ?project,
      'resource': ?resource,
    };
  }

  factory DataAttributeBindingArgs.fromMap(Map<String, dynamic> map) {
    return DataAttributeBindingArgs(
      attributes: map['attributes'] == null ? null : ((map['attributes'] as List).cast<String>()).input(),
      dataAttributeBindingId: (map['dataAttributeBindingId'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      etag: map['etag'] == null ? null : (map['etag'] as String).input(),
      labels: map['labels'] == null ? null : ((map['labels'] as Map).cast<String, String>()).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      paths: map['paths'] == null ? null : (pulumi.Input.decodeList<GoogleCloudDataplexV1DataAttributeBindingPath>(map['paths'], (value) => GoogleCloudDataplexV1DataAttributeBindingPath.fromMap((value as Map).cast<String, dynamic>()))).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      resource: map['resource'] == null ? null : (map['resource'] as String).input(),
    );
  }
}

