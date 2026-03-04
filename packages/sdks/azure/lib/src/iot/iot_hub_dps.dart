import 'package:pulumi/pulumi.dart' as pulumi;
import 'iot_hub_dps_args.dart';
import 'iot_hub_dps_sku.dart';
import 'iot_hub_dps_state.dart';

/// Manages an IotHub Device Provisioning Service.
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
/// const exampleIotHubDps = new azure.iot.IotHubDps("example", {
///     name: "example",
///     resourceGroupName: example.name,
///     location: example.location,
///     allocationPolicy: "Hashed",
///     sku: {
///         name: "S1",
///         capacity: 1,
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
/// example_iot_hub_dps = azure.iot.IotHubDps("example",
///     name="example",
///     resource_group_name=example.name,
///     location=example.location,
///     allocation_policy="Hashed",
///     sku={
///         "name": "S1",
///         "capacity": 1,
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
///     var exampleIotHubDps = new Azure.Iot.IotHubDps("example", new()
///     {
///         Name = "example",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         AllocationPolicy = "Hashed",
///         Sku = new Azure.Iot.Inputs.IotHubDpsSkuArgs
///         {
///             Name = "S1",
///             Capacity = 1,
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
/// 		_, err = iot.NewIotHubDps(ctx, "example", &iot.IotHubDpsArgs{
/// 			Name:              pulumi.String("example"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			AllocationPolicy:  pulumi.String("Hashed"),
/// 			Sku: &iot.IotHubDpsSkuArgs{
/// 				Name:     pulumi.String("S1"),
/// 				Capacity: pulumi.Int(1),
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
/// import com.pulumi.azure.iot.IotHubDps;
/// import com.pulumi.azure.iot.IotHubDpsArgs;
/// import com.pulumi.azure.iot.inputs.IotHubDpsSkuArgs;
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
///         var exampleIotHubDps = new IotHubDps("exampleIotHubDps", IotHubDpsArgs.builder()
///             .name("example")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .allocationPolicy("Hashed")
///             .sku(IotHubDpsSkuArgs.builder()
///                 .name("S1")
///                 .capacity(1)
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
///   exampleIotHubDps:
///     type: azure:iot:IotHubDps
///     name: example
///     properties:
///       name: example
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       allocationPolicy: Hashed
///       sku:
///         name: S1
///         capacity: '1'
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Devices` - 2022-02-05
///
/// ## Import
///
/// IoT Device Provisioning Service can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:iot/iotHubDps:IotHubDps example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.Devices/provisioningServices/example
/// ```
class IotHubDps extends pulumi.CustomResource {
  /// The allocation policy of the IoT Device Provisioning Service (`Hashed`, `GeoLatency` or `Static`). Defaults to `Hashed`.
  late final pulumi.Output<String?> allocationPolicy;

  /// Specifies if the IoT Device Provisioning Service has data residency enabled, removing the cross geo-pair disaster recovery. Defaults to `false`. Changing this forces a new resource to be created.
  late final pulumi.Output<bool?> dataResidencyEnabled;

  /// The device endpoint of the IoT Device Provisioning Service.
  late final pulumi.Output<String> deviceProvisioningHostName;

  /// The unique identifier of the IoT Device Provisioning Service.
  late final pulumi.Output<String> idScope;

  /// An `ip_filter_rule` block as defined below.
  late final pulumi.Output<List<Map<String, dynamic>>?> ipFilterRules;

  /// A `linked_hub` block as defined below.
  late final pulumi.Output<List<Map<String, dynamic>>?> linkedHubs;

  /// Specifies the supported Azure location where the resource has to be created. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;

  /// Specifies the name of the Iot Device Provisioning Service resource. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;

  /// Whether requests from Public Network are allowed. Defaults to `true`.
  late final pulumi.Output<bool?> publicNetworkAccessEnabled;

  /// The name of the resource group under which the Iot Device Provisioning Service resource has to be created. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;

  /// The service endpoint of the IoT Device Provisioning Service.
  late final pulumi.Output<String> serviceOperationsHostName;

  /// A `sku` block as defined below.
  late final pulumi.Output<IotHubDpsSku> sku;

  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [IotHubDps].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [IotHubDps]. {@macro pulumi_iot_iot_hub_dps_iot_hub_dps_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  IotHubDps(
    String name, {
    IotHubDpsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:iot/iotHubDps:IotHubDps',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    allocationPolicy = registerOutput<String?>('allocationPolicy');
    dataResidencyEnabled = registerOutput<bool?>('dataResidencyEnabled');
    deviceProvisioningHostName = registerOutput<String>(
      'deviceProvisioningHostName',
    );
    idScope = registerOutput<String>('idScope');
    ipFilterRules = registerOutput<List<Map<String, dynamic>>?>(
      'ipFilterRules',
    );
    linkedHubs = registerOutput<List<Map<String, dynamic>>?>('linkedHubs');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    publicNetworkAccessEnabled = registerOutput<bool?>(
      'publicNetworkAccessEnabled',
    );
    resourceGroupName = registerOutput<String>('resourceGroupName');
    serviceOperationsHostName = registerOutput<String>(
      'serviceOperationsHostName',
    );
    sku = registerOutput<IotHubDpsSku>('sku');
    tags = registerOutput<Map<String, String>?>('tags');
  }

  /// Gets an existing [IotHubDps] resource's state with the given [name] and [id].
  static IotHubDps get(
    String name,
    pulumi.Input<String> id, {
    IotHubDpsState? state,
  }) {
    return IotHubDps._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  IotHubDps._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:iot/iotHubDps:IotHubDps',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    allocationPolicy = registerOutput<String?>('allocationPolicy');
    dataResidencyEnabled = registerOutput<bool?>('dataResidencyEnabled');
    deviceProvisioningHostName = registerOutput<String>(
      'deviceProvisioningHostName',
    );
    idScope = registerOutput<String>('idScope');
    ipFilterRules = registerOutput<List<Map<String, dynamic>>?>(
      'ipFilterRules',
    );
    linkedHubs = registerOutput<List<Map<String, dynamic>>?>('linkedHubs');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    publicNetworkAccessEnabled = registerOutput<bool?>(
      'publicNetworkAccessEnabled',
    );
    resourceGroupName = registerOutput<String>('resourceGroupName');
    serviceOperationsHostName = registerOutput<String>(
      'serviceOperationsHostName',
    );
    sku = registerOutput<IotHubDpsSku>('sku');
    tags = registerOutput<Map<String, String>?>('tags');
  }
}
