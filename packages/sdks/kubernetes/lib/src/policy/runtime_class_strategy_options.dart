// ignore_for_file: unused_element, unnecessary_cast


/// RuntimeClassStrategyOptions define the strategy that will dictate the allowable RuntimeClasses for a pod.
class RuntimeClassStrategyOptions {
  /// allowedRuntimeClassNames is a whitelist of RuntimeClass names that may be specified on a pod. A value of "*" means that any RuntimeClass name is allowed, and must be the only item in the list. An empty list requires the RuntimeClassName field to be unset.
  final List<String> allowedRuntimeClassNames;
  /// defaultRuntimeClassName is the default RuntimeClassName to set on the pod. The default MUST be allowed by the allowedRuntimeClassNames list. A value of nil does not mutate the Pod.
  final String? defaultRuntimeClassName;

  /// Creates a new [RuntimeClassStrategyOptions].
  /// [allowedRuntimeClassNames] allowedRuntimeClassNames is a whitelist of RuntimeClass names that may be specified on a pod. A value of "*" means that any RuntimeClass name is allowed, and must be the only item in the list. An empty list requires the RuntimeClassName field to be unset.
  /// [defaultRuntimeClassName] defaultRuntimeClassName is the default RuntimeClassName to set on the pod. The default MUST be allowed by the allowedRuntimeClassNames list. A value of nil does not mutate the Pod.
  RuntimeClassStrategyOptions({
    required this.allowedRuntimeClassNames,
    this.defaultRuntimeClassName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedRuntimeClassNames': allowedRuntimeClassNames,
      'defaultRuntimeClassName': ?defaultRuntimeClassName,
    };
  }

  factory RuntimeClassStrategyOptions.fromMap(Map<String, dynamic> map) {
    return RuntimeClassStrategyOptions(
      allowedRuntimeClassNames: (map['allowedRuntimeClassNames'] as List).cast<String>(),
      defaultRuntimeClassName: map['defaultRuntimeClassName'] == null ? null : map['defaultRuntimeClassName'] as String,
    );
  }
}

