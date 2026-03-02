// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EndpointPrivateDnsZoneGroup {
  /// The ID of the Private DNS Zone Config.
  final pulumi.Input<String>? id;
  /// Specifies the Name of the Private DNS Zone Group.
  final pulumi.Input<String> name;
  /// Specifies the list of Private DNS Zones to include within the `private_dns_zone_group`.
  final pulumi.Input<List<String>> privateDnsZoneIds;

  /// Creates a new [EndpointPrivateDnsZoneGroup].
  /// [id] The ID of the Private DNS Zone Config.
  /// [name] Specifies the Name of the Private DNS Zone Group.
  /// [privateDnsZoneIds] Specifies the list of Private DNS Zones to include within the `private_dns_zone_group`.
  EndpointPrivateDnsZoneGroup({
    this.id,
    required this.name,
    required this.privateDnsZoneIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'name': name,
      'privateDnsZoneIds': privateDnsZoneIds,
    };
  }

  factory EndpointPrivateDnsZoneGroup.fromMap(Map<String, dynamic> map) {
    return EndpointPrivateDnsZoneGroup(
      id: map['id'] == null ? null : (map['id'] as String).input(),
      name: (map['name'] as String).input(),
      privateDnsZoneIds: ((map['privateDnsZoneIds'] as List).cast<String>()).input(),
    );
  }
}

