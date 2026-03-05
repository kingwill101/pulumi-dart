import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_policy_compute_beta_args.dart';
import 'resource_policy_group_placement_policy_response_compute_beta.dart';
import 'resource_policy_instance_schedule_policy_response_compute_beta.dart';
import 'resource_policy_resource_status_response_compute_beta.dart';
import 'resource_policy_snapshot_schedule_policy_response_compute_beta.dart';

/// Creates a new resource policy.
class ResourcePolicyComputeBeta extends pulumi.CustomResource {
  /// Creation timestamp in RFC3339 text format.
  late final pulumi.Output<String> creationTimestamp;
  late final pulumi.Output<String> description;
  /// Resource policy for disk consistency groups.
  late final pulumi.Output<Map<String, dynamic>> diskConsistencyGroupPolicy;
  /// Resource policy for instances for placement configuration.
  late final pulumi.Output<ResourcePolicyGroupPlacementPolicyResponseComputeBeta> groupPlacementPolicy;
  /// Resource policy for scheduling instance operations.
  late final pulumi.Output<ResourcePolicyInstanceSchedulePolicyResponseComputeBeta> instanceSchedulePolicy;
  /// Type of the resource. Always compute#resource_policies for resource policies.
  late final pulumi.Output<String> kind;
  /// The name of the resource, provided by the client when initially creating the resource. The resource name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;
  late final pulumi.Output<String> region;
  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  late final pulumi.Output<String?> requestId;
  /// The system status of the resource policy.
  late final pulumi.Output<ResourcePolicyResourceStatusResponseComputeBeta> resourceStatus;
  /// Server-defined fully-qualified URL for this resource.
  late final pulumi.Output<String> selfLink;
  /// Resource policy for persistent disks for creating snapshots.
  late final pulumi.Output<ResourcePolicySnapshotSchedulePolicyResponseComputeBeta> snapshotSchedulePolicy;
  /// The status of resource policy creation.
  late final pulumi.Output<String> status;

  /// Creates a new [ResourcePolicyComputeBeta].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ResourcePolicyComputeBeta]. {@macro pulumi_compute_beta_resource_policy_compute_beta_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ResourcePolicyComputeBeta(
    String name, {
    ResourcePolicyComputeBetaArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:compute/beta:ResourcePolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    creationTimestamp = registerOutput<String>('creationTimestamp');
    description = registerOutput<String>('description');
    diskConsistencyGroupPolicy = registerOutput<Map<String, dynamic>>('diskConsistencyGroupPolicy');
    groupPlacementPolicy = registerOutput<ResourcePolicyGroupPlacementPolicyResponseComputeBeta>('groupPlacementPolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ResourcePolicyGroupPlacementPolicyResponseComputeBeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    instanceSchedulePolicy = registerOutput<ResourcePolicyInstanceSchedulePolicyResponseComputeBeta>('instanceSchedulePolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ResourcePolicyInstanceSchedulePolicyResponseComputeBeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    kind = registerOutput<String>('kind');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    region = registerOutput<String>('region');
    requestId = registerOutput<String?>('requestId');
    resourceStatus = registerOutput<ResourcePolicyResourceStatusResponseComputeBeta>('resourceStatus', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ResourcePolicyResourceStatusResponseComputeBeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    selfLink = registerOutput<String>('selfLink');
    snapshotSchedulePolicy = registerOutput<ResourcePolicySnapshotSchedulePolicyResponseComputeBeta>('snapshotSchedulePolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ResourcePolicySnapshotSchedulePolicyResponseComputeBeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    status = registerOutput<String>('status');
  }
}
