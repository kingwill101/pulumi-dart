// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_zone_rrset_get_zone_rrset_args_doc}
/// Arguments for getZoneRrset.
/// {@endtemplate}
/// {@macro pulumi_index_get_zone_rrset_get_zone_rrset_args_doc}
class GetZoneRrsetArgs {
  /// ID of the Zone RRSet.
  final pulumi.Input<String>? id;
  /// Name of the Zone RRSet.
  final pulumi.Input<String>? name;
  /// Type of the Zone RRSet.
  final pulumi.Input<String>? type;
  /// Filter results using a [Label Selector](https://docs.hetzner.cloud/reference/cloud#label-selector).
  final pulumi.Input<String>? withSelector;
  /// ID or Name of the parent Zone.
  final pulumi.Input<String> zone;

  /// Creates a new [GetZoneRrsetArgs].
  /// [id] ID of the Zone RRSet.
  /// [name] Name of the Zone RRSet.
  /// [type] Type of the Zone RRSet.
  /// [withSelector] Filter results using a [Label Selector](https://docs.hetzner.cloud/reference/cloud#label-selector).
  /// [zone] ID or Name of the parent Zone.
  GetZoneRrsetArgs({
    this.id,
    this.name,
    this.type,
    this.withSelector,
    required this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'name': ?name,
      'type': ?type,
      'withSelector': ?withSelector,
      'zone': zone,
    };
  }

  factory GetZoneRrsetArgs.fromMap(Map<String, dynamic> map) {
    return GetZoneRrsetArgs(
      id: map['id'] == null ? null : (map['id'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
      withSelector: map['withSelector'] == null ? null : (map['withSelector'] as String).input(),
      zone: (map['zone'] as String).input(),
    );
  }
}

