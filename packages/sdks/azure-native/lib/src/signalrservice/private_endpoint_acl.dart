// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// ACL for a private endpoint
class PrivateEndpointACL {
  /// Allowed request types. The value can be one or more of: ClientConnection, ServerConnection, RESTAPI.
  final pulumi.Input<List<dynamic>?>? allow;
  /// Denied request types. The value can be one or more of: ClientConnection, ServerConnection, RESTAPI.
  final pulumi.Input<List<dynamic>?>? deny;
  /// Name of the private endpoint connection
  final pulumi.Input<String> name;

  /// Creates a new [PrivateEndpointACL].
  /// [allow] Allowed request types. The value can be one or more of: ClientConnection, ServerConnection, RESTAPI.
  /// [deny] Denied request types. The value can be one or more of: ClientConnection, ServerConnection, RESTAPI.
  /// [name] Name of the private endpoint connection
  const PrivateEndpointACL({
    this.allow,
    this.deny,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allow': ?allow,
      'deny': ?deny,
      'name': name,
    };
  }

  factory PrivateEndpointACL.fromMap(Map<String, dynamic> map) {
    return PrivateEndpointACL(
      allow: (() { final guardedValue = map['allow']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<dynamic>()); })(),
      deny: (() { final guardedValue = map['deny']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<dynamic>()); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
