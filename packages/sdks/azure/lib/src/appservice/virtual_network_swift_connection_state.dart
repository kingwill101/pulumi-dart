// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering VirtualNetworkSwiftConnection resources.
class VirtualNetworkSwiftConnectionState {
  /// The ID of the App Service or Function App to associate to the VNet. Changing this forces a new resource to be created.
  final pulumi.Input<String>? appServiceId;
  /// The ID of the subnet the app service will be associated to (the subnet must have a `service_delegation` configured for `Microsoft.Web/serverFarms`).
  final pulumi.Input<String>? subnetId;

  /// Creates a new [VirtualNetworkSwiftConnectionState].
  /// [appServiceId] The ID of the App Service or Function App to associate to the VNet. Changing this forces a new resource to be created.
  /// [subnetId] The ID of the subnet the app service will be associated to (the subnet must have a `service_delegation` configured for `Microsoft.Web/serverFarms`).
  VirtualNetworkSwiftConnectionState({
    pulumi.Output<String>? appServiceId,
    pulumi.Output<String>? subnetId,
  }) :
      appServiceId = pulumi.Input.asOptionalInput<String>(appServiceId),
      subnetId = pulumi.Input.asOptionalInput<String>(subnetId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appServiceId': ?appServiceId,
      'subnetId': ?subnetId,
    };
  }

  factory VirtualNetworkSwiftConnectionState.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkSwiftConnectionState(
      appServiceId: map['appServiceId'] == null ? null : pulumi.Output.create<String>(map['appServiceId'] as String),
      subnetId: map['subnetId'] == null ? null : pulumi.Output.create<String>(map['subnetId'] as String),
    );
  }
}

