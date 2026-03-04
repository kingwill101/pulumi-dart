// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// VNet properties for managed integration runtime.
class IntegrationRuntimeVNetPropertiesResponse {
  /// Resource IDs of the public IP addresses that this integration runtime will use.
  final pulumi.Input<List<String>>? publicIPs;

  /// The name of the subnet this integration runtime will join.
  final pulumi.Input<String>? subnet;

  /// The ID of subnet, to which this Azure-SSIS integration runtime will be joined.
  final pulumi.Input<String>? subnetId;

  /// The ID of the VNet that this integration runtime will join.
  final pulumi.Input<String>? vNetId;

  /// Creates a new [IntegrationRuntimeVNetPropertiesResponse].
  /// [publicIPs] Resource IDs of the public IP addresses that this integration runtime will use.
  /// [subnet] The name of the subnet this integration runtime will join.
  /// [subnetId] The ID of subnet, to which this Azure-SSIS integration runtime will be joined.
  /// [vNetId] The ID of the VNet that this integration runtime will join.
  IntegrationRuntimeVNetPropertiesResponse({
    this.publicIPs,
    this.subnet,
    this.subnetId,
    this.vNetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'publicIPs': ?publicIPs,
      'subnet': ?subnet,
      'subnetId': ?subnetId,
      'vNetId': ?vNetId,
    };
  }

  factory IntegrationRuntimeVNetPropertiesResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return IntegrationRuntimeVNetPropertiesResponse(
      publicIPs: (() {
        final guardedValue = map['publicIPs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      subnet: (() {
        final guardedValue = map['subnet'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      subnetId: (() {
        final guardedValue = map['subnetId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      vNetId: (() {
        final guardedValue = map['vNetId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
