// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dataplex_v1_data_attribute_binding_path_response.dart';

/// Result data returned by getDataAttributeBinding.
class GetDataAttributeBindingResult {
  /// Optional. List of attributes to be associated with the resource, provided in the form: projects/{project}/locations/{location}/dataTaxonomies/{dataTaxonomy}/attributes/{data_attribute_id}
  final List<String> attributes;
  /// The time when the DataAttributeBinding was created.
  final String createTime;
  /// Optional. Description of the DataAttributeBinding.
  final String description;
  /// Optional. User friendly display name.
  final String displayName;
  /// This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding. Etags must be used when calling the DeleteDataAttributeBinding and the UpdateDataAttributeBinding method.
  final String etag;
  /// Optional. User-defined labels for the DataAttributeBinding.
  final Map<String, String> labels;
  /// The relative resource name of the Data Attribute Binding, of the form: projects/{project_number}/locations/{location}/dataAttributeBindings/{data_attribute_binding_id}
  final String name;
  /// Optional. The list of paths for items within the associated resource (eg. columns and partitions within a table) along with attribute bindings.
  final List<GoogleCloudDataplexV1DataAttributeBindingPathResponse> paths;
  /// Optional. Immutable. The resource name of the resource that is associated to attributes. Presently, only entity resource is supported in the form: projects/{project}/locations/{location}/lakes/{lake}/zones/{zone}/entities/{entity_id} Must belong in the same project and region as the attribute binding, and there can only exist one active binding for a resource.
  final String resource;
  /// System generated globally unique ID for the DataAttributeBinding. This ID will be different if the DataAttributeBinding is deleted and re-created with the same name.
  final String uid;
  /// The time when the DataAttributeBinding was last updated.
  final String updateTime;

  /// Creates a new [GetDataAttributeBindingResult].
  /// [attributes] Optional. List of attributes to be associated with the resource, provided in the form: projects/{project}/locations/{location}/dataTaxonomies/{dataTaxonomy}/attributes/{data_attribute_id}
  /// [createTime] The time when the DataAttributeBinding was created.
  /// [description] Optional. Description of the DataAttributeBinding.
  /// [displayName] Optional. User friendly display name.
  /// [etag] This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding. Etags must be used when calling the DeleteDataAttributeBinding and the UpdateDataAttributeBinding method.
  /// [labels] Optional. User-defined labels for the DataAttributeBinding.
  /// [name] The relative resource name of the Data Attribute Binding, of the form: projects/{project_number}/locations/{location}/dataAttributeBindings/{data_attribute_binding_id}
  /// [paths] Optional. The list of paths for items within the associated resource (eg. columns and partitions within a table) along with attribute bindings.
  /// [resource] Optional. Immutable. The resource name of the resource that is associated to attributes. Presently, only entity resource is supported in the form: projects/{project}/locations/{location}/lakes/{lake}/zones/{zone}/entities/{entity_id} Must belong in the same project and region as the attribute binding, and there can only exist one active binding for a resource.
  /// [uid] System generated globally unique ID for the DataAttributeBinding. This ID will be different if the DataAttributeBinding is deleted and re-created with the same name.
  /// [updateTime] The time when the DataAttributeBinding was last updated.
  GetDataAttributeBindingResult({
    required this.attributes,
    required this.createTime,
    required this.description,
    required this.displayName,
    required this.etag,
    required this.labels,
    required this.name,
    required this.paths,
    required this.resource,
    required this.uid,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attributes': attributes,
      'createTime': createTime,
      'description': description,
      'displayName': displayName,
      'etag': etag,
      'labels': labels,
      'name': name,
      'paths': pulumi.Input.encodeList<GoogleCloudDataplexV1DataAttributeBindingPathResponse, Map<String, dynamic>>(paths, (value) => value.toMap()),
      'resource': resource,
      'uid': uid,
      'updateTime': updateTime,
    };
  }

  factory GetDataAttributeBindingResult.fromMap(Map<String, dynamic> map) {
    return GetDataAttributeBindingResult(
      attributes: (map['attributes'] as List).cast<String>(),
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      displayName: map['displayName'] as String,
      etag: map['etag'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      paths: pulumi.Input.decodeList<GoogleCloudDataplexV1DataAttributeBindingPathResponse>(map['paths']!, (value) => GoogleCloudDataplexV1DataAttributeBindingPathResponse.fromMap((value as Map).cast<String, dynamic>())),
      resource: map['resource'] as String,
      uid: map['uid'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}

