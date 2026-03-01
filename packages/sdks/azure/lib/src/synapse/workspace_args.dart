// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workspace_azure_devops_repo.dart';
import 'workspace_customer_managed_key.dart';
import 'workspace_github_repo.dart';
import 'workspace_identity.dart';

/// {@template pulumi_synapse_workspace_workspace_args_doc}
/// The set of arguments for Workspace.
/// {@endtemplate}
/// {@macro pulumi_synapse_workspace_workspace_args_doc}
class WorkspaceArgs {
  /// An `azure_devops_repo` block as defined below.
  final pulumi.Input<WorkspaceAzureDevopsRepo>? azureDevopsRepo;
  /// Is Azure Active Directory Authentication the only way to authenticate with resources inside this synapse Workspace. Defaults to `false`.
  final pulumi.Input<bool>? azureadAuthenticationOnly;
  /// Subnet ID used for computes in workspace Changing this forces a new resource to be created.
  final pulumi.Input<String>? computeSubnetId;
  /// A `customer_managed_key` block as defined below.
  final pulumi.Input<WorkspaceCustomerManagedKey>? customerManagedKey;
  /// Is data exfiltration protection enabled in this workspace? If set to `true`, `managed_virtual_network_enabled` must also be set to `true`. Changing this forces a new resource to be created.
  final pulumi.Input<bool>? dataExfiltrationProtectionEnabled;
  /// A `github_repo` block as defined below.
  final pulumi.Input<WorkspaceGithubRepo>? githubRepo;
  /// An `identity` block as defined below.
  final pulumi.Input<WorkspaceIdentity>? identity;
  /// Allowed AAD Tenant Ids For Linking.
  final pulumi.Input<List<String>>? linkingAllowedForAadTenantIds;
  /// Specifies the Azure Region where the synapse Workspace should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// Workspace managed resource group. Changing this forces a new resource to be created.
  final pulumi.Input<String>? managedResourceGroupName;
  /// Is Virtual Network enabled for all computes in this workspace? Changing this forces a new resource to be created.
  final pulumi.Input<bool>? managedVirtualNetworkEnabled;
  /// Specifies the name which should be used for this synapse Workspace. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Whether public network access is allowed for the Cognitive Account. Defaults to `true`.
  final pulumi.Input<bool>? publicNetworkAccessEnabled;
  /// The ID of purview account.
  final pulumi.Input<String>? purviewId;
  /// Specifies the name of the Resource Group where the synapse Workspace should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// Specifies The login name of the SQL administrator. Changing this forces a new resource to be created. If this is not provided `customer_managed_key` must be provided.
  final pulumi.Input<String>? sqlAdministratorLogin;
  /// The Password associated with the `sql_administrator_login` for the SQL administrator. If this is not provided `customer_managed_key` must be provided.
  final pulumi.Input<String>? sqlAdministratorLoginPassword;
  /// Are pipelines (running as workspace's system assigned identity) allowed to access SQL pools?
  final pulumi.Input<bool>? sqlIdentityControlEnabled;
  /// Specifies the ID of storage data lake gen2 filesystem resource. Changing this forces a new resource to be created.
  final pulumi.Input<String> storageDataLakeGen2FilesystemId;
  /// A mapping of tags which should be assigned to the Synapse Workspace.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [WorkspaceArgs].
  /// [azureDevopsRepo] An `azure_devops_repo` block as defined below.
  /// [azureadAuthenticationOnly] Is Azure Active Directory Authentication the only way to authenticate with resources inside this synapse Workspace. Defaults to `false`.
  /// [computeSubnetId] Subnet ID used for computes in workspace Changing this forces a new resource to be created.
  /// [customerManagedKey] A `customer_managed_key` block as defined below.
  /// [dataExfiltrationProtectionEnabled] Is data exfiltration protection enabled in this workspace? If set to `true`, `managed_virtual_network_enabled` must also be set to `true`. Changing this forces a new resource to be created.
  /// [githubRepo] A `github_repo` block as defined below.
  /// [identity] An `identity` block as defined below.
  /// [linkingAllowedForAadTenantIds] Allowed AAD Tenant Ids For Linking.
  /// [location] Specifies the Azure Region where the synapse Workspace should exist. Changing this forces a new resource to be created.
  /// [managedResourceGroupName] Workspace managed resource group. Changing this forces a new resource to be created.
  /// [managedVirtualNetworkEnabled] Is Virtual Network enabled for all computes in this workspace? Changing this forces a new resource to be created.
  /// [name] Specifies the name which should be used for this synapse Workspace. Changing this forces a new resource to be created.
  /// [publicNetworkAccessEnabled] Whether public network access is allowed for the Cognitive Account. Defaults to `true`.
  /// [purviewId] The ID of purview account.
  /// [resourceGroupName] Specifies the name of the Resource Group where the synapse Workspace should exist. Changing this forces a new resource to be created.
  /// [sqlAdministratorLogin] Specifies The login name of the SQL administrator. Changing this forces a new resource to be created. If this is not provided `customer_managed_key` must be provided.
  /// [sqlAdministratorLoginPassword] The Password associated with the `sql_administrator_login` for the SQL administrator. If this is not provided `customer_managed_key` must be provided.
  /// [sqlIdentityControlEnabled] Are pipelines (running as workspace's system assigned identity) allowed to access SQL pools?
  /// [storageDataLakeGen2FilesystemId] Specifies the ID of storage data lake gen2 filesystem resource. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags which should be assigned to the Synapse Workspace.
  WorkspaceArgs({
    pulumi.Output<WorkspaceAzureDevopsRepo>? azureDevopsRepo,
    pulumi.Output<bool>? azureadAuthenticationOnly,
    pulumi.Output<String>? computeSubnetId,
    pulumi.Output<WorkspaceCustomerManagedKey>? customerManagedKey,
    pulumi.Output<bool>? dataExfiltrationProtectionEnabled,
    pulumi.Output<WorkspaceGithubRepo>? githubRepo,
    pulumi.Output<WorkspaceIdentity>? identity,
    pulumi.Output<List<String>>? linkingAllowedForAadTenantIds,
    pulumi.Output<String>? location,
    pulumi.Output<String>? managedResourceGroupName,
    pulumi.Output<bool>? managedVirtualNetworkEnabled,
    pulumi.Output<String>? name,
    pulumi.Output<bool>? publicNetworkAccessEnabled,
    pulumi.Output<String>? purviewId,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? sqlAdministratorLogin,
    pulumi.Output<String>? sqlAdministratorLoginPassword,
    pulumi.Output<bool>? sqlIdentityControlEnabled,
    required pulumi.Output<String> storageDataLakeGen2FilesystemId,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      azureDevopsRepo = pulumi.Input.asOptionalInput<WorkspaceAzureDevopsRepo>(azureDevopsRepo),
      azureadAuthenticationOnly = pulumi.Input.asOptionalInput<bool>(azureadAuthenticationOnly),
      computeSubnetId = pulumi.Input.asOptionalInput<String>(computeSubnetId),
      customerManagedKey = pulumi.Input.asOptionalInput<WorkspaceCustomerManagedKey>(customerManagedKey),
      dataExfiltrationProtectionEnabled = pulumi.Input.asOptionalInput<bool>(dataExfiltrationProtectionEnabled),
      githubRepo = pulumi.Input.asOptionalInput<WorkspaceGithubRepo>(githubRepo),
      identity = pulumi.Input.asOptionalInput<WorkspaceIdentity>(identity),
      linkingAllowedForAadTenantIds = pulumi.Input.asOptionalInput<List<String>>(linkingAllowedForAadTenantIds),
      location = pulumi.Input.asOptionalInput<String>(location),
      managedResourceGroupName = pulumi.Input.asOptionalInput<String>(managedResourceGroupName),
      managedVirtualNetworkEnabled = pulumi.Input.asOptionalInput<bool>(managedVirtualNetworkEnabled),
      name = pulumi.Input.asOptionalInput<String>(name),
      publicNetworkAccessEnabled = pulumi.Input.asOptionalInput<bool>(publicNetworkAccessEnabled),
      purviewId = pulumi.Input.asOptionalInput<String>(purviewId),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      sqlAdministratorLogin = pulumi.Input.asOptionalInput<String>(sqlAdministratorLogin),
      sqlAdministratorLoginPassword = pulumi.Input.asOptionalInput<String>(sqlAdministratorLoginPassword),
      sqlIdentityControlEnabled = pulumi.Input.asOptionalInput<bool>(sqlIdentityControlEnabled),
      storageDataLakeGen2FilesystemId = pulumi.Input.asInput<String>(storageDataLakeGen2FilesystemId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureDevopsRepo': ?pulumi.Input.mapOptionalInputValue<WorkspaceAzureDevopsRepo, Map<String, dynamic>>(azureDevopsRepo, (value) => value.toMap()),
      'azureadAuthenticationOnly': ?azureadAuthenticationOnly,
      'computeSubnetId': ?computeSubnetId,
      'customerManagedKey': ?pulumi.Input.mapOptionalInputValue<WorkspaceCustomerManagedKey, Map<String, dynamic>>(customerManagedKey, (value) => value.toMap()),
      'dataExfiltrationProtectionEnabled': ?dataExfiltrationProtectionEnabled,
      'githubRepo': ?pulumi.Input.mapOptionalInputValue<WorkspaceGithubRepo, Map<String, dynamic>>(githubRepo, (value) => value.toMap()),
      'identity': ?pulumi.Input.mapOptionalInputValue<WorkspaceIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'linkingAllowedForAadTenantIds': ?linkingAllowedForAadTenantIds,
      'location': ?location,
      'managedResourceGroupName': ?managedResourceGroupName,
      'managedVirtualNetworkEnabled': ?managedVirtualNetworkEnabled,
      'name': ?name,
      'publicNetworkAccessEnabled': ?publicNetworkAccessEnabled,
      'purviewId': ?purviewId,
      'resourceGroupName': resourceGroupName,
      'sqlAdministratorLogin': ?sqlAdministratorLogin,
      'sqlAdministratorLoginPassword': ?sqlAdministratorLoginPassword,
      'sqlIdentityControlEnabled': ?sqlIdentityControlEnabled,
      'storageDataLakeGen2FilesystemId': storageDataLakeGen2FilesystemId,
      'tags': ?tags,
    };
  }

  factory WorkspaceArgs.fromMap(Map<String, dynamic> map) {
    return WorkspaceArgs(
      azureDevopsRepo: map['azureDevopsRepo'] == null ? null : pulumi.Output.create<WorkspaceAzureDevopsRepo>(WorkspaceAzureDevopsRepo.fromMap((map['azureDevopsRepo'] as Map).cast<String, dynamic>())),
      azureadAuthenticationOnly: map['azureadAuthenticationOnly'] == null ? null : pulumi.Output.create<bool>(map['azureadAuthenticationOnly'] as bool),
      computeSubnetId: map['computeSubnetId'] == null ? null : pulumi.Output.create<String>(map['computeSubnetId'] as String),
      customerManagedKey: map['customerManagedKey'] == null ? null : pulumi.Output.create<WorkspaceCustomerManagedKey>(WorkspaceCustomerManagedKey.fromMap((map['customerManagedKey'] as Map).cast<String, dynamic>())),
      dataExfiltrationProtectionEnabled: map['dataExfiltrationProtectionEnabled'] == null ? null : pulumi.Output.create<bool>(map['dataExfiltrationProtectionEnabled'] as bool),
      githubRepo: map['githubRepo'] == null ? null : pulumi.Output.create<WorkspaceGithubRepo>(WorkspaceGithubRepo.fromMap((map['githubRepo'] as Map).cast<String, dynamic>())),
      identity: map['identity'] == null ? null : pulumi.Output.create<WorkspaceIdentity>(WorkspaceIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      linkingAllowedForAadTenantIds: map['linkingAllowedForAadTenantIds'] == null ? null : pulumi.Output.create<List<String>>((map['linkingAllowedForAadTenantIds'] as List).cast<String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      managedResourceGroupName: map['managedResourceGroupName'] == null ? null : pulumi.Output.create<String>(map['managedResourceGroupName'] as String),
      managedVirtualNetworkEnabled: map['managedVirtualNetworkEnabled'] == null ? null : pulumi.Output.create<bool>(map['managedVirtualNetworkEnabled'] as bool),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      publicNetworkAccessEnabled: map['publicNetworkAccessEnabled'] == null ? null : pulumi.Output.create<bool>(map['publicNetworkAccessEnabled'] as bool),
      purviewId: map['purviewId'] == null ? null : pulumi.Output.create<String>(map['purviewId'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      sqlAdministratorLogin: map['sqlAdministratorLogin'] == null ? null : pulumi.Output.create<String>(map['sqlAdministratorLogin'] as String),
      sqlAdministratorLoginPassword: map['sqlAdministratorLoginPassword'] == null ? null : pulumi.Output.create<String>(map['sqlAdministratorLoginPassword'] as String),
      sqlIdentityControlEnabled: map['sqlIdentityControlEnabled'] == null ? null : pulumi.Output.create<bool>(map['sqlIdentityControlEnabled'] as bool),
      storageDataLakeGen2FilesystemId: pulumi.Output.create<String>(map['storageDataLakeGen2FilesystemId'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

