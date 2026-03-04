// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../core/selinux_options.dart';

/// SELinuxStrategyOptions defines the strategy type and any options used to create the strategy. Deprecated: use SELinuxStrategyOptions from policy API Group instead.
class SELinuxStrategyOptions {
  /// rule is the strategy that will dictate the allowable labels that may be set.
  final pulumi.Input<String> rule;

  /// seLinuxOptions required to run as; required for MustRunAs More info: https://kubernetes.io/docs/tasks/configure-pod-container/security-context/
  final pulumi.Input<SELinuxOptions>? seLinuxOptions;

  /// Creates a new [SELinuxStrategyOptions].
  /// [rule] rule is the strategy that will dictate the allowable labels that may be set.
  /// [seLinuxOptions] seLinuxOptions required to run as; required for MustRunAs More info: https://kubernetes.io/docs/tasks/configure-pod-container/security-context/
  SELinuxStrategyOptions({required this.rule, this.seLinuxOptions});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rule': rule,
      'seLinuxOptions':
          ?pulumi.Input.mapOptionalInputValue<
            SELinuxOptions,
            Map<String, dynamic>
          >(seLinuxOptions, (value) => value.toMap()),
    };
  }

  factory SELinuxStrategyOptions.fromMap(Map<String, dynamic> map) {
    return SELinuxStrategyOptions(
      rule: pulumi.Input.fromValue(map['rule'] as String),
      seLinuxOptions: (() {
        final guardedValue = map['seLinuxOptions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          SELinuxOptions.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
    );
  }
}
