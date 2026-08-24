// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetApiShieldOperationsResultFeaturesApiRouting {
  final pulumi.Input<String> lastUpdated;
  /// Target route.
  final pulumi.Input<String> route;

  /// Creates a new [GetApiShieldOperationsResultFeaturesApiRouting].
  /// [lastUpdated] Required.
  /// [route] Target route.
  const GetApiShieldOperationsResultFeaturesApiRouting({
    required this.lastUpdated,
    required this.route,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lastUpdated': lastUpdated,
      'route': route,
    };
  }

  factory GetApiShieldOperationsResultFeaturesApiRouting.fromMap(Map<String, dynamic> map) {
    return GetApiShieldOperationsResultFeaturesApiRouting(
      lastUpdated: pulumi.Input.fromValue(map['lastUpdated'] as String),
      route: pulumi.Input.fromValue(map['route'] as String),
    );
  }
}
