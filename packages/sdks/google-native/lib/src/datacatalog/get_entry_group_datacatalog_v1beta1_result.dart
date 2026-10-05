// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_datacatalog_v1beta1_system_timestamps_response.dart';

/// Result data returned by getEntryGroup.
class GetEntryGroupDatacatalogV1beta1Result {
  /// Timestamps about this EntryGroup. Default value is empty timestamps.
  final GoogleCloudDatacatalogV1beta1SystemTimestampsResponse? dataCatalogTimestamps;
  /// Entry group description, which can consist of several sentences or paragraphs that describe entry group contents. Default value is an empty string.
  final String? description;
  /// A short name to identify the entry group, for example, "analytics data - jan 2011". Default value is an empty string.
  final String? displayName;
  /// The resource name of the entry group in URL format. Example: * projects/{project_id}/locations/{location}/entryGroups/{entry_group_id} Note that this EntryGroup and its child resources may not actually be stored in the location in this name.
  final String? name;

  /// Creates a new [GetEntryGroupDatacatalogV1beta1Result].
  /// [dataCatalogTimestamps] Timestamps about this EntryGroup. Default value is empty timestamps.
  /// [description] Entry group description, which can consist of several sentences or paragraphs that describe entry group contents. Default value is an empty string.
  /// [displayName] A short name to identify the entry group, for example, "analytics data - jan 2011". Default value is an empty string.
  /// [name] The resource name of the entry group in URL format. Example: * projects/{project_id}/locations/{location}/entryGroups/{entry_group_id} Note that this EntryGroup and its child resources may not actually be stored in the location in this name.
  const GetEntryGroupDatacatalogV1beta1Result({
    this.dataCatalogTimestamps,
    this.description,
    this.displayName,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataCatalogTimestamps': ?dataCatalogTimestamps?.toMap(),
      'description': ?description,
      'displayName': ?displayName,
      'name': ?name,
    };
  }

  factory GetEntryGroupDatacatalogV1beta1Result.fromMap(Map<String, dynamic> map) {
    return GetEntryGroupDatacatalogV1beta1Result(
      dataCatalogTimestamps: (() { final guardedValue = map['dataCatalogTimestamps']; if (guardedValue == null) return null; return GoogleCloudDatacatalogV1beta1SystemTimestampsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
