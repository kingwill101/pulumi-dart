// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceNetworkAclPrivateEndpoint {
  /// The allowed request types for the Private Endpoint Connection. Possible values are `ClientConnection`, `ServerConnection`, `RESTAPI` and `Trace`.
  ///
  /// &gt; **Note:** When `default_action` is `Allow`, `allowed_request_types`cannot be set.
  final pulumi.Input<List<String>>? allowedRequestTypes;

  /// The denied request types for the Private Endpoint Connection. Possible values are `ClientConnection`, `ServerConnection`, `RESTAPI` and `Trace`.
  ///
  /// &gt; **Note:** When `default_action` is `Deny`, `denied_request_types`cannot be set.
  ///
  /// &gt; **Note:** `allowed_request_types` - (Optional) and `denied_request_types` cannot be set together.
  final pulumi.Input<List<String>>? deniedRequestTypes;

  /// The ID of the Private Endpoint which is based on the SignalR service.
  final pulumi.Input<String> id;

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
      allowedRequestTypes: (() {
        final guardedValue = map['allowedRequestTypes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      deniedRequestTypes: (() {
        final guardedValue = map['deniedRequestTypes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
