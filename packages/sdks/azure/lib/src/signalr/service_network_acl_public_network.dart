// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceNetworkAclPublicNetwork {
  /// The allowed request types for the public network. Possible values are `ClientConnection`, `ServerConnection`, `RESTAPI` and `Trace`.
  ///
  /// &gt; **Note:** When `default_action` is `Allow`, `allowed_request_types`cannot be set.
  final pulumi.Input<List<String>>? allowedRequestTypes;

  /// The denied request types for the public network. Possible values are `ClientConnection`, `ServerConnection`, `RESTAPI` and `Trace`.
  ///
  /// &gt; **Note:** When `default_action` is `Deny`, `denied_request_types`cannot be set.
  ///
  /// &gt; **Note:** `allowed_request_types` - (Optional) and `denied_request_types` cannot be set together.
  final pulumi.Input<List<String>>? deniedRequestTypes;

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
    );
  }
}
