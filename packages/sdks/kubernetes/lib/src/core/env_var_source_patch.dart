// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'config_map_key_selector_patch.dart';
import 'file_key_selector_patch.dart';
import 'object_field_selector_patch.dart';
import 'resource_field_selector_patch.dart';
import 'secret_key_selector_patch.dart';

/// EnvVarSource represents a source for the value of an EnvVar.
class EnvVarSourcePatch {
  /// Selects a key of a ConfigMap.
  final pulumi.Input<ConfigMapKeySelectorPatch>? configMapKeyRef;
  /// Selects a field of the pod: supports metadata.name, metadata.namespace, `metadata.labels['<KEY>']`, `metadata.annotations['<KEY>']`, spec.nodeName, spec.serviceAccountName, status.hostIP, status.podIP, status.podIPs.
  final pulumi.Input<ObjectFieldSelectorPatch>? fieldRef;
  /// FileKeyRef selects a key of the env file. Requires the EnvFiles feature gate to be enabled.
  final pulumi.Input<FileKeySelectorPatch>? fileKeyRef;
  /// Selects a resource of the container: only resources limits and requests (limits.cpu, limits.memory, limits.ephemeral-storage, requests.cpu, requests.memory and requests.ephemeral-storage) are currently supported.
  final pulumi.Input<ResourceFieldSelectorPatch>? resourceFieldRef;
  /// Selects a key of a secret in the pod's namespace
  final pulumi.Input<SecretKeySelectorPatch>? secretKeyRef;

  /// Creates a new [EnvVarSourcePatch].
  /// [configMapKeyRef] Selects a key of a ConfigMap.
  /// [fieldRef] Selects a field of the pod: supports metadata.name, metadata.namespace, `metadata.labels['<KEY>']`, `metadata.annotations['<KEY>']`, spec.nodeName, spec.serviceAccountName, status.hostIP, status.podIP, status.podIPs.
  /// [fileKeyRef] FileKeyRef selects a key of the env file. Requires the EnvFiles feature gate to be enabled.
  /// [resourceFieldRef] Selects a resource of the container: only resources limits and requests (limits.cpu, limits.memory, limits.ephemeral-storage, requests.cpu, requests.memory and requests.ephemeral-storage) are currently supported.
  /// [secretKeyRef] Selects a key of a secret in the pod's namespace
  EnvVarSourcePatch({
    this.configMapKeyRef,
    this.fieldRef,
    this.fileKeyRef,
    this.resourceFieldRef,
    this.secretKeyRef,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configMapKeyRef': ?pulumi.Input.mapOptionalInputValue<ConfigMapKeySelectorPatch, Map<String, dynamic>>(configMapKeyRef, (value) => value.toMap()),
      'fieldRef': ?pulumi.Input.mapOptionalInputValue<ObjectFieldSelectorPatch, Map<String, dynamic>>(fieldRef, (value) => value.toMap()),
      'fileKeyRef': ?pulumi.Input.mapOptionalInputValue<FileKeySelectorPatch, Map<String, dynamic>>(fileKeyRef, (value) => value.toMap()),
      'resourceFieldRef': ?pulumi.Input.mapOptionalInputValue<ResourceFieldSelectorPatch, Map<String, dynamic>>(resourceFieldRef, (value) => value.toMap()),
      'secretKeyRef': ?pulumi.Input.mapOptionalInputValue<SecretKeySelectorPatch, Map<String, dynamic>>(secretKeyRef, (value) => value.toMap()),
    };
  }

  factory EnvVarSourcePatch.fromMap(Map<String, dynamic> map) {
    return EnvVarSourcePatch(
      configMapKeyRef: map['configMapKeyRef'] == null ? null : (ConfigMapKeySelectorPatch.fromMap((map['configMapKeyRef'] as Map).cast<String, dynamic>())).input(),
      fieldRef: map['fieldRef'] == null ? null : (ObjectFieldSelectorPatch.fromMap((map['fieldRef'] as Map).cast<String, dynamic>())).input(),
      fileKeyRef: map['fileKeyRef'] == null ? null : (FileKeySelectorPatch.fromMap((map['fileKeyRef'] as Map).cast<String, dynamic>())).input(),
      resourceFieldRef: map['resourceFieldRef'] == null ? null : (ResourceFieldSelectorPatch.fromMap((map['resourceFieldRef'] as Map).cast<String, dynamic>())).input(),
      secretKeyRef: map['secretKeyRef'] == null ? null : (SecretKeySelectorPatch.fromMap((map['secretKeyRef'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

