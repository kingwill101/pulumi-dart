// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'spacecraft_link_response.dart';
import 'system_data_response.dart';

/// Result data returned by getSpacecraft.
class GetSpacecraftResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// Immutable list of Spacecraft links.
  final List<SpacecraftLinkResponse> links;
  /// The geo-location where the resource lives
  final String location;
  /// The name of the resource
  final String name;
  /// NORAD ID of the spacecraft.
  final String? noradId;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// Title line of the two-line element set (TLE).
  final String titleLine;
  /// Line 1 of the two-line element set (TLE).
  final String tleLine1;
  /// Line 2 of the two-line element set (TLE).
  final String tleLine2;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetSpacecraftResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [links] Immutable list of Spacecraft links.
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [noradId] NORAD ID of the spacecraft.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [titleLine] Title line of the two-line element set (TLE).
  /// [tleLine1] Line 1 of the two-line element set (TLE).
  /// [tleLine2] Line 2 of the two-line element set (TLE).
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetSpacecraftResult({
    required this.azureApiVersion,
    required this.id,
    required this.links,
    required this.location,
    required this.name,
    this.noradId,
    required this.systemData,
    this.tags,
    required this.titleLine,
    required this.tleLine1,
    required this.tleLine2,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'links': pulumi.Input.encodeList<SpacecraftLinkResponse, Map<String, dynamic>>(links, (value) => value.toMap()),
      'location': location,
      'name': name,
      'noradId': ?noradId,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'titleLine': titleLine,
      'tleLine1': tleLine1,
      'tleLine2': tleLine2,
      'type': type,
    };
  }

  factory GetSpacecraftResult.fromMap(Map<String, dynamic> map) {
    return GetSpacecraftResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      links: pulumi.Input.decodeList<SpacecraftLinkResponse>(map['links'], (value) => SpacecraftLinkResponse.fromMap((value as Map).cast<String, dynamic>())),
      location: map['location'] as String,
      name: map['name'] as String,
      noradId: map['noradId'] == null ? null : map['noradId']! as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags']! as Map).cast<String, String>(),
      titleLine: map['titleLine'] as String,
      tleLine1: map['tleLine1'] as String,
      tleLine2: map['tleLine2'] as String,
      type: map['type'] as String,
    );
  }
}

