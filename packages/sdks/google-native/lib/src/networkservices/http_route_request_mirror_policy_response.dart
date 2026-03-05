// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'http_route_destination_response.dart';

/// Specifies the policy on how requests are shadowed to a separate mirrored destination service. The proxy does not wait for responses from the shadow service. Prior to sending traffic to the shadow service, the host/authority header is suffixed with -shadow.
class HttpRouteRequestMirrorPolicyResponse {
  /// The destination the requests will be mirrored to. The weight of the destination will be ignored.
  final pulumi.Input<HttpRouteDestinationResponse> destination;

  /// Creates a new [HttpRouteRequestMirrorPolicyResponse].
  /// [destination] The destination the requests will be mirrored to. The weight of the destination will be ignored.
  HttpRouteRequestMirrorPolicyResponse({
    required this.destination,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destination': pulumi.Input.mapInputValue<HttpRouteDestinationResponse, Map<String, dynamic>>(destination, (value) => value.toMap()),
    };
  }

  factory HttpRouteRequestMirrorPolicyResponse.fromMap(Map<String, dynamic> map) {
    return HttpRouteRequestMirrorPolicyResponse(
      destination: pulumi.Input.fromValue(HttpRouteDestinationResponse.fromMap((map['destination']! as Map).cast<String, dynamic>())),
    );
  }
}

