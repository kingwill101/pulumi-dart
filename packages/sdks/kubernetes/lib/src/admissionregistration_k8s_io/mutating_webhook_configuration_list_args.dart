// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/list_meta.dart';
import 'mutating_webhook_configuration_admissionregistration_k8s_io_v1.dart';

/// {@template pulumi_admissionregistration_k8s_io_v1_mutating_webhook_configuration_list_args_doc}
/// The set of arguments for MutatingWebhookConfigurationList.
/// {@endtemplate}
/// {@macro pulumi_admissionregistration_k8s_io_v1_mutating_webhook_configuration_list_args_doc}
class MutatingWebhookConfigurationListArgs {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final pulumi.Input<String>? apiVersion;
  /// List of MutatingWebhookConfiguration.
  final pulumi.Input<List<MutatingWebhookConfigurationAdmissionregistrationK8sIoV1>> items;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final pulumi.Input<String>? kind;
  /// Standard list metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final pulumi.Input<ListMeta>? metadata;

  /// Creates a new [MutatingWebhookConfigurationListArgs].
  /// [apiVersion] APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  /// [items] List of MutatingWebhookConfiguration.
  /// [kind] Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [metadata] Standard list metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  MutatingWebhookConfigurationListArgs({
    pulumi.Output<String>? apiVersion,
    required pulumi.Output<List<MutatingWebhookConfigurationAdmissionregistrationK8sIoV1>> items,
    pulumi.Output<String>? kind,
    pulumi.Output<ListMeta>? metadata,
  }) :
      apiVersion = pulumi.Input.asOptionalInput<String>(apiVersion),
      items = pulumi.Input.asInput<List<MutatingWebhookConfigurationAdmissionregistrationK8sIoV1>>(items),
      kind = pulumi.Input.asOptionalInput<String>(kind),
      metadata = pulumi.Input.asOptionalInput<ListMeta>(metadata);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': ?apiVersion,
      'items': items,
      'kind': ?kind,
      'metadata': ?pulumi.Input.mapOptionalInputValue<ListMeta, Map<String, dynamic>>(metadata, (value) => value.toMap()),
    };
  }

  factory MutatingWebhookConfigurationListArgs.fromMap(Map<String, dynamic> map) {
    return MutatingWebhookConfigurationListArgs(
      apiVersion: map['apiVersion'] == null ? null : pulumi.Output.create<String>(map['apiVersion'] as String),
      items: pulumi.Output.create<List<MutatingWebhookConfigurationAdmissionregistrationK8sIoV1>>((map['items'] as List).cast<MutatingWebhookConfigurationAdmissionregistrationK8sIoV1>()),
      kind: map['kind'] == null ? null : pulumi.Output.create<String>(map['kind'] as String),
      metadata: map['metadata'] == null ? null : pulumi.Output.create<ListMeta>(ListMeta.fromMap((map['metadata'] as Map).cast<String, dynamic>())),
    );
  }
}

