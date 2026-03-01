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
    required pulumi.Output<String> applicationInsightsId,
    pulumi.Output<String>? containerRegistryId,
    pulumi.Output<String>? description,
    pulumi.Output<WorkspaceEncryption>? encryption,
    pulumi.Output<WorkspaceFeatureStore>? featureStore,
    pulumi.Output<String>? friendlyName,
    pulumi.Output<bool>? highBusinessImpact,
    required pulumi.Output<WorkspaceIdentity> identity,
    pulumi.Output<String>? imageBuildComputeName,
    required pulumi.Output<String> keyVaultId,
    pulumi.Output<String>? kind,
    pulumi.Output<String>? location,
    pulumi.Output<WorkspaceManagedNetwork>? managedNetwork,
    pulumi.Output<String>? name,
    pulumi.Output<String>? primaryUserAssignedIdentity,
    pulumi.Output<bool>? publicNetworkAccessEnabled,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<WorkspaceServerlessCompute>? serverlessCompute,
    pulumi.Output<bool>? serviceSideEncryptionEnabled,
    pulumi.Output<String>? skuName,
    required pulumi.Output<String> storageAccountId,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<bool>? v1LegacyModeEnabled,
  }) :
      applicationInsightsId = pulumi.Input.asInput<String>(applicationInsightsId),
      containerRegistryId = pulumi.Input.asOptionalInput<String>(containerRegistryId),
      description = pulumi.Input.asOptionalInput<String>(description),
      encryption = pulumi.Input.asOptionalInput<WorkspaceEncryption>(encryption),
      featureStore = pulumi.Input.asOptionalInput<WorkspaceFeatureStore>(featureStore),
      friendlyName = pulumi.Input.asOptionalInput<String>(friendlyName),
      highBusinessImpact = pulumi.Input.asOptionalInput<bool>(highBusinessImpact),
      identity = pulumi.Input.asInput<WorkspaceIdentity>(identity),
      imageBuildComputeName = pulumi.Input.asOptionalInput<String>(imageBuildComputeName),
      keyVaultId = pulumi.Input.asInput<String>(keyVaultId),
      kind = pulumi.Input.asOptionalInput<String>(kind),
      location = pulumi.Input.asOptionalInput<String>(location),
      managedNetwork = pulumi.Input.asOptionalInput<WorkspaceManagedNetwork>(managedNetwork),
      name = pulumi.Input.asOptionalInput<String>(name),
      primaryUserAssignedIdentity = pulumi.Input.asOptionalInput<String>(primaryUserAssignedIdentity),
      publicNetworkAccessEnabled = pulumi.Input.asOptionalInput<bool>(publicNetworkAccessEnabled),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serverlessCompute = pulumi.Input.asOptionalInput<WorkspaceServerlessCompute>(serverlessCompute),
      serviceSideEncryptionEnabled = pulumi.Input.asOptionalInput<bool>(serviceSideEncryptionEnabled),
      skuName = pulumi.Input.asOptionalInput<String>(skuName),
      storageAccountId = pulumi.Input.asInput<String>(storageAccountId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      v1LegacyModeEnabled = pulumi.Input.asOptionalInput<bool>(v1LegacyModeEnabled);

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
      applicationInsightsId: pulumi.Output.create<String>(map['applicationInsightsId'] as String),
      containerRegistryId: map['containerRegistryId'] == null ? null : pulumi.Output.create<String>(map['containerRegistryId'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      encryption: map['encryption'] == null ? null : pulumi.Output.create<WorkspaceEncryption>(WorkspaceEncryption.fromMap((map['encryption'] as Map).cast<String, dynamic>())),
      featureStore: map['featureStore'] == null ? null : pulumi.Output.create<WorkspaceFeatureStore>(WorkspaceFeatureStore.fromMap((map['featureStore'] as Map).cast<String, dynamic>())),
      friendlyName: map['friendlyName'] == null ? null : pulumi.Output.create<String>(map['friendlyName'] as String),
      highBusinessImpact: map['highBusinessImpact'] == null ? null : pulumi.Output.create<bool>(map['highBusinessImpact'] as bool),
      identity: pulumi.Output.create<WorkspaceIdentity>(WorkspaceIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      imageBuildComputeName: map['imageBuildComputeName'] == null ? null : pulumi.Output.create<String>(map['imageBuildComputeName'] as String),
      keyVaultId: pulumi.Output.create<String>(map['keyVaultId'] as String),
      kind: map['kind'] == null ? null : pulumi.Output.create<String>(map['kind'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      managedNetwork: map['managedNetwork'] == null ? null : pulumi.Output.create<WorkspaceManagedNetwork>(WorkspaceManagedNetwork.fromMap((map['managedNetwork'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      primaryUserAssignedIdentity: map['primaryUserAssignedIdentity'] == null ? null : pulumi.Output.create<String>(map['primaryUserAssignedIdentity'] as String),
      publicNetworkAccessEnabled: map['publicNetworkAccessEnabled'] == null ? null : pulumi.Output.create<bool>(map['publicNetworkAccessEnabled'] as bool),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      serverlessCompute: map['serverlessCompute'] == null ? null : pulumi.Output.create<WorkspaceServerlessCompute>(WorkspaceServerlessCompute.fromMap((map['serverlessCompute'] as Map).cast<String, dynamic>())),
      serviceSideEncryptionEnabled: map['serviceSideEncryptionEnabled'] == null ? null : pulumi.Output.create<bool>(map['serviceSideEncryptionEnabled'] as bool),
      skuName: map['skuName'] == null ? null : pulumi.Output.create<String>(map['skuName'] as String),
      storageAccountId: pulumi.Output.create<String>(map['storageAccountId'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      v1LegacyModeEnabled: map['v1LegacyModeEnabled'] == null ? null : pulumi.Output.create<bool>(map['v1LegacyModeEnabled'] as bool),
    );
  }
}

