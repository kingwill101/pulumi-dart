import 'package:pulumi/pulumi.dart' as pulumi;
import 'scope_args.dart';
import 'scope_lifecycle_state_response.dart';

/// Creates a Scope.
/// Auto-naming is currently not supported for this resource.
class Scope extends pulumi.CustomResource {
  /// When the scope was created.
  late final pulumi.Output<String> createTime;
  /// When the scope was deleted.
  late final pulumi.Output<String> deleteTime;
  /// Optional. Labels for this Scope.
  late final pulumi.Output<Map<String, String>> labels;
  late final pulumi.Output<String> location;
  /// The resource name for the scope `projects/{project}/locations/{location}/scopes/{scope}`
  late final pulumi.Output<String> name;
  /// Optional. Scope-level cluster namespace labels. For the member clusters bound to the Scope, these labels are applied to each namespace under the Scope. Scope-level labels take precedence over Namespace-level labels (`namespace_labels` in the Fleet Namespace resource) if they share a key. Keys and values must be Kubernetes-conformant.
  late final pulumi.Output<Map<String, String>> namespaceLabels;
  late final pulumi.Output<String> project;
  /// Required. Client chosen ID for the Scope. `scope_id` must be a ????
  late final pulumi.Output<String> scopeId;
  /// State of the scope resource.
  late final pulumi.Output<ScopeLifecycleStateResponse> state;
  /// Google-generated UUID for this resource. This is unique across all scope resources. If a scope resource is deleted and another resource with the same name is created, it gets a different uid.
  late final pulumi.Output<String> uid;
  /// When the scope was last updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [Scope].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Scope]. {@macro pulumi_gkehub_v1_scope_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Scope(
    String name, {
    ScopeArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:gkehub/v1:Scope',
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
    scopeId = registerOutput<String>('scopeId');
    state = registerOutput<ScopeLifecycleStateResponse>('state', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ScopeLifecycleStateResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    uid = registerOutput<String>('uid');
    updateTime = registerOutput<String>('updateTime');
  }
}
