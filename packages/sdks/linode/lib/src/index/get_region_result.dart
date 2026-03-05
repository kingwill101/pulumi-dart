// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_region_monitors.dart';
import 'get_region_placement_group_limit.dart';
import 'get_region_resolver.dart';

/// Result data returned by getRegion.
class GetRegionResult {
  /// A list of capabilities of this region.
  final List<String> capabilities;
  /// The country the region resides in.
  final String country;
  final String id;
  /// Detailed location information for this Region, including city, state or region, and country.
  final String label;
  final GetRegionMonitors monitors;
  final List<GetRegionPlacementGroupLimit> placementGroupLimits;
  final List<GetRegionResolver> resolvers;
  /// The type of this region.
  final String siteType;
  /// This region’s current operational status (ok or outage).
  final String status;

  /// Creates a new [GetRegionResult].
  /// [capabilities] A list of capabilities of this region.
  /// [country] The country the region resides in.
  /// [id] Required.
  /// [label] Detailed location information for this Region, including city, state or region, and country.
  /// [monitors] Required.
  /// [placementGroupLimits] Required.
  /// [resolvers] Required.
  /// [siteType] The type of this region.
  /// [status] This region’s current operational status (ok or outage).
  GetRegionResult({
    required this.capabilities,
    required this.country,
    required this.id,
    required this.label,
    required this.monitors,
    required this.placementGroupLimits,
    required this.resolvers,
    required this.siteType,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capabilities': capabilities,
      'country': country,
      'id': id,
      'label': label,
      'monitors': monitors.toMap(),
      'placementGroupLimits': pulumi.Input.encodeList<GetRegionPlacementGroupLimit, Map<String, dynamic>>(placementGroupLimits, (value) => value.toMap()),
      'resolvers': pulumi.Input.encodeList<GetRegionResolver, Map<String, dynamic>>(resolvers, (value) => value.toMap()),
      'siteType': siteType,
      'status': status,
    };
  }

  factory GetRegionResult.fromMap(Map<String, dynamic> map) {
    return GetRegionResult(
      capabilities: (map['capabilities'] as List).cast<String>(),
      country: map['country'] as String,
      id: map['id'] as String,
      label: map['label'] as String,
      monitors: GetRegionMonitors.fromMap((map['monitors']! as Map).cast<String, dynamic>()),
      placementGroupLimits: pulumi.Input.decodeList<GetRegionPlacementGroupLimit>(map['placementGroupLimits']!, (value) => GetRegionPlacementGroupLimit.fromMap((value as Map).cast<String, dynamic>())),
      resolvers: pulumi.Input.decodeList<GetRegionResolver>(map['resolvers']!, (value) => GetRegionResolver.fromMap((value as Map).cast<String, dynamic>())),
      siteType: map['siteType'] as String,
      status: map['status'] as String,
    );
  }
}

