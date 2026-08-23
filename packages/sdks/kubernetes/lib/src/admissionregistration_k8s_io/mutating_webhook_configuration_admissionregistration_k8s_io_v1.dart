import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta.dart';
import 'mutating_webhook_configuration_args.dart';

/// MutatingWebhookConfiguration describes the configuration of and admission webhook that accept or reject and may change the object.
class MutatingWebhookConfigurationAdmissionregistrationK8sIoV1 extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String> apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String> kind;
  /// metadata is the standard object metadata; More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata.
  late final pulumi.Output<ObjectMeta> metadata;
  /// webhooks is a list of webhooks and the affected resources and operations.
  late final pulumi.Output<List<Map<String, dynamic>>> webhooks;

  /// Creates a new [MutatingWebhookConfigurationAdmissionregistrationK8sIoV1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MutatingWebhookConfigurationAdmissionregistrationK8sIoV1]. {@macro pulumi_admissionregistration_k8s_io_v1_mutating_webhook_configuration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MutatingWebhookConfigurationAdmissionregistrationK8sIoV1(
    String name, {
    MutatingWebhookConfigurationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'kubernetes:admissionregistration.k8s.io/v1:MutatingWebhookConfiguration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiVersion = registerOutput<String>('apiVersion');
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ObjectMeta>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ObjectMeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    webhooks = registerOutput<List<Map<String, dynamic>>>('webhooks');
  }
}
