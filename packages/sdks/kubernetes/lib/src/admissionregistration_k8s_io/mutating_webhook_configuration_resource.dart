import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta.dart';
import 'mutating_webhook_admissionregistration_k8s_io_v1beta1.dart';
import 'mutating_webhook_configuration_admissionregistration_k8s_io_v1beta1_args.dart';

/// MutatingWebhookConfiguration describes the configuration of and admission webhook that accept or reject and may change the object. Deprecated in v1.16, planned for removal in v1.19. Use admissionregistration.k8s.io/v1 MutatingWebhookConfiguration instead.
class MutatingWebhookConfigurationResource extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String> apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String> kind;
  /// Standard object metadata; More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata.
  late final pulumi.Output<ObjectMeta> metadata;
  /// Webhooks is a list of webhooks and the affected resources and operations.
  late final pulumi.Output<List<MutatingWebhookAdmissionregistrationK8sIoV1beta1>> webhooks;

  /// Creates a new [MutatingWebhookConfigurationResource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MutatingWebhookConfigurationResource]. {@macro pulumi_admissionregistration_k8s_io_v1beta1_mutating_webhook_configuration_admissionregistration_k8s_io_v1beta1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MutatingWebhookConfigurationResource(
    String name, {
    MutatingWebhookConfigurationAdmissionregistrationK8sIoV1beta1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'kubernetes:admissionregistration.k8s.io/v1beta1:MutatingWebhookConfiguration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiVersion = registerOutput<String>('apiVersion');
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ObjectMeta>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ObjectMeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    webhooks = registerOutput<List<MutatingWebhookAdmissionregistrationK8sIoV1beta1>>('webhooks', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<MutatingWebhookAdmissionregistrationK8sIoV1beta1>(guardedValue, (value) => MutatingWebhookAdmissionregistrationK8sIoV1beta1.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Creates a typed reference to an existing [MutatingWebhookConfigurationResource] resource.
  MutatingWebhookConfigurationResource.reference(String urn)
    : super(
        'kubernetes:admissionregistration.k8s.io/v1beta1:MutatingWebhookConfiguration',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    apiVersion = registerOutput<String>('apiVersion');
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ObjectMeta>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ObjectMeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    webhooks = registerOutput<List<MutatingWebhookAdmissionregistrationK8sIoV1beta1>>('webhooks', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<MutatingWebhookAdmissionregistrationK8sIoV1beta1>(guardedValue, (value) => MutatingWebhookAdmissionregistrationK8sIoV1beta1.fromMap((value as Map).cast<String, dynamic>())); });
  }
}
