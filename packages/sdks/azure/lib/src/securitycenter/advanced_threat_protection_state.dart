// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AdvancedThreatProtection resources.
class AdvancedThreatProtectionState {
  /// Should Advanced Threat Protection be enabled on this resource?
  final pulumi.Input<bool>? enabled;

  /// The ID of the Azure Resource which to enable Advanced Threat Protection on. Changing this forces a new resource to be created.
  final pulumi.Input<String>? targetResourceId;

  /// Creates a new [AdvancedThreatProtectionState].
  /// [enabled] Should Advanced Threat Protection be enabled on this resource?
  /// [targetResourceId] The ID of the Azure Resource which to enable Advanced Threat Protection on. Changing this forces a new resource to be created.
  AdvancedThreatProtectionState({this.enabled, this.targetResourceId});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'targetResourceId': ?targetResourceId,
    };
  }

  factory AdvancedThreatProtectionState.fromMap(Map<String, dynamic> map) {
    return AdvancedThreatProtectionState(
      enabled: (() {
        final guardedValue = map['enabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      targetResourceId: (() {
        final guardedValue = map['targetResourceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
