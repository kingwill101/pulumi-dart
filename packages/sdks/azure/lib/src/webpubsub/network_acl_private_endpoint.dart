// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NetworkAclPrivateEndpoint {
  /// The allowed request types for the Private Endpoint Connection. Possible values are `ClientConnection`, `ServerConnection`, `RESTAPI` and `Trace`.
  final pulumi.Input<List<String>>? allowedRequestTypes;
  /// The denied request types for the Private Endpoint Connection. Possible values are `ClientConnection`, `ServerConnection`, `RESTAPI` and `Trace`.
  ///
  /// &gt; **Note:** When `defaultAction` is `Allow`, `allowedRequestTypes`cannot be set. When `defaultAction` is `Deny`, `deniedRequestTypes`cannot be set.
  final pulumi.Input<List<String>>? deniedRequestTypes;
  /// The ID of the Private Endpoint which is based on the Web Pubsub service.
  final pulumi.Input<String> id;

  /// Creates a new [NetworkAclPrivateEndpoint].
  /// [allowedRequestTypes] The allowed request types for the Private Endpoint Connection. Possible values are `ClientConnection`, `ServerConnection`, `RESTAPI` and `Trace`.
  /// [deniedRequestTypes] The denied request types for the Private Endpoint Connection. Possible values are `ClientConnection`, `ServerConnection`, `RESTAPI` and `Trace`.
  /// [id] The ID of the Private Endpoint which is based on the Web Pubsub service.
  const NetworkAclPrivateEndpoint({
    this.allowedRequestTypes,
    this.deniedRequestTypes,
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedRequestTypes': ?allowedRequestTypes,
      'deniedRequestTypes': ?deniedRequestTypes,
      'id': id,
    };
  }

  factory NetworkAclPrivateEndpoint.fromMap(Map<String, dynamic> map) {
    return NetworkAclPrivateEndpoint(
      allowedRequestTypes: (() { final guardedValue = map['allowedRequestTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      deniedRequestTypes: (() { final guardedValue = map['deniedRequestTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
