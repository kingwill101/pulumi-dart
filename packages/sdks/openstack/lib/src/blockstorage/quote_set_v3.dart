import 'package:pulumi/pulumi.dart' as pulumi;
import 'quote_set_v3_args.dart';
import 'quote_set_v3_state.dart';

/// Manages a V3 block storage quotaset resource within OpenStack.
///
/// &gt; **Note:** This usually requires admin privileges.
///
/// &gt; **Note:** This resource has a no-op deletion so no actual actions will be done against the OpenStack API
/// in case of delete call.
///
/// ## Import
///
/// Quotasets can be imported using the `project_id/region`, e.g.
///
/// ```sh
/// $ pulumi import openstack:blockstorage/quoteSetV3:QuoteSetV3 quotaset_1 2a0f2240-c5e6-41de-896d-e80d97428d6b/region_1
/// ```
class QuoteSetV3 extends pulumi.CustomResource {
  /// Quota value for backup gigabytes. Changing
  /// this updates the existing quotaset.
  late final pulumi.Output<int> backupGigabytes;
  /// Quota value for backups. Changing this updates the
  /// existing quotaset.
  late final pulumi.Output<int> backups;
  /// Quota value for gigabytes. Changing this updates the
  /// existing quotaset.
  late final pulumi.Output<int> gigabytes;
  /// Quota value for groups. Changing this updates the
  /// existing quotaset.
  late final pulumi.Output<int> groups;
  /// Quota value for gigabytes per volume .
  /// Changing this updates the existing quotaset.
  late final pulumi.Output<int> perVolumeGigabytes;
  /// ID of the project to manage quotas. Changing this
  /// creates a new quotaset.
  late final pulumi.Output<String> projectId;
  /// The region in which to create the volume. If
  /// omitted, the `region` argument of the provider is used. Changing this
  /// creates a new quotaset.
  late final pulumi.Output<String> region;
  /// Quota value for snapshots. Changing this updates the
  /// existing quotaset.
  late final pulumi.Output<int> snapshots;
  /// Key/Value pairs for setting quota for
  /// volumes types. Possible keys are `snapshots_&lt;volume_type_name&gt;`,
  /// `volumes_&lt;volume_type_name&gt;` and `gigabytes_&lt;volume_type_name&gt;`.
  late final pulumi.Output<Map<String, String>?> volumeTypeQuota;
  /// Quota value for volumes. Changing this updates the
  /// existing quotaset.
  late final pulumi.Output<int> volumes;

  /// Creates a new [QuoteSetV3].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [QuoteSetV3]. {@macro pulumi_blockstorage_quote_set_v3_quote_set_v3_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  QuoteSetV3(
    String name, {
    QuoteSetV3Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'openstack:blockstorage/quoteSetV3:QuoteSetV3',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    backupGigabytes = registerOutput<int>('backupGigabytes');
    backups = registerOutput<int>('backups');
    gigabytes = registerOutput<int>('gigabytes');
    groups = registerOutput<int>('groups');
    perVolumeGigabytes = registerOutput<int>('perVolumeGigabytes');
    projectId = registerOutput<String>('projectId');
    region = registerOutput<String>('region');
    snapshots = registerOutput<int>('snapshots');
    volumeTypeQuota = registerOutput<Map<String, String>?>('volumeTypeQuota');
    volumes = registerOutput<int>('volumes');
  }

  /// Gets an existing [QuoteSetV3] resource's state with the given [name] and [id].
  static QuoteSetV3 get(
    String name,
    pulumi.Input<String> id, {
    QuoteSetV3State? state,
  }) {
    return QuoteSetV3._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  QuoteSetV3._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'openstack:blockstorage/quoteSetV3:QuoteSetV3',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    backupGigabytes = registerOutput<int>('backupGigabytes');
    backups = registerOutput<int>('backups');
    gigabytes = registerOutput<int>('gigabytes');
    groups = registerOutput<int>('groups');
    perVolumeGigabytes = registerOutput<int>('perVolumeGigabytes');
    projectId = registerOutput<String>('projectId');
    region = registerOutput<String>('region');
    snapshots = registerOutput<int>('snapshots');
    volumeTypeQuota = registerOutput<Map<String, String>?>('volumeTypeQuota');
    volumes = registerOutput<int>('volumes');
  }
}
