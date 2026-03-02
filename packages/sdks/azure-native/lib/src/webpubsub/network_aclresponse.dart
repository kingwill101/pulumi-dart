// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Network ACL
class NetworkACLResponse {
  /// Allowed request types. The value can be one or more of: ClientConnection, ServerConnection, RESTAPI.
  final pulumi.Input<List<String>>? allow;
  /// Denied request types. The value can be one or more of: ClientConnection, ServerConnection, RESTAPI.
  final pulumi.Input<List<String>>? deny;

  /// Creates a new [NetworkACLResponse].
  /// [allow] Allowed request types. The value can be one or more of: ClientConnection, ServerConnection, RESTAPI.
  /// [deny] Denied request types. The value can be one or more of: ClientConnection, ServerConnection, RESTAPI.
  NetworkACLResponse({
    this.allow,
    this.deny,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allow': ?allow,
      'deny': ?deny,
    };
  }

  factory NetworkACLResponse.fromMap(Map<String, dynamic> map) {
    return NetworkACLResponse(
      allow: map['allow'] == null ? null : ((map['allow'] as List).cast<String>()).input(),
      deny: map['deny'] == null ? null : ((map['deny'] as List).cast<String>()).input(),
    );
  }
}

