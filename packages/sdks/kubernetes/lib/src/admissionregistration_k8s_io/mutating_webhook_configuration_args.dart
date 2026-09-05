// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta.dart';
import 'mutating_webhook.dart';

/// {@template pulumi_admissionregistration_k8s_io_v1_mutating_webhook_configuration_args_doc}
/// The set of arguments for MutatingWebhookConfiguration.
/// {@endtemplate}
/// {@macro pulumi_admissionregistration_k8s_io_v1_mutating_webhook_configuration_args_doc}
class MutatingWebhookConfigurationArgs {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final pulumi.Input<String?>? apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final pulumi.Input<String?>? kind;
  /// metadata is the standard object metadata; More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata.
  final pulumi.Input<ObjectMeta?>? metadata;
  /// webhooks is a list of webhooks and the affected resources and operations.
  final pulumi.Input<List<MutatingWebhook>?>? webhooks;

  /// Creates a new [MutatingWebhookConfigurationArgs].
  /// [apiVersion] APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  /// [kind] Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [metadata] metadata is the standard object metadata; More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata.
  /// [webhooks] webhooks is a list of webhooks and the affected resources and operations.
  const MutatingWebhookConfigurationArgs({
    this.apiVersion,
    this.kind,
    this.metadata,
    this.webhooks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': ?apiVersion,
      'kind': ?kind,
      'metadata': ?pulumi.Input.mapOptionalInputValue<ObjectMeta, Map<String, dynamic>>(metadata, (value) => value.toMap()),
      'webhooks': ?pulumi.Input.mapOptionalInputValue<List<MutatingWebhook>, List<Map<String, dynamic>>>(webhooks, (value) => pulumi.Input.encodeList<MutatingWebhook, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory MutatingWebhookConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return MutatingWebhookConfigurationArgs(
      apiVersion: (() { final guardedValue = map['apiVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ObjectMeta.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      webhooks: (() { final guardedValue = map['webhooks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<MutatingWebhook>(guardedValue, (value) => MutatingWebhook.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
