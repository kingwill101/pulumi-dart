// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'environment_dapr_component_metadata.dart';
import 'environment_dapr_component_secret.dart';

/// Input properties used for looking up and filtering EnvironmentDaprComponent resources.
class EnvironmentDaprComponentState {
  /// The Dapr Component Type. For example `state.azure.blobstorage`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? componentType;
  /// The ID of the Container App Managed Environment for this Dapr Component. Changing this forces a new resource to be created.
  final pulumi.Input<String>? containerAppEnvironmentId;
  /// Should the Dapr sidecar to continue initialisation if the component fails to load. Defaults to `false`
  final pulumi.Input<bool>? ignoreErrors;
  /// The timeout for component initialisation as a `ISO8601` formatted string. e.g. `5s`, `2h`, `1m`. Defaults to `5s`.
  final pulumi.Input<String>? initTimeout;
  /// One or more `metadata` blocks as detailed below.
  final pulumi.Input<List<EnvironmentDaprComponentMetadata>>? metadatas;
  /// The name for this Dapr component. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// A list of scopes to which this component applies.
  ///
  /// &gt; **Note:** See the official docs for more information at https://learn.microsoft.com/en-us/azure/container-apps/dapr-overview?tabs=bicep1%2Cyaml#component-scopes
  final pulumi.Input<List<String>>? scopes;
  /// A `secret` block as detailed below.
  final pulumi.Input<List<EnvironmentDaprComponentSecret>>? secrets;
  /// The version of the component.
  final pulumi.Input<String>? version;

  /// Creates a new [EnvironmentDaprComponentState].
  /// [componentType] The Dapr Component Type. For example `state.azure.blobstorage`. Changing this forces a new resource to be created.
  /// [containerAppEnvironmentId] The ID of the Container App Managed Environment for this Dapr Component. Changing this forces a new resource to be created.
  /// [ignoreErrors] Should the Dapr sidecar to continue initialisation if the component fails to load. Defaults to `false`
  /// [initTimeout] The timeout for component initialisation as a `ISO8601` formatted string. e.g. `5s`, `2h`, `1m`. Defaults to `5s`.
  /// [metadatas] One or more `metadata` blocks as detailed below.
  /// [name] The name for this Dapr component. Changing this forces a new resource to be created.
  /// [scopes] A list of scopes to which this component applies.
  /// [secrets] A `secret` block as detailed below.
  /// [version] The version of the component.
  const EnvironmentDaprComponentState({
    this.componentType,
    this.containerAppEnvironmentId,
    this.ignoreErrors,
    this.initTimeout,
    this.metadatas,
    this.name,
    this.scopes,
    this.secrets,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'componentType': ?componentType,
      'containerAppEnvironmentId': ?containerAppEnvironmentId,
      'ignoreErrors': ?ignoreErrors,
      'initTimeout': ?initTimeout,
      'metadatas': ?pulumi.Input.mapOptionalInputValue<List<EnvironmentDaprComponentMetadata>, List<Map<String, dynamic>>>(metadatas, (value) => pulumi.Input.encodeList<EnvironmentDaprComponentMetadata, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'scopes': ?scopes,
      'secrets': ?pulumi.Input.mapOptionalInputValue<List<EnvironmentDaprComponentSecret>, List<Map<String, dynamic>>>(secrets, (value) => pulumi.Input.encodeList<EnvironmentDaprComponentSecret, Map<String, dynamic>>(value, (value) => value.toMap())),
      'version': ?version,
    };
  }

  factory EnvironmentDaprComponentState.fromMap(Map<String, dynamic> map) {
    return EnvironmentDaprComponentState(
      componentType: (() { final guardedValue = map['componentType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      containerAppEnvironmentId: (() { final guardedValue = map['containerAppEnvironmentId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ignoreErrors: (() { final guardedValue = map['ignoreErrors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      initTimeout: (() { final guardedValue = map['initTimeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metadatas: (() { final guardedValue = map['metadatas']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EnvironmentDaprComponentMetadata>(guardedValue, (value) => EnvironmentDaprComponentMetadata.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scopes: (() { final guardedValue = map['scopes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      secrets: (() { final guardedValue = map['secrets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EnvironmentDaprComponentSecret>(guardedValue, (value) => EnvironmentDaprComponentSecret.fromMap((value as Map).cast<String, dynamic>()))); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

