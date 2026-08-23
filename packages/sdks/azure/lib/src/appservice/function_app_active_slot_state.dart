// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering FunctionAppActiveSlot resources.
class FunctionAppActiveSlotState {
  /// The timestamp of the last successful swap with `Production`
  final pulumi.Input<String>? lastSuccessfulSwap;
  /// The swap action should overwrite the Production slot's network configuration with the configuration from this slot. Defaults to `true`. Changing this forces a new resource to be created.
  final pulumi.Input<bool>? overwriteNetworkConfig;
  /// The ID of the Slot to swap with `Production`.
  final pulumi.Input<String>? slotId;

  /// Creates a new [FunctionAppActiveSlotState].
  /// [lastSuccessfulSwap] The timestamp of the last successful swap with `Production`
  /// [overwriteNetworkConfig] The swap action should overwrite the Production slot's network configuration with the configuration from this slot. Defaults to `true`. Changing this forces a new resource to be created.
  /// [slotId] The ID of the Slot to swap with `Production`.
  const FunctionAppActiveSlotState({
    this.lastSuccessfulSwap,
    this.overwriteNetworkConfig,
    this.slotId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lastSuccessfulSwap': ?lastSuccessfulSwap,
      'overwriteNetworkConfig': ?overwriteNetworkConfig,
      'slotId': ?slotId,
    };
  }

  factory FunctionAppActiveSlotState.fromMap(Map<String, dynamic> map) {
    return FunctionAppActiveSlotState(
      lastSuccessfulSwap: (() { final guardedValue = map['lastSuccessfulSwap']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      overwriteNetworkConfig: (() { final guardedValue = map['overwriteNetworkConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      slotId: (() { final guardedValue = map['slotId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
