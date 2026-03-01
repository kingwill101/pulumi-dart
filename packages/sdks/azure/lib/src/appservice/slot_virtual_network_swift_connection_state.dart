// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering SlotVirtualNetworkSwiftConnection resources.
class SlotVirtualNetworkSwiftConnectionState {
  /// The ID of the App Service or Function App to associate to the VNet. Changing this forces a new resource to be created.
  final pulumi.Input<String>? appServiceId;
  /// The name of the App Service Slot or Function App Slot. Changing this forces a new resource to be created.
  final pulumi.Input<String>? slotName;
  /// The ID of the subnet the app service will be associated to (the subnet must have a `service_delegation` configured for `Microsoft.Web/serverFarms`).
  final pulumi.Input<String>? subnetId;

  /// Creates a new [SlotVirtualNetworkSwiftConnectionState].
  /// [appServiceId] The ID of the App Service or Function App to associate to the VNet. Changing this forces a new resource to be created.
  /// [slotName] The name of the App Service Slot or Function App Slot. Changing this forces a new resource to be created.
  /// [subnetId] The ID of the subnet the app service will be associated to (the subnet must have a `service_delegation` configured for `Microsoft.Web/serverFarms`).
  SlotVirtualNetworkSwiftConnectionState({
    pulumi.Output<String>? appServiceId,
    pulumi.Output<String>? slotName,
    pulumi.Output<String>? subnetId,
  }) :
      appServiceId = pulumi.Input.asOptionalInput<String>(appServiceId),
      slotName = pulumi.Input.asOptionalInput<String>(slotName),
      subnetId = pulumi.Input.asOptionalInput<String>(subnetId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appServiceId': ?appServiceId,
      'slotName': ?slotName,
      'subnetId': ?subnetId,
    };
  }

  factory SlotVirtualNetworkSwiftConnectionState.fromMap(Map<String, dynamic> map) {
    return SlotVirtualNetworkSwiftConnectionState(
      appServiceId: map['appServiceId'] == null ? null : pulumi.Output.create<String>(map['appServiceId'] as String),
      slotName: map['slotName'] == null ? null : pulumi.Output.create<String>(map['slotName'] as String),
      subnetId: map['subnetId'] == null ? null : pulumi.Output.create<String>(map['subnetId'] as String),
    );
  }
}

