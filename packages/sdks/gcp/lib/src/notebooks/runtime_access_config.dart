// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RuntimeAccessConfig {
  /// The type of access mode this instance. For valid values, see
  /// `https://cloud.google.com/vertex-ai/docs/workbench/reference/
  /// rest/v1/projects.locations.runtimes#RuntimeAccessType`.
  final pulumi.Input<String>? accessType;
  /// (Output)
  /// The proxy endpoint that is used to access the runtime.
  final pulumi.Input<String>? proxyUri;
  /// The owner of this runtime after creation. Format: `alias@example.com`.
  /// Currently supports one owner only.
  final pulumi.Input<String>? runtimeOwner;

  /// Creates a new [RuntimeAccessConfig].
  /// [accessType] The type of access mode this instance. For valid values, see
  /// [proxyUri] (Output)
  /// [runtimeOwner] The owner of this runtime after creation. Format: `alias@example.com`.
  const RuntimeAccessConfig({
    this.accessType,
    this.proxyUri,
    this.runtimeOwner,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessType': ?accessType,
      'proxyUri': ?proxyUri,
      'runtimeOwner': ?runtimeOwner,
    };
  }

  factory RuntimeAccessConfig.fromMap(Map<String, dynamic> map) {
    return RuntimeAccessConfig(
      accessType: (() { final guardedValue = map['accessType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      proxyUri: (() { final guardedValue = map['proxyUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      runtimeOwner: (() { final guardedValue = map['runtimeOwner']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

