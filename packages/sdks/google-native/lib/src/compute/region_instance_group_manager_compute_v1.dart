import 'package:pulumi/pulumi.dart' as pulumi;
import 'distribution_policy_response_compute_v1.dart';
import 'instance_group_manager_actions_summary_response_compute_v1.dart';
import 'instance_group_manager_instance_lifecycle_policy_response_compute_v1.dart';
import 'instance_group_manager_status_response_compute_v1.dart';
import 'instance_group_manager_update_policy_response_compute_v1.dart';
import 'region_instance_group_manager_compute_v1_args.dart';
import 'stateful_policy_response_compute_v1.dart';

/// Creates a managed instance group using the information that you specify in the request. After the group is created, instances in the group are created using the specified instance template. This operation is marked as DONE when the group is created even if the instances in the group have not yet been created. You must separately verify the status of the individual instances with the listmanagedinstances method. A regional managed instance group can contain up to 2000 instances.
class RegionInstanceGroupManagerComputeV1 extends pulumi.CustomResource {
  /// The autohealing policy for this managed instance group. You can specify only one value.
  late final pulumi.Output<List<Map<String, dynamic>>> autoHealingPolicies;

  /// The base instance name to use for instances in this group. The value must be 1-58 characters long. Instances are named by appending a hyphen and a random four-character string to the base instance name. The base instance name must comply with RFC1035.
  late final pulumi.Output<String> baseInstanceName;

  /// The creation timestamp for this managed instance group in RFC3339 text format.
  late final pulumi.Output<String> creationTimestamp;

  /// The list of instance actions and the number of instances in this managed instance group that are scheduled for each of those actions.
  late final pulumi.Output<InstanceGroupManagerActionsSummaryResponseComputeV1>
  currentActions;

  /// An optional description of this resource.
  late final pulumi.Output<String> description;

  /// Policy specifying the intended distribution of managed instances across zones in a regional managed instance group.
  late final pulumi.Output<DistributionPolicyResponseComputeV1>
  distributionPolicy;

  /// Fingerprint of this resource. This field may be used in optimistic locking. It will be ignored when inserting an InstanceGroupManager. An up-to-date fingerprint must be provided in order to update the InstanceGroupManager, otherwise the request will fail with error 412 conditionNotMet. To see the latest fingerprint, make a get() request to retrieve an InstanceGroupManager.
  late final pulumi.Output<String> fingerprint;

  /// The URL of the Instance Group resource.
  late final pulumi.Output<String> instanceGroup;

  /// The repair policy for this managed instance group.
  late final pulumi.Output<
    InstanceGroupManagerInstanceLifecyclePolicyResponseComputeV1
  >
  instanceLifecyclePolicy;

  /// The URL of the instance template that is specified for this managed instance group. The group uses this template to create all new instances in the managed instance group. The templates for existing instances in the group do not change unless you run recreateInstances, run applyUpdatesToInstances, or set the group's updatePolicy.type to PROACTIVE.
  late final pulumi.Output<String> instanceTemplate;

  /// The resource type, which is always compute#instanceGroupManager for managed instance groups.
  late final pulumi.Output<String> kind;

  /// Pagination behavior of the listManagedInstances API method for this managed instance group.
  late final pulumi.Output<String> listManagedInstancesResults;

  /// The name of the managed instance group. The name must be 1-63 characters long, and comply with RFC1035.
  late final pulumi.Output<String> name;

  /// Named ports configured for the Instance Groups complementary to this Instance Group Manager.
  late final pulumi.Output<List<Map<String, dynamic>>> namedPorts;
  late final pulumi.Output<String> project;
  late final pulumi.Output<String> region;

  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  late final pulumi.Output<String?> requestId;

  /// The URL for this managed instance group. The server defines this URL.
  late final pulumi.Output<String> selfLink;

  /// Stateful configuration for this Instanced Group Manager
  late final pulumi.Output<StatefulPolicyResponseComputeV1> statefulPolicy;

  /// The status of this managed instance group.
  late final pulumi.Output<InstanceGroupManagerStatusResponseComputeV1> status;

  /// The URLs for all TargetPool resources to which instances in the instanceGroup field are added. The target pools automatically apply to all of the instances in the managed instance group.
  late final pulumi.Output<List<String>> targetPools;

  /// The target number of running instances for this managed instance group. You can reduce this number by using the instanceGroupManager deleteInstances or abandonInstances methods. Resizing the group also changes this number.
  late final pulumi.Output<int> targetSize;

  /// The update policy for this managed instance group.
  late final pulumi.Output<InstanceGroupManagerUpdatePolicyResponseComputeV1>
  updatePolicy;

  /// Specifies the instance templates used by this managed instance group to create instances. Each version is defined by an instanceTemplate and a name. Every version can appear at most once per instance group. This field overrides the top-level instanceTemplate field. Read more about the relationships between these fields. Exactly one version must leave the targetSize field unset. That version will be applied to all remaining instances. For more information, read about canary updates.
  late final pulumi.Output<List<Map<String, dynamic>>> versions;

  /// The URL of a zone where the managed instance group is located (for zonal resources).
  late final pulumi.Output<String> zone;

  /// Creates a new [RegionInstanceGroupManagerComputeV1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RegionInstanceGroupManagerComputeV1]. {@macro pulumi_compute_v1_region_instance_group_manager_compute_v1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RegionInstanceGroupManagerComputeV1(
    String name, {
    RegionInstanceGroupManagerComputeV1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:compute/v1:RegionInstanceGroupManager',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    autoHealingPolicies = registerOutput<List<Map<String, dynamic>>>(
      'autoHealingPolicies',
    );
    baseInstanceName = registerOutput<String>('baseInstanceName');
    creationTimestamp = registerOutput<String>('creationTimestamp');
    currentActions =
        registerOutput<InstanceGroupManagerActionsSummaryResponseComputeV1>(
          'currentActions',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return InstanceGroupManagerActionsSummaryResponseComputeV1.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    description = registerOutput<String>('description');
    distributionPolicy = registerOutput<DistributionPolicyResponseComputeV1>(
      'distributionPolicy',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return DistributionPolicyResponseComputeV1.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    fingerprint = registerOutput<String>('fingerprint');
    instanceGroup = registerOutput<String>('instanceGroup');
    instanceLifecyclePolicy =
        registerOutput<
          InstanceGroupManagerInstanceLifecyclePolicyResponseComputeV1
        >(
          'instanceLifecyclePolicy',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return InstanceGroupManagerInstanceLifecyclePolicyResponseComputeV1.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    instanceTemplate = registerOutput<String>('instanceTemplate');
    kind = registerOutput<String>('kind');
    listManagedInstancesResults = registerOutput<String>(
      'listManagedInstancesResults',
    );
    this.name = registerOutput<String>('name');
    namedPorts = registerOutput<List<Map<String, dynamic>>>('namedPorts');
    project = registerOutput<String>('project');
    region = registerOutput<String>('region');
    requestId = registerOutput<String?>('requestId');
    selfLink = registerOutput<String>('selfLink');
    statefulPolicy = registerOutput<StatefulPolicyResponseComputeV1>(
      'statefulPolicy',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return StatefulPolicyResponseComputeV1.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    status = registerOutput<InstanceGroupManagerStatusResponseComputeV1>(
      'status',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return InstanceGroupManagerStatusResponseComputeV1.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    targetPools = registerOutput<List<String>>('targetPools');
    targetSize = registerOutput<int>('targetSize');
    updatePolicy =
        registerOutput<InstanceGroupManagerUpdatePolicyResponseComputeV1>(
          'updatePolicy',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return InstanceGroupManagerUpdatePolicyResponseComputeV1.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    versions = registerOutput<List<Map<String, dynamic>>>('versions');
    zone = registerOutput<String>('zone');
  }
}
