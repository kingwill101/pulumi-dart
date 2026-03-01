// ignore_for_file: unused_element, unnecessary_cast


class ServiceNetworkAclPrivateEndpoint {
  /// The allowed request types for the Private Endpoint Connection. Possible values are `ClientConnection`, `ServerConnection`, `RESTAPI` and `Trace`.
  ///
  /// > **Note:** When `default_action` is `Allow`, `allowed_request_types`cannot be set.
  final List<String>? allowedRequestTypes;
  /// The denied request types for the Private Endpoint Connection. Possible values are `ClientConnection`, `ServerConnection`, `RESTAPI` and `Trace`.
  ///
  /// > **Note:** When `default_action` is `Deny`, `denied_request_types`cannot be set.
  ///
  /// > **Note:** `allowed_request_types` - (Optional) and `denied_request_types` cannot be set together.
  final List<String>? deniedRequestTypes;
  /// The ID of the Private Endpoint which is based on the SignalR service.
  final String id;

  /// Creates a new [ServiceNetworkAclPrivateEndpoint].
  /// [allowedRequestTypes] The allowed request types for the Private Endpoint Connection. Possible values are `ClientConnection`, `ServerConnection`, `RESTAPI` and `Trace`.
  /// [deniedRequestTypes] The denied request types for the Private Endpoint Connection. Possible values are `ClientConnection`, `ServerConnection`, `RESTAPI` and `Trace`.
  /// [id] The ID of the Private Endpoint which is based on the SignalR service.
  ServiceNetworkAclPrivateEndpoint({
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

  factory ServiceNetworkAclPrivateEndpoint.fromMap(Map<String, dynamic> map) {
    return ServiceNetworkAclPrivateEndpoint(
      allowedRequestTypes: map['allowedRequestTypes'] == null ? null : (map['allowedRequestTypes'] as List).cast<String>(),
      deniedRequestTypes: map['deniedRequestTypes'] == null ? null : (map['deniedRequestTypes'] as List).cast<String>(),
      id: map['id'] as String,
    );
  }
}

