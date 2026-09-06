// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'spacecraft_link_response.dart';
import 'system_data_response.dart';

/// Result data returned by getSpacecraft.
class GetSpacecraftResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String? id;
  /// Immutable list of Spacecraft links.
  final List<SpacecraftLinkResponse>? links;
  /// The geo-location where the resource lives
  final String? location;
  /// The name of the resource
  final String? name;
  /// NORAD ID of the spacecraft.
  final String? noradId;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// Title line of the two-line element set (TLE).
  final String? titleLine;
  /// Line 1 of the two-line element set (TLE).
  final String? tleLine1;
  /// Line 2 of the two-line element set (TLE).
  final String? tleLine2;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

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
  const GetSpacecraftResult({
    this.azureApiVersion,
    this.id,
    this.links,
    this.location,
    this.name,
    this.noradId,
    this.systemData,
    this.tags,
    this.titleLine,
    this.tleLine1,
    this.tleLine2,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'id': ?id,
      'links': ?(() { final guardedValue = links; if (guardedValue == null) return null; return pulumi.Input.encodeList<SpacecraftLinkResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'location': ?location,
      'name': ?name,
      'noradId': ?noradId,
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'titleLine': ?titleLine,
      'tleLine1': ?tleLine1,
      'tleLine2': ?tleLine2,
      'type': ?type,
    };
  }

  factory GetSpacecraftResult.fromMap(Map<String, dynamic> map) {
    return GetSpacecraftResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      links: (() { final guardedValue = map['links']; if (guardedValue == null) return null; return pulumi.Input.decodeList<SpacecraftLinkResponse>(guardedValue, (value) => SpacecraftLinkResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      noradId: (() { final guardedValue = map['noradId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      titleLine: (() { final guardedValue = map['titleLine']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tleLine1: (() { final guardedValue = map['tleLine1']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tleLine2: (() { final guardedValue = map['tleLine2']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
