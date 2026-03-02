// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ActiveSlot resources.
class ActiveSlotState {
  /// The name of the App Service within which the Slot exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? appServiceName;
  /// The name of the App Service Slot which should be promoted to the Production Slot within the App Service.
  final pulumi.Input<String>? appServiceSlotName;
  /// The name of the resource group in which the App Service exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;

  /// Creates a new [ActiveSlotState].
  /// [appServiceName] The name of the App Service within which the Slot exists. Changing this forces a new resource to be created.
  /// [appServiceSlotName] The name of the App Service Slot which should be promoted to the Production Slot within the App Service.
  /// [resourceGroupName] The name of the resource group in which the App Service exists. Changing this forces a new resource to be created.
  ActiveSlotState({
    this.appServiceName,
    this.appServiceSlotName,
    this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appServiceName': ?appServiceName,
      'appServiceSlotName': ?appServiceSlotName,
      'resourceGroupName': ?resourceGroupName,
    };
  }

  factory ActiveSlotState.fromMap(Map<String, dynamic> map) {
    return ActiveSlotState(
      appServiceName: map['appServiceName'] == null ? null : (map['appServiceName'] as String).input(),
      appServiceSlotName: map['appServiceSlotName'] == null ? null : (map['appServiceSlotName'] as String).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName'] as String).input(),
    );
  }
}

