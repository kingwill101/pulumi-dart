// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zone_rrsets_rrset.dart';

/// Result data returned by getZoneRrsets.
class GetZoneRrsetsResult {
  /// The ID of this resource.
  final String? id;
  final List<GetZoneRrsetsRrset>? rrsets;
  /// Filter results using a [Label Selector](https://docs.hetzner.cloud/reference/cloud#label-selector)
  final String? withSelector;
  /// ID or Name of the parent Zone.
  final String? zone;

  /// Creates a new [GetZoneRrsetsResult].
  /// [id] The ID of this resource.
  /// [rrsets] Optional.
  /// [withSelector] Filter results using a [Label Selector](https://docs.hetzner.cloud/reference/cloud#label-selector)
  /// [zone] ID or Name of the parent Zone.
  const GetZoneRrsetsResult({
    this.id,
    this.rrsets,
    this.withSelector,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'rrsets': ?(() { final guardedValue = rrsets; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetZoneRrsetsRrset, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'withSelector': ?withSelector,
      'zone': ?zone,
    };
  }

  factory GetZoneRrsetsResult.fromMap(Map<String, dynamic> map) {
    return GetZoneRrsetsResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      rrsets: (() { final guardedValue = map['rrsets']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetZoneRrsetsRrset>(guardedValue, (value) => GetZoneRrsetsRrset.fromMap((value as Map).cast<String, dynamic>())); })(),
      withSelector: (() { final guardedValue = map['withSelector']; if (guardedValue == null) return null; return guardedValue as String; })(),
      zone: (() { final guardedValue = map['zone']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
