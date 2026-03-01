// ignore_for_file: unused_element, unnecessary_cast

import '../core/selinux_options_patch.dart';

/// SELinuxStrategyOptions defines the strategy type and any options used to create the strategy. Deprecated: use SELinuxStrategyOptions from policy API Group instead.
class SELinuxStrategyOptionsPatch {
  /// rule is the strategy that will dictate the allowable labels that may be set.
  final String? rule;
  /// seLinuxOptions required to run as; required for MustRunAs More info: https://kubernetes.io/docs/tasks/configure-pod-container/security-context/
  final SELinuxOptionsPatch? seLinuxOptions;

  /// Creates a new [SELinuxStrategyOptionsPatch].
  /// [rule] rule is the strategy that will dictate the allowable labels that may be set.
  /// [seLinuxOptions] seLinuxOptions required to run as; required for MustRunAs More info: https://kubernetes.io/docs/tasks/configure-pod-container/security-context/
  SELinuxStrategyOptionsPatch({
    this.rule,
    this.seLinuxOptions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rule': ?rule,
      'seLinuxOptions': ?seLinuxOptions == null ? null : seLinuxOptions!.toMap(),
    };
  }

  factory SELinuxStrategyOptionsPatch.fromMap(Map<String, dynamic> map) {
    return SELinuxStrategyOptionsPatch(
      rule: map['rule'] == null ? null : map['rule'] as String,
      seLinuxOptions: map['seLinuxOptions'] == null ? null : SELinuxOptionsPatch.fromMap((map['seLinuxOptions'] as Map).cast<String, dynamic>()),
    );
  }
}

