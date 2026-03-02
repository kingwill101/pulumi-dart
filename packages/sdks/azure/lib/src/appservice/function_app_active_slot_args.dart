// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_appservice_function_app_active_slot_function_app_active_slot_args_doc}
/// The set of arguments for FunctionAppActiveSlot.
/// {@endtemplate}
/// {@macro pulumi_appservice_function_app_active_slot_function_app_active_slot_args_doc}
class FunctionAppActiveSlotArgs {
  /// The swap action should overwrite the Production slot's network configuration with the configuration from this slot. Defaults to `true`. Changing this forces a new resource to be created.
  final pulumi.Input<bool>? overwriteNetworkConfig;
  /// The ID of the Slot to swap with `Production`.
  final pulumi.Input<String> slotId;

  /// Creates a new [FunctionAppActiveSlotArgs].
  /// [overwriteNetworkConfig] The swap action should overwrite the Production slot's network configuration with the configuration from this slot. Defaults to `true`. Changing this forces a new resource to be created.
  /// [slotId] The ID of the Slot to swap with `Production`.
  FunctionAppActiveSlotArgs({
    this.overwriteNetworkConfig,
    required this.slotId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'overwriteNetworkConfig': ?overwriteNetworkConfig,
      'slotId': slotId,
    };
  }

  factory FunctionAppActiveSlotArgs.fromMap(Map<String, dynamic> map) {
    return FunctionAppActiveSlotArgs(
      overwriteNetworkConfig: map['overwriteNetworkConfig'] == null ? null : (map['overwriteNetworkConfig'] as bool).input(),
      slotId: (map['slotId'] as String).input(),
    );
  }
}

