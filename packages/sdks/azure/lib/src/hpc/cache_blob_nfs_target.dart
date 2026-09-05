import 'package:pulumi/pulumi.dart' as pulumi;
import 'cache_blob_nfs_target_args.dart';
import 'cache_blob_nfs_target_state.dart';

/// Manages a Blob NFSv3 Target within a HPC Cache.
///
/// &gt; **Note:** The `azure.hpc.CacheBlobNfsTarget` resource has been deprecated because the service is retiring on 2025-09-30. This resource will be removed in v5.0 of the AzureRM Provider. See https://aka.ms/hpccacheretirement for more information.
///
/// &gt; **Note:** By request of the service team the provider no longer automatically registers the `Microsoft.StorageCache` Resource Provider for this resource. To register it you can run `az provider register --namespace 'Microsoft.StorageCache'`.
///
/// &gt; **Note:** This resource depends on the NFSv3 enabled Storage Account, which has some prerequisites need to meet. Please checkout: &lt;https://docs.microsoft.com/azure/storage/blobs/network-file-system-protocol-support-how-to?tabs=azure-powershell&gt;.
///
/// ## Import
///
/// HPC Cache Blob NFS Targets can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:hpc/cacheBlobNfsTarget:CacheBlobNfsTarget example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.StorageCache/caches/cache1/storageTargets/target1
/// ```
class CacheBlobNfsTarget extends pulumi.CustomResource {
  /// The name of the access policy applied to this target. Defaults to `default`.
  late final pulumi.Output<String?> accessPolicyName;
  /// The name of the HPC Cache, which the HPC Cache Blob NFS Target will be added to. Changing this forces a new HPC Cache Blob NFS Target to be created.
  late final pulumi.Output<String> cacheName;
  /// The name which should be used for this HPC Cache Blob NFS Target. Changing this forces a new HPC Cache Blob NFS Target to be created.
  late final pulumi.Output<String> name;
  /// The client-facing file path of the HPC Cache Blob NFS Target.
  late final pulumi.Output<String> namespacePath;
  /// The name of the Resource Group where the HPC Cache Blob NFS Target should exist. Changing this forces a new HPC Cache Blob NFS Target to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// The Resource Manager ID of the Storage Container used as the HPC Cache Blob NFS Target. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** This is the Resource Manager ID of the Storage Container, rather than the regular ID - and can be accessed on the `azure.storage.Container` Data Source/Resource as `resourceManagerId`.
  late final pulumi.Output<String> storageContainerId;
  /// The type of usage of the HPC Cache Blob NFS Target. Possible values are: `READ_HEAVY_INFREQ`, `READ_HEAVY_CHECK_180`, `READ_ONLY`, `READ_WRITE`, `WRITE_WORKLOAD_15`, `WRITE_AROUND`, `WRITE_WORKLOAD_CHECK_30`, `WRITE_WORKLOAD_CHECK_60` and `WRITE_WORKLOAD_CLOUDWS`.
  late final pulumi.Output<String> usageModel;
  /// The amount of time the cache waits before it checks the back-end storage for file updates. Possible values are between `1` and `31536000`.
  late final pulumi.Output<int?> verificationTimerInSeconds;
  /// The amount of time the cache waits after the last file change before it copies the changed file to back-end storage. Possible values are between `1` and `31536000`.
  late final pulumi.Output<int?> writeBackTimerInSeconds;

  /// Creates a new [CacheBlobNfsTarget].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CacheBlobNfsTarget]. {@macro pulumi_hpc_cache_blob_nfs_target_cache_blob_nfs_target_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CacheBlobNfsTarget(
    String name, {
    CacheBlobNfsTargetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:hpc/cacheBlobNfsTarget:CacheBlobNfsTarget',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
        ) {
    accessPolicyName = registerOutput<String?>('accessPolicyName');
    cacheName = registerOutput<String>('cacheName');
    this.name = registerOutput<String>('name');
    namespacePath = registerOutput<String>('namespacePath');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    storageContainerId = registerOutput<String>('storageContainerId');
    usageModel = registerOutput<String>('usageModel');
    verificationTimerInSeconds = registerOutput<int?>('verificationTimerInSeconds');
    writeBackTimerInSeconds = registerOutput<int?>('writeBackTimerInSeconds');
  }

  /// Gets an existing [CacheBlobNfsTarget] resource's state with the given [name] and [id].
  static CacheBlobNfsTarget get(
    String name,
    pulumi.Input<String> id, {
    CacheBlobNfsTargetState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return CacheBlobNfsTarget._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  CacheBlobNfsTarget._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:hpc/cacheBlobNfsTarget:CacheBlobNfsTarget',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accessPolicyName = registerOutput<String?>('accessPolicyName');
    cacheName = registerOutput<String>('cacheName');
    this.name = registerOutput<String>('name');
    namespacePath = registerOutput<String>('namespacePath');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    storageContainerId = registerOutput<String>('storageContainerId');
    usageModel = registerOutput<String>('usageModel');
    verificationTimerInSeconds = registerOutput<int?>('verificationTimerInSeconds');
    writeBackTimerInSeconds = registerOutput<int?>('writeBackTimerInSeconds');
  }

  /// Creates a typed reference to an existing [CacheBlobNfsTarget] resource.
  CacheBlobNfsTarget.reference(String urn)
    : super(
        'azure:hpc/cacheBlobNfsTarget:CacheBlobNfsTarget',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accessPolicyName = registerOutput<String?>('accessPolicyName');
    cacheName = registerOutput<String>('cacheName');
    this.name = registerOutput<String>('name');
    namespacePath = registerOutput<String>('namespacePath');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    storageContainerId = registerOutput<String>('storageContainerId');
    usageModel = registerOutput<String>('usageModel');
    verificationTimerInSeconds = registerOutput<int?>('verificationTimerInSeconds');
    writeBackTimerInSeconds = registerOutput<int?>('writeBackTimerInSeconds');
  }
}
