import 'package:pulumi/pulumi.dart' as pulumi;
import 'host_pool_args.dart';
import 'host_pool_scheduled_agent_updates.dart';
import 'host_pool_state.dart';

/// Manages a Virtual Desktop Host Pool.
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
/// const exampleHostPool = new azure.desktopvirtualization.HostPool("example", {
///     location: example.location,
///     resourceGroupName: example.name,
///     name: "pooleddepthfirst",
///     friendlyName: "pooleddepthfirst",
///     validateEnvironment: true,
///     startVmOnConnect: true,
///     customRdpProperties: "audiocapturemode:i:1;audiomode:i:0;",
///     description: "Acceptance Test: A pooled host pool - pooleddepthfirst",
///     type: "Pooled",
///     maximumSessionsAllowed: 50,
///     loadBalancerType: "DepthFirst",
///     scheduledAgentUpdates: {
///         enabled: true,
///         schedules: [{
///             dayOfWeek: "Saturday",
///             hourOfDay: 2,
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
/// example_host_pool = azure.desktopvirtualization.HostPool("example",
///     location=example.location,
///     resource_group_name=example.name,
///     name="pooleddepthfirst",
///     friendly_name="pooleddepthfirst",
///     validate_environment=True,
///     start_vm_on_connect=True,
///     custom_rdp_properties="audiocapturemode:i:1;audiomode:i:0;",
///     description="Acceptance Test: A pooled host pool - pooleddepthfirst",
///     type="Pooled",
///     maximum_sessions_allowed=50,
///     load_balancer_type="DepthFirst",
///     scheduled_agent_updates={
///         "enabled": True,
///         "schedules": [{
///             "day_of_week": "Saturday",
///             "hour_of_day": 2,
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
///     var exampleHostPool = new Azure.DesktopVirtualization.HostPool("example", new()
///     {
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         Name = "pooleddepthfirst",
///         FriendlyName = "pooleddepthfirst",
///         ValidateEnvironment = true,
///         StartVmOnConnect = true,
///         CustomRdpProperties = "audiocapturemode:i:1;audiomode:i:0;",
///         Description = "Acceptance Test: A pooled host pool - pooleddepthfirst",
///         Type = "Pooled",
///         MaximumSessionsAllowed = 50,
///         LoadBalancerType = "DepthFirst",
///         ScheduledAgentUpdates = new Azure.DesktopVirtualization.Inputs.HostPoolScheduledAgentUpdatesArgs
///         {
///             Enabled = true,
///             Schedules = new[]
///             {
///                 new Azure.DesktopVirtualization.Inputs.HostPoolScheduledAgentUpdatesScheduleArgs
///                 {
///                     DayOfWeek = "Saturday",
///                     HourOfDay = 2,
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/desktopvirtualization"
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
/// 		_, err = desktopvirtualization.NewHostPool(ctx, "example", &desktopvirtualization.HostPoolArgs{
/// 			Location:               example.Location,
/// 			ResourceGroupName:      example.Name,
/// 			Name:                   pulumi.String("pooleddepthfirst"),
/// 			FriendlyName:           pulumi.String("pooleddepthfirst"),
/// 			ValidateEnvironment:    pulumi.Bool(true),
/// 			StartVmOnConnect:       pulumi.Bool(true),
/// 			CustomRdpProperties:    pulumi.String("audiocapturemode:i:1;audiomode:i:0;"),
/// 			Description:            pulumi.String("Acceptance Test: A pooled host pool - pooleddepthfirst"),
/// 			Type:                   pulumi.String("Pooled"),
/// 			MaximumSessionsAllowed: pulumi.Int(50),
/// 			LoadBalancerType:       pulumi.String("DepthFirst"),
/// 			ScheduledAgentUpdates: &desktopvirtualization.HostPoolScheduledAgentUpdatesArgs{
/// 				Enabled: pulumi.Bool(true),
/// 				Schedules: desktopvirtualization.HostPoolScheduledAgentUpdatesScheduleArray{
/// 					&desktopvirtualization.HostPoolScheduledAgentUpdatesScheduleArgs{
/// 						DayOfWeek: pulumi.String("Saturday"),
/// 						HourOfDay: pulumi.Int(2),
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
/// import com.pulumi.azure.desktopvirtualization.HostPool;
/// import com.pulumi.azure.desktopvirtualization.HostPoolArgs;
/// import com.pulumi.azure.desktopvirtualization.inputs.HostPoolScheduledAgentUpdatesArgs;
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
///         var exampleHostPool = new HostPool("exampleHostPool", HostPoolArgs.builder()
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .name("pooleddepthfirst")
///             .friendlyName("pooleddepthfirst")
///             .validateEnvironment(true)
///             .startVmOnConnect(true)
///             .customRdpProperties("audiocapturemode:i:1;audiomode:i:0;")
///             .description("Acceptance Test: A pooled host pool - pooleddepthfirst")
///             .type("Pooled")
///             .maximumSessionsAllowed(50)
///             .loadBalancerType("DepthFirst")
///             .scheduledAgentUpdates(HostPoolScheduledAgentUpdatesArgs.builder()
///                 .enabled(true)
///                 .schedules(HostPoolScheduledAgentUpdatesScheduleArgs.builder()
///                     .dayOfWeek("Saturday")
///                     .hourOfDay(2)
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
///   exampleHostPool:
///     type: azure:desktopvirtualization:HostPool
///     name: example
///     properties:
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       name: pooleddepthfirst
///       friendlyName: pooleddepthfirst
///       validateEnvironment: true
///       startVmOnConnect: true
///       customRdpProperties: audiocapturemode:i:1;audiomode:i:0;
///       description: 'Acceptance Test: A pooled host pool - pooleddepthfirst'
///       type: Pooled
///       maximumSessionsAllowed: 50
///       loadBalancerType: DepthFirst
///       scheduledAgentUpdates:
///         enabled: true
///         schedules:
///           - dayOfWeek: Saturday
///             hourOfDay: 2
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.DesktopVirtualization` - 2024-04-03
///
/// ## Import
///
/// Virtual Desktop Host Pools can be imported using the `resource id`, e.g.
///
/// ```text
/// terraform import azurerm_virtual_desktop_host_pool.example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myGroup1/providers/Microsoft.DesktopVirtualization/hostPools/myhostpool
/// ```
class HostPool extends pulumi.CustomResource {
  /// A valid custom RDP properties string for the Virtual Desktop Host Pool, available properties can be [found in this article](https://docs.microsoft.com/windows-server/remote/remote-desktop-services/clients/rdp-files).
  late final pulumi.Output<String?> customRdpProperties;
  /// A description for the Virtual Desktop Host Pool.
  late final pulumi.Output<String?> description;
  /// A friendly name for the Virtual Desktop Host Pool.
  late final pulumi.Output<String?> friendlyName;
  /// `BreadthFirst` load balancing distributes new user sessions across all available session hosts in the host pool. Possible values are `BreadthFirst`, `DepthFirst` and `Persistent`.
  /// `DepthFirst` load balancing distributes new user sessions to an available session host with the highest number of connections but has not reached its maximum session limit threshold.
  /// `Persistent` should be used if the host pool type is `Personal`
  late final pulumi.Output<String> loadBalancerType;
  /// The location/region where the Virtual Desktop Host Pool is located. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;
  /// A valid integer value from 0 to 999999 for the maximum number of users that have concurrent sessions on a session host.
  /// Should only be set if the `type` of your Virtual Desktop Host Pool is `Pooled`.
  late final pulumi.Output<int?> maximumSessionsAllowed;
  /// The name of the Virtual Desktop Host Pool. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// `Automatic` assignment – The service will select an available host and assign it to an user. Possible values are `Automatic` and `Direct`. `Direct` Assignment – Admin selects a specific host to assign to an user. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** `personal_desktop_assignment_type` is required if the `type` of your Virtual Desktop Host Pool is `Personal`
  late final pulumi.Output<String?> personalDesktopAssignmentType;
  /// Option to specify the preferred Application Group type for the Virtual Desktop Host Pool. Valid options are `None`, `Desktop` or `RailApplications`. Default is `Desktop`.
  late final pulumi.Output<String?> preferredAppGroupType;
  /// Whether public network access is allowed for the Virtual Desktop Host Pool. Possible values are `Enabled`, `Disabled`, `EnabledForClientsOnly` and `EnabledForSessionHostsOnly`. Defaults to `Enabled`.
  late final pulumi.Output<String?> publicNetworkAccess;
  /// The name of the resource group in which to create the Virtual Desktop Host Pool. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// A `scheduled_agent_updates` block as defined below. This enables control of when Agent Updates will be applied to Session Hosts.
  late final pulumi.Output<HostPoolScheduledAgentUpdates?> scheduledAgentUpdates;
  /// Enables or disables the Start VM on Connection Feature. Defaults to `false`.
  late final pulumi.Output<bool?> startVmOnConnect;
  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the Virtual Desktop Host Pool. Valid options are `Personal` or `Pooled`. Changing the type forces a new resource to be created.
  late final pulumi.Output<String> type;
  /// Allows you to test service changes before they are deployed to production. Defaults to `false`.
  late final pulumi.Output<bool?> validateEnvironment;
  /// A VM template for session hosts configuration within hostpool. This is a JSON string.
  late final pulumi.Output<String?> vmTemplate;

  /// Creates a new [HostPool].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [HostPool]. {@macro pulumi_desktopvirtualization_host_pool_host_pool_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  HostPool(
    String name, {
    HostPoolArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:desktopvirtualization/hostPool:HostPool',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    customRdpProperties = registerOutput<String?>('customRdpProperties');
    description = registerOutput<String?>('description');
    friendlyName = registerOutput<String?>('friendlyName');
    loadBalancerType = registerOutput<String>('loadBalancerType');
    location = registerOutput<String>('location');
    maximumSessionsAllowed = registerOutput<int?>('maximumSessionsAllowed');
    this.name = registerOutput<String>('name');
    personalDesktopAssignmentType = registerOutput<String?>('personalDesktopAssignmentType');
    preferredAppGroupType = registerOutput<String?>('preferredAppGroupType');
    publicNetworkAccess = registerOutput<String?>('publicNetworkAccess');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    scheduledAgentUpdates = registerOutput<HostPoolScheduledAgentUpdates?>('scheduledAgentUpdates', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return HostPoolScheduledAgentUpdates.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    startVmOnConnect = registerOutput<bool?>('startVmOnConnect');
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
    validateEnvironment = registerOutput<bool?>('validateEnvironment');
    vmTemplate = registerOutput<String?>('vmTemplate');
  }

  /// Gets an existing [HostPool] resource's state with the given [name] and [id].
  static HostPool get(
    String name,
    pulumi.Input<String> id, {
    HostPoolState? state,
  }) {
    return HostPool._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  HostPool._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:desktopvirtualization/hostPool:HostPool',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    customRdpProperties = registerOutput<String?>('customRdpProperties');
    description = registerOutput<String?>('description');
    friendlyName = registerOutput<String?>('friendlyName');
    loadBalancerType = registerOutput<String>('loadBalancerType');
    location = registerOutput<String>('location');
    maximumSessionsAllowed = registerOutput<int?>('maximumSessionsAllowed');
    this.name = registerOutput<String>('name');
    personalDesktopAssignmentType = registerOutput<String?>('personalDesktopAssignmentType');
    preferredAppGroupType = registerOutput<String?>('preferredAppGroupType');
    publicNetworkAccess = registerOutput<String?>('publicNetworkAccess');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    scheduledAgentUpdates = registerOutput<HostPoolScheduledAgentUpdates?>('scheduledAgentUpdates', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return HostPoolScheduledAgentUpdates.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    startVmOnConnect = registerOutput<bool?>('startVmOnConnect');
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
    validateEnvironment = registerOutput<bool?>('validateEnvironment');
    vmTemplate = registerOutput<String?>('vmTemplate');
  }
}
