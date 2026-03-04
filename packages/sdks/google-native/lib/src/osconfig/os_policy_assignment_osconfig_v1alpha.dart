import 'package:pulumi/pulumi.dart' as pulumi;
import 'os_policy_assignment_osconfig_v1alpha_args.dart';
import 'ospolicy_assignment_instance_filter_response_osconfig_v1alpha.dart';
import 'ospolicy_assignment_rollout_response_osconfig_v1alpha.dart';

/// Create an OS policy assignment. This method also creates the first revision of the OS policy assignment. This method returns a long running operation (LRO) that contains the rollout details. The rollout can be cancelled by cancelling the LRO. For more information, see [Method: projects.locations.osPolicyAssignments.operations.cancel](https://cloud.google.com/compute/docs/osconfig/rest/v1alpha/projects.locations.osPolicyAssignments.operations/cancel).
class OsPolicyAssignmentOsconfigV1alpha extends pulumi.CustomResource {
  /// Indicates that this revision has been successfully rolled out in this zone and new VMs will be assigned OS policies from this revision. For a given OS policy assignment, there is only one revision with a value of `true` for this field.
  late final pulumi.Output<bool> baseline;

  /// Indicates that this revision deletes the OS policy assignment.
  late final pulumi.Output<bool> deleted;

  /// OS policy assignment description. Length of the description is limited to 1024 characters.
  late final pulumi.Output<String> description;

  /// The etag for this OS policy assignment. If this is provided on update, it must match the server's etag.
  late final pulumi.Output<String> etag;

  /// Filter to select VMs.
  late final pulumi.Output<
    OSPolicyAssignmentInstanceFilterResponseOsconfigV1alpha
  >
  instanceFilter;
  late final pulumi.Output<String> location;

  /// Resource name. Format: `projects/{project_number}/locations/{location}/osPolicyAssignments/{os_policy_assignment_id}` This field is ignored when you create an OS policy assignment.
  late final pulumi.Output<String> name;

  /// List of OS policies to be applied to the VMs.
  late final pulumi.Output<List<Map<String, dynamic>>> osPolicies;

  /// Required. The logical name of the OS policy assignment in the project with the following restrictions: * Must contain only lowercase letters, numbers, and hyphens. * Must start with a letter. * Must be between 1-63 characters. * Must end with a number or a letter. * Must be unique within the project.
  late final pulumi.Output<String> osPolicyAssignmentId;
  late final pulumi.Output<String> project;

  /// Indicates that reconciliation is in progress for the revision. This value is `true` when the `rollout_state` is one of: * IN_PROGRESS * CANCELLING
  late final pulumi.Output<bool> reconciling;

  /// The timestamp that the revision was created.
  late final pulumi.Output<String> revisionCreateTime;

  /// The assignment revision ID A new revision is committed whenever a rollout is triggered for a OS policy assignment
  late final pulumi.Output<String> revisionId;

  /// Rollout to deploy the OS policy assignment. A rollout is triggered in the following situations: 1) OSPolicyAssignment is created. 2) OSPolicyAssignment is updated and the update contains changes to one of the following fields: - instance_filter - os_policies 3) OSPolicyAssignment is deleted.
  late final pulumi.Output<OSPolicyAssignmentRolloutResponseOsconfigV1alpha>
  rollout;

  /// OS policy assignment rollout state
  late final pulumi.Output<String> rolloutState;

  /// Server generated unique id for the OS policy assignment resource.
  late final pulumi.Output<String> uid;

  /// Creates a new [OsPolicyAssignmentOsconfigV1alpha].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [OsPolicyAssignmentOsconfigV1alpha]. {@macro pulumi_osconfig_v1alpha_os_policy_assignment_osconfig_v1alpha_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  OsPolicyAssignmentOsconfigV1alpha(
    String name, {
    OsPolicyAssignmentOsconfigV1alphaArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:osconfig/v1alpha:OsPolicyAssignment',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    baseline = registerOutput<bool>('baseline');
    deleted = registerOutput<bool>('deleted');
    description = registerOutput<String>('description');
    etag = registerOutput<String>('etag');
    instanceFilter =
        registerOutput<OSPolicyAssignmentInstanceFilterResponseOsconfigV1alpha>(
          'instanceFilter',
        );
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    osPolicies = registerOutput<List<Map<String, dynamic>>>('osPolicies');
    osPolicyAssignmentId = registerOutput<String>('osPolicyAssignmentId');
    project = registerOutput<String>('project');
    reconciling = registerOutput<bool>('reconciling');
    revisionCreateTime = registerOutput<String>('revisionCreateTime');
    revisionId = registerOutput<String>('revisionId');
    rollout = registerOutput<OSPolicyAssignmentRolloutResponseOsconfigV1alpha>(
      'rollout',
    );
    rolloutState = registerOutput<String>('rolloutState');
    uid = registerOutput<String>('uid');
  }
}
