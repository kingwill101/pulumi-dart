// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta.dart';
import 'validating_webhook.dart';

/// {@template pulumi_admissionregistration_k8s_io_v1_validating_webhook_configuration_args_doc}
/// The set of arguments for ValidatingWebhookConfiguration.
/// {@endtemplate}
/// {@macro pulumi_admissionregistration_k8s_io_v1_validating_webhook_configuration_args_doc}
class ValidatingWebhookConfigurationArgs {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final pulumi.Input<String>? apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final pulumi.Input<String>? kind;
  /// Standard object metadata; More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata.
  final pulumi.Input<ObjectMeta>? metadata;
  /// Webhooks is a list of webhooks and the affected resources and operations.
  final pulumi.Input<List<ValidatingWebhook>>? webhooks;

  /// Creates a new [ValidatingWebhookConfigurationArgs].
  /// [apiVersion] APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  /// [kind] Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [metadata] Standard object metadata; More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata.
  /// [webhooks] Webhooks is a list of webhooks and the affected resources and operations.
  ValidatingWebhookConfigurationArgs({
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
      'webhooks': ?pulumi.Input.mapOptionalInputValue<List<ValidatingWebhook>, List<Map<String, dynamic>>>(webhooks, (value) => pulumi.Input.encodeList<ValidatingWebhook, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ValidatingWebhookConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return ValidatingWebhookConfigurationArgs(
      apiVersion: map['apiVersion'] == null ? null : (map['apiVersion'] as String).input(),
      kind: map['kind'] == null ? null : (map['kind'] as String).input(),
      metadata: map['metadata'] == null ? null : (ObjectMeta.fromMap((map['metadata'] as Map).cast<String, dynamic>())).input(),
      webhooks: map['webhooks'] == null ? null : (pulumi.Input.decodeList<ValidatingWebhook>(map['webhooks'], (value) => ValidatingWebhook.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

