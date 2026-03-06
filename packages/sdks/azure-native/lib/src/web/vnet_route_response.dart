// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Virtual Network route contract used to pass routing information for a Virtual Network.
class VnetRouteResponse {
  /// The ending address for this route. If the start address is specified in CIDR notation, this must be omitted.
  final pulumi.Input<String>? endAddress;
  /// Resource Id.
  final pulumi.Input<String> id;
  /// Kind of resource.
  final pulumi.Input<String>? kind;
  /// Resource Name.
  final pulumi.Input<String> name;
  /// The type of route this is:
  /// DEFAULT - By default, every app has routes to the local address ranges specified by RFC1918
  /// INHERITED - Routes inherited from the real Virtual Network routes
  /// STATIC - Static route set on the app only
  ///
  /// These values will be used for syncing an app's routes with those from a Virtual Network.
  final pulumi.Input<String>? routeType;
  /// The starting address for this route. This may also include a CIDR notation, in which case the end address must not be specified.
  final pulumi.Input<String>? startAddress;
  /// Resource type.
  final pulumi.Input<String> type;

  /// Creates a new [VnetRouteResponse].
  /// [endAddress] The ending address for this route. If the start address is specified in CIDR notation, this must be omitted.
  /// [id] Resource Id.
  /// [kind] Kind of resource.
  /// [name] Resource Name.
  /// [routeType] The type of route this is:
  /// [startAddress] The starting address for this route. This may also include a CIDR notation, in which case the end address must not be specified.
  /// [type] Resource type.
  const VnetRouteResponse({
    this.endAddress,
    required this.id,
    this.kind,
    required this.name,
    this.routeType,
    this.startAddress,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endAddress': ?endAddress,
      'id': id,
      'kind': ?kind,
      'name': name,
      'routeType': ?routeType,
      'startAddress': ?startAddress,
      'type': type,
    };
  }

  factory VnetRouteResponse.fromMap(Map<String, dynamic> map) {
    return VnetRouteResponse(
      endAddress: (() { final guardedValue = map['endAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: pulumi.Input.fromValue(map['id'] as String),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      routeType: (() { final guardedValue = map['routeType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      startAddress: (() { final guardedValue = map['startAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

