import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_policy_compute_v1_args.dart';
import 'resource_policy_group_placement_policy_response_compute_v1.dart';
import 'resource_policy_instance_schedule_policy_response_compute_v1.dart';
import 'resource_policy_resource_status_response_compute_v1.dart';
import 'resource_policy_snapshot_schedule_policy_response_compute_v1.dart';

/// Creates a new resource policy.
class ResourcePolicyComputeV1 extends pulumi.CustomResource {
  /// Creation timestamp in RFC3339 text format.
  late final pulumi.Output<String> creationTimestamp;
  late final pulumi.Output<String> description;
  /// Resource policy for disk consistency groups.
  late final pulumi.Output<Map<String, dynamic>> diskConsistencyGroupPolicy;
  /// Resource policy for instances for placement configuration.
  late final pulumi.Output<ResourcePolicyGroupPlacementPolicyResponseComputeV1> groupPlacementPolicy;
  /// Resource policy for scheduling instance operations.
  late final pulumi.Output<ResourcePolicyInstanceSchedulePolicyResponseComputeV1> instanceSchedulePolicy;
  /// Type of the resource. Always compute#resource_policies for resource policies.
  late final pulumi.Output<String> kind;
  /// The name of the resource, provided by the client when initially creating the resource. The resource name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;
  late final pulumi.Output<String> region;
  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  late final pulumi.Output<String?> requestId;
  /// The system status of the resource policy.
  late final pulumi.Output<ResourcePolicyResourceStatusResponseComputeV1> resourceStatus;
  /// Server-defined fully-qualified URL for this resource.
  late final pulumi.Output<String> selfLink;
  /// Resource policy for persistent disks for creating snapshots.
  late final pulumi.Output<ResourcePolicySnapshotSchedulePolicyResponseComputeV1> snapshotSchedulePolicy;
  /// The status of resource policy creation.
  late final pulumi.Output<String> status;

  /// Creates a new [ResourcePolicyComputeV1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ResourcePolicyComputeV1]. {@macro pulumi_compute_v1_resource_policy_compute_v1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ResourcePolicyComputeV1(
    String name, {
    ResourcePolicyComputeV1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:compute/v1:ResourcePolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    creationTimestamp = registerOutput<String>('creationTimestamp');
    description = registerOutput<String>('description');
    diskConsistencyGroupPolicy = registerOutput<Map<String, dynamic>>('diskConsistencyGroupPolicy');
    groupPlacementPolicy = registerOutput<ResourcePolicyGroupPlacementPolicyResponseComputeV1>('groupPlacementPolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ResourcePolicyGroupPlacementPolicyResponseComputeV1.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    instanceSchedulePolicy = registerOutput<ResourcePolicyInstanceSchedulePolicyResponseComputeV1>('instanceSchedulePolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ResourcePolicyInstanceSchedulePolicyResponseComputeV1.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    kind = registerOutput<String>('kind');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    region = registerOutput<String>('region');
    requestId = registerOutput<String?>('requestId');
    resourceStatus = registerOutput<ResourcePolicyResourceStatusResponseComputeV1>('resourceStatus', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ResourcePolicyResourceStatusResponseComputeV1.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    selfLink = registerOutput<String>('selfLink');
    snapshotSchedulePolicy = registerOutput<ResourcePolicySnapshotSchedulePolicyResponseComputeV1>('snapshotSchedulePolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ResourcePolicySnapshotSchedulePolicyResponseComputeV1.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    status = registerOutput<String>('status');
  }
}
