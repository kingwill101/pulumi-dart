// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'http_route_destination_networkservices_v1beta1.dart';

/// Specifies the policy on how requests are shadowed to a separate mirrored destination service. The proxy does not wait for responses from the shadow service. Prior to sending traffic to the shadow service, the host/authority header is suffixed with -shadow.
class HttpRouteRequestMirrorPolicyNetworkservicesV1beta1 {
  /// The destination the requests will be mirrored to. The weight of the destination will be ignored.
  final pulumi.Input<HttpRouteDestinationNetworkservicesV1beta1>? destination;

  /// Creates a new [HttpRouteRequestMirrorPolicyNetworkservicesV1beta1].
  /// [destination] The destination the requests will be mirrored to. The weight of the destination will be ignored.
  HttpRouteRequestMirrorPolicyNetworkservicesV1beta1({
    this.destination,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destination': ?pulumi.Input.mapOptionalInputValue<HttpRouteDestinationNetworkservicesV1beta1, Map<String, dynamic>>(destination, (value) => value.toMap()),
    };
  }

  factory HttpRouteRequestMirrorPolicyNetworkservicesV1beta1.fromMap(Map<String, dynamic> map) {
    return HttpRouteRequestMirrorPolicyNetworkservicesV1beta1(
      destination: map['destination'] == null ? null : (HttpRouteDestinationNetworkservicesV1beta1.fromMap((map['destination'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

