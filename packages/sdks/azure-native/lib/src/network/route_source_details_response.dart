// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RouteSourceDetailsResponse {
  /// Express Route Circuit identifier
  final pulumi.Input<String>? circuit;
  /// Flag to indicate if the route learned from the primary device is active or passive
  final pulumi.Input<String>? pri;
  /// Flag to indicate if the route learned from the secondary device is active or passive
  final pulumi.Input<String>? sec;

  /// Creates a new [RouteSourceDetailsResponse].
  /// [circuit] Express Route Circuit identifier
  /// [pri] Flag to indicate if the route learned from the primary device is active or passive
  /// [sec] Flag to indicate if the route learned from the secondary device is active or passive
  RouteSourceDetailsResponse({
    this.circuit,
    this.pri,
    this.sec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'circuit': ?circuit,
      'pri': ?pri,
      'sec': ?sec,
    };
  }

  factory RouteSourceDetailsResponse.fromMap(Map<String, dynamic> map) {
    return RouteSourceDetailsResponse(
      circuit: map['circuit'] == null ? null : (map['circuit'] as String).input(),
      pri: map['pri'] == null ? null : (map['pri'] as String).input(),
      sec: map['sec'] == null ? null : (map['sec'] as String).input(),
    );
  }
}

