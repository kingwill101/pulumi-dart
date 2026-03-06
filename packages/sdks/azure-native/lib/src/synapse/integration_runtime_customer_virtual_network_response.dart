// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The definition and properties of virtual network to which Azure-SSIS integration runtime will join.
class IntegrationRuntimeCustomerVirtualNetworkResponse {
  /// The ID of subnet to which Azure-SSIS integration runtime will join.
  final pulumi.Input<String>? subnetId;

  /// Creates a new [IntegrationRuntimeCustomerVirtualNetworkResponse].
  /// [subnetId] The ID of subnet to which Azure-SSIS integration runtime will join.
  const IntegrationRuntimeCustomerVirtualNetworkResponse({
    this.subnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'subnetId': ?subnetId,
    };
  }

  factory IntegrationRuntimeCustomerVirtualNetworkResponse.fromMap(Map<String, dynamic> map) {
    return IntegrationRuntimeCustomerVirtualNetworkResponse(
      subnetId: (() { final guardedValue = map['subnetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

