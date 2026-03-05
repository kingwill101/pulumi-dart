import 'package:pulumi/pulumi.dart' as pulumi;
import 'shared_access_policy_args.dart';
import 'shared_access_policy_state.dart';

/// Manages an IotHub Shared Access Policy
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
///     name: "example",
///     resourceGroupName: example.name,
///     location: example.location,
///     sku: {
///         name: "S1",
///         capacity: 1,
///     },
/// });
/// const exampleSharedAccessPolicy = new azure.iot.SharedAccessPolicy("example", {
///     name: "example",
///     resourceGroupName: example.name,
///     iothubName: exampleIoTHub.name,
///     registryRead: true,
///     registryWrite: true,
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
///     name="example",
///     resource_group_name=example.name,
///     location=example.location,
///     sku={
///         "name": "S1",
///         "capacity": 1,
///     })
/// example_shared_access_policy = azure.iot.SharedAccessPolicy("example",
///     name="example",
///     resource_group_name=example.name,
///     iothub_name=example_io_t_hub.name,
///     registry_read=True,
///     registry_write=True)
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
///         Name = "example",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         Sku = new Azure.Iot.Inputs.IoTHubSkuArgs
///         {
///             Name = "S1",
///             Capacity = 1,
///         },
///     });
///
///     var exampleSharedAccessPolicy = new Azure.Iot.SharedAccessPolicy("example", new()
///     {
///         Name = "example",
///         ResourceGroupName = example.Name,
///         IothubName = exampleIoTHub.Name,
///         RegistryRead = true,
///         RegistryWrite = true,
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
/// 			Name:              pulumi.String("example"),
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
/// 		_, err = iot.NewSharedAccessPolicy(ctx, "example", &iot.SharedAccessPolicyArgs{
/// 			Name:              pulumi.String("example"),
/// 			ResourceGroupName: example.Name,
/// 			IothubName:        exampleIoTHub.Name,
/// 			RegistryRead:      pulumi.Bool(true),
/// 			RegistryWrite:     pulumi.Bool(true),
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
/// import com.pulumi.azure.iot.IoTHub;
/// import com.pulumi.azure.iot.IoTHubArgs;
/// import com.pulumi.azure.iot.inputs.IoTHubSkuArgs;
/// import com.pulumi.azure.iot.SharedAccessPolicy;
/// import com.pulumi.azure.iot.SharedAccessPolicyArgs;
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
///             .name("example")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .sku(IoTHubSkuArgs.builder()
///                 .name("S1")
///                 .capacity(1)
///                 .build())
///             .build());
///
///         var exampleSharedAccessPolicy = new SharedAccessPolicy("exampleSharedAccessPolicy", SharedAccessPolicyArgs.builder()
///             .name("example")
///             .resourceGroupName(example.name())
///             .iothubName(exampleIoTHub.name())
///             .registryRead(true)
///             .registryWrite(true)
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
///       name: example
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       sku:
///         name: S1
///         capacity: '1'
///   exampleSharedAccessPolicy:
///     type: azure:iot:SharedAccessPolicy
///     name: example
///     properties:
///       name: example
///       resourceGroupName: ${example.name}
///       iothubName: ${exampleIoTHub.name}
///       registryRead: true
///       registryWrite: true
/// ```
///
///
/// ## Import
///
/// IoTHub Shared Access Policies can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:iot/sharedAccessPolicy:SharedAccessPolicy shared_access_policy1 /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.Devices/iotHubs/hub1/iotHubKeys/shared_access_policy1
/// ```
class SharedAccessPolicy extends pulumi.CustomResource {
  /// Adds `DeviceConnect` permission to this Shared Access Account. It allows sending and receiving on the device-side endpoints.
  ///
  /// &gt; **Note:** At least one of `registry_read`, `registry_write`, `service_connect`, `device_connect` permissions must be set to `true`.
  late final pulumi.Output<bool?> deviceConnect;
  /// The name of the IoTHub to which this Shared Access Policy belongs. Changing this forces a new resource to be created.
  late final pulumi.Output<String> iothubName;
  /// Specifies the name of the IotHub Shared Access Policy resource. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The primary connection string of the Shared Access Policy.
  late final pulumi.Output<String> primaryConnectionString;
  /// The primary key used to create the authentication token.
  late final pulumi.Output<String> primaryKey;
  /// Adds `RegistryRead` permission to this Shared Access Account. It allows read access to the identity registry.
  late final pulumi.Output<bool?> registryRead;
  /// Adds `RegistryWrite` permission to this Shared Access Account. It allows write access to the identity registry.
  ///
  /// &gt; **Note:** When `registry_write` is set to `true`, `registry_read` must also be set to true. This is a limitation of the Azure REST API
  late final pulumi.Output<bool?> registryWrite;
  /// The name of the resource group under which the IotHub Shared Access Policy resource has to be created. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// The secondary connection string of the Shared Access Policy.
  late final pulumi.Output<String> secondaryConnectionString;
  /// The secondary key used to create the authentication token.
  late final pulumi.Output<String> secondaryKey;
  /// Adds `ServiceConnect` permission to this Shared Access Account. It allows sending and receiving on the cloud-side endpoints.
  late final pulumi.Output<bool?> serviceConnect;

  /// Creates a new [SharedAccessPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SharedAccessPolicy]. {@macro pulumi_iot_shared_access_policy_shared_access_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SharedAccessPolicy(
    String name, {
    SharedAccessPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:iot/sharedAccessPolicy:SharedAccessPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    deviceConnect = registerOutput<bool?>('deviceConnect');
    iothubName = registerOutput<String>('iothubName');
    this.name = registerOutput<String>('name');
    primaryConnectionString = registerOutput<String>('primaryConnectionString');
    primaryKey = registerOutput<String>('primaryKey');
    registryRead = registerOutput<bool?>('registryRead');
    registryWrite = registerOutput<bool?>('registryWrite');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    secondaryConnectionString = registerOutput<String>('secondaryConnectionString');
    secondaryKey = registerOutput<String>('secondaryKey');
    serviceConnect = registerOutput<bool?>('serviceConnect');
  }

  /// Gets an existing [SharedAccessPolicy] resource's state with the given [name] and [id].
  static SharedAccessPolicy get(
    String name,
    pulumi.Input<String> id, {
    SharedAccessPolicyState? state,
  }) {
    return SharedAccessPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  SharedAccessPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:iot/sharedAccessPolicy:SharedAccessPolicy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    deviceConnect = registerOutput<bool?>('deviceConnect');
    iothubName = registerOutput<String>('iothubName');
    this.name = registerOutput<String>('name');
    primaryConnectionString = registerOutput<String>('primaryConnectionString');
    primaryKey = registerOutput<String>('primaryKey');
    registryRead = registerOutput<bool?>('registryRead');
    registryWrite = registerOutput<bool?>('registryWrite');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    secondaryConnectionString = registerOutput<String>('secondaryConnectionString');
    secondaryKey = registerOutput<String>('secondaryKey');
    serviceConnect = registerOutput<bool?>('serviceConnect');
  }
}
