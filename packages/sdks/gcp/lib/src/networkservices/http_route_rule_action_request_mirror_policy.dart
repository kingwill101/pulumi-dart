// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'http_route_rule_action_request_mirror_policy_destination.dart';

class HttpRouteRuleActionRequestMirrorPolicy {
  /// The destination the requests will be mirrored to.
  /// Structure is documented below.
  final pulumi.Input<HttpRouteRuleActionRequestMirrorPolicyDestination?>? destination;
  /// The percentage of requests to get mirrored to the desired destination.
  final pulumi.Input<double?>? mirrorPercent;

  /// Creates a new [HttpRouteRuleActionRequestMirrorPolicy].
  /// [destination] The destination the requests will be mirrored to.
  /// [mirrorPercent] The percentage of requests to get mirrored to the desired destination.
  const HttpRouteRuleActionRequestMirrorPolicy({
    this.destination,
    this.mirrorPercent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destination': ?pulumi.Input.mapOptionalInputValue<HttpRouteRuleActionRequestMirrorPolicyDestination, Map<String, dynamic>>(destination, (value) => value.toMap()),
      'mirrorPercent': ?mirrorPercent,
    };
  }

  factory HttpRouteRuleActionRequestMirrorPolicy.fromMap(Map<String, dynamic> map) {
    return HttpRouteRuleActionRequestMirrorPolicy(
      destination: (() { final guardedValue = map['destination']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HttpRouteRuleActionRequestMirrorPolicyDestination.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      mirrorPercent: (() { final guardedValue = map['mirrorPercent']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
    );
  }
}
