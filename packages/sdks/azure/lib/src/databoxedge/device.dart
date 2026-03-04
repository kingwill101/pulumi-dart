import 'package:pulumi/pulumi.dart' as pulumi;
import 'device_args.dart';
import 'device_state.dart';

/// Manages a Databox Edge Device.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-databoxedge",
///     location: "West Europe",
/// });
/// const exampleDevice = new azure.databoxedge.Device("example", {
///     name: "example-device",
///     resourceGroupName: example.name,
///     location: example.location,
///     skuName: "EdgeP_Base-Standard",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-databoxedge",
///     location="West Europe")
/// example_device = azure.databoxedge.Device("example",
///     name="example-device",
///     resource_group_name=example.name,
///     location=example.location,
///     sku_name="EdgeP_Base-Standard")
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
///         Name = "example-databoxedge",
///         Location = "West Europe",
///     });
///
///     var exampleDevice = new Azure.DataboxEdge.Device("example", new()
///     {
///         Name = "example-device",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         SkuName = "EdgeP_Base-Standard",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/databoxedge"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-databoxedge"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = databoxedge.NewDevice(ctx, "example", &databoxedge.DeviceArgs{
/// 			Name:              pulumi.String("example-device"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			SkuName:           pulumi.String("EdgeP_Base-Standard"),
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
/// import com.pulumi.azure.databoxedge.Device;
/// import com.pulumi.azure.databoxedge.DeviceArgs;
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
///             .name("example-databoxedge")
///             .location("West Europe")
///             .build());
///
///         var exampleDevice = new Device("exampleDevice", DeviceArgs.builder()
///             .name("example-device")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .skuName("EdgeP_Base-Standard")
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
///       name: example-databoxedge
///       location: West Europe
///   exampleDevice:
///     type: azure:databoxedge:Device
///     name: example
///     properties:
///       name: example-device
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       skuName: EdgeP_Base-Standard
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.DataBoxEdge` - 2022-03-01
///
/// ## Import
///
/// Databox Edge Devices can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:databoxedge/device:Device example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.DataBoxEdge/dataBoxEdgeDevices/device1
/// ```
class Device extends pulumi.CustomResource {
  /// A `device_properties` block as defined below.
  late final pulumi.Output<List<Map<String, dynamic>>> deviceProperties;

  /// The Azure Region where the Databox Edge Device should exist. Changing this forces a new Databox Edge Device to be created.
  late final pulumi.Output<String> location;

  /// The name which should be used for this Databox Edge Device. Changing this forces a new Databox Edge Device to be created.
  late final pulumi.Output<String> name;

  /// The name of the Resource Group where the Databox Edge Device should exist. Changing this forces a new Databox Edge Device to be created.
  late final pulumi.Output<String> resourceGroupName;

  /// The `sku_name` is comprised of two segments separated by a hyphen (e.g. `TEA_1Node_UPS_Heater-Standard`). The first segment of the `sku_name` defines the `name` of the SKU, possible values are `Gateway`, `EdgeMR_Mini`, `EdgeP_Base`, `EdgeP_High`, `EdgePR_Base`, `EdgePR_Base_UPS`, `GPU`, `RCA_Large`, `RCA_Small`, `RDC`, `TCA_Large`, `TCA_Small`, `TDC`, `TEA_1Node`, `TEA_1Node_UPS`, `TEA_1Node_Heater`, `TEA_1Node_UPS_Heater`, `TEA_4Node_Heater`, `TEA_4Node_UPS_Heater` or `TMA`. The second segment defines the `tier` of the `sku_name`, possible values are `Standard`. For more information see the product documentation. Changing this forces a new Databox Edge Device to be created.
  late final pulumi.Output<String> skuName;

  /// A mapping of tags which should be assigned to the Databox Edge Device.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [Device].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Device]. {@macro pulumi_databoxedge_device_device_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Device(String name, {DeviceArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'azure:databoxedge/device:Device',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    deviceProperties = registerOutput<List<Map<String, dynamic>>>(
      'deviceProperties',
    );
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    skuName = registerOutput<String>('skuName');
    tags = registerOutput<Map<String, String>?>('tags');
  }

  /// Gets an existing [Device] resource's state with the given [name] and [id].
  static Device get(
    String name,
    pulumi.Input<String> id, {
    DeviceState? state,
  }) {
    return Device._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Device._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:databoxedge/device:Device',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    deviceProperties = registerOutput<List<Map<String, dynamic>>>(
      'deviceProperties',
    );
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    skuName = registerOutput<String>('skuName');
    tags = registerOutput<Map<String, String>?>('tags');
  }
}
