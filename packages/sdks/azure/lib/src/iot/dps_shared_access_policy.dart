import 'package:pulumi/pulumi.dart' as pulumi;
import 'dps_shared_access_policy_args.dart';
import 'dps_shared_access_policy_state.dart';

/// Manages an IotHub Device Provisioning Service Shared Access Policy
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
///     sku: {
///         name: "S1",
///         capacity: 1,
///     },
/// });
/// const exampleDpsSharedAccessPolicy = new azure.iot.DpsSharedAccessPolicy("example", {
///     name: "example",
///     resourceGroupName: example.name,
///     iothubDpsName: exampleIotHubDps.name,
///     enrollmentWrite: true,
///     enrollmentRead: true,
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
///     sku={
///         "name": "S1",
///         "capacity": 1,
///     })
/// example_dps_shared_access_policy = azure.iot.DpsSharedAccessPolicy("example",
///     name="example",
///     resource_group_name=example.name,
///     iothub_dps_name=example_iot_hub_dps.name,
///     enrollment_write=True,
///     enrollment_read=True)
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
///         Sku = new Azure.Iot.Inputs.IotHubDpsSkuArgs
///         {
///             Name = "S1",
///             Capacity = 1,
///         },
///     });
///
///     var exampleDpsSharedAccessPolicy = new Azure.Iot.DpsSharedAccessPolicy("example", new()
///     {
///         Name = "example",
///         ResourceGroupName = example.Name,
///         IothubDpsName = exampleIotHubDps.Name,
///         EnrollmentWrite = true,
///         EnrollmentRead = true,
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
/// 		exampleIotHubDps, err := iot.NewIotHubDps(ctx, "example", &iot.IotHubDpsArgs{
/// 			Name:              pulumi.String("example"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			Sku: &iot.IotHubDpsSkuArgs{
/// 				Name:     pulumi.String("S1"),
/// 				Capacity: pulumi.Int(1),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = iot.NewDpsSharedAccessPolicy(ctx, "example", &iot.DpsSharedAccessPolicyArgs{
/// 			Name:              pulumi.String("example"),
/// 			ResourceGroupName: example.Name,
/// 			IothubDpsName:     exampleIotHubDps.Name,
/// 			EnrollmentWrite:   pulumi.Bool(true),
/// 			EnrollmentRead:    pulumi.Bool(true),
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
/// import com.pulumi.azure.iot.DpsSharedAccessPolicy;
/// import com.pulumi.azure.iot.DpsSharedAccessPolicyArgs;
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
///             .sku(IotHubDpsSkuArgs.builder()
///                 .name("S1")
///                 .capacity(1)
///                 .build())
///             .build());
///
///         var exampleDpsSharedAccessPolicy = new DpsSharedAccessPolicy("exampleDpsSharedAccessPolicy", DpsSharedAccessPolicyArgs.builder()
///             .name("example")
///             .resourceGroupName(example.name())
///             .iothubDpsName(exampleIotHubDps.name())
///             .enrollmentWrite(true)
///             .enrollmentRead(true)
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
///       sku:
///         name: S1
///         capacity: '1'
///   exampleDpsSharedAccessPolicy:
///     type: azure:iot:DpsSharedAccessPolicy
///     name: example
///     properties:
///       name: example
///       resourceGroupName: ${example.name}
///       iothubDpsName: ${exampleIotHubDps.name}
///       enrollmentWrite: true
///       enrollmentRead: true
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Devices` - 2022-02-05
///
/// ## Import
///
/// IoTHub Device Provisioning Service Shared Access Policies can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:iot/dpsSharedAccessPolicy:DpsSharedAccessPolicy shared_access_policy1 /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.Devices/provisioningServices/dps1/keys/shared_access_policy1
/// ```
class DpsSharedAccessPolicy extends pulumi.CustomResource {
  /// Adds `EnrollmentRead` permission to this Shared Access Account. It allows read access to enrollment data.
  ///
  /// > **Note:** When `enrollment_read` is set to `true`, `registration_read` must also be set to true. This is a limitation of the Azure REST API
  late final pulumi.Output<bool?> enrollmentRead;
  /// Adds `EnrollmentWrite` permission to this Shared Access Account. It allows write access to enrollment data.
  ///
  /// > **Note:** When `registration_write` is set to `true`, `enrollment_read`, `registration_read`, and `registration_write` must also be set to true. This is a requirement of the Azure API.
  late final pulumi.Output<bool?> enrollmentWrite;
  /// The name of the IoT Hub Device Provisioning service to which this Shared Access Policy belongs. Changing this forces a new resource to be created.
  late final pulumi.Output<String> iothubDpsName;
  /// Specifies the name of the IotHub Shared Access Policy resource. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The primary connection string of the Shared Access Policy.
  late final pulumi.Output<String> primaryConnectionString;
  /// The primary key used to create the authentication token.
  late final pulumi.Output<String> primaryKey;
  /// Adds `RegistrationStatusRead` permission to this Shared Access Account. It allows read access to device registrations.
  late final pulumi.Output<bool?> registrationRead;
  /// Adds `RegistrationStatusWrite` permission to this Shared Access Account. It allows write access to device registrations.
  ///
  /// > **Note:** When `registration_write` is set to `true`, `registration_read` must also be set to true. This is a requirement of the Azure API.
  late final pulumi.Output<bool?> registrationWrite;
  /// The name of the resource group under which the IotHub Shared Access Policy resource has to be created. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// The secondary connection string of the Shared Access Policy.
  late final pulumi.Output<String> secondaryConnectionString;
  /// The secondary key used to create the authentication token.
  late final pulumi.Output<String> secondaryKey;
  /// Adds `ServiceConfig` permission to this Shared Access Account. It allows configuration of the Device Provisioning Service.
  ///
  /// > **Note:** At least one of `registration_read`, `registration_write`, `service_config`, `enrollment_read`, `enrollment_write` permissions must be set to `true`.
  late final pulumi.Output<bool?> serviceConfig;

  /// Creates a new [DpsSharedAccessPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DpsSharedAccessPolicy]. {@macro pulumi_iot_dps_shared_access_policy_dps_shared_access_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DpsSharedAccessPolicy(
    String name, {
    DpsSharedAccessPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:iot/dpsSharedAccessPolicy:DpsSharedAccessPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.enrollmentRead = registerOutput<bool?>('enrollmentRead');
    this.enrollmentWrite = registerOutput<bool?>('enrollmentWrite');
    this.iothubDpsName = registerOutput<String>('iothubDpsName');
    this.name = registerOutput<String>('name');
    this.primaryConnectionString = registerOutput<String>('primaryConnectionString');
    this.primaryKey = registerOutput<String>('primaryKey');
    this.registrationRead = registerOutput<bool?>('registrationRead');
    this.registrationWrite = registerOutput<bool?>('registrationWrite');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.secondaryConnectionString = registerOutput<String>('secondaryConnectionString');
    this.secondaryKey = registerOutput<String>('secondaryKey');
    this.serviceConfig = registerOutput<bool?>('serviceConfig');
  }

  /// Gets an existing [DpsSharedAccessPolicy] resource's state with the given [name] and [id].
  static DpsSharedAccessPolicy get(
    String name,
    pulumi.Input<String> id, {
    DpsSharedAccessPolicyState? state,
  }) {
    return DpsSharedAccessPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  DpsSharedAccessPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:iot/dpsSharedAccessPolicy:DpsSharedAccessPolicy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.enrollmentRead = registerOutput<bool?>('enrollmentRead');
    this.enrollmentWrite = registerOutput<bool?>('enrollmentWrite');
    this.iothubDpsName = registerOutput<String>('iothubDpsName');
    this.name = registerOutput<String>('name');
    this.primaryConnectionString = registerOutput<String>('primaryConnectionString');
    this.primaryKey = registerOutput<String>('primaryKey');
    this.registrationRead = registerOutput<bool?>('registrationRead');
    this.registrationWrite = registerOutput<bool?>('registrationWrite');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.secondaryConnectionString = registerOutput<String>('secondaryConnectionString');
    this.secondaryKey = registerOutput<String>('secondaryKey');
    this.serviceConfig = registerOutput<bool?>('serviceConfig');
  }
}
