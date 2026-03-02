// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_network_gateway_auto_scale_bounds_response.dart';

/// Virtual Network Gateway Autoscale Configuration details
class VirtualNetworkGatewayAutoScaleConfigurationResponse {
  /// The bounds of the autoscale configuration
  final pulumi.Input<VirtualNetworkGatewayAutoScaleBoundsResponse>? bounds;

  /// Creates a new [VirtualNetworkGatewayAutoScaleConfigurationResponse].
  /// [bounds] The bounds of the autoscale configuration
  VirtualNetworkGatewayAutoScaleConfigurationResponse({
    this.bounds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bounds': ?pulumi.Input.mapOptionalInputValue<VirtualNetworkGatewayAutoScaleBoundsResponse, Map<String, dynamic>>(bounds, (value) => value.toMap()),
    };
  }

  factory VirtualNetworkGatewayAutoScaleConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkGatewayAutoScaleConfigurationResponse(
      bounds: map['bounds'] == null ? null : (VirtualNetworkGatewayAutoScaleBoundsResponse.fromMap((map['bounds']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

