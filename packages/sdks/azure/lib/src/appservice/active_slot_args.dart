// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_appservice_active_slot_active_slot_args_doc}
/// The set of arguments for ActiveSlot.
/// {@endtemplate}
/// {@macro pulumi_appservice_active_slot_active_slot_args_doc}
class ActiveSlotArgs {
  /// The name of the App Service within which the Slot exists. Changing this forces a new resource to be created.
  final pulumi.Input<String> appServiceName;
  /// The name of the App Service Slot which should be promoted to the Production Slot within the App Service.
  final pulumi.Input<String> appServiceSlotName;
  /// The name of the resource group in which the App Service exists. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ActiveSlotArgs].
  /// [appServiceName] The name of the App Service within which the Slot exists. Changing this forces a new resource to be created.
  /// [appServiceSlotName] The name of the App Service Slot which should be promoted to the Production Slot within the App Service.
  /// [resourceGroupName] The name of the resource group in which the App Service exists. Changing this forces a new resource to be created.
  ActiveSlotArgs({
    required pulumi.Output<String> appServiceName,
    required pulumi.Output<String> appServiceSlotName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      appServiceName = pulumi.Input.asInput<String>(appServiceName),
      appServiceSlotName = pulumi.Input.asInput<String>(appServiceSlotName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appServiceName': appServiceName,
      'appServiceSlotName': appServiceSlotName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory ActiveSlotArgs.fromMap(Map<String, dynamic> map) {
    return ActiveSlotArgs(
      appServiceName: pulumi.Output.create<String>(map['appServiceName'] as String),
      appServiceSlotName: pulumi.Output.create<String>(map['appServiceSlotName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

