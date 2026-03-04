// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'object_reference.dart';

/// EndpointAddress is a tuple that describes single IP address. Deprecated: This API is deprecated in v1.33+.
class EndpointAddress {
  /// The Hostname of this endpoint
  final pulumi.Input<String>? hostname;

  /// The IP of this endpoint. May not be loopback (127.0.0.0/8 or ::1), link-local (169.254.0.0/16 or fe80::/10), or link-local multicast (224.0.0.0/24 or ff02::/16).
  final pulumi.Input<String> ip;

  /// Optional: Node hosting this endpoint. This can be used to determine endpoints local to a node.
  final pulumi.Input<String>? nodeName;

  /// Reference to object providing the endpoint.
  final pulumi.Input<ObjectReference>? targetRef;

  /// Creates a new [EndpointAddress].
  /// [hostname] The Hostname of this endpoint
  /// [ip] The IP of this endpoint. May not be loopback (127.0.0.0/8 or ::1), link-local (169.254.0.0/16 or fe80::/10), or link-local multicast (224.0.0.0/24 or ff02::/16).
  /// [nodeName] Optional: Node hosting this endpoint. This can be used to determine endpoints local to a node.
  /// [targetRef] Reference to object providing the endpoint.
  EndpointAddress({
    this.hostname,
    required this.ip,
    this.nodeName,
    this.targetRef,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostname': ?hostname,
      'ip': ip,
      'nodeName': ?nodeName,
      'targetRef':
          ?pulumi.Input.mapOptionalInputValue<
            ObjectReference,
            Map<String, dynamic>
          >(targetRef, (value) => value.toMap()),
    };
  }

  factory EndpointAddress.fromMap(Map<String, dynamic> map) {
    return EndpointAddress(
      hostname: (() {
        final guardedValue = map['hostname'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ip: pulumi.Input.fromValue(map['ip'] as String),
      nodeName: (() {
        final guardedValue = map['nodeName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      targetRef: (() {
        final guardedValue = map['targetRef'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ObjectReference.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
