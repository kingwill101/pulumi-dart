// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_dataplex_v1_data_access_spec_response.dart';
import 'google_cloud_dataplex_v1_resource_access_spec_response.dart';

/// Result data returned by getAttribute.
class GetAttributeResult {
  /// The number of child attributes present for this attribute.
  final int? attributeCount;
  /// The time when the DataAttribute was created.
  final String? createTime;
  /// Optional. Specified when applied to data stored on the resource (eg: rows, columns in BigQuery Tables).
  final GoogleCloudDataplexV1DataAccessSpecResponse? dataAccessSpec;
  /// Optional. Description of the DataAttribute.
  final String? description;
  /// Optional. User friendly display name.
  final String? displayName;
  /// This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  final String? etag;
  /// Optional. User-defined labels for the DataAttribute.
  final Map<String, String>? labels;
  /// The relative resource name of the dataAttribute, of the form: projects/{project_number}/locations/{location_id}/dataTaxonomies/{dataTaxonomy}/attributes/{data_attribute_id}.
  final String? name;
  /// Optional. The ID of the parent DataAttribute resource, should belong to the same data taxonomy. Circular dependency in parent chain is not valid. Maximum depth of the hierarchy allowed is 4. a -&gt; b -&gt; c -&gt; d -&gt; e, depth = 4
  final String? parentId;
  /// Optional. Specified when applied to a resource (eg: Cloud Storage bucket, BigQuery dataset, BigQuery table).
  final GoogleCloudDataplexV1ResourceAccessSpecResponse? resourceAccessSpec;
  /// System generated globally unique ID for the DataAttribute. This ID will be different if the DataAttribute is deleted and re-created with the same name.
  final String? uid;
  /// The time when the DataAttribute was last updated.
  final String? updateTime;

  /// Creates a new [GetAttributeResult].
  /// [attributeCount] The number of child attributes present for this attribute.
  /// [createTime] The time when the DataAttribute was created.
  /// [dataAccessSpec] Optional. Specified when applied to data stored on the resource (eg: rows, columns in BigQuery Tables).
  /// [description] Optional. Description of the DataAttribute.
  /// [displayName] Optional. User friendly display name.
  /// [etag] This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  /// [labels] Optional. User-defined labels for the DataAttribute.
  /// [name] The relative resource name of the dataAttribute, of the form: projects/{project_number}/locations/{location_id}/dataTaxonomies/{dataTaxonomy}/attributes/{data_attribute_id}.
  /// [parentId] Optional. The ID of the parent DataAttribute resource, should belong to the same data taxonomy. Circular dependency in parent chain is not valid. Maximum depth of the hierarchy allowed is 4. a -&gt; b -&gt; c -&gt; d -&gt; e, depth = 4
  /// [resourceAccessSpec] Optional. Specified when applied to a resource (eg: Cloud Storage bucket, BigQuery dataset, BigQuery table).
  /// [uid] System generated globally unique ID for the DataAttribute. This ID will be different if the DataAttribute is deleted and re-created with the same name.
  /// [updateTime] The time when the DataAttribute was last updated.
  const GetAttributeResult({
    this.attributeCount,
    this.createTime,
    this.dataAccessSpec,
    this.description,
    this.displayName,
    this.etag,
    this.labels,
    this.name,
    this.parentId,
    this.resourceAccessSpec,
    this.uid,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attributeCount': ?attributeCount,
      'createTime': ?createTime,
      'dataAccessSpec': ?dataAccessSpec?.toMap(),
      'description': ?description,
      'displayName': ?displayName,
      'etag': ?etag,
      'labels': ?labels,
      'name': ?name,
      'parentId': ?parentId,
      'resourceAccessSpec': ?resourceAccessSpec?.toMap(),
      'uid': ?uid,
      'updateTime': ?updateTime,
    };
  }

  factory GetAttributeResult.fromMap(Map<String, dynamic> map) {
    return GetAttributeResult(
      attributeCount: (() { final guardedValue = map['attributeCount']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dataAccessSpec: (() { final guardedValue = map['dataAccessSpec']; if (guardedValue == null) return null; return GoogleCloudDataplexV1DataAccessSpecResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      parentId: (() { final guardedValue = map['parentId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceAccessSpec: (() { final guardedValue = map['resourceAccessSpec']; if (guardedValue == null) return null; return GoogleCloudDataplexV1ResourceAccessSpecResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      uid: (() { final guardedValue = map['uid']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
