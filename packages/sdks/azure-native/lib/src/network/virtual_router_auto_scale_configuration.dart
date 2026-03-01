// ignore_for_file: unused_element, unnecessary_cast


/// The VirtualHub Router autoscale configuration.
class VirtualRouterAutoScaleConfiguration {
  /// The minimum number of scale units for VirtualHub Router.
  final int? minCapacity;

  /// Creates a new [VirtualRouterAutoScaleConfiguration].
  /// [minCapacity] The minimum number of scale units for VirtualHub Router.
  VirtualRouterAutoScaleConfiguration({
    this.minCapacity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'minCapacity': ?minCapacity,
    };
  }

  factory VirtualRouterAutoScaleConfiguration.fromMap(Map<String, dynamic> map) {
    return VirtualRouterAutoScaleConfiguration(
      minCapacity: map['minCapacity'] == null ? null : map['minCapacity'] as int,
    );
  }
}

