// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_network_gateway_auto_scale_bounds.dart';

/// Virtual Network Gateway Autoscale Configuration details
class VirtualNetworkGatewayAutoScaleConfiguration {
  /// The bounds of the autoscale configuration
  final pulumi.Input<VirtualNetworkGatewayAutoScaleBounds?>? bounds;

  /// Creates a new [VirtualNetworkGatewayAutoScaleConfiguration].
  /// [bounds] The bounds of the autoscale configuration
  const VirtualNetworkGatewayAutoScaleConfiguration({
    this.bounds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bounds': ?pulumi.Input.mapOptionalInputValue<VirtualNetworkGatewayAutoScaleBounds, Map<String, dynamic>>(bounds, (value) => value.toMap()),
    };
  }

  factory VirtualNetworkGatewayAutoScaleConfiguration.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkGatewayAutoScaleConfiguration(
      bounds: (() { final guardedValue = map['bounds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VirtualNetworkGatewayAutoScaleBounds.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
