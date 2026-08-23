// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'index_dedicated_infrastructure.dart';
import 'index_dense_scann.dart';

/// {@template pulumi_vectorsearch_index_index_args_doc}
/// The set of arguments for Index.
/// {@endtemplate}
/// {@macro pulumi_vectorsearch_index_index_args_doc}
class IndexArgs {
  /// The ID of the parent Collection.
  final pulumi.Input<String> collectionId;
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
  /// The fields to push into the index to enable fast ANN inline filtering.
  final pulumi.Input<List<String>>? filterFields;
  /// The collection schema field to index.
  final pulumi.Input<String> indexField;
  /// ID of the Index to create.
  /// The id must be 1-63 characters long, and comply with
  /// [RFC1035](https://www.ietf.org/rfc/rfc1035.txt).
  /// Specifically, it must be 1-63 characters long and match the regular
  /// expression `a-z?`.
  final pulumi.Input<String> indexId;
  /// Labels as key value pairs.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String> location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The fields to push into the index to enable inline data retrieval.
  final pulumi.Input<List<String>>? storeFields;

  /// Creates a new [IndexArgs].
  /// [collectionId] The ID of the parent Collection.
  /// [dedicatedInfrastructure] Dedicated infrastructure for the index. This field belongs to the
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [denseScann] Dense ScaNN index configuration. This field belongs to the
  /// [description] User-specified description of the index
  /// [displayName] User-specified display name of the index
  /// [distanceMetric] Distance metric used for indexing. If not specified, will default to
  /// [filterFields] The fields to push into the index to enable fast ANN inline filtering.
  /// [indexField] The collection schema field to index.
  /// [indexId] ID of the Index to create.
  /// [labels] Labels as key value pairs.
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [project] The ID of the project in which the resource belongs.
  /// [storeFields] The fields to push into the index to enable inline data retrieval.
  const IndexArgs({
    required this.collectionId,
    this.dedicatedInfrastructure,
    this.deletionPolicy,
    this.denseScann,
    this.description,
    this.displayName,
    this.distanceMetric,
    this.filterFields,
    required this.indexField,
    required this.indexId,
    this.labels,
    required this.location,
    this.project,
    this.storeFields,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'collectionId': collectionId,
      'dedicatedInfrastructure': ?pulumi.Input.mapOptionalInputValue<IndexDedicatedInfrastructure, Map<String, dynamic>>(dedicatedInfrastructure, (value) => value.toMap()),
      'deletionPolicy': ?deletionPolicy,
      'denseScann': ?pulumi.Input.mapOptionalInputValue<IndexDenseScann, Map<String, dynamic>>(denseScann, (value) => value.toMap()),
      'description': ?description,
      'displayName': ?displayName,
      'distanceMetric': ?distanceMetric,
      'filterFields': ?filterFields,
      'indexField': indexField,
      'indexId': indexId,
      'labels': ?labels,
      'location': location,
      'project': ?project,
      'storeFields': ?storeFields,
    };
  }

  factory IndexArgs.fromMap(Map<String, dynamic> map) {
    return IndexArgs(
      collectionId: pulumi.Input.fromValue(map['collectionId'] as String),
      dedicatedInfrastructure: (() { final guardedValue = map['dedicatedInfrastructure']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IndexDedicatedInfrastructure.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      denseScann: (() { final guardedValue = map['denseScann']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IndexDenseScann.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      distanceMetric: (() { final guardedValue = map['distanceMetric']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      filterFields: (() { final guardedValue = map['filterFields']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      indexField: pulumi.Input.fromValue(map['indexField'] as String),
      indexId: pulumi.Input.fromValue(map['indexId'] as String),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storeFields: (() { final guardedValue = map['storeFields']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
