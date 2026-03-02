// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_interface_vlan_tag.dart';

class DomainDevicesInterfaceVlan {
  /// Defines the tags associated with the VLAN configuration.
  final pulumi.Input<List<DomainDevicesInterfaceVlanTag>>? tags;
  /// Indicates if the VLAN is set to trunk mode.
  final pulumi.Input<String>? trunk;

  /// Creates a new [DomainDevicesInterfaceVlan].
  /// [tags] Defines the tags associated with the VLAN configuration.
  /// [trunk] Indicates if the VLAN is set to trunk mode.
  DomainDevicesInterfaceVlan({
    this.tags,
    this.trunk,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tags': ?pulumi.Input.mapOptionalInputValue<List<DomainDevicesInterfaceVlanTag>, List<Map<String, dynamic>>>(tags, (value) => pulumi.Input.encodeList<DomainDevicesInterfaceVlanTag, Map<String, dynamic>>(value, (value) => value.toMap())),
      'trunk': ?trunk,
    };
  }

  factory DomainDevicesInterfaceVlan.fromMap(Map<String, dynamic> map) {
    return DomainDevicesInterfaceVlan(
      tags: map['tags'] == null ? null : (pulumi.Input.decodeList<DomainDevicesInterfaceVlanTag>(map['tags']!, (value) => DomainDevicesInterfaceVlanTag.fromMap((value as Map).cast<String, dynamic>()))).input(),
      trunk: map['trunk'] == null ? null : (map['trunk']! as String).input(),
    );
  }
}

