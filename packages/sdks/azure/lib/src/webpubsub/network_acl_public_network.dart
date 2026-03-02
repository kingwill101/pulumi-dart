// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NetworkAclPublicNetwork {
  /// The allowed request types for the public network. Possible values are `ClientConnection`, `ServerConnection`, `RESTAPI` and `Trace`.
  final pulumi.Input<List<String>>? allowedRequestTypes;
  /// The denied request types for the public network. Possible values are `ClientConnection`, `ServerConnection`, `RESTAPI` and `Trace`.
  ///
  /// > **Note:** When `default_action` is `Allow`, `allowed_request_types`cannot be set. When `default_action` is `Deny`, `denied_request_types`cannot be set.
  final pulumi.Input<List<String>>? deniedRequestTypes;

  /// Creates a new [NetworkAclPublicNetwork].
  /// [allowedRequestTypes] The allowed request types for the public network. Possible values are `ClientConnection`, `ServerConnection`, `RESTAPI` and `Trace`.
  /// [deniedRequestTypes] The denied request types for the public network. Possible values are `ClientConnection`, `ServerConnection`, `RESTAPI` and `Trace`.
  NetworkAclPublicNetwork({
    this.allowedRequestTypes,
    this.deniedRequestTypes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedRequestTypes': ?allowedRequestTypes,
      'deniedRequestTypes': ?deniedRequestTypes,
    };
  }

  factory NetworkAclPublicNetwork.fromMap(Map<String, dynamic> map) {
    return NetworkAclPublicNetwork(
      allowedRequestTypes: map['allowedRequestTypes'] == null ? null : ((map['allowedRequestTypes'] as List).cast<String>()).input(),
      deniedRequestTypes: map['deniedRequestTypes'] == null ? null : ((map['deniedRequestTypes'] as List).cast<String>()).input(),
    );
  }
}

