import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_group_args.dart';
import 'application_group_state.dart';

/// Manages a Virtual Desktop Application Group.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "rg-example-virtualdesktop",
///     location: "West Europe",
/// });
/// const pooledbreadthfirst = new azure.desktopvirtualization.HostPool("pooledbreadthfirst", {
///     name: "pooledbreadthfirst",
///     location: example.location,
///     resourceGroupName: example.name,
///     type: "Pooled",
///     loadBalancerType: "BreadthFirst",
/// });
/// const personalautomatic = new azure.desktopvirtualization.HostPool("personalautomatic", {
///     name: "personalautomatic",
///     location: example.location,
///     resourceGroupName: example.name,
///     type: "Personal",
///     personalDesktopAssignmentType: "Automatic",
///     loadBalancerType: "BreadthFirst",
/// });
/// const remoteapp = new azure.desktopvirtualization.ApplicationGroup("remoteapp", {
///     name: "acctag",
///     location: example.location,
///     resourceGroupName: example.name,
///     type: "RemoteApp",
///     hostPoolId: pooledbreadthfirst.id,
///     friendlyName: "TestAppGroup",
///     description: "Acceptance Test: An application group",
/// });
/// const desktopapp = new azure.desktopvirtualization.ApplicationGroup("desktopapp", {
///     name: "appgroupdesktop",
///     location: example.location,
///     resourceGroupName: example.name,
///     type: "Desktop",
///     hostPoolId: personalautomatic.id,
///     friendlyName: "TestAppGroup",
///     description: "Acceptance Test: An application group",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="rg-example-virtualdesktop",
///     location="West Europe")
/// pooledbreadthfirst = azure.desktopvirtualization.HostPool("pooledbreadthfirst",
///     name="pooledbreadthfirst",
///     location=example.location,
///     resource_group_name=example.name,
///     type="Pooled",
///     load_balancer_type="BreadthFirst")
/// personalautomatic = azure.desktopvirtualization.HostPool("personalautomatic",
///     name="personalautomatic",
///     location=example.location,
///     resource_group_name=example.name,
///     type="Personal",
///     personal_desktop_assignment_type="Automatic",
///     load_balancer_type="BreadthFirst")
/// remoteapp = azure.desktopvirtualization.ApplicationGroup("remoteapp",
///     name="acctag",
///     location=example.location,
///     resource_group_name=example.name,
///     type="RemoteApp",
///     host_pool_id=pooledbreadthfirst.id,
///     friendly_name="TestAppGroup",
///     description="Acceptance Test: An application group")
/// desktopapp = azure.desktopvirtualization.ApplicationGroup("desktopapp",
///     name="appgroupdesktop",
///     location=example.location,
///     resource_group_name=example.name,
///     type="Desktop",
///     host_pool_id=personalautomatic.id,
///     friendly_name="TestAppGroup",
///     description="Acceptance Test: An application group")
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
///         Name = "rg-example-virtualdesktop",
///         Location = "West Europe",
///     });
///
///     var pooledbreadthfirst = new Azure.DesktopVirtualization.HostPool("pooledbreadthfirst", new()
///     {
///         Name = "pooledbreadthfirst",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         Type = "Pooled",
///         LoadBalancerType = "BreadthFirst",
///     });
///
///     var personalautomatic = new Azure.DesktopVirtualization.HostPool("personalautomatic", new()
///     {
///         Name = "personalautomatic",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         Type = "Personal",
///         PersonalDesktopAssignmentType = "Automatic",
///         LoadBalancerType = "BreadthFirst",
///     });
///
///     var remoteapp = new Azure.DesktopVirtualization.ApplicationGroup("remoteapp", new()
///     {
///         Name = "acctag",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         Type = "RemoteApp",
///         HostPoolId = pooledbreadthfirst.Id,
///         FriendlyName = "TestAppGroup",
///         Description = "Acceptance Test: An application group",
///     });
///
///     var desktopapp = new Azure.DesktopVirtualization.ApplicationGroup("desktopapp", new()
///     {
///         Name = "appgroupdesktop",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         Type = "Desktop",
///         HostPoolId = personalautomatic.Id,
///         FriendlyName = "TestAppGroup",
///         Description = "Acceptance Test: An application group",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/desktopvirtualization"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("rg-example-virtualdesktop"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		pooledbreadthfirst, err := desktopvirtualization.NewHostPool(ctx, "pooledbreadthfirst", &desktopvirtualization.HostPoolArgs{
/// 			Name:              pulumi.String("pooledbreadthfirst"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			Type:              pulumi.String("Pooled"),
/// 			LoadBalancerType:  pulumi.String("BreadthFirst"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		personalautomatic, err := desktopvirtualization.NewHostPool(ctx, "personalautomatic", &desktopvirtualization.HostPoolArgs{
/// 			Name:                          pulumi.String("personalautomatic"),
/// 			Location:                      example.Location,
/// 			ResourceGroupName:             example.Name,
/// 			Type:                          pulumi.String("Personal"),
/// 			PersonalDesktopAssignmentType: pulumi.String("Automatic"),
/// 			LoadBalancerType:              pulumi.String("BreadthFirst"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = desktopvirtualization.NewApplicationGroup(ctx, "remoteapp", &desktopvirtualization.ApplicationGroupArgs{
/// 			Name:              pulumi.String("acctag"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			Type:              pulumi.String("RemoteApp"),
/// 			HostPoolId:        pooledbreadthfirst.ID(),
/// 			FriendlyName:      pulumi.String("TestAppGroup"),
/// 			Description:       pulumi.String("Acceptance Test: An application group"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = desktopvirtualization.NewApplicationGroup(ctx, "desktopapp", &desktopvirtualization.ApplicationGroupArgs{
/// 			Name:              pulumi.String("appgroupdesktop"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			Type:              pulumi.String("Desktop"),
/// 			HostPoolId:        personalautomatic.ID(),
/// 			FriendlyName:      pulumi.String("TestAppGroup"),
/// 			Description:       pulumi.String("Acceptance Test: An application group"),
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
///   name     = "rg-example-virtualdesktop"
///   location = "West Europe"
/// }
/// resource "azure_desktopvirtualization_hostpool" "pooledbreadthfirst" {
///   name                = "pooledbreadthfirst"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   type                = "Pooled"
///   load_balancer_type  = "BreadthFirst"
/// }
/// resource "azure_desktopvirtualization_hostpool" "personalautomatic" {
///   name                             = "personalautomatic"
///   location                         = azure_core_resourcegroup.example.location
///   resource_group_name              = azure_core_resourcegroup.example.name
///   type                             = "Personal"
///   personal_desktop_assignment_type = "Automatic"
///   load_balancer_type               = "BreadthFirst"
/// }
/// resource "azure_desktopvirtualization_applicationgroup" "remoteapp" {
///   name                = "acctag"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   type                = "RemoteApp"
///   host_pool_id        = azure_desktopvirtualization_hostpool.pooledbreadthfirst.id
///   friendly_name       = "TestAppGroup"
///   description         = "Acceptance Test: An application group"
/// }
/// resource "azure_desktopvirtualization_applicationgroup" "desktopapp" {
///   name                = "appgroupdesktop"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   type                = "Desktop"
///   host_pool_id        = azure_desktopvirtualization_hostpool.personalautomatic.id
///   friendly_name       = "TestAppGroup"
///   description         = "Acceptance Test: An application group"
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
/// import com.pulumi.azure.desktopvirtualization.HostPool;
/// import com.pulumi.azure.desktopvirtualization.HostPoolArgs;
/// import com.pulumi.azure.desktopvirtualization.ApplicationGroup;
/// import com.pulumi.azure.desktopvirtualization.ApplicationGroupArgs;
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
///             .name("rg-example-virtualdesktop")
///             .location("West Europe")
///             .build());
///
///         var pooledbreadthfirst = new HostPool("pooledbreadthfirst", HostPoolArgs.builder()
///             .name("pooledbreadthfirst")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .type("Pooled")
///             .loadBalancerType("BreadthFirst")
///             .build());
///
///         var personalautomatic = new HostPool("personalautomatic", HostPoolArgs.builder()
///             .name("personalautomatic")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .type("Personal")
///             .personalDesktopAssignmentType("Automatic")
///             .loadBalancerType("BreadthFirst")
///             .build());
///
///         var remoteapp = new ApplicationGroup("remoteapp", ApplicationGroupArgs.builder()
///             .name("acctag")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .type("RemoteApp")
///             .hostPoolId(pooledbreadthfirst.id())
///             .friendlyName("TestAppGroup")
///             .description("Acceptance Test: An application group")
///             .build());
///
///         var desktopapp = new ApplicationGroup("desktopapp", ApplicationGroupArgs.builder()
///             .name("appgroupdesktop")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .type("Desktop")
///             .hostPoolId(personalautomatic.id())
///             .friendlyName("TestAppGroup")
///             .description("Acceptance Test: An application group")
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
///       name: rg-example-virtualdesktop
///       location: West Europe
///   pooledbreadthfirst:
///     type: azure:desktopvirtualization:HostPool
///     properties:
///       name: pooledbreadthfirst
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       type: Pooled
///       loadBalancerType: BreadthFirst
///   personalautomatic:
///     type: azure:desktopvirtualization:HostPool
///     properties:
///       name: personalautomatic
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       type: Personal
///       personalDesktopAssignmentType: Automatic
///       loadBalancerType: BreadthFirst
///   remoteapp:
///     type: azure:desktopvirtualization:ApplicationGroup
///     properties:
///       name: acctag
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       type: RemoteApp
///       hostPoolId: ${pooledbreadthfirst.id}
///       friendlyName: TestAppGroup
///       description: 'Acceptance Test: An application group'
///   desktopapp:
///     type: azure:desktopvirtualization:ApplicationGroup
///     properties:
///       name: appgroupdesktop
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       type: Desktop
///       hostPoolId: ${personalautomatic.id}
///       friendlyName: TestAppGroup
///       description: 'Acceptance Test: An application group'
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.DesktopVirtualization` - 2025-10-10
///
/// ## Import
///
/// Virtual Desktop Application Groups can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:desktopvirtualization/applicationGroup:ApplicationGroup example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myGroup1/providers/Microsoft.DesktopVirtualization/applicationGroups/myapplicationgroup
/// ```
class ApplicationGroup extends pulumi.CustomResource {
  /// Option to set the display name for the default sessionDesktop desktop when `type` is set to `Desktop`. A value here is mandatory for connections to the desktop using the Windows 365 portal. Without it the connection will hang at 'Loading Client'.
  late final pulumi.Output<String?> defaultDesktopDisplayName;
  /// Option to set a description for the Virtual Desktop Application Group.
  late final pulumi.Output<String?> description;
  /// Option to set a friendly name for the Virtual Desktop Application Group.
  late final pulumi.Output<String?> friendlyName;
  /// Resource ID for a Virtual Desktop Host Pool to associate with the Virtual Desktop Application Group. Changing the name forces a new resource to be created.
  late final pulumi.Output<String> hostPoolId;
  /// The location/region where the Virtual Desktop Application Group is located. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;
  /// The name of the Virtual Desktop Application Group. Changing the name forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The name of the resource group in which to create the Virtual Desktop Application Group. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Type of Virtual Desktop Application Group. Valid options are `RemoteApp` or `Desktop` application groups. Changing this forces a new resource to be created.
  late final pulumi.Output<String> type;

  /// Creates a new [ApplicationGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ApplicationGroup]. {@macro pulumi_desktopvirtualization_application_group_application_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ApplicationGroup(
    String name, {
    ApplicationGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:desktopvirtualization/applicationGroup:ApplicationGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    defaultDesktopDisplayName = registerOutput<String?>('defaultDesktopDisplayName');
    description = registerOutput<String?>('description');
    friendlyName = registerOutput<String?>('friendlyName');
    hostPoolId = registerOutput<String>('hostPoolId');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }

  /// Gets an existing [ApplicationGroup] resource's state with the given [name] and [id].
  static ApplicationGroup get(
    String name,
    pulumi.Input<String> id, {
    ApplicationGroupState? state,
  }) {
    return ApplicationGroup._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ApplicationGroup._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:desktopvirtualization/applicationGroup:ApplicationGroup',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    defaultDesktopDisplayName = registerOutput<String?>('defaultDesktopDisplayName');
    description = registerOutput<String?>('description');
    friendlyName = registerOutput<String?>('friendlyName');
    hostPoolId = registerOutput<String>('hostPoolId');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
