import 'package:pulumi/pulumi.dart' as pulumi;
import 'pool_args.dart';
import 'pool_auto_scale.dart';
import 'pool_container_configuration.dart';
import 'pool_fixed_scale.dart';
import 'pool_identity.dart';
import 'pool_network_configuration.dart';
import 'pool_security_profile.dart';
import 'pool_start_task.dart';
import 'pool_state.dart';
import 'pool_storage_image_reference.dart';

/// Manages an Azure Batch pool.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "testaccbatch",
///     location: "West Europe",
/// });
/// const exampleAccount = new azure.storage.Account("example", {
///     name: "testaccsa",
///     resourceGroupName: example.name,
///     location: example.location,
///     accountTier: "Standard",
///     accountReplicationType: "LRS",
/// });
/// const exampleAccount2 = new azure.batch.Account("example", {
///     name: "testaccbatch",
///     resourceGroupName: example.name,
///     location: example.location,
///     poolAllocationMode: "BatchService",
///     storageAccountId: exampleAccount.id,
///     storageAccountAuthenticationMode: "StorageKeys",
///     tags: {
///         env: "test",
///     },
/// });
/// const examplePool = new azure.batch.Pool("example", {
///     name: "testaccpool",
///     resourceGroupName: example.name,
///     accountName: exampleAccount2.name,
///     displayName: "Test Acc Pool Auto",
///     vmSize: "STANDARD_A1_V2",
///     nodeAgentSkuId: "batch.node.ubuntu 20.04",
///     autoScale: {
///         evaluationInterval: "PT15M",
///         formula: `      startingNumberOfVMs = 1;
///       maxNumberofVMs = 25;
///       pendingTaskSamplePercent = PendingTasks.GetSamplePercent(180 * TimeInterval_Second);
///       pendingTaskSamples = pendingTaskSamplePercent < 70 ? startingNumberOfVMs : avg(PendingTasks.GetSample(180 *   TimeInterval_Second));
///       TargetDedicatedNodes=min(maxNumberofVMs, pendingTaskSamples);
/// `,
///     },
///     storageImageReference: {
///         publisher: "microsoft-azure-batch",
///         offer: "ubuntu-server-container",
///         sku: "20-04-lts",
///         version: "latest",
///     },
///     containerConfiguration: {
///         type: "DockerCompatible",
///         containerRegistries: [{
///             registryServer: "docker.io",
///             userName: "login",
///             password: "apassword",
///         }],
///     },
///     startTask: {
///         commandLine: "echo 'Hello World from $env'",
///         taskRetryMaximum: 1,
///         waitForSuccess: true,
///         commonEnvironmentProperties: {
///             env: "TEST",
///         },
///         userIdentity: {
///             autoUser: {
///                 elevationLevel: "NonAdmin",
///                 scope: "Task",
///             },
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="testaccbatch",
///     location="West Europe")
/// example_account = azure.storage.Account("example",
///     name="testaccsa",
///     resource_group_name=example.name,
///     location=example.location,
///     account_tier="Standard",
///     account_replication_type="LRS")
/// example_account2 = azure.batch.Account("example",
///     name="testaccbatch",
///     resource_group_name=example.name,
///     location=example.location,
///     pool_allocation_mode="BatchService",
///     storage_account_id=example_account.id,
///     storage_account_authentication_mode="StorageKeys",
///     tags={
///         "env": "test",
///     })
/// example_pool = azure.batch.Pool("example",
///     name="testaccpool",
///     resource_group_name=example.name,
///     account_name=example_account2.name,
///     display_name="Test Acc Pool Auto",
///     vm_size="STANDARD_A1_V2",
///     node_agent_sku_id="batch.node.ubuntu 20.04",
///     auto_scale={
///         "evaluation_interval": "PT15M",
///         "formula": """      startingNumberOfVMs = 1;
///       maxNumberofVMs = 25;
///       pendingTaskSamplePercent = $PendingTasks.GetSamplePercent(180 * TimeInterval_Second);
///       pendingTaskSamples = pendingTaskSamplePercent < 70 ? startingNumberOfVMs : avg($PendingTasks.GetSample(180 *   TimeInterval_Second));
///       $TargetDedicatedNodes=min(maxNumberofVMs, pendingTaskSamples);
/// """,
///     },
///     storage_image_reference={
///         "publisher": "microsoft-azure-batch",
///         "offer": "ubuntu-server-container",
///         "sku": "20-04-lts",
///         "version": "latest",
///     },
///     container_configuration={
///         "type": "DockerCompatible",
///         "container_registries": [{
///             "registry_server": "docker.io",
///             "user_name": "login",
///             "password": "apassword",
///         }],
///     },
///     start_task={
///         "command_line": "echo 'Hello World from $env'",
///         "task_retry_maximum": 1,
///         "wait_for_success": True,
///         "common_environment_properties": {
///             "env": "TEST",
///         },
///         "user_identity": {
///             "auto_user": {
///                 "elevation_level": "NonAdmin",
///                 "scope": "Task",
///             },
///         },
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "testaccbatch",
///         Location = "West Europe",
///     });
///
///     var exampleAccount = new Azure.Storage.Account("example", new()
///     {
///         Name = "testaccsa",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         AccountTier = "Standard",
///         AccountReplicationType = "LRS",
///     });
///
///     var exampleAccount2 = new Azure.Batch.Account("example", new()
///     {
///         Name = "testaccbatch",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         PoolAllocationMode = "BatchService",
///         StorageAccountId = exampleAccount.Id,
///         StorageAccountAuthenticationMode = "StorageKeys",
///         Tags =
///         {
///             { "env", "test" },
///         },
///     });
///
///     var examplePool = new Azure.Batch.Pool("example", new()
///     {
///         Name = "testaccpool",
///         ResourceGroupName = example.Name,
///         AccountName = exampleAccount2.Name,
///         DisplayName = "Test Acc Pool Auto",
///         VmSize = "STANDARD_A1_V2",
///         NodeAgentSkuId = "batch.node.ubuntu 20.04",
///         AutoScale = new Azure.Batch.Inputs.PoolAutoScaleArgs
///         {
///             EvaluationInterval = "PT15M",
///             Formula = @"      startingNumberOfVMs = 1;
///       maxNumberofVMs = 25;
///       pendingTaskSamplePercent = $PendingTasks.GetSamplePercent(180 * TimeInterval_Second);
///       pendingTaskSamples = pendingTaskSamplePercent < 70 ? startingNumberOfVMs : avg($PendingTasks.GetSample(180 *   TimeInterval_Second));
///       $TargetDedicatedNodes=min(maxNumberofVMs, pendingTaskSamples);
/// ",
///         },
///         StorageImageReference = new Azure.Batch.Inputs.PoolStorageImageReferenceArgs
///         {
///             Publisher = "microsoft-azure-batch",
///             Offer = "ubuntu-server-container",
///             Sku = "20-04-lts",
///             Version = "latest",
///         },
///         ContainerConfiguration = new Azure.Batch.Inputs.PoolContainerConfigurationArgs
///         {
///             Type = "DockerCompatible",
///             ContainerRegistries = new[]
///             {
///                 new Azure.Batch.Inputs.PoolContainerConfigurationContainerRegistryArgs
///                 {
///                     RegistryServer = "docker.io",
///                     UserName = "login",
///                     Password = "apassword",
///                 },
///             },
///         },
///         StartTask = new Azure.Batch.Inputs.PoolStartTaskArgs
///         {
///             CommandLine = "echo 'Hello World from $env'",
///             TaskRetryMaximum = 1,
///             WaitForSuccess = true,
///             CommonEnvironmentProperties =
///             {
///                 { "env", "TEST" },
///             },
///             UserIdentity = new Azure.Batch.Inputs.PoolStartTaskUserIdentityArgs
///             {
///                 AutoUser = new Azure.Batch.Inputs.PoolStartTaskUserIdentityAutoUserArgs
///                 {
///                     ElevationLevel = "NonAdmin",
///                     Scope = "Task",
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/batch"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("testaccbatch"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAccount, err := storage.NewAccount(ctx, "example", &storage.AccountArgs{
/// 			Name:                   pulumi.String("testaccsa"),
/// 			ResourceGroupName:      example.Name,
/// 			Location:               example.Location,
/// 			AccountTier:            pulumi.String("Standard"),
/// 			AccountReplicationType: pulumi.String("LRS"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAccount2, err := batch.NewAccount(ctx, "example", &batch.AccountArgs{
/// 			Name:                             pulumi.String("testaccbatch"),
/// 			ResourceGroupName:                example.Name,
/// 			Location:                         example.Location,
/// 			PoolAllocationMode:               pulumi.String("BatchService"),
/// 			StorageAccountId:                 exampleAccount.ID(),
/// 			StorageAccountAuthenticationMode: pulumi.String("StorageKeys"),
/// 			Tags: pulumi.StringMap{
/// 				"env": pulumi.String("test"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = batch.NewPool(ctx, "example", &batch.PoolArgs{
/// 			Name:              pulumi.String("testaccpool"),
/// 			ResourceGroupName: example.Name,
/// 			AccountName:       exampleAccount2.Name,
/// 			DisplayName:       pulumi.String("Test Acc Pool Auto"),
/// 			VmSize:            pulumi.String("STANDARD_A1_V2"),
/// 			NodeAgentSkuId:    pulumi.String("batch.node.ubuntu 20.04"),
/// 			AutoScale: &batch.PoolAutoScaleArgs{
/// 				EvaluationInterval: pulumi.String("PT15M"),
/// 				Formula: pulumi.String(`      startingNumberOfVMs = 1;
///       maxNumberofVMs = 25;
///       pendingTaskSamplePercent = $PendingTasks.GetSamplePercent(180 * TimeInterval_Second);
///       pendingTaskSamples = pendingTaskSamplePercent < 70 ? startingNumberOfVMs : avg($PendingTasks.GetSample(180 *   TimeInterval_Second));
///       $TargetDedicatedNodes=min(maxNumberofVMs, pendingTaskSamples);
/// `),
/// 			},
/// 			StorageImageReference: &batch.PoolStorageImageReferenceArgs{
/// 				Publisher: pulumi.String("microsoft-azure-batch"),
/// 				Offer:     pulumi.String("ubuntu-server-container"),
/// 				Sku:       pulumi.String("20-04-lts"),
/// 				Version:   pulumi.String("latest"),
/// 			},
/// 			ContainerConfiguration: &batch.PoolContainerConfigurationArgs{
/// 				Type: pulumi.String("DockerCompatible"),
/// 				ContainerRegistries: batch.PoolContainerConfigurationContainerRegistryArray{
/// 					&batch.PoolContainerConfigurationContainerRegistryArgs{
/// 						RegistryServer: pulumi.String("docker.io"),
/// 						UserName:       pulumi.String("login"),
/// 						Password:       pulumi.String("apassword"),
/// 					},
/// 				},
/// 			},
/// 			StartTask: &batch.PoolStartTaskArgs{
/// 				CommandLine:      pulumi.String("echo 'Hello World from $env'"),
/// 				TaskRetryMaximum: pulumi.Int(1),
/// 				WaitForSuccess:   pulumi.Bool(true),
/// 				CommonEnvironmentProperties: pulumi.StringMap{
/// 					"env": pulumi.String("TEST"),
/// 				},
/// 				UserIdentity: &batch.PoolStartTaskUserIdentityArgs{
/// 					AutoUser: &batch.PoolStartTaskUserIdentityAutoUserArgs{
/// 						ElevationLevel: pulumi.String("NonAdmin"),
/// 						Scope:          pulumi.String("Task"),
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
///     azure = {
///       source = "pulumi/azure"
///     }
///   }
/// }
///
/// resource "azure_core_resourcegroup" "example" {
///   name     = "testaccbatch"
///   location = "West Europe"
/// }
/// resource "azure_storage_account" "example" {
///   name                     = "testaccsa"
///   resource_group_name      = azure_core_resourcegroup.example.name
///   location                 = azure_core_resourcegroup.example.location
///   account_tier             = "Standard"
///   account_replication_type = "LRS"
/// }
/// resource "azure_batch_account" "example" {
///   name                                = "testaccbatch"
///   resource_group_name                 = azure_core_resourcegroup.example.name
///   location                            = azure_core_resourcegroup.example.location
///   pool_allocation_mode                = "BatchService"
///   storage_account_id                  = azure_storage_account.example.id
///   storage_account_authentication_mode = "StorageKeys"
///   tags = {
///     "env" = "test"
///   }
/// }
/// resource "azure_batch_pool" "example" {
///   name                = "testaccpool"
///   resource_group_name = azure_core_resourcegroup.example.name
///   account_name        = azure_batch_account.example.name
///   display_name        = "Test Acc Pool Auto"
///   vm_size             = "STANDARD_A1_V2"
///   node_agent_sku_id   = "batch.node.ubuntu 20.04"
///   auto_scale = {
///     evaluation_interval = "PT15M"
///     formula             = "      startingNumberOfVMs = 1;\n      maxNumberofVMs = 25;\n      pendingTaskSamplePercent = $PendingTasks.GetSamplePercent(180 * TimeInterval_Second);\n      pendingTaskSamples = pendingTaskSamplePercent < 70 ? startingNumberOfVMs : avg($PendingTasks.GetSample(180 *   TimeInterval_Second));\n      $TargetDedicatedNodes=min(maxNumberofVMs, pendingTaskSamples);\n"
///   }
///   storage_image_reference = {
///     publisher = "microsoft-azure-batch"
///     offer     = "ubuntu-server-container"
///     sku       = "20-04-lts"
///     version   = "latest"
///   }
///   container_configuration = {
///     type = "DockerCompatible"
///     container_registries = [{
///       "registryServer" = "docker.io"
///       "userName"       = "login"
///       "password"       = "apassword"
///     }]
///   }
///   start_task = {
///     command_line       = "echo 'Hello World from $env'"
///     task_retry_maximum = 1
///     wait_for_success   = true
///     common_environment_properties = {
///       "env" = "TEST"
///     }
///     user_identity = {
///       auto_user = {
///         elevation_level = "NonAdmin"
///         scope           = "Task"
///       }
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
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.batch.Pool;
/// import com.pulumi.azure.batch.PoolArgs;
/// import com.pulumi.azure.batch.inputs.PoolAutoScaleArgs;
/// import com.pulumi.azure.batch.inputs.PoolStorageImageReferenceArgs;
/// import com.pulumi.azure.batch.inputs.PoolContainerConfigurationArgs;
/// import com.pulumi.azure.batch.inputs.PoolContainerConfigurationContainerRegistryArgs;
/// import com.pulumi.azure.batch.inputs.PoolStartTaskArgs;
/// import com.pulumi.azure.batch.inputs.PoolStartTaskUserIdentityArgs;
/// import com.pulumi.azure.batch.inputs.PoolStartTaskUserIdentityAutoUserArgs;
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
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("testaccbatch")
///             .location("West Europe")
///             .build());
///
///         var exampleAccount = new com.pulumi.azure.storage.Account("exampleAccount", com.pulumi.azure.storage.AccountArgs.builder()
///             .name("testaccsa")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .accountTier("Standard")
///             .accountReplicationType("LRS")
///             .build());
///
///         var exampleAccount2 = new com.pulumi.azure.batch.Account("exampleAccount2", com.pulumi.azure.batch.AccountArgs.builder()
///             .name("testaccbatch")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .poolAllocationMode("BatchService")
///             .storageAccountId(exampleAccount.id())
///             .storageAccountAuthenticationMode("StorageKeys")
///             .tags(Map.of("env", "test"))
///             .build());
///
///         var examplePool = new Pool("examplePool", PoolArgs.builder()
///             .name("testaccpool")
///             .resourceGroupName(example.name())
///             .accountName(exampleAccount2.name())
///             .displayName("Test Acc Pool Auto")
///             .vmSize("STANDARD_A1_V2")
///             .nodeAgentSkuId("batch.node.ubuntu 20.04")
///             .autoScale(PoolAutoScaleArgs.builder()
///                 .evaluationInterval("PT15M")
///                 .formula("""
///       startingNumberOfVMs = 1;
///       maxNumberofVMs = 25;
///       pendingTaskSamplePercent = $PendingTasks.GetSamplePercent(180 * TimeInterval_Second);
///       pendingTaskSamples = pendingTaskSamplePercent < 70 ? startingNumberOfVMs : avg($PendingTasks.GetSample(180 *   TimeInterval_Second));
///       $TargetDedicatedNodes=min(maxNumberofVMs, pendingTaskSamples);
///                 """)
///                 .build())
///             .storageImageReference(PoolStorageImageReferenceArgs.builder()
///                 .publisher("microsoft-azure-batch")
///                 .offer("ubuntu-server-container")
///                 .sku("20-04-lts")
///                 .version("latest")
///                 .build())
///             .containerConfiguration(PoolContainerConfigurationArgs.builder()
///                 .type("DockerCompatible")
///                 .containerRegistries(PoolContainerConfigurationContainerRegistryArgs.builder()
///                     .registryServer("docker.io")
///                     .userName("login")
///                     .password("apassword")
///                     .build())
///                 .build())
///             .startTask(PoolStartTaskArgs.builder()
///                 .commandLine("echo 'Hello World from $env'")
///                 .taskRetryMaximum(1)
///                 .waitForSuccess(true)
///                 .commonEnvironmentProperties(Map.of("env", "TEST"))
///                 .userIdentity(PoolStartTaskUserIdentityArgs.builder()
///                     .autoUser(PoolStartTaskUserIdentityAutoUserArgs.builder()
///                         .elevationLevel("NonAdmin")
///                         .scope("Task")
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
///   example:
///     type: azure:core:ResourceGroup
///     properties:
///       name: testaccbatch
///       location: West Europe
///   exampleAccount:
///     type: azure:storage:Account
///     name: example
///     properties:
///       name: testaccsa
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       accountTier: Standard
///       accountReplicationType: LRS
///   exampleAccount2:
///     type: azure:batch:Account
///     name: example
///     properties:
///       name: testaccbatch
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       poolAllocationMode: BatchService
///       storageAccountId: ${exampleAccount.id}
///       storageAccountAuthenticationMode: StorageKeys
///       tags:
///         env: test
///   examplePool:
///     type: azure:batch:Pool
///     name: example
///     properties:
///       name: testaccpool
///       resourceGroupName: ${example.name}
///       accountName: ${exampleAccount2.name}
///       displayName: Test Acc Pool Auto
///       vmSize: STANDARD_A1_V2
///       nodeAgentSkuId: batch.node.ubuntu 20.04
///       autoScale:
///         evaluationInterval: PT15M
///         formula: |2
///                 startingNumberOfVMs = 1;
///                 maxNumberofVMs = 25;
///                 pendingTaskSamplePercent = $PendingTasks.GetSamplePercent(180 * TimeInterval_Second);
///                 pendingTaskSamples = pendingTaskSamplePercent < 70 ? startingNumberOfVMs : avg($PendingTasks.GetSample(180 *   TimeInterval_Second));
///                 $TargetDedicatedNodes=min(maxNumberofVMs, pendingTaskSamples);
///       storageImageReference:
///         publisher: microsoft-azure-batch
///         offer: ubuntu-server-container
///         sku: 20-04-lts
///         version: latest
///       containerConfiguration:
///         type: DockerCompatible
///         containerRegistries:
///           - registryServer: docker.io
///             userName: login
///             password: apassword
///       startTask:
///         commandLine: echo 'Hello World from $env'
///         taskRetryMaximum: 1
///         waitForSuccess: true
///         commonEnvironmentProperties:
///           env: TEST
///         userIdentity:
///           autoUser:
///             elevationLevel: NonAdmin
///             scope: Task
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Batch` - 2024-07-01
///
/// ## Import
///
/// Batch Pools can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:batch/pool:Pool example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myGroup1/providers/Microsoft.Batch/batchAccounts/myBatchAccount1/pools/myBatchPool1
/// ```
class Pool extends pulumi.CustomResource {
  /// Specifies the name of the Batch account in which the pool will be created. Changing this forces a new resource to be created.
  late final pulumi.Output<String> accountName;
  /// A `autoScale` block that describes the scale settings when using auto scale as defined below.
  ///
  /// &gt; **Note:** `fixedScale` and `autoScale` blocks cannot be used both at the same time.
  late final pulumi.Output<PoolAutoScale?> autoScale;
  late final pulumi.Output<List<Map<String, dynamic>>?> certificates;
  /// The container configuration used in the pool's VMs. One `containerConfiguration` block as defined below.
  late final pulumi.Output<PoolContainerConfiguration?> containerConfiguration;
  /// A `dataDisks` block describes the data disk settings as defined below.
  late final pulumi.Output<List<Map<String, dynamic>>?> dataDisks;
  /// A `diskEncryption` block, as defined below, describes the disk encryption configuration applied on compute nodes in the pool. Disk encryption configuration is not supported on Linux pool created with Virtual Machine Image or Shared Image Gallery Image.
  late final pulumi.Output<List<Map<String, dynamic>>?> diskEncryptions;
  /// Specifies the display name of the Batch pool. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> displayName;
  /// An `extensions` block as defined below.
  late final pulumi.Output<List<Map<String, dynamic>>?> extensions;
  /// A `fixedScale` block that describes the scale settings when using fixed scale as defined below.
  late final pulumi.Output<PoolFixedScale?> fixedScale;
  /// An `identity` block as defined below.
  late final pulumi.Output<PoolIdentity?> identity;
  /// Whether the pool permits direct communication between nodes. This imposes restrictions on which nodes can be assigned to the pool. Enabling this value can reduce the chance of the requested number of nodes to be allocated in the pool. Values allowed are `Disabled` and `Enabled`. Defaults to `Enabled`.
  late final pulumi.Output<String?> interNodeCommunication;
  /// The type of on-premises license to be used when deploying the operating system. This only applies to images that contain the Windows operating system, and should only be used when you hold valid on-premises licenses for the nodes which will be deployed. If omitted, no on-premises licensing discount is applied. Values are: "Windows_Server" - The on-premises license is for Windows Server. "Windows_Client" - The on-premises license is for Windows Client.
  late final pulumi.Output<String?> licenseType;
  /// Specifies the maximum number of tasks that can run concurrently on a single compute node in the pool. Defaults to `1`. Changing this forces a new resource to be created.
  late final pulumi.Output<int?> maxTasksPerNode;
  /// A map of custom batch pool metadata.
  late final pulumi.Output<Map<String, String>?> metadata;
  /// A `mount` block defined as below.
  late final pulumi.Output<List<Map<String, dynamic>>?> mounts;
  /// Specifies the name of the Batch pool. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// A `networkConfiguration` block that describes the network configurations for the Batch pool as defined below. Changing this forces a new resource to be created.
  late final pulumi.Output<PoolNetworkConfiguration?> networkConfiguration;
  /// Specifies the SKU of the node agents that will be created in the Batch pool. Changing this forces a new resource to be created.
  late final pulumi.Output<String> nodeAgentSkuId;
  /// A `nodePlacement` block that describes the placement policy for allocating nodes in the pool as defined below.
  late final pulumi.Output<List<Map<String, dynamic>>?> nodePlacements;
  /// Specifies the ephemeral disk placement for operating system disk for all VMs in the pool. This property can be used by user in the request to choose which location the operating system should be in. e.g., cache disk space for Ephemeral OS disk provisioning. For more information on Ephemeral OS disk size requirements, please refer to Ephemeral OS disk size requirements for Windows VMs at &lt;https://docs.microsoft.com/en-us/azure/virtual-machines/windows/ephemeral-os-disks#size-requirements&gt; and Linux VMs at &lt;https://docs.microsoft.com/en-us/azure/virtual-machines/linux/ephemeral-os-disks#size-requirements&gt;. The only possible value is `CacheDisk`.
  late final pulumi.Output<String?> osDiskPlacement;
  /// The name of the resource group in which to create the Batch pool. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// A `securityProfile` block that describes the security settings for the Batch pool as defined below. Changing this forces a new resource to be created.
  late final pulumi.Output<PoolSecurityProfile?> securityProfile;
  /// A `startTask` block that describes the start task settings for the Batch pool as defined below.
  late final pulumi.Output<PoolStartTask?> startTask;
  /// Whether to stop if there is a pending resize operation on this pool.
  late final pulumi.Output<bool?> stopPendingResizeOperation;
  /// A `storageImageReference` block for the virtual machines that will compose the Batch pool as defined below. Changing this forces a new resource to be created.
  late final pulumi.Output<PoolStorageImageReference> storageImageReference;
  /// The desired node communication mode for the pool. Possible values are `Classic`, `Default` and `Simplified`.
  late final pulumi.Output<String?> targetNodeCommunicationMode;
  /// A `taskSchedulingPolicy` block that describes how tasks are distributed across compute nodes in a pool as defined below. If not specified, the default is spread as defined below.
  late final pulumi.Output<List<Map<String, dynamic>>> taskSchedulingPolicies;
  /// A `userAccounts` block that describes the list of user accounts to be created on each node in the pool as defined below.
  late final pulumi.Output<List<Map<String, dynamic>>?> userAccounts;
  /// Specifies the size of the VM created in the Batch pool. Changing this forces a new resource to be created.
  late final pulumi.Output<String> vmSize;
  /// A `windows` block that describes the Windows configuration in the pool as defined below.
  late final pulumi.Output<List<Map<String, dynamic>>?> windows;

  /// Creates a new [Pool].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Pool]. {@macro pulumi_batch_pool_pool_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Pool(
    String name, {
    PoolArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:batch/pool:Pool',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountName = registerOutput<String>('accountName');
    autoScale = registerOutput<PoolAutoScale?>('autoScale', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PoolAutoScale.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    certificates = registerOutput<List<Map<String, dynamic>>?>('certificates');
    containerConfiguration = registerOutput<PoolContainerConfiguration?>('containerConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PoolContainerConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    dataDisks = registerOutput<List<Map<String, dynamic>>?>('dataDisks');
    diskEncryptions = registerOutput<List<Map<String, dynamic>>?>('diskEncryptions');
    displayName = registerOutput<String?>('displayName');
    extensions = registerOutput<List<Map<String, dynamic>>?>('extensions');
    fixedScale = registerOutput<PoolFixedScale?>('fixedScale', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PoolFixedScale.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    identity = registerOutput<PoolIdentity?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PoolIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    interNodeCommunication = registerOutput<String?>('interNodeCommunication');
    licenseType = registerOutput<String?>('licenseType');
    maxTasksPerNode = registerOutput<int?>('maxTasksPerNode');
    metadata = registerOutput<Map<String, String>?>('metadata');
    mounts = registerOutput<List<Map<String, dynamic>>?>('mounts');
    this.name = registerOutput<String>('name');
    networkConfiguration = registerOutput<PoolNetworkConfiguration?>('networkConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PoolNetworkConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    nodeAgentSkuId = registerOutput<String>('nodeAgentSkuId');
    nodePlacements = registerOutput<List<Map<String, dynamic>>?>('nodePlacements');
    osDiskPlacement = registerOutput<String?>('osDiskPlacement');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    securityProfile = registerOutput<PoolSecurityProfile?>('securityProfile', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PoolSecurityProfile.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    startTask = registerOutput<PoolStartTask?>('startTask', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PoolStartTask.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    stopPendingResizeOperation = registerOutput<bool?>('stopPendingResizeOperation');
    storageImageReference = registerOutput<PoolStorageImageReference>('storageImageReference', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PoolStorageImageReference.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    targetNodeCommunicationMode = registerOutput<String?>('targetNodeCommunicationMode');
    taskSchedulingPolicies = registerOutput<List<Map<String, dynamic>>>('taskSchedulingPolicies');
    userAccounts = registerOutput<List<Map<String, dynamic>>?>('userAccounts');
    vmSize = registerOutput<String>('vmSize');
    windows = registerOutput<List<Map<String, dynamic>>?>('windows');
  }

  /// Gets an existing [Pool] resource's state with the given [name] and [id].
  static Pool get(
    String name,
    pulumi.Input<String> id, {
    PoolState? state,
  }) {
    return Pool._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Pool._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:batch/pool:Pool',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountName = registerOutput<String>('accountName');
    autoScale = registerOutput<PoolAutoScale?>('autoScale', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PoolAutoScale.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    certificates = registerOutput<List<Map<String, dynamic>>?>('certificates');
    containerConfiguration = registerOutput<PoolContainerConfiguration?>('containerConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PoolContainerConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    dataDisks = registerOutput<List<Map<String, dynamic>>?>('dataDisks');
    diskEncryptions = registerOutput<List<Map<String, dynamic>>?>('diskEncryptions');
    displayName = registerOutput<String?>('displayName');
    extensions = registerOutput<List<Map<String, dynamic>>?>('extensions');
    fixedScale = registerOutput<PoolFixedScale?>('fixedScale', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PoolFixedScale.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    identity = registerOutput<PoolIdentity?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PoolIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    interNodeCommunication = registerOutput<String?>('interNodeCommunication');
    licenseType = registerOutput<String?>('licenseType');
    maxTasksPerNode = registerOutput<int?>('maxTasksPerNode');
    metadata = registerOutput<Map<String, String>?>('metadata');
    mounts = registerOutput<List<Map<String, dynamic>>?>('mounts');
    this.name = registerOutput<String>('name');
    networkConfiguration = registerOutput<PoolNetworkConfiguration?>('networkConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PoolNetworkConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    nodeAgentSkuId = registerOutput<String>('nodeAgentSkuId');
    nodePlacements = registerOutput<List<Map<String, dynamic>>?>('nodePlacements');
    osDiskPlacement = registerOutput<String?>('osDiskPlacement');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    securityProfile = registerOutput<PoolSecurityProfile?>('securityProfile', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PoolSecurityProfile.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    startTask = registerOutput<PoolStartTask?>('startTask', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PoolStartTask.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    stopPendingResizeOperation = registerOutput<bool?>('stopPendingResizeOperation');
    storageImageReference = registerOutput<PoolStorageImageReference>('storageImageReference', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PoolStorageImageReference.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    targetNodeCommunicationMode = registerOutput<String?>('targetNodeCommunicationMode');
    taskSchedulingPolicies = registerOutput<List<Map<String, dynamic>>>('taskSchedulingPolicies');
    userAccounts = registerOutput<List<Map<String, dynamic>>?>('userAccounts');
    vmSize = registerOutput<String>('vmSize');
    windows = registerOutput<List<Map<String, dynamic>>?>('windows');
  }
}
