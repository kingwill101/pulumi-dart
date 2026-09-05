import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta_patch.dart';
import 'validating_webhook_configuration_patch_admissionregistration_k8s_io_v1beta1_args.dart';
import 'validating_webhook_patch_admissionregistration_k8s_io_v1beta1.dart';

/// Patch resources are used to modify existing Kubernetes resources by using
/// Server-Side Apply updates. The name of the resource must be specified, but all other properties are optional. More than
/// one patch may be applied to the same resource, and a random FieldManager name will be used for each Patch resource.
/// Conflicts will result in an error by default, but can be forced using the "pulumi.com/patchForce" annotation. See the
/// [Server-Side Apply Docs](https://www.pulumi.com/registry/packages/kubernetes/how-to-guides/managing-resources-with-server-side-apply/) for
/// additional information about using Server-Side Apply to manage Kubernetes resources with Pulumi.
/// ValidatingWebhookConfiguration describes the configuration of and admission webhook that accept or reject and object without changing it. Deprecated in v1.16, planned for removal in v1.19. Use admissionregistration.k8s.io/v1 ValidatingWebhookConfiguration instead.
class ValidatingWebhookConfigurationPatchResource extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String?> apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String?> kind;
  /// Standard object metadata; More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata.
  late final pulumi.Output<ObjectMetaPatch?> metadata;
  /// Webhooks is a list of webhooks and the affected resources and operations.
  late final pulumi.Output<List<ValidatingWebhookPatchAdmissionregistrationK8sIoV1beta1>?> webhooks;

  /// Creates a new [ValidatingWebhookConfigurationPatchResource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ValidatingWebhookConfigurationPatchResource]. {@macro pulumi_admissionregistration_k8s_io_v1beta1_validating_webhook_configuration_patch_admissionregistration_k8s_io_v1beta1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ValidatingWebhookConfigurationPatchResource(
    String name, {
    ValidatingWebhookConfigurationPatchAdmissionregistrationK8sIoV1beta1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'kubernetes:admissionregistration.k8s.io/v1beta1:ValidatingWebhookConfigurationPatch',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiVersion = registerOutput<String?>('apiVersion');
    kind = registerOutput<String?>('kind');
    metadata = registerOutput<ObjectMetaPatch?>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ObjectMetaPatch.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    webhooks = registerOutput<List<ValidatingWebhookPatchAdmissionregistrationK8sIoV1beta1>?>('webhooks', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ValidatingWebhookPatchAdmissionregistrationK8sIoV1beta1>(guardedValue, (value) => ValidatingWebhookPatchAdmissionregistrationK8sIoV1beta1.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Creates a typed reference to an existing [ValidatingWebhookConfigurationPatchResource] resource.
  ValidatingWebhookConfigurationPatchResource.reference(String urn)
    : super(
        'kubernetes:admissionregistration.k8s.io/v1beta1:ValidatingWebhookConfigurationPatch',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    apiVersion = registerOutput<String?>('apiVersion');
    kind = registerOutput<String?>('kind');
    metadata = registerOutput<ObjectMetaPatch?>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ObjectMetaPatch.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    webhooks = registerOutput<List<ValidatingWebhookPatchAdmissionregistrationK8sIoV1beta1>?>('webhooks', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ValidatingWebhookPatchAdmissionregistrationK8sIoV1beta1>(guardedValue, (value) => ValidatingWebhookPatchAdmissionregistrationK8sIoV1beta1.fromMap((value as Map).cast<String, dynamic>())); });
  }
}
