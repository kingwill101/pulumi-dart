import 'package:pulumi/pulumi.dart' as pulumi;
import 'quota_v2_args.dart';
import 'quota_v2_state.dart';

/// Manages a V2 networking quota resource within OpenStack.
///
/// &gt; **Note:** This usually requires admin privileges.
///
/// &gt; **Note:** This resource has a no-op deletion so no actual actions will be done against the OpenStack API
/// in case of delete call.
///
/// ## Import
///
/// Quotas can be imported using the `project_id/region_name`, e.g.
///
/// ```sh
/// $ pulumi import openstack:networking/quotaV2:QuotaV2 quota_1 2a0f2240-c5e6-41de-896d-e80d97428d6b/region_1
/// ```
class QuotaV2 extends pulumi.CustomResource {
  /// Quota value for floating IPs. Changing this updates the
  /// existing quota.
  late final pulumi.Output<int> floatingip;

  /// Quota value for networks. Changing this updates the
  /// existing quota.
  late final pulumi.Output<int> network;

  /// Quota value for ports. Changing this updates the
  /// existing quota.
  late final pulumi.Output<int> port;

  /// ID of the project to manage quota. Changing this
  /// creates new quota.
  late final pulumi.Output<String> projectId;

  /// Quota value for RBAC policies.
  /// Changing this updates the existing quota.
  late final pulumi.Output<int> rbacPolicy;

  /// The region in which to create the quota. If
  /// omitted, the `region` argument of the provider is used. Changing this
  /// creates new quota.
  late final pulumi.Output<String> region;

  /// Quota value for routers. Changing this updates the
  /// existing quota.
  late final pulumi.Output<int> router;

  /// Quota value for security groups. Changing
  /// this updates the existing quota.
  late final pulumi.Output<int> securityGroup;

  /// Quota value for security group rules.
  /// Changing this updates the existing quota.
  late final pulumi.Output<int> securityGroupRule;

  /// Quota value for subnets. Changing
  /// this updates the existing quota.
  late final pulumi.Output<int> subnet;

  /// Quota value for subnetpools.
  /// Changing this updates the existing quota.
  late final pulumi.Output<int> subnetpool;

  /// Creates a new [QuotaV2].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [QuotaV2]. {@macro pulumi_networking_quota_v2_quota_v2_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  QuotaV2(
    String name, {
    QuotaV2Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'openstack:networking/quotaV2:QuotaV2',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    floatingip = registerOutput<int>('floatingip');
    network = registerOutput<int>('network');
    port = registerOutput<int>('port');
    projectId = registerOutput<String>('projectId');
    rbacPolicy = registerOutput<int>('rbacPolicy');
    region = registerOutput<String>('region');
    router = registerOutput<int>('router');
    securityGroup = registerOutput<int>('securityGroup');
    securityGroupRule = registerOutput<int>('securityGroupRule');
    subnet = registerOutput<int>('subnet');
    subnetpool = registerOutput<int>('subnetpool');
  }

  /// Gets an existing [QuotaV2] resource's state with the given [name] and [id].
  static QuotaV2 get(
    String name,
    pulumi.Input<String> id, {
    QuotaV2State? state,
  }) {
    return QuotaV2._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  QuotaV2._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'openstack:networking/quotaV2:QuotaV2',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    floatingip = registerOutput<int>('floatingip');
    network = registerOutput<int>('network');
    port = registerOutput<int>('port');
    projectId = registerOutput<String>('projectId');
    rbacPolicy = registerOutput<int>('rbacPolicy');
    region = registerOutput<String>('region');
    router = registerOutput<int>('router');
    securityGroup = registerOutput<int>('securityGroup');
    securityGroupRule = registerOutput<int>('securityGroupRule');
    subnet = registerOutput<int>('subnet');
    subnetpool = registerOutput<int>('subnetpool');
  }
}
