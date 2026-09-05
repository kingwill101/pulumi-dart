import 'package:pulumi/pulumi.dart' as pulumi;
import 'restore_plan_args.dart';
import 'restore_plan_restore_config.dart';
import 'restore_plan_state.dart';

/// Represents a Restore Plan instance.
///
///
/// To get more information about RestorePlan, see:
///
/// * [API documentation](https://cloud.google.com/kubernetes-engine/docs/add-on/backup-for-gke/reference/rest/v1/projects.locations.restorePlans)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/kubernetes-engine/docs/add-on/backup-for-gke)
///
/// ## Example Usage
///
/// ### Gkebackup Restoreplan All Namespaces
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const primary = new gcp.container.Cluster("primary", {
///     name: "restore-all-ns-cluster",
///     location: "us-central1",
///     initialNodeCount: 1,
///     workloadIdentityConfig: {
///         workloadPool: "my-project-name.svc.id.goog",
///     },
///     addonsConfig: {
///         gkeBackupAgentConfig: {
///             enabled: true,
///         },
///     },
///     deletionProtection: true,
///     network: "default",
///     subnetwork: "default",
/// });
/// const basic = new gcp.gkebackup.BackupPlan("basic", {
///     name: "restore-all-ns",
///     cluster: primary.id,
///     location: "us-central1",
///     backupConfig: {
///         includeVolumeData: true,
///         includeSecrets: true,
///         allNamespaces: true,
///     },
/// });
/// const allNs = new gcp.gkebackup.RestorePlan("all_ns", {
///     name: "restore-all-ns",
///     location: "us-central1",
///     backupPlan: basic.id,
///     cluster: primary.id,
///     restoreConfig: {
///         allNamespaces: true,
///         namespacedResourceRestoreMode: "FAIL_ON_CONFLICT",
///         volumeDataRestorePolicy: "RESTORE_VOLUME_DATA_FROM_BACKUP",
///         clusterResourceRestoreScope: {
///             allGroupKinds: true,
///         },
///         clusterResourceConflictPolicy: "USE_EXISTING_VERSION",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// primary = gcp.container.Cluster("primary",
///     name="restore-all-ns-cluster",
///     location="us-central1",
///     initial_node_count=1,
///     workload_identity_config={
///         "workload_pool": "my-project-name.svc.id.goog",
///     },
///     addons_config={
///         "gke_backup_agent_config": {
///             "enabled": True,
///         },
///     },
///     deletion_protection=True,
///     network="default",
///     subnetwork="default")
/// basic = gcp.gkebackup.BackupPlan("basic",
///     name="restore-all-ns",
///     cluster=primary.id,
///     location="us-central1",
///     backup_config={
///         "include_volume_data": True,
///         "include_secrets": True,
///         "all_namespaces": True,
///     })
/// all_ns = gcp.gkebackup.RestorePlan("all_ns",
///     name="restore-all-ns",
///     location="us-central1",
///     backup_plan=basic.id,
///     cluster=primary.id,
///     restore_config={
///         "all_namespaces": True,
///         "namespaced_resource_restore_mode": "FAIL_ON_CONFLICT",
///         "volume_data_restore_policy": "RESTORE_VOLUME_DATA_FROM_BACKUP",
///         "cluster_resource_restore_scope": {
///             "all_group_kinds": True,
///         },
///         "cluster_resource_conflict_policy": "USE_EXISTING_VERSION",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var primary = new Gcp.Container.Cluster("primary", new()
///     {
///         Name = "restore-all-ns-cluster",
///         Location = "us-central1",
///         InitialNodeCount = 1,
///         WorkloadIdentityConfig = new Gcp.Container.Inputs.ClusterWorkloadIdentityConfigArgs
///         {
///             WorkloadPool = "my-project-name.svc.id.goog",
///         },
///         AddonsConfig = new Gcp.Container.Inputs.ClusterAddonsConfigArgs
///         {
///             GkeBackupAgentConfig = new Gcp.Container.Inputs.ClusterAddonsConfigGkeBackupAgentConfigArgs
///             {
///                 Enabled = true,
///             },
///         },
///         DeletionProtection = true,
///         Network = "default",
///         Subnetwork = "default",
///     });
///
///     var basic = new Gcp.GkeBackup.BackupPlan("basic", new()
///     {
///         Name = "restore-all-ns",
///         Cluster = primary.Id,
///         Location = "us-central1",
///         BackupConfig = new Gcp.GkeBackup.Inputs.BackupPlanBackupConfigArgs
///         {
///             IncludeVolumeData = true,
///             IncludeSecrets = true,
///             AllNamespaces = true,
///         },
///     });
///
///     var allNs = new Gcp.GkeBackup.RestorePlan("all_ns", new()
///     {
///         Name = "restore-all-ns",
///         Location = "us-central1",
///         BackupPlan = basic.Id,
///         Cluster = primary.Id,
///         RestoreConfig = new Gcp.GkeBackup.Inputs.RestorePlanRestoreConfigArgs
///         {
///             AllNamespaces = true,
///             NamespacedResourceRestoreMode = "FAIL_ON_CONFLICT",
///             VolumeDataRestorePolicy = "RESTORE_VOLUME_DATA_FROM_BACKUP",
///             ClusterResourceRestoreScope = new Gcp.GkeBackup.Inputs.RestorePlanRestoreConfigClusterResourceRestoreScopeArgs
///             {
///                 AllGroupKinds = true,
///             },
///             ClusterResourceConflictPolicy = "USE_EXISTING_VERSION",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/container"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/gkebackup"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		primary, err := container.NewCluster(ctx, "primary", &container.ClusterArgs{
/// 			Name:             pulumi.String("restore-all-ns-cluster"),
/// 			Location:         pulumi.String("us-central1"),
/// 			InitialNodeCount: pulumi.Int(1),
/// 			WorkloadIdentityConfig: &container.ClusterWorkloadIdentityConfigArgs{
/// 				WorkloadPool: pulumi.String("my-project-name.svc.id.goog"),
/// 			},
/// 			AddonsConfig: &container.ClusterAddonsConfigArgs{
/// 				GkeBackupAgentConfig: &container.ClusterAddonsConfigGkeBackupAgentConfigArgs{
/// 					Enabled: pulumi.Bool(true),
/// 				},
/// 			},
/// 			DeletionProtection: pulumi.Bool(true),
/// 			Network:            pulumi.String("default"),
/// 			Subnetwork:         pulumi.String("default"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		basic, err := gkebackup.NewBackupPlan(ctx, "basic", &gkebackup.BackupPlanArgs{
/// 			Name:     pulumi.String("restore-all-ns"),
/// 			Cluster:  primary.ID().ToIDOutput().ToStringOutput(),
/// 			Location: pulumi.String("us-central1"),
/// 			BackupConfig: &gkebackup.BackupPlanBackupConfigArgs{
/// 				IncludeVolumeData: pulumi.Bool(true),
/// 				IncludeSecrets:    pulumi.Bool(true),
/// 				AllNamespaces:     pulumi.Bool(true),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = gkebackup.NewRestorePlan(ctx, "all_ns", &gkebackup.RestorePlanArgs{
/// 			Name:       pulumi.String("restore-all-ns"),
/// 			Location:   pulumi.String("us-central1"),
/// 			BackupPlan: basic.ID().ToIDOutput().ToStringOutput(),
/// 			Cluster:    primary.ID().ToIDOutput().ToStringOutput(),
/// 			RestoreConfig: &gkebackup.RestorePlanRestoreConfigArgs{
/// 				AllNamespaces:                 pulumi.Bool(true),
/// 				NamespacedResourceRestoreMode: pulumi.String("FAIL_ON_CONFLICT"),
/// 				VolumeDataRestorePolicy:       pulumi.String("RESTORE_VOLUME_DATA_FROM_BACKUP"),
/// 				ClusterResourceRestoreScope: &gkebackup.RestorePlanRestoreConfigClusterResourceRestoreScopeArgs{
/// 					AllGroupKinds: pulumi.Bool(true),
/// 				},
/// 				ClusterResourceConflictPolicy: pulumi.String("USE_EXISTING_VERSION"),
/// 			},
/// 		})
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_container_cluster" "primary" {
///   name               = "restore-all-ns-cluster"
///   location           = "us-central1"
///   initial_node_count = 1
///   workload_identity_config = {
///     workload_pool = "my-project-name.svc.id.goog"
///   }
///   addons_config = {
///     gke_backup_agent_config = {
///       enabled = true
///     }
///   }
///   deletion_protection = true
///   network             = "default"
///   subnetwork          = "default"
/// }
/// resource "gcp_gkebackup_backupplan" "basic" {
///   name     = "restore-all-ns"
///   cluster  = gcp_container_cluster.primary.id
///   location = "us-central1"
///   backup_config = {
///     include_volume_data = true
///     include_secrets     = true
///     all_namespaces      = true
///   }
/// }
/// resource "gcp_gkebackup_restoreplan" "all_ns" {
///   name        = "restore-all-ns"
///   location    = "us-central1"
///   backup_plan = gcp_gkebackup_backupplan.basic.id
///   cluster     = gcp_container_cluster.primary.id
///   restore_config = {
///     all_namespaces                   = true
///     namespaced_resource_restore_mode = "FAIL_ON_CONFLICT"
///     volume_data_restore_policy       = "RESTORE_VOLUME_DATA_FROM_BACKUP"
///     cluster_resource_restore_scope = {
///       all_group_kinds = true
///     }
///     cluster_resource_conflict_policy = "USE_EXISTING_VERSION"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.container.Cluster;
/// import com.pulumi.gcp.container.ClusterArgs;
/// import com.pulumi.gcp.container.inputs.ClusterWorkloadIdentityConfigArgs;
/// import com.pulumi.gcp.container.inputs.ClusterAddonsConfigArgs;
/// import com.pulumi.gcp.container.inputs.ClusterAddonsConfigGkeBackupAgentConfigArgs;
/// import com.pulumi.gcp.gkebackup.BackupPlan;
/// import com.pulumi.gcp.gkebackup.BackupPlanArgs;
/// import com.pulumi.gcp.gkebackup.inputs.BackupPlanBackupConfigArgs;
/// import com.pulumi.gcp.gkebackup.RestorePlan;
/// import com.pulumi.gcp.gkebackup.RestorePlanArgs;
/// import com.pulumi.gcp.gkebackup.inputs.RestorePlanRestoreConfigArgs;
/// import com.pulumi.gcp.gkebackup.inputs.RestorePlanRestoreConfigClusterResourceRestoreScopeArgs;
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
///         var primary = new Cluster("primary", ClusterArgs.builder()
///             .name("restore-all-ns-cluster")
///             .location("us-central1")
///             .initialNodeCount(1)
///             .workloadIdentityConfig(ClusterWorkloadIdentityConfigArgs.builder()
///                 .workloadPool("my-project-name.svc.id.goog")
///                 .build())
///             .addonsConfig(ClusterAddonsConfigArgs.builder()
///                 .gkeBackupAgentConfig(ClusterAddonsConfigGkeBackupAgentConfigArgs.builder()
///                     .enabled(true)
///                     .build())
///                 .build())
///             .deletionProtection(true)
///             .network("default")
///             .subnetwork("default")
///             .build());
///
///         var basic = new BackupPlan("basic", BackupPlanArgs.builder()
///             .name("restore-all-ns")
///             .cluster(primary.id())
///             .location("us-central1")
///             .backupConfig(BackupPlanBackupConfigArgs.builder()
///                 .includeVolumeData(true)
///                 .includeSecrets(true)
///                 .allNamespaces(true)
///                 .build())
///             .build());
///
///         var allNs = new RestorePlan("allNs", RestorePlanArgs.builder()
///             .name("restore-all-ns")
///             .location("us-central1")
///             .backupPlan(basic.id())
///             .cluster(primary.id())
///             .restoreConfig(RestorePlanRestoreConfigArgs.builder()
///                 .allNamespaces(true)
///                 .namespacedResourceRestoreMode("FAIL_ON_CONFLICT")
///                 .volumeDataRestorePolicy("RESTORE_VOLUME_DATA_FROM_BACKUP")
///                 .clusterResourceRestoreScope(RestorePlanRestoreConfigClusterResourceRestoreScopeArgs.builder()
///                     .allGroupKinds(true)
///                     .build())
///                 .clusterResourceConflictPolicy("USE_EXISTING_VERSION")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   primary:
///     type: gcp:container:Cluster
///     properties:
///       name: restore-all-ns-cluster
///       location: us-central1
///       initialNodeCount: 1
///       workloadIdentityConfig:
///         workloadPool: my-project-name.svc.id.goog
///       addonsConfig:
///         gkeBackupAgentConfig:
///           enabled: true
///       deletionProtection: true
///       network: default
///       subnetwork: default
///   basic:
///     type: gcp:gkebackup:BackupPlan
///     properties:
///       name: restore-all-ns
///       cluster: ${primary.id}
///       location: us-central1
///       backupConfig:
///         includeVolumeData: true
///         includeSecrets: true
///         allNamespaces: true
///   allNs:
///     type: gcp:gkebackup:RestorePlan
///     name: all_ns
///     properties:
///       name: restore-all-ns
///       location: us-central1
///       backupPlan: ${basic.id}
///       cluster: ${primary.id}
///       restoreConfig:
///         allNamespaces: true
///         namespacedResourceRestoreMode: FAIL_ON_CONFLICT
///         volumeDataRestorePolicy: RESTORE_VOLUME_DATA_FROM_BACKUP
///         clusterResourceRestoreScope:
///           allGroupKinds: true
///         clusterResourceConflictPolicy: USE_EXISTING_VERSION
/// ```
///
/// ### Gkebackup Restoreplan Rollback Namespace
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const primary = new gcp.container.Cluster("primary", {
///     name: "rollback-ns-cluster",
///     location: "us-central1",
///     initialNodeCount: 1,
///     workloadIdentityConfig: {
///         workloadPool: "my-project-name.svc.id.goog",
///     },
///     addonsConfig: {
///         gkeBackupAgentConfig: {
///             enabled: true,
///         },
///     },
///     deletionProtection: true,
///     network: "default",
///     subnetwork: "default",
/// });
/// const basic = new gcp.gkebackup.BackupPlan("basic", {
///     name: "rollback-ns",
///     cluster: primary.id,
///     location: "us-central1",
///     backupConfig: {
///         includeVolumeData: true,
///         includeSecrets: true,
///         allNamespaces: true,
///     },
/// });
/// const rollbackNs = new gcp.gkebackup.RestorePlan("rollback_ns", {
///     name: "rollback-ns-rp",
///     location: "us-central1",
///     backupPlan: basic.id,
///     cluster: primary.id,
///     restoreConfig: {
///         selectedNamespaces: {
///             namespaces: ["my-ns"],
///         },
///         namespacedResourceRestoreMode: "DELETE_AND_RESTORE",
///         volumeDataRestorePolicy: "RESTORE_VOLUME_DATA_FROM_BACKUP",
///         clusterResourceRestoreScope: {
///             selectedGroupKinds: [
///                 {
///                     resourceGroup: "apiextension.k8s.io",
///                     resourceKind: "CustomResourceDefinition",
///                 },
///                 {
///                     resourceGroup: "storage.k8s.io",
///                     resourceKind: "StorageClass",
///                 },
///             ],
///         },
///         clusterResourceConflictPolicy: "USE_EXISTING_VERSION",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// primary = gcp.container.Cluster("primary",
///     name="rollback-ns-cluster",
///     location="us-central1",
///     initial_node_count=1,
///     workload_identity_config={
///         "workload_pool": "my-project-name.svc.id.goog",
///     },
///     addons_config={
///         "gke_backup_agent_config": {
///             "enabled": True,
///         },
///     },
///     deletion_protection=True,
///     network="default",
///     subnetwork="default")
/// basic = gcp.gkebackup.BackupPlan("basic",
///     name="rollback-ns",
///     cluster=primary.id,
///     location="us-central1",
///     backup_config={
///         "include_volume_data": True,
///         "include_secrets": True,
///         "all_namespaces": True,
///     })
/// rollback_ns = gcp.gkebackup.RestorePlan("rollback_ns",
///     name="rollback-ns-rp",
///     location="us-central1",
///     backup_plan=basic.id,
///     cluster=primary.id,
///     restore_config={
///         "selected_namespaces": {
///             "namespaces": ["my-ns"],
///         },
///         "namespaced_resource_restore_mode": "DELETE_AND_RESTORE",
///         "volume_data_restore_policy": "RESTORE_VOLUME_DATA_FROM_BACKUP",
///         "cluster_resource_restore_scope": {
///             "selected_group_kinds": [
///                 {
///                     "resource_group": "apiextension.k8s.io",
///                     "resource_kind": "CustomResourceDefinition",
///                 },
///                 {
///                     "resource_group": "storage.k8s.io",
///                     "resource_kind": "StorageClass",
///                 },
///             ],
///         },
///         "cluster_resource_conflict_policy": "USE_EXISTING_VERSION",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var primary = new Gcp.Container.Cluster("primary", new()
///     {
///         Name = "rollback-ns-cluster",
///         Location = "us-central1",
///         InitialNodeCount = 1,
///         WorkloadIdentityConfig = new Gcp.Container.Inputs.ClusterWorkloadIdentityConfigArgs
///         {
///             WorkloadPool = "my-project-name.svc.id.goog",
///         },
///         AddonsConfig = new Gcp.Container.Inputs.ClusterAddonsConfigArgs
///         {
///             GkeBackupAgentConfig = new Gcp.Container.Inputs.ClusterAddonsConfigGkeBackupAgentConfigArgs
///             {
///                 Enabled = true,
///             },
///         },
///         DeletionProtection = true,
///         Network = "default",
///         Subnetwork = "default",
///     });
///
///     var basic = new Gcp.GkeBackup.BackupPlan("basic", new()
///     {
///         Name = "rollback-ns",
///         Cluster = primary.Id,
///         Location = "us-central1",
///         BackupConfig = new Gcp.GkeBackup.Inputs.BackupPlanBackupConfigArgs
///         {
///             IncludeVolumeData = true,
///             IncludeSecrets = true,
///             AllNamespaces = true,
///         },
///     });
///
///     var rollbackNs = new Gcp.GkeBackup.RestorePlan("rollback_ns", new()
///     {
///         Name = "rollback-ns-rp",
///         Location = "us-central1",
///         BackupPlan = basic.Id,
///         Cluster = primary.Id,
///         RestoreConfig = new Gcp.GkeBackup.Inputs.RestorePlanRestoreConfigArgs
///         {
///             SelectedNamespaces = new Gcp.GkeBackup.Inputs.RestorePlanRestoreConfigSelectedNamespacesArgs
///             {
///                 Namespaces = new[]
///                 {
///                     "my-ns",
///                 },
///             },
///             NamespacedResourceRestoreMode = "DELETE_AND_RESTORE",
///             VolumeDataRestorePolicy = "RESTORE_VOLUME_DATA_FROM_BACKUP",
///             ClusterResourceRestoreScope = new Gcp.GkeBackup.Inputs.RestorePlanRestoreConfigClusterResourceRestoreScopeArgs
///             {
///                 SelectedGroupKinds = new[]
///                 {
///                     new Gcp.GkeBackup.Inputs.RestorePlanRestoreConfigClusterResourceRestoreScopeSelectedGroupKindArgs
///                     {
///                         ResourceGroup = "apiextension.k8s.io",
///                         ResourceKind = "CustomResourceDefinition",
///                     },
///                     new Gcp.GkeBackup.Inputs.RestorePlanRestoreConfigClusterResourceRestoreScopeSelectedGroupKindArgs
///                     {
///                         ResourceGroup = "storage.k8s.io",
///                         ResourceKind = "StorageClass",
///                     },
///                 },
///             },
///             ClusterResourceConflictPolicy = "USE_EXISTING_VERSION",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/container"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/gkebackup"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		primary, err := container.NewCluster(ctx, "primary", &container.ClusterArgs{
/// 			Name:             pulumi.String("rollback-ns-cluster"),
/// 			Location:         pulumi.String("us-central1"),
/// 			InitialNodeCount: pulumi.Int(1),
/// 			WorkloadIdentityConfig: &container.ClusterWorkloadIdentityConfigArgs{
/// 				WorkloadPool: pulumi.String("my-project-name.svc.id.goog"),
/// 			},
/// 			AddonsConfig: &container.ClusterAddonsConfigArgs{
/// 				GkeBackupAgentConfig: &container.ClusterAddonsConfigGkeBackupAgentConfigArgs{
/// 					Enabled: pulumi.Bool(true),
/// 				},
/// 			},
/// 			DeletionProtection: pulumi.Bool(true),
/// 			Network:            pulumi.String("default"),
/// 			Subnetwork:         pulumi.String("default"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		basic, err := gkebackup.NewBackupPlan(ctx, "basic", &gkebackup.BackupPlanArgs{
/// 			Name:     pulumi.String("rollback-ns"),
/// 			Cluster:  primary.ID().ToIDOutput().ToStringOutput(),
/// 			Location: pulumi.String("us-central1"),
/// 			BackupConfig: &gkebackup.BackupPlanBackupConfigArgs{
/// 				IncludeVolumeData: pulumi.Bool(true),
/// 				IncludeSecrets:    pulumi.Bool(true),
/// 				AllNamespaces:     pulumi.Bool(true),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = gkebackup.NewRestorePlan(ctx, "rollback_ns", &gkebackup.RestorePlanArgs{
/// 			Name:       pulumi.String("rollback-ns-rp"),
/// 			Location:   pulumi.String("us-central1"),
/// 			BackupPlan: basic.ID().ToIDOutput().ToStringOutput(),
/// 			Cluster:    primary.ID().ToIDOutput().ToStringOutput(),
/// 			RestoreConfig: &gkebackup.RestorePlanRestoreConfigArgs{
/// 				SelectedNamespaces: &gkebackup.RestorePlanRestoreConfigSelectedNamespacesArgs{
/// 					Namespaces: pulumi.StringArray{
/// 						pulumi.String("my-ns"),
/// 					},
/// 				},
/// 				NamespacedResourceRestoreMode: pulumi.String("DELETE_AND_RESTORE"),
/// 				VolumeDataRestorePolicy:       pulumi.String("RESTORE_VOLUME_DATA_FROM_BACKUP"),
/// 				ClusterResourceRestoreScope: &gkebackup.RestorePlanRestoreConfigClusterResourceRestoreScopeArgs{
/// 					SelectedGroupKinds: gkebackup.RestorePlanRestoreConfigClusterResourceRestoreScopeSelectedGroupKindArray{
/// 						&gkebackup.RestorePlanRestoreConfigClusterResourceRestoreScopeSelectedGroupKindArgs{
/// 							ResourceGroup: pulumi.String("apiextension.k8s.io"),
/// 							ResourceKind:  pulumi.String("CustomResourceDefinition"),
/// 						},
/// 						&gkebackup.RestorePlanRestoreConfigClusterResourceRestoreScopeSelectedGroupKindArgs{
/// 							ResourceGroup: pulumi.String("storage.k8s.io"),
/// 							ResourceKind:  pulumi.String("StorageClass"),
/// 						},
/// 					},
/// 				},
/// 				ClusterResourceConflictPolicy: pulumi.String("USE_EXISTING_VERSION"),
/// 			},
/// 		})
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_container_cluster" "primary" {
///   name               = "rollback-ns-cluster"
///   location           = "us-central1"
///   initial_node_count = 1
///   workload_identity_config = {
///     workload_pool = "my-project-name.svc.id.goog"
///   }
///   addons_config = {
///     gke_backup_agent_config = {
///       enabled = true
///     }
///   }
///   deletion_protection = true
///   network             = "default"
///   subnetwork          = "default"
/// }
/// resource "gcp_gkebackup_backupplan" "basic" {
///   name     = "rollback-ns"
///   cluster  = gcp_container_cluster.primary.id
///   location = "us-central1"
///   backup_config = {
///     include_volume_data = true
///     include_secrets     = true
///     all_namespaces      = true
///   }
/// }
/// resource "gcp_gkebackup_restoreplan" "rollback_ns" {
///   name        = "rollback-ns-rp"
///   location    = "us-central1"
///   backup_plan = gcp_gkebackup_backupplan.basic.id
///   cluster     = gcp_container_cluster.primary.id
///   restore_config = {
///     selected_namespaces = {
///       namespaces = ["my-ns"]
///     }
///     namespaced_resource_restore_mode = "DELETE_AND_RESTORE"
///     volume_data_restore_policy       = "RESTORE_VOLUME_DATA_FROM_BACKUP"
///     cluster_resource_restore_scope = {
///       selected_group_kinds = [{
///         "resourceGroup" = "apiextension.k8s.io"
///         "resourceKind"  = "CustomResourceDefinition"
///         }, {
///         "resourceGroup" = "storage.k8s.io"
///         "resourceKind"  = "StorageClass"
///       }]
///     }
///     cluster_resource_conflict_policy = "USE_EXISTING_VERSION"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.container.Cluster;
/// import com.pulumi.gcp.container.ClusterArgs;
/// import com.pulumi.gcp.container.inputs.ClusterWorkloadIdentityConfigArgs;
/// import com.pulumi.gcp.container.inputs.ClusterAddonsConfigArgs;
/// import com.pulumi.gcp.container.inputs.ClusterAddonsConfigGkeBackupAgentConfigArgs;
/// import com.pulumi.gcp.gkebackup.BackupPlan;
/// import com.pulumi.gcp.gkebackup.BackupPlanArgs;
/// import com.pulumi.gcp.gkebackup.inputs.BackupPlanBackupConfigArgs;
/// import com.pulumi.gcp.gkebackup.RestorePlan;
/// import com.pulumi.gcp.gkebackup.RestorePlanArgs;
/// import com.pulumi.gcp.gkebackup.inputs.RestorePlanRestoreConfigArgs;
/// import com.pulumi.gcp.gkebackup.inputs.RestorePlanRestoreConfigSelectedNamespacesArgs;
/// import com.pulumi.gcp.gkebackup.inputs.RestorePlanRestoreConfigClusterResourceRestoreScopeArgs;
/// import com.pulumi.gcp.gkebackup.inputs.RestorePlanRestoreConfigClusterResourceRestoreScopeSelectedGroupKindArgs;
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
///         var primary = new Cluster("primary", ClusterArgs.builder()
///             .name("rollback-ns-cluster")
///             .location("us-central1")
///             .initialNodeCount(1)
///             .workloadIdentityConfig(ClusterWorkloadIdentityConfigArgs.builder()
///                 .workloadPool("my-project-name.svc.id.goog")
///                 .build())
///             .addonsConfig(ClusterAddonsConfigArgs.builder()
///                 .gkeBackupAgentConfig(ClusterAddonsConfigGkeBackupAgentConfigArgs.builder()
///                     .enabled(true)
///                     .build())
///                 .build())
///             .deletionProtection(true)
///             .network("default")
///             .subnetwork("default")
///             .build());
///
///         var basic = new BackupPlan("basic", BackupPlanArgs.builder()
///             .name("rollback-ns")
///             .cluster(primary.id())
///             .location("us-central1")
///             .backupConfig(BackupPlanBackupConfigArgs.builder()
///                 .includeVolumeData(true)
///                 .includeSecrets(true)
///                 .allNamespaces(true)
///                 .build())
///             .build());
///
///         var rollbackNs = new RestorePlan("rollbackNs", RestorePlanArgs.builder()
///             .name("rollback-ns-rp")
///             .location("us-central1")
///             .backupPlan(basic.id())
///             .cluster(primary.id())
///             .restoreConfig(RestorePlanRestoreConfigArgs.builder()
///                 .selectedNamespaces(RestorePlanRestoreConfigSelectedNamespacesArgs.builder()
///                     .namespaces("my-ns")
///                     .build())
///                 .namespacedResourceRestoreMode("DELETE_AND_RESTORE")
///                 .volumeDataRestorePolicy("RESTORE_VOLUME_DATA_FROM_BACKUP")
///                 .clusterResourceRestoreScope(RestorePlanRestoreConfigClusterResourceRestoreScopeArgs.builder()
///                     .selectedGroupKinds(
///                         RestorePlanRestoreConfigClusterResourceRestoreScopeSelectedGroupKindArgs.builder()
///                             .resourceGroup("apiextension.k8s.io")
///                             .resourceKind("CustomResourceDefinition")
///                             .build(),
///                         RestorePlanRestoreConfigClusterResourceRestoreScopeSelectedGroupKindArgs.builder()
///                             .resourceGroup("storage.k8s.io")
///                             .resourceKind("StorageClass")
///                             .build())
///                     .build())
///                 .clusterResourceConflictPolicy("USE_EXISTING_VERSION")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   primary:
///     type: gcp:container:Cluster
///     properties:
///       name: rollback-ns-cluster
///       location: us-central1
///       initialNodeCount: 1
///       workloadIdentityConfig:
///         workloadPool: my-project-name.svc.id.goog
///       addonsConfig:
///         gkeBackupAgentConfig:
///           enabled: true
///       deletionProtection: true
///       network: default
///       subnetwork: default
///   basic:
///     type: gcp:gkebackup:BackupPlan
///     properties:
///       name: rollback-ns
///       cluster: ${primary.id}
///       location: us-central1
///       backupConfig:
///         includeVolumeData: true
///         includeSecrets: true
///         allNamespaces: true
///   rollbackNs:
///     type: gcp:gkebackup:RestorePlan
///     name: rollback_ns
///     properties:
///       name: rollback-ns-rp
///       location: us-central1
///       backupPlan: ${basic.id}
///       cluster: ${primary.id}
///       restoreConfig:
///         selectedNamespaces:
///           namespaces:
///             - my-ns
///         namespacedResourceRestoreMode: DELETE_AND_RESTORE
///         volumeDataRestorePolicy: RESTORE_VOLUME_DATA_FROM_BACKUP
///         clusterResourceRestoreScope:
///           selectedGroupKinds:
///             - resourceGroup: apiextension.k8s.io
///               resourceKind: CustomResourceDefinition
///             - resourceGroup: storage.k8s.io
///               resourceKind: StorageClass
///         clusterResourceConflictPolicy: USE_EXISTING_VERSION
/// ```
///
/// ### Gkebackup Restoreplan Protected Application
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const primary = new gcp.container.Cluster("primary", {
///     name: "rollback-app-cluster",
///     location: "us-central1",
///     initialNodeCount: 1,
///     workloadIdentityConfig: {
///         workloadPool: "my-project-name.svc.id.goog",
///     },
///     addonsConfig: {
///         gkeBackupAgentConfig: {
///             enabled: true,
///         },
///     },
///     deletionProtection: true,
///     network: "default",
///     subnetwork: "default",
/// });
/// const basic = new gcp.gkebackup.BackupPlan("basic", {
///     name: "rollback-app",
///     cluster: primary.id,
///     location: "us-central1",
///     backupConfig: {
///         includeVolumeData: true,
///         includeSecrets: true,
///         allNamespaces: true,
///     },
/// });
/// const rollbackApp = new gcp.gkebackup.RestorePlan("rollback_app", {
///     name: "rollback-app-rp",
///     location: "us-central1",
///     backupPlan: basic.id,
///     cluster: primary.id,
///     restoreConfig: {
///         selectedApplications: {
///             namespacedNames: [{
///                 name: "my-app",
///                 namespace: "my-ns",
///             }],
///         },
///         namespacedResourceRestoreMode: "DELETE_AND_RESTORE",
///         volumeDataRestorePolicy: "REUSE_VOLUME_HANDLE_FROM_BACKUP",
///         clusterResourceRestoreScope: {
///             noGroupKinds: true,
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// primary = gcp.container.Cluster("primary",
///     name="rollback-app-cluster",
///     location="us-central1",
///     initial_node_count=1,
///     workload_identity_config={
///         "workload_pool": "my-project-name.svc.id.goog",
///     },
///     addons_config={
///         "gke_backup_agent_config": {
///             "enabled": True,
///         },
///     },
///     deletion_protection=True,
///     network="default",
///     subnetwork="default")
/// basic = gcp.gkebackup.BackupPlan("basic",
///     name="rollback-app",
///     cluster=primary.id,
///     location="us-central1",
///     backup_config={
///         "include_volume_data": True,
///         "include_secrets": True,
///         "all_namespaces": True,
///     })
/// rollback_app = gcp.gkebackup.RestorePlan("rollback_app",
///     name="rollback-app-rp",
///     location="us-central1",
///     backup_plan=basic.id,
///     cluster=primary.id,
///     restore_config={
///         "selected_applications": {
///             "namespaced_names": [{
///                 "name": "my-app",
///                 "namespace": "my-ns",
///             }],
///         },
///         "namespaced_resource_restore_mode": "DELETE_AND_RESTORE",
///         "volume_data_restore_policy": "REUSE_VOLUME_HANDLE_FROM_BACKUP",
///         "cluster_resource_restore_scope": {
///             "no_group_kinds": True,
///         },
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var primary = new Gcp.Container.Cluster("primary", new()
///     {
///         Name = "rollback-app-cluster",
///         Location = "us-central1",
///         InitialNodeCount = 1,
///         WorkloadIdentityConfig = new Gcp.Container.Inputs.ClusterWorkloadIdentityConfigArgs
///         {
///             WorkloadPool = "my-project-name.svc.id.goog",
///         },
///         AddonsConfig = new Gcp.Container.Inputs.ClusterAddonsConfigArgs
///         {
///             GkeBackupAgentConfig = new Gcp.Container.Inputs.ClusterAddonsConfigGkeBackupAgentConfigArgs
///             {
///                 Enabled = true,
///             },
///         },
///         DeletionProtection = true,
///         Network = "default",
///         Subnetwork = "default",
///     });
///
///     var basic = new Gcp.GkeBackup.BackupPlan("basic", new()
///     {
///         Name = "rollback-app",
///         Cluster = primary.Id,
///         Location = "us-central1",
///         BackupConfig = new Gcp.GkeBackup.Inputs.BackupPlanBackupConfigArgs
///         {
///             IncludeVolumeData = true,
///             IncludeSecrets = true,
///             AllNamespaces = true,
///         },
///     });
///
///     var rollbackApp = new Gcp.GkeBackup.RestorePlan("rollback_app", new()
///     {
///         Name = "rollback-app-rp",
///         Location = "us-central1",
///         BackupPlan = basic.Id,
///         Cluster = primary.Id,
///         RestoreConfig = new Gcp.GkeBackup.Inputs.RestorePlanRestoreConfigArgs
///         {
///             SelectedApplications = new Gcp.GkeBackup.Inputs.RestorePlanRestoreConfigSelectedApplicationsArgs
///             {
///                 NamespacedNames = new[]
///                 {
///                     new Gcp.GkeBackup.Inputs.RestorePlanRestoreConfigSelectedApplicationsNamespacedNameArgs
///                     {
///                         Name = "my-app",
///                         Namespace = "my-ns",
///                     },
///                 },
///             },
///             NamespacedResourceRestoreMode = "DELETE_AND_RESTORE",
///             VolumeDataRestorePolicy = "REUSE_VOLUME_HANDLE_FROM_BACKUP",
///             ClusterResourceRestoreScope = new Gcp.GkeBackup.Inputs.RestorePlanRestoreConfigClusterResourceRestoreScopeArgs
///             {
///                 NoGroupKinds = true,
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/container"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/gkebackup"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		primary, err := container.NewCluster(ctx, "primary", &container.ClusterArgs{
/// 			Name:             pulumi.String("rollback-app-cluster"),
/// 			Location:         pulumi.String("us-central1"),
/// 			InitialNodeCount: pulumi.Int(1),
/// 			WorkloadIdentityConfig: &container.ClusterWorkloadIdentityConfigArgs{
/// 				WorkloadPool: pulumi.String("my-project-name.svc.id.goog"),
/// 			},
/// 			AddonsConfig: &container.ClusterAddonsConfigArgs{
/// 				GkeBackupAgentConfig: &container.ClusterAddonsConfigGkeBackupAgentConfigArgs{
/// 					Enabled: pulumi.Bool(true),
/// 				},
/// 			},
/// 			DeletionProtection: pulumi.Bool(true),
/// 			Network:            pulumi.String("default"),
/// 			Subnetwork:         pulumi.String("default"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		basic, err := gkebackup.NewBackupPlan(ctx, "basic", &gkebackup.BackupPlanArgs{
/// 			Name:     pulumi.String("rollback-app"),
/// 			Cluster:  primary.ID().ToIDOutput().ToStringOutput(),
/// 			Location: pulumi.String("us-central1"),
/// 			BackupConfig: &gkebackup.BackupPlanBackupConfigArgs{
/// 				IncludeVolumeData: pulumi.Bool(true),
/// 				IncludeSecrets:    pulumi.Bool(true),
/// 				AllNamespaces:     pulumi.Bool(true),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = gkebackup.NewRestorePlan(ctx, "rollback_app", &gkebackup.RestorePlanArgs{
/// 			Name:       pulumi.String("rollback-app-rp"),
/// 			Location:   pulumi.String("us-central1"),
/// 			BackupPlan: basic.ID().ToIDOutput().ToStringOutput(),
/// 			Cluster:    primary.ID().ToIDOutput().ToStringOutput(),
/// 			RestoreConfig: &gkebackup.RestorePlanRestoreConfigArgs{
/// 				SelectedApplications: &gkebackup.RestorePlanRestoreConfigSelectedApplicationsArgs{
/// 					NamespacedNames: gkebackup.RestorePlanRestoreConfigSelectedApplicationsNamespacedNameArray{
/// 						&gkebackup.RestorePlanRestoreConfigSelectedApplicationsNamespacedNameArgs{
/// 							Name:      pulumi.String("my-app"),
/// 							Namespace: pulumi.String("my-ns"),
/// 						},
/// 					},
/// 				},
/// 				NamespacedResourceRestoreMode: pulumi.String("DELETE_AND_RESTORE"),
/// 				VolumeDataRestorePolicy:       pulumi.String("REUSE_VOLUME_HANDLE_FROM_BACKUP"),
/// 				ClusterResourceRestoreScope: &gkebackup.RestorePlanRestoreConfigClusterResourceRestoreScopeArgs{
/// 					NoGroupKinds: pulumi.Bool(true),
/// 				},
/// 			},
/// 		})
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_container_cluster" "primary" {
///   name               = "rollback-app-cluster"
///   location           = "us-central1"
///   initial_node_count = 1
///   workload_identity_config = {
///     workload_pool = "my-project-name.svc.id.goog"
///   }
///   addons_config = {
///     gke_backup_agent_config = {
///       enabled = true
///     }
///   }
///   deletion_protection = true
///   network             = "default"
///   subnetwork          = "default"
/// }
/// resource "gcp_gkebackup_backupplan" "basic" {
///   name     = "rollback-app"
///   cluster  = gcp_container_cluster.primary.id
///   location = "us-central1"
///   backup_config = {
///     include_volume_data = true
///     include_secrets     = true
///     all_namespaces      = true
///   }
/// }
/// resource "gcp_gkebackup_restoreplan" "rollback_app" {
///   name        = "rollback-app-rp"
///   location    = "us-central1"
///   backup_plan = gcp_gkebackup_backupplan.basic.id
///   cluster     = gcp_container_cluster.primary.id
///   restore_config = {
///     selected_applications = {
///       namespaced_names = [{
///         "name"      = "my-app"
///         "namespace" = "my-ns"
///       }]
///     }
///     namespaced_resource_restore_mode = "DELETE_AND_RESTORE"
///     volume_data_restore_policy       = "REUSE_VOLUME_HANDLE_FROM_BACKUP"
///     cluster_resource_restore_scope = {
///       no_group_kinds = true
///     }
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.container.Cluster;
/// import com.pulumi.gcp.container.ClusterArgs;
/// import com.pulumi.gcp.container.inputs.ClusterWorkloadIdentityConfigArgs;
/// import com.pulumi.gcp.container.inputs.ClusterAddonsConfigArgs;
/// import com.pulumi.gcp.container.inputs.ClusterAddonsConfigGkeBackupAgentConfigArgs;
/// import com.pulumi.gcp.gkebackup.BackupPlan;
/// import com.pulumi.gcp.gkebackup.BackupPlanArgs;
/// import com.pulumi.gcp.gkebackup.inputs.BackupPlanBackupConfigArgs;
/// import com.pulumi.gcp.gkebackup.RestorePlan;
/// import com.pulumi.gcp.gkebackup.RestorePlanArgs;
/// import com.pulumi.gcp.gkebackup.inputs.RestorePlanRestoreConfigArgs;
/// import com.pulumi.gcp.gkebackup.inputs.RestorePlanRestoreConfigSelectedApplicationsArgs;
/// import com.pulumi.gcp.gkebackup.inputs.RestorePlanRestoreConfigSelectedApplicationsNamespacedNameArgs;
/// import com.pulumi.gcp.gkebackup.inputs.RestorePlanRestoreConfigClusterResourceRestoreScopeArgs;
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
///         var primary = new Cluster("primary", ClusterArgs.builder()
///             .name("rollback-app-cluster")
///             .location("us-central1")
///             .initialNodeCount(1)
///             .workloadIdentityConfig(ClusterWorkloadIdentityConfigArgs.builder()
///                 .workloadPool("my-project-name.svc.id.goog")
///                 .build())
///             .addonsConfig(ClusterAddonsConfigArgs.builder()
///                 .gkeBackupAgentConfig(ClusterAddonsConfigGkeBackupAgentConfigArgs.builder()
///                     .enabled(true)
///                     .build())
///                 .build())
///             .deletionProtection(true)
///             .network("default")
///             .subnetwork("default")
///             .build());
///
///         var basic = new BackupPlan("basic", BackupPlanArgs.builder()
///             .name("rollback-app")
///             .cluster(primary.id())
///             .location("us-central1")
///             .backupConfig(BackupPlanBackupConfigArgs.builder()
///                 .includeVolumeData(true)
///                 .includeSecrets(true)
///                 .allNamespaces(true)
///                 .build())
///             .build());
///
///         var rollbackApp = new RestorePlan("rollbackApp", RestorePlanArgs.builder()
///             .name("rollback-app-rp")
///             .location("us-central1")
///             .backupPlan(basic.id())
///             .cluster(primary.id())
///             .restoreConfig(RestorePlanRestoreConfigArgs.builder()
///                 .selectedApplications(RestorePlanRestoreConfigSelectedApplicationsArgs.builder()
///                     .namespacedNames(RestorePlanRestoreConfigSelectedApplicationsNamespacedNameArgs.builder()
///                         .name("my-app")
///                         .namespace("my-ns")
///                         .build())
///                     .build())
///                 .namespacedResourceRestoreMode("DELETE_AND_RESTORE")
///                 .volumeDataRestorePolicy("REUSE_VOLUME_HANDLE_FROM_BACKUP")
///                 .clusterResourceRestoreScope(RestorePlanRestoreConfigClusterResourceRestoreScopeArgs.builder()
///                     .noGroupKinds(true)
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   primary:
///     type: gcp:container:Cluster
///     properties:
///       name: rollback-app-cluster
///       location: us-central1
///       initialNodeCount: 1
///       workloadIdentityConfig:
///         workloadPool: my-project-name.svc.id.goog
///       addonsConfig:
///         gkeBackupAgentConfig:
///           enabled: true
///       deletionProtection: true
///       network: default
///       subnetwork: default
///   basic:
///     type: gcp:gkebackup:BackupPlan
///     properties:
///       name: rollback-app
///       cluster: ${primary.id}
///       location: us-central1
///       backupConfig:
///         includeVolumeData: true
///         includeSecrets: true
///         allNamespaces: true
///   rollbackApp:
///     type: gcp:gkebackup:RestorePlan
///     name: rollback_app
///     properties:
///       name: rollback-app-rp
///       location: us-central1
///       backupPlan: ${basic.id}
///       cluster: ${primary.id}
///       restoreConfig:
///         selectedApplications:
///           namespacedNames:
///             - name: my-app
///               namespace: my-ns
///         namespacedResourceRestoreMode: DELETE_AND_RESTORE
///         volumeDataRestorePolicy: REUSE_VOLUME_HANDLE_FROM_BACKUP
///         clusterResourceRestoreScope:
///           noGroupKinds: true
/// ```
///
/// ### Gkebackup Restoreplan All Cluster Resources
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const primary = new gcp.container.Cluster("primary", {
///     name: "all-groupkinds-cluster",
///     location: "us-central1",
///     initialNodeCount: 1,
///     workloadIdentityConfig: {
///         workloadPool: "my-project-name.svc.id.goog",
///     },
///     addonsConfig: {
///         gkeBackupAgentConfig: {
///             enabled: true,
///         },
///     },
///     deletionProtection: true,
///     network: "default",
///     subnetwork: "default",
/// });
/// const basic = new gcp.gkebackup.BackupPlan("basic", {
///     name: "all-groupkinds",
///     cluster: primary.id,
///     location: "us-central1",
///     backupConfig: {
///         includeVolumeData: true,
///         includeSecrets: true,
///         allNamespaces: true,
///     },
/// });
/// const allClusterResources = new gcp.gkebackup.RestorePlan("all_cluster_resources", {
///     name: "all-groupkinds-rp",
///     location: "us-central1",
///     backupPlan: basic.id,
///     cluster: primary.id,
///     restoreConfig: {
///         noNamespaces: true,
///         namespacedResourceRestoreMode: "FAIL_ON_CONFLICT",
///         clusterResourceRestoreScope: {
///             allGroupKinds: true,
///         },
///         clusterResourceConflictPolicy: "USE_EXISTING_VERSION",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// primary = gcp.container.Cluster("primary",
///     name="all-groupkinds-cluster",
///     location="us-central1",
///     initial_node_count=1,
///     workload_identity_config={
///         "workload_pool": "my-project-name.svc.id.goog",
///     },
///     addons_config={
///         "gke_backup_agent_config": {
///             "enabled": True,
///         },
///     },
///     deletion_protection=True,
///     network="default",
///     subnetwork="default")
/// basic = gcp.gkebackup.BackupPlan("basic",
///     name="all-groupkinds",
///     cluster=primary.id,
///     location="us-central1",
///     backup_config={
///         "include_volume_data": True,
///         "include_secrets": True,
///         "all_namespaces": True,
///     })
/// all_cluster_resources = gcp.gkebackup.RestorePlan("all_cluster_resources",
///     name="all-groupkinds-rp",
///     location="us-central1",
///     backup_plan=basic.id,
///     cluster=primary.id,
///     restore_config={
///         "no_namespaces": True,
///         "namespaced_resource_restore_mode": "FAIL_ON_CONFLICT",
///         "cluster_resource_restore_scope": {
///             "all_group_kinds": True,
///         },
///         "cluster_resource_conflict_policy": "USE_EXISTING_VERSION",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var primary = new Gcp.Container.Cluster("primary", new()
///     {
///         Name = "all-groupkinds-cluster",
///         Location = "us-central1",
///         InitialNodeCount = 1,
///         WorkloadIdentityConfig = new Gcp.Container.Inputs.ClusterWorkloadIdentityConfigArgs
///         {
///             WorkloadPool = "my-project-name.svc.id.goog",
///         },
///         AddonsConfig = new Gcp.Container.Inputs.ClusterAddonsConfigArgs
///         {
///             GkeBackupAgentConfig = new Gcp.Container.Inputs.ClusterAddonsConfigGkeBackupAgentConfigArgs
///             {
///                 Enabled = true,
///             },
///         },
///         DeletionProtection = true,
///         Network = "default",
///         Subnetwork = "default",
///     });
///
///     var basic = new Gcp.GkeBackup.BackupPlan("basic", new()
///     {
///         Name = "all-groupkinds",
///         Cluster = primary.Id,
///         Location = "us-central1",
///         BackupConfig = new Gcp.GkeBackup.Inputs.BackupPlanBackupConfigArgs
///         {
///             IncludeVolumeData = true,
///             IncludeSecrets = true,
///             AllNamespaces = true,
///         },
///     });
///
///     var allClusterResources = new Gcp.GkeBackup.RestorePlan("all_cluster_resources", new()
///     {
///         Name = "all-groupkinds-rp",
///         Location = "us-central1",
///         BackupPlan = basic.Id,
///         Cluster = primary.Id,
///         RestoreConfig = new Gcp.GkeBackup.Inputs.RestorePlanRestoreConfigArgs
///         {
///             NoNamespaces = true,
///             NamespacedResourceRestoreMode = "FAIL_ON_CONFLICT",
///             ClusterResourceRestoreScope = new Gcp.GkeBackup.Inputs.RestorePlanRestoreConfigClusterResourceRestoreScopeArgs
///             {
///                 AllGroupKinds = true,
///             },
///             ClusterResourceConflictPolicy = "USE_EXISTING_VERSION",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/container"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/gkebackup"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		primary, err := container.NewCluster(ctx, "primary", &container.ClusterArgs{
/// 			Name:             pulumi.String("all-groupkinds-cluster"),
/// 			Location:         pulumi.String("us-central1"),
/// 			InitialNodeCount: pulumi.Int(1),
/// 			WorkloadIdentityConfig: &container.ClusterWorkloadIdentityConfigArgs{
/// 				WorkloadPool: pulumi.String("my-project-name.svc.id.goog"),
/// 			},
/// 			AddonsConfig: &container.ClusterAddonsConfigArgs{
/// 				GkeBackupAgentConfig: &container.ClusterAddonsConfigGkeBackupAgentConfigArgs{
/// 					Enabled: pulumi.Bool(true),
/// 				},
/// 			},
/// 			DeletionProtection: pulumi.Bool(true),
/// 			Network:            pulumi.String("default"),
/// 			Subnetwork:         pulumi.String("default"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		basic, err := gkebackup.NewBackupPlan(ctx, "basic", &gkebackup.BackupPlanArgs{
/// 			Name:     pulumi.String("all-groupkinds"),
/// 			Cluster:  primary.ID().ToIDOutput().ToStringOutput(),
/// 			Location: pulumi.String("us-central1"),
/// 			BackupConfig: &gkebackup.BackupPlanBackupConfigArgs{
/// 				IncludeVolumeData: pulumi.Bool(true),
/// 				IncludeSecrets:    pulumi.Bool(true),
/// 				AllNamespaces:     pulumi.Bool(true),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = gkebackup.NewRestorePlan(ctx, "all_cluster_resources", &gkebackup.RestorePlanArgs{
/// 			Name:       pulumi.String("all-groupkinds-rp"),
/// 			Location:   pulumi.String("us-central1"),
/// 			BackupPlan: basic.ID().ToIDOutput().ToStringOutput(),
/// 			Cluster:    primary.ID().ToIDOutput().ToStringOutput(),
/// 			RestoreConfig: &gkebackup.RestorePlanRestoreConfigArgs{
/// 				NoNamespaces:                  pulumi.Bool(true),
/// 				NamespacedResourceRestoreMode: pulumi.String("FAIL_ON_CONFLICT"),
/// 				ClusterResourceRestoreScope: &gkebackup.RestorePlanRestoreConfigClusterResourceRestoreScopeArgs{
/// 					AllGroupKinds: pulumi.Bool(true),
/// 				},
/// 				ClusterResourceConflictPolicy: pulumi.String("USE_EXISTING_VERSION"),
/// 			},
/// 		})
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_container_cluster" "primary" {
///   name               = "all-groupkinds-cluster"
///   location           = "us-central1"
///   initial_node_count = 1
///   workload_identity_config = {
///     workload_pool = "my-project-name.svc.id.goog"
///   }
///   addons_config = {
///     gke_backup_agent_config = {
///       enabled = true
///     }
///   }
///   deletion_protection = true
///   network             = "default"
///   subnetwork          = "default"
/// }
/// resource "gcp_gkebackup_backupplan" "basic" {
///   name     = "all-groupkinds"
///   cluster  = gcp_container_cluster.primary.id
///   location = "us-central1"
///   backup_config = {
///     include_volume_data = true
///     include_secrets     = true
///     all_namespaces      = true
///   }
/// }
/// resource "gcp_gkebackup_restoreplan" "all_cluster_resources" {
///   name        = "all-groupkinds-rp"
///   location    = "us-central1"
///   backup_plan = gcp_gkebackup_backupplan.basic.id
///   cluster     = gcp_container_cluster.primary.id
///   restore_config = {
///     no_namespaces                    = true
///     namespaced_resource_restore_mode = "FAIL_ON_CONFLICT"
///     cluster_resource_restore_scope = {
///       all_group_kinds = true
///     }
///     cluster_resource_conflict_policy = "USE_EXISTING_VERSION"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.container.Cluster;
/// import com.pulumi.gcp.container.ClusterArgs;
/// import com.pulumi.gcp.container.inputs.ClusterWorkloadIdentityConfigArgs;
/// import com.pulumi.gcp.container.inputs.ClusterAddonsConfigArgs;
/// import com.pulumi.gcp.container.inputs.ClusterAddonsConfigGkeBackupAgentConfigArgs;
/// import com.pulumi.gcp.gkebackup.BackupPlan;
/// import com.pulumi.gcp.gkebackup.BackupPlanArgs;
/// import com.pulumi.gcp.gkebackup.inputs.BackupPlanBackupConfigArgs;
/// import com.pulumi.gcp.gkebackup.RestorePlan;
/// import com.pulumi.gcp.gkebackup.RestorePlanArgs;
/// import com.pulumi.gcp.gkebackup.inputs.RestorePlanRestoreConfigArgs;
/// import com.pulumi.gcp.gkebackup.inputs.RestorePlanRestoreConfigClusterResourceRestoreScopeArgs;
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
///         var primary = new Cluster("primary", ClusterArgs.builder()
///             .name("all-groupkinds-cluster")
///             .location("us-central1")
///             .initialNodeCount(1)
///             .workloadIdentityConfig(ClusterWorkloadIdentityConfigArgs.builder()
///                 .workloadPool("my-project-name.svc.id.goog")
///                 .build())
///             .addonsConfig(ClusterAddonsConfigArgs.builder()
///                 .gkeBackupAgentConfig(ClusterAddonsConfigGkeBackupAgentConfigArgs.builder()
///                     .enabled(true)
///                     .build())
///                 .build())
///             .deletionProtection(true)
///             .network("default")
///             .subnetwork("default")
///             .build());
///
///         var basic = new BackupPlan("basic", BackupPlanArgs.builder()
///             .name("all-groupkinds")
///             .cluster(primary.id())
///             .location("us-central1")
///             .backupConfig(BackupPlanBackupConfigArgs.builder()
///                 .includeVolumeData(true)
///                 .includeSecrets(true)
///                 .allNamespaces(true)
///                 .build())
///             .build());
///
///         var allClusterResources = new RestorePlan("allClusterResources", RestorePlanArgs.builder()
///             .name("all-groupkinds-rp")
///             .location("us-central1")
///             .backupPlan(basic.id())
///             .cluster(primary.id())
///             .restoreConfig(RestorePlanRestoreConfigArgs.builder()
///                 .noNamespaces(true)
///                 .namespacedResourceRestoreMode("FAIL_ON_CONFLICT")
///                 .clusterResourceRestoreScope(RestorePlanRestoreConfigClusterResourceRestoreScopeArgs.builder()
///                     .allGroupKinds(true)
///                     .build())
///                 .clusterResourceConflictPolicy("USE_EXISTING_VERSION")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   primary:
///     type: gcp:container:Cluster
///     properties:
///       name: all-groupkinds-cluster
///       location: us-central1
///       initialNodeCount: 1
///       workloadIdentityConfig:
///         workloadPool: my-project-name.svc.id.goog
///       addonsConfig:
///         gkeBackupAgentConfig:
///           enabled: true
///       deletionProtection: true
///       network: default
///       subnetwork: default
///   basic:
///     type: gcp:gkebackup:BackupPlan
///     properties:
///       name: all-groupkinds
///       cluster: ${primary.id}
///       location: us-central1
///       backupConfig:
///         includeVolumeData: true
///         includeSecrets: true
///         allNamespaces: true
///   allClusterResources:
///     type: gcp:gkebackup:RestorePlan
///     name: all_cluster_resources
///     properties:
///       name: all-groupkinds-rp
///       location: us-central1
///       backupPlan: ${basic.id}
///       cluster: ${primary.id}
///       restoreConfig:
///         noNamespaces: true
///         namespacedResourceRestoreMode: FAIL_ON_CONFLICT
///         clusterResourceRestoreScope:
///           allGroupKinds: true
///         clusterResourceConflictPolicy: USE_EXISTING_VERSION
/// ```
///
/// ### Gkebackup Restoreplan Rename Namespace
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const primary = new gcp.container.Cluster("primary", {
///     name: "rename-ns-cluster",
///     location: "us-central1",
///     initialNodeCount: 1,
///     workloadIdentityConfig: {
///         workloadPool: "my-project-name.svc.id.goog",
///     },
///     addonsConfig: {
///         gkeBackupAgentConfig: {
///             enabled: true,
///         },
///     },
///     deletionProtection: true,
///     network: "default",
///     subnetwork: "default",
/// });
/// const basic = new gcp.gkebackup.BackupPlan("basic", {
///     name: "rename-ns",
///     cluster: primary.id,
///     location: "us-central1",
///     backupConfig: {
///         includeVolumeData: true,
///         includeSecrets: true,
///         allNamespaces: true,
///     },
/// });
/// const renameNs = new gcp.gkebackup.RestorePlan("rename_ns", {
///     name: "rename-ns-rp",
///     location: "us-central1",
///     backupPlan: basic.id,
///     cluster: primary.id,
///     restoreConfig: {
///         selectedNamespaces: {
///             namespaces: ["ns1"],
///         },
///         namespacedResourceRestoreMode: "FAIL_ON_CONFLICT",
///         volumeDataRestorePolicy: "REUSE_VOLUME_HANDLE_FROM_BACKUP",
///         clusterResourceRestoreScope: {
///             noGroupKinds: true,
///         },
///         transformationRules: [
///             {
///                 description: "rename namespace from ns1 to ns2",
///                 resourceFilter: {
///                     groupKinds: [{
///                         resourceKind: "Namespace",
///                     }],
///                     jsonPath: ".metadata[?(@.name == 'ns1')]",
///                 },
///                 fieldActions: [{
///                     op: "REPLACE",
///                     path: "/metadata/name",
///                     value: "ns2",
///                 }],
///             },
///             {
///                 description: "move all resources from ns1 to ns2",
///                 resourceFilter: {
///                     namespaces: ["ns1"],
///                 },
///                 fieldActions: [{
///                     op: "REPLACE",
///                     path: "/metadata/namespace",
///                     value: "ns2",
///                 }],
///             },
///         ],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// primary = gcp.container.Cluster("primary",
///     name="rename-ns-cluster",
///     location="us-central1",
///     initial_node_count=1,
///     workload_identity_config={
///         "workload_pool": "my-project-name.svc.id.goog",
///     },
///     addons_config={
///         "gke_backup_agent_config": {
///             "enabled": True,
///         },
///     },
///     deletion_protection=True,
///     network="default",
///     subnetwork="default")
/// basic = gcp.gkebackup.BackupPlan("basic",
///     name="rename-ns",
///     cluster=primary.id,
///     location="us-central1",
///     backup_config={
///         "include_volume_data": True,
///         "include_secrets": True,
///         "all_namespaces": True,
///     })
/// rename_ns = gcp.gkebackup.RestorePlan("rename_ns",
///     name="rename-ns-rp",
///     location="us-central1",
///     backup_plan=basic.id,
///     cluster=primary.id,
///     restore_config={
///         "selected_namespaces": {
///             "namespaces": ["ns1"],
///         },
///         "namespaced_resource_restore_mode": "FAIL_ON_CONFLICT",
///         "volume_data_restore_policy": "REUSE_VOLUME_HANDLE_FROM_BACKUP",
///         "cluster_resource_restore_scope": {
///             "no_group_kinds": True,
///         },
///         "transformation_rules": [
///             {
///                 "description": "rename namespace from ns1 to ns2",
///                 "resource_filter": {
///                     "group_kinds": [{
///                         "resource_kind": "Namespace",
///                     }],
///                     "json_path": ".metadata[?(@.name == 'ns1')]",
///                 },
///                 "field_actions": [{
///                     "op": "REPLACE",
///                     "path": "/metadata/name",
///                     "value": "ns2",
///                 }],
///             },
///             {
///                 "description": "move all resources from ns1 to ns2",
///                 "resource_filter": {
///                     "namespaces": ["ns1"],
///                 },
///                 "field_actions": [{
///                     "op": "REPLACE",
///                     "path": "/metadata/namespace",
///                     "value": "ns2",
///                 }],
///             },
///         ],
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var primary = new Gcp.Container.Cluster("primary", new()
///     {
///         Name = "rename-ns-cluster",
///         Location = "us-central1",
///         InitialNodeCount = 1,
///         WorkloadIdentityConfig = new Gcp.Container.Inputs.ClusterWorkloadIdentityConfigArgs
///         {
///             WorkloadPool = "my-project-name.svc.id.goog",
///         },
///         AddonsConfig = new Gcp.Container.Inputs.ClusterAddonsConfigArgs
///         {
///             GkeBackupAgentConfig = new Gcp.Container.Inputs.ClusterAddonsConfigGkeBackupAgentConfigArgs
///             {
///                 Enabled = true,
///             },
///         },
///         DeletionProtection = true,
///         Network = "default",
///         Subnetwork = "default",
///     });
///
///     var basic = new Gcp.GkeBackup.BackupPlan("basic", new()
///     {
///         Name = "rename-ns",
///         Cluster = primary.Id,
///         Location = "us-central1",
///         BackupConfig = new Gcp.GkeBackup.Inputs.BackupPlanBackupConfigArgs
///         {
///             IncludeVolumeData = true,
///             IncludeSecrets = true,
///             AllNamespaces = true,
///         },
///     });
///
///     var renameNs = new Gcp.GkeBackup.RestorePlan("rename_ns", new()
///     {
///         Name = "rename-ns-rp",
///         Location = "us-central1",
///         BackupPlan = basic.Id,
///         Cluster = primary.Id,
///         RestoreConfig = new Gcp.GkeBackup.Inputs.RestorePlanRestoreConfigArgs
///         {
///             SelectedNamespaces = new Gcp.GkeBackup.Inputs.RestorePlanRestoreConfigSelectedNamespacesArgs
///             {
///                 Namespaces = new[]
///                 {
///                     "ns1",
///                 },
///             },
///             NamespacedResourceRestoreMode = "FAIL_ON_CONFLICT",
///             VolumeDataRestorePolicy = "REUSE_VOLUME_HANDLE_FROM_BACKUP",
///             ClusterResourceRestoreScope = new Gcp.GkeBackup.Inputs.RestorePlanRestoreConfigClusterResourceRestoreScopeArgs
///             {
///                 NoGroupKinds = true,
///             },
///             TransformationRules = new[]
///             {
///                 new Gcp.GkeBackup.Inputs.RestorePlanRestoreConfigTransformationRuleArgs
///                 {
///                     Description = "rename namespace from ns1 to ns2",
///                     ResourceFilter = new Gcp.GkeBackup.Inputs.RestorePlanRestoreConfigTransformationRuleResourceFilterArgs
///                     {
///                         GroupKinds = new[]
///                         {
///                             new Gcp.GkeBackup.Inputs.RestorePlanRestoreConfigTransformationRuleResourceFilterGroupKindArgs
///                             {
///                                 ResourceKind = "Namespace",
///                             },
///                         },
///                         JsonPath = ".metadata[?(@.name == 'ns1')]",
///                     },
///                     FieldActions = new[]
///                     {
///                         new Gcp.GkeBackup.Inputs.RestorePlanRestoreConfigTransformationRuleFieldActionArgs
///                         {
///                             Op = "REPLACE",
///                             Path = "/metadata/name",
///                             Value = "ns2",
///                         },
///                     },
///                 },
///                 new Gcp.GkeBackup.Inputs.RestorePlanRestoreConfigTransformationRuleArgs
///                 {
///                     Description = "move all resources from ns1 to ns2",
///                     ResourceFilter = new Gcp.GkeBackup.Inputs.RestorePlanRestoreConfigTransformationRuleResourceFilterArgs
///                     {
///                         Namespaces = new[]
///                         {
///                             "ns1",
///                         },
///                     },
///                     FieldActions = new[]
///                     {
///                         new Gcp.GkeBackup.Inputs.RestorePlanRestoreConfigTransformationRuleFieldActionArgs
///                         {
///                             Op = "REPLACE",
///                             Path = "/metadata/namespace",
///                             Value = "ns2",
///                         },
///                     },
///                 },
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/container"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/gkebackup"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		primary, err := container.NewCluster(ctx, "primary", &container.ClusterArgs{
/// 			Name:             pulumi.String("rename-ns-cluster"),
/// 			Location:         pulumi.String("us-central1"),
/// 			InitialNodeCount: pulumi.Int(1),
/// 			WorkloadIdentityConfig: &container.ClusterWorkloadIdentityConfigArgs{
/// 				WorkloadPool: pulumi.String("my-project-name.svc.id.goog"),
/// 			},
/// 			AddonsConfig: &container.ClusterAddonsConfigArgs{
/// 				GkeBackupAgentConfig: &container.ClusterAddonsConfigGkeBackupAgentConfigArgs{
/// 					Enabled: pulumi.Bool(true),
/// 				},
/// 			},
/// 			DeletionProtection: pulumi.Bool(true),
/// 			Network:            pulumi.String("default"),
/// 			Subnetwork:         pulumi.String("default"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		basic, err := gkebackup.NewBackupPlan(ctx, "basic", &gkebackup.BackupPlanArgs{
/// 			Name:     pulumi.String("rename-ns"),
/// 			Cluster:  primary.ID().ToIDOutput().ToStringOutput(),
/// 			Location: pulumi.String("us-central1"),
/// 			BackupConfig: &gkebackup.BackupPlanBackupConfigArgs{
/// 				IncludeVolumeData: pulumi.Bool(true),
/// 				IncludeSecrets:    pulumi.Bool(true),
/// 				AllNamespaces:     pulumi.Bool(true),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = gkebackup.NewRestorePlan(ctx, "rename_ns", &gkebackup.RestorePlanArgs{
/// 			Name:       pulumi.String("rename-ns-rp"),
/// 			Location:   pulumi.String("us-central1"),
/// 			BackupPlan: basic.ID().ToIDOutput().ToStringOutput(),
/// 			Cluster:    primary.ID().ToIDOutput().ToStringOutput(),
/// 			RestoreConfig: &gkebackup.RestorePlanRestoreConfigArgs{
/// 				SelectedNamespaces: &gkebackup.RestorePlanRestoreConfigSelectedNamespacesArgs{
/// 					Namespaces: pulumi.StringArray{
/// 						pulumi.String("ns1"),
/// 					},
/// 				},
/// 				NamespacedResourceRestoreMode: pulumi.String("FAIL_ON_CONFLICT"),
/// 				VolumeDataRestorePolicy:       pulumi.String("REUSE_VOLUME_HANDLE_FROM_BACKUP"),
/// 				ClusterResourceRestoreScope: &gkebackup.RestorePlanRestoreConfigClusterResourceRestoreScopeArgs{
/// 					NoGroupKinds: pulumi.Bool(true),
/// 				},
/// 				TransformationRules: gkebackup.RestorePlanRestoreConfigTransformationRuleArray{
/// 					&gkebackup.RestorePlanRestoreConfigTransformationRuleArgs{
/// 						Description: pulumi.String("rename namespace from ns1 to ns2"),
/// 						ResourceFilter: &gkebackup.RestorePlanRestoreConfigTransformationRuleResourceFilterArgs{
/// 							GroupKinds: gkebackup.RestorePlanRestoreConfigTransformationRuleResourceFilterGroupKindArray{
/// 								&gkebackup.RestorePlanRestoreConfigTransformationRuleResourceFilterGroupKindArgs{
/// 									ResourceKind: pulumi.String("Namespace"),
/// 								},
/// 							},
/// 							JsonPath: pulumi.String(".metadata[?(@.name == 'ns1')]"),
/// 						},
/// 						FieldActions: gkebackup.RestorePlanRestoreConfigTransformationRuleFieldActionArray{
/// 							&gkebackup.RestorePlanRestoreConfigTransformationRuleFieldActionArgs{
/// 								Op:    pulumi.String("REPLACE"),
/// 								Path:  pulumi.String("/metadata/name"),
/// 								Value: pulumi.String("ns2"),
/// 							},
/// 						},
/// 					},
/// 					&gkebackup.RestorePlanRestoreConfigTransformationRuleArgs{
/// 						Description: pulumi.String("move all resources from ns1 to ns2"),
/// 						ResourceFilter: &gkebackup.RestorePlanRestoreConfigTransformationRuleResourceFilterArgs{
/// 							Namespaces: pulumi.StringArray{
/// 								pulumi.String("ns1"),
/// 							},
/// 						},
/// 						FieldActions: gkebackup.RestorePlanRestoreConfigTransformationRuleFieldActionArray{
/// 							&gkebackup.RestorePlanRestoreConfigTransformationRuleFieldActionArgs{
/// 								Op:    pulumi.String("REPLACE"),
/// 								Path:  pulumi.String("/metadata/namespace"),
/// 								Value: pulumi.String("ns2"),
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 		})
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_container_cluster" "primary" {
///   name               = "rename-ns-cluster"
///   location           = "us-central1"
///   initial_node_count = 1
///   workload_identity_config = {
///     workload_pool = "my-project-name.svc.id.goog"
///   }
///   addons_config = {
///     gke_backup_agent_config = {
///       enabled = true
///     }
///   }
///   deletion_protection = true
///   network             = "default"
///   subnetwork          = "default"
/// }
/// resource "gcp_gkebackup_backupplan" "basic" {
///   name     = "rename-ns"
///   cluster  = gcp_container_cluster.primary.id
///   location = "us-central1"
///   backup_config = {
///     include_volume_data = true
///     include_secrets     = true
///     all_namespaces      = true
///   }
/// }
/// resource "gcp_gkebackup_restoreplan" "rename_ns" {
///   name        = "rename-ns-rp"
///   location    = "us-central1"
///   backup_plan = gcp_gkebackup_backupplan.basic.id
///   cluster     = gcp_container_cluster.primary.id
///   restore_config = {
///     selected_namespaces = {
///       namespaces = ["ns1"]
///     }
///     namespaced_resource_restore_mode = "FAIL_ON_CONFLICT"
///     volume_data_restore_policy       = "REUSE_VOLUME_HANDLE_FROM_BACKUP"
///     cluster_resource_restore_scope = {
///       no_group_kinds = true
///     }
///     transformation_rules = [{
///       "description" = "rename namespace from ns1 to ns2"
///       "resourceFilter" = {
///         "groupKinds" = [{
///           "resourceKind" = "Namespace"
///         }]
///         "jsonPath" = ".metadata[?(@.name == 'ns1')]"
///       }
///       "fieldActions" = [{
///         "op"    = "REPLACE"
///         "path"  = "/metadata/name"
///         "value" = "ns2"
///       }]
///       }, {
///       "description" = "move all resources from ns1 to ns2"
///       "resourceFilter" = {
///         "namespaces" = ["ns1"]
///       }
///       "fieldActions" = [{
///         "op"    = "REPLACE"
///         "path"  = "/metadata/namespace"
///         "value" = "ns2"
///       }]
///     }]
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.container.Cluster;
/// import com.pulumi.gcp.container.ClusterArgs;
/// import com.pulumi.gcp.container.inputs.ClusterWorkloadIdentityConfigArgs;
/// import com.pulumi.gcp.container.inputs.ClusterAddonsConfigArgs;
/// import com.pulumi.gcp.container.inputs.ClusterAddonsConfigGkeBackupAgentConfigArgs;
/// import com.pulumi.gcp.gkebackup.BackupPlan;
/// import com.pulumi.gcp.gkebackup.BackupPlanArgs;
/// import com.pulumi.gcp.gkebackup.inputs.BackupPlanBackupConfigArgs;
/// import com.pulumi.gcp.gkebackup.RestorePlan;
/// import com.pulumi.gcp.gkebackup.RestorePlanArgs;
/// import com.pulumi.gcp.gkebackup.inputs.RestorePlanRestoreConfigArgs;
/// import com.pulumi.gcp.gkebackup.inputs.RestorePlanRestoreConfigSelectedNamespacesArgs;
/// import com.pulumi.gcp.gkebackup.inputs.RestorePlanRestoreConfigClusterResourceRestoreScopeArgs;
/// import com.pulumi.gcp.gkebackup.inputs.RestorePlanRestoreConfigTransformationRuleArgs;
/// import com.pulumi.gcp.gkebackup.inputs.RestorePlanRestoreConfigTransformationRuleResourceFilterArgs;
/// import com.pulumi.gcp.gkebackup.inputs.RestorePlanRestoreConfigTransformationRuleResourceFilterGroupKindArgs;
/// import com.pulumi.gcp.gkebackup.inputs.RestorePlanRestoreConfigTransformationRuleFieldActionArgs;
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
///         var primary = new Cluster("primary", ClusterArgs.builder()
///             .name("rename-ns-cluster")
///             .location("us-central1")
///             .initialNodeCount(1)
///             .workloadIdentityConfig(ClusterWorkloadIdentityConfigArgs.builder()
///                 .workloadPool("my-project-name.svc.id.goog")
///                 .build())
///             .addonsConfig(ClusterAddonsConfigArgs.builder()
///                 .gkeBackupAgentConfig(ClusterAddonsConfigGkeBackupAgentConfigArgs.builder()
///                     .enabled(true)
///                     .build())
///                 .build())
///             .deletionProtection(true)
///             .network("default")
///             .subnetwork("default")
///             .build());
///
///         var basic = new BackupPlan("basic", BackupPlanArgs.builder()
///             .name("rename-ns")
///             .cluster(primary.id())
///             .location("us-central1")
///             .backupConfig(BackupPlanBackupConfigArgs.builder()
///                 .includeVolumeData(true)
///                 .includeSecrets(true)
///                 .allNamespaces(true)
///                 .build())
///             .build());
///
///         var renameNs = new RestorePlan("renameNs", RestorePlanArgs.builder()
///             .name("rename-ns-rp")
///             .location("us-central1")
///             .backupPlan(basic.id())
///             .cluster(primary.id())
///             .restoreConfig(RestorePlanRestoreConfigArgs.builder()
///                 .selectedNamespaces(RestorePlanRestoreConfigSelectedNamespacesArgs.builder()
///                     .namespaces("ns1")
///                     .build())
///                 .namespacedResourceRestoreMode("FAIL_ON_CONFLICT")
///                 .volumeDataRestorePolicy("REUSE_VOLUME_HANDLE_FROM_BACKUP")
///                 .clusterResourceRestoreScope(RestorePlanRestoreConfigClusterResourceRestoreScopeArgs.builder()
///                     .noGroupKinds(true)
///                     .build())
///                 .transformationRules(
///                     RestorePlanRestoreConfigTransformationRuleArgs.builder()
///                         .description("rename namespace from ns1 to ns2")
///                         .resourceFilter(RestorePlanRestoreConfigTransformationRuleResourceFilterArgs.builder()
///                             .groupKinds(RestorePlanRestoreConfigTransformationRuleResourceFilterGroupKindArgs.builder()
///                                 .resourceKind("Namespace")
///                                 .build())
///                             .jsonPath(".metadata[?(@.name == 'ns1')]")
///                             .build())
///                         .fieldActions(RestorePlanRestoreConfigTransformationRuleFieldActionArgs.builder()
///                             .op("REPLACE")
///                             .path("/metadata/name")
///                             .value("ns2")
///                             .build())
///                         .build(),
///                     RestorePlanRestoreConfigTransformationRuleArgs.builder()
///                         .description("move all resources from ns1 to ns2")
///                         .resourceFilter(RestorePlanRestoreConfigTransformationRuleResourceFilterArgs.builder()
///                             .namespaces("ns1")
///                             .build())
///                         .fieldActions(RestorePlanRestoreConfigTransformationRuleFieldActionArgs.builder()
///                             .op("REPLACE")
///                             .path("/metadata/namespace")
///                             .value("ns2")
///                             .build())
///                         .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   primary:
///     type: gcp:container:Cluster
///     properties:
///       name: rename-ns-cluster
///       location: us-central1
///       initialNodeCount: 1
///       workloadIdentityConfig:
///         workloadPool: my-project-name.svc.id.goog
///       addonsConfig:
///         gkeBackupAgentConfig:
///           enabled: true
///       deletionProtection: true
///       network: default
///       subnetwork: default
///   basic:
///     type: gcp:gkebackup:BackupPlan
///     properties:
///       name: rename-ns
///       cluster: ${primary.id}
///       location: us-central1
///       backupConfig:
///         includeVolumeData: true
///         includeSecrets: true
///         allNamespaces: true
///   renameNs:
///     type: gcp:gkebackup:RestorePlan
///     name: rename_ns
///     properties:
///       name: rename-ns-rp
///       location: us-central1
///       backupPlan: ${basic.id}
///       cluster: ${primary.id}
///       restoreConfig:
///         selectedNamespaces:
///           namespaces:
///             - ns1
///         namespacedResourceRestoreMode: FAIL_ON_CONFLICT
///         volumeDataRestorePolicy: REUSE_VOLUME_HANDLE_FROM_BACKUP
///         clusterResourceRestoreScope:
///           noGroupKinds: true
///         transformationRules:
///           - description: rename namespace from ns1 to ns2
///             resourceFilter:
///               groupKinds:
///                 - resourceKind: Namespace
///               jsonPath: .metadata[?(@.name == 'ns1')]
///             fieldActions:
///               - op: REPLACE
///                 path: /metadata/name
///                 value: ns2
///           - description: move all resources from ns1 to ns2
///             resourceFilter:
///               namespaces:
///                 - ns1
///             fieldActions:
///               - op: REPLACE
///                 path: /metadata/namespace
///                 value: ns2
/// ```
///
/// ### Gkebackup Restoreplan Second Transformation
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const primary = new gcp.container.Cluster("primary", {
///     name: "transform-rule-cluster",
///     location: "us-central1",
///     initialNodeCount: 1,
///     workloadIdentityConfig: {
///         workloadPool: "my-project-name.svc.id.goog",
///     },
///     addonsConfig: {
///         gkeBackupAgentConfig: {
///             enabled: true,
///         },
///     },
///     deletionProtection: true,
///     network: "default",
///     subnetwork: "default",
/// });
/// const basic = new gcp.gkebackup.BackupPlan("basic", {
///     name: "transform-rule",
///     cluster: primary.id,
///     location: "us-central1",
///     backupConfig: {
///         includeVolumeData: true,
///         includeSecrets: true,
///         allNamespaces: true,
///     },
/// });
/// const transformRule = new gcp.gkebackup.RestorePlan("transform_rule", {
///     name: "transform-rule-rp",
///     description: "copy nginx env variables",
///     labels: {
///         app: "nginx",
///     },
///     location: "us-central1",
///     backupPlan: basic.id,
///     cluster: primary.id,
///     restoreConfig: {
///         excludedNamespaces: {
///             namespaces: ["my-ns"],
///         },
///         namespacedResourceRestoreMode: "DELETE_AND_RESTORE",
///         volumeDataRestorePolicy: "RESTORE_VOLUME_DATA_FROM_BACKUP",
///         clusterResourceRestoreScope: {
///             excludedGroupKinds: [{
///                 resourceGroup: "apiextension.k8s.io",
///                 resourceKind: "CustomResourceDefinition",
///             }],
///         },
///         clusterResourceConflictPolicy: "USE_EXISTING_VERSION",
///         transformationRules: [{
///             description: "Copy environment variables from the nginx container to the install init container.",
///             resourceFilter: {
///                 groupKinds: [{
///                     resourceKind: "Pod",
///                     resourceGroup: "",
///                 }],
///                 jsonPath: ".metadata[?(@.name == 'nginx')]",
///             },
///             fieldActions: [{
///                 op: "COPY",
///                 path: "/spec/initContainers/0/env",
///                 fromPath: "/spec/containers/0/env",
///             }],
///         }],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// primary = gcp.container.Cluster("primary",
///     name="transform-rule-cluster",
///     location="us-central1",
///     initial_node_count=1,
///     workload_identity_config={
///         "workload_pool": "my-project-name.svc.id.goog",
///     },
///     addons_config={
///         "gke_backup_agent_config": {
///             "enabled": True,
///         },
///     },
///     deletion_protection=True,
///     network="default",
///     subnetwork="default")
/// basic = gcp.gkebackup.BackupPlan("basic",
///     name="transform-rule",
///     cluster=primary.id,
///     location="us-central1",
///     backup_config={
///         "include_volume_data": True,
///         "include_secrets": True,
///         "all_namespaces": True,
///     })
/// transform_rule = gcp.gkebackup.RestorePlan("transform_rule",
///     name="transform-rule-rp",
///     description="copy nginx env variables",
///     labels={
///         "app": "nginx",
///     },
///     location="us-central1",
///     backup_plan=basic.id,
///     cluster=primary.id,
///     restore_config={
///         "excluded_namespaces": {
///             "namespaces": ["my-ns"],
///         },
///         "namespaced_resource_restore_mode": "DELETE_AND_RESTORE",
///         "volume_data_restore_policy": "RESTORE_VOLUME_DATA_FROM_BACKUP",
///         "cluster_resource_restore_scope": {
///             "excluded_group_kinds": [{
///                 "resource_group": "apiextension.k8s.io",
///                 "resource_kind": "CustomResourceDefinition",
///             }],
///         },
///         "cluster_resource_conflict_policy": "USE_EXISTING_VERSION",
///         "transformation_rules": [{
///             "description": "Copy environment variables from the nginx container to the install init container.",
///             "resource_filter": {
///                 "group_kinds": [{
///                     "resource_kind": "Pod",
///                     "resource_group": "",
///                 }],
///                 "json_path": ".metadata[?(@.name == 'nginx')]",
///             },
///             "field_actions": [{
///                 "op": "COPY",
///                 "path": "/spec/initContainers/0/env",
///                 "from_path": "/spec/containers/0/env",
///             }],
///         }],
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var primary = new Gcp.Container.Cluster("primary", new()
///     {
///         Name = "transform-rule-cluster",
///         Location = "us-central1",
///         InitialNodeCount = 1,
///         WorkloadIdentityConfig = new Gcp.Container.Inputs.ClusterWorkloadIdentityConfigArgs
///         {
///             WorkloadPool = "my-project-name.svc.id.goog",
///         },
///         AddonsConfig = new Gcp.Container.Inputs.ClusterAddonsConfigArgs
///         {
///             GkeBackupAgentConfig = new Gcp.Container.Inputs.ClusterAddonsConfigGkeBackupAgentConfigArgs
///             {
///                 Enabled = true,
///             },
///         },
///         DeletionProtection = true,
///         Network = "default",
///         Subnetwork = "default",
///     });
///
///     var basic = new Gcp.GkeBackup.BackupPlan("basic", new()
///     {
///         Name = "transform-rule",
///         Cluster = primary.Id,
///         Location = "us-central1",
///         BackupConfig = new Gcp.GkeBackup.Inputs.BackupPlanBackupConfigArgs
///         {
///             IncludeVolumeData = true,
///             IncludeSecrets = true,
///             AllNamespaces = true,
///         },
///     });
///
///     var transformRule = new Gcp.GkeBackup.RestorePlan("transform_rule", new()
///     {
///         Name = "transform-rule-rp",
///         Description = "copy nginx env variables",
///         Labels =
///         {
///             { "app", "nginx" },
///         },
///         Location = "us-central1",
///         BackupPlan = basic.Id,
///         Cluster = primary.Id,
///         RestoreConfig = new Gcp.GkeBackup.Inputs.RestorePlanRestoreConfigArgs
///         {
///             ExcludedNamespaces = new Gcp.GkeBackup.Inputs.RestorePlanRestoreConfigExcludedNamespacesArgs
///             {
///                 Namespaces = new[]
///                 {
///                     "my-ns",
///                 },
///             },
///             NamespacedResourceRestoreMode = "DELETE_AND_RESTORE",
///             VolumeDataRestorePolicy = "RESTORE_VOLUME_DATA_FROM_BACKUP",
///             ClusterResourceRestoreScope = new Gcp.GkeBackup.Inputs.RestorePlanRestoreConfigClusterResourceRestoreScopeArgs
///             {
///                 ExcludedGroupKinds = new[]
///                 {
///                     new Gcp.GkeBackup.Inputs.RestorePlanRestoreConfigClusterResourceRestoreScopeExcludedGroupKindArgs
///                     {
///                         ResourceGroup = "apiextension.k8s.io",
///                         ResourceKind = "CustomResourceDefinition",
///                     },
///                 },
///             },
///             ClusterResourceConflictPolicy = "USE_EXISTING_VERSION",
///             TransformationRules = new[]
///             {
///                 new Gcp.GkeBackup.Inputs.RestorePlanRestoreConfigTransformationRuleArgs
///                 {
///                     Description = "Copy environment variables from the nginx container to the install init container.",
///                     ResourceFilter = new Gcp.GkeBackup.Inputs.RestorePlanRestoreConfigTransformationRuleResourceFilterArgs
///                     {
///                         GroupKinds = new[]
///                         {
///                             new Gcp.GkeBackup.Inputs.RestorePlanRestoreConfigTransformationRuleResourceFilterGroupKindArgs
///                             {
///                                 ResourceKind = "Pod",
///                                 ResourceGroup = "",
///                             },
///                         },
///                         JsonPath = ".metadata[?(@.name == 'nginx')]",
///                     },
///                     FieldActions = new[]
///                     {
///                         new Gcp.GkeBackup.Inputs.RestorePlanRestoreConfigTransformationRuleFieldActionArgs
///                         {
///                             Op = "COPY",
///                             Path = "/spec/initContainers/0/env",
///                             FromPath = "/spec/containers/0/env",
///                         },
///                     },
///                 },
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/container"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/gkebackup"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		primary, err := container.NewCluster(ctx, "primary", &container.ClusterArgs{
/// 			Name:             pulumi.String("transform-rule-cluster"),
/// 			Location:         pulumi.String("us-central1"),
/// 			InitialNodeCount: pulumi.Int(1),
/// 			WorkloadIdentityConfig: &container.ClusterWorkloadIdentityConfigArgs{
/// 				WorkloadPool: pulumi.String("my-project-name.svc.id.goog"),
/// 			},
/// 			AddonsConfig: &container.ClusterAddonsConfigArgs{
/// 				GkeBackupAgentConfig: &container.ClusterAddonsConfigGkeBackupAgentConfigArgs{
/// 					Enabled: pulumi.Bool(true),
/// 				},
/// 			},
/// 			DeletionProtection: pulumi.Bool(true),
/// 			Network:            pulumi.String("default"),
/// 			Subnetwork:         pulumi.String("default"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		basic, err := gkebackup.NewBackupPlan(ctx, "basic", &gkebackup.BackupPlanArgs{
/// 			Name:     pulumi.String("transform-rule"),
/// 			Cluster:  primary.ID().ToIDOutput().ToStringOutput(),
/// 			Location: pulumi.String("us-central1"),
/// 			BackupConfig: &gkebackup.BackupPlanBackupConfigArgs{
/// 				IncludeVolumeData: pulumi.Bool(true),
/// 				IncludeSecrets:    pulumi.Bool(true),
/// 				AllNamespaces:     pulumi.Bool(true),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = gkebackup.NewRestorePlan(ctx, "transform_rule", &gkebackup.RestorePlanArgs{
/// 			Name:        pulumi.String("transform-rule-rp"),
/// 			Description: pulumi.String("copy nginx env variables"),
/// 			Labels: pulumi.StringMap{
/// 				"app": pulumi.String("nginx"),
/// 			},
/// 			Location:   pulumi.String("us-central1"),
/// 			BackupPlan: basic.ID().ToIDOutput().ToStringOutput(),
/// 			Cluster:    primary.ID().ToIDOutput().ToStringOutput(),
/// 			RestoreConfig: &gkebackup.RestorePlanRestoreConfigArgs{
/// 				ExcludedNamespaces: &gkebackup.RestorePlanRestoreConfigExcludedNamespacesArgs{
/// 					Namespaces: pulumi.StringArray{
/// 						pulumi.String("my-ns"),
/// 					},
/// 				},
/// 				NamespacedResourceRestoreMode: pulumi.String("DELETE_AND_RESTORE"),
/// 				VolumeDataRestorePolicy:       pulumi.String("RESTORE_VOLUME_DATA_FROM_BACKUP"),
/// 				ClusterResourceRestoreScope: &gkebackup.RestorePlanRestoreConfigClusterResourceRestoreScopeArgs{
/// 					ExcludedGroupKinds: gkebackup.RestorePlanRestoreConfigClusterResourceRestoreScopeExcludedGroupKindArray{
/// 						&gkebackup.RestorePlanRestoreConfigClusterResourceRestoreScopeExcludedGroupKindArgs{
/// 							ResourceGroup: pulumi.String("apiextension.k8s.io"),
/// 							ResourceKind:  pulumi.String("CustomResourceDefinition"),
/// 						},
/// 					},
/// 				},
/// 				ClusterResourceConflictPolicy: pulumi.String("USE_EXISTING_VERSION"),
/// 				TransformationRules: gkebackup.RestorePlanRestoreConfigTransformationRuleArray{
/// 					&gkebackup.RestorePlanRestoreConfigTransformationRuleArgs{
/// 						Description: pulumi.String("Copy environment variables from the nginx container to the install init container."),
/// 						ResourceFilter: &gkebackup.RestorePlanRestoreConfigTransformationRuleResourceFilterArgs{
/// 							GroupKinds: gkebackup.RestorePlanRestoreConfigTransformationRuleResourceFilterGroupKindArray{
/// 								&gkebackup.RestorePlanRestoreConfigTransformationRuleResourceFilterGroupKindArgs{
/// 									ResourceKind:  pulumi.String("Pod"),
/// 									ResourceGroup: pulumi.String(""),
/// 								},
/// 							},
/// 							JsonPath: pulumi.String(".metadata[?(@.name == 'nginx')]"),
/// 						},
/// 						FieldActions: gkebackup.RestorePlanRestoreConfigTransformationRuleFieldActionArray{
/// 							&gkebackup.RestorePlanRestoreConfigTransformationRuleFieldActionArgs{
/// 								Op:       pulumi.String("COPY"),
/// 								Path:     pulumi.String("/spec/initContainers/0/env"),
/// 								FromPath: pulumi.String("/spec/containers/0/env"),
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 		})
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_container_cluster" "primary" {
///   name               = "transform-rule-cluster"
///   location           = "us-central1"
///   initial_node_count = 1
///   workload_identity_config = {
///     workload_pool = "my-project-name.svc.id.goog"
///   }
///   addons_config = {
///     gke_backup_agent_config = {
///       enabled = true
///     }
///   }
///   deletion_protection = true
///   network             = "default"
///   subnetwork          = "default"
/// }
/// resource "gcp_gkebackup_backupplan" "basic" {
///   name     = "transform-rule"
///   cluster  = gcp_container_cluster.primary.id
///   location = "us-central1"
///   backup_config = {
///     include_volume_data = true
///     include_secrets     = true
///     all_namespaces      = true
///   }
/// }
/// resource "gcp_gkebackup_restoreplan" "transform_rule" {
///   name        = "transform-rule-rp"
///   description = "copy nginx env variables"
///   labels = {
///     "app" = "nginx"
///   }
///   location    = "us-central1"
///   backup_plan = gcp_gkebackup_backupplan.basic.id
///   cluster     = gcp_container_cluster.primary.id
///   restore_config = {
///     excluded_namespaces = {
///       namespaces = ["my-ns"]
///     }
///     namespaced_resource_restore_mode = "DELETE_AND_RESTORE"
///     volume_data_restore_policy       = "RESTORE_VOLUME_DATA_FROM_BACKUP"
///     cluster_resource_restore_scope = {
///       excluded_group_kinds = [{
///         "resourceGroup" = "apiextension.k8s.io"
///         "resourceKind"  = "CustomResourceDefinition"
///       }]
///     }
///     cluster_resource_conflict_policy = "USE_EXISTING_VERSION"
///     transformation_rules = [{
///       "description" = "Copy environment variables from the nginx container to the install init container."
///       "resourceFilter" = {
///         "groupKinds" = [{
///           "resourceKind"  = "Pod"
///           "resourceGroup" = ""
///         }]
///         "jsonPath" = ".metadata[?(@.name == 'nginx')]"
///       }
///       "fieldActions" = [{
///         "op"       = "COPY"
///         "path"     = "/spec/initContainers/0/env"
///         "fromPath" = "/spec/containers/0/env"
///       }]
///     }]
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.container.Cluster;
/// import com.pulumi.gcp.container.ClusterArgs;
/// import com.pulumi.gcp.container.inputs.ClusterWorkloadIdentityConfigArgs;
/// import com.pulumi.gcp.container.inputs.ClusterAddonsConfigArgs;
/// import com.pulumi.gcp.container.inputs.ClusterAddonsConfigGkeBackupAgentConfigArgs;
/// import com.pulumi.gcp.gkebackup.BackupPlan;
/// import com.pulumi.gcp.gkebackup.BackupPlanArgs;
/// import com.pulumi.gcp.gkebackup.inputs.BackupPlanBackupConfigArgs;
/// import com.pulumi.gcp.gkebackup.RestorePlan;
/// import com.pulumi.gcp.gkebackup.RestorePlanArgs;
/// import com.pulumi.gcp.gkebackup.inputs.RestorePlanRestoreConfigArgs;
/// import com.pulumi.gcp.gkebackup.inputs.RestorePlanRestoreConfigExcludedNamespacesArgs;
/// import com.pulumi.gcp.gkebackup.inputs.RestorePlanRestoreConfigClusterResourceRestoreScopeArgs;
/// import com.pulumi.gcp.gkebackup.inputs.RestorePlanRestoreConfigClusterResourceRestoreScopeExcludedGroupKindArgs;
/// import com.pulumi.gcp.gkebackup.inputs.RestorePlanRestoreConfigTransformationRuleArgs;
/// import com.pulumi.gcp.gkebackup.inputs.RestorePlanRestoreConfigTransformationRuleResourceFilterArgs;
/// import com.pulumi.gcp.gkebackup.inputs.RestorePlanRestoreConfigTransformationRuleResourceFilterGroupKindArgs;
/// import com.pulumi.gcp.gkebackup.inputs.RestorePlanRestoreConfigTransformationRuleFieldActionArgs;
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
///         var primary = new Cluster("primary", ClusterArgs.builder()
///             .name("transform-rule-cluster")
///             .location("us-central1")
///             .initialNodeCount(1)
///             .workloadIdentityConfig(ClusterWorkloadIdentityConfigArgs.builder()
///                 .workloadPool("my-project-name.svc.id.goog")
///                 .build())
///             .addonsConfig(ClusterAddonsConfigArgs.builder()
///                 .gkeBackupAgentConfig(ClusterAddonsConfigGkeBackupAgentConfigArgs.builder()
///                     .enabled(true)
///                     .build())
///                 .build())
///             .deletionProtection(true)
///             .network("default")
///             .subnetwork("default")
///             .build());
///
///         var basic = new BackupPlan("basic", BackupPlanArgs.builder()
///             .name("transform-rule")
///             .cluster(primary.id())
///             .location("us-central1")
///             .backupConfig(BackupPlanBackupConfigArgs.builder()
///                 .includeVolumeData(true)
///                 .includeSecrets(true)
///                 .allNamespaces(true)
///                 .build())
///             .build());
///
///         var transformRule = new RestorePlan("transformRule", RestorePlanArgs.builder()
///             .name("transform-rule-rp")
///             .description("copy nginx env variables")
///             .labels(Map.of("app", "nginx"))
///             .location("us-central1")
///             .backupPlan(basic.id())
///             .cluster(primary.id())
///             .restoreConfig(RestorePlanRestoreConfigArgs.builder()
///                 .excludedNamespaces(RestorePlanRestoreConfigExcludedNamespacesArgs.builder()
///                     .namespaces("my-ns")
///                     .build())
///                 .namespacedResourceRestoreMode("DELETE_AND_RESTORE")
///                 .volumeDataRestorePolicy("RESTORE_VOLUME_DATA_FROM_BACKUP")
///                 .clusterResourceRestoreScope(RestorePlanRestoreConfigClusterResourceRestoreScopeArgs.builder()
///                     .excludedGroupKinds(RestorePlanRestoreConfigClusterResourceRestoreScopeExcludedGroupKindArgs.builder()
///                         .resourceGroup("apiextension.k8s.io")
///                         .resourceKind("CustomResourceDefinition")
///                         .build())
///                     .build())
///                 .clusterResourceConflictPolicy("USE_EXISTING_VERSION")
///                 .transformationRules(RestorePlanRestoreConfigTransformationRuleArgs.builder()
///                     .description("Copy environment variables from the nginx container to the install init container.")
///                     .resourceFilter(RestorePlanRestoreConfigTransformationRuleResourceFilterArgs.builder()
///                         .groupKinds(RestorePlanRestoreConfigTransformationRuleResourceFilterGroupKindArgs.builder()
///                             .resourceKind("Pod")
///                             .resourceGroup("")
///                             .build())
///                         .jsonPath(".metadata[?(@.name == 'nginx')]")
///                         .build())
///                     .fieldActions(RestorePlanRestoreConfigTransformationRuleFieldActionArgs.builder()
///                         .op("COPY")
///                         .path("/spec/initContainers/0/env")
///                         .fromPath("/spec/containers/0/env")
///                         .build())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   primary:
///     type: gcp:container:Cluster
///     properties:
///       name: transform-rule-cluster
///       location: us-central1
///       initialNodeCount: 1
///       workloadIdentityConfig:
///         workloadPool: my-project-name.svc.id.goog
///       addonsConfig:
///         gkeBackupAgentConfig:
///           enabled: true
///       deletionProtection: true
///       network: default
///       subnetwork: default
///   basic:
///     type: gcp:gkebackup:BackupPlan
///     properties:
///       name: transform-rule
///       cluster: ${primary.id}
///       location: us-central1
///       backupConfig:
///         includeVolumeData: true
///         includeSecrets: true
///         allNamespaces: true
///   transformRule:
///     type: gcp:gkebackup:RestorePlan
///     name: transform_rule
///     properties:
///       name: transform-rule-rp
///       description: copy nginx env variables
///       labels:
///         app: nginx
///       location: us-central1
///       backupPlan: ${basic.id}
///       cluster: ${primary.id}
///       restoreConfig:
///         excludedNamespaces:
///           namespaces:
///             - my-ns
///         namespacedResourceRestoreMode: DELETE_AND_RESTORE
///         volumeDataRestorePolicy: RESTORE_VOLUME_DATA_FROM_BACKUP
///         clusterResourceRestoreScope:
///           excludedGroupKinds:
///             - resourceGroup: apiextension.k8s.io
///               resourceKind: CustomResourceDefinition
///         clusterResourceConflictPolicy: USE_EXISTING_VERSION
///         transformationRules:
///           - description: Copy environment variables from the nginx container to the install init container.
///             resourceFilter:
///               groupKinds:
///                 - resourceKind: Pod
///                   resourceGroup: ""
///               jsonPath: .metadata[?(@.name == 'nginx')]
///             fieldActions:
///               - op: COPY
///                 path: /spec/initContainers/0/env
///                 fromPath: /spec/containers/0/env
/// ```
///
/// ### Gkebackup Restoreplan Gitops Mode
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const primary = new gcp.container.Cluster("primary", {
///     name: "gitops-mode-cluster",
///     location: "us-central1",
///     initialNodeCount: 1,
///     workloadIdentityConfig: {
///         workloadPool: "my-project-name.svc.id.goog",
///     },
///     addonsConfig: {
///         gkeBackupAgentConfig: {
///             enabled: true,
///         },
///     },
///     deletionProtection: true,
///     network: "default",
///     subnetwork: "default",
/// });
/// const basic = new gcp.gkebackup.BackupPlan("basic", {
///     name: "gitops-mode",
///     cluster: primary.id,
///     location: "us-central1",
///     backupConfig: {
///         includeVolumeData: true,
///         includeSecrets: true,
///         allNamespaces: true,
///     },
/// });
/// const gitopsMode = new gcp.gkebackup.RestorePlan("gitops_mode", {
///     name: "gitops-mode",
///     location: "us-central1",
///     backupPlan: basic.id,
///     cluster: primary.id,
///     restoreConfig: {
///         allNamespaces: true,
///         namespacedResourceRestoreMode: "MERGE_SKIP_ON_CONFLICT",
///         volumeDataRestorePolicy: "RESTORE_VOLUME_DATA_FROM_BACKUP",
///         clusterResourceRestoreScope: {
///             allGroupKinds: true,
///         },
///         clusterResourceConflictPolicy: "USE_EXISTING_VERSION",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// primary = gcp.container.Cluster("primary",
///     name="gitops-mode-cluster",
///     location="us-central1",
///     initial_node_count=1,
///     workload_identity_config={
///         "workload_pool": "my-project-name.svc.id.goog",
///     },
///     addons_config={
///         "gke_backup_agent_config": {
///             "enabled": True,
///         },
///     },
///     deletion_protection=True,
///     network="default",
///     subnetwork="default")
/// basic = gcp.gkebackup.BackupPlan("basic",
///     name="gitops-mode",
///     cluster=primary.id,
///     location="us-central1",
///     backup_config={
///         "include_volume_data": True,
///         "include_secrets": True,
///         "all_namespaces": True,
///     })
/// gitops_mode = gcp.gkebackup.RestorePlan("gitops_mode",
///     name="gitops-mode",
///     location="us-central1",
///     backup_plan=basic.id,
///     cluster=primary.id,
///     restore_config={
///         "all_namespaces": True,
///         "namespaced_resource_restore_mode": "MERGE_SKIP_ON_CONFLICT",
///         "volume_data_restore_policy": "RESTORE_VOLUME_DATA_FROM_BACKUP",
///         "cluster_resource_restore_scope": {
///             "all_group_kinds": True,
///         },
///         "cluster_resource_conflict_policy": "USE_EXISTING_VERSION",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var primary = new Gcp.Container.Cluster("primary", new()
///     {
///         Name = "gitops-mode-cluster",
///         Location = "us-central1",
///         InitialNodeCount = 1,
///         WorkloadIdentityConfig = new Gcp.Container.Inputs.ClusterWorkloadIdentityConfigArgs
///         {
///             WorkloadPool = "my-project-name.svc.id.goog",
///         },
///         AddonsConfig = new Gcp.Container.Inputs.ClusterAddonsConfigArgs
///         {
///             GkeBackupAgentConfig = new Gcp.Container.Inputs.ClusterAddonsConfigGkeBackupAgentConfigArgs
///             {
///                 Enabled = true,
///             },
///         },
///         DeletionProtection = true,
///         Network = "default",
///         Subnetwork = "default",
///     });
///
///     var basic = new Gcp.GkeBackup.BackupPlan("basic", new()
///     {
///         Name = "gitops-mode",
///         Cluster = primary.Id,
///         Location = "us-central1",
///         BackupConfig = new Gcp.GkeBackup.Inputs.BackupPlanBackupConfigArgs
///         {
///             IncludeVolumeData = true,
///             IncludeSecrets = true,
///             AllNamespaces = true,
///         },
///     });
///
///     var gitopsMode = new Gcp.GkeBackup.RestorePlan("gitops_mode", new()
///     {
///         Name = "gitops-mode",
///         Location = "us-central1",
///         BackupPlan = basic.Id,
///         Cluster = primary.Id,
///         RestoreConfig = new Gcp.GkeBackup.Inputs.RestorePlanRestoreConfigArgs
///         {
///             AllNamespaces = true,
///             NamespacedResourceRestoreMode = "MERGE_SKIP_ON_CONFLICT",
///             VolumeDataRestorePolicy = "RESTORE_VOLUME_DATA_FROM_BACKUP",
///             ClusterResourceRestoreScope = new Gcp.GkeBackup.Inputs.RestorePlanRestoreConfigClusterResourceRestoreScopeArgs
///             {
///                 AllGroupKinds = true,
///             },
///             ClusterResourceConflictPolicy = "USE_EXISTING_VERSION",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/container"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/gkebackup"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		primary, err := container.NewCluster(ctx, "primary", &container.ClusterArgs{
/// 			Name:             pulumi.String("gitops-mode-cluster"),
/// 			Location:         pulumi.String("us-central1"),
/// 			InitialNodeCount: pulumi.Int(1),
/// 			WorkloadIdentityConfig: &container.ClusterWorkloadIdentityConfigArgs{
/// 				WorkloadPool: pulumi.String("my-project-name.svc.id.goog"),
/// 			},
/// 			AddonsConfig: &container.ClusterAddonsConfigArgs{
/// 				GkeBackupAgentConfig: &container.ClusterAddonsConfigGkeBackupAgentConfigArgs{
/// 					Enabled: pulumi.Bool(true),
/// 				},
/// 			},
/// 			DeletionProtection: pulumi.Bool(true),
/// 			Network:            pulumi.String("default"),
/// 			Subnetwork:         pulumi.String("default"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		basic, err := gkebackup.NewBackupPlan(ctx, "basic", &gkebackup.BackupPlanArgs{
/// 			Name:     pulumi.String("gitops-mode"),
/// 			Cluster:  primary.ID().ToIDOutput().ToStringOutput(),
/// 			Location: pulumi.String("us-central1"),
/// 			BackupConfig: &gkebackup.BackupPlanBackupConfigArgs{
/// 				IncludeVolumeData: pulumi.Bool(true),
/// 				IncludeSecrets:    pulumi.Bool(true),
/// 				AllNamespaces:     pulumi.Bool(true),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = gkebackup.NewRestorePlan(ctx, "gitops_mode", &gkebackup.RestorePlanArgs{
/// 			Name:       pulumi.String("gitops-mode"),
/// 			Location:   pulumi.String("us-central1"),
/// 			BackupPlan: basic.ID().ToIDOutput().ToStringOutput(),
/// 			Cluster:    primary.ID().ToIDOutput().ToStringOutput(),
/// 			RestoreConfig: &gkebackup.RestorePlanRestoreConfigArgs{
/// 				AllNamespaces:                 pulumi.Bool(true),
/// 				NamespacedResourceRestoreMode: pulumi.String("MERGE_SKIP_ON_CONFLICT"),
/// 				VolumeDataRestorePolicy:       pulumi.String("RESTORE_VOLUME_DATA_FROM_BACKUP"),
/// 				ClusterResourceRestoreScope: &gkebackup.RestorePlanRestoreConfigClusterResourceRestoreScopeArgs{
/// 					AllGroupKinds: pulumi.Bool(true),
/// 				},
/// 				ClusterResourceConflictPolicy: pulumi.String("USE_EXISTING_VERSION"),
/// 			},
/// 		})
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_container_cluster" "primary" {
///   name               = "gitops-mode-cluster"
///   location           = "us-central1"
///   initial_node_count = 1
///   workload_identity_config = {
///     workload_pool = "my-project-name.svc.id.goog"
///   }
///   addons_config = {
///     gke_backup_agent_config = {
///       enabled = true
///     }
///   }
///   deletion_protection = true
///   network             = "default"
///   subnetwork          = "default"
/// }
/// resource "gcp_gkebackup_backupplan" "basic" {
///   name     = "gitops-mode"
///   cluster  = gcp_container_cluster.primary.id
///   location = "us-central1"
///   backup_config = {
///     include_volume_data = true
///     include_secrets     = true
///     all_namespaces      = true
///   }
/// }
/// resource "gcp_gkebackup_restoreplan" "gitops_mode" {
///   name        = "gitops-mode"
///   location    = "us-central1"
///   backup_plan = gcp_gkebackup_backupplan.basic.id
///   cluster     = gcp_container_cluster.primary.id
///   restore_config = {
///     all_namespaces                   = true
///     namespaced_resource_restore_mode = "MERGE_SKIP_ON_CONFLICT"
///     volume_data_restore_policy       = "RESTORE_VOLUME_DATA_FROM_BACKUP"
///     cluster_resource_restore_scope = {
///       all_group_kinds = true
///     }
///     cluster_resource_conflict_policy = "USE_EXISTING_VERSION"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.container.Cluster;
/// import com.pulumi.gcp.container.ClusterArgs;
/// import com.pulumi.gcp.container.inputs.ClusterWorkloadIdentityConfigArgs;
/// import com.pulumi.gcp.container.inputs.ClusterAddonsConfigArgs;
/// import com.pulumi.gcp.container.inputs.ClusterAddonsConfigGkeBackupAgentConfigArgs;
/// import com.pulumi.gcp.gkebackup.BackupPlan;
/// import com.pulumi.gcp.gkebackup.BackupPlanArgs;
/// import com.pulumi.gcp.gkebackup.inputs.BackupPlanBackupConfigArgs;
/// import com.pulumi.gcp.gkebackup.RestorePlan;
/// import com.pulumi.gcp.gkebackup.RestorePlanArgs;
/// import com.pulumi.gcp.gkebackup.inputs.RestorePlanRestoreConfigArgs;
/// import com.pulumi.gcp.gkebackup.inputs.RestorePlanRestoreConfigClusterResourceRestoreScopeArgs;
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
///         var primary = new Cluster("primary", ClusterArgs.builder()
///             .name("gitops-mode-cluster")
///             .location("us-central1")
///             .initialNodeCount(1)
///             .workloadIdentityConfig(ClusterWorkloadIdentityConfigArgs.builder()
///                 .workloadPool("my-project-name.svc.id.goog")
///                 .build())
///             .addonsConfig(ClusterAddonsConfigArgs.builder()
///                 .gkeBackupAgentConfig(ClusterAddonsConfigGkeBackupAgentConfigArgs.builder()
///                     .enabled(true)
///                     .build())
///                 .build())
///             .deletionProtection(true)
///             .network("default")
///             .subnetwork("default")
///             .build());
///
///         var basic = new BackupPlan("basic", BackupPlanArgs.builder()
///             .name("gitops-mode")
///             .cluster(primary.id())
///             .location("us-central1")
///             .backupConfig(BackupPlanBackupConfigArgs.builder()
///                 .includeVolumeData(true)
///                 .includeSecrets(true)
///                 .allNamespaces(true)
///                 .build())
///             .build());
///
///         var gitopsMode = new RestorePlan("gitopsMode", RestorePlanArgs.builder()
///             .name("gitops-mode")
///             .location("us-central1")
///             .backupPlan(basic.id())
///             .cluster(primary.id())
///             .restoreConfig(RestorePlanRestoreConfigArgs.builder()
///                 .allNamespaces(true)
///                 .namespacedResourceRestoreMode("MERGE_SKIP_ON_CONFLICT")
///                 .volumeDataRestorePolicy("RESTORE_VOLUME_DATA_FROM_BACKUP")
///                 .clusterResourceRestoreScope(RestorePlanRestoreConfigClusterResourceRestoreScopeArgs.builder()
///                     .allGroupKinds(true)
///                     .build())
///                 .clusterResourceConflictPolicy("USE_EXISTING_VERSION")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   primary:
///     type: gcp:container:Cluster
///     properties:
///       name: gitops-mode-cluster
///       location: us-central1
///       initialNodeCount: 1
///       workloadIdentityConfig:
///         workloadPool: my-project-name.svc.id.goog
///       addonsConfig:
///         gkeBackupAgentConfig:
///           enabled: true
///       deletionProtection: true
///       network: default
///       subnetwork: default
///   basic:
///     type: gcp:gkebackup:BackupPlan
///     properties:
///       name: gitops-mode
///       cluster: ${primary.id}
///       location: us-central1
///       backupConfig:
///         includeVolumeData: true
///         includeSecrets: true
///         allNamespaces: true
///   gitopsMode:
///     type: gcp:gkebackup:RestorePlan
///     name: gitops_mode
///     properties:
///       name: gitops-mode
///       location: us-central1
///       backupPlan: ${basic.id}
///       cluster: ${primary.id}
///       restoreConfig:
///         allNamespaces: true
///         namespacedResourceRestoreMode: MERGE_SKIP_ON_CONFLICT
///         volumeDataRestorePolicy: RESTORE_VOLUME_DATA_FROM_BACKUP
///         clusterResourceRestoreScope:
///           allGroupKinds: true
///         clusterResourceConflictPolicy: USE_EXISTING_VERSION
/// ```
///
/// ### Gkebackup Restoreplan Restore Order
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const primary = new gcp.container.Cluster("primary", {
///     name: "restore-order-cluster",
///     location: "us-central1",
///     initialNodeCount: 1,
///     workloadIdentityConfig: {
///         workloadPool: "my-project-name.svc.id.goog",
///     },
///     addonsConfig: {
///         gkeBackupAgentConfig: {
///             enabled: true,
///         },
///     },
///     deletionProtection: true,
///     network: "default",
///     subnetwork: "default",
/// });
/// const basic = new gcp.gkebackup.BackupPlan("basic", {
///     name: "restore-order",
///     cluster: primary.id,
///     location: "us-central1",
///     backupConfig: {
///         includeVolumeData: true,
///         includeSecrets: true,
///         allNamespaces: true,
///     },
/// });
/// const restoreOrder = new gcp.gkebackup.RestorePlan("restore_order", {
///     name: "restore-order",
///     location: "us-central1",
///     backupPlan: basic.id,
///     cluster: primary.id,
///     restoreConfig: {
///         allNamespaces: true,
///         namespacedResourceRestoreMode: "FAIL_ON_CONFLICT",
///         volumeDataRestorePolicy: "RESTORE_VOLUME_DATA_FROM_BACKUP",
///         clusterResourceRestoreScope: {
///             allGroupKinds: true,
///         },
///         clusterResourceConflictPolicy: "USE_EXISTING_VERSION",
///         restoreOrder: {
///             groupKindDependencies: [
///                 {
///                     satisfying: {
///                         resourceGroup: "stable.example.com",
///                         resourceKind: "kindA",
///                     },
///                     requiring: {
///                         resourceGroup: "stable.example.com",
///                         resourceKind: "kindB",
///                     },
///                 },
///                 {
///                     satisfying: {
///                         resourceGroup: "stable.example.com",
///                         resourceKind: "kindB",
///                     },
///                     requiring: {
///                         resourceGroup: "stable.example.com",
///                         resourceKind: "kindC",
///                     },
///                 },
///             ],
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// primary = gcp.container.Cluster("primary",
///     name="restore-order-cluster",
///     location="us-central1",
///     initial_node_count=1,
///     workload_identity_config={
///         "workload_pool": "my-project-name.svc.id.goog",
///     },
///     addons_config={
///         "gke_backup_agent_config": {
///             "enabled": True,
///         },
///     },
///     deletion_protection=True,
///     network="default",
///     subnetwork="default")
/// basic = gcp.gkebackup.BackupPlan("basic",
///     name="restore-order",
///     cluster=primary.id,
///     location="us-central1",
///     backup_config={
///         "include_volume_data": True,
///         "include_secrets": True,
///         "all_namespaces": True,
///     })
/// restore_order = gcp.gkebackup.RestorePlan("restore_order",
///     name="restore-order",
///     location="us-central1",
///     backup_plan=basic.id,
///     cluster=primary.id,
///     restore_config={
///         "all_namespaces": True,
///         "namespaced_resource_restore_mode": "FAIL_ON_CONFLICT",
///         "volume_data_restore_policy": "RESTORE_VOLUME_DATA_FROM_BACKUP",
///         "cluster_resource_restore_scope": {
///             "all_group_kinds": True,
///         },
///         "cluster_resource_conflict_policy": "USE_EXISTING_VERSION",
///         "restore_order": {
///             "group_kind_dependencies": [
///                 {
///                     "satisfying": {
///                         "resource_group": "stable.example.com",
///                         "resource_kind": "kindA",
///                     },
///                     "requiring": {
///                         "resource_group": "stable.example.com",
///                         "resource_kind": "kindB",
///                     },
///                 },
///                 {
///                     "satisfying": {
///                         "resource_group": "stable.example.com",
///                         "resource_kind": "kindB",
///                     },
///                     "requiring": {
///                         "resource_group": "stable.example.com",
///                         "resource_kind": "kindC",
///                     },
///                 },
///             ],
///         },
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var primary = new Gcp.Container.Cluster("primary", new()
///     {
///         Name = "restore-order-cluster",
///         Location = "us-central1",
///         InitialNodeCount = 1,
///         WorkloadIdentityConfig = new Gcp.Container.Inputs.ClusterWorkloadIdentityConfigArgs
///         {
///             WorkloadPool = "my-project-name.svc.id.goog",
///         },
///         AddonsConfig = new Gcp.Container.Inputs.ClusterAddonsConfigArgs
///         {
///             GkeBackupAgentConfig = new Gcp.Container.Inputs.ClusterAddonsConfigGkeBackupAgentConfigArgs
///             {
///                 Enabled = true,
///             },
///         },
///         DeletionProtection = true,
///         Network = "default",
///         Subnetwork = "default",
///     });
///
///     var basic = new Gcp.GkeBackup.BackupPlan("basic", new()
///     {
///         Name = "restore-order",
///         Cluster = primary.Id,
///         Location = "us-central1",
///         BackupConfig = new Gcp.GkeBackup.Inputs.BackupPlanBackupConfigArgs
///         {
///             IncludeVolumeData = true,
///             IncludeSecrets = true,
///             AllNamespaces = true,
///         },
///     });
///
///     var restoreOrder = new Gcp.GkeBackup.RestorePlan("restore_order", new()
///     {
///         Name = "restore-order",
///         Location = "us-central1",
///         BackupPlan = basic.Id,
///         Cluster = primary.Id,
///         RestoreConfig = new Gcp.GkeBackup.Inputs.RestorePlanRestoreConfigArgs
///         {
///             AllNamespaces = true,
///             NamespacedResourceRestoreMode = "FAIL_ON_CONFLICT",
///             VolumeDataRestorePolicy = "RESTORE_VOLUME_DATA_FROM_BACKUP",
///             ClusterResourceRestoreScope = new Gcp.GkeBackup.Inputs.RestorePlanRestoreConfigClusterResourceRestoreScopeArgs
///             {
///                 AllGroupKinds = true,
///             },
///             ClusterResourceConflictPolicy = "USE_EXISTING_VERSION",
///             RestoreOrder = new Gcp.GkeBackup.Inputs.RestorePlanRestoreConfigRestoreOrderArgs
///             {
///                 GroupKindDependencies = new[]
///                 {
///                     new Gcp.GkeBackup.Inputs.RestorePlanRestoreConfigRestoreOrderGroupKindDependencyArgs
///                     {
///                         Satisfying = new Gcp.GkeBackup.Inputs.RestorePlanRestoreConfigRestoreOrderGroupKindDependencySatisfyingArgs
///                         {
///                             ResourceGroup = "stable.example.com",
///                             ResourceKind = "kindA",
///                         },
///                         Requiring = new Gcp.GkeBackup.Inputs.RestorePlanRestoreConfigRestoreOrderGroupKindDependencyRequiringArgs
///                         {
///                             ResourceGroup = "stable.example.com",
///                             ResourceKind = "kindB",
///                         },
///                     },
///                     new Gcp.GkeBackup.Inputs.RestorePlanRestoreConfigRestoreOrderGroupKindDependencyArgs
///                     {
///                         Satisfying = new Gcp.GkeBackup.Inputs.RestorePlanRestoreConfigRestoreOrderGroupKindDependencySatisfyingArgs
///                         {
///                             ResourceGroup = "stable.example.com",
///                             ResourceKind = "kindB",
///                         },
///                         Requiring = new Gcp.GkeBackup.Inputs.RestorePlanRestoreConfigRestoreOrderGroupKindDependencyRequiringArgs
///                         {
///                             ResourceGroup = "stable.example.com",
///                             ResourceKind = "kindC",
///                         },
///                     },
///                 },
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/container"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/gkebackup"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		primary, err := container.NewCluster(ctx, "primary", &container.ClusterArgs{
/// 			Name:             pulumi.String("restore-order-cluster"),
/// 			Location:         pulumi.String("us-central1"),
/// 			InitialNodeCount: pulumi.Int(1),
/// 			WorkloadIdentityConfig: &container.ClusterWorkloadIdentityConfigArgs{
/// 				WorkloadPool: pulumi.String("my-project-name.svc.id.goog"),
/// 			},
/// 			AddonsConfig: &container.ClusterAddonsConfigArgs{
/// 				GkeBackupAgentConfig: &container.ClusterAddonsConfigGkeBackupAgentConfigArgs{
/// 					Enabled: pulumi.Bool(true),
/// 				},
/// 			},
/// 			DeletionProtection: pulumi.Bool(true),
/// 			Network:            pulumi.String("default"),
/// 			Subnetwork:         pulumi.String("default"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		basic, err := gkebackup.NewBackupPlan(ctx, "basic", &gkebackup.BackupPlanArgs{
/// 			Name:     pulumi.String("restore-order"),
/// 			Cluster:  primary.ID().ToIDOutput().ToStringOutput(),
/// 			Location: pulumi.String("us-central1"),
/// 			BackupConfig: &gkebackup.BackupPlanBackupConfigArgs{
/// 				IncludeVolumeData: pulumi.Bool(true),
/// 				IncludeSecrets:    pulumi.Bool(true),
/// 				AllNamespaces:     pulumi.Bool(true),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = gkebackup.NewRestorePlan(ctx, "restore_order", &gkebackup.RestorePlanArgs{
/// 			Name:       pulumi.String("restore-order"),
/// 			Location:   pulumi.String("us-central1"),
/// 			BackupPlan: basic.ID().ToIDOutput().ToStringOutput(),
/// 			Cluster:    primary.ID().ToIDOutput().ToStringOutput(),
/// 			RestoreConfig: &gkebackup.RestorePlanRestoreConfigArgs{
/// 				AllNamespaces:                 pulumi.Bool(true),
/// 				NamespacedResourceRestoreMode: pulumi.String("FAIL_ON_CONFLICT"),
/// 				VolumeDataRestorePolicy:       pulumi.String("RESTORE_VOLUME_DATA_FROM_BACKUP"),
/// 				ClusterResourceRestoreScope: &gkebackup.RestorePlanRestoreConfigClusterResourceRestoreScopeArgs{
/// 					AllGroupKinds: pulumi.Bool(true),
/// 				},
/// 				ClusterResourceConflictPolicy: pulumi.String("USE_EXISTING_VERSION"),
/// 				RestoreOrder: &gkebackup.RestorePlanRestoreConfigRestoreOrderArgs{
/// 					GroupKindDependencies: gkebackup.RestorePlanRestoreConfigRestoreOrderGroupKindDependencyArray{
/// 						&gkebackup.RestorePlanRestoreConfigRestoreOrderGroupKindDependencyArgs{
/// 							Satisfying: &gkebackup.RestorePlanRestoreConfigRestoreOrderGroupKindDependencySatisfyingArgs{
/// 								ResourceGroup: pulumi.String("stable.example.com"),
/// 								ResourceKind:  pulumi.String("kindA"),
/// 							},
/// 							Requiring: &gkebackup.RestorePlanRestoreConfigRestoreOrderGroupKindDependencyRequiringArgs{
/// 								ResourceGroup: pulumi.String("stable.example.com"),
/// 								ResourceKind:  pulumi.String("kindB"),
/// 							},
/// 						},
/// 						&gkebackup.RestorePlanRestoreConfigRestoreOrderGroupKindDependencyArgs{
/// 							Satisfying: &gkebackup.RestorePlanRestoreConfigRestoreOrderGroupKindDependencySatisfyingArgs{
/// 								ResourceGroup: pulumi.String("stable.example.com"),
/// 								ResourceKind:  pulumi.String("kindB"),
/// 							},
/// 							Requiring: &gkebackup.RestorePlanRestoreConfigRestoreOrderGroupKindDependencyRequiringArgs{
/// 								ResourceGroup: pulumi.String("stable.example.com"),
/// 								ResourceKind:  pulumi.String("kindC"),
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 		})
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_container_cluster" "primary" {
///   name               = "restore-order-cluster"
///   location           = "us-central1"
///   initial_node_count = 1
///   workload_identity_config = {
///     workload_pool = "my-project-name.svc.id.goog"
///   }
///   addons_config = {
///     gke_backup_agent_config = {
///       enabled = true
///     }
///   }
///   deletion_protection = true
///   network             = "default"
///   subnetwork          = "default"
/// }
/// resource "gcp_gkebackup_backupplan" "basic" {
///   name     = "restore-order"
///   cluster  = gcp_container_cluster.primary.id
///   location = "us-central1"
///   backup_config = {
///     include_volume_data = true
///     include_secrets     = true
///     all_namespaces      = true
///   }
/// }
/// resource "gcp_gkebackup_restoreplan" "restore_order" {
///   name        = "restore-order"
///   location    = "us-central1"
///   backup_plan = gcp_gkebackup_backupplan.basic.id
///   cluster     = gcp_container_cluster.primary.id
///   restore_config = {
///     all_namespaces                   = true
///     namespaced_resource_restore_mode = "FAIL_ON_CONFLICT"
///     volume_data_restore_policy       = "RESTORE_VOLUME_DATA_FROM_BACKUP"
///     cluster_resource_restore_scope = {
///       all_group_kinds = true
///     }
///     cluster_resource_conflict_policy = "USE_EXISTING_VERSION"
///     restore_order = {
///       group_kind_dependencies = [{
///         "satisfying" = {
///           "resourceGroup" = "stable.example.com"
///           "resourceKind"  = "kindA"
///         }
///         "requiring" = {
///           "resourceGroup" = "stable.example.com"
///           "resourceKind"  = "kindB"
///         }
///         }, {
///         "satisfying" = {
///           "resourceGroup" = "stable.example.com"
///           "resourceKind"  = "kindB"
///         }
///         "requiring" = {
///           "resourceGroup" = "stable.example.com"
///           "resourceKind"  = "kindC"
///         }
///       }]
///     }
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.container.Cluster;
/// import com.pulumi.gcp.container.ClusterArgs;
/// import com.pulumi.gcp.container.inputs.ClusterWorkloadIdentityConfigArgs;
/// import com.pulumi.gcp.container.inputs.ClusterAddonsConfigArgs;
/// import com.pulumi.gcp.container.inputs.ClusterAddonsConfigGkeBackupAgentConfigArgs;
/// import com.pulumi.gcp.gkebackup.BackupPlan;
/// import com.pulumi.gcp.gkebackup.BackupPlanArgs;
/// import com.pulumi.gcp.gkebackup.inputs.BackupPlanBackupConfigArgs;
/// import com.pulumi.gcp.gkebackup.RestorePlan;
/// import com.pulumi.gcp.gkebackup.RestorePlanArgs;
/// import com.pulumi.gcp.gkebackup.inputs.RestorePlanRestoreConfigArgs;
/// import com.pulumi.gcp.gkebackup.inputs.RestorePlanRestoreConfigClusterResourceRestoreScopeArgs;
/// import com.pulumi.gcp.gkebackup.inputs.RestorePlanRestoreConfigRestoreOrderArgs;
/// import com.pulumi.gcp.gkebackup.inputs.RestorePlanRestoreConfigRestoreOrderGroupKindDependencyArgs;
/// import com.pulumi.gcp.gkebackup.inputs.RestorePlanRestoreConfigRestoreOrderGroupKindDependencySatisfyingArgs;
/// import com.pulumi.gcp.gkebackup.inputs.RestorePlanRestoreConfigRestoreOrderGroupKindDependencyRequiringArgs;
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
///         var primary = new Cluster("primary", ClusterArgs.builder()
///             .name("restore-order-cluster")
///             .location("us-central1")
///             .initialNodeCount(1)
///             .workloadIdentityConfig(ClusterWorkloadIdentityConfigArgs.builder()
///                 .workloadPool("my-project-name.svc.id.goog")
///                 .build())
///             .addonsConfig(ClusterAddonsConfigArgs.builder()
///                 .gkeBackupAgentConfig(ClusterAddonsConfigGkeBackupAgentConfigArgs.builder()
///                     .enabled(true)
///                     .build())
///                 .build())
///             .deletionProtection(true)
///             .network("default")
///             .subnetwork("default")
///             .build());
///
///         var basic = new BackupPlan("basic", BackupPlanArgs.builder()
///             .name("restore-order")
///             .cluster(primary.id())
///             .location("us-central1")
///             .backupConfig(BackupPlanBackupConfigArgs.builder()
///                 .includeVolumeData(true)
///                 .includeSecrets(true)
///                 .allNamespaces(true)
///                 .build())
///             .build());
///
///         var restoreOrder = new RestorePlan("restoreOrder", RestorePlanArgs.builder()
///             .name("restore-order")
///             .location("us-central1")
///             .backupPlan(basic.id())
///             .cluster(primary.id())
///             .restoreConfig(RestorePlanRestoreConfigArgs.builder()
///                 .allNamespaces(true)
///                 .namespacedResourceRestoreMode("FAIL_ON_CONFLICT")
///                 .volumeDataRestorePolicy("RESTORE_VOLUME_DATA_FROM_BACKUP")
///                 .clusterResourceRestoreScope(RestorePlanRestoreConfigClusterResourceRestoreScopeArgs.builder()
///                     .allGroupKinds(true)
///                     .build())
///                 .clusterResourceConflictPolicy("USE_EXISTING_VERSION")
///                 .restoreOrder(RestorePlanRestoreConfigRestoreOrderArgs.builder()
///                     .groupKindDependencies(
///                         RestorePlanRestoreConfigRestoreOrderGroupKindDependencyArgs.builder()
///                             .satisfying(RestorePlanRestoreConfigRestoreOrderGroupKindDependencySatisfyingArgs.builder()
///                                 .resourceGroup("stable.example.com")
///                                 .resourceKind("kindA")
///                                 .build())
///                             .requiring(RestorePlanRestoreConfigRestoreOrderGroupKindDependencyRequiringArgs.builder()
///                                 .resourceGroup("stable.example.com")
///                                 .resourceKind("kindB")
///                                 .build())
///                             .build(),
///                         RestorePlanRestoreConfigRestoreOrderGroupKindDependencyArgs.builder()
///                             .satisfying(RestorePlanRestoreConfigRestoreOrderGroupKindDependencySatisfyingArgs.builder()
///                                 .resourceGroup("stable.example.com")
///                                 .resourceKind("kindB")
///                                 .build())
///                             .requiring(RestorePlanRestoreConfigRestoreOrderGroupKindDependencyRequiringArgs.builder()
///                                 .resourceGroup("stable.example.com")
///                                 .resourceKind("kindC")
///                                 .build())
///                             .build())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   primary:
///     type: gcp:container:Cluster
///     properties:
///       name: restore-order-cluster
///       location: us-central1
///       initialNodeCount: 1
///       workloadIdentityConfig:
///         workloadPool: my-project-name.svc.id.goog
///       addonsConfig:
///         gkeBackupAgentConfig:
///           enabled: true
///       deletionProtection: true
///       network: default
///       subnetwork: default
///   basic:
///     type: gcp:gkebackup:BackupPlan
///     properties:
///       name: restore-order
///       cluster: ${primary.id}
///       location: us-central1
///       backupConfig:
///         includeVolumeData: true
///         includeSecrets: true
///         allNamespaces: true
///   restoreOrder:
///     type: gcp:gkebackup:RestorePlan
///     name: restore_order
///     properties:
///       name: restore-order
///       location: us-central1
///       backupPlan: ${basic.id}
///       cluster: ${primary.id}
///       restoreConfig:
///         allNamespaces: true
///         namespacedResourceRestoreMode: FAIL_ON_CONFLICT
///         volumeDataRestorePolicy: RESTORE_VOLUME_DATA_FROM_BACKUP
///         clusterResourceRestoreScope:
///           allGroupKinds: true
///         clusterResourceConflictPolicy: USE_EXISTING_VERSION
///         restoreOrder:
///           groupKindDependencies:
///             - satisfying:
///                 resourceGroup: stable.example.com
///                 resourceKind: kindA
///               requiring:
///                 resourceGroup: stable.example.com
///                 resourceKind: kindB
///             - satisfying:
///                 resourceGroup: stable.example.com
///                 resourceKind: kindB
///               requiring:
///                 resourceGroup: stable.example.com
///                 resourceKind: kindC
/// ```
///
/// ### Gkebackup Restoreplan Volume Res
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const primary = new gcp.container.Cluster("primary", {
///     name: "volume-res-cluster",
///     location: "us-central1",
///     initialNodeCount: 1,
///     workloadIdentityConfig: {
///         workloadPool: "my-project-name.svc.id.goog",
///     },
///     addonsConfig: {
///         gkeBackupAgentConfig: {
///             enabled: true,
///         },
///     },
///     deletionProtection: true,
///     network: "default",
///     subnetwork: "default",
/// });
/// const basic = new gcp.gkebackup.BackupPlan("basic", {
///     name: "volume-res",
///     cluster: primary.id,
///     location: "us-central1",
///     backupConfig: {
///         includeVolumeData: true,
///         includeSecrets: true,
///         allNamespaces: true,
///     },
/// });
/// const volumeRes = new gcp.gkebackup.RestorePlan("volume_res", {
///     name: "volume-res",
///     location: "us-central1",
///     backupPlan: basic.id,
///     cluster: primary.id,
///     restoreConfig: {
///         allNamespaces: true,
///         namespacedResourceRestoreMode: "FAIL_ON_CONFLICT",
///         volumeDataRestorePolicy: "NO_VOLUME_DATA_RESTORATION",
///         clusterResourceRestoreScope: {
///             allGroupKinds: true,
///         },
///         clusterResourceConflictPolicy: "USE_EXISTING_VERSION",
///         volumeDataRestorePolicyBindings: [{
///             policy: "RESTORE_VOLUME_DATA_FROM_BACKUP",
///             volumeType: "GCE_PERSISTENT_DISK",
///         }],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// primary = gcp.container.Cluster("primary",
///     name="volume-res-cluster",
///     location="us-central1",
///     initial_node_count=1,
///     workload_identity_config={
///         "workload_pool": "my-project-name.svc.id.goog",
///     },
///     addons_config={
///         "gke_backup_agent_config": {
///             "enabled": True,
///         },
///     },
///     deletion_protection=True,
///     network="default",
///     subnetwork="default")
/// basic = gcp.gkebackup.BackupPlan("basic",
///     name="volume-res",
///     cluster=primary.id,
///     location="us-central1",
///     backup_config={
///         "include_volume_data": True,
///         "include_secrets": True,
///         "all_namespaces": True,
///     })
/// volume_res = gcp.gkebackup.RestorePlan("volume_res",
///     name="volume-res",
///     location="us-central1",
///     backup_plan=basic.id,
///     cluster=primary.id,
///     restore_config={
///         "all_namespaces": True,
///         "namespaced_resource_restore_mode": "FAIL_ON_CONFLICT",
///         "volume_data_restore_policy": "NO_VOLUME_DATA_RESTORATION",
///         "cluster_resource_restore_scope": {
///             "all_group_kinds": True,
///         },
///         "cluster_resource_conflict_policy": "USE_EXISTING_VERSION",
///         "volume_data_restore_policy_bindings": [{
///             "policy": "RESTORE_VOLUME_DATA_FROM_BACKUP",
///             "volume_type": "GCE_PERSISTENT_DISK",
///         }],
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var primary = new Gcp.Container.Cluster("primary", new()
///     {
///         Name = "volume-res-cluster",
///         Location = "us-central1",
///         InitialNodeCount = 1,
///         WorkloadIdentityConfig = new Gcp.Container.Inputs.ClusterWorkloadIdentityConfigArgs
///         {
///             WorkloadPool = "my-project-name.svc.id.goog",
///         },
///         AddonsConfig = new Gcp.Container.Inputs.ClusterAddonsConfigArgs
///         {
///             GkeBackupAgentConfig = new Gcp.Container.Inputs.ClusterAddonsConfigGkeBackupAgentConfigArgs
///             {
///                 Enabled = true,
///             },
///         },
///         DeletionProtection = true,
///         Network = "default",
///         Subnetwork = "default",
///     });
///
///     var basic = new Gcp.GkeBackup.BackupPlan("basic", new()
///     {
///         Name = "volume-res",
///         Cluster = primary.Id,
///         Location = "us-central1",
///         BackupConfig = new Gcp.GkeBackup.Inputs.BackupPlanBackupConfigArgs
///         {
///             IncludeVolumeData = true,
///             IncludeSecrets = true,
///             AllNamespaces = true,
///         },
///     });
///
///     var volumeRes = new Gcp.GkeBackup.RestorePlan("volume_res", new()
///     {
///         Name = "volume-res",
///         Location = "us-central1",
///         BackupPlan = basic.Id,
///         Cluster = primary.Id,
///         RestoreConfig = new Gcp.GkeBackup.Inputs.RestorePlanRestoreConfigArgs
///         {
///             AllNamespaces = true,
///             NamespacedResourceRestoreMode = "FAIL_ON_CONFLICT",
///             VolumeDataRestorePolicy = "NO_VOLUME_DATA_RESTORATION",
///             ClusterResourceRestoreScope = new Gcp.GkeBackup.Inputs.RestorePlanRestoreConfigClusterResourceRestoreScopeArgs
///             {
///                 AllGroupKinds = true,
///             },
///             ClusterResourceConflictPolicy = "USE_EXISTING_VERSION",
///             VolumeDataRestorePolicyBindings = new[]
///             {
///                 new Gcp.GkeBackup.Inputs.RestorePlanRestoreConfigVolumeDataRestorePolicyBindingArgs
///                 {
///                     Policy = "RESTORE_VOLUME_DATA_FROM_BACKUP",
///                     VolumeType = "GCE_PERSISTENT_DISK",
///                 },
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/container"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/gkebackup"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		primary, err := container.NewCluster(ctx, "primary", &container.ClusterArgs{
/// 			Name:             pulumi.String("volume-res-cluster"),
/// 			Location:         pulumi.String("us-central1"),
/// 			InitialNodeCount: pulumi.Int(1),
/// 			WorkloadIdentityConfig: &container.ClusterWorkloadIdentityConfigArgs{
/// 				WorkloadPool: pulumi.String("my-project-name.svc.id.goog"),
/// 			},
/// 			AddonsConfig: &container.ClusterAddonsConfigArgs{
/// 				GkeBackupAgentConfig: &container.ClusterAddonsConfigGkeBackupAgentConfigArgs{
/// 					Enabled: pulumi.Bool(true),
/// 				},
/// 			},
/// 			DeletionProtection: pulumi.Bool(true),
/// 			Network:            pulumi.String("default"),
/// 			Subnetwork:         pulumi.String("default"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		basic, err := gkebackup.NewBackupPlan(ctx, "basic", &gkebackup.BackupPlanArgs{
/// 			Name:     pulumi.String("volume-res"),
/// 			Cluster:  primary.ID().ToIDOutput().ToStringOutput(),
/// 			Location: pulumi.String("us-central1"),
/// 			BackupConfig: &gkebackup.BackupPlanBackupConfigArgs{
/// 				IncludeVolumeData: pulumi.Bool(true),
/// 				IncludeSecrets:    pulumi.Bool(true),
/// 				AllNamespaces:     pulumi.Bool(true),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = gkebackup.NewRestorePlan(ctx, "volume_res", &gkebackup.RestorePlanArgs{
/// 			Name:       pulumi.String("volume-res"),
/// 			Location:   pulumi.String("us-central1"),
/// 			BackupPlan: basic.ID().ToIDOutput().ToStringOutput(),
/// 			Cluster:    primary.ID().ToIDOutput().ToStringOutput(),
/// 			RestoreConfig: &gkebackup.RestorePlanRestoreConfigArgs{
/// 				AllNamespaces:                 pulumi.Bool(true),
/// 				NamespacedResourceRestoreMode: pulumi.String("FAIL_ON_CONFLICT"),
/// 				VolumeDataRestorePolicy:       pulumi.String("NO_VOLUME_DATA_RESTORATION"),
/// 				ClusterResourceRestoreScope: &gkebackup.RestorePlanRestoreConfigClusterResourceRestoreScopeArgs{
/// 					AllGroupKinds: pulumi.Bool(true),
/// 				},
/// 				ClusterResourceConflictPolicy: pulumi.String("USE_EXISTING_VERSION"),
/// 				VolumeDataRestorePolicyBindings: gkebackup.RestorePlanRestoreConfigVolumeDataRestorePolicyBindingArray{
/// 					&gkebackup.RestorePlanRestoreConfigVolumeDataRestorePolicyBindingArgs{
/// 						Policy:     pulumi.String("RESTORE_VOLUME_DATA_FROM_BACKUP"),
/// 						VolumeType: pulumi.String("GCE_PERSISTENT_DISK"),
/// 					},
/// 				},
/// 			},
/// 		})
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_container_cluster" "primary" {
///   name               = "volume-res-cluster"
///   location           = "us-central1"
///   initial_node_count = 1
///   workload_identity_config = {
///     workload_pool = "my-project-name.svc.id.goog"
///   }
///   addons_config = {
///     gke_backup_agent_config = {
///       enabled = true
///     }
///   }
///   deletion_protection = true
///   network             = "default"
///   subnetwork          = "default"
/// }
/// resource "gcp_gkebackup_backupplan" "basic" {
///   name     = "volume-res"
///   cluster  = gcp_container_cluster.primary.id
///   location = "us-central1"
///   backup_config = {
///     include_volume_data = true
///     include_secrets     = true
///     all_namespaces      = true
///   }
/// }
/// resource "gcp_gkebackup_restoreplan" "volume_res" {
///   name        = "volume-res"
///   location    = "us-central1"
///   backup_plan = gcp_gkebackup_backupplan.basic.id
///   cluster     = gcp_container_cluster.primary.id
///   restore_config = {
///     all_namespaces                   = true
///     namespaced_resource_restore_mode = "FAIL_ON_CONFLICT"
///     volume_data_restore_policy       = "NO_VOLUME_DATA_RESTORATION"
///     cluster_resource_restore_scope = {
///       all_group_kinds = true
///     }
///     cluster_resource_conflict_policy = "USE_EXISTING_VERSION"
///     volume_data_restore_policy_bindings = [{
///       "policy"     = "RESTORE_VOLUME_DATA_FROM_BACKUP"
///       "volumeType" = "GCE_PERSISTENT_DISK"
///     }]
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.container.Cluster;
/// import com.pulumi.gcp.container.ClusterArgs;
/// import com.pulumi.gcp.container.inputs.ClusterWorkloadIdentityConfigArgs;
/// import com.pulumi.gcp.container.inputs.ClusterAddonsConfigArgs;
/// import com.pulumi.gcp.container.inputs.ClusterAddonsConfigGkeBackupAgentConfigArgs;
/// import com.pulumi.gcp.gkebackup.BackupPlan;
/// import com.pulumi.gcp.gkebackup.BackupPlanArgs;
/// import com.pulumi.gcp.gkebackup.inputs.BackupPlanBackupConfigArgs;
/// import com.pulumi.gcp.gkebackup.RestorePlan;
/// import com.pulumi.gcp.gkebackup.RestorePlanArgs;
/// import com.pulumi.gcp.gkebackup.inputs.RestorePlanRestoreConfigArgs;
/// import com.pulumi.gcp.gkebackup.inputs.RestorePlanRestoreConfigClusterResourceRestoreScopeArgs;
/// import com.pulumi.gcp.gkebackup.inputs.RestorePlanRestoreConfigVolumeDataRestorePolicyBindingArgs;
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
///         var primary = new Cluster("primary", ClusterArgs.builder()
///             .name("volume-res-cluster")
///             .location("us-central1")
///             .initialNodeCount(1)
///             .workloadIdentityConfig(ClusterWorkloadIdentityConfigArgs.builder()
///                 .workloadPool("my-project-name.svc.id.goog")
///                 .build())
///             .addonsConfig(ClusterAddonsConfigArgs.builder()
///                 .gkeBackupAgentConfig(ClusterAddonsConfigGkeBackupAgentConfigArgs.builder()
///                     .enabled(true)
///                     .build())
///                 .build())
///             .deletionProtection(true)
///             .network("default")
///             .subnetwork("default")
///             .build());
///
///         var basic = new BackupPlan("basic", BackupPlanArgs.builder()
///             .name("volume-res")
///             .cluster(primary.id())
///             .location("us-central1")
///             .backupConfig(BackupPlanBackupConfigArgs.builder()
///                 .includeVolumeData(true)
///                 .includeSecrets(true)
///                 .allNamespaces(true)
///                 .build())
///             .build());
///
///         var volumeRes = new RestorePlan("volumeRes", RestorePlanArgs.builder()
///             .name("volume-res")
///             .location("us-central1")
///             .backupPlan(basic.id())
///             .cluster(primary.id())
///             .restoreConfig(RestorePlanRestoreConfigArgs.builder()
///                 .allNamespaces(true)
///                 .namespacedResourceRestoreMode("FAIL_ON_CONFLICT")
///                 .volumeDataRestorePolicy("NO_VOLUME_DATA_RESTORATION")
///                 .clusterResourceRestoreScope(RestorePlanRestoreConfigClusterResourceRestoreScopeArgs.builder()
///                     .allGroupKinds(true)
///                     .build())
///                 .clusterResourceConflictPolicy("USE_EXISTING_VERSION")
///                 .volumeDataRestorePolicyBindings(RestorePlanRestoreConfigVolumeDataRestorePolicyBindingArgs.builder()
///                     .policy("RESTORE_VOLUME_DATA_FROM_BACKUP")
///                     .volumeType("GCE_PERSISTENT_DISK")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   primary:
///     type: gcp:container:Cluster
///     properties:
///       name: volume-res-cluster
///       location: us-central1
///       initialNodeCount: 1
///       workloadIdentityConfig:
///         workloadPool: my-project-name.svc.id.goog
///       addonsConfig:
///         gkeBackupAgentConfig:
///           enabled: true
///       deletionProtection: true
///       network: default
///       subnetwork: default
///   basic:
///     type: gcp:gkebackup:BackupPlan
///     properties:
///       name: volume-res
///       cluster: ${primary.id}
///       location: us-central1
///       backupConfig:
///         includeVolumeData: true
///         includeSecrets: true
///         allNamespaces: true
///   volumeRes:
///     type: gcp:gkebackup:RestorePlan
///     name: volume_res
///     properties:
///       name: volume-res
///       location: us-central1
///       backupPlan: ${basic.id}
///       cluster: ${primary.id}
///       restoreConfig:
///         allNamespaces: true
///         namespacedResourceRestoreMode: FAIL_ON_CONFLICT
///         volumeDataRestorePolicy: NO_VOLUME_DATA_RESTORATION
///         clusterResourceRestoreScope:
///           allGroupKinds: true
///         clusterResourceConflictPolicy: USE_EXISTING_VERSION
///         volumeDataRestorePolicyBindings:
///           - policy: RESTORE_VOLUME_DATA_FROM_BACKUP
///             volumeType: GCE_PERSISTENT_DISK
/// ```
///
///
/// ## Import
///
/// RestorePlan can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/restorePlans/{{name}}`
/// * `{{project}}/{{location}}/{{name}}`
/// * `{{location}}/{{name}}`
///
///
/// When using the `pulumi import` command, RestorePlan can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:gkebackup/restorePlan:RestorePlan default projects/{{project}}/locations/{{location}}/restorePlans/{{name}}
/// $ pulumi import gcp:gkebackup/restorePlan:RestorePlan default {{project}}/{{location}}/{{name}}
/// $ pulumi import gcp:gkebackup/restorePlan:RestorePlan default {{location}}/{{name}}
/// ```
class RestorePlan extends pulumi.CustomResource {
  /// A reference to the BackupPlan from which Backups may be used
  /// as the source for Restores created via this RestorePlan.
  late final pulumi.Output<String> backupPlan;
  /// The name of the target cluster to which you want to Restore via this RestorePlan.
  late final pulumi.Output<String> cluster;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// User specified descriptive string for this RestorePlan.
  late final pulumi.Output<String?> description;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// Description: A set of custom labels supplied by the user.
  /// A list of key-&gt;value pairs.
  /// Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// The region of the Restore Plan.
  late final pulumi.Output<String> location;
  /// The full name of the BackupPlan Resource.
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// Defines the configuration of Restores created via this RestorePlan.
  /// Structure is documented below.
  late final pulumi.Output<RestorePlanRestoreConfig> restoreConfig;
  /// The State of the RestorePlan.
  late final pulumi.Output<String> state;
  /// Detailed description of why RestorePlan is in its current state.
  late final pulumi.Output<String> stateReason;
  /// Server generated, unique identifier of UUID format.
  late final pulumi.Output<String> uid;

  /// Creates a new [RestorePlan].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RestorePlan]. {@macro pulumi_gkebackup_restore_plan_restore_plan_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RestorePlan(
    String name, {
    RestorePlanArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:gkebackup/restorePlan:RestorePlan',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.36.1').merge(options),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        ) {
    backupPlan = registerOutput<String>('backupPlan');
    cluster = registerOutput<String>('cluster');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    restoreConfig = registerOutput<RestorePlanRestoreConfig>('restoreConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RestorePlanRestoreConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    state = registerOutput<String>('state');
    stateReason = registerOutput<String>('stateReason');
    uid = registerOutput<String>('uid');
  }

  /// Gets an existing [RestorePlan] resource's state with the given [name] and [id].
  static RestorePlan get(
    String name,
    pulumi.Input<String> id, {
    RestorePlanState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return RestorePlan._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  RestorePlan._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:gkebackup/restorePlan:RestorePlan',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    backupPlan = registerOutput<String>('backupPlan');
    cluster = registerOutput<String>('cluster');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    restoreConfig = registerOutput<RestorePlanRestoreConfig>('restoreConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RestorePlanRestoreConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.state = registerOutput<String>('state');
    stateReason = registerOutput<String>('stateReason');
    uid = registerOutput<String>('uid');
  }

  /// Creates a typed reference to an existing [RestorePlan] resource.
  RestorePlan.reference(String urn)
    : super(
        'gcp:gkebackup/restorePlan:RestorePlan',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        isResourceReference: true,
      ) {
    backupPlan = registerOutput<String>('backupPlan');
    cluster = registerOutput<String>('cluster');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    restoreConfig = registerOutput<RestorePlanRestoreConfig>('restoreConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RestorePlanRestoreConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    state = registerOutput<String>('state');
    stateReason = registerOutput<String>('stateReason');
    uid = registerOutput<String>('uid');
  }
}
