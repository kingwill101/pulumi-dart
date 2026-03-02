// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_graphic_rdp_listener.dart';

class DomainDevicesGraphicRdp {
  /// Enables automatic port assignment for the RDP connection.
  final pulumi.Input<bool>? autoPort;
  /// Configures the listening parameters for the RDP graphics connection.
  final pulumi.Input<String>? listen;
  /// Sets the configuration for RDP listeners that accept incoming connections.
  final pulumi.Input<List<DomainDevicesGraphicRdpListener>>? listeners;
  /// Configures whether multi-user access is allowed on the RDP connection.
  final pulumi.Input<String>? multiUser;
  /// Sets the password required for RDP access to the graphics console.
  final pulumi.Input<String>? passwd;
  /// Configures the port for the RDP connection to the virtual machine's graphics.
  final pulumi.Input<double>? port;
  /// Determines if the default RDP user should be replaced with a specified one.
  final pulumi.Input<String>? replaceUser;
  /// Sets the username for RDP authentication on the graphics connection.
  final pulumi.Input<String>? username;

  /// Creates a new [DomainDevicesGraphicRdp].
  /// [autoPort] Enables automatic port assignment for the RDP connection.
  /// [listen] Configures the listening parameters for the RDP graphics connection.
  /// [listeners] Sets the configuration for RDP listeners that accept incoming connections.
  /// [multiUser] Configures whether multi-user access is allowed on the RDP connection.
  /// [passwd] Sets the password required for RDP access to the graphics console.
  /// [port] Configures the port for the RDP connection to the virtual machine's graphics.
  /// [replaceUser] Determines if the default RDP user should be replaced with a specified one.
  /// [username] Sets the username for RDP authentication on the graphics connection.
  DomainDevicesGraphicRdp({
    this.autoPort,
    this.listen,
    this.listeners,
    this.multiUser,
    this.passwd,
    this.port,
    this.replaceUser,
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoPort': ?autoPort,
      'listen': ?listen,
      'listeners': ?pulumi.Input.mapOptionalInputValue<List<DomainDevicesGraphicRdpListener>, List<Map<String, dynamic>>>(listeners, (value) => pulumi.Input.encodeList<DomainDevicesGraphicRdpListener, Map<String, dynamic>>(value, (value) => value.toMap())),
      'multiUser': ?multiUser,
      'passwd': ?passwd,
      'port': ?port,
      'replaceUser': ?replaceUser,
      'username': ?username,
    };
  }

  factory DomainDevicesGraphicRdp.fromMap(Map<String, dynamic> map) {
    return DomainDevicesGraphicRdp(
      autoPort: map['autoPort'] == null ? null : (map['autoPort']! as bool).input(),
      listen: map['listen'] == null ? null : (map['listen']! as String).input(),
      listeners: map['listeners'] == null ? null : (pulumi.Input.decodeList<DomainDevicesGraphicRdpListener>(map['listeners']!, (value) => DomainDevicesGraphicRdpListener.fromMap((value as Map).cast<String, dynamic>()))).input(),
      multiUser: map['multiUser'] == null ? null : (map['multiUser']! as String).input(),
      passwd: map['passwd'] == null ? null : (map['passwd']! as String).input(),
      port: map['port'] == null ? null : (map['port']! as double).input(),
      replaceUser: map['replaceUser'] == null ? null : (map['replaceUser']! as String).input(),
      username: map['username'] == null ? null : (map['username']! as String).input(),
    );
  }
}

