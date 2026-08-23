// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering DataConnectService resources.
class DataConnectServiceState {
  /// Optional. Stores small amounts of arbitrary data.
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effectiveAnnotations` for all of the annotations present on the resource.
  final pulumi.Input<Map<String, String>>? annotations;
  /// Output only. [Output only] Create time stamp.
  final pulumi.Input<String>? createTime;
  /// The deletion policy for the database. Setting the field to FORCE allows the
  /// Service to be deleted even if a Schema or Connector is present. By default,
  /// the Service deletion will only succeed when no Schema or Connectors are
  /// present.
  ///
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", the command will behave as if set to "DEFAULT".
  ///
  /// Possible values: DEFAULT, FORCE, PREVENT, ABANDON, DELETE
  final pulumi.Input<String>? deletionPolicy;
  /// Optional. Mutable human-readable name. 63 character limit.
  final pulumi.Input<String>? displayName;
  /// All of annotations (key/value pairs) present on the resource in GCP, including the annotations configured through Terraform, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveAnnotations;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// Output only. This checksum is computed by the server based on the value of other
  /// fields, and may be sent on update and delete requests to ensure the
  /// client has an up-to-date value before proceeding.
  /// [AIP-154](https://google.aip.dev/154)
  final pulumi.Input<String>? etag;
  /// Optional. Labels as key value pairs.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The region in which the service resides, e.g. "us-central1" or "asia-east1".
  final pulumi.Input<String>? location;
  /// Identifier. The relative resource name of the Firebase Data Connect service, in the
  /// format:
  /// ```
  /// projects/{project}/locations/{location}/services/{service}
  /// ```
  /// Note that the service ID is specific to Firebase Data Connect and does not
  /// correspond to any of the instance IDs of the underlying data source
  /// connections.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// Output only. A field that if true, indicates that the system is working update the
  /// service.
  final pulumi.Input<bool>? reconciling;
  /// Required. The ID to use for the service, which will become the final component of the
  /// service's resource name.
  final pulumi.Input<String>? serviceId;
  /// Output only. System-assigned, unique identifier.
  final pulumi.Input<String>? uid;
  /// Output only. [Output only] Update time stamp.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [DataConnectServiceState].
  /// [annotations] Optional. Stores small amounts of arbitrary data.
  /// [createTime] Output only. [Output only] Create time stamp.
  /// [deletionPolicy] The deletion policy for the database. Setting the field to FORCE allows the
  /// [displayName] Optional. Mutable human-readable name. 63 character limit.
  /// [effectiveAnnotations] All of annotations (key/value pairs) present on the resource in GCP, including the annotations configured through Terraform, other clients and services.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [etag] Output only. This checksum is computed by the server based on the value of other
  /// [labels] Optional. Labels as key value pairs.
  /// [location] The region in which the service resides, e.g. "us-central1" or "asia-east1".
  /// [name] Identifier. The relative resource name of the Firebase Data Connect service, in the
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [reconciling] Output only. A field that if true, indicates that the system is working update the
  /// [serviceId] Required. The ID to use for the service, which will become the final component of the
  /// [uid] Output only. System-assigned, unique identifier.
  /// [updateTime] Output only. [Output only] Update time stamp.
  const DataConnectServiceState({
    this.annotations,
    this.createTime,
    this.deletionPolicy,
    this.displayName,
    this.effectiveAnnotations,
    this.effectiveLabels,
    this.etag,
    this.labels,
    this.location,
    this.name,
    this.project,
    this.pulumiLabels,
    this.reconciling,
    this.serviceId,
    this.uid,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'createTime': ?createTime,
      'deletionPolicy': ?deletionPolicy,
      'displayName': ?displayName,
      'effectiveAnnotations': ?effectiveAnnotations,
      'effectiveLabels': ?effectiveLabels,
      'etag': ?etag,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'reconciling': ?reconciling,
      'serviceId': ?serviceId,
      'uid': ?uid,
      'updateTime': ?updateTime,
    };
  }

  factory DataConnectServiceState.fromMap(Map<String, dynamic> map) {
    return DataConnectServiceState(
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      effectiveAnnotations: (() { final guardedValue = map['effectiveAnnotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      reconciling: (() { final guardedValue = map['reconciling']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      serviceId: (() { final guardedValue = map['serviceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      uid: (() { final guardedValue = map['uid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
