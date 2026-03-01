// ignore_for_file: unused_element, unnecessary_cast


class ServiceNetworkAclPublicNetwork {
  /// The allowed request types for the public network. Possible values are `ClientConnection`, `ServerConnection`, `RESTAPI` and `Trace`.
  ///
  /// > **Note:** When `default_action` is `Allow`, `allowed_request_types`cannot be set.
  final List<String>? allowedRequestTypes;
  /// The denied request types for the public network. Possible values are `ClientConnection`, `ServerConnection`, `RESTAPI` and `Trace`.
  ///
  /// > **Note:** When `default_action` is `Deny`, `denied_request_types`cannot be set.
  ///
  /// > **Note:** `allowed_request_types` - (Optional) and `denied_request_types` cannot be set together.
  final List<String>? deniedRequestTypes;

  /// Creates a new [ServiceNetworkAclPublicNetwork].
  /// [allowedRequestTypes] The allowed request types for the public network. Possible values are `ClientConnection`, `ServerConnection`, `RESTAPI` and `Trace`.
  /// [deniedRequestTypes] The denied request types for the public network. Possible values are `ClientConnection`, `ServerConnection`, `RESTAPI` and `Trace`.
  ServiceNetworkAclPublicNetwork({
    this.allowedRequestTypes,
    this.deniedRequestTypes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedRequestTypes': ?allowedRequestTypes,
      'deniedRequestTypes': ?deniedRequestTypes,
    };
  }

  factory ServiceNetworkAclPublicNetwork.fromMap(Map<String, dynamic> map) {
    return ServiceNetworkAclPublicNetwork(
      allowedRequestTypes: map['allowedRequestTypes'] == null ? null : (map['allowedRequestTypes'] as List).cast<String>(),
      deniedRequestTypes: map['deniedRequestTypes'] == null ? null : (map['deniedRequestTypes'] as List).cast<String>(),
    );
  }
}

