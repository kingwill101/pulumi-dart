// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The VirtualHub Router autoscale configuration.
class VirtualRouterAutoScaleConfigurationResponse {
  /// The minimum number of scale units for VirtualHub Router.
  final pulumi.Input<int>? minCapacity;

  /// Creates a new [VirtualRouterAutoScaleConfigurationResponse].
  /// [minCapacity] The minimum number of scale units for VirtualHub Router.
  VirtualRouterAutoScaleConfigurationResponse({
    this.minCapacity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'minCapacity': ?minCapacity,
    };
  }

  factory VirtualRouterAutoScaleConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return VirtualRouterAutoScaleConfigurationResponse(
      minCapacity: map['minCapacity'] == null ? null : (map['minCapacity']! as int).input(),
    );
  }
}

