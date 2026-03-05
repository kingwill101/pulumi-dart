// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'express_route_link_mac_sec_config.dart';

/// ExpressRouteLink child resource definition.
class ExpressRouteLink {
  /// Administrative state of the physical port.
  final pulumi.Input<String>? adminState;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// MacSec configuration.
  final pulumi.Input<ExpressRouteLinkMacSecConfig>? macSecConfig;
  /// Name of child port resource that is unique among child port resources of the parent.
  final pulumi.Input<String>? name;

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
      'macSecConfig': ?pulumi.Input.mapOptionalInputValue<ExpressRouteLinkMacSecConfig, Map<String, dynamic>>(macSecConfig, (value) => value.toMap()),
      'name': ?name,
    };
  }

  factory ExpressRouteLink.fromMap(Map<String, dynamic> map) {
    return ExpressRouteLink(
      adminState: (() { final guardedValue = map['adminState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      macSecConfig: (() { final guardedValue = map['macSecConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ExpressRouteLinkMacSecConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

