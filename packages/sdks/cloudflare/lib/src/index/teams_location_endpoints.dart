// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'teams_location_endpoints_doh.dart';
import 'teams_location_endpoints_dot.dart';
import 'teams_location_endpoints_ipv4.dart';
import 'teams_location_endpoints_ipv6.dart';

class TeamsLocationEndpoints {
  final pulumi.Input<TeamsLocationEndpointsDoh> doh;
  final pulumi.Input<TeamsLocationEndpointsDot> dot;
  final pulumi.Input<TeamsLocationEndpointsIpv4> ipv4;
  final pulumi.Input<TeamsLocationEndpointsIpv6> ipv6;

  /// Creates a new [TeamsLocationEndpoints].
  /// [doh] Required.
  /// [dot] Required.
  /// [ipv4] Required.
  /// [ipv6] Required.
  const TeamsLocationEndpoints({
    required this.doh,
    required this.dot,
    required this.ipv4,
    required this.ipv6,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'doh': pulumi.Input.mapInputValue<TeamsLocationEndpointsDoh, Map<String, dynamic>>(doh, (value) => value.toMap()),
      'dot': pulumi.Input.mapInputValue<TeamsLocationEndpointsDot, Map<String, dynamic>>(dot, (value) => value.toMap()),
      'ipv4': pulumi.Input.mapInputValue<TeamsLocationEndpointsIpv4, Map<String, dynamic>>(ipv4, (value) => value.toMap()),
      'ipv6': pulumi.Input.mapInputValue<TeamsLocationEndpointsIpv6, Map<String, dynamic>>(ipv6, (value) => value.toMap()),
    };
  }

  factory TeamsLocationEndpoints.fromMap(Map<String, dynamic> map) {
    return TeamsLocationEndpoints(
      doh: pulumi.Input.fromValue(TeamsLocationEndpointsDoh.fromMap((map['doh']! as Map).cast<String, dynamic>())),
      dot: pulumi.Input.fromValue(TeamsLocationEndpointsDot.fromMap((map['dot']! as Map).cast<String, dynamic>())),
      ipv4: pulumi.Input.fromValue(TeamsLocationEndpointsIpv4.fromMap((map['ipv4']! as Map).cast<String, dynamic>())),
      ipv6: pulumi.Input.fromValue(TeamsLocationEndpointsIpv6.fromMap((map['ipv6']! as Map).cast<String, dynamic>())),
    );
  }
}
