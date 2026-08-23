// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// RuntimeClassStrategyOptions define the strategy that will dictate the allowable RuntimeClasses for a pod.
class RuntimeClassStrategyOptionsPatch {
  /// allowedRuntimeClassNames is a whitelist of RuntimeClass names that may be specified on a pod. A value of "*" means that any RuntimeClass name is allowed, and must be the only item in the list. An empty list requires the RuntimeClassName field to be unset.
  final pulumi.Input<List<String>>? allowedRuntimeClassNames;
  /// defaultRuntimeClassName is the default RuntimeClassName to set on the pod. The default MUST be allowed by the allowedRuntimeClassNames list. A value of nil does not mutate the Pod.
  final pulumi.Input<String>? defaultRuntimeClassName;

  /// Creates a new [RuntimeClassStrategyOptionsPatch].
  /// [allowedRuntimeClassNames] allowedRuntimeClassNames is a whitelist of RuntimeClass names that may be specified on a pod. A value of "*" means that any RuntimeClass name is allowed, and must be the only item in the list. An empty list requires the RuntimeClassName field to be unset.
  /// [defaultRuntimeClassName] defaultRuntimeClassName is the default RuntimeClassName to set on the pod. The default MUST be allowed by the allowedRuntimeClassNames list. A value of nil does not mutate the Pod.
  const RuntimeClassStrategyOptionsPatch({
    this.allowedRuntimeClassNames,
    this.defaultRuntimeClassName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedRuntimeClassNames': ?allowedRuntimeClassNames,
      'defaultRuntimeClassName': ?defaultRuntimeClassName,
    };
  }

  factory RuntimeClassStrategyOptionsPatch.fromMap(Map<String, dynamic> map) {
    return RuntimeClassStrategyOptionsPatch(
      allowedRuntimeClassNames: (() { final guardedValue = map['allowedRuntimeClassNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      defaultRuntimeClassName: (() { final guardedValue = map['defaultRuntimeClassName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
