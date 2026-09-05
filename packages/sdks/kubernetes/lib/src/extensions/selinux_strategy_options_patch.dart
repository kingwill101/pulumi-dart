// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../core/selinux_options_patch.dart';

/// SELinuxStrategyOptions defines the strategy type and any options used to create the strategy. Deprecated: use SELinuxStrategyOptions from policy API Group instead.
class SELinuxStrategyOptionsPatch {
  /// rule is the strategy that will dictate the allowable labels that may be set.
  final pulumi.Input<String?>? rule;
  /// seLinuxOptions required to run as; required for MustRunAs More info: https://kubernetes.io/docs/tasks/configure-pod-container/security-context/
  final pulumi.Input<SELinuxOptionsPatch?>? seLinuxOptions;

  /// Creates a new [SELinuxStrategyOptionsPatch].
  /// [rule] rule is the strategy that will dictate the allowable labels that may be set.
  /// [seLinuxOptions] seLinuxOptions required to run as; required for MustRunAs More info: https://kubernetes.io/docs/tasks/configure-pod-container/security-context/
  const SELinuxStrategyOptionsPatch({
    this.rule,
    this.seLinuxOptions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rule': ?rule,
      'seLinuxOptions': ?pulumi.Input.mapOptionalInputValue<SELinuxOptionsPatch, Map<String, dynamic>>(seLinuxOptions, (value) => value.toMap()),
    };
  }

  factory SELinuxStrategyOptionsPatch.fromMap(Map<String, dynamic> map) {
    return SELinuxStrategyOptionsPatch(
      rule: (() { final guardedValue = map['rule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      seLinuxOptions: (() { final guardedValue = map['seLinuxOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SELinuxOptionsPatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
