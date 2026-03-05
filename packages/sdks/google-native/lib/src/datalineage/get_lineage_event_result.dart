// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_datacatalog_lineage_v1_event_link_response.dart';

/// Result data returned by getLineageEvent.
class GetLineageEventResult {
  /// Optional. The end of the transformation which resulted in this lineage event. For streaming scenarios, it should be the end of the period from which the lineage is being reported.
  final String endTime;
  /// Optional. List of source-target pairs. Can't contain more than 100 tuples.
  final List<GoogleCloudDatacatalogLineageV1EventLinkResponse> links;
  /// Immutable. The resource name of the lineage event. Format: `projects/{project}/locations/{location}/processes/{process}/runs/{run}/lineageEvents/{lineage_event}`. Can be specified or auto-assigned. {lineage_event} must be not longer than 200 characters and only contain characters in a set: `a-zA-Z0-9_-:.`
  final String name;
  /// The beginning of the transformation which resulted in this lineage event. For streaming scenarios, it should be the beginning of the period from which the lineage is being reported.
  final String startTime;

  /// Creates a new [GetLineageEventResult].
  /// [endTime] Optional. The end of the transformation which resulted in this lineage event. For streaming scenarios, it should be the end of the period from which the lineage is being reported.
  /// [links] Optional. List of source-target pairs. Can't contain more than 100 tuples.
  /// [name] Immutable. The resource name of the lineage event. Format: `projects/{project}/locations/{location}/processes/{process}/runs/{run}/lineageEvents/{lineage_event}`. Can be specified or auto-assigned. {lineage_event} must be not longer than 200 characters and only contain characters in a set: `a-zA-Z0-9_-:.`
  /// [startTime] The beginning of the transformation which resulted in this lineage event. For streaming scenarios, it should be the beginning of the period from which the lineage is being reported.
  GetLineageEventResult({
    required this.endTime,
    required this.links,
    required this.name,
    required this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endTime': endTime,
      'links': pulumi.Input.encodeList<GoogleCloudDatacatalogLineageV1EventLinkResponse, Map<String, dynamic>>(links, (value) => value.toMap()),
      'name': name,
      'startTime': startTime,
    };
  }

  factory GetLineageEventResult.fromMap(Map<String, dynamic> map) {
    return GetLineageEventResult(
      endTime: map['endTime'] as String,
      links: pulumi.Input.decodeList<GoogleCloudDatacatalogLineageV1EventLinkResponse>(map['links']!, (value) => GoogleCloudDatacatalogLineageV1EventLinkResponse.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      startTime: map['startTime'] as String,
    );
  }
}

