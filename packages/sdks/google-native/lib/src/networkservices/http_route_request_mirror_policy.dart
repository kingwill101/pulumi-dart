// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'http_route_destination.dart';

/// Specifies the policy on how requests are shadowed to a separate mirrored destination service. The proxy does not wait for responses from the shadow service. Prior to sending traffic to the shadow service, the host/authority header is suffixed with -shadow.
class HttpRouteRequestMirrorPolicy {
  /// The destination the requests will be mirrored to. The weight of the destination will be ignored.
  final pulumi.Input<HttpRouteDestination>? destination;

  /// Creates a new [HttpRouteRequestMirrorPolicy].
  /// [destination] The destination the requests will be mirrored to. The weight of the destination will be ignored.
  const HttpRouteRequestMirrorPolicy({
    this.destination,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destination': ?pulumi.Input.mapOptionalInputValue<HttpRouteDestination, Map<String, dynamic>>(destination, (value) => value.toMap()),
    };
  }

  factory HttpRouteRequestMirrorPolicy.fromMap(Map<String, dynamic> map) {
    return HttpRouteRequestMirrorPolicy(
      destination: (() { final guardedValue = map['destination']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HttpRouteDestination.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

