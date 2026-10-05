// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_datacatalog_lineage_v1_event_link_response.dart';

/// Result data returned by getLineageEvent.
class GetLineageEventResult {
  /// Optional. The end of the transformation which resulted in this lineage event. For streaming scenarios, it should be the end of the period from which the lineage is being reported.
  final String? endTime;
  /// Optional. List of source-target pairs. Can't contain more than 100 tuples.
  final List<GoogleCloudDatacatalogLineageV1EventLinkResponse>? links;
  /// Immutable. The resource name of the lineage event. Format: `projects/{project}/locations/{location}/processes/{process}/runs/{run}/lineageEvents/{lineage_event}`. Can be specified or auto-assigned. {lineage_event} must be not longer than 200 characters and only contain characters in a set: `a-zA-Z0-9_-:.`
  final String? name;
  /// The beginning of the transformation which resulted in this lineage event. For streaming scenarios, it should be the beginning of the period from which the lineage is being reported.
  final String? startTime;

  /// Creates a new [GetLineageEventResult].
  /// [endTime] Optional. The end of the transformation which resulted in this lineage event. For streaming scenarios, it should be the end of the period from which the lineage is being reported.
  /// [links] Optional. List of source-target pairs. Can't contain more than 100 tuples.
  /// [name] Immutable. The resource name of the lineage event. Format: `projects/{project}/locations/{location}/processes/{process}/runs/{run}/lineageEvents/{lineage_event}`. Can be specified or auto-assigned. {lineage_event} must be not longer than 200 characters and only contain characters in a set: `a-zA-Z0-9_-:.`
  /// [startTime] The beginning of the transformation which resulted in this lineage event. For streaming scenarios, it should be the beginning of the period from which the lineage is being reported.
  const GetLineageEventResult({
    this.endTime,
    this.links,
    this.name,
    this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endTime': ?endTime,
      'links': ?(() { final guardedValue = links; if (guardedValue == null) return null; return pulumi.Input.encodeList<GoogleCloudDatacatalogLineageV1EventLinkResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'name': ?name,
      'startTime': ?startTime,
    };
  }

  factory GetLineageEventResult.fromMap(Map<String, dynamic> map) {
    return GetLineageEventResult(
      endTime: (() { final guardedValue = map['endTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      links: (() { final guardedValue = map['links']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GoogleCloudDatacatalogLineageV1EventLinkResponse>(guardedValue, (value) => GoogleCloudDatacatalogLineageV1EventLinkResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      startTime: (() { final guardedValue = map['startTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
