// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class HubRoutingVpc {
  /// The URI of the VPC network.
  final pulumi.Input<String>? uri;

  /// Creates a new [HubRoutingVpc].
  /// [uri] The URI of the VPC network.
  HubRoutingVpc({this.uri});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'uri': ?uri};
  }

  factory HubRoutingVpc.fromMap(Map<String, dynamic> map) {
    return HubRoutingVpc(
      uri: (() {
        final guardedValue = map['uri'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
