// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_zone_rrsets_get_zone_rrsets_args_doc}
/// Arguments for getZoneRrsets.
/// {@endtemplate}
/// {@macro pulumi_index_get_zone_rrsets_get_zone_rrsets_args_doc}
class GetZoneRrsetsArgs {
  /// Filter results using a [Label Selector](https://docs.hetzner.cloud/reference/cloud#label-selector)
  final pulumi.Input<String>? withSelector;

  /// ID or Name of the parent Zone.
  final pulumi.Input<String> zone;

  /// Creates a new [GetZoneRrsetsArgs].
  /// [withSelector] Filter results using a [Label Selector](https://docs.hetzner.cloud/reference/cloud#label-selector)
  /// [zone] ID or Name of the parent Zone.
  GetZoneRrsetsArgs({this.withSelector, required this.zone});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'withSelector': ?withSelector, 'zone': zone};
  }

  factory GetZoneRrsetsArgs.fromMap(Map<String, dynamic> map) {
    return GetZoneRrsetsArgs(
      withSelector: (() {
        final guardedValue = map['withSelector'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      zone: pulumi.Input.fromValue(map['zone'] as String),
    );
  }
}
