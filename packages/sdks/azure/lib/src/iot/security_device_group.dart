import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_device_group_allow_rule.dart';
import 'security_device_group_args.dart';
import 'security_device_group_state.dart';

/// Manages a Iot Security Device Group.
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
/// const exampleSecurityDeviceGroup = new azure.iot.SecurityDeviceGroup("example", {
///     name: "example-device-security-group",
///     iothubId: exampleIoTHub.id,
///     allowRule: {
///         connectionToIpsNotAlloweds: ["10.0.0.0/24"],
///     },
///     rangeRules: [{
///         type: "ActiveConnectionsNotInAllowedRange",
///         min: 0,
///         max: 30,
///         duration: "PT5M",
///     }],
/// }, {
///     dependsOn: [exampleSecuritySolution],
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
/// example_security_device_group = azure.iot.SecurityDeviceGroup("example",
///     name="example-device-security-group",
///     iothub_id=example_io_t_hub.id,
///     allow_rule={
///         "connection_to_ips_not_alloweds": ["10.0.0.0/24"],
///     },
///     range_rules=[{
///         "type": "ActiveConnectionsNotInAllowedRange",
///         "min": 0,
///         "max": 30,
///         "duration": "PT5M",
///     }],
///     opts = pulumi.ResourceOptions(depends_on=[example_security_solution]))
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
///     var exampleSecurityDeviceGroup = new Azure.Iot.SecurityDeviceGroup("example", new()
///     {
///         Name = "example-device-security-group",
///         IothubId = exampleIoTHub.Id,
///         AllowRule = new Azure.Iot.Inputs.SecurityDeviceGroupAllowRuleArgs
///         {
///             ConnectionToIpsNotAlloweds = new[]
///             {
///                 "10.0.0.0/24",
///             },
///         },
///         RangeRules = new[]
///         {
///             new Azure.Iot.Inputs.SecurityDeviceGroupRangeRuleArgs
///             {
///                 Type = "ActiveConnectionsNotInAllowedRange",
///                 Min = 0,
///                 Max = 30,
///                 Duration = "PT5M",
///             },
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             exampleSecuritySolution,
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
/// 		exampleSecuritySolution, err := iot.NewSecuritySolution(ctx, "example", &iot.SecuritySolutionArgs{
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
/// 		_, err = iot.NewSecurityDeviceGroup(ctx, "example", &iot.SecurityDeviceGroupArgs{
/// 			Name:     pulumi.String("example-device-security-group"),
/// 			IothubId: exampleIoTHub.ID(),
/// 			AllowRule: &iot.SecurityDeviceGroupAllowRuleArgs{
/// 				ConnectionToIpsNotAlloweds: pulumi.StringArray{
/// 					pulumi.String("10.0.0.0/24"),
/// 				},
/// 			},
/// 			RangeRules: iot.SecurityDeviceGroupRangeRuleArray{
/// 				&iot.SecurityDeviceGroupRangeRuleArgs{
/// 					Type:     pulumi.String("ActiveConnectionsNotInAllowedRange"),
/// 					Min:      pulumi.Int(0),
/// 					Max:      pulumi.Int(30),
/// 					Duration: pulumi.String("PT5M"),
/// 				},
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			exampleSecuritySolution,
/// 		}))
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
/// import com.pulumi.azure.iot.IoTHub;
/// import com.pulumi.azure.iot.IoTHubArgs;
/// import com.pulumi.azure.iot.inputs.IoTHubSkuArgs;
/// import com.pulumi.azure.iot.SecuritySolution;
/// import com.pulumi.azure.iot.SecuritySolutionArgs;
/// import com.pulumi.azure.iot.SecurityDeviceGroup;
/// import com.pulumi.azure.iot.SecurityDeviceGroupArgs;
/// import com.pulumi.azure.iot.inputs.SecurityDeviceGroupAllowRuleArgs;
/// import com.pulumi.azure.iot.inputs.SecurityDeviceGroupRangeRuleArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var exampleSecurityDeviceGroup = new SecurityDeviceGroup("exampleSecurityDeviceGroup", SecurityDeviceGroupArgs.builder()
///             .name("example-device-security-group")
///             .iothubId(exampleIoTHub.id())
///             .allowRule(SecurityDeviceGroupAllowRuleArgs.builder()
///                 .connectionToIpsNotAlloweds("10.0.0.0/24")
///                 .build())
///             .rangeRules(SecurityDeviceGroupRangeRuleArgs.builder()
///                 .type("ActiveConnectionsNotInAllowedRange")
///                 .min(0)
///                 .max(30)
///                 .duration("PT5M")
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(exampleSecuritySolution)
///                 .build());
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
///   exampleSecurityDeviceGroup:
///     type: azure:iot:SecurityDeviceGroup
///     name: example
///     properties:
///       name: example-device-security-group
///       iothubId: ${exampleIoTHub.id}
///       allowRule:
///         connectionToIpsNotAlloweds:
///           - 10.0.0.0/24
///       rangeRules:
///         - type: ActiveConnectionsNotInAllowedRange
///           min: 0
///           max: 30
///           duration: PT5M
///     options:
///       dependsOn:
///         - ${exampleSecuritySolution}
/// ```
///
///
/// ## Import
///
/// Iot Security Device Group can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:iot/securityDeviceGroup:SecurityDeviceGroup example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resGroup1/providers/Microsoft.Devices/iotHubs/hub1/providers/Microsoft.Security/deviceSecurityGroups/group1
/// ```
class SecurityDeviceGroup extends pulumi.CustomResource {
  /// an `allow_rule` blocks as defined below.
  late final pulumi.Output<SecurityDeviceGroupAllowRule?> allowRule;

  /// The ID of the IoT Hub which to link the Security Device Group to. Changing this forces a new resource to be created.
  late final pulumi.Output<String> iothubId;

  /// Specifies the name of the Device Security Group. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;

  /// One or more `range_rule` blocks as defined below.
  late final pulumi.Output<List<Map<String, dynamic>>?> rangeRules;

  /// Creates a new [SecurityDeviceGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SecurityDeviceGroup]. {@macro pulumi_iot_security_device_group_security_device_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SecurityDeviceGroup(
    String name, {
    SecurityDeviceGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:iot/securityDeviceGroup:SecurityDeviceGroup',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    allowRule = registerOutput<SecurityDeviceGroupAllowRule?>('allowRule');
    iothubId = registerOutput<String>('iothubId');
    this.name = registerOutput<String>('name');
    rangeRules = registerOutput<List<Map<String, dynamic>>?>('rangeRules');
  }

  /// Gets an existing [SecurityDeviceGroup] resource's state with the given [name] and [id].
  static SecurityDeviceGroup get(
    String name,
    pulumi.Input<String> id, {
    SecurityDeviceGroupState? state,
  }) {
    return SecurityDeviceGroup._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  SecurityDeviceGroup._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:iot/securityDeviceGroup:SecurityDeviceGroup',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    allowRule = registerOutput<SecurityDeviceGroupAllowRule?>('allowRule');
    iothubId = registerOutput<String>('iothubId');
    this.name = registerOutput<String>('name');
    rangeRules = registerOutput<List<Map<String, dynamic>>?>('rangeRules');
  }
}
