// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_zones_get_zones_args_doc}
/// Arguments for getZones.
/// {@endtemplate}
/// {@macro pulumi_index_get_zones_get_zones_args_doc}
class GetZonesArgs {
  /// Filter results using a [Label Selector](https://docs.hetzner.cloud/reference/cloud#label-selector)
  final pulumi.Input<String>? withSelector;

  /// Creates a new [GetZonesArgs].
  /// [withSelector] Filter results using a [Label Selector](https://docs.hetzner.cloud/reference/cloud#label-selector)
  GetZonesArgs({
    this.withSelector,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'withSelector': ?withSelector,
    };
  }

  factory GetZonesArgs.fromMap(Map<String, dynamic> map) {
    return GetZonesArgs(
      withSelector: map['withSelector'] == null ? null : (map['withSelector']! as String).input(),
    );
  }
}

