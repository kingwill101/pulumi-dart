// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zone_rrsets_rrset.dart';

/// Result data returned by getZoneRrsets.
class GetZoneRrsetsResult {
  /// The ID of this resource.
  final String id;
  final List<GetZoneRrsetsRrset> rrsets;
  /// Filter results using a [Label Selector](https://docs.hetzner.cloud/reference/cloud#label-selector)
  final String? withSelector;
  /// ID or Name of the parent Zone.
  final String zone;

  /// Creates a new [GetZoneRrsetsResult].
  /// [id] The ID of this resource.
  /// [rrsets] Required.
  /// [withSelector] Filter results using a [Label Selector](https://docs.hetzner.cloud/reference/cloud#label-selector)
  /// [zone] ID or Name of the parent Zone.
  const GetZoneRrsetsResult({
    required this.id,
    required this.rrsets,
    this.withSelector,
    required this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'rrsets': pulumi.Input.encodeList<GetZoneRrsetsRrset, Map<String, dynamic>>(rrsets, (value) => value.toMap()),
      'withSelector': ?withSelector,
      'zone': zone,
    };
  }

  factory GetZoneRrsetsResult.fromMap(Map<String, dynamic> map) {
    return GetZoneRrsetsResult(
      id: map['id'] as String,
      rrsets: pulumi.Input.decodeList<GetZoneRrsetsRrset>(map['rrsets']!, (value) => GetZoneRrsetsRrset.fromMap((value as Map).cast<String, dynamic>())),
      withSelector: (() { final guardedValue = map['withSelector']; if (guardedValue == null) return null; return guardedValue as String; })(),
      zone: map['zone'] as String,
    );
  }
}
