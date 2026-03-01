// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_datacatalog_lineage_v1_event_link.dart';

/// {@template pulumi_datalineage_v1_lineage_event_args_doc}
/// The set of arguments for LineageEvent.
/// {@endtemplate}
/// {@macro pulumi_datalineage_v1_lineage_event_args_doc}
class LineageEventArgs {
  /// Optional. The end of the transformation which resulted in this lineage event. For streaming scenarios, it should be the end of the period from which the lineage is being reported.
  final pulumi.Input<String>? endTime;
  /// Optional. List of source-target pairs. Can't contain more than 100 tuples.
  final pulumi.Input<List<GoogleCloudDatacatalogLineageV1EventLink>>? links;
  final pulumi.Input<String>? location;
  /// Immutable. The resource name of the lineage event. Format: `projects/{project}/locations/{location}/processes/{process}/runs/{run}/lineageEvents/{lineage_event}`. Can be specified or auto-assigned. {lineage_event} must be not longer than 200 characters and only contain characters in a set: `a-zA-Z0-9_-:.`
  final pulumi.Input<String>? name;
  final pulumi.Input<String> processId;
  final pulumi.Input<String>? project;
  /// A unique identifier for this request. Restricted to 36 ASCII characters. A random UUID is recommended. This request is idempotent only if a `request_id` is provided.
  final pulumi.Input<String>? requestId;
  final pulumi.Input<String> runId;
  /// The beginning of the transformation which resulted in this lineage event. For streaming scenarios, it should be the beginning of the period from which the lineage is being reported.
  final pulumi.Input<String> startTime;

  /// Creates a new [LineageEventArgs].
  /// [endTime] Optional. The end of the transformation which resulted in this lineage event. For streaming scenarios, it should be the end of the period from which the lineage is being reported.
  /// [links] Optional. List of source-target pairs. Can't contain more than 100 tuples.
  /// [location] Optional.
  /// [name] Immutable. The resource name of the lineage event. Format: `projects/{project}/locations/{location}/processes/{process}/runs/{run}/lineageEvents/{lineage_event}`. Can be specified or auto-assigned. {lineage_event} must be not longer than 200 characters and only contain characters in a set: `a-zA-Z0-9_-:.`
  /// [processId] Required.
  /// [project] Optional.
  /// [requestId] A unique identifier for this request. Restricted to 36 ASCII characters. A random UUID is recommended. This request is idempotent only if a `request_id` is provided.
  /// [runId] Required.
  /// [startTime] The beginning of the transformation which resulted in this lineage event. For streaming scenarios, it should be the beginning of the period from which the lineage is being reported.
  LineageEventArgs({
    pulumi.Output<String>? endTime,
    pulumi.Output<List<GoogleCloudDatacatalogLineageV1EventLink>>? links,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    required pulumi.Output<String> processId,
    pulumi.Output<String>? project,
    pulumi.Output<String>? requestId,
    required pulumi.Output<String> runId,
    required pulumi.Output<String> startTime,
  }) :
      endTime = pulumi.Input.asOptionalInput<String>(endTime),
      links = pulumi.Input.asOptionalInput<List<GoogleCloudDatacatalogLineageV1EventLink>>(links),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      processId = pulumi.Input.asInput<String>(processId),
      project = pulumi.Input.asOptionalInput<String>(project),
      requestId = pulumi.Input.asOptionalInput<String>(requestId),
      runId = pulumi.Input.asInput<String>(runId),
      startTime = pulumi.Input.asInput<String>(startTime);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endTime': ?endTime,
      'links': ?pulumi.Input.mapOptionalInputValue<List<GoogleCloudDatacatalogLineageV1EventLink>, List<Map<String, dynamic>>>(links, (value) => pulumi.Input.encodeList<GoogleCloudDatacatalogLineageV1EventLink, Map<String, dynamic>>(value, (value) => value.toMap())),
      'location': ?location,
      'name': ?name,
      'processId': processId,
      'project': ?project,
      'requestId': ?requestId,
      'runId': runId,
      'startTime': startTime,
    };
  }

  factory LineageEventArgs.fromMap(Map<String, dynamic> map) {
    return LineageEventArgs(
      endTime: map['endTime'] == null ? null : pulumi.Output.create<String>(map['endTime'] as String),
      links: map['links'] == null ? null : pulumi.Output.create<List<GoogleCloudDatacatalogLineageV1EventLink>>(pulumi.Input.decodeList<GoogleCloudDatacatalogLineageV1EventLink>(map['links'], (value) => GoogleCloudDatacatalogLineageV1EventLink.fromMap((value as Map).cast<String, dynamic>()))),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      processId: pulumi.Output.create<String>(map['processId'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      requestId: map['requestId'] == null ? null : pulumi.Output.create<String>(map['requestId'] as String),
      runId: pulumi.Output.create<String>(map['runId'] as String),
      startTime: pulumi.Output.create<String>(map['startTime'] as String),
    );
  }
}

