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
  const LineageEventArgs({
    this.endTime,
    this.links,
    this.location,
    this.name,
    required this.processId,
    this.project,
    this.requestId,
    required this.runId,
    required this.startTime,
  });

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
      endTime: (() { final guardedValue = map['endTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      links: (() { final guardedValue = map['links']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudDatacatalogLineageV1EventLink>(guardedValue, (value) => GoogleCloudDatacatalogLineageV1EventLink.fromMap((value as Map).cast<String, dynamic>()))); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      processId: pulumi.Input.fromValue(map['processId'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      requestId: (() { final guardedValue = map['requestId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      runId: pulumi.Input.fromValue(map['runId'] as String),
      startTime: pulumi.Input.fromValue(map['startTime'] as String),
    );
  }
}

