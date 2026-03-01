import 'package:pulumi/pulumi.dart' as pulumi;
import 'cache_blob_target_args.dart';
import 'cache_blob_target_state.dart';

/// Manages a Blob Target within a HPC Cache.
///
/// !> **Note:** The `azure.hpc.CacheBlobTarget` resource has been deprecated because the service is retiring on 2025-09-30. This resource will be removed in v5.0 of the AzureRM Provider. See https://aka.ms/hpccacheretirement for more information.
///
/// > **Note:** By request of the service team the provider no longer automatically registering the `Microsoft.StorageCache` Resource Provider for this resource. To register it you can run `az provider register --namespace 'Microsoft.StorageCache'`.
///
/// ## Import
///
/// Blob Targets within an HPC Cache can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:hpc/cacheBlobTarget:CacheBlobTarget example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.StorageCache/caches/cache1/storageTargets/target1
/// ```
class CacheBlobTarget extends pulumi.CustomResource {
  /// The name of the access policy applied to this target. Defaults to `default`.
  late final pulumi.Output<String?> accessPolicyName;
  /// The name HPC Cache, which the HPC Cache Blob Target will be added to. Changing this forces a new resource to be created.
  late final pulumi.Output<String> cacheName;
  /// The name of the HPC Cache Blob Target. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The client-facing file path of the HPC Cache Blob Target.
  late final pulumi.Output<String> namespacePath;
  /// The name of the Resource Group in which to create the HPC Cache Blob Target. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// The Resource Manager ID of the Storage Container used as the HPC Cache Blob Target. Changing this forces a new resource to be created.
  ///
  /// > **Note:** This is the Resource Manager ID of the Storage Container, rather than the regular ID - and can be accessed on the `azure.storage.Container` Data Source/Resource as `resource_manager_id`.
  late final pulumi.Output<String> storageContainerId;

  /// Creates a new [CacheBlobTarget].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CacheBlobTarget]. {@macro pulumi_hpc_cache_blob_target_cache_blob_target_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CacheBlobTarget(
    String name, {
    CacheBlobTargetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:hpc/cacheBlobTarget:CacheBlobTarget',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accessPolicyName = registerOutput<String?>('accessPolicyName');
    this.cacheName = registerOutput<String>('cacheName');
    this.name = registerOutput<String>('name');
    this.namespacePath = registerOutput<String>('namespacePath');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.storageContainerId = registerOutput<String>('storageContainerId');
  }

  /// Gets an existing [CacheBlobTarget] resource's state with the given [name] and [id].
  static CacheBlobTarget get(
    String name,
    pulumi.Input<String> id, {
    CacheBlobTargetState? state,
  }) {
    return CacheBlobTarget._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  CacheBlobTarget._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:hpc/cacheBlobTarget:CacheBlobTarget',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accessPolicyName = registerOutput<String?>('accessPolicyName');
    this.cacheName = registerOutput<String>('cacheName');
    this.name = registerOutput<String>('name');
    this.namespacePath = registerOutput<String>('namespacePath');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.storageContainerId = registerOutput<String>('storageContainerId');
  }
}
