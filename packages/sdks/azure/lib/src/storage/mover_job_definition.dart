import 'package:pulumi/pulumi.dart' as pulumi;
import 'mover_job_definition_args.dart';
import 'mover_job_definition_state.dart';

/// Manages a Storage Mover Job Definition.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-resources",
///     location: "West Europe",
/// });
/// const exampleMover = new azure.storage.Mover("example", {
///     name: "example-ssm",
///     resourceGroupName: example.name,
///     location: example.location,
/// });
/// const exampleMoverAgent = new azure.storage.MoverAgent("example", {
///     name: "example-agent",
///     storageMoverId: exampleMover.id,
///     arcVirtualMachineId: pulumi.interpolate`${example.id}/providers/Microsoft.HybridCompute/machines/examples-hybridComputeName`,
///     arcVirtualMachineUuid: "3bb2c024-eba9-4d18-9e7a-1d772fcc5fe9",
/// });
/// const exampleAccount = new azure.storage.Account("example", {
///     name: "examplesa",
///     resourceGroupName: example.name,
///     location: example.location,
///     accountTier: "Standard",
///     accountReplicationType: "LRS",
///     allowNestedItemsToBePublic: true,
/// });
/// const exampleContainer = new azure.storage.Container("example", {
///     name: "acccontainer",
///     storageAccountName: exampleAccount.name,
///     containerAccessType: "blob",
/// });
/// const exampleMoverTargetEndpoint = new azure.storage.MoverTargetEndpoint("example", {
///     name: "example-smte",
///     storageMoverId: exampleMover.id,
///     storageAccountId: exampleAccount.id,
///     storageContainerName: exampleContainer.name,
/// });
/// const exampleMoverSourceEndpoint = new azure.storage.MoverSourceEndpoint("example", {
///     name: "example-smse",
///     storageMoverId: exampleMover.id,
///     host: "192.168.0.1",
/// });
/// const exampleMoverProject = new azure.storage.MoverProject("example", {
///     name: "example-sp",
///     storageMoverId: exampleMover.id,
/// });
/// const exampleMoverJobDefinition = new azure.storage.MoverJobDefinition("example", {
///     name: "example-sjd",
///     storageMoverProjectId: exampleMoverProject.id,
///     agentName: exampleMoverAgent.name,
///     copyMode: "Additive",
///     sourceName: exampleMoverSourceEndpoint.name,
///     sourceSubPath: "/",
///     targetName: exampleMoverTargetEndpoint.name,
///     targetSubPath: "/",
///     description: "Example Job Definition Description",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_mover = azure.storage.Mover("example",
///     name="example-ssm",
///     resource_group_name=example.name,
///     location=example.location)
/// example_mover_agent = azure.storage.MoverAgent("example",
///     name="example-agent",
///     storage_mover_id=example_mover.id,
///     arc_virtual_machine_id=example.id.apply(lambda id: f"{id}/providers/Microsoft.HybridCompute/machines/examples-hybridComputeName"),
///     arc_virtual_machine_uuid="3bb2c024-eba9-4d18-9e7a-1d772fcc5fe9")
/// example_account = azure.storage.Account("example",
///     name="examplesa",
///     resource_group_name=example.name,
///     location=example.location,
///     account_tier="Standard",
///     account_replication_type="LRS",
///     allow_nested_items_to_be_public=True)
/// example_container = azure.storage.Container("example",
///     name="acccontainer",
///     storage_account_name=example_account.name,
///     container_access_type="blob")
/// example_mover_target_endpoint = azure.storage.MoverTargetEndpoint("example",
///     name="example-smte",
///     storage_mover_id=example_mover.id,
///     storage_account_id=example_account.id,
///     storage_container_name=example_container.name)
/// example_mover_source_endpoint = azure.storage.MoverSourceEndpoint("example",
///     name="example-smse",
///     storage_mover_id=example_mover.id,
///     host="192.168.0.1")
/// example_mover_project = azure.storage.MoverProject("example",
///     name="example-sp",
///     storage_mover_id=example_mover.id)
/// example_mover_job_definition = azure.storage.MoverJobDefinition("example",
///     name="example-sjd",
///     storage_mover_project_id=example_mover_project.id,
///     agent_name=example_mover_agent.name,
///     copy_mode="Additive",
///     source_name=example_mover_source_endpoint.name,
///     source_sub_path="/",
///     target_name=example_mover_target_endpoint.name,
///     target_sub_path="/",
///     description="Example Job Definition Description")
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
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var exampleMover = new Azure.Storage.Mover("example", new()
///     {
///         Name = "example-ssm",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///     });
///
///     var exampleMoverAgent = new Azure.Storage.MoverAgent("example", new()
///     {
///         Name = "example-agent",
///         StorageMoverId = exampleMover.Id,
///         ArcVirtualMachineId = example.Id.Apply(id => $"{id}/providers/Microsoft.HybridCompute/machines/examples-hybridComputeName"),
///         ArcVirtualMachineUuid = "3bb2c024-eba9-4d18-9e7a-1d772fcc5fe9",
///     });
///
///     var exampleAccount = new Azure.Storage.Account("example", new()
///     {
///         Name = "examplesa",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         AccountTier = "Standard",
///         AccountReplicationType = "LRS",
///         AllowNestedItemsToBePublic = true,
///     });
///
///     var exampleContainer = new Azure.Storage.Container("example", new()
///     {
///         Name = "acccontainer",
///         StorageAccountName = exampleAccount.Name,
///         ContainerAccessType = "blob",
///     });
///
///     var exampleMoverTargetEndpoint = new Azure.Storage.MoverTargetEndpoint("example", new()
///     {
///         Name = "example-smte",
///         StorageMoverId = exampleMover.Id,
///         StorageAccountId = exampleAccount.Id,
///         StorageContainerName = exampleContainer.Name,
///     });
///
///     var exampleMoverSourceEndpoint = new Azure.Storage.MoverSourceEndpoint("example", new()
///     {
///         Name = "example-smse",
///         StorageMoverId = exampleMover.Id,
///         Host = "192.168.0.1",
///     });
///
///     var exampleMoverProject = new Azure.Storage.MoverProject("example", new()
///     {
///         Name = "example-sp",
///         StorageMoverId = exampleMover.Id,
///     });
///
///     var exampleMoverJobDefinition = new Azure.Storage.MoverJobDefinition("example", new()
///     {
///         Name = "example-sjd",
///         StorageMoverProjectId = exampleMoverProject.Id,
///         AgentName = exampleMoverAgent.Name,
///         CopyMode = "Additive",
///         SourceName = exampleMoverSourceEndpoint.Name,
///         SourceSubPath = "/",
///         TargetName = exampleMoverTargetEndpoint.Name,
///         TargetSubPath = "/",
///         Description = "Example Job Definition Description",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-resources"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleMover, err := storage.NewMover(ctx, "example", &storage.MoverArgs{
/// 			Name:              pulumi.String("example-ssm"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleMoverAgent, err := storage.NewMoverAgent(ctx, "example", &storage.MoverAgentArgs{
/// 			Name:           pulumi.String("example-agent"),
/// 			StorageMoverId: exampleMover.ID(),
/// 			ArcVirtualMachineId: example.ID().ApplyT(func(id string) (string, error) {
/// 				return fmt.Sprintf("%v/providers/Microsoft.HybridCompute/machines/examples-hybridComputeName", id), nil
/// 			}).(pulumi.StringOutput),
/// 			ArcVirtualMachineUuid: pulumi.String("3bb2c024-eba9-4d18-9e7a-1d772fcc5fe9"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAccount, err := storage.NewAccount(ctx, "example", &storage.AccountArgs{
/// 			Name:                       pulumi.String("examplesa"),
/// 			ResourceGroupName:          example.Name,
/// 			Location:                   example.Location,
/// 			AccountTier:                pulumi.String("Standard"),
/// 			AccountReplicationType:     pulumi.String("LRS"),
/// 			AllowNestedItemsToBePublic: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleContainer, err := storage.NewContainer(ctx, "example", &storage.ContainerArgs{
/// 			Name:                pulumi.String("acccontainer"),
/// 			StorageAccountName:  exampleAccount.Name,
/// 			ContainerAccessType: pulumi.String("blob"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleMoverTargetEndpoint, err := storage.NewMoverTargetEndpoint(ctx, "example", &storage.MoverTargetEndpointArgs{
/// 			Name:                 pulumi.String("example-smte"),
/// 			StorageMoverId:       exampleMover.ID(),
/// 			StorageAccountId:     exampleAccount.ID(),
/// 			StorageContainerName: exampleContainer.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleMoverSourceEndpoint, err := storage.NewMoverSourceEndpoint(ctx, "example", &storage.MoverSourceEndpointArgs{
/// 			Name:           pulumi.String("example-smse"),
/// 			StorageMoverId: exampleMover.ID(),
/// 			Host:           pulumi.String("192.168.0.1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleMoverProject, err := storage.NewMoverProject(ctx, "example", &storage.MoverProjectArgs{
/// 			Name:           pulumi.String("example-sp"),
/// 			StorageMoverId: exampleMover.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = storage.NewMoverJobDefinition(ctx, "example", &storage.MoverJobDefinitionArgs{
/// 			Name:                  pulumi.String("example-sjd"),
/// 			StorageMoverProjectId: exampleMoverProject.ID(),
/// 			AgentName:             exampleMoverAgent.Name,
/// 			CopyMode:              pulumi.String("Additive"),
/// 			SourceName:            exampleMoverSourceEndpoint.Name,
/// 			SourceSubPath:         pulumi.String("/"),
/// 			TargetName:            exampleMoverTargetEndpoint.Name,
/// 			TargetSubPath:         pulumi.String("/"),
/// 			Description:           pulumi.String("Example Job Definition Description"),
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
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.storage.Mover;
/// import com.pulumi.azure.storage.MoverArgs;
/// import com.pulumi.azure.storage.MoverAgent;
/// import com.pulumi.azure.storage.MoverAgentArgs;
/// import com.pulumi.azure.storage.Account;
/// import com.pulumi.azure.storage.AccountArgs;
/// import com.pulumi.azure.storage.Container;
/// import com.pulumi.azure.storage.ContainerArgs;
/// import com.pulumi.azure.storage.MoverTargetEndpoint;
/// import com.pulumi.azure.storage.MoverTargetEndpointArgs;
/// import com.pulumi.azure.storage.MoverSourceEndpoint;
/// import com.pulumi.azure.storage.MoverSourceEndpointArgs;
/// import com.pulumi.azure.storage.MoverProject;
/// import com.pulumi.azure.storage.MoverProjectArgs;
/// import com.pulumi.azure.storage.MoverJobDefinition;
/// import com.pulumi.azure.storage.MoverJobDefinitionArgs;
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
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var exampleMover = new Mover("exampleMover", MoverArgs.builder()
///             .name("example-ssm")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .build());
///
///         var exampleMoverAgent = new MoverAgent("exampleMoverAgent", MoverAgentArgs.builder()
///             .name("example-agent")
///             .storageMoverId(exampleMover.id())
///             .arcVirtualMachineId(example.id().applyValue(_id -> String.format("%s/providers/Microsoft.HybridCompute/machines/examples-hybridComputeName", _id)))
///             .arcVirtualMachineUuid("3bb2c024-eba9-4d18-9e7a-1d772fcc5fe9")
///             .build());
///
///         var exampleAccount = new Account("exampleAccount", AccountArgs.builder()
///             .name("examplesa")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .accountTier("Standard")
///             .accountReplicationType("LRS")
///             .allowNestedItemsToBePublic(true)
///             .build());
///
///         var exampleContainer = new Container("exampleContainer", ContainerArgs.builder()
///             .name("acccontainer")
///             .storageAccountName(exampleAccount.name())
///             .containerAccessType("blob")
///             .build());
///
///         var exampleMoverTargetEndpoint = new MoverTargetEndpoint("exampleMoverTargetEndpoint", MoverTargetEndpointArgs.builder()
///             .name("example-smte")
///             .storageMoverId(exampleMover.id())
///             .storageAccountId(exampleAccount.id())
///             .storageContainerName(exampleContainer.name())
///             .build());
///
///         var exampleMoverSourceEndpoint = new MoverSourceEndpoint("exampleMoverSourceEndpoint", MoverSourceEndpointArgs.builder()
///             .name("example-smse")
///             .storageMoverId(exampleMover.id())
///             .host("192.168.0.1")
///             .build());
///
///         var exampleMoverProject = new MoverProject("exampleMoverProject", MoverProjectArgs.builder()
///             .name("example-sp")
///             .storageMoverId(exampleMover.id())
///             .build());
///
///         var exampleMoverJobDefinition = new MoverJobDefinition("exampleMoverJobDefinition", MoverJobDefinitionArgs.builder()
///             .name("example-sjd")
///             .storageMoverProjectId(exampleMoverProject.id())
///             .agentName(exampleMoverAgent.name())
///             .copyMode("Additive")
///             .sourceName(exampleMoverSourceEndpoint.name())
///             .sourceSubPath("/")
///             .targetName(exampleMoverTargetEndpoint.name())
///             .targetSubPath("/")
///             .description("Example Job Definition Description")
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
///       name: example-resources
///       location: West Europe
///   exampleMover:
///     type: azure:storage:Mover
///     name: example
///     properties:
///       name: example-ssm
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///   exampleMoverAgent:
///     type: azure:storage:MoverAgent
///     name: example
///     properties:
///       name: example-agent
///       storageMoverId: ${exampleMover.id}
///       arcVirtualMachineId: ${example.id}/providers/Microsoft.HybridCompute/machines/examples-hybridComputeName
///       arcVirtualMachineUuid: 3bb2c024-eba9-4d18-9e7a-1d772fcc5fe9
///   exampleAccount:
///     type: azure:storage:Account
///     name: example
///     properties:
///       name: examplesa
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       accountTier: Standard
///       accountReplicationType: LRS
///       allowNestedItemsToBePublic: true
///   exampleContainer:
///     type: azure:storage:Container
///     name: example
///     properties:
///       name: acccontainer
///       storageAccountName: ${exampleAccount.name}
///       containerAccessType: blob
///   exampleMoverTargetEndpoint:
///     type: azure:storage:MoverTargetEndpoint
///     name: example
///     properties:
///       name: example-smte
///       storageMoverId: ${exampleMover.id}
///       storageAccountId: ${exampleAccount.id}
///       storageContainerName: ${exampleContainer.name}
///   exampleMoverSourceEndpoint:
///     type: azure:storage:MoverSourceEndpoint
///     name: example
///     properties:
///       name: example-smse
///       storageMoverId: ${exampleMover.id}
///       host: 192.168.0.1
///   exampleMoverProject:
///     type: azure:storage:MoverProject
///     name: example
///     properties:
///       name: example-sp
///       storageMoverId: ${exampleMover.id}
///   exampleMoverJobDefinition:
///     type: azure:storage:MoverJobDefinition
///     name: example
///     properties:
///       name: example-sjd
///       storageMoverProjectId: ${exampleMoverProject.id}
///       agentName: ${exampleMoverAgent.name}
///       copyMode: Additive
///       sourceName: ${exampleMoverSourceEndpoint.name}
///       sourceSubPath: /
///       targetName: ${exampleMoverTargetEndpoint.name}
///       targetSubPath: /
///       description: Example Job Definition Description
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.StorageMover` - 2025-07-01
///
/// ## Import
///
/// Storage Mover Job Definition can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:storage/moverJobDefinition:MoverJobDefinition example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resourceGroup1/providers/Microsoft.StorageMover/storageMovers/storageMover1/projects/project1/jobDefinitions/jobDefinition1
/// ```
class MoverJobDefinition extends pulumi.CustomResource {
  /// Specifies the name of the Storage Mover Agent to assign for new Job Runs of this Storage Mover Job Definition.
  late final pulumi.Output<String?> agentName;
  /// Specifies the strategy to use for copy. Possible values are `Additive` and `Mirror`.
  late final pulumi.Output<String> copyMode;
  /// Specifies a description for this Storage Mover Job Definition.
  late final pulumi.Output<String?> description;
  /// Specifies the name which should be used for this Storage Mover Job Definition. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// Specifies the name of the Storage Mover Source Endpoint. Changing this forces a new resource to be created.
  late final pulumi.Output<String> sourceName;
  /// Specifies the sub path to use when reading from the Storage Mover Source Endpoint. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> sourceSubPath;
  /// Specifies the ID of the Storage Mover Project. Changing this forces a new resource to be created.
  late final pulumi.Output<String> storageMoverProjectId;
  /// Specifies the name of the Storage Mover target Endpoint. Changing this forces a new resource to be created.
  late final pulumi.Output<String> targetName;
  /// Specifies the sub path to use when writing to the Storage Mover Target Endpoint. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> targetSubPath;

  /// Creates a new [MoverJobDefinition].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MoverJobDefinition]. {@macro pulumi_storage_mover_job_definition_mover_job_definition_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MoverJobDefinition(
    String name, {
    MoverJobDefinitionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:storage/moverJobDefinition:MoverJobDefinition',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    agentName = registerOutput<String?>('agentName');
    copyMode = registerOutput<String>('copyMode');
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    sourceName = registerOutput<String>('sourceName');
    sourceSubPath = registerOutput<String?>('sourceSubPath');
    storageMoverProjectId = registerOutput<String>('storageMoverProjectId');
    targetName = registerOutput<String>('targetName');
    targetSubPath = registerOutput<String?>('targetSubPath');
  }

  /// Gets an existing [MoverJobDefinition] resource's state with the given [name] and [id].
  static MoverJobDefinition get(
    String name,
    pulumi.Input<String> id, {
    MoverJobDefinitionState? state,
  }) {
    return MoverJobDefinition._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  MoverJobDefinition._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:storage/moverJobDefinition:MoverJobDefinition',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    agentName = registerOutput<String?>('agentName');
    copyMode = registerOutput<String>('copyMode');
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    sourceName = registerOutput<String>('sourceName');
    sourceSubPath = registerOutput<String?>('sourceSubPath');
    storageMoverProjectId = registerOutput<String>('storageMoverProjectId');
    targetName = registerOutput<String>('targetName');
    targetSubPath = registerOutput<String?>('targetSubPath');
  }
}
