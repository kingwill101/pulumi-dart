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
  /// An `azureDevopsRepo` block as defined below.
  final pulumi.Input<WorkspaceAzureDevopsRepo?>? azureDevopsRepo;
  /// Is Azure Active Directory Authentication the only way to authenticate with resources inside this synapse Workspace. Defaults to `false`.
  final pulumi.Input<bool?>? azureadAuthenticationOnly;
  /// Subnet ID used for computes in workspace Changing this forces a new resource to be created.
  final pulumi.Input<String?>? computeSubnetId;
  /// A `customerManagedKey` block as defined below.
  final pulumi.Input<WorkspaceCustomerManagedKey?>? customerManagedKey;
  /// Is data exfiltration protection enabled in this workspace? If set to `true`, `managedVirtualNetworkEnabled` must also be set to `true`. Changing this forces a new resource to be created.
  final pulumi.Input<bool?>? dataExfiltrationProtectionEnabled;
  /// A `githubRepo` block as defined below.
  final pulumi.Input<WorkspaceGithubRepo?>? githubRepo;
  /// An `identity` block as defined below.
  final pulumi.Input<WorkspaceIdentity?>? identity;
  /// Allowed AAD Tenant Ids For Linking.
  final pulumi.Input<List<String>?>? linkingAllowedForAadTenantIds;
  /// Specifies the Azure Region where the synapse Workspace should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? location;
  /// Workspace managed resource group. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? managedResourceGroupName;
  /// Is Virtual Network enabled for all computes in this workspace? Changing this forces a new resource to be created.
  final pulumi.Input<bool?>? managedVirtualNetworkEnabled;
  /// Specifies the name which should be used for this synapse Workspace. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? name;
  /// Whether public network access is allowed for the Cognitive Account. Defaults to `true`.
  final pulumi.Input<bool?>? publicNetworkAccessEnabled;
  /// The ID of purview account.
  final pulumi.Input<String?>? purviewId;
  /// Specifies the name of the Resource Group where the synapse Workspace should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// Specifies The login name of the SQL administrator. Changing this forces a new resource to be created. If this is not provided `customerManagedKey` must be provided.
  final pulumi.Input<String?>? sqlAdministratorLogin;
  /// The Password associated with the `sqlAdministratorLogin` for the SQL administrator. If this is not provided `customerManagedKey` must be provided.
  final pulumi.Input<String?>? sqlAdministratorLoginPassword;
  /// Are pipelines (running as workspace's system assigned identity) allowed to access SQL pools?
  final pulumi.Input<bool?>? sqlIdentityControlEnabled;
  /// Specifies the ID of storage data lake gen2 filesystem resource. Changing this forces a new resource to be created.
  final pulumi.Input<String> storageDataLakeGen2FilesystemId;
  /// A mapping of tags which should be assigned to the Synapse Workspace.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [WorkspaceArgs].
  /// [azureDevopsRepo] An `azureDevopsRepo` block as defined below.
  /// [azureadAuthenticationOnly] Is Azure Active Directory Authentication the only way to authenticate with resources inside this synapse Workspace. Defaults to `false`.
  /// [computeSubnetId] Subnet ID used for computes in workspace Changing this forces a new resource to be created.
  /// [customerManagedKey] A `customerManagedKey` block as defined below.
  /// [dataExfiltrationProtectionEnabled] Is data exfiltration protection enabled in this workspace? If set to `true`, `managedVirtualNetworkEnabled` must also be set to `true`. Changing this forces a new resource to be created.
  /// [githubRepo] A `githubRepo` block as defined below.
  /// [identity] An `identity` block as defined below.
  /// [linkingAllowedForAadTenantIds] Allowed AAD Tenant Ids For Linking.
  /// [location] Specifies the Azure Region where the synapse Workspace should exist. Changing this forces a new resource to be created.
  /// [managedResourceGroupName] Workspace managed resource group. Changing this forces a new resource to be created.
  /// [managedVirtualNetworkEnabled] Is Virtual Network enabled for all computes in this workspace? Changing this forces a new resource to be created.
  /// [name] Specifies the name which should be used for this synapse Workspace. Changing this forces a new resource to be created.
  /// [publicNetworkAccessEnabled] Whether public network access is allowed for the Cognitive Account. Defaults to `true`.
  /// [purviewId] The ID of purview account.
  /// [resourceGroupName] Specifies the name of the Resource Group where the synapse Workspace should exist. Changing this forces a new resource to be created.
  /// [sqlAdministratorLogin] Specifies The login name of the SQL administrator. Changing this forces a new resource to be created. If this is not provided `customerManagedKey` must be provided.
  /// [sqlAdministratorLoginPassword] The Password associated with the `sqlAdministratorLogin` for the SQL administrator. If this is not provided `customerManagedKey` must be provided.
  /// [sqlIdentityControlEnabled] Are pipelines (running as workspace's system assigned identity) allowed to access SQL pools?
  /// [storageDataLakeGen2FilesystemId] Specifies the ID of storage data lake gen2 filesystem resource. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags which should be assigned to the Synapse Workspace.
  const WorkspaceArgs({
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
      azureDevopsRepo: (() { final guardedValue = map['azureDevopsRepo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkspaceAzureDevopsRepo.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      azureadAuthenticationOnly: (() { final guardedValue = map['azureadAuthenticationOnly']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      computeSubnetId: (() { final guardedValue = map['computeSubnetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customerManagedKey: (() { final guardedValue = map['customerManagedKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkspaceCustomerManagedKey.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dataExfiltrationProtectionEnabled: (() { final guardedValue = map['dataExfiltrationProtectionEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      githubRepo: (() { final guardedValue = map['githubRepo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkspaceGithubRepo.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkspaceIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      linkingAllowedForAadTenantIds: (() { final guardedValue = map['linkingAllowedForAadTenantIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      managedResourceGroupName: (() { final guardedValue = map['managedResourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      managedVirtualNetworkEnabled: (() { final guardedValue = map['managedVirtualNetworkEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicNetworkAccessEnabled: (() { final guardedValue = map['publicNetworkAccessEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      purviewId: (() { final guardedValue = map['purviewId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      sqlAdministratorLogin: (() { final guardedValue = map['sqlAdministratorLogin']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sqlAdministratorLoginPassword: (() { final guardedValue = map['sqlAdministratorLoginPassword']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sqlIdentityControlEnabled: (() { final guardedValue = map['sqlIdentityControlEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      storageDataLakeGen2FilesystemId: pulumi.Input.fromValue(map['storageDataLakeGen2FilesystemId'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
