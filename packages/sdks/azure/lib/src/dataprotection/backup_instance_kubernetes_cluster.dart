import 'package:pulumi/pulumi.dart' as pulumi;
import 'backup_instance_kubernetes_cluster_args.dart';
import 'backup_instance_kubernetes_cluster_backup_datasource_parameters.dart';
import 'backup_instance_kubernetes_cluster_state.dart';

/// Manages a Backup Instance to back up a Kubernetes Cluster.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const current = azure.core.getClientConfig({});
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example",
///     location: "West Europe",
/// });
/// const snap = new azure.core.ResourceGroup("snap", {
///     name: "example-snap",
///     location: "West Europe",
/// });
/// const exampleBackupVault = new azure.dataprotection.BackupVault("example", {
///     name: "example",
///     resourceGroupName: example.name,
///     location: example.location,
///     datastoreType: "VaultStore",
///     redundancy: "LocallyRedundant",
///     identity: {
///         type: "SystemAssigned",
///     },
/// });
/// const exampleKubernetesCluster = new azure.containerservice.KubernetesCluster("example", {
///     name: "example",
///     location: example.location,
///     resourceGroupName: example.name,
///     dnsPrefix: "dns",
///     defaultNodePool: {
///         name: "default",
///         nodeCount: 1,
///         vmSize: "Standard_DS2_v2",
///         hostEncryptionEnabled: true,
///     },
///     identity: {
///         type: "SystemAssigned",
///     },
/// });
/// const aksClusterTrustedAccess = new azure.containerservice.ClusterTrustedAccessRoleBinding("aks_cluster_trusted_access", {
///     kubernetesClusterId: exampleKubernetesCluster.id,
///     name: "example",
///     roles: ["Microsoft.DataProtection/backupVaults/backup-operator"],
///     sourceResourceId: exampleBackupVault.id,
/// });
/// const exampleAccount = new azure.storage.Account("example", {
///     name: "example",
///     resourceGroupName: example.name,
///     location: example.location,
///     accountTier: "Standard",
///     accountReplicationType: "LRS",
/// });
/// const exampleContainer = new azure.storage.Container("example", {
///     name: "example",
///     storageAccountName: exampleAccount.name,
///     containerAccessType: "private",
/// });
/// const exampleKubernetesClusterExtension = new azure.containerservice.KubernetesClusterExtension("example", {
///     name: "example",
///     clusterId: exampleKubernetesCluster.id,
///     extensionType: "Microsoft.DataProtection.Kubernetes",
///     releaseTrain: "stable",
///     releaseNamespace: "dataprotection-microsoft",
///     configurationSettings: {
///         "configuration.backupStorageLocation.bucket": exampleContainer.name,
///         "configuration.backupStorageLocation.config.resourceGroup": example.name,
///         "configuration.backupStorageLocation.config.storageAccount": exampleAccount.name,
///         "configuration.backupStorageLocation.config.subscriptionId": current.then(current => current.subscriptionId),
///         "credentials.tenantId": current.then(current => current.tenantId),
///     },
/// });
/// const testExtensionAndStorageAccountPermission = new azure.authorization.Assignment("test_extension_and_storage_account_permission", {
///     scope: exampleAccount.id,
///     roleDefinitionName: "Storage Account Contributor",
///     principalId: exampleKubernetesClusterExtension.aksAssignedIdentities[0].principalId,
/// });
/// const testVaultMsiReadOnCluster = new azure.authorization.Assignment("test_vault_msi_read_on_cluster", {
///     scope: exampleKubernetesCluster.id,
///     roleDefinitionName: "Reader",
///     principalId: exampleBackupVault.identity.apply(identity => identity?.principalId),
/// });
/// const testVaultMsiReadOnSnapRg = new azure.authorization.Assignment("test_vault_msi_read_on_snap_rg", {
///     scope: snap.id,
///     roleDefinitionName: "Reader",
///     principalId: exampleBackupVault.identity.apply(identity => identity?.principalId),
/// });
/// const testVaultMsiSnapshotContributorOnSnapRg = new azure.authorization.Assignment("test_vault_msi_snapshot_contributor_on_snap_rg", {
///     scope: snap.id,
///     roleDefinitionName: "Disk Snapshot Contributor",
///     principalId: exampleBackupVault.identity.apply(identity => identity?.principalId),
/// });
/// const testVaultDataOperatorOnSnapRg = new azure.authorization.Assignment("test_vault_data_operator_on_snap_rg", {
///     scope: snap.id,
///     roleDefinitionName: "Data Operator for Managed Disks",
///     principalId: exampleBackupVault.identity.apply(identity => identity?.principalId),
/// });
/// const testVaultDataContributorOnStorage = new azure.authorization.Assignment("test_vault_data_contributor_on_storage", {
///     scope: exampleAccount.id,
///     roleDefinitionName: "Storage Blob Data Contributor",
///     principalId: exampleBackupVault.identity.apply(identity => identity?.principalId),
/// });
/// const testClusterMsiContributorOnSnapRg = new azure.authorization.Assignment("test_cluster_msi_contributor_on_snap_rg", {
///     scope: snap.id,
///     roleDefinitionName: "Contributor",
///     principalId: exampleKubernetesCluster.identity.apply(identity => identity?.principalId),
/// });
/// const exampleBackupPolicyKubernetesCluster = new azure.dataprotection.BackupPolicyKubernetesCluster("example", {
///     name: "example",
///     resourceGroupName: example.name,
///     vaultName: exampleBackupVault.name,
///     backupRepeatingTimeIntervals: ["R/2023-05-23T02:30:00+00:00/P1W"],
///     retentionRules: [{
///         name: "Daily",
///         priority: 25,
///         lifeCycles: [{
///             duration: "P84D",
///             dataStoreType: "OperationalStore",
///         }],
///         criteria: {
///             daysOfWeeks: ["Thursday"],
///             monthsOfYears: ["November"],
///             weeksOfMonths: ["First"],
///             scheduledBackupTimes: ["2023-05-23T02:30:00Z"],
///         },
///     }],
///     defaultRetentionRule: {
///         lifeCycles: [{
///             duration: "P14D",
///             dataStoreType: "OperationalStore",
///         }],
///     },
/// });
/// const exampleBackupInstanceKubernetesCluster = new azure.dataprotection.BackupInstanceKubernetesCluster("example", {
///     name: "example",
///     location: example.location,
///     vaultId: exampleBackupVault.id,
///     kubernetesClusterId: exampleKubernetesCluster.id,
///     snapshotResourceGroupName: snap.name,
///     backupPolicyId: exampleBackupPolicyKubernetesCluster.id,
///     backupDatasourceParameters: {
///         excludedNamespaces: ["test-excluded-namespaces"],
///         excludedResourceTypes: ["exvolumesnapshotcontents.snapshot.storage.k8s.io"],
///         clusterScopedResourcesEnabled: true,
///         includedNamespaces: ["test-included-namespaces"],
///         includedResourceTypes: ["involumesnapshotcontents.snapshot.storage.k8s.io"],
///         labelSelectors: ["kubernetes.io/metadata.name:test"],
///         volumeSnapshotEnabled: true,
///     },
/// }, {
///     dependsOn: [
///         testExtensionAndStorageAccountPermission,
///         testVaultMsiReadOnCluster,
///         testVaultMsiReadOnSnapRg,
///         testClusterMsiContributorOnSnapRg,
///         testVaultMsiSnapshotContributorOnSnapRg,
///         testVaultDataOperatorOnSnapRg,
///         testVaultDataContributorOnStorage,
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// current = azure.core.get_client_config()
/// example = azure.core.ResourceGroup("example",
///     name="example",
///     location="West Europe")
/// snap = azure.core.ResourceGroup("snap",
///     name="example-snap",
///     location="West Europe")
/// example_backup_vault = azure.dataprotection.BackupVault("example",
///     name="example",
///     resource_group_name=example.name,
///     location=example.location,
///     datastore_type="VaultStore",
///     redundancy="LocallyRedundant",
///     identity={
///         "type": "SystemAssigned",
///     })
/// example_kubernetes_cluster = azure.containerservice.KubernetesCluster("example",
///     name="example",
///     location=example.location,
///     resource_group_name=example.name,
///     dns_prefix="dns",
///     default_node_pool={
///         "name": "default",
///         "node_count": 1,
///         "vm_size": "Standard_DS2_v2",
///         "host_encryption_enabled": True,
///     },
///     identity={
///         "type": "SystemAssigned",
///     })
/// aks_cluster_trusted_access = azure.containerservice.ClusterTrustedAccessRoleBinding("aks_cluster_trusted_access",
///     kubernetes_cluster_id=example_kubernetes_cluster.id,
///     name="example",
///     roles=["Microsoft.DataProtection/backupVaults/backup-operator"],
///     source_resource_id=example_backup_vault.id)
/// example_account = azure.storage.Account("example",
///     name="example",
///     resource_group_name=example.name,
///     location=example.location,
///     account_tier="Standard",
///     account_replication_type="LRS")
/// example_container = azure.storage.Container("example",
///     name="example",
///     storage_account_name=example_account.name,
///     container_access_type="private")
/// example_kubernetes_cluster_extension = azure.containerservice.KubernetesClusterExtension("example",
///     name="example",
///     cluster_id=example_kubernetes_cluster.id,
///     extension_type="Microsoft.DataProtection.Kubernetes",
///     release_train="stable",
///     release_namespace="dataprotection-microsoft",
///     configuration_settings={
///         "configuration.backupStorageLocation.bucket": example_container.name,
///         "configuration.backupStorageLocation.config.resourceGroup": example.name,
///         "configuration.backupStorageLocation.config.storageAccount": example_account.name,
///         "configuration.backupStorageLocation.config.subscriptionId": current.subscription_id,
///         "credentials.tenantId": current.tenant_id,
///     })
/// test_extension_and_storage_account_permission = azure.authorization.Assignment("test_extension_and_storage_account_permission",
///     scope=example_account.id,
///     role_definition_name="Storage Account Contributor",
///     principal_id=example_kubernetes_cluster_extension.aks_assigned_identities[0].principal_id)
/// test_vault_msi_read_on_cluster = azure.authorization.Assignment("test_vault_msi_read_on_cluster",
///     scope=example_kubernetes_cluster.id,
///     role_definition_name="Reader",
///     principal_id=example_backup_vault.identity.principal_id)
/// test_vault_msi_read_on_snap_rg = azure.authorization.Assignment("test_vault_msi_read_on_snap_rg",
///     scope=snap.id,
///     role_definition_name="Reader",
///     principal_id=example_backup_vault.identity.principal_id)
/// test_vault_msi_snapshot_contributor_on_snap_rg = azure.authorization.Assignment("test_vault_msi_snapshot_contributor_on_snap_rg",
///     scope=snap.id,
///     role_definition_name="Disk Snapshot Contributor",
///     principal_id=example_backup_vault.identity.principal_id)
/// test_vault_data_operator_on_snap_rg = azure.authorization.Assignment("test_vault_data_operator_on_snap_rg",
///     scope=snap.id,
///     role_definition_name="Data Operator for Managed Disks",
///     principal_id=example_backup_vault.identity.principal_id)
/// test_vault_data_contributor_on_storage = azure.authorization.Assignment("test_vault_data_contributor_on_storage",
///     scope=example_account.id,
///     role_definition_name="Storage Blob Data Contributor",
///     principal_id=example_backup_vault.identity.principal_id)
/// test_cluster_msi_contributor_on_snap_rg = azure.authorization.Assignment("test_cluster_msi_contributor_on_snap_rg",
///     scope=snap.id,
///     role_definition_name="Contributor",
///     principal_id=example_kubernetes_cluster.identity.principal_id)
/// example_backup_policy_kubernetes_cluster = azure.dataprotection.BackupPolicyKubernetesCluster("example",
///     name="example",
///     resource_group_name=example.name,
///     vault_name=example_backup_vault.name,
///     backup_repeating_time_intervals=["R/2023-05-23T02:30:00+00:00/P1W"],
///     retention_rules=[{
///         "name": "Daily",
///         "priority": 25,
///         "life_cycles": [{
///             "duration": "P84D",
///             "data_store_type": "OperationalStore",
///         }],
///         "criteria": {
///             "days_of_weeks": ["Thursday"],
///             "months_of_years": ["November"],
///             "weeks_of_months": ["First"],
///             "scheduled_backup_times": ["2023-05-23T02:30:00Z"],
///         },
///     }],
///     default_retention_rule={
///         "life_cycles": [{
///             "duration": "P14D",
///             "data_store_type": "OperationalStore",
///         }],
///     })
/// example_backup_instance_kubernetes_cluster = azure.dataprotection.BackupInstanceKubernetesCluster("example",
///     name="example",
///     location=example.location,
///     vault_id=example_backup_vault.id,
///     kubernetes_cluster_id=example_kubernetes_cluster.id,
///     snapshot_resource_group_name=snap.name,
///     backup_policy_id=example_backup_policy_kubernetes_cluster.id,
///     backup_datasource_parameters={
///         "excluded_namespaces": ["test-excluded-namespaces"],
///         "excluded_resource_types": ["exvolumesnapshotcontents.snapshot.storage.k8s.io"],
///         "cluster_scoped_resources_enabled": True,
///         "included_namespaces": ["test-included-namespaces"],
///         "included_resource_types": ["involumesnapshotcontents.snapshot.storage.k8s.io"],
///         "label_selectors": ["kubernetes.io/metadata.name:test"],
///         "volume_snapshot_enabled": True,
///     },
///     opts = pulumi.ResourceOptions(depends_on=[
///             test_extension_and_storage_account_permission,
///             test_vault_msi_read_on_cluster,
///             test_vault_msi_read_on_snap_rg,
///             test_cluster_msi_contributor_on_snap_rg,
///             test_vault_msi_snapshot_contributor_on_snap_rg,
///             test_vault_data_operator_on_snap_rg,
///             test_vault_data_contributor_on_storage,
///         ]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var current = Azure.Core.GetClientConfig.Invoke();
///
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example",
///         Location = "West Europe",
///     });
///
///     var snap = new Azure.Core.ResourceGroup("snap", new()
///     {
///         Name = "example-snap",
///         Location = "West Europe",
///     });
///
///     var exampleBackupVault = new Azure.DataProtection.BackupVault("example", new()
///     {
///         Name = "example",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         DatastoreType = "VaultStore",
///         Redundancy = "LocallyRedundant",
///         Identity = new Azure.DataProtection.Inputs.BackupVaultIdentityArgs
///         {
///             Type = "SystemAssigned",
///         },
///     });
///
///     var exampleKubernetesCluster = new Azure.ContainerService.KubernetesCluster("example", new()
///     {
///         Name = "example",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         DnsPrefix = "dns",
///         DefaultNodePool = new Azure.ContainerService.Inputs.KubernetesClusterDefaultNodePoolArgs
///         {
///             Name = "default",
///             NodeCount = 1,
///             VmSize = "Standard_DS2_v2",
///             HostEncryptionEnabled = true,
///         },
///         Identity = new Azure.ContainerService.Inputs.KubernetesClusterIdentityArgs
///         {
///             Type = "SystemAssigned",
///         },
///     });
///
///     var aksClusterTrustedAccess = new Azure.ContainerService.ClusterTrustedAccessRoleBinding("aks_cluster_trusted_access", new()
///     {
///         KubernetesClusterId = exampleKubernetesCluster.Id,
///         Name = "example",
///         Roles = new[]
///         {
///             "Microsoft.DataProtection/backupVaults/backup-operator",
///         },
///         SourceResourceId = exampleBackupVault.Id,
///     });
///
///     var exampleAccount = new Azure.Storage.Account("example", new()
///     {
///         Name = "example",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         AccountTier = "Standard",
///         AccountReplicationType = "LRS",
///     });
///
///     var exampleContainer = new Azure.Storage.Container("example", new()
///     {
///         Name = "example",
///         StorageAccountName = exampleAccount.Name,
///         ContainerAccessType = "private",
///     });
///
///     var exampleKubernetesClusterExtension = new Azure.ContainerService.KubernetesClusterExtension("example", new()
///     {
///         Name = "example",
///         ClusterId = exampleKubernetesCluster.Id,
///         ExtensionType = "Microsoft.DataProtection.Kubernetes",
///         ReleaseTrain = "stable",
///         ReleaseNamespace = "dataprotection-microsoft",
///         ConfigurationSettings =
///         {
///             { "configuration.backupStorageLocation.bucket", exampleContainer.Name },
///             { "configuration.backupStorageLocation.config.resourceGroup", example.Name },
///             { "configuration.backupStorageLocation.config.storageAccount", exampleAccount.Name },
///             { "configuration.backupStorageLocation.config.subscriptionId", current.Apply(getClientConfigResult => getClientConfigResult.SubscriptionId) },
///             { "credentials.tenantId", current.Apply(getClientConfigResult => getClientConfigResult.TenantId) },
///         },
///     });
///
///     var testExtensionAndStorageAccountPermission = new Azure.Authorization.Assignment("test_extension_and_storage_account_permission", new()
///     {
///         Scope = exampleAccount.Id,
///         RoleDefinitionName = "Storage Account Contributor",
///         PrincipalId = exampleKubernetesClusterExtension.AksAssignedIdentities.Apply(aksAssignedIdentities => aksAssignedIdentities[0].PrincipalId),
///     });
///
///     var testVaultMsiReadOnCluster = new Azure.Authorization.Assignment("test_vault_msi_read_on_cluster", new()
///     {
///         Scope = exampleKubernetesCluster.Id,
///         RoleDefinitionName = "Reader",
///         PrincipalId = exampleBackupVault.Identity.Apply(identity => identity?.PrincipalId),
///     });
///
///     var testVaultMsiReadOnSnapRg = new Azure.Authorization.Assignment("test_vault_msi_read_on_snap_rg", new()
///     {
///         Scope = snap.Id,
///         RoleDefinitionName = "Reader",
///         PrincipalId = exampleBackupVault.Identity.Apply(identity => identity?.PrincipalId),
///     });
///
///     var testVaultMsiSnapshotContributorOnSnapRg = new Azure.Authorization.Assignment("test_vault_msi_snapshot_contributor_on_snap_rg", new()
///     {
///         Scope = snap.Id,
///         RoleDefinitionName = "Disk Snapshot Contributor",
///         PrincipalId = exampleBackupVault.Identity.Apply(identity => identity?.PrincipalId),
///     });
///
///     var testVaultDataOperatorOnSnapRg = new Azure.Authorization.Assignment("test_vault_data_operator_on_snap_rg", new()
///     {
///         Scope = snap.Id,
///         RoleDefinitionName = "Data Operator for Managed Disks",
///         PrincipalId = exampleBackupVault.Identity.Apply(identity => identity?.PrincipalId),
///     });
///
///     var testVaultDataContributorOnStorage = new Azure.Authorization.Assignment("test_vault_data_contributor_on_storage", new()
///     {
///         Scope = exampleAccount.Id,
///         RoleDefinitionName = "Storage Blob Data Contributor",
///         PrincipalId = exampleBackupVault.Identity.Apply(identity => identity?.PrincipalId),
///     });
///
///     var testClusterMsiContributorOnSnapRg = new Azure.Authorization.Assignment("test_cluster_msi_contributor_on_snap_rg", new()
///     {
///         Scope = snap.Id,
///         RoleDefinitionName = "Contributor",
///         PrincipalId = exampleKubernetesCluster.Identity.Apply(identity => identity?.PrincipalId),
///     });
///
///     var exampleBackupPolicyKubernetesCluster = new Azure.DataProtection.BackupPolicyKubernetesCluster("example", new()
///     {
///         Name = "example",
///         ResourceGroupName = example.Name,
///         VaultName = exampleBackupVault.Name,
///         BackupRepeatingTimeIntervals = new[]
///         {
///             "R/2023-05-23T02:30:00+00:00/P1W",
///         },
///         RetentionRules = new[]
///         {
///             new Azure.DataProtection.Inputs.BackupPolicyKubernetesClusterRetentionRuleArgs
///             {
///                 Name = "Daily",
///                 Priority = 25,
///                 LifeCycles = new[]
///                 {
///                     new Azure.DataProtection.Inputs.BackupPolicyKubernetesClusterRetentionRuleLifeCycleArgs
///                     {
///                         Duration = "P84D",
///                         DataStoreType = "OperationalStore",
///                     },
///                 },
///                 Criteria = new Azure.DataProtection.Inputs.BackupPolicyKubernetesClusterRetentionRuleCriteriaArgs
///                 {
///                     DaysOfWeeks = new[]
///                     {
///                         "Thursday",
///                     },
///                     MonthsOfYears = new[]
///                     {
///                         "November",
///                     },
///                     WeeksOfMonths = new[]
///                     {
///                         "First",
///                     },
///                     ScheduledBackupTimes = new[]
///                     {
///                         "2023-05-23T02:30:00Z",
///                     },
///                 },
///             },
///         },
///         DefaultRetentionRule = new Azure.DataProtection.Inputs.BackupPolicyKubernetesClusterDefaultRetentionRuleArgs
///         {
///             LifeCycles = new[]
///             {
///                 new Azure.DataProtection.Inputs.BackupPolicyKubernetesClusterDefaultRetentionRuleLifeCycleArgs
///                 {
///                     Duration = "P14D",
///                     DataStoreType = "OperationalStore",
///                 },
///             },
///         },
///     });
///
///     var exampleBackupInstanceKubernetesCluster = new Azure.DataProtection.BackupInstanceKubernetesCluster("example", new()
///     {
///         Name = "example",
///         Location = example.Location,
///         VaultId = exampleBackupVault.Id,
///         KubernetesClusterId = exampleKubernetesCluster.Id,
///         SnapshotResourceGroupName = snap.Name,
///         BackupPolicyId = exampleBackupPolicyKubernetesCluster.Id,
///         BackupDatasourceParameters = new Azure.DataProtection.Inputs.BackupInstanceKubernetesClusterBackupDatasourceParametersArgs
///         {
///             ExcludedNamespaces = new[]
///             {
///                 "test-excluded-namespaces",
///             },
///             ExcludedResourceTypes = new[]
///             {
///                 "exvolumesnapshotcontents.snapshot.storage.k8s.io",
///             },
///             ClusterScopedResourcesEnabled = true,
///             IncludedNamespaces = new[]
///             {
///                 "test-included-namespaces",
///             },
///             IncludedResourceTypes = new[]
///             {
///                 "involumesnapshotcontents.snapshot.storage.k8s.io",
///             },
///             LabelSelectors = new[]
///             {
///                 "kubernetes.io/metadata.name:test",
///             },
///             VolumeSnapshotEnabled = true,
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             testExtensionAndStorageAccountPermission,
///             testVaultMsiReadOnCluster,
///             testVaultMsiReadOnSnapRg,
///             testClusterMsiContributorOnSnapRg,
///             testVaultMsiSnapshotContributorOnSnapRg,
///             testVaultDataOperatorOnSnapRg,
///             testVaultDataContributorOnStorage,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/authorization"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/containerservice"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/dataprotection"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		current, err := core.GetClientConfig(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		snap, err := core.NewResourceGroup(ctx, "snap", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-snap"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleBackupVault, err := dataprotection.NewBackupVault(ctx, "example", &dataprotection.BackupVaultArgs{
/// 			Name:              pulumi.String("example"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			DatastoreType:     pulumi.String("VaultStore"),
/// 			Redundancy:        pulumi.String("LocallyRedundant"),
/// 			Identity: &dataprotection.BackupVaultIdentityArgs{
/// 				Type: pulumi.String("SystemAssigned"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleKubernetesCluster, err := containerservice.NewKubernetesCluster(ctx, "example", &containerservice.KubernetesClusterArgs{
/// 			Name:              pulumi.String("example"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			DnsPrefix:         pulumi.String("dns"),
/// 			DefaultNodePool: &containerservice.KubernetesClusterDefaultNodePoolArgs{
/// 				Name:                  pulumi.String("default"),
/// 				NodeCount:             pulumi.Int(1),
/// 				VmSize:                pulumi.String("Standard_DS2_v2"),
/// 				HostEncryptionEnabled: pulumi.Bool(true),
/// 			},
/// 			Identity: &containerservice.KubernetesClusterIdentityArgs{
/// 				Type: pulumi.String("SystemAssigned"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = containerservice.NewClusterTrustedAccessRoleBinding(ctx, "aks_cluster_trusted_access", &containerservice.ClusterTrustedAccessRoleBindingArgs{
/// 			KubernetesClusterId: exampleKubernetesCluster.ID().ToIDOutput().ToStringOutput(),
/// 			Name:                pulumi.String("example"),
/// 			Roles: pulumi.StringArray{
/// 				pulumi.String("Microsoft.DataProtection/backupVaults/backup-operator"),
/// 			},
/// 			SourceResourceId: exampleBackupVault.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAccount, err := storage.NewAccount(ctx, "example", &storage.AccountArgs{
/// 			Name:                   pulumi.String("example"),
/// 			ResourceGroupName:      example.Name,
/// 			Location:               example.Location,
/// 			AccountTier:            pulumi.String("Standard"),
/// 			AccountReplicationType: pulumi.String("LRS"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleContainer, err := storage.NewContainer(ctx, "example", &storage.ContainerArgs{
/// 			Name:                pulumi.String("example"),
/// 			StorageAccountName:  exampleAccount.Name,
/// 			ContainerAccessType: pulumi.String("private"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleKubernetesClusterExtension, err := containerservice.NewKubernetesClusterExtension(ctx, "example", &containerservice.KubernetesClusterExtensionArgs{
/// 			Name:             pulumi.String("example"),
/// 			ClusterId:        exampleKubernetesCluster.ID().ToIDOutput().ToStringOutput(),
/// 			ExtensionType:    pulumi.String("Microsoft.DataProtection.Kubernetes"),
/// 			ReleaseTrain:     pulumi.String("stable"),
/// 			ReleaseNamespace: pulumi.String("dataprotection-microsoft"),
/// 			ConfigurationSettings: pulumi.StringMap{
/// 				"configuration.backupStorageLocation.bucket":                exampleContainer.Name,
/// 				"configuration.backupStorageLocation.config.resourceGroup":  example.Name,
/// 				"configuration.backupStorageLocation.config.storageAccount": exampleAccount.Name,
/// 				"configuration.backupStorageLocation.config.subscriptionId": pulumi.String(current.SubscriptionId),
/// 				"credentials.tenantId":                                      pulumi.String(current.TenantId),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		testExtensionAndStorageAccountPermission, err := authorization.NewAssignment(ctx, "test_extension_and_storage_account_permission", &authorization.AssignmentArgs{
/// 			Scope:              exampleAccount.ID().ToIDOutput().ToStringOutput(),
/// 			RoleDefinitionName: pulumi.String("Storage Account Contributor"),
/// 			PrincipalId: exampleKubernetesClusterExtension.AksAssignedIdentities.ApplyT(func(aksAssignedIdentities []containerservice.KubernetesClusterExtensionAksAssignedIdentity) (*string, error) {
/// 				return aksAssignedIdentities[0].PrincipalId, nil
/// 			}).(pulumi.StringPtrOutput),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		testVaultMsiReadOnCluster, err := authorization.NewAssignment(ctx, "test_vault_msi_read_on_cluster", &authorization.AssignmentArgs{
/// 			Scope:              exampleKubernetesCluster.ID().ToIDOutput().ToStringOutput(),
/// 			RoleDefinitionName: pulumi.String("Reader"),
/// 			PrincipalId:        exampleBackupVault.Identity.PrincipalId(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		testVaultMsiReadOnSnapRg, err := authorization.NewAssignment(ctx, "test_vault_msi_read_on_snap_rg", &authorization.AssignmentArgs{
/// 			Scope:              snap.ID().ToIDOutput().ToStringOutput(),
/// 			RoleDefinitionName: pulumi.String("Reader"),
/// 			PrincipalId:        exampleBackupVault.Identity.PrincipalId(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		testVaultMsiSnapshotContributorOnSnapRg, err := authorization.NewAssignment(ctx, "test_vault_msi_snapshot_contributor_on_snap_rg", &authorization.AssignmentArgs{
/// 			Scope:              snap.ID().ToIDOutput().ToStringOutput(),
/// 			RoleDefinitionName: pulumi.String("Disk Snapshot Contributor"),
/// 			PrincipalId:        exampleBackupVault.Identity.PrincipalId(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		testVaultDataOperatorOnSnapRg, err := authorization.NewAssignment(ctx, "test_vault_data_operator_on_snap_rg", &authorization.AssignmentArgs{
/// 			Scope:              snap.ID().ToIDOutput().ToStringOutput(),
/// 			RoleDefinitionName: pulumi.String("Data Operator for Managed Disks"),
/// 			PrincipalId:        exampleBackupVault.Identity.PrincipalId(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		testVaultDataContributorOnStorage, err := authorization.NewAssignment(ctx, "test_vault_data_contributor_on_storage", &authorization.AssignmentArgs{
/// 			Scope:              exampleAccount.ID().ToIDOutput().ToStringOutput(),
/// 			RoleDefinitionName: pulumi.String("Storage Blob Data Contributor"),
/// 			PrincipalId:        exampleBackupVault.Identity.PrincipalId(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		testClusterMsiContributorOnSnapRg, err := authorization.NewAssignment(ctx, "test_cluster_msi_contributor_on_snap_rg", &authorization.AssignmentArgs{
/// 			Scope:              snap.ID().ToIDOutput().ToStringOutput(),
/// 			RoleDefinitionName: pulumi.String("Contributor"),
/// 			PrincipalId:        exampleKubernetesCluster.Identity.PrincipalId(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleBackupPolicyKubernetesCluster, err := dataprotection.NewBackupPolicyKubernetesCluster(ctx, "example", &dataprotection.BackupPolicyKubernetesClusterArgs{
/// 			Name:              pulumi.String("example"),
/// 			ResourceGroupName: example.Name,
/// 			VaultName:         exampleBackupVault.Name,
/// 			BackupRepeatingTimeIntervals: pulumi.StringArray{
/// 				pulumi.String("R/2023-05-23T02:30:00+00:00/P1W"),
/// 			},
/// 			RetentionRules: dataprotection.BackupPolicyKubernetesClusterRetentionRuleArray{
/// 				&dataprotection.BackupPolicyKubernetesClusterRetentionRuleArgs{
/// 					Name:     pulumi.String("Daily"),
/// 					Priority: pulumi.Int(25),
/// 					LifeCycles: dataprotection.BackupPolicyKubernetesClusterRetentionRuleLifeCycleArray{
/// 						&dataprotection.BackupPolicyKubernetesClusterRetentionRuleLifeCycleArgs{
/// 							Duration:      pulumi.String("P84D"),
/// 							DataStoreType: pulumi.String("OperationalStore"),
/// 						},
/// 					},
/// 					Criteria: &dataprotection.BackupPolicyKubernetesClusterRetentionRuleCriteriaArgs{
/// 						DaysOfWeeks: pulumi.StringArray{
/// 							pulumi.String("Thursday"),
/// 						},
/// 						MonthsOfYears: pulumi.StringArray{
/// 							pulumi.String("November"),
/// 						},
/// 						WeeksOfMonths: pulumi.StringArray{
/// 							pulumi.String("First"),
/// 						},
/// 						ScheduledBackupTimes: pulumi.StringArray{
/// 							pulumi.String("2023-05-23T02:30:00Z"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			DefaultRetentionRule: &dataprotection.BackupPolicyKubernetesClusterDefaultRetentionRuleArgs{
/// 				LifeCycles: dataprotection.BackupPolicyKubernetesClusterDefaultRetentionRuleLifeCycleArray{
/// 					&dataprotection.BackupPolicyKubernetesClusterDefaultRetentionRuleLifeCycleArgs{
/// 						Duration:      pulumi.String("P14D"),
/// 						DataStoreType: pulumi.String("OperationalStore"),
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = dataprotection.NewBackupInstanceKubernetesCluster(ctx, "example", &dataprotection.BackupInstanceKubernetesClusterArgs{
/// 			Name:                      pulumi.String("example"),
/// 			Location:                  example.Location,
/// 			VaultId:                   exampleBackupVault.ID().ToIDOutput().ToStringOutput(),
/// 			KubernetesClusterId:       exampleKubernetesCluster.ID().ToIDOutput().ToStringOutput(),
/// 			SnapshotResourceGroupName: snap.Name,
/// 			BackupPolicyId:            exampleBackupPolicyKubernetesCluster.ID().ToIDOutput().ToStringOutput(),
/// 			BackupDatasourceParameters: &dataprotection.BackupInstanceKubernetesClusterBackupDatasourceParametersArgs{
/// 				ExcludedNamespaces: pulumi.StringArray{
/// 					pulumi.String("test-excluded-namespaces"),
/// 				},
/// 				ExcludedResourceTypes: pulumi.StringArray{
/// 					pulumi.String("exvolumesnapshotcontents.snapshot.storage.k8s.io"),
/// 				},
/// 				ClusterScopedResourcesEnabled: pulumi.Bool(true),
/// 				IncludedNamespaces: pulumi.StringArray{
/// 					pulumi.String("test-included-namespaces"),
/// 				},
/// 				IncludedResourceTypes: pulumi.StringArray{
/// 					pulumi.String("involumesnapshotcontents.snapshot.storage.k8s.io"),
/// 				},
/// 				LabelSelectors: pulumi.StringArray{
/// 					pulumi.String("kubernetes.io/metadata.name:test"),
/// 				},
/// 				VolumeSnapshotEnabled: pulumi.Bool(true),
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			testExtensionAndStorageAccountPermission,
/// 			testVaultMsiReadOnCluster,
/// 			testVaultMsiReadOnSnapRg,
/// 			testClusterMsiContributorOnSnapRg,
/// 			testVaultMsiSnapshotContributorOnSnapRg,
/// 			testVaultDataOperatorOnSnapRg,
/// 			testVaultDataContributorOnStorage,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     azure = {
///       source = "pulumi/azure"
///     }
///   }
/// }
///
/// data "azure_core_getclientconfig" "current" {
/// }
///
/// resource "azure_core_resourcegroup" "example" {
///   name     = "example"
///   location = "West Europe"
/// }
/// resource "azure_core_resourcegroup" "snap" {
///   name     = "example-snap"
///   location = "West Europe"
/// }
/// resource "azure_dataprotection_backupvault" "example" {
///   name                = "example"
///   resource_group_name = azure_core_resourcegroup.example.name
///   location            = azure_core_resourcegroup.example.location
///   datastore_type      = "VaultStore"
///   redundancy          = "LocallyRedundant"
///   identity = {
///     type = "SystemAssigned"
///   }
/// }
/// resource "azure_containerservice_kubernetescluster" "example" {
///   name                = "example"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   dns_prefix          = "dns"
///   default_node_pool = {
///     name                    = "default"
///     node_count              = 1
///     vm_size                 = "Standard_DS2_v2"
///     host_encryption_enabled = true
///   }
///   identity = {
///     type = "SystemAssigned"
///   }
/// }
/// resource "azure_containerservice_clustertrustedaccessrolebinding" "aks_cluster_trusted_access" {
///   kubernetes_cluster_id = azure_containerservice_kubernetescluster.example.id
///   name                  = "example"
///   roles                 = ["Microsoft.DataProtection/backupVaults/backup-operator"]
///   source_resource_id    = azure_dataprotection_backupvault.example.id
/// }
/// resource "azure_storage_account" "example" {
///   name                     = "example"
///   resource_group_name      = azure_core_resourcegroup.example.name
///   location                 = azure_core_resourcegroup.example.location
///   account_tier             = "Standard"
///   account_replication_type = "LRS"
/// }
/// resource "azure_storage_container" "example" {
///   name                  = "example"
///   storage_account_name  = azure_storage_account.example.name
///   container_access_type = "private"
/// }
/// resource "azure_containerservice_kubernetesclusterextension" "example" {
///   name              = "example"
///   cluster_id        = azure_containerservice_kubernetescluster.example.id
///   extension_type    = "Microsoft.DataProtection.Kubernetes"
///   release_train     = "stable"
///   release_namespace = "dataprotection-microsoft"
///   configuration_settings = {
///     "configuration.backupStorageLocation.bucket"                = azure_storage_container.example.name
///     "configuration.backupStorageLocation.config.resourceGroup"  = azure_core_resourcegroup.example.name
///     "configuration.backupStorageLocation.config.storageAccount" = azure_storage_account.example.name
///     "configuration.backupStorageLocation.config.subscriptionId" = data.azure_core_getclientconfig.current.subscription_id
///     "credentials.tenantId"                                      = data.azure_core_getclientconfig.current.tenant_id
///   }
/// }
/// resource "azure_authorization_assignment" "test_extension_and_storage_account_permission" {
///   scope                = azure_storage_account.example.id
///   role_definition_name = "Storage Account Contributor"
///   principal_id         = azure_containerservice_kubernetesclusterextension.example.aks_assigned_identities[0].principal_id
/// }
/// resource "azure_authorization_assignment" "test_vault_msi_read_on_cluster" {
///   scope                = azure_containerservice_kubernetescluster.example.id
///   role_definition_name = "Reader"
///   principal_id         = azure_dataprotection_backupvault.example.identity.principal_id
/// }
/// resource "azure_authorization_assignment" "test_vault_msi_read_on_snap_rg" {
///   scope                = azure_core_resourcegroup.snap.id
///   role_definition_name = "Reader"
///   principal_id         = azure_dataprotection_backupvault.example.identity.principal_id
/// }
/// resource "azure_authorization_assignment" "test_vault_msi_snapshot_contributor_on_snap_rg" {
///   scope                = azure_core_resourcegroup.snap.id
///   role_definition_name = "Disk Snapshot Contributor"
///   principal_id         = azure_dataprotection_backupvault.example.identity.principal_id
/// }
/// resource "azure_authorization_assignment" "test_vault_data_operator_on_snap_rg" {
///   scope                = azure_core_resourcegroup.snap.id
///   role_definition_name = "Data Operator for Managed Disks"
///   principal_id         = azure_dataprotection_backupvault.example.identity.principal_id
/// }
/// resource "azure_authorization_assignment" "test_vault_data_contributor_on_storage" {
///   scope                = azure_storage_account.example.id
///   role_definition_name = "Storage Blob Data Contributor"
///   principal_id         = azure_dataprotection_backupvault.example.identity.principal_id
/// }
/// resource "azure_authorization_assignment" "test_cluster_msi_contributor_on_snap_rg" {
///   scope                = azure_core_resourcegroup.snap.id
///   role_definition_name = "Contributor"
///   principal_id         = azure_containerservice_kubernetescluster.example.identity.principal_id
/// }
/// resource "azure_dataprotection_backuppolicykubernetescluster" "example" {
///   name                            = "example"
///   resource_group_name             = azure_core_resourcegroup.example.name
///   vault_name                      = azure_dataprotection_backupvault.example.name
///   backup_repeating_time_intervals = ["R/2023-05-23T02:30:00+00:00/P1W"]
///   retention_rules {
///     name     = "Daily"
///     priority = 25
///     life_cycles {
///       duration        = "P84D"
///       data_store_type = "OperationalStore"
///     }
///     criteria = {
///       days_of_weeks          = ["Thursday"]
///       months_of_years        = ["November"]
///       weeks_of_months        = ["First"]
///       scheduled_backup_times = ["2023-05-23T02:30:00Z"]
///     }
///   }
///   default_retention_rule = {
///     life_cycles = [{
///       "duration"      = "P14D"
///       "dataStoreType" = "OperationalStore"
///     }]
///   }
/// }
/// resource "azure_dataprotection_backupinstancekubernetescluster" "example" {
///   depends_on                   = [azure_authorization_assignment.test_extension_and_storage_account_permission, azure_authorization_assignment.test_vault_msi_read_on_cluster, azure_authorization_assignment.test_vault_msi_read_on_snap_rg, azure_authorization_assignment.test_cluster_msi_contributor_on_snap_rg, azure_authorization_assignment.test_vault_msi_snapshot_contributor_on_snap_rg, azure_authorization_assignment.test_vault_data_operator_on_snap_rg, azure_authorization_assignment.test_vault_data_contributor_on_storage]
///   name                         = "example"
///   location                     = azure_core_resourcegroup.example.location
///   vault_id                     = azure_dataprotection_backupvault.example.id
///   kubernetes_cluster_id        = azure_containerservice_kubernetescluster.example.id
///   snapshot_resource_group_name = azure_core_resourcegroup.snap.name
///   backup_policy_id             = azure_dataprotection_backuppolicykubernetescluster.example.id
///   backup_datasource_parameters = {
///     excluded_namespaces              = ["test-excluded-namespaces"]
///     excluded_resource_types          = ["exvolumesnapshotcontents.snapshot.storage.k8s.io"]
///     cluster_scoped_resources_enabled = true
///     included_namespaces              = ["test-included-namespaces"]
///     included_resource_types          = ["involumesnapshotcontents.snapshot.storage.k8s.io"]
///     label_selectors                  = ["kubernetes.io/metadata.name:test"]
///     volume_snapshot_enabled          = true
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.core.CoreFunctions;
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.dataprotection.BackupVault;
/// import com.pulumi.azure.dataprotection.BackupVaultArgs;
/// import com.pulumi.azure.dataprotection.inputs.BackupVaultIdentityArgs;
/// import com.pulumi.azure.containerservice.KubernetesCluster;
/// import com.pulumi.azure.containerservice.KubernetesClusterArgs;
/// import com.pulumi.azure.containerservice.inputs.KubernetesClusterDefaultNodePoolArgs;
/// import com.pulumi.azure.containerservice.inputs.KubernetesClusterIdentityArgs;
/// import com.pulumi.azure.containerservice.ClusterTrustedAccessRoleBinding;
/// import com.pulumi.azure.containerservice.ClusterTrustedAccessRoleBindingArgs;
/// import com.pulumi.azure.storage.Account;
/// import com.pulumi.azure.storage.AccountArgs;
/// import com.pulumi.azure.storage.Container;
/// import com.pulumi.azure.storage.ContainerArgs;
/// import com.pulumi.azure.containerservice.KubernetesClusterExtension;
/// import com.pulumi.azure.containerservice.KubernetesClusterExtensionArgs;
/// import com.pulumi.azure.authorization.Assignment;
/// import com.pulumi.azure.authorization.AssignmentArgs;
/// import com.pulumi.azure.dataprotection.BackupPolicyKubernetesCluster;
/// import com.pulumi.azure.dataprotection.BackupPolicyKubernetesClusterArgs;
/// import com.pulumi.azure.dataprotection.inputs.BackupPolicyKubernetesClusterRetentionRuleArgs;
/// import com.pulumi.azure.dataprotection.inputs.BackupPolicyKubernetesClusterRetentionRuleLifeCycleArgs;
/// import com.pulumi.azure.dataprotection.inputs.BackupPolicyKubernetesClusterRetentionRuleCriteriaArgs;
/// import com.pulumi.azure.dataprotection.inputs.BackupPolicyKubernetesClusterDefaultRetentionRuleArgs;
/// import com.pulumi.azure.dataprotection.inputs.BackupPolicyKubernetesClusterDefaultRetentionRuleLifeCycleArgs;
/// import com.pulumi.azure.dataprotection.BackupInstanceKubernetesCluster;
/// import com.pulumi.azure.dataprotection.BackupInstanceKubernetesClusterArgs;
/// import com.pulumi.azure.dataprotection.inputs.BackupInstanceKubernetesClusterBackupDatasourceParametersArgs;
/// import com.pulumi.resources.CustomResourceOptions;
/// import java.util.ArrayList;
/// import java.util.Arrays;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         final var current = CoreFunctions.getClientConfig(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("example")
///             .location("West Europe")
///             .build());
///
///         var snap = new ResourceGroup("snap", ResourceGroupArgs.builder()
///             .name("example-snap")
///             .location("West Europe")
///             .build());
///
///         var exampleBackupVault = new BackupVault("exampleBackupVault", BackupVaultArgs.builder()
///             .name("example")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .datastoreType("VaultStore")
///             .redundancy("LocallyRedundant")
///             .identity(BackupVaultIdentityArgs.builder()
///                 .type("SystemAssigned")
///                 .build())
///             .build());
///
///         var exampleKubernetesCluster = new KubernetesCluster("exampleKubernetesCluster", KubernetesClusterArgs.builder()
///             .name("example")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .dnsPrefix("dns")
///             .defaultNodePool(KubernetesClusterDefaultNodePoolArgs.builder()
///                 .name("default")
///                 .nodeCount(1)
///                 .vmSize("Standard_DS2_v2")
///                 .hostEncryptionEnabled(true)
///                 .build())
///             .identity(KubernetesClusterIdentityArgs.builder()
///                 .type("SystemAssigned")
///                 .build())
///             .build());
///
///         var aksClusterTrustedAccess = new ClusterTrustedAccessRoleBinding("aksClusterTrustedAccess", ClusterTrustedAccessRoleBindingArgs.builder()
///             .kubernetesClusterId(exampleKubernetesCluster.id())
///             .name("example")
///             .roles("Microsoft.DataProtection/backupVaults/backup-operator")
///             .sourceResourceId(exampleBackupVault.id())
///             .build());
///
///         var exampleAccount = new Account("exampleAccount", AccountArgs.builder()
///             .name("example")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .accountTier("Standard")
///             .accountReplicationType("LRS")
///             .build());
///
///         var exampleContainer = new Container("exampleContainer", ContainerArgs.builder()
///             .name("example")
///             .storageAccountName(exampleAccount.name())
///             .containerAccessType("private")
///             .build());
///
///         var exampleKubernetesClusterExtension = new KubernetesClusterExtension("exampleKubernetesClusterExtension", KubernetesClusterExtensionArgs.builder()
///             .name("example")
///             .clusterId(exampleKubernetesCluster.id())
///             .extensionType("Microsoft.DataProtection.Kubernetes")
///             .releaseTrain("stable")
///             .releaseNamespace("dataprotection-microsoft")
///             .configurationSettings(Map.ofEntries(
///                 Map.entry("configuration.backupStorageLocation.bucket", exampleContainer.name()),
///                 Map.entry("configuration.backupStorageLocation.config.resourceGroup", example.name()),
///                 Map.entry("configuration.backupStorageLocation.config.storageAccount", exampleAccount.name()),
///                 Map.entry("configuration.backupStorageLocation.config.subscriptionId", current.subscriptionId()),
///                 Map.entry("credentials.tenantId", current.tenantId())
///             ))
///             .build());
///
///         var testExtensionAndStorageAccountPermission = new Assignment("testExtensionAndStorageAccountPermission", AssignmentArgs.builder()
///             .scope(exampleAccount.id())
///             .roleDefinitionName("Storage Account Contributor")
///             .principalId(exampleKubernetesClusterExtension.aksAssignedIdentities().applyValue(_aksAssignedIdentities -> _aksAssignedIdentities[0].principalId()))
///             .build());
///
///         var testVaultMsiReadOnCluster = new Assignment("testVaultMsiReadOnCluster", AssignmentArgs.builder()
///             .scope(exampleKubernetesCluster.id())
///             .roleDefinitionName("Reader")
///             .principalId(exampleBackupVault.identity().applyValue(_identity -> _identity.principalId()))
///             .build());
///
///         var testVaultMsiReadOnSnapRg = new Assignment("testVaultMsiReadOnSnapRg", AssignmentArgs.builder()
///             .scope(snap.id())
///             .roleDefinitionName("Reader")
///             .principalId(exampleBackupVault.identity().applyValue(_identity -> _identity.principalId()))
///             .build());
///
///         var testVaultMsiSnapshotContributorOnSnapRg = new Assignment("testVaultMsiSnapshotContributorOnSnapRg", AssignmentArgs.builder()
///             .scope(snap.id())
///             .roleDefinitionName("Disk Snapshot Contributor")
///             .principalId(exampleBackupVault.identity().applyValue(_identity -> _identity.principalId()))
///             .build());
///
///         var testVaultDataOperatorOnSnapRg = new Assignment("testVaultDataOperatorOnSnapRg", AssignmentArgs.builder()
///             .scope(snap.id())
///             .roleDefinitionName("Data Operator for Managed Disks")
///             .principalId(exampleBackupVault.identity().applyValue(_identity -> _identity.principalId()))
///             .build());
///
///         var testVaultDataContributorOnStorage = new Assignment("testVaultDataContributorOnStorage", AssignmentArgs.builder()
///             .scope(exampleAccount.id())
///             .roleDefinitionName("Storage Blob Data Contributor")
///             .principalId(exampleBackupVault.identity().applyValue(_identity -> _identity.principalId()))
///             .build());
///
///         var testClusterMsiContributorOnSnapRg = new Assignment("testClusterMsiContributorOnSnapRg", AssignmentArgs.builder()
///             .scope(snap.id())
///             .roleDefinitionName("Contributor")
///             .principalId(exampleKubernetesCluster.identity().applyValue(_identity -> _identity.principalId()))
///             .build());
///
///         var exampleBackupPolicyKubernetesCluster = new BackupPolicyKubernetesCluster("exampleBackupPolicyKubernetesCluster", BackupPolicyKubernetesClusterArgs.builder()
///             .name("example")
///             .resourceGroupName(example.name())
///             .vaultName(exampleBackupVault.name())
///             .backupRepeatingTimeIntervals("R/2023-05-23T02:30:00+00:00/P1W")
///             .retentionRules(BackupPolicyKubernetesClusterRetentionRuleArgs.builder()
///                 .name("Daily")
///                 .priority(25)
///                 .lifeCycles(BackupPolicyKubernetesClusterRetentionRuleLifeCycleArgs.builder()
///                     .duration("P84D")
///                     .dataStoreType("OperationalStore")
///                     .build())
///                 .criteria(BackupPolicyKubernetesClusterRetentionRuleCriteriaArgs.builder()
///                     .daysOfWeeks("Thursday")
///                     .monthsOfYears("November")
///                     .weeksOfMonths("First")
///                     .scheduledBackupTimes("2023-05-23T02:30:00Z")
///                     .build())
///                 .build())
///             .defaultRetentionRule(BackupPolicyKubernetesClusterDefaultRetentionRuleArgs.builder()
///                 .lifeCycles(BackupPolicyKubernetesClusterDefaultRetentionRuleLifeCycleArgs.builder()
///                     .duration("P14D")
///                     .dataStoreType("OperationalStore")
///                     .build())
///                 .build())
///             .build());
///
///         var exampleBackupInstanceKubernetesCluster = new BackupInstanceKubernetesCluster("exampleBackupInstanceKubernetesCluster", BackupInstanceKubernetesClusterArgs.builder()
///             .name("example")
///             .location(example.location())
///             .vaultId(exampleBackupVault.id())
///             .kubernetesClusterId(exampleKubernetesCluster.id())
///             .snapshotResourceGroupName(snap.name())
///             .backupPolicyId(exampleBackupPolicyKubernetesCluster.id())
///             .backupDatasourceParameters(BackupInstanceKubernetesClusterBackupDatasourceParametersArgs.builder()
///                 .excludedNamespaces("test-excluded-namespaces")
///                 .excludedResourceTypes("exvolumesnapshotcontents.snapshot.storage.k8s.io")
///                 .clusterScopedResourcesEnabled(true)
///                 .includedNamespaces("test-included-namespaces")
///                 .includedResourceTypes("involumesnapshotcontents.snapshot.storage.k8s.io")
///                 .labelSelectors("kubernetes.io/metadata.name:test")
///                 .volumeSnapshotEnabled(true)
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(
///                     testExtensionAndStorageAccountPermission,
///                     testVaultMsiReadOnCluster,
///                     testVaultMsiReadOnSnapRg,
///                     testClusterMsiContributorOnSnapRg,
///                     testVaultMsiSnapshotContributorOnSnapRg,
///                     testVaultDataOperatorOnSnapRg,
///                     testVaultDataContributorOnStorage)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:core:ResourceGroup
///     properties:
///       name: example
///       location: West Europe
///   snap:
///     type: azure:core:ResourceGroup
///     properties:
///       name: example-snap
///       location: West Europe
///   exampleBackupVault:
///     type: azure:dataprotection:BackupVault
///     name: example
///     properties:
///       name: example
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       datastoreType: VaultStore
///       redundancy: LocallyRedundant
///       identity:
///         type: SystemAssigned
///   exampleKubernetesCluster:
///     type: azure:containerservice:KubernetesCluster
///     name: example
///     properties:
///       name: example
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       dnsPrefix: dns
///       defaultNodePool:
///         name: default
///         nodeCount: 1
///         vmSize: Standard_DS2_v2
///         hostEncryptionEnabled: true
///       identity:
///         type: SystemAssigned
///   aksClusterTrustedAccess:
///     type: azure:containerservice:ClusterTrustedAccessRoleBinding
///     name: aks_cluster_trusted_access
///     properties:
///       kubernetesClusterId: ${exampleKubernetesCluster.id}
///       name: example
///       roles:
///         - Microsoft.DataProtection/backupVaults/backup-operator
///       sourceResourceId: ${exampleBackupVault.id}
///   exampleAccount:
///     type: azure:storage:Account
///     name: example
///     properties:
///       name: example
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       accountTier: Standard
///       accountReplicationType: LRS
///   exampleContainer:
///     type: azure:storage:Container
///     name: example
///     properties:
///       name: example
///       storageAccountName: ${exampleAccount.name}
///       containerAccessType: private
///   exampleKubernetesClusterExtension:
///     type: azure:containerservice:KubernetesClusterExtension
///     name: example
///     properties:
///       name: example
///       clusterId: ${exampleKubernetesCluster.id}
///       extensionType: Microsoft.DataProtection.Kubernetes
///       releaseTrain: stable
///       releaseNamespace: dataprotection-microsoft
///       configurationSettings:
///         configuration.backupStorageLocation.bucket: ${exampleContainer.name}
///         configuration.backupStorageLocation.config.resourceGroup: ${example.name}
///         configuration.backupStorageLocation.config.storageAccount: ${exampleAccount.name}
///         configuration.backupStorageLocation.config.subscriptionId: ${current.subscriptionId}
///         credentials.tenantId: ${current.tenantId}
///   testExtensionAndStorageAccountPermission:
///     type: azure:authorization:Assignment
///     name: test_extension_and_storage_account_permission
///     properties:
///       scope: ${exampleAccount.id}
///       roleDefinitionName: Storage Account Contributor
///       principalId: ${exampleKubernetesClusterExtension.aksAssignedIdentities[0].principalId}
///   testVaultMsiReadOnCluster:
///     type: azure:authorization:Assignment
///     name: test_vault_msi_read_on_cluster
///     properties:
///       scope: ${exampleKubernetesCluster.id}
///       roleDefinitionName: Reader
///       principalId: ${exampleBackupVault.identity.principalId}
///   testVaultMsiReadOnSnapRg:
///     type: azure:authorization:Assignment
///     name: test_vault_msi_read_on_snap_rg
///     properties:
///       scope: ${snap.id}
///       roleDefinitionName: Reader
///       principalId: ${exampleBackupVault.identity.principalId}
///   testVaultMsiSnapshotContributorOnSnapRg:
///     type: azure:authorization:Assignment
///     name: test_vault_msi_snapshot_contributor_on_snap_rg
///     properties:
///       scope: ${snap.id}
///       roleDefinitionName: Disk Snapshot Contributor
///       principalId: ${exampleBackupVault.identity.principalId}
///   testVaultDataOperatorOnSnapRg:
///     type: azure:authorization:Assignment
///     name: test_vault_data_operator_on_snap_rg
///     properties:
///       scope: ${snap.id}
///       roleDefinitionName: Data Operator for Managed Disks
///       principalId: ${exampleBackupVault.identity.principalId}
///   testVaultDataContributorOnStorage:
///     type: azure:authorization:Assignment
///     name: test_vault_data_contributor_on_storage
///     properties:
///       scope: ${exampleAccount.id}
///       roleDefinitionName: Storage Blob Data Contributor
///       principalId: ${exampleBackupVault.identity.principalId}
///   testClusterMsiContributorOnSnapRg:
///     type: azure:authorization:Assignment
///     name: test_cluster_msi_contributor_on_snap_rg
///     properties:
///       scope: ${snap.id}
///       roleDefinitionName: Contributor
///       principalId: ${exampleKubernetesCluster.identity.principalId}
///   exampleBackupPolicyKubernetesCluster:
///     type: azure:dataprotection:BackupPolicyKubernetesCluster
///     name: example
///     properties:
///       name: example
///       resourceGroupName: ${example.name}
///       vaultName: ${exampleBackupVault.name}
///       backupRepeatingTimeIntervals:
///         - R/2023-05-23T02:30:00+00:00/P1W
///       retentionRules:
///         - name: Daily
///           priority: 25
///           lifeCycles:
///             - duration: P84D
///               dataStoreType: OperationalStore
///           criteria:
///             daysOfWeeks:
///               - Thursday
///             monthsOfYears:
///               - November
///             weeksOfMonths:
///               - First
///             scheduledBackupTimes:
///               - 2023-05-23T02:30:00Z
///       defaultRetentionRule:
///         lifeCycles:
///           - duration: P14D
///             dataStoreType: OperationalStore
///   exampleBackupInstanceKubernetesCluster:
///     type: azure:dataprotection:BackupInstanceKubernetesCluster
///     name: example
///     properties:
///       name: example
///       location: ${example.location}
///       vaultId: ${exampleBackupVault.id}
///       kubernetesClusterId: ${exampleKubernetesCluster.id}
///       snapshotResourceGroupName: ${snap.name}
///       backupPolicyId: ${exampleBackupPolicyKubernetesCluster.id}
///       backupDatasourceParameters:
///         excludedNamespaces:
///           - test-excluded-namespaces
///         excludedResourceTypes:
///           - exvolumesnapshotcontents.snapshot.storage.k8s.io
///         clusterScopedResourcesEnabled: true
///         includedNamespaces:
///           - test-included-namespaces
///         includedResourceTypes:
///           - involumesnapshotcontents.snapshot.storage.k8s.io
///         labelSelectors:
///           - kubernetes.io/metadata.name:test
///         volumeSnapshotEnabled: true
///     options:
///       dependsOn:
///         - ${testExtensionAndStorageAccountPermission}
///         - ${testVaultMsiReadOnCluster}
///         - ${testVaultMsiReadOnSnapRg}
///         - ${testClusterMsiContributorOnSnapRg}
///         - ${testVaultMsiSnapshotContributorOnSnapRg}
///         - ${testVaultDataOperatorOnSnapRg}
///         - ${testVaultDataContributorOnStorage}
/// variables:
///   current:
///     fn::invoke:
///       function: azure:core:getClientConfig
///       arguments: {}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.DataProtection` - 2025-07-01
///
/// ## Import
///
/// Backup Instance Kubernetes Cluster can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:dataprotection/backupInstanceKubernetesCluster:BackupInstanceKubernetesCluster example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.DataProtection/backupVaults/vault1/backupInstances/backupInstance1
/// ```
class BackupInstanceKubernetesCluster extends pulumi.CustomResource {
  /// A `backupDatasourceParameters` block as defined below. Changing this forces a new resource to be created.
  late final pulumi.Output<BackupInstanceKubernetesClusterBackupDatasourceParameters?> backupDatasourceParameters;
  /// The ID of the Backup Policy. Changing this forces a new resource to be created.
  late final pulumi.Output<String> backupPolicyId;
  /// The ID of the Kubernetes Cluster. Changing this forces a new resource to be created.
  late final pulumi.Output<String> kubernetesClusterId;
  /// The location of the Backup Instance Kubernetes Cluster. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;
  /// The name which should be used for this Backup Instance Kubernetes Cluster. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The protection state of the Backup Instance Kubernetes Cluster.
  late final pulumi.Output<String> protectionState;
  /// The name of the Resource Group where snapshots are stored. Changing this forces a new resource to be created.
  late final pulumi.Output<String> snapshotResourceGroupName;
  /// The ID of the Backup Vault within which the Backup Instance Kubernetes Cluster should exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String> vaultId;

  /// Creates a new [BackupInstanceKubernetesCluster].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BackupInstanceKubernetesCluster]. {@macro pulumi_dataprotection_backup_instance_kubernetes_cluster_backup_instance_kubernetes_cluster_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BackupInstanceKubernetesCluster(
    String name, {
    BackupInstanceKubernetesClusterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:dataprotection/backupInstanceKubernetesCluster:BackupInstanceKubernetesCluster',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
        ) {
    backupDatasourceParameters = registerOutput<BackupInstanceKubernetesClusterBackupDatasourceParameters?>('backupDatasourceParameters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BackupInstanceKubernetesClusterBackupDatasourceParameters.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    backupPolicyId = registerOutput<String>('backupPolicyId');
    kubernetesClusterId = registerOutput<String>('kubernetesClusterId');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    protectionState = registerOutput<String>('protectionState');
    snapshotResourceGroupName = registerOutput<String>('snapshotResourceGroupName');
    vaultId = registerOutput<String>('vaultId');
  }

  /// Gets an existing [BackupInstanceKubernetesCluster] resource's state with the given [name] and [id].
  static BackupInstanceKubernetesCluster get(
    String name,
    pulumi.Input<String> id, {
    BackupInstanceKubernetesClusterState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return BackupInstanceKubernetesCluster._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  BackupInstanceKubernetesCluster._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:dataprotection/backupInstanceKubernetesCluster:BackupInstanceKubernetesCluster',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    backupDatasourceParameters = registerOutput<BackupInstanceKubernetesClusterBackupDatasourceParameters?>('backupDatasourceParameters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BackupInstanceKubernetesClusterBackupDatasourceParameters.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    backupPolicyId = registerOutput<String>('backupPolicyId');
    kubernetesClusterId = registerOutput<String>('kubernetesClusterId');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    protectionState = registerOutput<String>('protectionState');
    snapshotResourceGroupName = registerOutput<String>('snapshotResourceGroupName');
    vaultId = registerOutput<String>('vaultId');
  }

  /// Creates a typed reference to an existing [BackupInstanceKubernetesCluster] resource.
  BackupInstanceKubernetesCluster.reference(String urn)
    : super(
        'azure:dataprotection/backupInstanceKubernetesCluster:BackupInstanceKubernetesCluster',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    backupDatasourceParameters = registerOutput<BackupInstanceKubernetesClusterBackupDatasourceParameters?>('backupDatasourceParameters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BackupInstanceKubernetesClusterBackupDatasourceParameters.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    backupPolicyId = registerOutput<String>('backupPolicyId');
    kubernetesClusterId = registerOutput<String>('kubernetesClusterId');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    protectionState = registerOutput<String>('protectionState');
    snapshotResourceGroupName = registerOutput<String>('snapshotResourceGroupName');
    vaultId = registerOutput<String>('vaultId');
  }
}
