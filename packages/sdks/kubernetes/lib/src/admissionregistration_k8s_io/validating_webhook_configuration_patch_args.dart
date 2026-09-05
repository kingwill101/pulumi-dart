// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta_patch.dart';
import 'validating_webhook_patch.dart';

/// {@template pulumi_admissionregistration_k8s_io_v1_validating_webhook_configuration_patch_args_doc}
/// The set of arguments for ValidatingWebhookConfigurationPatch.
/// {@endtemplate}
/// {@macro pulumi_admissionregistration_k8s_io_v1_validating_webhook_configuration_patch_args_doc}
class ValidatingWebhookConfigurationPatchArgs {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final pulumi.Input<String?>? apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final pulumi.Input<String?>? kind;
  /// metadata is the standard object metadata; More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata.
  final pulumi.Input<ObjectMetaPatch?>? metadata;
  /// webhooks is a list of webhooks and the affected resources and operations.
  final pulumi.Input<List<ValidatingWebhookPatch>?>? webhooks;

  /// Creates a new [ValidatingWebhookConfigurationPatchArgs].
  /// [apiVersion] APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  /// [kind] Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [metadata] metadata is the standard object metadata; More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata.
  /// [webhooks] webhooks is a list of webhooks and the affected resources and operations.
  const ValidatingWebhookConfigurationPatchArgs({
    this.apiVersion,
    this.kind,
    this.metadata,
    this.webhooks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': ?apiVersion,
      'kind': ?kind,
      'metadata': ?pulumi.Input.mapOptionalInputValue<ObjectMetaPatch, Map<String, dynamic>>(metadata, (value) => value.toMap()),
      'webhooks': ?pulumi.Input.mapOptionalInputValue<List<ValidatingWebhookPatch>, List<Map<String, dynamic>>>(webhooks, (value) => pulumi.Input.encodeList<ValidatingWebhookPatch, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ValidatingWebhookConfigurationPatchArgs.fromMap(Map<String, dynamic> map) {
    return ValidatingWebhookConfigurationPatchArgs(
      apiVersion: (() { final guardedValue = map['apiVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ObjectMetaPatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      webhooks: (() { final guardedValue = map['webhooks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ValidatingWebhookPatch>(guardedValue, (value) => ValidatingWebhookPatch.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
