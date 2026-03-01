import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta.dart';
import 'validating_webhook.dart';
import 'validating_webhook_configuration_args.dart';

/// ValidatingWebhookConfiguration describes the configuration of and admission webhook that accept or reject and object without changing it.
class ValidatingWebhookConfigurationAdmissionregistrationK8sIoV1 extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String> apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String> kind;
  /// Standard object metadata; More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata.
  late final pulumi.Output<ObjectMeta> metadata;
  /// Webhooks is a list of webhooks and the affected resources and operations.
  late final pulumi.Output<List<ValidatingWebhook>> webhooks;

  /// Creates a new [ValidatingWebhookConfigurationAdmissionregistrationK8sIoV1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ValidatingWebhookConfigurationAdmissionregistrationK8sIoV1]. {@macro pulumi_admissionregistration_k8s_io_v1_validating_webhook_configuration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ValidatingWebhookConfigurationAdmissionregistrationK8sIoV1(
    String name, {
    ValidatingWebhookConfigurationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'kubernetes:admissionregistration.k8s.io/v1:ValidatingWebhookConfiguration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.apiVersion = registerOutput<String>('apiVersion');
    this.kind = registerOutput<String>('kind');
    this.metadata = registerOutput<ObjectMeta>('metadata');
    this.webhooks = registerOutput<List<ValidatingWebhook>>('webhooks');
  }
}
