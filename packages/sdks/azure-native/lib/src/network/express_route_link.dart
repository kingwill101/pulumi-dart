// ignore_for_file: unused_element, unnecessary_cast

import 'express_route_link_mac_sec_config.dart';

/// ExpressRouteLink child resource definition.
class ExpressRouteLink {
  /// Administrative state of the physical port.
  final String? adminState;
  /// Resource ID.
  final String? id;
  /// MacSec configuration.
  final ExpressRouteLinkMacSecConfig? macSecConfig;
  /// Name of child port resource that is unique among child port resources of the parent.
  final String? name;

  /// Creates a new [ExpressRouteLink].
  /// [adminState] Administrative state of the physical port.
  /// [id] Resource ID.
  /// [macSecConfig] MacSec configuration.
  /// [name] Name of child port resource that is unique among child port resources of the parent.
  ExpressRouteLink({
    this.adminState,
    this.id,
    this.macSecConfig,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminState': ?adminState,
      'id': ?id,
      'macSecConfig': ?macSecConfig == null ? null : macSecConfig!.toMap(),
      'name': ?name,
    };
  }

  factory ExpressRouteLink.fromMap(Map<String, dynamic> map) {
    return ExpressRouteLink(
      adminState: map['adminState'] == null ? null : map['adminState'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      macSecConfig: map['macSecConfig'] == null ? null : ExpressRouteLinkMacSecConfig.fromMap((map['macSecConfig'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

