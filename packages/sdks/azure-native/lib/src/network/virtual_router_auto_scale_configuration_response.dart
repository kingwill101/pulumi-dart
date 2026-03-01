// ignore_for_file: unused_element, unnecessary_cast


/// The VirtualHub Router autoscale configuration.
class VirtualRouterAutoScaleConfigurationResponse {
  /// The minimum number of scale units for VirtualHub Router.
  final int? minCapacity;

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
      minCapacity: map['minCapacity'] == null ? null : map['minCapacity'] as int,
    );
  }
}

