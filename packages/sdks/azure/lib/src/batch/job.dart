import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_args.dart';
import 'job_state.dart';

/// Manages a Batch Job.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-rg",
///     location: "west europe",
/// });
/// const exampleAccount = new azure.batch.Account("example", {
///     name: "exampleaccount",
///     resourceGroupName: example.name,
///     location: example.location,
/// });
/// const examplePool = new azure.batch.Pool("example", {
///     name: "examplepool",
///     resourceGroupName: example.name,
///     accountName: exampleAccount.name,
///     nodeAgentSkuId: "batch.node.ubuntu 22.04",
///     vmSize: "STANDARD_A1_V2",
///     fixedScale: {
///         targetDedicatedNodes: 1,
///     },
///     storageImageReference: {
///         publisher: "Canonical",
///         offer: "0001-com-ubuntu-server-jammy",
///         sku: "22_04-lts",
///         version: "latest",
///     },
/// });
/// const exampleJob = new azure.batch.Job("example", {
///     name: "examplejob",
///     batchPoolId: examplePool.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-rg",
///     location="west europe")
/// example_account = azure.batch.Account("example",
///     name="exampleaccount",
///     resource_group_name=example.name,
///     location=example.location)
/// example_pool = azure.batch.Pool("example",
///     name="examplepool",
///     resource_group_name=example.name,
///     account_name=example_account.name,
///     node_agent_sku_id="batch.node.ubuntu 22.04",
///     vm_size="STANDARD_A1_V2",
///     fixed_scale={
///         "target_dedicated_nodes": 1,
///     },
///     storage_image_reference={
///         "publisher": "Canonical",
///         "offer": "0001-com-ubuntu-server-jammy",
///         "sku": "22_04-lts",
///         "version": "latest",
///     })
/// example_job = azure.batch.Job("example",
///     name="examplejob",
///     batch_pool_id=example_pool.id)
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
///         Name = "example-rg",
///         Location = "west europe",
///     });
///
///     var exampleAccount = new Azure.Batch.Account("example", new()
///     {
///         Name = "exampleaccount",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///     });
///
///     var examplePool = new Azure.Batch.Pool("example", new()
///     {
///         Name = "examplepool",
///         ResourceGroupName = example.Name,
///         AccountName = exampleAccount.Name,
///         NodeAgentSkuId = "batch.node.ubuntu 22.04",
///         VmSize = "STANDARD_A1_V2",
///         FixedScale = new Azure.Batch.Inputs.PoolFixedScaleArgs
///         {
///             TargetDedicatedNodes = 1,
///         },
///         StorageImageReference = new Azure.Batch.Inputs.PoolStorageImageReferenceArgs
///         {
///             Publisher = "Canonical",
///             Offer = "0001-com-ubuntu-server-jammy",
///             Sku = "22_04-lts",
///             Version = "latest",
///         },
///     });
///
///     var exampleJob = new Azure.Batch.Job("example", new()
///     {
///         Name = "examplejob",
///         BatchPoolId = examplePool.Id,
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
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-rg"),
/// 			Location: pulumi.String("west europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAccount, err := batch.NewAccount(ctx, "example", &batch.AccountArgs{
/// 			Name:              pulumi.String("exampleaccount"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		examplePool, err := batch.NewPool(ctx, "example", &batch.PoolArgs{
/// 			Name:              pulumi.String("examplepool"),
/// 			ResourceGroupName: example.Name,
/// 			AccountName:       exampleAccount.Name,
/// 			NodeAgentSkuId:    pulumi.String("batch.node.ubuntu 22.04"),
/// 			VmSize:            pulumi.String("STANDARD_A1_V2"),
/// 			FixedScale: &batch.PoolFixedScaleArgs{
/// 				TargetDedicatedNodes: pulumi.Int(1),
/// 			},
/// 			StorageImageReference: &batch.PoolStorageImageReferenceArgs{
/// 				Publisher: pulumi.String("Canonical"),
/// 				Offer:     pulumi.String("0001-com-ubuntu-server-jammy"),
/// 				Sku:       pulumi.String("22_04-lts"),
/// 				Version:   pulumi.String("latest"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = batch.NewJob(ctx, "example", &batch.JobArgs{
/// 			Name:        pulumi.String("examplejob"),
/// 			BatchPoolId: examplePool.ID(),
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
///   name     = "example-rg"
///   location = "west europe"
/// }
/// resource "azure_batch_account" "example" {
///   name                = "exampleaccount"
///   resource_group_name = azure_core_resourcegroup.example.name
///   location            = azure_core_resourcegroup.example.location
/// }
/// resource "azure_batch_pool" "example" {
///   name                = "examplepool"
///   resource_group_name = azure_core_resourcegroup.example.name
///   account_name        = azure_batch_account.example.name
///   node_agent_sku_id   = "batch.node.ubuntu 22.04"
///   vm_size             = "STANDARD_A1_V2"
///   fixed_scale = {
///     target_dedicated_nodes = 1
///   }
///   storage_image_reference = {
///     publisher = "Canonical"
///     offer     = "0001-com-ubuntu-server-jammy"
///     sku       = "22_04-lts"
///     version   = "latest"
///   }
/// }
/// resource "azure_batch_job" "example" {
///   name          = "examplejob"
///   batch_pool_id = azure_batch_pool.example.id
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
/// import com.pulumi.azure.batch.Account;
/// import com.pulumi.azure.batch.AccountArgs;
/// import com.pulumi.azure.batch.Pool;
/// import com.pulumi.azure.batch.PoolArgs;
/// import com.pulumi.azure.batch.inputs.PoolFixedScaleArgs;
/// import com.pulumi.azure.batch.inputs.PoolStorageImageReferenceArgs;
/// import com.pulumi.azure.batch.Job;
/// import com.pulumi.azure.batch.JobArgs;
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
///             .name("example-rg")
///             .location("west europe")
///             .build());
///
///         var exampleAccount = new Account("exampleAccount", AccountArgs.builder()
///             .name("exampleaccount")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .build());
///
///         var examplePool = new Pool("examplePool", PoolArgs.builder()
///             .name("examplepool")
///             .resourceGroupName(example.name())
///             .accountName(exampleAccount.name())
///             .nodeAgentSkuId("batch.node.ubuntu 22.04")
///             .vmSize("STANDARD_A1_V2")
///             .fixedScale(PoolFixedScaleArgs.builder()
///                 .targetDedicatedNodes(1)
///                 .build())
///             .storageImageReference(PoolStorageImageReferenceArgs.builder()
///                 .publisher("Canonical")
///                 .offer("0001-com-ubuntu-server-jammy")
///                 .sku("22_04-lts")
///                 .version("latest")
///                 .build())
///             .build());
///
///         var exampleJob = new Job("exampleJob", JobArgs.builder()
///             .name("examplejob")
///             .batchPoolId(examplePool.id())
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
///       name: example-rg
///       location: west europe
///   exampleAccount:
///     type: azure:batch:Account
///     name: example
///     properties:
///       name: exampleaccount
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///   examplePool:
///     type: azure:batch:Pool
///     name: example
///     properties:
///       name: examplepool
///       resourceGroupName: ${example.name}
///       accountName: ${exampleAccount.name}
///       nodeAgentSkuId: batch.node.ubuntu 22.04
///       vmSize: STANDARD_A1_V2
///       fixedScale:
///         targetDedicatedNodes: 1
///       storageImageReference:
///         publisher: Canonical
///         offer: 0001-com-ubuntu-server-jammy
///         sku: 22_04-lts
///         version: latest
///   exampleJob:
///     type: azure:batch:Job
///     name: example
///     properties:
///       name: examplejob
///       batchPoolId: ${examplePool.id}
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
/// Batch Jobs can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:batch/job:Job example /subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/resGroup1/providers/Microsoft.Batch/batchAccounts/account1/pools/pool1/jobs/job1
/// ```
class Job extends pulumi.CustomResource {
  /// The ID of the Batch Pool. Changing this forces a new Batch Job to be created.
  late final pulumi.Output<String> batchPoolId;
  /// Specifies a map of common environment settings applied to this Batch Job. Changing this forces a new Batch Job to be created.
  late final pulumi.Output<Map<String, String>?> commonEnvironmentProperties;
  /// The display name of this Batch Job. Changing this forces a new Batch Job to be created.
  late final pulumi.Output<String?> displayName;
  /// The name which should be used for this Batch Job. Changing this forces a new Batch Job to be created.
  late final pulumi.Output<String> name;
  /// The priority of this Batch Job, possible values can range from -1000 (lowest) to 1000 (highest). Defaults to `0`.
  late final pulumi.Output<int?> priority;
  /// The number of retries to each Batch Task belongs to this Batch Job. If this is set to `0`, the Batch service does not retry Tasks. If this is set to `-1`, the Batch service retries Batch Tasks without limit.
  late final pulumi.Output<int?> taskRetryMaximum;

  /// Creates a new [Job].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Job]. {@macro pulumi_batch_job_job_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Job(
    String name, {
    JobArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:batch/job:Job',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    batchPoolId = registerOutput<String>('batchPoolId');
    commonEnvironmentProperties = registerOutput<Map<String, String>?>('commonEnvironmentProperties');
    displayName = registerOutput<String?>('displayName');
    this.name = registerOutput<String>('name');
    priority = registerOutput<int?>('priority');
    taskRetryMaximum = registerOutput<int?>('taskRetryMaximum');
  }

  /// Gets an existing [Job] resource's state with the given [name] and [id].
  static Job get(
    String name,
    pulumi.Input<String> id, {
    JobState? state,
  }) {
    return Job._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Job._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:batch/job:Job',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    batchPoolId = registerOutput<String>('batchPoolId');
    commonEnvironmentProperties = registerOutput<Map<String, String>?>('commonEnvironmentProperties');
    displayName = registerOutput<String?>('displayName');
    this.name = registerOutput<String>('name');
    priority = registerOutput<int?>('priority');
    taskRetryMaximum = registerOutput<int?>('taskRetryMaximum');
  }
}
