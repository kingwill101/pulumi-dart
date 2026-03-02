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
    this.azureDevopsRepo,
    this.azureadAuthenticationOnly,
    this.computeSubnetId,
    this.customerManagedKey,
    this.dataExfiltrationProtectionEnabled,
    this.githubRepo,
    this.identity,
    this.linkingAllowedForAadTenantIds,
    this.location,
    this.managedResourceGroupName,
    this.managedVirtualNetworkEnabled,
    this.name,
    this.publicNetworkAccessEnabled,
    this.purviewId,
    required this.resourceGroupName,
    this.sqlAdministratorLogin,
    this.sqlAdministratorLoginPassword,
    this.sqlIdentityControlEnabled,
    required this.storageDataLakeGen2FilesystemId,
    this.tags,
  });

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
      azureDevopsRepo: map['azureDevopsRepo'] == null ? null : (WorkspaceAzureDevopsRepo.fromMap((map['azureDevopsRepo']! as Map).cast<String, dynamic>())).input(),
      azureadAuthenticationOnly: map['azureadAuthenticationOnly'] == null ? null : (map['azureadAuthenticationOnly']! as bool).input(),
      computeSubnetId: map['computeSubnetId'] == null ? null : (map['computeSubnetId']! as String).input(),
      customerManagedKey: map['customerManagedKey'] == null ? null : (WorkspaceCustomerManagedKey.fromMap((map['customerManagedKey']! as Map).cast<String, dynamic>())).input(),
      dataExfiltrationProtectionEnabled: map['dataExfiltrationProtectionEnabled'] == null ? null : (map['dataExfiltrationProtectionEnabled']! as bool).input(),
      githubRepo: map['githubRepo'] == null ? null : (WorkspaceGithubRepo.fromMap((map['githubRepo']! as Map).cast<String, dynamic>())).input(),
      identity: map['identity'] == null ? null : (WorkspaceIdentity.fromMap((map['identity']! as Map).cast<String, dynamic>())).input(),
      linkingAllowedForAadTenantIds: map['linkingAllowedForAadTenantIds'] == null ? null : ((map['linkingAllowedForAadTenantIds']! as List).cast<String>()).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      managedResourceGroupName: map['managedResourceGroupName'] == null ? null : (map['managedResourceGroupName']! as String).input(),
      managedVirtualNetworkEnabled: map['managedVirtualNetworkEnabled'] == null ? null : (map['managedVirtualNetworkEnabled']! as bool).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      publicNetworkAccessEnabled: map['publicNetworkAccessEnabled'] == null ? null : (map['publicNetworkAccessEnabled']! as bool).input(),
      purviewId: map['purviewId'] == null ? null : (map['purviewId']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      sqlAdministratorLogin: map['sqlAdministratorLogin'] == null ? null : (map['sqlAdministratorLogin']! as String).input(),
      sqlAdministratorLoginPassword: map['sqlAdministratorLoginPassword'] == null ? null : (map['sqlAdministratorLoginPassword']! as String).input(),
      sqlIdentityControlEnabled: map['sqlIdentityControlEnabled'] == null ? null : (map['sqlIdentityControlEnabled']! as bool).input(),
      storageDataLakeGen2FilesystemId: (map['storageDataLakeGen2FilesystemId'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

