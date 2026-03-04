// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class IntegrationRuntimeSsisVnetIntegration {
  /// Static public IP addresses for the Azure-SSIS Integration Runtime. The size must be 2.
  final pulumi.Input<List<String>>? publicIps;

  /// id of the subnet to which the nodes of the Azure-SSIS Integration Runtime will be added.
  ///
  /// &gt; **Note:** Only one of `subnet_id` and `subnet_name` can be specified. If `subnet_name` is specified, `vnet_id` must be provided.
  final pulumi.Input<String>? subnetId;

  /// Name of the subnet to which the nodes of the Azure-SSIS Integration Runtime will be added.
  final pulumi.Input<String>? subnetName;

  /// ID of the virtual network to which the nodes of the Azure-SSIS Integration Runtime will be added.
  final pulumi.Input<String>? vnetId;

  /// Creates a new [IntegrationRuntimeSsisVnetIntegration].
  /// [publicIps] Static public IP addresses for the Azure-SSIS Integration Runtime. The size must be 2.
  /// [subnetId] id of the subnet to which the nodes of the Azure-SSIS Integration Runtime will be added.
  /// [subnetName] Name of the subnet to which the nodes of the Azure-SSIS Integration Runtime will be added.
  /// [vnetId] ID of the virtual network to which the nodes of the Azure-SSIS Integration Runtime will be added.
  IntegrationRuntimeSsisVnetIntegration({
    this.publicIps,
    this.subnetId,
    this.subnetName,
    this.vnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'publicIps': ?publicIps,
      'subnetId': ?subnetId,
      'subnetName': ?subnetName,
      'vnetId': ?vnetId,
    };
  }

  factory IntegrationRuntimeSsisVnetIntegration.fromMap(
    Map<String, dynamic> map,
  ) {
    return IntegrationRuntimeSsisVnetIntegration(
      publicIps: (() {
        final guardedValue = map['publicIps'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      subnetId: (() {
        final guardedValue = map['subnetId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      subnetName: (() {
        final guardedValue = map['subnetName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      vnetId: (() {
        final guardedValue = map['vnetId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
