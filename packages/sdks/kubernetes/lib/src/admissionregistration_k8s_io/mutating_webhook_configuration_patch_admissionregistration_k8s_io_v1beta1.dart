// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta_patch.dart';
import 'mutating_webhook_patch_admissionregistration_k8s_io_v1beta1.dart';

/// MutatingWebhookConfiguration describes the configuration of and admission webhook that accept or reject and may change the object. Deprecated in v1.16, planned for removal in v1.19. Use admissionregistration.k8s.io/v1 MutatingWebhookConfiguration instead.
class MutatingWebhookConfigurationPatchAdmissionregistrationK8sIoV1beta1 {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final String? apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final String? kind;
  /// Standard object metadata; More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata.
  final ObjectMetaPatch? metadata;
  /// Webhooks is a list of webhooks and the affected resources and operations.
  final List<MutatingWebhookPatchAdmissionregistrationK8sIoV1beta1>? webhooks;

  /// Creates a new [MutatingWebhookConfigurationPatchAdmissionregistrationK8sIoV1beta1].
  /// [apiVersion] APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  /// [kind] Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [metadata] Standard object metadata; More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata.
  /// [webhooks] Webhooks is a list of webhooks and the affected resources and operations.
  MutatingWebhookConfigurationPatchAdmissionregistrationK8sIoV1beta1({
    this.apiVersion,
    this.kind,
    this.metadata,
    this.webhooks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': ?apiVersion,
      'kind': ?kind,
      'metadata': ?metadata == null ? null : metadata!.toMap(),
      'webhooks': ?webhooks == null ? null : pulumi.Input.encodeList<MutatingWebhookPatchAdmissionregistrationK8sIoV1beta1, Map<String, dynamic>>(webhooks!, (value) => value.toMap()),
    };
  }

  factory MutatingWebhookConfigurationPatchAdmissionregistrationK8sIoV1beta1.fromMap(Map<String, dynamic> map) {
    return MutatingWebhookConfigurationPatchAdmissionregistrationK8sIoV1beta1(
      apiVersion: map['apiVersion'] == null ? null : map['apiVersion'] as String,
      kind: map['kind'] == null ? null : map['kind'] as String,
      metadata: map['metadata'] == null ? null : ObjectMetaPatch.fromMap((map['metadata'] as Map).cast<String, dynamic>()),
      webhooks: map['webhooks'] == null ? null : pulumi.Input.decodeList<MutatingWebhookPatchAdmissionregistrationK8sIoV1beta1>(map['webhooks'], (value) => MutatingWebhookPatchAdmissionregistrationK8sIoV1beta1.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

