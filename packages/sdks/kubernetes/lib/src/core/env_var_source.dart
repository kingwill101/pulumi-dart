// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'config_map_key_selector.dart';
import 'file_key_selector.dart';
import 'object_field_selector.dart';
import 'resource_field_selector.dart';
import 'secret_key_selector.dart';

/// EnvVarSource represents a source for the value of an EnvVar.
class EnvVarSource {
  /// Selects a key of a ConfigMap.
  final pulumi.Input<ConfigMapKeySelector>? configMapKeyRef;
  /// Selects a field of the pod: supports metadata.name, metadata.namespace, `metadata.labels['&lt;KEY&gt;']`, `metadata.annotations['&lt;KEY&gt;']`, spec.nodeName, spec.serviceAccountName, status.hostIP, status.podIP, status.podIPs.
  final pulumi.Input<ObjectFieldSelector>? fieldRef;
  /// FileKeyRef selects a key of the env file. Requires the EnvFiles feature gate to be enabled.
  final pulumi.Input<FileKeySelector>? fileKeyRef;
  /// Selects a resource of the container: only resources limits and requests (limits.cpu, limits.memory, limits.ephemeral-storage, requests.cpu, requests.memory and requests.ephemeral-storage) are currently supported.
  final pulumi.Input<ResourceFieldSelector>? resourceFieldRef;
  /// Selects a key of a secret in the pod's namespace
  final pulumi.Input<SecretKeySelector>? secretKeyRef;

  /// Creates a new [EnvVarSource].
  /// [configMapKeyRef] Selects a key of a ConfigMap.
  /// [fieldRef] Selects a field of the pod: supports metadata.name, metadata.namespace, `metadata.labels['&lt;KEY&gt;']`, `metadata.annotations['&lt;KEY&gt;']`, spec.nodeName, spec.serviceAccountName, status.hostIP, status.podIP, status.podIPs.
  /// [fileKeyRef] FileKeyRef selects a key of the env file. Requires the EnvFiles feature gate to be enabled.
  /// [resourceFieldRef] Selects a resource of the container: only resources limits and requests (limits.cpu, limits.memory, limits.ephemeral-storage, requests.cpu, requests.memory and requests.ephemeral-storage) are currently supported.
  /// [secretKeyRef] Selects a key of a secret in the pod's namespace
  const EnvVarSource({
    this.configMapKeyRef,
    this.fieldRef,
    this.fileKeyRef,
    this.resourceFieldRef,
    this.secretKeyRef,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configMapKeyRef': ?pulumi.Input.mapOptionalInputValue<ConfigMapKeySelector, Map<String, dynamic>>(configMapKeyRef, (value) => value.toMap()),
      'fieldRef': ?pulumi.Input.mapOptionalInputValue<ObjectFieldSelector, Map<String, dynamic>>(fieldRef, (value) => value.toMap()),
      'fileKeyRef': ?pulumi.Input.mapOptionalInputValue<FileKeySelector, Map<String, dynamic>>(fileKeyRef, (value) => value.toMap()),
      'resourceFieldRef': ?pulumi.Input.mapOptionalInputValue<ResourceFieldSelector, Map<String, dynamic>>(resourceFieldRef, (value) => value.toMap()),
      'secretKeyRef': ?pulumi.Input.mapOptionalInputValue<SecretKeySelector, Map<String, dynamic>>(secretKeyRef, (value) => value.toMap()),
    };
  }

  factory EnvVarSource.fromMap(Map<String, dynamic> map) {
    return EnvVarSource(
      configMapKeyRef: (() { final guardedValue = map['configMapKeyRef']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConfigMapKeySelector.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      fieldRef: (() { final guardedValue = map['fieldRef']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ObjectFieldSelector.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      fileKeyRef: (() { final guardedValue = map['fileKeyRef']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FileKeySelector.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceFieldRef: (() { final guardedValue = map['resourceFieldRef']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceFieldSelector.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      secretKeyRef: (() { final guardedValue = map['secretKeyRef']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SecretKeySelector.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
