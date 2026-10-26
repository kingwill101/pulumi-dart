// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_apigee_v1_entity_metadata_response.dart';

/// Result data returned by getSharedflow.
class GetSharedflowResult {
  /// The id of the most recently created revision for this shared flow.
  final String? latestRevisionId;
  /// Metadata describing the shared flow.
  final GoogleCloudApigeeV1EntityMetadataResponse? metaData;
  /// The ID of the shared flow.
  final String? name;
  /// A list of revisions of this shared flow.
  final List<String>? revision;

  /// Creates a new [GetSharedflowResult].
  /// [latestRevisionId] The id of the most recently created revision for this shared flow.
  /// [metaData] Metadata describing the shared flow.
  /// [name] The ID of the shared flow.
  /// [revision] A list of revisions of this shared flow.
  const GetSharedflowResult({
    this.latestRevisionId,
    this.metaData,
    this.name,
    this.revision,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'latestRevisionId': ?latestRevisionId,
      'metaData': ?metaData?.toMap(),
      'name': ?name,
      'revision': ?revision,
    };
  }

  factory GetSharedflowResult.fromMap(Map<String, dynamic> map) {
    return GetSharedflowResult(
      latestRevisionId: (() { final guardedValue = map['latestRevisionId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      metaData: (() { final guardedValue = map['metaData']; if (guardedValue == null) return null; return GoogleCloudApigeeV1EntityMetadataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      revision: (() { final guardedValue = map['revision']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
    );
  }
}
