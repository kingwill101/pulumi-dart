import 'package:pulumi/pulumi.dart' as pulumi;
import 'subnet_service_endpoint_storage_policy_args.dart';
import 'subnet_service_endpoint_storage_policy_state.dart';

/// Manages a Subnet Service Endpoint Storage Policy.
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
///     location: "West Europe",
/// });
/// const exampleAccount = new azure.storage.Account("example", {
///     name: "examplestorageacct",
///     resourceGroupName: example.name,
///     location: example.location,
///     accountTier: "Standard",
///     accountReplicationType: "GRS",
/// });
/// const exampleSubnetServiceEndpointStoragePolicy = new azure.network.SubnetServiceEndpointStoragePolicy("example", {
///     name: "example-policy",
///     resourceGroupName: example.name,
///     location: example.location,
///     definitions: [
///         {
///             name: "name1",
///             description: "definition1",
///             service: "Microsoft.Storage",
///             serviceResources: [
///                 example.id,
///                 exampleAccount.id,
///             ],
///         },
///         {
///             name: "name2",
///             description: "definition2",
///             service: "Global",
///             serviceResources: [
///                 "/services/Azure",
///                 "/services/Azure/Batch",
///                 "/services/Azure/Databricks",
///                 "/services/Azure/DataFactory",
///                 "/services/Azure/MachineLearning",
///                 "/services/Azure/ManagedInstance",
///                 "/services/Azure/WebPI",
///             ],
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-rg",
///     location="West Europe")
/// example_account = azure.storage.Account("example",
///     name="examplestorageacct",
///     resource_group_name=example.name,
///     location=example.location,
///     account_tier="Standard",
///     account_replication_type="GRS")
/// example_subnet_service_endpoint_storage_policy = azure.network.SubnetServiceEndpointStoragePolicy("example",
///     name="example-policy",
///     resource_group_name=example.name,
///     location=example.location,
///     definitions=[
///         {
///             "name": "name1",
///             "description": "definition1",
///             "service": "Microsoft.Storage",
///             "service_resources": [
///                 example.id,
///                 example_account.id,
///             ],
///         },
///         {
///             "name": "name2",
///             "description": "definition2",
///             "service": "Global",
///             "service_resources": [
///                 "/services/Azure",
///                 "/services/Azure/Batch",
///                 "/services/Azure/Databricks",
///                 "/services/Azure/DataFactory",
///                 "/services/Azure/MachineLearning",
///                 "/services/Azure/ManagedInstance",
///                 "/services/Azure/WebPI",
///             ],
///         },
///     ])
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
///         Location = "West Europe",
///     });
///
///     var exampleAccount = new Azure.Storage.Account("example", new()
///     {
///         Name = "examplestorageacct",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         AccountTier = "Standard",
///         AccountReplicationType = "GRS",
///     });
///
///     var exampleSubnetServiceEndpointStoragePolicy = new Azure.Network.SubnetServiceEndpointStoragePolicy("example", new()
///     {
///         Name = "example-policy",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         Definitions = new[]
///         {
///             new Azure.Network.Inputs.SubnetServiceEndpointStoragePolicyDefinitionArgs
///             {
///                 Name = "name1",
///                 Description = "definition1",
///                 Service = "Microsoft.Storage",
///                 ServiceResources = new[]
///                 {
///                     example.Id,
///                     exampleAccount.Id,
///                 },
///             },
///             new Azure.Network.Inputs.SubnetServiceEndpointStoragePolicyDefinitionArgs
///             {
///                 Name = "name2",
///                 Description = "definition2",
///                 Service = "Global",
///                 ServiceResources = new[]
///                 {
///                     "/services/Azure",
///                     "/services/Azure/Batch",
///                     "/services/Azure/Databricks",
///                     "/services/Azure/DataFactory",
///                     "/services/Azure/MachineLearning",
///                     "/services/Azure/ManagedInstance",
///                     "/services/Azure/WebPI",
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/network"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-rg"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAccount, err := storage.NewAccount(ctx, "example", &storage.AccountArgs{
/// 			Name:                   pulumi.String("examplestorageacct"),
/// 			ResourceGroupName:      example.Name,
/// 			Location:               example.Location,
/// 			AccountTier:            pulumi.String("Standard"),
/// 			AccountReplicationType: pulumi.String("GRS"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = network.NewSubnetServiceEndpointStoragePolicy(ctx, "example", &network.SubnetServiceEndpointStoragePolicyArgs{
/// 			Name:              pulumi.String("example-policy"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			Definitions: network.SubnetServiceEndpointStoragePolicyDefinitionArray{
/// 				&network.SubnetServiceEndpointStoragePolicyDefinitionArgs{
/// 					Name:        pulumi.String("name1"),
/// 					Description: pulumi.String("definition1"),
/// 					Service:     pulumi.String("Microsoft.Storage"),
/// 					ServiceResources: pulumi.StringArray{
/// 						example.ID(),
/// 						exampleAccount.ID(),
/// 					},
/// 				},
/// 				&network.SubnetServiceEndpointStoragePolicyDefinitionArgs{
/// 					Name:        pulumi.String("name2"),
/// 					Description: pulumi.String("definition2"),
/// 					Service:     pulumi.String("Global"),
/// 					ServiceResources: pulumi.StringArray{
/// 						pulumi.String("/services/Azure"),
/// 						pulumi.String("/services/Azure/Batch"),
/// 						pulumi.String("/services/Azure/Databricks"),
/// 						pulumi.String("/services/Azure/DataFactory"),
/// 						pulumi.String("/services/Azure/MachineLearning"),
/// 						pulumi.String("/services/Azure/ManagedInstance"),
/// 						pulumi.String("/services/Azure/WebPI"),
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
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.storage.Account;
/// import com.pulumi.azure.storage.AccountArgs;
/// import com.pulumi.azure.network.SubnetServiceEndpointStoragePolicy;
/// import com.pulumi.azure.network.SubnetServiceEndpointStoragePolicyArgs;
/// import com.pulumi.azure.network.inputs.SubnetServiceEndpointStoragePolicyDefinitionArgs;
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
///             .name("example-rg")
///             .location("West Europe")
///             .build());
///
///         var exampleAccount = new Account("exampleAccount", AccountArgs.builder()
///             .name("examplestorageacct")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .accountTier("Standard")
///             .accountReplicationType("GRS")
///             .build());
///
///         var exampleSubnetServiceEndpointStoragePolicy = new SubnetServiceEndpointStoragePolicy("exampleSubnetServiceEndpointStoragePolicy", SubnetServiceEndpointStoragePolicyArgs.builder()
///             .name("example-policy")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .definitions(
///                 SubnetServiceEndpointStoragePolicyDefinitionArgs.builder()
///                     .name("name1")
///                     .description("definition1")
///                     .service("Microsoft.Storage")
///                     .serviceResources(
///                         example.id(),
///                         exampleAccount.id())
///                     .build(),
///                 SubnetServiceEndpointStoragePolicyDefinitionArgs.builder()
///                     .name("name2")
///                     .description("definition2")
///                     .service("Global")
///                     .serviceResources(
///                         "/services/Azure",
///                         "/services/Azure/Batch",
///                         "/services/Azure/Databricks",
///                         "/services/Azure/DataFactory",
///                         "/services/Azure/MachineLearning",
///                         "/services/Azure/ManagedInstance",
///                         "/services/Azure/WebPI")
///                     .build())
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
///       location: West Europe
///   exampleSubnetServiceEndpointStoragePolicy:
///     type: azure:network:SubnetServiceEndpointStoragePolicy
///     name: example
///     properties:
///       name: example-policy
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       definitions:
///         - name: name1
///           description: definition1
///           service: Microsoft.Storage
///           serviceResources:
///             - ${example.id}
///             - ${exampleAccount.id}
///         - name: name2
///           description: definition2
///           service: Global
///           serviceResources:
///             - /services/Azure
///             - /services/Azure/Batch
///             - /services/Azure/Databricks
///             - /services/Azure/DataFactory
///             - /services/Azure/MachineLearning
///             - /services/Azure/ManagedInstance
///             - /services/Azure/WebPI
///   exampleAccount:
///     type: azure:storage:Account
///     name: example
///     properties:
///       name: examplestorageacct
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       accountTier: Standard
///       accountReplicationType: GRS
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Network` - 2025-01-01
///
/// ## Import
///
/// Subnet Service Endpoint Policies can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:network/subnetServiceEndpointStoragePolicy:SubnetServiceEndpointStoragePolicy example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.Network/serviceEndpointPolicies/policy1
/// ```
class SubnetServiceEndpointStoragePolicy extends pulumi.CustomResource {
  /// A `definition` block as defined below
  late final pulumi.Output<List<Map<String, dynamic>>?> definitions;

  /// The Azure Region where the Subnet Service Endpoint Storage Policy should exist. Changing this forces a new Subnet Service Endpoint Storage Policy to be created.
  late final pulumi.Output<String> location;

  /// The name which should be used for this Subnet Service Endpoint Storage Policy. Changing this forces a new Subnet Service Endpoint Storage Policy to be created.
  late final pulumi.Output<String> name;

  /// The name of the Resource Group where the Subnet Service Endpoint Storage Policy should exist. Changing this forces a new Subnet Service Endpoint Storage Policy to be created.
  late final pulumi.Output<String> resourceGroupName;

  /// A mapping of tags which should be assigned to the Subnet Service Endpoint Storage Policy.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [SubnetServiceEndpointStoragePolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SubnetServiceEndpointStoragePolicy]. {@macro pulumi_network_subnet_service_endpoint_storage_policy_subnet_service_endpoint_storage_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SubnetServiceEndpointStoragePolicy(
    String name, {
    SubnetServiceEndpointStoragePolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:network/subnetServiceEndpointStoragePolicy:SubnetServiceEndpointStoragePolicy',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    definitions = registerOutput<List<Map<String, dynamic>>?>('definitions');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    tags = registerOutput<Map<String, String>?>('tags');
  }

  /// Gets an existing [SubnetServiceEndpointStoragePolicy] resource's state with the given [name] and [id].
  static SubnetServiceEndpointStoragePolicy get(
    String name,
    pulumi.Input<String> id, {
    SubnetServiceEndpointStoragePolicyState? state,
  }) {
    return SubnetServiceEndpointStoragePolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  SubnetServiceEndpointStoragePolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:network/subnetServiceEndpointStoragePolicy:SubnetServiceEndpointStoragePolicy',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    definitions = registerOutput<List<Map<String, dynamic>>?>('definitions');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    tags = registerOutput<Map<String, String>?>('tags');
  }
}
