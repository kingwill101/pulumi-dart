import 'package:pulumi/pulumi.dart' as pulumi;
import 'quota_set_v2_args.dart';
import 'quota_set_v2_state.dart';

/// Manages a V2 compute quotaset resource within OpenStack.
///
/// &gt; **Note:** This usually requires admin privileges.
///
/// &gt; **Note:** This resource has a no-op deletion so no actual actions will be done against the OpenStack API
/// in case of delete call.
///
/// ## Import
///
/// Quotasets can be imported using the `project_id/region_name`, e.g.
///
/// ```sh
/// $ pulumi import openstack:compute/quotaSetV2:QuotaSetV2 quotaset_1 2a0f2240-c5e6-41de-896d-e80d97428d6b/region_1
/// ```
class QuotaSetV2 extends pulumi.CustomResource {
  /// Quota value for cores.
  /// Changing this updates the existing quotaset.
  late final pulumi.Output<int> cores;

  /// Quota value for fixed IPs.
  /// Changing this updates the existing quotaset.
  late final pulumi.Output<int> fixedIps;

  /// Quota value for floating IPs.
  /// Changing this updates the existing quotaset.
  late final pulumi.Output<int> floatingIps;

  /// Quota value for content bytes
  /// of injected files. Changing this updates the existing quotaset.
  late final pulumi.Output<int> injectedFileContentBytes;

  /// Quota value for path bytes of
  /// injected files. Changing this updates the existing quotaset.
  late final pulumi.Output<int> injectedFilePathBytes;

  /// Quota value for injected files.
  /// Changing this updates the existing quotaset.
  late final pulumi.Output<int> injectedFiles;

  /// Quota value for instances.
  /// Changing this updates the existing quotaset.
  late final pulumi.Output<int> instances;

  /// Quota value for key pairs.
  /// Changing this updates the existing quotaset.
  late final pulumi.Output<int> keyPairs;

  /// Quota value for metadata items.
  /// Changing this updates the existing quotaset.
  late final pulumi.Output<int> metadataItems;

  /// ID of the project to manage quotas.
  /// Changing this creates a new quotaset.
  late final pulumi.Output<String> projectId;

  /// Quota value for RAM.
  /// Changing this updates the existing quotaset.
  late final pulumi.Output<int> ram;

  /// The region in which to create the volume. If
  /// omitted, the `region` argument of the provider is used. Changing this
  /// creates a new quotaset.
  late final pulumi.Output<String> region;

  /// Quota value for security group rules.
  /// Changing this updates the existing quotaset.
  late final pulumi.Output<int> securityGroupRules;

  /// Quota value for security groups.
  /// Changing this updates the existing quotaset.
  late final pulumi.Output<int> securityGroups;

  /// Quota value for server groups members.
  /// Changing this updates the existing quotaset.
  late final pulumi.Output<int> serverGroupMembers;

  /// Quota value for server groups.
  /// Changing this updates the existing quotaset.
  late final pulumi.Output<int> serverGroups;

  /// Creates a new [QuotaSetV2].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [QuotaSetV2]. {@macro pulumi_compute_quota_set_v2_quota_set_v2_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  QuotaSetV2(
    String name, {
    QuotaSetV2Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'openstack:compute/quotaSetV2:QuotaSetV2',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    cores = registerOutput<int>('cores');
    fixedIps = registerOutput<int>('fixedIps');
    floatingIps = registerOutput<int>('floatingIps');
    injectedFileContentBytes = registerOutput<int>('injectedFileContentBytes');
    injectedFilePathBytes = registerOutput<int>('injectedFilePathBytes');
    injectedFiles = registerOutput<int>('injectedFiles');
    instances = registerOutput<int>('instances');
    keyPairs = registerOutput<int>('keyPairs');
    metadataItems = registerOutput<int>('metadataItems');
    projectId = registerOutput<String>('projectId');
    ram = registerOutput<int>('ram');
    region = registerOutput<String>('region');
    securityGroupRules = registerOutput<int>('securityGroupRules');
    securityGroups = registerOutput<int>('securityGroups');
    serverGroupMembers = registerOutput<int>('serverGroupMembers');
    serverGroups = registerOutput<int>('serverGroups');
  }

  /// Gets an existing [QuotaSetV2] resource's state with the given [name] and [id].
  static QuotaSetV2 get(
    String name,
    pulumi.Input<String> id, {
    QuotaSetV2State? state,
  }) {
    return QuotaSetV2._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  QuotaSetV2._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'openstack:compute/quotaSetV2:QuotaSetV2',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    cores = registerOutput<int>('cores');
    fixedIps = registerOutput<int>('fixedIps');
    floatingIps = registerOutput<int>('floatingIps');
    injectedFileContentBytes = registerOutput<int>('injectedFileContentBytes');
    injectedFilePathBytes = registerOutput<int>('injectedFilePathBytes');
    injectedFiles = registerOutput<int>('injectedFiles');
    instances = registerOutput<int>('instances');
    keyPairs = registerOutput<int>('keyPairs');
    metadataItems = registerOutput<int>('metadataItems');
    projectId = registerOutput<String>('projectId');
    ram = registerOutput<int>('ram');
    region = registerOutput<String>('region');
    securityGroupRules = registerOutput<int>('securityGroupRules');
    securityGroups = registerOutput<int>('securityGroups');
    serverGroupMembers = registerOutput<int>('serverGroupMembers');
    serverGroups = registerOutput<int>('serverGroups');
  }
}
