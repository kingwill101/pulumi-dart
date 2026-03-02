// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workspace_encryption.dart';
import 'workspace_feature_store.dart';
import 'workspace_identity.dart';
import 'workspace_managed_network.dart';
import 'workspace_serverless_compute.dart';

/// {@template pulumi_machinelearning_workspace_workspace_args_doc}
/// The set of arguments for Workspace.
/// {@endtemplate}
/// {@macro pulumi_machinelearning_workspace_workspace_args_doc}
class WorkspaceArgs {
  /// The ID of the Application Insights associated with this Machine Learning Workspace. Changing this forces a new resource to be created.
  final pulumi.Input<String> applicationInsightsId;
  /// The ID of the container registry associated with this Machine Learning Workspace. Changing this forces a new resource to be created.
  ///
  /// > **Note:** The `admin_enabled` should be `true` in order to associate the Container Registry to this Machine Learning Workspace.
  final pulumi.Input<String>? containerRegistryId;
  /// The description of this Machine Learning Workspace.
  final pulumi.Input<String>? description;
  /// An `encryption` block as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<WorkspaceEncryption>? encryption;
  /// A `feature_store` block as defined below.
  final pulumi.Input<WorkspaceFeatureStore>? featureStore;
  /// Display name for this Machine Learning Workspace.
  final pulumi.Input<String>? friendlyName;
  /// Flag to signal High Business Impact (HBI) data in the workspace and reduce diagnostic data collected by the service. Changing this forces a new resource to be created.
  final pulumi.Input<bool>? highBusinessImpact;
  /// An `identity` block as defined below.
  final pulumi.Input<WorkspaceIdentity> identity;
  /// The compute name for image build of the Machine Learning Workspace.
  final pulumi.Input<String>? imageBuildComputeName;
  /// The ID of key vault associated with this Machine Learning Workspace. Changing this forces a new resource to be created.
  final pulumi.Input<String> keyVaultId;
  /// The type of the Workspace. Possible values are `Default`, `FeatureStore`. Defaults to `Default`
  final pulumi.Input<String>? kind;
  /// Specifies the supported Azure location where the Machine Learning Workspace should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// A `managed_network` block as defined below.
  final pulumi.Input<WorkspaceManagedNetwork>? managedNetwork;
  /// Specifies the name of the Machine Learning Workspace. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The user assigned identity id that represents the workspace identity.
  final pulumi.Input<String>? primaryUserAssignedIdentity;
  /// Enable public access when this Machine Learning Workspace is behind VNet. Defaults to `true`.
  ///
  /// > **Note:** `public_access_behind_virtual_network_enabled` is deprecated and will be removed in favour of the property `public_network_access_enabled`.
  final pulumi.Input<bool>? publicNetworkAccessEnabled;
  /// Specifies the name of the Resource Group in which the Machine Learning Workspace should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// A `serverless_compute` block as defined below.
  final pulumi.Input<WorkspaceServerlessCompute>? serverlessCompute;
  /// Whether to enable service-side encryption with customer-managed keys (CMK). Default to `false`. Changing this forces a new resource to be created.
  ///
  /// !> **Note:** Setting `service_side_encryption_enabled` requires the `encryption` block to be set. When you use service-side encryption, Azure charges will continue to accrue during the soft delete retention period.
  final pulumi.Input<bool>? serviceSideEncryptionEnabled;
  /// SKU/edition of the Machine Learning Workspace, possible values are `Free`, `Basic`, `Standard` and `Premium`. Defaults to `Basic`.
  final pulumi.Input<String>? skuName;
  /// The ID of the Storage Account associated with this Machine Learning Workspace. Changing this forces a new resource to be created.
  ///
  /// > **Note:** The `account_tier` cannot be `Premium` in order to associate the Storage Account to this Machine Learning Workspace.
  final pulumi.Input<String> storageAccountId;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// Enable V1 API features, enabling `v1_legacy_mode` may prevent you from using features provided by the v2 API. Defaults to `false`.
  final pulumi.Input<bool>? v1LegacyModeEnabled;

  /// Creates a new [WorkspaceArgs].
  /// [applicationInsightsId] The ID of the Application Insights associated with this Machine Learning Workspace. Changing this forces a new resource to be created.
  /// [containerRegistryId] The ID of the container registry associated with this Machine Learning Workspace. Changing this forces a new resource to be created.
  /// [description] The description of this Machine Learning Workspace.
  /// [encryption] An `encryption` block as defined below. Changing this forces a new resource to be created.
  /// [featureStore] A `feature_store` block as defined below.
  /// [friendlyName] Display name for this Machine Learning Workspace.
  /// [highBusinessImpact] Flag to signal High Business Impact (HBI) data in the workspace and reduce diagnostic data collected by the service. Changing this forces a new resource to be created.
  /// [identity] An `identity` block as defined below.
  /// [imageBuildComputeName] The compute name for image build of the Machine Learning Workspace.
  /// [keyVaultId] The ID of key vault associated with this Machine Learning Workspace. Changing this forces a new resource to be created.
  /// [kind] The type of the Workspace. Possible values are `Default`, `FeatureStore`. Defaults to `Default`
  /// [location] Specifies the supported Azure location where the Machine Learning Workspace should exist. Changing this forces a new resource to be created.
  /// [managedNetwork] A `managed_network` block as defined below.
  /// [name] Specifies the name of the Machine Learning Workspace. Changing this forces a new resource to be created.
  /// [primaryUserAssignedIdentity] The user assigned identity id that represents the workspace identity.
  /// [publicNetworkAccessEnabled] Enable public access when this Machine Learning Workspace is behind VNet. Defaults to `true`.
  /// [resourceGroupName] Specifies the name of the Resource Group in which the Machine Learning Workspace should exist. Changing this forces a new resource to be created.
  /// [serverlessCompute] A `serverless_compute` block as defined below.
  /// [serviceSideEncryptionEnabled] Whether to enable service-side encryption with customer-managed keys (CMK). Default to `false`. Changing this forces a new resource to be created.
  /// [skuName] SKU/edition of the Machine Learning Workspace, possible values are `Free`, `Basic`, `Standard` and `Premium`. Defaults to `Basic`.
  /// [storageAccountId] The ID of the Storage Account associated with this Machine Learning Workspace. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the resource.
  /// [v1LegacyModeEnabled] Enable V1 API features, enabling `v1_legacy_mode` may prevent you from using features provided by the v2 API. Defaults to `false`.
  WorkspaceArgs({
    required this.applicationInsightsId,
    this.containerRegistryId,
    this.description,
    this.encryption,
    this.featureStore,
    this.friendlyName,
    this.highBusinessImpact,
    required this.identity,
    this.imageBuildComputeName,
    required this.keyVaultId,
    this.kind,
    this.location,
    this.managedNetwork,
    this.name,
    this.primaryUserAssignedIdentity,
    this.publicNetworkAccessEnabled,
    required this.resourceGroupName,
    this.serverlessCompute,
    this.serviceSideEncryptionEnabled,
    this.skuName,
    required this.storageAccountId,
    this.tags,
    this.v1LegacyModeEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationInsightsId': applicationInsightsId,
      'containerRegistryId': ?containerRegistryId,
      'description': ?description,
      'encryption': ?pulumi.Input.mapOptionalInputValue<WorkspaceEncryption, Map<String, dynamic>>(encryption, (value) => value.toMap()),
      'featureStore': ?pulumi.Input.mapOptionalInputValue<WorkspaceFeatureStore, Map<String, dynamic>>(featureStore, (value) => value.toMap()),
      'friendlyName': ?friendlyName,
      'highBusinessImpact': ?highBusinessImpact,
      'identity': pulumi.Input.mapInputValue<WorkspaceIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'imageBuildComputeName': ?imageBuildComputeName,
      'keyVaultId': keyVaultId,
      'kind': ?kind,
      'location': ?location,
      'managedNetwork': ?pulumi.Input.mapOptionalInputValue<WorkspaceManagedNetwork, Map<String, dynamic>>(managedNetwork, (value) => value.toMap()),
      'name': ?name,
      'primaryUserAssignedIdentity': ?primaryUserAssignedIdentity,
      'publicNetworkAccessEnabled': ?publicNetworkAccessEnabled,
      'resourceGroupName': resourceGroupName,
      'serverlessCompute': ?pulumi.Input.mapOptionalInputValue<WorkspaceServerlessCompute, Map<String, dynamic>>(serverlessCompute, (value) => value.toMap()),
      'serviceSideEncryptionEnabled': ?serviceSideEncryptionEnabled,
      'skuName': ?skuName,
      'storageAccountId': storageAccountId,
      'tags': ?tags,
      'v1LegacyModeEnabled': ?v1LegacyModeEnabled,
    };
  }

  factory WorkspaceArgs.fromMap(Map<String, dynamic> map) {
    return WorkspaceArgs(
      applicationInsightsId: (map['applicationInsightsId'] as String).input(),
      containerRegistryId: map['containerRegistryId'] == null ? null : (map['containerRegistryId']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      encryption: map['encryption'] == null ? null : (WorkspaceEncryption.fromMap((map['encryption']! as Map).cast<String, dynamic>())).input(),
      featureStore: map['featureStore'] == null ? null : (WorkspaceFeatureStore.fromMap((map['featureStore']! as Map).cast<String, dynamic>())).input(),
      friendlyName: map['friendlyName'] == null ? null : (map['friendlyName']! as String).input(),
      highBusinessImpact: map['highBusinessImpact'] == null ? null : (map['highBusinessImpact']! as bool).input(),
      identity: (WorkspaceIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())).input(),
      imageBuildComputeName: map['imageBuildComputeName'] == null ? null : (map['imageBuildComputeName']! as String).input(),
      keyVaultId: (map['keyVaultId'] as String).input(),
      kind: map['kind'] == null ? null : (map['kind']! as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      managedNetwork: map['managedNetwork'] == null ? null : (WorkspaceManagedNetwork.fromMap((map['managedNetwork']! as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      primaryUserAssignedIdentity: map['primaryUserAssignedIdentity'] == null ? null : (map['primaryUserAssignedIdentity']! as String).input(),
      publicNetworkAccessEnabled: map['publicNetworkAccessEnabled'] == null ? null : (map['publicNetworkAccessEnabled']! as bool).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      serverlessCompute: map['serverlessCompute'] == null ? null : (WorkspaceServerlessCompute.fromMap((map['serverlessCompute']! as Map).cast<String, dynamic>())).input(),
      serviceSideEncryptionEnabled: map['serviceSideEncryptionEnabled'] == null ? null : (map['serviceSideEncryptionEnabled']! as bool).input(),
      skuName: map['skuName'] == null ? null : (map['skuName']! as String).input(),
      storageAccountId: (map['storageAccountId'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      v1LegacyModeEnabled: map['v1LegacyModeEnabled'] == null ? null : (map['v1LegacyModeEnabled']! as bool).input(),
    );
  }
}

