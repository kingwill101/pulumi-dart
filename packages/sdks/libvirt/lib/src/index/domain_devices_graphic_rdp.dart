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
      'listeners':
          ?pulumi.Input.mapOptionalInputValue<
            List<DomainDevicesGraphicRdpListener>,
            List<Map<String, dynamic>>
          >(
            listeners,
            (value) =>
                pulumi.Input.encodeList<
                  DomainDevicesGraphicRdpListener,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'multiUser': ?multiUser,
      'passwd': ?passwd,
      'port': ?port,
      'replaceUser': ?replaceUser,
      'username': ?username,
    };
  }

  factory DomainDevicesGraphicRdp.fromMap(Map<String, dynamic> map) {
    return DomainDevicesGraphicRdp(
      autoPort: (() {
        final guardedValue = map['autoPort'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      listen: (() {
        final guardedValue = map['listen'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      listeners: (() {
        final guardedValue = map['listeners'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<DomainDevicesGraphicRdpListener>(
            guardedValue,
            (value) => DomainDevicesGraphicRdpListener.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      multiUser: (() {
        final guardedValue = map['multiUser'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      passwd: (() {
        final guardedValue = map['passwd'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      port: (() {
        final guardedValue = map['port'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      replaceUser: (() {
        final guardedValue = map['replaceUser'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      username: (() {
        final guardedValue = map['username'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
