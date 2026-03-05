// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'object_reference_patch.dart';

/// EndpointAddress is a tuple that describes single IP address. Deprecated: This API is deprecated in v1.33+.
class EndpointAddressPatch {
  /// The Hostname of this endpoint
  final pulumi.Input<String>? hostname;
  /// The IP of this endpoint. May not be loopback (127.0.0.0/8 or ::1), link-local (169.254.0.0/16 or fe80::/10), or link-local multicast (224.0.0.0/24 or ff02::/16).
  final pulumi.Input<String>? ip;
  /// Optional: Node hosting this endpoint. This can be used to determine endpoints local to a node.
  final pulumi.Input<String>? nodeName;
  /// Reference to object providing the endpoint.
  final pulumi.Input<ObjectReferencePatch>? targetRef;

  /// Creates a new [EndpointAddressPatch].
  /// [hostname] The Hostname of this endpoint
  /// [ip] The IP of this endpoint. May not be loopback (127.0.0.0/8 or ::1), link-local (169.254.0.0/16 or fe80::/10), or link-local multicast (224.0.0.0/24 or ff02::/16).
  /// [nodeName] Optional: Node hosting this endpoint. This can be used to determine endpoints local to a node.
  /// [targetRef] Reference to object providing the endpoint.
  EndpointAddressPatch({
    this.hostname,
    this.ip,
    this.nodeName,
    this.targetRef,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostname': ?hostname,
      'ip': ?ip,
      'nodeName': ?nodeName,
      'targetRef': ?pulumi.Input.mapOptionalInputValue<ObjectReferencePatch, Map<String, dynamic>>(targetRef, (value) => value.toMap()),
    };
  }

  factory EndpointAddressPatch.fromMap(Map<String, dynamic> map) {
    return EndpointAddressPatch(
      hostname: (() { final guardedValue = map['hostname']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ip: (() { final guardedValue = map['ip']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nodeName: (() { final guardedValue = map['nodeName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetRef: (() { final guardedValue = map['targetRef']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ObjectReferencePatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

