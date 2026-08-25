// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'wire_group_wire_endpoint.dart';
import 'wire_group_wire_wire_property.dart';

class WireGroupWire {
  /// Indicates whether the wire group is administratively enabled.
  final pulumi.Input<bool?>? adminEnabled;
  /// Endpoints grouped by location, each mapping to interconnect configurations.
  /// Structure is documented below.
  final pulumi.Input<List<WireGroupWireEndpoint>?>? endpoints;
  /// (Output)
  final pulumi.Input<String?>? label;
  /// Default properties for wires within the group.
  /// Structure is documented below.
  final pulumi.Input<List<WireGroupWireWireProperty>?>? wireProperties;

  /// Creates a new [WireGroupWire].
  /// [adminEnabled] Indicates whether the wire group is administratively enabled.
  /// [endpoints] Endpoints grouped by location, each mapping to interconnect configurations.
  /// [label] (Output)
  /// [wireProperties] Default properties for wires within the group.
  const WireGroupWire({
    this.adminEnabled,
    this.endpoints,
    this.label,
    this.wireProperties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminEnabled': ?adminEnabled,
      'endpoints': ?pulumi.Input.mapOptionalInputValue<List<WireGroupWireEndpoint>, List<Map<String, dynamic>>>(endpoints, (value) => pulumi.Input.encodeList<WireGroupWireEndpoint, Map<String, dynamic>>(value, (value) => value.toMap())),
      'label': ?label,
      'wireProperties': ?pulumi.Input.mapOptionalInputValue<List<WireGroupWireWireProperty>, List<Map<String, dynamic>>>(wireProperties, (value) => pulumi.Input.encodeList<WireGroupWireWireProperty, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory WireGroupWire.fromMap(Map<String, dynamic> map) {
    return WireGroupWire(
      adminEnabled: (() { final guardedValue = map['adminEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      endpoints: (() { final guardedValue = map['endpoints']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WireGroupWireEndpoint>(guardedValue, (value) => WireGroupWireEndpoint.fromMap((value as Map).cast<String, dynamic>()))); })(),
      label: (() { final guardedValue = map['label']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      wireProperties: (() { final guardedValue = map['wireProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WireGroupWireWireProperty>(guardedValue, (value) => WireGroupWireWireProperty.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
