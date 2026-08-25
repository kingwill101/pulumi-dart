// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_object_vector.dart';

/// Input properties used for looking up and filtering DataObject resources.
class DataObjectState {
  /// The ID of the parent Collection.
  final pulumi.Input<String?>? collectionId;
  /// [Output only] Create time stamp
  final pulumi.Input<String?>? createTime;
  /// The JSON data of the DataObject. Must be a JSON object whose field
  /// names match the fields defined in the parent Collection's
  /// `dataSchema`.
  final pulumi.Input<String?>? data;
  /// ID of the DataObject to create.
  /// The id must be 1-63 characters long, and comply with
  /// [RFC1035](https://www.ietf.org/rfc/rfc1035.txt).
  /// Specifically, it must be 1-63 characters long and match the regular
  /// expression `a-z?`.
  final pulumi.Input<String?>? dataObjectId;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// The etag of the DataObject, used for optimistic concurrency
  /// control on updates and deletes.
  final pulumi.Input<String?>? etag;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String?>? location;
  /// Identifier. name of resource
  final pulumi.Input<String?>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// [Output only] Update time stamp
  final pulumi.Input<String?>? updateTime;
  /// The vectors of the DataObject, keyed by the vector field name as
  /// defined in the parent Collection's `vectorSchema`.
  /// If a vector field is configured with a `vertexEmbeddingConfig` on
  /// the Collection, the server will populate the vector automatically
  /// from the corresponding text in `data` and the field should be
  /// omitted here.
  /// Structure is documented below.
  final pulumi.Input<List<DataObjectVector>?>? vectors;

  /// Creates a new [DataObjectState].
  /// [collectionId] The ID of the parent Collection.
  /// [createTime] [Output only] Create time stamp
  /// [data] The JSON data of the DataObject. Must be a JSON object whose field
  /// [dataObjectId] ID of the DataObject to create.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [etag] The etag of the DataObject, used for optimistic concurrency
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [name] Identifier. name of resource
  /// [project] The ID of the project in which the resource belongs.
  /// [updateTime] [Output only] Update time stamp
  /// [vectors] The vectors of the DataObject, keyed by the vector field name as
  const DataObjectState({
    this.collectionId,
    this.createTime,
    this.data,
    this.dataObjectId,
    this.deletionPolicy,
    this.etag,
    this.location,
    this.name,
    this.project,
    this.updateTime,
    this.vectors,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'collectionId': ?collectionId,
      'createTime': ?createTime,
      'data': ?data,
      'dataObjectId': ?dataObjectId,
      'deletionPolicy': ?deletionPolicy,
      'etag': ?etag,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'updateTime': ?updateTime,
      'vectors': ?pulumi.Input.mapOptionalInputValue<List<DataObjectVector>, List<Map<String, dynamic>>>(vectors, (value) => pulumi.Input.encodeList<DataObjectVector, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DataObjectState.fromMap(Map<String, dynamic> map) {
    return DataObjectState(
      collectionId: (() { final guardedValue = map['collectionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      data: (() { final guardedValue = map['data']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataObjectId: (() { final guardedValue = map['dataObjectId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vectors: (() { final guardedValue = map['vectors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DataObjectVector>(guardedValue, (value) => DataObjectVector.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
