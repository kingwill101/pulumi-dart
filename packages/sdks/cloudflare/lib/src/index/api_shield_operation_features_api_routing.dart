// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApiShieldOperationFeaturesApiRouting {
  final pulumi.Input<String?>? lastUpdated;
  /// Target route.
  final pulumi.Input<String?>? route;

  /// Creates a new [ApiShieldOperationFeaturesApiRouting].
  /// [lastUpdated] Optional.
  /// [route] Target route.
  const ApiShieldOperationFeaturesApiRouting({
    this.lastUpdated,
    this.route,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lastUpdated': ?lastUpdated,
      'route': ?route,
    };
  }

  factory ApiShieldOperationFeaturesApiRouting.fromMap(Map<String, dynamic> map) {
    return ApiShieldOperationFeaturesApiRouting(
      lastUpdated: (() { final guardedValue = map['lastUpdated']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      route: (() { final guardedValue = map['route']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
