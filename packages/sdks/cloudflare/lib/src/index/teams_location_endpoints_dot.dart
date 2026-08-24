// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'teams_location_endpoints_dot_network.dart';

class TeamsLocationEndpointsDot {
  /// Indicate whether the DOT endpoint is enabled for this location.
  final pulumi.Input<bool?>? enabled;
  /// Specify the list of allowed source IP network ranges for this endpoint. When the list is empty, the endpoint allows all source IPs. The list takes effect only if the endpoint is enabled for this location.
  final pulumi.Input<List<TeamsLocationEndpointsDotNetwork>?>? networks;

  /// Creates a new [TeamsLocationEndpointsDot].
  /// [enabled] Indicate whether the DOT endpoint is enabled for this location.
  /// [networks] Specify the list of allowed source IP network ranges for this endpoint. When the list is empty, the endpoint allows all source IPs. The list takes effect only if the endpoint is enabled for this location.
  const TeamsLocationEndpointsDot({
    this.enabled,
    this.networks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'networks': ?pulumi.Input.mapOptionalInputValue<List<TeamsLocationEndpointsDotNetwork>, List<Map<String, dynamic>>>(networks, (value) => pulumi.Input.encodeList<TeamsLocationEndpointsDotNetwork, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory TeamsLocationEndpointsDot.fromMap(Map<String, dynamic> map) {
    return TeamsLocationEndpointsDot(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      networks: (() { final guardedValue = map['networks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TeamsLocationEndpointsDotNetwork>(guardedValue, (value) => TeamsLocationEndpointsDotNetwork.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
