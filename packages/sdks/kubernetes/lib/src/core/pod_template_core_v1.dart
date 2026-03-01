import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta.dart';
import 'pod_template_args.dart';
import 'pod_template_spec.dart';

/// PodTemplate describes a template for creating copies of a predefined pod.
class PodTemplateCoreV1 extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String> apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String> kind;
  /// Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  late final pulumi.Output<ObjectMeta> metadata;
  /// Template defines the pods that will be created from this pod template. https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
  late final pulumi.Output<PodTemplateSpec> template;

  /// Creates a new [PodTemplateCoreV1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PodTemplateCoreV1]. {@macro pulumi_core_v1_pod_template_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PodTemplateCoreV1(
    String name, {
    PodTemplateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'kubernetes:core/v1:PodTemplate',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.apiVersion = registerOutput<String>('apiVersion');
    this.kind = registerOutput<String>('kind');
    this.metadata = registerOutput<ObjectMeta>('metadata');
    this.template = registerOutput<PodTemplateSpec>('template');
  }
}
