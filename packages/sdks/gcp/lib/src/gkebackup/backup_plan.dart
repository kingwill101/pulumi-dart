import 'package:pulumi/pulumi.dart' as pulumi;
import 'backup_plan_args.dart';
import 'backup_plan_backup_config.dart';
import 'backup_plan_backup_schedule.dart';
import 'backup_plan_retention_policy.dart';
import 'backup_plan_state.dart';

/// Represents a Backup Plan instance.
///
///
/// To get more information about BackupPlan, see:
///
/// * [API documentation](https://cloud.google.com/kubernetes-engine/docs/add-on/backup-for-gke/reference/rest/v1/projects.locations.backupPlans)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/kubernetes-engine/docs/add-on/backup-for-gke)
///
/// ## Example Usage
///
/// ### Gkebackup Backupplan Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const primary = new gcp.container.Cluster("primary", {
///     name: "basic-cluster",
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
///     name: "basic-plan",
///     cluster: primary.id,
///     location: "us-central1",
///     backupConfig: {
///         includeVolumeData: true,
///         includeSecrets: true,
///         allNamespaces: true,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// primary = gcp.container.Cluster("primary",
///     name="basic-cluster",
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
///     name="basic-plan",
///     cluster=primary.id,
///     location="us-central1",
///     backup_config={
///         "include_volume_data": True,
///         "include_secrets": True,
///         "all_namespaces": True,
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
///         Name = "basic-cluster",
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
///         Name = "basic-plan",
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
/// 			Name:             pulumi.String("basic-cluster"),
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
/// 		_, err = gkebackup.NewBackupPlan(ctx, "basic", &gkebackup.BackupPlanArgs{
/// 			Name:     pulumi.String("basic-plan"),
/// 			Cluster:  primary.ID(),
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
/// 		return nil
/// 	})
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
/// import java.util.List;
/// import java.util.ArrayList;
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
///             .name("basic-cluster")
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
///             .name("basic-plan")
///             .cluster(primary.id())
///             .location("us-central1")
///             .backupConfig(BackupPlanBackupConfigArgs.builder()
///                 .includeVolumeData(true)
///                 .includeSecrets(true)
///                 .allNamespaces(true)
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
///       name: basic-cluster
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
///       name: basic-plan
///       cluster: ${primary.id}
///       location: us-central1
///       backupConfig:
///         includeVolumeData: true
///         includeSecrets: true
///         allNamespaces: true
/// ```
///
/// ### Gkebackup Backupplan Autopilot
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const primary = new gcp.container.Cluster("primary", {
///     name: "autopilot-cluster",
///     location: "us-central1",
///     enableAutopilot: true,
///     ipAllocationPolicy: {},
///     releaseChannel: {
///         channel: "RAPID",
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
/// const autopilot = new gcp.gkebackup.BackupPlan("autopilot", {
///     name: "autopilot-plan",
///     cluster: primary.id,
///     location: "us-central1",
///     backupConfig: {
///         includeVolumeData: true,
///         includeSecrets: true,
///         allNamespaces: true,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// primary = gcp.container.Cluster("primary",
///     name="autopilot-cluster",
///     location="us-central1",
///     enable_autopilot=True,
///     ip_allocation_policy={},
///     release_channel={
///         "channel": "RAPID",
///     },
///     addons_config={
///         "gke_backup_agent_config": {
///             "enabled": True,
///         },
///     },
///     deletion_protection=True,
///     network="default",
///     subnetwork="default")
/// autopilot = gcp.gkebackup.BackupPlan("autopilot",
///     name="autopilot-plan",
///     cluster=primary.id,
///     location="us-central1",
///     backup_config={
///         "include_volume_data": True,
///         "include_secrets": True,
///         "all_namespaces": True,
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
///         Name = "autopilot-cluster",
///         Location = "us-central1",
///         EnableAutopilot = true,
///         IpAllocationPolicy = null,
///         ReleaseChannel = new Gcp.Container.Inputs.ClusterReleaseChannelArgs
///         {
///             Channel = "RAPID",
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
///     var autopilot = new Gcp.GkeBackup.BackupPlan("autopilot", new()
///     {
///         Name = "autopilot-plan",
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
/// 			Name:               pulumi.String("autopilot-cluster"),
/// 			Location:           pulumi.String("us-central1"),
/// 			EnableAutopilot:    pulumi.Bool(true),
/// 			IpAllocationPolicy: &container.ClusterIpAllocationPolicyArgs{},
/// 			ReleaseChannel: &container.ClusterReleaseChannelArgs{
/// 				Channel: pulumi.String("RAPID"),
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
/// 		_, err = gkebackup.NewBackupPlan(ctx, "autopilot", &gkebackup.BackupPlanArgs{
/// 			Name:     pulumi.String("autopilot-plan"),
/// 			Cluster:  primary.ID(),
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
/// 		return nil
/// 	})
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
/// import com.pulumi.gcp.container.inputs.ClusterIpAllocationPolicyArgs;
/// import com.pulumi.gcp.container.inputs.ClusterReleaseChannelArgs;
/// import com.pulumi.gcp.container.inputs.ClusterAddonsConfigArgs;
/// import com.pulumi.gcp.container.inputs.ClusterAddonsConfigGkeBackupAgentConfigArgs;
/// import com.pulumi.gcp.gkebackup.BackupPlan;
/// import com.pulumi.gcp.gkebackup.BackupPlanArgs;
/// import com.pulumi.gcp.gkebackup.inputs.BackupPlanBackupConfigArgs;
/// import java.util.List;
/// import java.util.ArrayList;
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
///             .name("autopilot-cluster")
///             .location("us-central1")
///             .enableAutopilot(true)
///             .ipAllocationPolicy(ClusterIpAllocationPolicyArgs.builder()
///                 .build())
///             .releaseChannel(ClusterReleaseChannelArgs.builder()
///                 .channel("RAPID")
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
///         var autopilot = new BackupPlan("autopilot", BackupPlanArgs.builder()
///             .name("autopilot-plan")
///             .cluster(primary.id())
///             .location("us-central1")
///             .backupConfig(BackupPlanBackupConfigArgs.builder()
///                 .includeVolumeData(true)
///                 .includeSecrets(true)
///                 .allNamespaces(true)
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
///       name: autopilot-cluster
///       location: us-central1
///       enableAutopilot: true
///       ipAllocationPolicy: {}
///       releaseChannel:
///         channel: RAPID
///       addonsConfig:
///         gkeBackupAgentConfig:
///           enabled: true
///       deletionProtection: true
///       network: default
///       subnetwork: default
///   autopilot:
///     type: gcp:gkebackup:BackupPlan
///     properties:
///       name: autopilot-plan
///       cluster: ${primary.id}
///       location: us-central1
///       backupConfig:
///         includeVolumeData: true
///         includeSecrets: true
///         allNamespaces: true
/// ```
///
/// ### Gkebackup Backupplan Cmek
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const primary = new gcp.container.Cluster("primary", {
///     name: "cmek-cluster",
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
/// const keyRing = new gcp.kms.KeyRing("key_ring", {
///     name: "backup-key",
///     location: "us-central1",
/// });
/// const cryptoKey = new gcp.kms.CryptoKey("crypto_key", {
///     name: "backup-key",
///     keyRing: keyRing.id,
/// });
/// const cmek = new gcp.gkebackup.BackupPlan("cmek", {
///     name: "cmek-plan",
///     cluster: primary.id,
///     location: "us-central1",
///     backupConfig: {
///         includeVolumeData: true,
///         includeSecrets: true,
///         selectedNamespaces: {
///             namespaces: [
///                 "default",
///                 "test",
///             ],
///         },
///         encryptionKey: {
///             gcpKmsEncryptionKey: cryptoKey.id,
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// primary = gcp.container.Cluster("primary",
///     name="cmek-cluster",
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
/// key_ring = gcp.kms.KeyRing("key_ring",
///     name="backup-key",
///     location="us-central1")
/// crypto_key = gcp.kms.CryptoKey("crypto_key",
///     name="backup-key",
///     key_ring=key_ring.id)
/// cmek = gcp.gkebackup.BackupPlan("cmek",
///     name="cmek-plan",
///     cluster=primary.id,
///     location="us-central1",
///     backup_config={
///         "include_volume_data": True,
///         "include_secrets": True,
///         "selected_namespaces": {
///             "namespaces": [
///                 "default",
///                 "test",
///             ],
///         },
///         "encryption_key": {
///             "gcp_kms_encryption_key": crypto_key.id,
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
///         Name = "cmek-cluster",
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
///     var keyRing = new Gcp.Kms.KeyRing("key_ring", new()
///     {
///         Name = "backup-key",
///         Location = "us-central1",
///     });
///
///     var cryptoKey = new Gcp.Kms.CryptoKey("crypto_key", new()
///     {
///         Name = "backup-key",
///         KeyRing = keyRing.Id,
///     });
///
///     var cmek = new Gcp.GkeBackup.BackupPlan("cmek", new()
///     {
///         Name = "cmek-plan",
///         Cluster = primary.Id,
///         Location = "us-central1",
///         BackupConfig = new Gcp.GkeBackup.Inputs.BackupPlanBackupConfigArgs
///         {
///             IncludeVolumeData = true,
///             IncludeSecrets = true,
///             SelectedNamespaces = new Gcp.GkeBackup.Inputs.BackupPlanBackupConfigSelectedNamespacesArgs
///             {
///                 Namespaces = new[]
///                 {
///                     "default",
///                     "test",
///                 },
///             },
///             EncryptionKey = new Gcp.GkeBackup.Inputs.BackupPlanBackupConfigEncryptionKeyArgs
///             {
///                 GcpKmsEncryptionKey = cryptoKey.Id,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/kms"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		primary, err := container.NewCluster(ctx, "primary", &container.ClusterArgs{
/// 			Name:             pulumi.String("cmek-cluster"),
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
/// 		keyRing, err := kms.NewKeyRing(ctx, "key_ring", &kms.KeyRingArgs{
/// 			Name:     pulumi.String("backup-key"),
/// 			Location: pulumi.String("us-central1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		cryptoKey, err := kms.NewCryptoKey(ctx, "crypto_key", &kms.CryptoKeyArgs{
/// 			Name:    pulumi.String("backup-key"),
/// 			KeyRing: keyRing.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = gkebackup.NewBackupPlan(ctx, "cmek", &gkebackup.BackupPlanArgs{
/// 			Name:     pulumi.String("cmek-plan"),
/// 			Cluster:  primary.ID(),
/// 			Location: pulumi.String("us-central1"),
/// 			BackupConfig: &gkebackup.BackupPlanBackupConfigArgs{
/// 				IncludeVolumeData: pulumi.Bool(true),
/// 				IncludeSecrets:    pulumi.Bool(true),
/// 				SelectedNamespaces: &gkebackup.BackupPlanBackupConfigSelectedNamespacesArgs{
/// 					Namespaces: pulumi.StringArray{
/// 						pulumi.String("default"),
/// 						pulumi.String("test"),
/// 					},
/// 				},
/// 				EncryptionKey: &gkebackup.BackupPlanBackupConfigEncryptionKeyArgs{
/// 					GcpKmsEncryptionKey: cryptoKey.ID(),
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
/// import com.pulumi.gcp.kms.KeyRing;
/// import com.pulumi.gcp.kms.KeyRingArgs;
/// import com.pulumi.gcp.kms.CryptoKey;
/// import com.pulumi.gcp.kms.CryptoKeyArgs;
/// import com.pulumi.gcp.gkebackup.BackupPlan;
/// import com.pulumi.gcp.gkebackup.BackupPlanArgs;
/// import com.pulumi.gcp.gkebackup.inputs.BackupPlanBackupConfigArgs;
/// import com.pulumi.gcp.gkebackup.inputs.BackupPlanBackupConfigSelectedNamespacesArgs;
/// import com.pulumi.gcp.gkebackup.inputs.BackupPlanBackupConfigEncryptionKeyArgs;
/// import java.util.List;
/// import java.util.ArrayList;
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
///             .name("cmek-cluster")
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
///         var keyRing = new KeyRing("keyRing", KeyRingArgs.builder()
///             .name("backup-key")
///             .location("us-central1")
///             .build());
///
///         var cryptoKey = new CryptoKey("cryptoKey", CryptoKeyArgs.builder()
///             .name("backup-key")
///             .keyRing(keyRing.id())
///             .build());
///
///         var cmek = new BackupPlan("cmek", BackupPlanArgs.builder()
///             .name("cmek-plan")
///             .cluster(primary.id())
///             .location("us-central1")
///             .backupConfig(BackupPlanBackupConfigArgs.builder()
///                 .includeVolumeData(true)
///                 .includeSecrets(true)
///                 .selectedNamespaces(BackupPlanBackupConfigSelectedNamespacesArgs.builder()
///                     .namespaces(
///                         "default",
///                         "test")
///                     .build())
///                 .encryptionKey(BackupPlanBackupConfigEncryptionKeyArgs.builder()
///                     .gcpKmsEncryptionKey(cryptoKey.id())
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
///       name: cmek-cluster
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
///   cmek:
///     type: gcp:gkebackup:BackupPlan
///     properties:
///       name: cmek-plan
///       cluster: ${primary.id}
///       location: us-central1
///       backupConfig:
///         includeVolumeData: true
///         includeSecrets: true
///         selectedNamespaces:
///           namespaces:
///             - default
///             - test
///         encryptionKey:
///           gcpKmsEncryptionKey: ${cryptoKey.id}
///   cryptoKey:
///     type: gcp:kms:CryptoKey
///     name: crypto_key
///     properties:
///       name: backup-key
///       keyRing: ${keyRing.id}
///   keyRing:
///     type: gcp:kms:KeyRing
///     name: key_ring
///     properties:
///       name: backup-key
///       location: us-central1
/// ```
///
/// ### Gkebackup Backupplan Nslabels
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const primary = new gcp.container.Cluster("primary", {
///     name: "nslabels-cluster",
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
/// const nslabels = new gcp.gkebackup.BackupPlan("nslabels", {
///     name: "nslabels-plan",
///     cluster: primary.id,
///     location: "us-central1",
///     backupConfig: {
///         includeVolumeData: true,
///         includeSecrets: true,
///         selectedNamespaceLabels: {
///             resourceLabels: [{
///                 key: "key1",
///                 value: "value1",
///             }],
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// primary = gcp.container.Cluster("primary",
///     name="nslabels-cluster",
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
/// nslabels = gcp.gkebackup.BackupPlan("nslabels",
///     name="nslabels-plan",
///     cluster=primary.id,
///     location="us-central1",
///     backup_config={
///         "include_volume_data": True,
///         "include_secrets": True,
///         "selected_namespace_labels": {
///             "resource_labels": [{
///                 "key": "key1",
///                 "value": "value1",
///             }],
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
///         Name = "nslabels-cluster",
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
///     var nslabels = new Gcp.GkeBackup.BackupPlan("nslabels", new()
///     {
///         Name = "nslabels-plan",
///         Cluster = primary.Id,
///         Location = "us-central1",
///         BackupConfig = new Gcp.GkeBackup.Inputs.BackupPlanBackupConfigArgs
///         {
///             IncludeVolumeData = true,
///             IncludeSecrets = true,
///             SelectedNamespaceLabels = new Gcp.GkeBackup.Inputs.BackupPlanBackupConfigSelectedNamespaceLabelsArgs
///             {
///                 ResourceLabels = new[]
///                 {
///                     new Gcp.GkeBackup.Inputs.BackupPlanBackupConfigSelectedNamespaceLabelsResourceLabelArgs
///                     {
///                         Key = "key1",
///                         Value = "value1",
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
/// 			Name:             pulumi.String("nslabels-cluster"),
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
/// 		_, err = gkebackup.NewBackupPlan(ctx, "nslabels", &gkebackup.BackupPlanArgs{
/// 			Name:     pulumi.String("nslabels-plan"),
/// 			Cluster:  primary.ID(),
/// 			Location: pulumi.String("us-central1"),
/// 			BackupConfig: &gkebackup.BackupPlanBackupConfigArgs{
/// 				IncludeVolumeData: pulumi.Bool(true),
/// 				IncludeSecrets:    pulumi.Bool(true),
/// 				SelectedNamespaceLabels: &gkebackup.BackupPlanBackupConfigSelectedNamespaceLabelsArgs{
/// 					ResourceLabels: gkebackup.BackupPlanBackupConfigSelectedNamespaceLabelsResourceLabelArray{
/// 						&gkebackup.BackupPlanBackupConfigSelectedNamespaceLabelsResourceLabelArgs{
/// 							Key:   pulumi.String("key1"),
/// 							Value: pulumi.String("value1"),
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
/// import com.pulumi.gcp.gkebackup.inputs.BackupPlanBackupConfigSelectedNamespaceLabelsArgs;
/// import java.util.List;
/// import java.util.ArrayList;
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
///             .name("nslabels-cluster")
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
///         var nslabels = new BackupPlan("nslabels", BackupPlanArgs.builder()
///             .name("nslabels-plan")
///             .cluster(primary.id())
///             .location("us-central1")
///             .backupConfig(BackupPlanBackupConfigArgs.builder()
///                 .includeVolumeData(true)
///                 .includeSecrets(true)
///                 .selectedNamespaceLabels(BackupPlanBackupConfigSelectedNamespaceLabelsArgs.builder()
///                     .resourceLabels(BackupPlanBackupConfigSelectedNamespaceLabelsResourceLabelArgs.builder()
///                         .key("key1")
///                         .value("value1")
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
///       name: nslabels-cluster
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
///   nslabels:
///     type: gcp:gkebackup:BackupPlan
///     properties:
///       name: nslabels-plan
///       cluster: ${primary.id}
///       location: us-central1
///       backupConfig:
///         includeVolumeData: true
///         includeSecrets: true
///         selectedNamespaceLabels:
///           resourceLabels:
///             - key: key1
///               value: value1
/// ```
///
/// ### Gkebackup Backupplan Full
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const primary = new gcp.container.Cluster("primary", {
///     name: "full-cluster",
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
/// const full = new gcp.gkebackup.BackupPlan("full", {
///     name: "full-plan",
///     cluster: primary.id,
///     location: "us-central1",
///     retentionPolicy: {
///         backupDeleteLockDays: 30,
///         backupRetainDays: 180,
///     },
///     backupSchedule: {
///         cronSchedule: "0 9 * * 1",
///     },
///     backupConfig: {
///         includeVolumeData: true,
///         includeSecrets: true,
///         selectedApplications: {
///             namespacedNames: [
///                 {
///                     name: "app1",
///                     namespace: "ns1",
///                 },
///                 {
///                     name: "app2",
///                     namespace: "ns2",
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
///     name="full-cluster",
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
/// full = gcp.gkebackup.BackupPlan("full",
///     name="full-plan",
///     cluster=primary.id,
///     location="us-central1",
///     retention_policy={
///         "backup_delete_lock_days": 30,
///         "backup_retain_days": 180,
///     },
///     backup_schedule={
///         "cron_schedule": "0 9 * * 1",
///     },
///     backup_config={
///         "include_volume_data": True,
///         "include_secrets": True,
///         "selected_applications": {
///             "namespaced_names": [
///                 {
///                     "name": "app1",
///                     "namespace": "ns1",
///                 },
///                 {
///                     "name": "app2",
///                     "namespace": "ns2",
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
///         Name = "full-cluster",
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
///     var full = new Gcp.GkeBackup.BackupPlan("full", new()
///     {
///         Name = "full-plan",
///         Cluster = primary.Id,
///         Location = "us-central1",
///         RetentionPolicy = new Gcp.GkeBackup.Inputs.BackupPlanRetentionPolicyArgs
///         {
///             BackupDeleteLockDays = 30,
///             BackupRetainDays = 180,
///         },
///         BackupSchedule = new Gcp.GkeBackup.Inputs.BackupPlanBackupScheduleArgs
///         {
///             CronSchedule = "0 9 * * 1",
///         },
///         BackupConfig = new Gcp.GkeBackup.Inputs.BackupPlanBackupConfigArgs
///         {
///             IncludeVolumeData = true,
///             IncludeSecrets = true,
///             SelectedApplications = new Gcp.GkeBackup.Inputs.BackupPlanBackupConfigSelectedApplicationsArgs
///             {
///                 NamespacedNames = new[]
///                 {
///                     new Gcp.GkeBackup.Inputs.BackupPlanBackupConfigSelectedApplicationsNamespacedNameArgs
///                     {
///                         Name = "app1",
///                         Namespace = "ns1",
///                     },
///                     new Gcp.GkeBackup.Inputs.BackupPlanBackupConfigSelectedApplicationsNamespacedNameArgs
///                     {
///                         Name = "app2",
///                         Namespace = "ns2",
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
/// 			Name:             pulumi.String("full-cluster"),
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
/// 		_, err = gkebackup.NewBackupPlan(ctx, "full", &gkebackup.BackupPlanArgs{
/// 			Name:     pulumi.String("full-plan"),
/// 			Cluster:  primary.ID(),
/// 			Location: pulumi.String("us-central1"),
/// 			RetentionPolicy: &gkebackup.BackupPlanRetentionPolicyArgs{
/// 				BackupDeleteLockDays: pulumi.Int(30),
/// 				BackupRetainDays:     pulumi.Int(180),
/// 			},
/// 			BackupSchedule: &gkebackup.BackupPlanBackupScheduleArgs{
/// 				CronSchedule: pulumi.String("0 9 * * 1"),
/// 			},
/// 			BackupConfig: &gkebackup.BackupPlanBackupConfigArgs{
/// 				IncludeVolumeData: pulumi.Bool(true),
/// 				IncludeSecrets:    pulumi.Bool(true),
/// 				SelectedApplications: &gkebackup.BackupPlanBackupConfigSelectedApplicationsArgs{
/// 					NamespacedNames: gkebackup.BackupPlanBackupConfigSelectedApplicationsNamespacedNameArray{
/// 						&gkebackup.BackupPlanBackupConfigSelectedApplicationsNamespacedNameArgs{
/// 							Name:      pulumi.String("app1"),
/// 							Namespace: pulumi.String("ns1"),
/// 						},
/// 						&gkebackup.BackupPlanBackupConfigSelectedApplicationsNamespacedNameArgs{
/// 							Name:      pulumi.String("app2"),
/// 							Namespace: pulumi.String("ns2"),
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
/// import com.pulumi.gcp.gkebackup.inputs.BackupPlanRetentionPolicyArgs;
/// import com.pulumi.gcp.gkebackup.inputs.BackupPlanBackupScheduleArgs;
/// import com.pulumi.gcp.gkebackup.inputs.BackupPlanBackupConfigArgs;
/// import com.pulumi.gcp.gkebackup.inputs.BackupPlanBackupConfigSelectedApplicationsArgs;
/// import java.util.List;
/// import java.util.ArrayList;
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
///             .name("full-cluster")
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
///         var full = new BackupPlan("full", BackupPlanArgs.builder()
///             .name("full-plan")
///             .cluster(primary.id())
///             .location("us-central1")
///             .retentionPolicy(BackupPlanRetentionPolicyArgs.builder()
///                 .backupDeleteLockDays(30)
///                 .backupRetainDays(180)
///                 .build())
///             .backupSchedule(BackupPlanBackupScheduleArgs.builder()
///                 .cronSchedule("0 9 * * 1")
///                 .build())
///             .backupConfig(BackupPlanBackupConfigArgs.builder()
///                 .includeVolumeData(true)
///                 .includeSecrets(true)
///                 .selectedApplications(BackupPlanBackupConfigSelectedApplicationsArgs.builder()
///                     .namespacedNames(
///                         BackupPlanBackupConfigSelectedApplicationsNamespacedNameArgs.builder()
///                             .name("app1")
///                             .namespace("ns1")
///                             .build(),
///                         BackupPlanBackupConfigSelectedApplicationsNamespacedNameArgs.builder()
///                             .name("app2")
///                             .namespace("ns2")
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
///       name: full-cluster
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
///   full:
///     type: gcp:gkebackup:BackupPlan
///     properties:
///       name: full-plan
///       cluster: ${primary.id}
///       location: us-central1
///       retentionPolicy:
///         backupDeleteLockDays: 30
///         backupRetainDays: 180
///       backupSchedule:
///         cronSchedule: 0 9 * * 1
///       backupConfig:
///         includeVolumeData: true
///         includeSecrets: true
///         selectedApplications:
///           namespacedNames:
///             - name: app1
///               namespace: ns1
///             - name: app2
///               namespace: ns2
/// ```
///
/// ### Gkebackup Backupplan Permissive
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const primary = new gcp.container.Cluster("primary", {
///     name: "permissive-cluster",
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
/// const permissive = new gcp.gkebackup.BackupPlan("permissive", {
///     name: "permissive-plan",
///     cluster: primary.id,
///     location: "us-central1",
///     retentionPolicy: {
///         backupDeleteLockDays: 30,
///         backupRetainDays: 180,
///     },
///     backupSchedule: {
///         cronSchedule: "0 9 * * 1",
///     },
///     backupConfig: {
///         includeVolumeData: true,
///         includeSecrets: true,
///         permissiveMode: true,
///         selectedApplications: {
///             namespacedNames: [
///                 {
///                     name: "app1",
///                     namespace: "ns1",
///                 },
///                 {
///                     name: "app2",
///                     namespace: "ns2",
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
///     name="permissive-cluster",
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
/// permissive = gcp.gkebackup.BackupPlan("permissive",
///     name="permissive-plan",
///     cluster=primary.id,
///     location="us-central1",
///     retention_policy={
///         "backup_delete_lock_days": 30,
///         "backup_retain_days": 180,
///     },
///     backup_schedule={
///         "cron_schedule": "0 9 * * 1",
///     },
///     backup_config={
///         "include_volume_data": True,
///         "include_secrets": True,
///         "permissive_mode": True,
///         "selected_applications": {
///             "namespaced_names": [
///                 {
///                     "name": "app1",
///                     "namespace": "ns1",
///                 },
///                 {
///                     "name": "app2",
///                     "namespace": "ns2",
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
///         Name = "permissive-cluster",
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
///     var permissive = new Gcp.GkeBackup.BackupPlan("permissive", new()
///     {
///         Name = "permissive-plan",
///         Cluster = primary.Id,
///         Location = "us-central1",
///         RetentionPolicy = new Gcp.GkeBackup.Inputs.BackupPlanRetentionPolicyArgs
///         {
///             BackupDeleteLockDays = 30,
///             BackupRetainDays = 180,
///         },
///         BackupSchedule = new Gcp.GkeBackup.Inputs.BackupPlanBackupScheduleArgs
///         {
///             CronSchedule = "0 9 * * 1",
///         },
///         BackupConfig = new Gcp.GkeBackup.Inputs.BackupPlanBackupConfigArgs
///         {
///             IncludeVolumeData = true,
///             IncludeSecrets = true,
///             PermissiveMode = true,
///             SelectedApplications = new Gcp.GkeBackup.Inputs.BackupPlanBackupConfigSelectedApplicationsArgs
///             {
///                 NamespacedNames = new[]
///                 {
///                     new Gcp.GkeBackup.Inputs.BackupPlanBackupConfigSelectedApplicationsNamespacedNameArgs
///                     {
///                         Name = "app1",
///                         Namespace = "ns1",
///                     },
///                     new Gcp.GkeBackup.Inputs.BackupPlanBackupConfigSelectedApplicationsNamespacedNameArgs
///                     {
///                         Name = "app2",
///                         Namespace = "ns2",
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
/// 			Name:             pulumi.String("permissive-cluster"),
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
/// 		_, err = gkebackup.NewBackupPlan(ctx, "permissive", &gkebackup.BackupPlanArgs{
/// 			Name:     pulumi.String("permissive-plan"),
/// 			Cluster:  primary.ID(),
/// 			Location: pulumi.String("us-central1"),
/// 			RetentionPolicy: &gkebackup.BackupPlanRetentionPolicyArgs{
/// 				BackupDeleteLockDays: pulumi.Int(30),
/// 				BackupRetainDays:     pulumi.Int(180),
/// 			},
/// 			BackupSchedule: &gkebackup.BackupPlanBackupScheduleArgs{
/// 				CronSchedule: pulumi.String("0 9 * * 1"),
/// 			},
/// 			BackupConfig: &gkebackup.BackupPlanBackupConfigArgs{
/// 				IncludeVolumeData: pulumi.Bool(true),
/// 				IncludeSecrets:    pulumi.Bool(true),
/// 				PermissiveMode:    pulumi.Bool(true),
/// 				SelectedApplications: &gkebackup.BackupPlanBackupConfigSelectedApplicationsArgs{
/// 					NamespacedNames: gkebackup.BackupPlanBackupConfigSelectedApplicationsNamespacedNameArray{
/// 						&gkebackup.BackupPlanBackupConfigSelectedApplicationsNamespacedNameArgs{
/// 							Name:      pulumi.String("app1"),
/// 							Namespace: pulumi.String("ns1"),
/// 						},
/// 						&gkebackup.BackupPlanBackupConfigSelectedApplicationsNamespacedNameArgs{
/// 							Name:      pulumi.String("app2"),
/// 							Namespace: pulumi.String("ns2"),
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
/// import com.pulumi.gcp.gkebackup.inputs.BackupPlanRetentionPolicyArgs;
/// import com.pulumi.gcp.gkebackup.inputs.BackupPlanBackupScheduleArgs;
/// import com.pulumi.gcp.gkebackup.inputs.BackupPlanBackupConfigArgs;
/// import com.pulumi.gcp.gkebackup.inputs.BackupPlanBackupConfigSelectedApplicationsArgs;
/// import java.util.List;
/// import java.util.ArrayList;
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
///             .name("permissive-cluster")
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
///         var permissive = new BackupPlan("permissive", BackupPlanArgs.builder()
///             .name("permissive-plan")
///             .cluster(primary.id())
///             .location("us-central1")
///             .retentionPolicy(BackupPlanRetentionPolicyArgs.builder()
///                 .backupDeleteLockDays(30)
///                 .backupRetainDays(180)
///                 .build())
///             .backupSchedule(BackupPlanBackupScheduleArgs.builder()
///                 .cronSchedule("0 9 * * 1")
///                 .build())
///             .backupConfig(BackupPlanBackupConfigArgs.builder()
///                 .includeVolumeData(true)
///                 .includeSecrets(true)
///                 .permissiveMode(true)
///                 .selectedApplications(BackupPlanBackupConfigSelectedApplicationsArgs.builder()
///                     .namespacedNames(
///                         BackupPlanBackupConfigSelectedApplicationsNamespacedNameArgs.builder()
///                             .name("app1")
///                             .namespace("ns1")
///                             .build(),
///                         BackupPlanBackupConfigSelectedApplicationsNamespacedNameArgs.builder()
///                             .name("app2")
///                             .namespace("ns2")
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
///       name: permissive-cluster
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
///   permissive:
///     type: gcp:gkebackup:BackupPlan
///     properties:
///       name: permissive-plan
///       cluster: ${primary.id}
///       location: us-central1
///       retentionPolicy:
///         backupDeleteLockDays: 30
///         backupRetainDays: 180
///       backupSchedule:
///         cronSchedule: 0 9 * * 1
///       backupConfig:
///         includeVolumeData: true
///         includeSecrets: true
///         permissiveMode: true
///         selectedApplications:
///           namespacedNames:
///             - name: app1
///               namespace: ns1
///             - name: app2
///               namespace: ns2
/// ```
///
/// ### Gkebackup Backupplan Rpo Daily Window
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const primary = new gcp.container.Cluster("primary", {
///     name: "rpo-daily-cluster",
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
/// const rpoDailyWindow = new gcp.gkebackup.BackupPlan("rpo_daily_window", {
///     name: "rpo-daily-window",
///     cluster: primary.id,
///     location: "us-central1",
///     retentionPolicy: {
///         backupDeleteLockDays: 30,
///         backupRetainDays: 180,
///     },
///     backupSchedule: {
///         paused: true,
///         rpoConfig: {
///             targetRpoMinutes: 1440,
///             exclusionWindows: [
///                 {
///                     startTime: {
///                         hours: 12,
///                     },
///                     duration: "7200s",
///                     daily: true,
///                 },
///                 {
///                     startTime: {
///                         hours: 8,
///                         minutes: 40,
///                         seconds: 1,
///                         nanos: 100,
///                     },
///                     duration: "3600s",
///                     singleOccurrenceDate: {
///                         year: 2024,
///                         month: 3,
///                         day: 16,
///                     },
///                 },
///             ],
///         },
///     },
///     backupConfig: {
///         includeVolumeData: true,
///         includeSecrets: true,
///         allNamespaces: true,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// primary = gcp.container.Cluster("primary",
///     name="rpo-daily-cluster",
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
/// rpo_daily_window = gcp.gkebackup.BackupPlan("rpo_daily_window",
///     name="rpo-daily-window",
///     cluster=primary.id,
///     location="us-central1",
///     retention_policy={
///         "backup_delete_lock_days": 30,
///         "backup_retain_days": 180,
///     },
///     backup_schedule={
///         "paused": True,
///         "rpo_config": {
///             "target_rpo_minutes": 1440,
///             "exclusion_windows": [
///                 {
///                     "start_time": {
///                         "hours": 12,
///                     },
///                     "duration": "7200s",
///                     "daily": True,
///                 },
///                 {
///                     "start_time": {
///                         "hours": 8,
///                         "minutes": 40,
///                         "seconds": 1,
///                         "nanos": 100,
///                     },
///                     "duration": "3600s",
///                     "single_occurrence_date": {
///                         "year": 2024,
///                         "month": 3,
///                         "day": 16,
///                     },
///                 },
///             ],
///         },
///     },
///     backup_config={
///         "include_volume_data": True,
///         "include_secrets": True,
///         "all_namespaces": True,
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
///         Name = "rpo-daily-cluster",
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
///     var rpoDailyWindow = new Gcp.GkeBackup.BackupPlan("rpo_daily_window", new()
///     {
///         Name = "rpo-daily-window",
///         Cluster = primary.Id,
///         Location = "us-central1",
///         RetentionPolicy = new Gcp.GkeBackup.Inputs.BackupPlanRetentionPolicyArgs
///         {
///             BackupDeleteLockDays = 30,
///             BackupRetainDays = 180,
///         },
///         BackupSchedule = new Gcp.GkeBackup.Inputs.BackupPlanBackupScheduleArgs
///         {
///             Paused = true,
///             RpoConfig = new Gcp.GkeBackup.Inputs.BackupPlanBackupScheduleRpoConfigArgs
///             {
///                 TargetRpoMinutes = 1440,
///                 ExclusionWindows = new[]
///                 {
///                     new Gcp.GkeBackup.Inputs.BackupPlanBackupScheduleRpoConfigExclusionWindowArgs
///                     {
///                         StartTime = new Gcp.GkeBackup.Inputs.BackupPlanBackupScheduleRpoConfigExclusionWindowStartTimeArgs
///                         {
///                             Hours = 12,
///                         },
///                         Duration = "7200s",
///                         Daily = true,
///                     },
///                     new Gcp.GkeBackup.Inputs.BackupPlanBackupScheduleRpoConfigExclusionWindowArgs
///                     {
///                         StartTime = new Gcp.GkeBackup.Inputs.BackupPlanBackupScheduleRpoConfigExclusionWindowStartTimeArgs
///                         {
///                             Hours = 8,
///                             Minutes = 40,
///                             Seconds = 1,
///                             Nanos = 100,
///                         },
///                         Duration = "3600s",
///                         SingleOccurrenceDate = new Gcp.GkeBackup.Inputs.BackupPlanBackupScheduleRpoConfigExclusionWindowSingleOccurrenceDateArgs
///                         {
///                             Year = 2024,
///                             Month = 3,
///                             Day = 16,
///                         },
///                     },
///                 },
///             },
///         },
///         BackupConfig = new Gcp.GkeBackup.Inputs.BackupPlanBackupConfigArgs
///         {
///             IncludeVolumeData = true,
///             IncludeSecrets = true,
///             AllNamespaces = true,
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
/// 			Name:             pulumi.String("rpo-daily-cluster"),
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
/// 		_, err = gkebackup.NewBackupPlan(ctx, "rpo_daily_window", &gkebackup.BackupPlanArgs{
/// 			Name:     pulumi.String("rpo-daily-window"),
/// 			Cluster:  primary.ID(),
/// 			Location: pulumi.String("us-central1"),
/// 			RetentionPolicy: &gkebackup.BackupPlanRetentionPolicyArgs{
/// 				BackupDeleteLockDays: pulumi.Int(30),
/// 				BackupRetainDays:     pulumi.Int(180),
/// 			},
/// 			BackupSchedule: &gkebackup.BackupPlanBackupScheduleArgs{
/// 				Paused: pulumi.Bool(true),
/// 				RpoConfig: &gkebackup.BackupPlanBackupScheduleRpoConfigArgs{
/// 					TargetRpoMinutes: pulumi.Int(1440),
/// 					ExclusionWindows: gkebackup.BackupPlanBackupScheduleRpoConfigExclusionWindowArray{
/// 						&gkebackup.BackupPlanBackupScheduleRpoConfigExclusionWindowArgs{
/// 							StartTime: &gkebackup.BackupPlanBackupScheduleRpoConfigExclusionWindowStartTimeArgs{
/// 								Hours: pulumi.Int(12),
/// 							},
/// 							Duration: pulumi.String("7200s"),
/// 							Daily:    pulumi.Bool(true),
/// 						},
/// 						&gkebackup.BackupPlanBackupScheduleRpoConfigExclusionWindowArgs{
/// 							StartTime: &gkebackup.BackupPlanBackupScheduleRpoConfigExclusionWindowStartTimeArgs{
/// 								Hours:   pulumi.Int(8),
/// 								Minutes: pulumi.Int(40),
/// 								Seconds: pulumi.Int(1),
/// 								Nanos:   pulumi.Int(100),
/// 							},
/// 							Duration: pulumi.String("3600s"),
/// 							SingleOccurrenceDate: &gkebackup.BackupPlanBackupScheduleRpoConfigExclusionWindowSingleOccurrenceDateArgs{
/// 								Year:  pulumi.Int(2024),
/// 								Month: pulumi.Int(3),
/// 								Day:   pulumi.Int(16),
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 			BackupConfig: &gkebackup.BackupPlanBackupConfigArgs{
/// 				IncludeVolumeData: pulumi.Bool(true),
/// 				IncludeSecrets:    pulumi.Bool(true),
/// 				AllNamespaces:     pulumi.Bool(true),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
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
/// import com.pulumi.gcp.gkebackup.inputs.BackupPlanRetentionPolicyArgs;
/// import com.pulumi.gcp.gkebackup.inputs.BackupPlanBackupScheduleArgs;
/// import com.pulumi.gcp.gkebackup.inputs.BackupPlanBackupScheduleRpoConfigArgs;
/// import com.pulumi.gcp.gkebackup.inputs.BackupPlanBackupConfigArgs;
/// import java.util.List;
/// import java.util.ArrayList;
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
///             .name("rpo-daily-cluster")
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
///         var rpoDailyWindow = new BackupPlan("rpoDailyWindow", BackupPlanArgs.builder()
///             .name("rpo-daily-window")
///             .cluster(primary.id())
///             .location("us-central1")
///             .retentionPolicy(BackupPlanRetentionPolicyArgs.builder()
///                 .backupDeleteLockDays(30)
///                 .backupRetainDays(180)
///                 .build())
///             .backupSchedule(BackupPlanBackupScheduleArgs.builder()
///                 .paused(true)
///                 .rpoConfig(BackupPlanBackupScheduleRpoConfigArgs.builder()
///                     .targetRpoMinutes(1440)
///                     .exclusionWindows(
///                         BackupPlanBackupScheduleRpoConfigExclusionWindowArgs.builder()
///                             .startTime(BackupPlanBackupScheduleRpoConfigExclusionWindowStartTimeArgs.builder()
///                                 .hours(12)
///                                 .build())
///                             .duration("7200s")
///                             .daily(true)
///                             .build(),
///                         BackupPlanBackupScheduleRpoConfigExclusionWindowArgs.builder()
///                             .startTime(BackupPlanBackupScheduleRpoConfigExclusionWindowStartTimeArgs.builder()
///                                 .hours(8)
///                                 .minutes(40)
///                                 .seconds(1)
///                                 .nanos(100)
///                                 .build())
///                             .duration("3600s")
///                             .singleOccurrenceDate(BackupPlanBackupScheduleRpoConfigExclusionWindowSingleOccurrenceDateArgs.builder()
///                                 .year(2024)
///                                 .month(3)
///                                 .day(16)
///                                 .build())
///                             .build())
///                     .build())
///                 .build())
///             .backupConfig(BackupPlanBackupConfigArgs.builder()
///                 .includeVolumeData(true)
///                 .includeSecrets(true)
///                 .allNamespaces(true)
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
///       name: rpo-daily-cluster
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
///   rpoDailyWindow:
///     type: gcp:gkebackup:BackupPlan
///     name: rpo_daily_window
///     properties:
///       name: rpo-daily-window
///       cluster: ${primary.id}
///       location: us-central1
///       retentionPolicy:
///         backupDeleteLockDays: 30
///         backupRetainDays: 180
///       backupSchedule:
///         paused: true
///         rpoConfig:
///           targetRpoMinutes: 1440
///           exclusionWindows:
///             - startTime:
///                 hours: 12
///               duration: 7200s
///               daily: true
///             - startTime:
///                 hours: 8
///                 minutes: 40
///                 seconds: 1
///                 nanos: 100
///               duration: 3600s
///               singleOccurrenceDate:
///                 year: 2024
///                 month: 3
///                 day: 16
///       backupConfig:
///         includeVolumeData: true
///         includeSecrets: true
///         allNamespaces: true
/// ```
///
/// ### Gkebackup Backupplan Rpo Weekly Window
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const primary = new gcp.container.Cluster("primary", {
///     name: "rpo-weekly-cluster",
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
/// const rpoWeeklyWindow = new gcp.gkebackup.BackupPlan("rpo_weekly_window", {
///     name: "rpo-weekly-window",
///     cluster: primary.id,
///     location: "us-central1",
///     retentionPolicy: {
///         backupDeleteLockDays: 30,
///         backupRetainDays: 180,
///     },
///     backupSchedule: {
///         paused: true,
///         rpoConfig: {
///             targetRpoMinutes: 1440,
///             exclusionWindows: [
///                 {
///                     startTime: {
///                         hours: 1,
///                         minutes: 23,
///                     },
///                     duration: "1800s",
///                     daysOfWeek: {
///                         daysOfWeeks: [
///                             "MONDAY",
///                             "THURSDAY",
///                         ],
///                     },
///                 },
///                 {
///                     startTime: {
///                         hours: 12,
///                     },
///                     duration: "3600s",
///                     singleOccurrenceDate: {
///                         year: 2024,
///                         month: 3,
///                         day: 17,
///                     },
///                 },
///                 {
///                     startTime: {
///                         hours: 8,
///                         minutes: 40,
///                     },
///                     duration: "600s",
///                     singleOccurrenceDate: {
///                         year: 2024,
///                         month: 3,
///                         day: 18,
///                     },
///                 },
///             ],
///         },
///     },
///     backupConfig: {
///         includeVolumeData: true,
///         includeSecrets: true,
///         allNamespaces: true,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// primary = gcp.container.Cluster("primary",
///     name="rpo-weekly-cluster",
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
/// rpo_weekly_window = gcp.gkebackup.BackupPlan("rpo_weekly_window",
///     name="rpo-weekly-window",
///     cluster=primary.id,
///     location="us-central1",
///     retention_policy={
///         "backup_delete_lock_days": 30,
///         "backup_retain_days": 180,
///     },
///     backup_schedule={
///         "paused": True,
///         "rpo_config": {
///             "target_rpo_minutes": 1440,
///             "exclusion_windows": [
///                 {
///                     "start_time": {
///                         "hours": 1,
///                         "minutes": 23,
///                     },
///                     "duration": "1800s",
///                     "days_of_week": {
///                         "days_of_weeks": [
///                             "MONDAY",
///                             "THURSDAY",
///                         ],
///                     },
///                 },
///                 {
///                     "start_time": {
///                         "hours": 12,
///                     },
///                     "duration": "3600s",
///                     "single_occurrence_date": {
///                         "year": 2024,
///                         "month": 3,
///                         "day": 17,
///                     },
///                 },
///                 {
///                     "start_time": {
///                         "hours": 8,
///                         "minutes": 40,
///                     },
///                     "duration": "600s",
///                     "single_occurrence_date": {
///                         "year": 2024,
///                         "month": 3,
///                         "day": 18,
///                     },
///                 },
///             ],
///         },
///     },
///     backup_config={
///         "include_volume_data": True,
///         "include_secrets": True,
///         "all_namespaces": True,
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
///         Name = "rpo-weekly-cluster",
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
///     var rpoWeeklyWindow = new Gcp.GkeBackup.BackupPlan("rpo_weekly_window", new()
///     {
///         Name = "rpo-weekly-window",
///         Cluster = primary.Id,
///         Location = "us-central1",
///         RetentionPolicy = new Gcp.GkeBackup.Inputs.BackupPlanRetentionPolicyArgs
///         {
///             BackupDeleteLockDays = 30,
///             BackupRetainDays = 180,
///         },
///         BackupSchedule = new Gcp.GkeBackup.Inputs.BackupPlanBackupScheduleArgs
///         {
///             Paused = true,
///             RpoConfig = new Gcp.GkeBackup.Inputs.BackupPlanBackupScheduleRpoConfigArgs
///             {
///                 TargetRpoMinutes = 1440,
///                 ExclusionWindows = new[]
///                 {
///                     new Gcp.GkeBackup.Inputs.BackupPlanBackupScheduleRpoConfigExclusionWindowArgs
///                     {
///                         StartTime = new Gcp.GkeBackup.Inputs.BackupPlanBackupScheduleRpoConfigExclusionWindowStartTimeArgs
///                         {
///                             Hours = 1,
///                             Minutes = 23,
///                         },
///                         Duration = "1800s",
///                         DaysOfWeek = new Gcp.GkeBackup.Inputs.BackupPlanBackupScheduleRpoConfigExclusionWindowDaysOfWeekArgs
///                         {
///                             DaysOfWeeks = new[]
///                             {
///                                 "MONDAY",
///                                 "THURSDAY",
///                             },
///                         },
///                     },
///                     new Gcp.GkeBackup.Inputs.BackupPlanBackupScheduleRpoConfigExclusionWindowArgs
///                     {
///                         StartTime = new Gcp.GkeBackup.Inputs.BackupPlanBackupScheduleRpoConfigExclusionWindowStartTimeArgs
///                         {
///                             Hours = 12,
///                         },
///                         Duration = "3600s",
///                         SingleOccurrenceDate = new Gcp.GkeBackup.Inputs.BackupPlanBackupScheduleRpoConfigExclusionWindowSingleOccurrenceDateArgs
///                         {
///                             Year = 2024,
///                             Month = 3,
///                             Day = 17,
///                         },
///                     },
///                     new Gcp.GkeBackup.Inputs.BackupPlanBackupScheduleRpoConfigExclusionWindowArgs
///                     {
///                         StartTime = new Gcp.GkeBackup.Inputs.BackupPlanBackupScheduleRpoConfigExclusionWindowStartTimeArgs
///                         {
///                             Hours = 8,
///                             Minutes = 40,
///                         },
///                         Duration = "600s",
///                         SingleOccurrenceDate = new Gcp.GkeBackup.Inputs.BackupPlanBackupScheduleRpoConfigExclusionWindowSingleOccurrenceDateArgs
///                         {
///                             Year = 2024,
///                             Month = 3,
///                             Day = 18,
///                         },
///                     },
///                 },
///             },
///         },
///         BackupConfig = new Gcp.GkeBackup.Inputs.BackupPlanBackupConfigArgs
///         {
///             IncludeVolumeData = true,
///             IncludeSecrets = true,
///             AllNamespaces = true,
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
/// 			Name:             pulumi.String("rpo-weekly-cluster"),
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
/// 		_, err = gkebackup.NewBackupPlan(ctx, "rpo_weekly_window", &gkebackup.BackupPlanArgs{
/// 			Name:     pulumi.String("rpo-weekly-window"),
/// 			Cluster:  primary.ID(),
/// 			Location: pulumi.String("us-central1"),
/// 			RetentionPolicy: &gkebackup.BackupPlanRetentionPolicyArgs{
/// 				BackupDeleteLockDays: pulumi.Int(30),
/// 				BackupRetainDays:     pulumi.Int(180),
/// 			},
/// 			BackupSchedule: &gkebackup.BackupPlanBackupScheduleArgs{
/// 				Paused: pulumi.Bool(true),
/// 				RpoConfig: &gkebackup.BackupPlanBackupScheduleRpoConfigArgs{
/// 					TargetRpoMinutes: pulumi.Int(1440),
/// 					ExclusionWindows: gkebackup.BackupPlanBackupScheduleRpoConfigExclusionWindowArray{
/// 						&gkebackup.BackupPlanBackupScheduleRpoConfigExclusionWindowArgs{
/// 							StartTime: &gkebackup.BackupPlanBackupScheduleRpoConfigExclusionWindowStartTimeArgs{
/// 								Hours:   pulumi.Int(1),
/// 								Minutes: pulumi.Int(23),
/// 							},
/// 							Duration: pulumi.String("1800s"),
/// 							DaysOfWeek: &gkebackup.BackupPlanBackupScheduleRpoConfigExclusionWindowDaysOfWeekArgs{
/// 								DaysOfWeeks: pulumi.StringArray{
/// 									pulumi.String("MONDAY"),
/// 									pulumi.String("THURSDAY"),
/// 								},
/// 							},
/// 						},
/// 						&gkebackup.BackupPlanBackupScheduleRpoConfigExclusionWindowArgs{
/// 							StartTime: &gkebackup.BackupPlanBackupScheduleRpoConfigExclusionWindowStartTimeArgs{
/// 								Hours: pulumi.Int(12),
/// 							},
/// 							Duration: pulumi.String("3600s"),
/// 							SingleOccurrenceDate: &gkebackup.BackupPlanBackupScheduleRpoConfigExclusionWindowSingleOccurrenceDateArgs{
/// 								Year:  pulumi.Int(2024),
/// 								Month: pulumi.Int(3),
/// 								Day:   pulumi.Int(17),
/// 							},
/// 						},
/// 						&gkebackup.BackupPlanBackupScheduleRpoConfigExclusionWindowArgs{
/// 							StartTime: &gkebackup.BackupPlanBackupScheduleRpoConfigExclusionWindowStartTimeArgs{
/// 								Hours:   pulumi.Int(8),
/// 								Minutes: pulumi.Int(40),
/// 							},
/// 							Duration: pulumi.String("600s"),
/// 							SingleOccurrenceDate: &gkebackup.BackupPlanBackupScheduleRpoConfigExclusionWindowSingleOccurrenceDateArgs{
/// 								Year:  pulumi.Int(2024),
/// 								Month: pulumi.Int(3),
/// 								Day:   pulumi.Int(18),
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 			BackupConfig: &gkebackup.BackupPlanBackupConfigArgs{
/// 				IncludeVolumeData: pulumi.Bool(true),
/// 				IncludeSecrets:    pulumi.Bool(true),
/// 				AllNamespaces:     pulumi.Bool(true),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
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
/// import com.pulumi.gcp.gkebackup.inputs.BackupPlanRetentionPolicyArgs;
/// import com.pulumi.gcp.gkebackup.inputs.BackupPlanBackupScheduleArgs;
/// import com.pulumi.gcp.gkebackup.inputs.BackupPlanBackupScheduleRpoConfigArgs;
/// import com.pulumi.gcp.gkebackup.inputs.BackupPlanBackupConfigArgs;
/// import java.util.List;
/// import java.util.ArrayList;
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
///             .name("rpo-weekly-cluster")
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
///         var rpoWeeklyWindow = new BackupPlan("rpoWeeklyWindow", BackupPlanArgs.builder()
///             .name("rpo-weekly-window")
///             .cluster(primary.id())
///             .location("us-central1")
///             .retentionPolicy(BackupPlanRetentionPolicyArgs.builder()
///                 .backupDeleteLockDays(30)
///                 .backupRetainDays(180)
///                 .build())
///             .backupSchedule(BackupPlanBackupScheduleArgs.builder()
///                 .paused(true)
///                 .rpoConfig(BackupPlanBackupScheduleRpoConfigArgs.builder()
///                     .targetRpoMinutes(1440)
///                     .exclusionWindows(
///                         BackupPlanBackupScheduleRpoConfigExclusionWindowArgs.builder()
///                             .startTime(BackupPlanBackupScheduleRpoConfigExclusionWindowStartTimeArgs.builder()
///                                 .hours(1)
///                                 .minutes(23)
///                                 .build())
///                             .duration("1800s")
///                             .daysOfWeek(BackupPlanBackupScheduleRpoConfigExclusionWindowDaysOfWeekArgs.builder()
///                                 .daysOfWeeks(
///                                     "MONDAY",
///                                     "THURSDAY")
///                                 .build())
///                             .build(),
///                         BackupPlanBackupScheduleRpoConfigExclusionWindowArgs.builder()
///                             .startTime(BackupPlanBackupScheduleRpoConfigExclusionWindowStartTimeArgs.builder()
///                                 .hours(12)
///                                 .build())
///                             .duration("3600s")
///                             .singleOccurrenceDate(BackupPlanBackupScheduleRpoConfigExclusionWindowSingleOccurrenceDateArgs.builder()
///                                 .year(2024)
///                                 .month(3)
///                                 .day(17)
///                                 .build())
///                             .build(),
///                         BackupPlanBackupScheduleRpoConfigExclusionWindowArgs.builder()
///                             .startTime(BackupPlanBackupScheduleRpoConfigExclusionWindowStartTimeArgs.builder()
///                                 .hours(8)
///                                 .minutes(40)
///                                 .build())
///                             .duration("600s")
///                             .singleOccurrenceDate(BackupPlanBackupScheduleRpoConfigExclusionWindowSingleOccurrenceDateArgs.builder()
///                                 .year(2024)
///                                 .month(3)
///                                 .day(18)
///                                 .build())
///                             .build())
///                     .build())
///                 .build())
///             .backupConfig(BackupPlanBackupConfigArgs.builder()
///                 .includeVolumeData(true)
///                 .includeSecrets(true)
///                 .allNamespaces(true)
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
///       name: rpo-weekly-cluster
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
///   rpoWeeklyWindow:
///     type: gcp:gkebackup:BackupPlan
///     name: rpo_weekly_window
///     properties:
///       name: rpo-weekly-window
///       cluster: ${primary.id}
///       location: us-central1
///       retentionPolicy:
///         backupDeleteLockDays: 30
///         backupRetainDays: 180
///       backupSchedule:
///         paused: true
///         rpoConfig:
///           targetRpoMinutes: 1440
///           exclusionWindows:
///             - startTime:
///                 hours: 1
///                 minutes: 23
///               duration: 1800s
///               daysOfWeek:
///                 daysOfWeeks:
///                   - MONDAY
///                   - THURSDAY
///             - startTime:
///                 hours: 12
///               duration: 3600s
///               singleOccurrenceDate:
///                 year: 2024
///                 month: 3
///                 day: 17
///             - startTime:
///                 hours: 8
///                 minutes: 40
///               duration: 600s
///               singleOccurrenceDate:
///                 year: 2024
///                 month: 3
///                 day: 18
///       backupConfig:
///         includeVolumeData: true
///         includeSecrets: true
///         allNamespaces: true
/// ```
///
///
/// ## Import
///
/// BackupPlan can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/backupPlans/{{name}}`
///
/// * `{{project}}/{{location}}/{{name}}`
///
/// * `{{location}}/{{name}}`
///
/// When using the `pulumi import` command, BackupPlan can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:gkebackup/backupPlan:BackupPlan default projects/{{project}}/locations/{{location}}/backupPlans/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:gkebackup/backupPlan:BackupPlan default {{project}}/{{location}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:gkebackup/backupPlan:BackupPlan default {{location}}/{{name}}
/// ```
class BackupPlan extends pulumi.CustomResource {
  /// Defines the configuration of Backups created via this BackupPlan.
  /// Structure is documented below.
  late final pulumi.Output<BackupPlanBackupConfig?> backupConfig;

  /// Defines a schedule for automatic Backup creation via this BackupPlan.
  /// Structure is documented below.
  late final pulumi.Output<BackupPlanBackupSchedule?> backupSchedule;

  /// The source cluster from which Backups will be created via this BackupPlan.
  late final pulumi.Output<String> cluster;

  /// This flag indicates whether this BackupPlan has been deactivated.
  /// Setting this field to True locks the BackupPlan such that no further updates will be allowed
  /// (except deletes), including the deactivated field itself. It also prevents any new Backups
  /// from being created via this BackupPlan (including scheduled Backups).
  late final pulumi.Output<bool> deactivated;

  /// User specified descriptive string for this BackupPlan.
  late final pulumi.Output<String?> description;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// etag is used for optimistic concurrency control as a way to help prevent simultaneous
  /// updates of a backup plan from overwriting each other. It is strongly suggested that
  /// systems make use of the 'etag' in the read-modify-write cycle to perform BackupPlan updates
  /// in order to avoid race conditions: An etag is returned in the response to backupPlans.get,
  /// and systems are expected to put that etag in the request to backupPlans.patch or
  /// backupPlans.delete to ensure that their change will be applied to the same version of the resource.
  late final pulumi.Output<String> etag;

  /// Description: A set of custom labels supplied by the user.
  /// A list of key-&gt;value pairs.
  /// Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// The region of the Backup Plan.
  late final pulumi.Output<String> location;

  /// The full name of the BackupPlan Resource.
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The number of Kubernetes Pods backed up in the last successful Backup created via this BackupPlan.
  late final pulumi.Output<int> protectedPodCount;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// RetentionPolicy governs lifecycle of Backups created under this plan.
  /// Structure is documented below.
  late final pulumi.Output<BackupPlanRetentionPolicy?> retentionPolicy;

  /// The State of the BackupPlan.
  late final pulumi.Output<String> state;

  /// Detailed description of why BackupPlan is in its current state.
  late final pulumi.Output<String> stateReason;

  /// Server generated, unique identifier of UUID format.
  late final pulumi.Output<String> uid;

  /// Creates a new [BackupPlan].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BackupPlan]. {@macro pulumi_gkebackup_backup_plan_backup_plan_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BackupPlan(
    String name, {
    BackupPlanArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:gkebackup/backupPlan:BackupPlan',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    backupConfig = registerOutput<BackupPlanBackupConfig?>('backupConfig');
    backupSchedule = registerOutput<BackupPlanBackupSchedule?>(
      'backupSchedule',
    );
    cluster = registerOutput<String>('cluster');
    deactivated = registerOutput<bool>('deactivated');
    description = registerOutput<String?>('description');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    etag = registerOutput<String>('etag');
    labels = registerOutput<Map<String, String>?>('labels');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    protectedPodCount = registerOutput<int>('protectedPodCount');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    retentionPolicy = registerOutput<BackupPlanRetentionPolicy?>(
      'retentionPolicy',
    );
    state = registerOutput<String>('state');
    stateReason = registerOutput<String>('stateReason');
    uid = registerOutput<String>('uid');
  }

  /// Gets an existing [BackupPlan] resource's state with the given [name] and [id].
  static BackupPlan get(
    String name,
    pulumi.Input<String> id, {
    BackupPlanState? state,
  }) {
    return BackupPlan._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  BackupPlan._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:gkebackup/backupPlan:BackupPlan',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    backupConfig = registerOutput<BackupPlanBackupConfig?>('backupConfig');
    backupSchedule = registerOutput<BackupPlanBackupSchedule?>(
      'backupSchedule',
    );
    cluster = registerOutput<String>('cluster');
    deactivated = registerOutput<bool>('deactivated');
    description = registerOutput<String?>('description');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    etag = registerOutput<String>('etag');
    labels = registerOutput<Map<String, String>?>('labels');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    protectedPodCount = registerOutput<int>('protectedPodCount');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    retentionPolicy = registerOutput<BackupPlanRetentionPolicy?>(
      'retentionPolicy',
    );
    this.state = registerOutput<String>('state');
    stateReason = registerOutput<String>('stateReason');
    uid = registerOutput<String>('uid');
  }
}
