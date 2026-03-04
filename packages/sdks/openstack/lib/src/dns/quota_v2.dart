import 'package:pulumi/pulumi.dart' as pulumi;
import 'quota_v2_args.dart';
import 'quota_v2_state.dart';

/// Manages DNS quota in OpenStack DNS Service.
///
/// &gt; **Note:** This usually requires admin privileges.
///
/// &gt; **Note:** This resource has a no-op deletion so no actual actions will be
/// done against the OpenStack API in case of delete call.
///
/// ## Import
///
/// Quotas can be imported using the `project_id/region_name`, e.g.
///
/// ```sh
/// $ pulumi import openstack:dns/quotaV2:QuotaV2 quota_1 2a0f2240-c5e6-41de-896d-e80d97428d6b/region_1
/// ```
class QuotaV2 extends pulumi.CustomResource {
  /// The maximum number of zones that can be
  /// exported via the API.
  late final pulumi.Output<int> apiExportSize;

  /// ID of the project to manage quota. Changing this
  /// creates new quota.
  late final pulumi.Output<String> projectId;

  /// The maximum number of records in a
  /// recordset.
  late final pulumi.Output<int> recordsetRecords;

  /// The region in which to obtain the V2 DNS client. If
  /// omitted, the `region` argument of the provider is used. Changing this creates
  /// a new DNS quota.
  late final pulumi.Output<String> region;

  /// The maximum number of records in a zone.
  late final pulumi.Output<int> zoneRecords;

  /// The maximum number of recordsets in a zone.
  late final pulumi.Output<int> zoneRecordsets;

  /// The maximum number of zones that can be created.
  late final pulumi.Output<int> zones;

  /// Creates a new [QuotaV2].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [QuotaV2]. {@macro pulumi_dns_quota_v2_quota_v2_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  QuotaV2(
    String name, {
    QuotaV2Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'openstack:dns/quotaV2:QuotaV2',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    apiExportSize = registerOutput<int>('apiExportSize');
    projectId = registerOutput<String>('projectId');
    recordsetRecords = registerOutput<int>('recordsetRecords');
    region = registerOutput<String>('region');
    zoneRecords = registerOutput<int>('zoneRecords');
    zoneRecordsets = registerOutput<int>('zoneRecordsets');
    zones = registerOutput<int>('zones');
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
         'openstack:dns/quotaV2:QuotaV2',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    apiExportSize = registerOutput<int>('apiExportSize');
    projectId = registerOutput<String>('projectId');
    recordsetRecords = registerOutput<int>('recordsetRecords');
    region = registerOutput<String>('region');
    zoneRecords = registerOutput<int>('zoneRecords');
    zoneRecordsets = registerOutput<int>('zoneRecordsets');
    zones = registerOutput<int>('zones');
  }
}
