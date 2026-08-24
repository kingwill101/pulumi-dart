// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetApiShieldOperationFeaturesApiRouting {
  final pulumi.Input<String> lastUpdated;
  /// Target route.
  final pulumi.Input<String> route;

  /// Creates a new [GetApiShieldOperationFeaturesApiRouting].
  /// [lastUpdated] Required.
  /// [route] Target route.
  const GetApiShieldOperationFeaturesApiRouting({
    required this.lastUpdated,
    required this.route,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lastUpdated': lastUpdated,
      'route': route,
    };
  }

  factory GetApiShieldOperationFeaturesApiRouting.fromMap(Map<String, dynamic> map) {
    return GetApiShieldOperationFeaturesApiRouting(
      lastUpdated: pulumi.Input.fromValue(map['lastUpdated'] as String),
      route: pulumi.Input.fromValue(map['route'] as String),
    );
  }
}
