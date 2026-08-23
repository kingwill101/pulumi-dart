// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering RuntimeEnvironmentPackage resources.
class RuntimeEnvironmentPackageState {
  /// The ID of the Automation Runtime Environment in which to create this package. Changing this forces a new resource to be created.
  final pulumi.Input<String>? automationRuntimeEnvironmentId;
  /// The HTTPS URI of the package content. Changing this forces a new resource to be created.
  final pulumi.Input<String>? contentUri;
  /// The version of the package content. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** The `contentVersion` must be a version string with 2 to 4 segments (e.g. `1.0`, `1.0.0`, or `1.0.0.0`).
  final pulumi.Input<String>? contentVersion;
  /// Whether this is a default package.
  final pulumi.Input<bool>? default_;
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
  /// The size of the package in bytes.
  final pulumi.Input<int>? sizeInBytes;
  /// The version of the package as reported by the platform.
  final pulumi.Input<String>? version;

  /// Creates a new [RuntimeEnvironmentPackageState].
  /// [automationRuntimeEnvironmentId] The ID of the Automation Runtime Environment in which to create this package. Changing this forces a new resource to be created.
  /// [contentUri] The HTTPS URI of the package content. Changing this forces a new resource to be created.
  /// [contentVersion] The version of the package content. Changing this forces a new resource to be created.
  /// [default_] Whether this is a default package.
  /// [hashAlgorithm] The hash algorithm used to hash the content. Changing this forces a new resource to be created.
  /// [hashValue] The hash value of the content. Changing this forces a new resource to be created.
  /// [name] The name of the package. Changing this forces a new resource to be created.
  /// [sizeInBytes] The size of the package in bytes.
  /// [version] The version of the package as reported by the platform.
  const RuntimeEnvironmentPackageState({
    this.automationRuntimeEnvironmentId,
    this.contentUri,
    this.contentVersion,
    this.default_,
    this.hashAlgorithm,
    this.hashValue,
    this.name,
    this.sizeInBytes,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automationRuntimeEnvironmentId': ?automationRuntimeEnvironmentId,
      'contentUri': ?contentUri,
      'contentVersion': ?contentVersion,
      'default': ?default_,
      'hashAlgorithm': ?hashAlgorithm,
      'hashValue': ?hashValue,
      'name': ?name,
      'sizeInBytes': ?sizeInBytes,
      'version': ?version,
    };
  }

  factory RuntimeEnvironmentPackageState.fromMap(Map<String, dynamic> map) {
    return RuntimeEnvironmentPackageState(
      automationRuntimeEnvironmentId: (() { final guardedValue = map['automationRuntimeEnvironmentId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      contentUri: (() { final guardedValue = map['contentUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      contentVersion: (() { final guardedValue = map['contentVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      default_: (() { final guardedValue = map['default']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      hashAlgorithm: (() { final guardedValue = map['hashAlgorithm']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hashValue: (() { final guardedValue = map['hashValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sizeInBytes: (() { final guardedValue = map['sizeInBytes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
