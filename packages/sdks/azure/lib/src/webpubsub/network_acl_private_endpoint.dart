// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NetworkAclPrivateEndpoint {
  /// The allowed request types for the Private Endpoint Connection. Possible values are `ClientConnection`, `ServerConnection`, `RESTAPI` and `Trace`.
  final pulumi.Input<List<String>>? allowedRequestTypes;
  /// The denied request types for the Private Endpoint Connection. Possible values are `ClientConnection`, `ServerConnection`, `RESTAPI` and `Trace`.
  ///
  /// > **Note:** When `default_action` is `Allow`, `allowed_request_types`cannot be set. When `default_action` is `Deny`, `denied_request_types`cannot be set.
  final pulumi.Input<List<String>>? deniedRequestTypes;
  /// The ID of the Private Endpoint which is based on the Web Pubsub service.
  final pulumi.Input<String> id;

  /// Creates a new [NetworkAclPrivateEndpoint].
  /// [allowedRequestTypes] The allowed request types for the Private Endpoint Connection. Possible values are `ClientConnection`, `ServerConnection`, `RESTAPI` and `Trace`.
  /// [deniedRequestTypes] The denied request types for the Private Endpoint Connection. Possible values are `ClientConnection`, `ServerConnection`, `RESTAPI` and `Trace`.
  /// [id] The ID of the Private Endpoint which is based on the Web Pubsub service.
  NetworkAclPrivateEndpoint({
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
      allowedRequestTypes: map['allowedRequestTypes'] == null ? null : ((map['allowedRequestTypes']! as List).cast<String>()).input(),
      deniedRequestTypes: map['deniedRequestTypes'] == null ? null : ((map['deniedRequestTypes']! as List).cast<String>()).input(),
      id: (map['id'] as String).input(),
    );
  }
}

