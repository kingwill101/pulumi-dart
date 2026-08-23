// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_automation_runtime_environment_package_runtime_environment_package_args_doc}
/// The set of arguments for RuntimeEnvironmentPackage.
/// {@endtemplate}
/// {@macro pulumi_automation_runtime_environment_package_runtime_environment_package_args_doc}
class RuntimeEnvironmentPackageArgs {
  /// The ID of the Automation Runtime Environment in which to create this package. Changing this forces a new resource to be created.
  final pulumi.Input<String> automationRuntimeEnvironmentId;
  /// The HTTPS URI of the package content. Changing this forces a new resource to be created.
  final pulumi.Input<String> contentUri;
  /// The version of the package content. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** The `contentVersion` must be a version string with 2 to 4 segments (e.g. `1.0`, `1.0.0`, or `1.0.0.0`).
  final pulumi.Input<String>? contentVersion;
  /// The hash algorithm used to hash the content. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** The argument `hashAlgorithm` is required when `hashValue` is specified.
  final pulumi.Input<String>? hashAlgorithm;
  /// The hash value of the content. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** The argument `hashValue` is required when `hashAlgorithm` is specified.
  final pulumi.Input<String>? hashValue;
  /// The name of the package. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;

  /// Creates a new [RuntimeEnvironmentPackageArgs].
  /// [automationRuntimeEnvironmentId] The ID of the Automation Runtime Environment in which to create this package. Changing this forces a new resource to be created.
  /// [contentUri] The HTTPS URI of the package content. Changing this forces a new resource to be created.
  /// [contentVersion] The version of the package content. Changing this forces a new resource to be created.
  /// [hashAlgorithm] The hash algorithm used to hash the content. Changing this forces a new resource to be created.
  /// [hashValue] The hash value of the content. Changing this forces a new resource to be created.
  /// [name] The name of the package. Changing this forces a new resource to be created.
  const RuntimeEnvironmentPackageArgs({
    required this.automationRuntimeEnvironmentId,
    required this.contentUri,
    this.contentVersion,
    this.hashAlgorithm,
    this.hashValue,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automationRuntimeEnvironmentId': automationRuntimeEnvironmentId,
      'contentUri': contentUri,
      'contentVersion': ?contentVersion,
      'hashAlgorithm': ?hashAlgorithm,
      'hashValue': ?hashValue,
      'name': ?name,
    };
  }

  factory RuntimeEnvironmentPackageArgs.fromMap(Map<String, dynamic> map) {
    return RuntimeEnvironmentPackageArgs(
      automationRuntimeEnvironmentId: pulumi.Input.fromValue(map['automationRuntimeEnvironmentId'] as String),
      contentUri: pulumi.Input.fromValue(map['contentUri'] as String),
      contentVersion: (() { final guardedValue = map['contentVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hashAlgorithm: (() { final guardedValue = map['hashAlgorithm']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hashValue: (() { final guardedValue = map['hashValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
