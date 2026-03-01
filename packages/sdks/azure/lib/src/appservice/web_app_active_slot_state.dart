// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering WebAppActiveSlot resources.
class WebAppActiveSlotState {
  /// The timestamp of the last successful swap with `Production`.
  final pulumi.Input<String>? lastSuccessfulSwap;
  /// The swap action should overwrite the Production slot's network configuration with the configuration from this slot. Defaults to `true`. Changing this forces a new resource to be created.
  final pulumi.Input<bool>? overwriteNetworkConfig;
  /// The ID of the Slot to swap with `Production`.
  final pulumi.Input<String>? slotId;

  /// Creates a new [WebAppActiveSlotState].
  /// [lastSuccessfulSwap] The timestamp of the last successful swap with `Production`.
  /// [overwriteNetworkConfig] The swap action should overwrite the Production slot's network configuration with the configuration from this slot. Defaults to `true`. Changing this forces a new resource to be created.
  /// [slotId] The ID of the Slot to swap with `Production`.
  WebAppActiveSlotState({
    pulumi.Output<String>? lastSuccessfulSwap,
    pulumi.Output<bool>? overwriteNetworkConfig,
    pulumi.Output<String>? slotId,
  }) :
      lastSuccessfulSwap = pulumi.Input.asOptionalInput<String>(lastSuccessfulSwap),
      overwriteNetworkConfig = pulumi.Input.asOptionalInput<bool>(overwriteNetworkConfig),
      slotId = pulumi.Input.asOptionalInput<String>(slotId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lastSuccessfulSwap': ?lastSuccessfulSwap,
      'overwriteNetworkConfig': ?overwriteNetworkConfig,
      'slotId': ?slotId,
    };
  }

  factory WebAppActiveSlotState.fromMap(Map<String, dynamic> map) {
    return WebAppActiveSlotState(
      lastSuccessfulSwap: map['lastSuccessfulSwap'] == null ? null : pulumi.Output.create<String>(map['lastSuccessfulSwap'] as String),
      overwriteNetworkConfig: map['overwriteNetworkConfig'] == null ? null : pulumi.Output.create<bool>(map['overwriteNetworkConfig'] as bool),
      slotId: map['slotId'] == null ? null : pulumi.Output.create<String>(map['slotId'] as String),
    );
  }
}

