// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/list_meta.dart';
import 'mutating_webhook_configuration_resource.dart';

/// {@template pulumi_admissionregistration_k8s_io_v1beta1_mutating_webhook_configuration_list_admissionregistration_k8s_io_v1beta1_args_doc}
/// The set of arguments for MutatingWebhookConfigurationList.
/// {@endtemplate}
/// {@macro pulumi_admissionregistration_k8s_io_v1beta1_mutating_webhook_configuration_list_admissionregistration_k8s_io_v1beta1_args_doc}
class MutatingWebhookConfigurationListAdmissionregistrationK8sIoV1beta1Args {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final pulumi.Input<String>? apiVersion;
  /// List of MutatingWebhookConfiguration.
  final pulumi.Input<List<MutatingWebhookConfigurationResource>> items;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final pulumi.Input<String>? kind;
  /// Standard list metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final pulumi.Input<ListMeta>? metadata;

  /// Creates a new [MutatingWebhookConfigurationListAdmissionregistrationK8sIoV1beta1Args].
  /// [apiVersion] APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  /// [items] List of MutatingWebhookConfiguration.
  /// [kind] Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [metadata] Standard list metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  MutatingWebhookConfigurationListAdmissionregistrationK8sIoV1beta1Args({
    this.apiVersion,
    required this.items,
    this.kind,
    this.metadata,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': ?apiVersion,
      'items': items,
      'kind': ?kind,
      'metadata': ?pulumi.Input.mapOptionalInputValue<ListMeta, Map<String, dynamic>>(metadata, (value) => value.toMap()),
    };
  }

  factory MutatingWebhookConfigurationListAdmissionregistrationK8sIoV1beta1Args.fromMap(Map<String, dynamic> map) {
    return MutatingWebhookConfigurationListAdmissionregistrationK8sIoV1beta1Args(
      apiVersion: map['apiVersion'] == null ? null : (map['apiVersion'] as String).input(),
      items: ((map['items'] as List).cast<MutatingWebhookConfigurationResource>()).input(),
      kind: map['kind'] == null ? null : (map['kind'] as String).input(),
      metadata: map['metadata'] == null ? null : (ListMeta.fromMap((map['metadata'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

