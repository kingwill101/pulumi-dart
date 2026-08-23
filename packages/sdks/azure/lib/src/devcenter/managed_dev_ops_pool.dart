import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_dev_ops_pool_args.dart';
import 'managed_dev_ops_pool_azure_devops_organization.dart';
import 'managed_dev_ops_pool_identity.dart';
import 'managed_dev_ops_pool_state.dart';
import 'managed_dev_ops_pool_stateful_agent.dart';
import 'managed_dev_ops_pool_stateless_agent.dart';
import 'managed_dev_ops_pool_virtual_machine_scale_set_fabric.dart';

/// Manages a Managed DevOps Pool.
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
/// const exampleDevCenter = new azure.devcenter.DevCenter("example", {
///     name: "example-devcenter",
///     resourceGroupName: example.name,
///     location: example.location,
/// });
/// const exampleProject = new azure.devcenter.Project("example", {
///     devCenterId: exampleDevCenter.id,
///     location: example.location,
///     name: "example",
///     resourceGroupName: example.name,
/// });
/// const exampleManagedDevOpsPool = new azure.devcenter.ManagedDevOpsPool("example", {
///     name: "example-manageddevopspools",
///     resourceGroupName: example.name,
///     location: example.location,
///     devCenterProjectId: exampleProject.id,
///     maximumConcurrency: 1,
///     azureDevopsOrganization: {
///         organizations: [{
///             parallelism: 1,
///             url: "https://dev.azure.com/example",
///         }],
///     },
///     statelessAgent: {},
///     virtualMachineScaleSetFabric: {
///         skuName: "Standard_D2ads_v5",
///         images: [{
///             wellKnownImageName: "ubuntu-24.04/buffer",
///         }],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_dev_center = azure.devcenter.DevCenter("example",
///     name="example-devcenter",
///     resource_group_name=example.name,
///     location=example.location)
/// example_project = azure.devcenter.Project("example",
///     dev_center_id=example_dev_center.id,
///     location=example.location,
///     name="example",
///     resource_group_name=example.name)
/// example_managed_dev_ops_pool = azure.devcenter.ManagedDevOpsPool("example",
///     name="example-manageddevopspools",
///     resource_group_name=example.name,
///     location=example.location,
///     dev_center_project_id=example_project.id,
///     maximum_concurrency=1,
///     azure_devops_organization={
///         "organizations": [{
///             "parallelism": 1,
///             "url": "https://dev.azure.com/example",
///         }],
///     },
///     stateless_agent={},
///     virtual_machine_scale_set_fabric={
///         "sku_name": "Standard_D2ads_v5",
///         "images": [{
///             "well_known_image_name": "ubuntu-24.04/buffer",
///         }],
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
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var exampleDevCenter = new Azure.DevCenter.DevCenter("example", new()
///     {
///         Name = "example-devcenter",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///     });
///
///     var exampleProject = new Azure.DevCenter.Project("example", new()
///     {
///         DevCenterId = exampleDevCenter.Id,
///         Location = example.Location,
///         Name = "example",
///         ResourceGroupName = example.Name,
///     });
///
///     var exampleManagedDevOpsPool = new Azure.DevCenter.ManagedDevOpsPool("example", new()
///     {
///         Name = "example-manageddevopspools",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         DevCenterProjectId = exampleProject.Id,
///         MaximumConcurrency = 1,
///         AzureDevopsOrganization = new Azure.DevCenter.Inputs.ManagedDevOpsPoolAzureDevopsOrganizationArgs
///         {
///             Organizations = new[]
///             {
///                 new Azure.DevCenter.Inputs.ManagedDevOpsPoolAzureDevopsOrganizationOrganizationArgs
///                 {
///                     Parallelism = 1,
///                     Url = "https://dev.azure.com/example",
///                 },
///             },
///         },
///         StatelessAgent = null,
///         VirtualMachineScaleSetFabric = new Azure.DevCenter.Inputs.ManagedDevOpsPoolVirtualMachineScaleSetFabricArgs
///         {
///             SkuName = "Standard_D2ads_v5",
///             Images = new[]
///             {
///                 new Azure.DevCenter.Inputs.ManagedDevOpsPoolVirtualMachineScaleSetFabricImageArgs
///                 {
///                     WellKnownImageName = "ubuntu-24.04/buffer",
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/devcenter"
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
/// 		exampleDevCenter, err := devcenter.NewDevCenter(ctx, "example", &devcenter.DevCenterArgs{
/// 			Name:              pulumi.String("example-devcenter"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleProject, err := devcenter.NewProject(ctx, "example", &devcenter.ProjectArgs{
/// 			DevCenterId:       exampleDevCenter.ID(),
/// 			Location:          example.Location,
/// 			Name:              pulumi.String("example"),
/// 			ResourceGroupName: example.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = devcenter.NewManagedDevOpsPool(ctx, "example", &devcenter.ManagedDevOpsPoolArgs{
/// 			Name:               pulumi.String("example-manageddevopspools"),
/// 			ResourceGroupName:  example.Name,
/// 			Location:           example.Location,
/// 			DevCenterProjectId: exampleProject.ID(),
/// 			MaximumConcurrency: pulumi.Int(1),
/// 			AzureDevopsOrganization: &devcenter.ManagedDevOpsPoolAzureDevopsOrganizationArgs{
/// 				Organizations: devcenter.ManagedDevOpsPoolAzureDevopsOrganizationOrganizationArray{
/// 					&devcenter.ManagedDevOpsPoolAzureDevopsOrganizationOrganizationArgs{
/// 						Parallelism: pulumi.Int(1),
/// 						Url:         pulumi.String("https://dev.azure.com/example"),
/// 					},
/// 				},
/// 			},
/// 			StatelessAgent: &devcenter.ManagedDevOpsPoolStatelessAgentArgs{},
/// 			VirtualMachineScaleSetFabric: &devcenter.ManagedDevOpsPoolVirtualMachineScaleSetFabricArgs{
/// 				SkuName: pulumi.String("Standard_D2ads_v5"),
/// 				Images: devcenter.ManagedDevOpsPoolVirtualMachineScaleSetFabricImageArray{
/// 					&devcenter.ManagedDevOpsPoolVirtualMachineScaleSetFabricImageArgs{
/// 						WellKnownImageName: pulumi.String("ubuntu-24.04/buffer"),
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
///   name     = "example-resources"
///   location = "West Europe"
/// }
/// resource "azure_devcenter_devcenter" "example" {
///   name                = "example-devcenter"
///   resource_group_name = azure_core_resourcegroup.example.name
///   location            = azure_core_resourcegroup.example.location
/// }
/// resource "azure_devcenter_project" "example" {
///   dev_center_id       = azure_devcenter_devcenter.example.id
///   location            = azure_core_resourcegroup.example.location
///   name                = "example"
///   resource_group_name = azure_core_resourcegroup.example.name
/// }
/// resource "azure_devcenter_manageddevopspool" "example" {
///   name                  = "example-manageddevopspools"
///   resource_group_name   = azure_core_resourcegroup.example.name
///   location              = azure_core_resourcegroup.example.location
///   dev_center_project_id = azure_devcenter_project.example.id
///   maximum_concurrency   = 1
///   azure_devops_organization = {
///     organizations = [{
///       "parallelism" = 1
///       "url"         = "https://dev.azure.com/example"
///     }]
///   }
///   stateless_agent = {}
///   virtual_machine_scale_set_fabric = {
///     sku_name = "Standard_D2ads_v5"
///     images = [{
///       "wellKnownImageName" = "ubuntu-24.04/buffer"
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
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.devcenter.DevCenter;
/// import com.pulumi.azure.devcenter.DevCenterArgs;
/// import com.pulumi.azure.devcenter.Project;
/// import com.pulumi.azure.devcenter.ProjectArgs;
/// import com.pulumi.azure.devcenter.ManagedDevOpsPool;
/// import com.pulumi.azure.devcenter.ManagedDevOpsPoolArgs;
/// import com.pulumi.azure.devcenter.inputs.ManagedDevOpsPoolAzureDevopsOrganizationArgs;
/// import com.pulumi.azure.devcenter.inputs.ManagedDevOpsPoolAzureDevopsOrganizationOrganizationArgs;
/// import com.pulumi.azure.devcenter.inputs.ManagedDevOpsPoolStatelessAgentArgs;
/// import com.pulumi.azure.devcenter.inputs.ManagedDevOpsPoolVirtualMachineScaleSetFabricArgs;
/// import com.pulumi.azure.devcenter.inputs.ManagedDevOpsPoolVirtualMachineScaleSetFabricImageArgs;
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
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var exampleDevCenter = new DevCenter("exampleDevCenter", DevCenterArgs.builder()
///             .name("example-devcenter")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .build());
///
///         var exampleProject = new Project("exampleProject", ProjectArgs.builder()
///             .devCenterId(exampleDevCenter.id())
///             .location(example.location())
///             .name("example")
///             .resourceGroupName(example.name())
///             .build());
///
///         var exampleManagedDevOpsPool = new ManagedDevOpsPool("exampleManagedDevOpsPool", ManagedDevOpsPoolArgs.builder()
///             .name("example-manageddevopspools")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .devCenterProjectId(exampleProject.id())
///             .maximumConcurrency(1)
///             .azureDevopsOrganization(ManagedDevOpsPoolAzureDevopsOrganizationArgs.builder()
///                 .organizations(ManagedDevOpsPoolAzureDevopsOrganizationOrganizationArgs.builder()
///                     .parallelism(1)
///                     .url("https://dev.azure.com/example")
///                     .build())
///                 .build())
///             .statelessAgent(ManagedDevOpsPoolStatelessAgentArgs.builder()
///                 .build())
///             .virtualMachineScaleSetFabric(ManagedDevOpsPoolVirtualMachineScaleSetFabricArgs.builder()
///                 .skuName("Standard_D2ads_v5")
///                 .images(ManagedDevOpsPoolVirtualMachineScaleSetFabricImageArgs.builder()
///                     .wellKnownImageName("ubuntu-24.04/buffer")
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
///       name: example-resources
///       location: West Europe
///   exampleDevCenter:
///     type: azure:devcenter:DevCenter
///     name: example
///     properties:
///       name: example-devcenter
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///   exampleProject:
///     type: azure:devcenter:Project
///     name: example
///     properties:
///       devCenterId: ${exampleDevCenter.id}
///       location: ${example.location}
///       name: example
///       resourceGroupName: ${example.name}
///   exampleManagedDevOpsPool:
///     type: azure:devcenter:ManagedDevOpsPool
///     name: example
///     properties:
///       name: example-manageddevopspools
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       devCenterProjectId: ${exampleProject.id}
///       maximumConcurrency: 1
///       azureDevopsOrganization:
///         organizations:
///           - parallelism: 1
///             url: https://dev.azure.com/example
///       statelessAgent: {}
///       virtualMachineScaleSetFabric:
///         skuName: Standard_D2ads_v5
///         images:
///           - wellKnownImageName: ubuntu-24.04/buffer
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.DevOpsInfrastructure` - 2025-09-20
///
/// ## Import
///
/// Managed DevOps Pool can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:devcenter/managedDevOpsPool:ManagedDevOpsPool example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.DevOpsInfrastructure/pools/pool1
/// ```
class ManagedDevOpsPool extends pulumi.CustomResource {
  /// An `azureDevopsOrganization` block as defined below.
  late final pulumi.Output<ManagedDevOpsPoolAzureDevopsOrganization> azureDevopsOrganization;
  /// The ID of the Dev Center project.
  late final pulumi.Output<String> devCenterProjectId;
  /// An `identity` block as defined below.
  late final pulumi.Output<ManagedDevOpsPoolIdentity?> identity;
  /// The Azure Region where the Managed DevOps Pool should exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;
  /// Defines how many resources can there be created at any given time. Possible values range between `1` and `10000`.
  late final pulumi.Output<int> maximumConcurrency;
  /// The name which should be used for this Managed DevOps Pool. The name must be between 3 and 44 characters, can only include alphanumeric characters, periods (`.`) and hyphens (`-`), must start with an alphanumeric character and cannot end with a period (`.`). Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The name of the Resource Group where the Managed DevOps Pool should exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// A `statefulAgent` block as defined below.
  late final pulumi.Output<ManagedDevOpsPoolStatefulAgent?> statefulAgent;
  /// A `statelessAgent` block as defined below.
  ///
  /// &gt; **Note:** Exactly one of `statefulAgent` or `statelessAgent` must be specified.
  late final pulumi.Output<ManagedDevOpsPoolStatelessAgent?> statelessAgent;
  /// A mapping of tags which should be assigned to the Managed DevOps Pool.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A `virtualMachineScaleSetFabric` block as defined below.
  late final pulumi.Output<ManagedDevOpsPoolVirtualMachineScaleSetFabric> virtualMachineScaleSetFabric;
  /// Specifies the work folder for every agent in the pool.
  late final pulumi.Output<String?> workFolder;

  /// Creates a new [ManagedDevOpsPool].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ManagedDevOpsPool]. {@macro pulumi_devcenter_managed_dev_ops_pool_managed_dev_ops_pool_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ManagedDevOpsPool(
    String name, {
    ManagedDevOpsPoolArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:devcenter/managedDevOpsPool:ManagedDevOpsPool',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureDevopsOrganization = registerOutput<ManagedDevOpsPoolAzureDevopsOrganization>('azureDevopsOrganization', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagedDevOpsPoolAzureDevopsOrganization.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    devCenterProjectId = registerOutput<String>('devCenterProjectId');
    identity = registerOutput<ManagedDevOpsPoolIdentity?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagedDevOpsPoolIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    maximumConcurrency = registerOutput<int>('maximumConcurrency');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    statefulAgent = registerOutput<ManagedDevOpsPoolStatefulAgent?>('statefulAgent', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagedDevOpsPoolStatefulAgent.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    statelessAgent = registerOutput<ManagedDevOpsPoolStatelessAgent?>('statelessAgent', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagedDevOpsPoolStatelessAgent.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    virtualMachineScaleSetFabric = registerOutput<ManagedDevOpsPoolVirtualMachineScaleSetFabric>('virtualMachineScaleSetFabric', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagedDevOpsPoolVirtualMachineScaleSetFabric.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    workFolder = registerOutput<String?>('workFolder');
  }

  /// Gets an existing [ManagedDevOpsPool] resource's state with the given [name] and [id].
  static ManagedDevOpsPool get(
    String name,
    pulumi.Input<String> id, {
    ManagedDevOpsPoolState? state,
  }) {
    return ManagedDevOpsPool._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ManagedDevOpsPool._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:devcenter/managedDevOpsPool:ManagedDevOpsPool',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureDevopsOrganization = registerOutput<ManagedDevOpsPoolAzureDevopsOrganization>('azureDevopsOrganization', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagedDevOpsPoolAzureDevopsOrganization.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    devCenterProjectId = registerOutput<String>('devCenterProjectId');
    identity = registerOutput<ManagedDevOpsPoolIdentity?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagedDevOpsPoolIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    maximumConcurrency = registerOutput<int>('maximumConcurrency');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    statefulAgent = registerOutput<ManagedDevOpsPoolStatefulAgent?>('statefulAgent', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagedDevOpsPoolStatefulAgent.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    statelessAgent = registerOutput<ManagedDevOpsPoolStatelessAgent?>('statelessAgent', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagedDevOpsPoolStatelessAgent.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    virtualMachineScaleSetFabric = registerOutput<ManagedDevOpsPoolVirtualMachineScaleSetFabric>('virtualMachineScaleSetFabric', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagedDevOpsPoolVirtualMachineScaleSetFabric.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    workFolder = registerOutput<String?>('workFolder');
  }
}
