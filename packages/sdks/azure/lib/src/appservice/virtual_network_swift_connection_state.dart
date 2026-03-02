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
    this.appServiceId,
    this.subnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appServiceId': ?appServiceId,
      'subnetId': ?subnetId,
    };
  }

  factory VirtualNetworkSwiftConnectionState.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkSwiftConnectionState(
      appServiceId: map['appServiceId'] == null ? null : (map['appServiceId']! as String).input(),
      subnetId: map['subnetId'] == null ? null : (map['subnetId']! as String).input(),
    );
  }
}

