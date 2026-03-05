import 'package:pulumi/pulumi.dart' as pulumi;
import 'assignment_dedicated_host_args.dart';
import 'assignment_dedicated_host_state.dart';

/// Manages a maintenance assignment to Dedicated Host.
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
/// const exampleDedicatedHostGroup = new azure.compute.DedicatedHostGroup("example", {
///     name: "example-host-group",
///     resourceGroupName: example.name,
///     location: example.location,
///     platformFaultDomainCount: 2,
/// });
/// const exampleDedicatedHost = new azure.compute.DedicatedHost("example", {
///     name: "example-host",
///     location: example.location,
///     dedicatedHostGroupId: exampleDedicatedHostGroup.id,
///     skuName: "DSv3-Type3",
///     platformFaultDomain: 1,
/// });
/// const exampleConfiguration = new azure.maintenance.Configuration("example", {
///     name: "example-mc",
///     resourceGroupName: example.name,
///     location: example.location,
///     scope: "Host",
/// });
/// const exampleAssignmentDedicatedHost = new azure.maintenance.AssignmentDedicatedHost("example", {
///     location: example.location,
///     maintenanceConfigurationId: exampleConfiguration.id,
///     dedicatedHostId: exampleDedicatedHost.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_dedicated_host_group = azure.compute.DedicatedHostGroup("example",
///     name="example-host-group",
///     resource_group_name=example.name,
///     location=example.location,
///     platform_fault_domain_count=2)
/// example_dedicated_host = azure.compute.DedicatedHost("example",
///     name="example-host",
///     location=example.location,
///     dedicated_host_group_id=example_dedicated_host_group.id,
///     sku_name="DSv3-Type3",
///     platform_fault_domain=1)
/// example_configuration = azure.maintenance.Configuration("example",
///     name="example-mc",
///     resource_group_name=example.name,
///     location=example.location,
///     scope="Host")
/// example_assignment_dedicated_host = azure.maintenance.AssignmentDedicatedHost("example",
///     location=example.location,
///     maintenance_configuration_id=example_configuration.id,
///     dedicated_host_id=example_dedicated_host.id)
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
///     var exampleDedicatedHostGroup = new Azure.Compute.DedicatedHostGroup("example", new()
///     {
///         Name = "example-host-group",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         PlatformFaultDomainCount = 2,
///     });
///
///     var exampleDedicatedHost = new Azure.Compute.DedicatedHost("example", new()
///     {
///         Name = "example-host",
///         Location = example.Location,
///         DedicatedHostGroupId = exampleDedicatedHostGroup.Id,
///         SkuName = "DSv3-Type3",
///         PlatformFaultDomain = 1,
///     });
///
///     var exampleConfiguration = new Azure.Maintenance.Configuration("example", new()
///     {
///         Name = "example-mc",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         Scope = "Host",
///     });
///
///     var exampleAssignmentDedicatedHost = new Azure.Maintenance.AssignmentDedicatedHost("example", new()
///     {
///         Location = example.Location,
///         MaintenanceConfigurationId = exampleConfiguration.Id,
///         DedicatedHostId = exampleDedicatedHost.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/compute"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/maintenance"
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
/// 		exampleDedicatedHostGroup, err := compute.NewDedicatedHostGroup(ctx, "example", &compute.DedicatedHostGroupArgs{
/// 			Name:                     pulumi.String("example-host-group"),
/// 			ResourceGroupName:        example.Name,
/// 			Location:                 example.Location,
/// 			PlatformFaultDomainCount: pulumi.Int(2),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleDedicatedHost, err := compute.NewDedicatedHost(ctx, "example", &compute.DedicatedHostArgs{
/// 			Name:                 pulumi.String("example-host"),
/// 			Location:             example.Location,
/// 			DedicatedHostGroupId: exampleDedicatedHostGroup.ID(),
/// 			SkuName:              pulumi.String("DSv3-Type3"),
/// 			PlatformFaultDomain:  pulumi.Int(1),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleConfiguration, err := maintenance.NewConfiguration(ctx, "example", &maintenance.ConfigurationArgs{
/// 			Name:              pulumi.String("example-mc"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			Scope:             pulumi.String("Host"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = maintenance.NewAssignmentDedicatedHost(ctx, "example", &maintenance.AssignmentDedicatedHostArgs{
/// 			Location:                   example.Location,
/// 			MaintenanceConfigurationId: exampleConfiguration.ID(),
/// 			DedicatedHostId:            exampleDedicatedHost.ID(),
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
/// import com.pulumi.azure.compute.DedicatedHostGroup;
/// import com.pulumi.azure.compute.DedicatedHostGroupArgs;
/// import com.pulumi.azure.compute.DedicatedHost;
/// import com.pulumi.azure.compute.DedicatedHostArgs;
/// import com.pulumi.azure.maintenance.Configuration;
/// import com.pulumi.azure.maintenance.ConfigurationArgs;
/// import com.pulumi.azure.maintenance.AssignmentDedicatedHost;
/// import com.pulumi.azure.maintenance.AssignmentDedicatedHostArgs;
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
///         var exampleDedicatedHostGroup = new DedicatedHostGroup("exampleDedicatedHostGroup", DedicatedHostGroupArgs.builder()
///             .name("example-host-group")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .platformFaultDomainCount(2)
///             .build());
///
///         var exampleDedicatedHost = new DedicatedHost("exampleDedicatedHost", DedicatedHostArgs.builder()
///             .name("example-host")
///             .location(example.location())
///             .dedicatedHostGroupId(exampleDedicatedHostGroup.id())
///             .skuName("DSv3-Type3")
///             .platformFaultDomain(1)
///             .build());
///
///         var exampleConfiguration = new Configuration("exampleConfiguration", ConfigurationArgs.builder()
///             .name("example-mc")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .scope("Host")
///             .build());
///
///         var exampleAssignmentDedicatedHost = new AssignmentDedicatedHost("exampleAssignmentDedicatedHost", AssignmentDedicatedHostArgs.builder()
///             .location(example.location())
///             .maintenanceConfigurationId(exampleConfiguration.id())
///             .dedicatedHostId(exampleDedicatedHost.id())
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
///   exampleDedicatedHostGroup:
///     type: azure:compute:DedicatedHostGroup
///     name: example
///     properties:
///       name: example-host-group
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       platformFaultDomainCount: 2
///   exampleDedicatedHost:
///     type: azure:compute:DedicatedHost
///     name: example
///     properties:
///       name: example-host
///       location: ${example.location}
///       dedicatedHostGroupId: ${exampleDedicatedHostGroup.id}
///       skuName: DSv3-Type3
///       platformFaultDomain: 1
///   exampleConfiguration:
///     type: azure:maintenance:Configuration
///     name: example
///     properties:
///       name: example-mc
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       scope: Host
///   exampleAssignmentDedicatedHost:
///     type: azure:maintenance:AssignmentDedicatedHost
///     name: example
///     properties:
///       location: ${example.location}
///       maintenanceConfigurationId: ${exampleConfiguration.id}
///       dedicatedHostId: ${exampleDedicatedHost.id}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Maintenance` - 2023-04-01
///
/// ## Import
///
/// Maintenance Assignment can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:maintenance/assignmentDedicatedHost:AssignmentDedicatedHost example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resGroup1/providers/Microsoft.Compute/hostGroups/group1/hosts/host1/providers/Microsoft.Maintenance/configurationAssignments/assign1
/// ```
class AssignmentDedicatedHost extends pulumi.CustomResource {
  /// Specifies the Dedicated Host ID to which the Maintenance Configuration will be assigned. Changing this forces a new resource to be created.
  late final pulumi.Output<String> dedicatedHostId;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;
  /// Specifies the ID of the Maintenance Configuration Resource. Changing this forces a new resource to be created.
  late final pulumi.Output<String> maintenanceConfigurationId;

  /// Creates a new [AssignmentDedicatedHost].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AssignmentDedicatedHost]. {@macro pulumi_maintenance_assignment_dedicated_host_assignment_dedicated_host_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AssignmentDedicatedHost(
    String name, {
    AssignmentDedicatedHostArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:maintenance/assignmentDedicatedHost:AssignmentDedicatedHost',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    dedicatedHostId = registerOutput<String>('dedicatedHostId');
    location = registerOutput<String>('location');
    maintenanceConfigurationId = registerOutput<String>('maintenanceConfigurationId');
  }

  /// Gets an existing [AssignmentDedicatedHost] resource's state with the given [name] and [id].
  static AssignmentDedicatedHost get(
    String name,
    pulumi.Input<String> id, {
    AssignmentDedicatedHostState? state,
  }) {
    return AssignmentDedicatedHost._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AssignmentDedicatedHost._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:maintenance/assignmentDedicatedHost:AssignmentDedicatedHost',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    dedicatedHostId = registerOutput<String>('dedicatedHostId');
    location = registerOutput<String>('location');
    maintenanceConfigurationId = registerOutput<String>('maintenanceConfigurationId');
  }
}
