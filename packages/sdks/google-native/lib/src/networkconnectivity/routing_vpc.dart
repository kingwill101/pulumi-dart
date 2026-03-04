// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// RoutingVPC contains information about the VPC networks associated with the spokes of a Network Connectivity Center hub.
class RoutingVPC {
  /// The URI of the VPC network.
  final pulumi.Input<String>? uri;

  /// Creates a new [RoutingVPC].
  /// [uri] The URI of the VPC network.
  RoutingVPC({this.uri});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'uri': ?uri};
  }

  factory RoutingVPC.fromMap(Map<String, dynamic> map) {
    return RoutingVPC(
      uri: (() {
        final guardedValue = map['uri'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
