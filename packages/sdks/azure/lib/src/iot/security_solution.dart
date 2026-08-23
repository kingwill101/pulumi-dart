import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_solution_args.dart';
import 'security_solution_recommendations_enabled.dart';
import 'security_solution_state.dart';

/// Manages an iot security solution.
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
/// const exampleIoTHub = new azure.iot.IoTHub("example", {
///     name: "example-IoTHub",
///     resourceGroupName: example.name,
///     location: example.location,
///     sku: {
///         name: "S1",
///         capacity: 1,
///     },
/// });
/// const exampleSecuritySolution = new azure.iot.SecuritySolution("example", {
///     name: "example-Iot-Security-Solution",
///     resourceGroupName: example.name,
///     location: example.location,
///     displayName: "Iot Security Solution",
///     iothubIds: [exampleIoTHub.id],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_io_t_hub = azure.iot.IoTHub("example",
///     name="example-IoTHub",
///     resource_group_name=example.name,
///     location=example.location,
///     sku={
///         "name": "S1",
///         "capacity": 1,
///     })
/// example_security_solution = azure.iot.SecuritySolution("example",
///     name="example-Iot-Security-Solution",
///     resource_group_name=example.name,
///     location=example.location,
///     display_name="Iot Security Solution",
///     iothub_ids=[example_io_t_hub.id])
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
///     var exampleIoTHub = new Azure.Iot.IoTHub("example", new()
///     {
///         Name = "example-IoTHub",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         Sku = new Azure.Iot.Inputs.IoTHubSkuArgs
///         {
///             Name = "S1",
///             Capacity = 1,
///         },
///     });
///
///     var exampleSecuritySolution = new Azure.Iot.SecuritySolution("example", new()
///     {
///         Name = "example-Iot-Security-Solution",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         DisplayName = "Iot Security Solution",
///         IothubIds = new[]
///         {
///             exampleIoTHub.Id,
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/iot"
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
/// 		exampleIoTHub, err := iot.NewIoTHub(ctx, "example", &iot.IoTHubArgs{
/// 			Name:              pulumi.String("example-IoTHub"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			Sku: &iot.IoTHubSkuArgs{
/// 				Name:     pulumi.String("S1"),
/// 				Capacity: pulumi.Int(1),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = iot.NewSecuritySolution(ctx, "example", &iot.SecuritySolutionArgs{
/// 			Name:              pulumi.String("example-Iot-Security-Solution"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			DisplayName:       pulumi.String("Iot Security Solution"),
/// 			IothubIds: pulumi.StringArray{
/// 				exampleIoTHub.ID(),
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
/// resource "azure_iot_iothub" "example" {
///   name                = "example-IoTHub"
///   resource_group_name = azure_core_resourcegroup.example.name
///   location            = azure_core_resourcegroup.example.location
///   sku = {
///     name     = "S1"
///     capacity = "1"
///   }
/// }
/// resource "azure_iot_securitysolution" "example" {
///   name                = "example-Iot-Security-Solution"
///   resource_group_name = azure_core_resourcegroup.example.name
///   location            = azure_core_resourcegroup.example.location
///   display_name        = "Iot Security Solution"
///   iothub_ids          = [azure_iot_iothub.example.id]
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
/// import com.pulumi.azure.iot.IoTHub;
/// import com.pulumi.azure.iot.IoTHubArgs;
/// import com.pulumi.azure.iot.inputs.IoTHubSkuArgs;
/// import com.pulumi.azure.iot.SecuritySolution;
/// import com.pulumi.azure.iot.SecuritySolutionArgs;
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
///         var exampleIoTHub = new IoTHub("exampleIoTHub", IoTHubArgs.builder()
///             .name("example-IoTHub")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .sku(IoTHubSkuArgs.builder()
///                 .name("S1")
///                 .capacity(1)
///                 .build())
///             .build());
///
///         var exampleSecuritySolution = new SecuritySolution("exampleSecuritySolution", SecuritySolutionArgs.builder()
///             .name("example-Iot-Security-Solution")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .displayName("Iot Security Solution")
///             .iothubIds(exampleIoTHub.id())
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
///   exampleIoTHub:
///     type: azure:iot:IoTHub
///     name: example
///     properties:
///       name: example-IoTHub
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       sku:
///         name: S1
///         capacity: '1'
///   exampleSecuritySolution:
///     type: azure:iot:SecuritySolution
///     name: example
///     properties:
///       name: example-Iot-Security-Solution
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       displayName: Iot Security Solution
///       iothubIds:
///         - ${exampleIoTHub.id}
/// ```
///
///
/// ## Import
///
/// Iot Security Solution can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:iot/securitySolution:SecuritySolution example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resGroup1/providers/Microsoft.Security/iotSecuritySolutions/solution1
/// ```
class SecuritySolution extends pulumi.CustomResource {
  /// A `additionalWorkspace` block as defined below.
  late final pulumi.Output<List<Map<String, dynamic>>?> additionalWorkspaces;
  /// A list of disabled data sources for the Iot Security Solution. Possible value is `TwinData`.
  late final pulumi.Output<List<String>?> disabledDataSources;
  /// Specifies the Display Name for this Iot Security Solution.
  late final pulumi.Output<String> displayName;
  /// Is the Iot Security Solution enabled? Defaults to `true`.
  late final pulumi.Output<bool?> enabled;
  /// A list of data which is to exported to analytic workspace. Valid values include `RawEvents`.
  late final pulumi.Output<List<String>?> eventsToExports;
  /// Specifies the IoT Hub resource IDs to which this Iot Security Solution is applied.
  late final pulumi.Output<List<String>> iothubIds;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;
  /// Specifies the Log Analytics Workspace ID to which the security data will be sent.
  late final pulumi.Output<String?> logAnalyticsWorkspaceId;
  /// Should IP addressed be unmasked in the log? Defaults to `false`.
  late final pulumi.Output<bool?> logUnmaskedIpsEnabled;
  /// Specifies the name of the Iot Security Solution. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// An Azure Resource Graph query used to set the resources monitored.
  late final pulumi.Output<String> queryForResources;
  /// A list of subscription Ids on which the user defined resources query should be executed.
  late final pulumi.Output<List<String>> querySubscriptionIds;
  /// A `recommendationsEnabled` block of options to enable or disable as defined below.
  late final pulumi.Output<SecuritySolutionRecommendationsEnabled> recommendationsEnabled;
  /// Specifies the name of the resource group in which to create the Iot Security Solution. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [SecuritySolution].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SecuritySolution]. {@macro pulumi_iot_security_solution_security_solution_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SecuritySolution(
    String name, {
    SecuritySolutionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:iot/securitySolution:SecuritySolution',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    additionalWorkspaces = registerOutput<List<Map<String, dynamic>>?>('additionalWorkspaces');
    disabledDataSources = registerOutput<List<String>?>('disabledDataSources');
    displayName = registerOutput<String>('displayName');
    enabled = registerOutput<bool?>('enabled');
    eventsToExports = registerOutput<List<String>?>('eventsToExports');
    iothubIds = registerOutput<List<String>>('iothubIds');
    location = registerOutput<String>('location');
    logAnalyticsWorkspaceId = registerOutput<String?>('logAnalyticsWorkspaceId');
    logUnmaskedIpsEnabled = registerOutput<bool?>('logUnmaskedIpsEnabled');
    this.name = registerOutput<String>('name');
    queryForResources = registerOutput<String>('queryForResources');
    querySubscriptionIds = registerOutput<List<String>>('querySubscriptionIds');
    recommendationsEnabled = registerOutput<SecuritySolutionRecommendationsEnabled>('recommendationsEnabled', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SecuritySolutionRecommendationsEnabled.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    resourceGroupName = registerOutput<String>('resourceGroupName');
    tags = registerOutput<Map<String, String>?>('tags');
  }

  /// Gets an existing [SecuritySolution] resource's state with the given [name] and [id].
  static SecuritySolution get(
    String name,
    pulumi.Input<String> id, {
    SecuritySolutionState? state,
  }) {
    return SecuritySolution._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  SecuritySolution._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:iot/securitySolution:SecuritySolution',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    additionalWorkspaces = registerOutput<List<Map<String, dynamic>>?>('additionalWorkspaces');
    disabledDataSources = registerOutput<List<String>?>('disabledDataSources');
    displayName = registerOutput<String>('displayName');
    enabled = registerOutput<bool?>('enabled');
    eventsToExports = registerOutput<List<String>?>('eventsToExports');
    iothubIds = registerOutput<List<String>>('iothubIds');
    location = registerOutput<String>('location');
    logAnalyticsWorkspaceId = registerOutput<String?>('logAnalyticsWorkspaceId');
    logUnmaskedIpsEnabled = registerOutput<bool?>('logUnmaskedIpsEnabled');
    this.name = registerOutput<String>('name');
    queryForResources = registerOutput<String>('queryForResources');
    querySubscriptionIds = registerOutput<List<String>>('querySubscriptionIds');
    recommendationsEnabled = registerOutput<SecuritySolutionRecommendationsEnabled>('recommendationsEnabled', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SecuritySolutionRecommendationsEnabled.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    resourceGroupName = registerOutput<String>('resourceGroupName');
    tags = registerOutput<Map<String, String>?>('tags');
  }
}
