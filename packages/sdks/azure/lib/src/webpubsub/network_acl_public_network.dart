// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NetworkAclPublicNetwork {
  /// The allowed request types for the public network. Possible values are `ClientConnection`, `ServerConnection`, `RESTAPI` and `Trace`.
  final pulumi.Input<List<String>>? allowedRequestTypes;
  /// The denied request types for the public network. Possible values are `ClientConnection`, `ServerConnection`, `RESTAPI` and `Trace`.
  ///
  /// &gt; **Note:** When `defaultAction` is `Allow`, `allowedRequestTypes`cannot be set. When `defaultAction` is `Deny`, `deniedRequestTypes`cannot be set.
  final pulumi.Input<List<String>>? deniedRequestTypes;

  /// Creates a new [NetworkAclPublicNetwork].
  /// [allowedRequestTypes] The allowed request types for the public network. Possible values are `ClientConnection`, `ServerConnection`, `RESTAPI` and `Trace`.
  /// [deniedRequestTypes] The denied request types for the public network. Possible values are `ClientConnection`, `ServerConnection`, `RESTAPI` and `Trace`.
  const NetworkAclPublicNetwork({
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
      allowedRequestTypes: (() { final guardedValue = map['allowedRequestTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      deniedRequestTypes: (() { final guardedValue = map['deniedRequestTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
