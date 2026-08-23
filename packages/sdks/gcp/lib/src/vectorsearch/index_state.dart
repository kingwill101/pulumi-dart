// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'index_dedicated_infrastructure.dart';
import 'index_dense_scann.dart';

/// Input properties used for looking up and filtering Index resources.
class IndexState {
  /// The ID of the parent Collection.
  final pulumi.Input<String>? collectionId;
  /// [Output only] Create time stamp
  final pulumi.Input<String>? createTime;
  /// Dedicated infrastructure for the index. This field belongs to the
  /// `infraType` oneof; if omitted, the server populates it with the
  /// default `PERFORMANCE_OPTIMIZED` mode and an autoscaling spec of
  /// `min_replica_count=2`, `max_replica_count=2`.
  /// Structure is documented below.
  final pulumi.Input<IndexDedicatedInfrastructure>? dedicatedInfrastructure;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// Dense ScaNN index configuration. This field belongs to the
  /// `indexType` oneof; if omitted, the server populates it with default
  /// ScaNN settings.
  /// Structure is documented below.
  final pulumi.Input<IndexDenseScann>? denseScann;
  /// User-specified description of the index
  final pulumi.Input<String>? description;
  /// User-specified display name of the index
  final pulumi.Input<String>? displayName;
  /// Distance metric used for indexing. If not specified, will default to
  /// `DOT_PRODUCT`.
  /// Possible values are: `DOT_PRODUCT`, `COSINE_DISTANCE`.
  final pulumi.Input<String>? distanceMetric;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// The fields to push into the index to enable fast ANN inline filtering.
  final pulumi.Input<List<String>>? filterFields;
  /// The collection schema field to index.
  final pulumi.Input<String>? indexField;
  /// ID of the Index to create.
  /// The id must be 1-63 characters long, and comply with
  /// [RFC1035](https://www.ietf.org/rfc/rfc1035.txt).
  /// Specifically, it must be 1-63 characters long and match the regular
  /// expression `a-z?`.
  final pulumi.Input<String>? indexId;
  /// Labels as key value pairs.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String>? location;
  /// Identifier. name of resource
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// The fields to push into the index to enable inline data retrieval.
  final pulumi.Input<List<String>>? storeFields;
  /// [Output only] Update time stamp
  final pulumi.Input<String>? updateTime;

  /// Creates a new [IndexState].
  /// [collectionId] The ID of the parent Collection.
  /// [createTime] [Output only] Create time stamp
  /// [dedicatedInfrastructure] Dedicated infrastructure for the index. This field belongs to the
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [denseScann] Dense ScaNN index configuration. This field belongs to the
  /// [description] User-specified description of the index
  /// [displayName] User-specified display name of the index
  /// [distanceMetric] Distance metric used for indexing. If not specified, will default to
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [filterFields] The fields to push into the index to enable fast ANN inline filtering.
  /// [indexField] The collection schema field to index.
  /// [indexId] ID of the Index to create.
  /// [labels] Labels as key value pairs.
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [name] Identifier. name of resource
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [storeFields] The fields to push into the index to enable inline data retrieval.
  /// [updateTime] [Output only] Update time stamp
  const IndexState({
    this.collectionId,
    this.createTime,
    this.dedicatedInfrastructure,
    this.deletionPolicy,
    this.denseScann,
    this.description,
    this.displayName,
    this.distanceMetric,
    this.effectiveLabels,
    this.filterFields,
    this.indexField,
    this.indexId,
    this.labels,
    this.location,
    this.name,
    this.project,
    this.pulumiLabels,
    this.storeFields,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'collectionId': ?collectionId,
      'createTime': ?createTime,
      'dedicatedInfrastructure': ?pulumi.Input.mapOptionalInputValue<IndexDedicatedInfrastructure, Map<String, dynamic>>(dedicatedInfrastructure, (value) => value.toMap()),
      'deletionPolicy': ?deletionPolicy,
      'denseScann': ?pulumi.Input.mapOptionalInputValue<IndexDenseScann, Map<String, dynamic>>(denseScann, (value) => value.toMap()),
      'description': ?description,
      'displayName': ?displayName,
      'distanceMetric': ?distanceMetric,
      'effectiveLabels': ?effectiveLabels,
      'filterFields': ?filterFields,
      'indexField': ?indexField,
      'indexId': ?indexId,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'storeFields': ?storeFields,
      'updateTime': ?updateTime,
    };
  }

  factory IndexState.fromMap(Map<String, dynamic> map) {
    return IndexState(
      collectionId: (() { final guardedValue = map['collectionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dedicatedInfrastructure: (() { final guardedValue = map['dedicatedInfrastructure']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IndexDedicatedInfrastructure.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      denseScann: (() { final guardedValue = map['denseScann']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IndexDenseScann.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      distanceMetric: (() { final guardedValue = map['distanceMetric']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      filterFields: (() { final guardedValue = map['filterFields']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      indexField: (() { final guardedValue = map['indexField']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      indexId: (() { final guardedValue = map['indexId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      storeFields: (() { final guardedValue = map['storeFields']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
