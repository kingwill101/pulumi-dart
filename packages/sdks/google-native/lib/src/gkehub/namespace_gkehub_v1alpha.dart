import 'package:pulumi/pulumi.dart' as pulumi;
import 'namespace_gkehub_v1alpha_args.dart';
import 'namespace_lifecycle_state_response_gkehub_v1alpha.dart';

/// Creates a fleet namespace.
/// Auto-naming is currently not supported for this resource.
class NamespaceGkehubV1alpha extends pulumi.CustomResource {
  /// When the namespace was created.
  late final pulumi.Output<String> createTime;

  /// When the namespace was deleted.
  late final pulumi.Output<String> deleteTime;

  /// Optional. Labels for this Namespace.
  late final pulumi.Output<Map<String, String>> labels;
  late final pulumi.Output<String> location;

  /// The resource name for the namespace `projects/{project}/locations/{location}/namespaces/{namespace}`
  late final pulumi.Output<String> name;

  /// Optional. Namespace-level cluster namespace labels. These labels are applied to the related namespace of the member clusters bound to the parent Scope. Scope-level labels (`namespace_labels` in the Fleet Scope resource) take precedence over Namespace-level labels if they share a key. Keys and values must be Kubernetes-conformant.
  late final pulumi.Output<Map<String, String>> namespaceLabels;
  late final pulumi.Output<String> project;

  /// Scope associated with the namespace
  late final pulumi.Output<String> scope;
  late final pulumi.Output<String> scopeId;

  /// Required. Client chosen ID for the Namespace. `namespace_id` must be a valid RFC 1123 compliant DNS label: 1. At most 63 characters in length 2. It must consist of lower case alphanumeric characters or `-` 3. It must start and end with an alphanumeric character Which can be expressed as the regex: `[a-z0-9]([-a-z0-9]*[a-z0-9])?`, with a maximum length of 63 characters.
  late final pulumi.Output<String> scopeNamespaceId;

  /// State of the namespace resource.
  late final pulumi.Output<NamespaceLifecycleStateResponseGkehubV1alpha> state;

  /// Google-generated UUID for this resource. This is unique across all namespace resources. If a namespace resource is deleted and another resource with the same name is created, it gets a different uid.
  late final pulumi.Output<String> uid;

  /// When the namespace was last updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [NamespaceGkehubV1alpha].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NamespaceGkehubV1alpha]. {@macro pulumi_gkehub_v1alpha_namespace_gkehub_v1alpha_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NamespaceGkehubV1alpha(
    String name, {
    NamespaceGkehubV1alphaArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:gkehub/v1alpha:Namespace',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    createTime = registerOutput<String>('createTime');
    deleteTime = registerOutput<String>('deleteTime');
    labels = registerOutput<Map<String, String>>('labels');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    namespaceLabels = registerOutput<Map<String, String>>('namespaceLabels');
    project = registerOutput<String>('project');
    scope = registerOutput<String>('scope');
    scopeId = registerOutput<String>('scopeId');
    scopeNamespaceId = registerOutput<String>('scopeNamespaceId');
    state = registerOutput<NamespaceLifecycleStateResponseGkehubV1alpha>(
      'state',
    );
    uid = registerOutput<String>('uid');
    updateTime = registerOutput<String>('updateTime');
  }
}
