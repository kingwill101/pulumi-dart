import 'package:pulumi/pulumi.dart' as pulumi;
import 'iot_hub_certificate_args.dart';
import 'iot_hub_certificate_state.dart';

/// Manages an IotHub Device Provisioning Service Certificate.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
/// import * as std from "@pulumi/std";
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
/// const exampleIotHubCertificate = new azure.iot.IotHubCertificate("example", {
///     name: "example",
///     resourceGroupName: example.name,
///     iotDpsName: exampleIotHubDps.name,
///     certificateContent: std.filebase64({
///         input: "example.cer",
///     }).then(invoke => invoke.result),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
/// import pulumi_std as std
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
/// example_iot_hub_certificate = azure.iot.IotHubCertificate("example",
///     name="example",
///     resource_group_name=example.name,
///     iot_dps_name=example_iot_hub_dps.name,
///     certificate_content=std.filebase64(input="example.cer").result)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
/// using Std = Pulumi.Std;
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
///     var exampleIotHubCertificate = new Azure.Iot.IotHubCertificate("example", new()
///     {
///         Name = "example",
///         ResourceGroupName = example.Name,
///         IotDpsName = exampleIotHubDps.Name,
///         CertificateContent = Std.Filebase64.Invoke(new()
///         {
///             Input = "example.cer",
///         }).Apply(invoke => invoke.Result),
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
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
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
/// 		invokeFilebase64, err := std.Filebase64(ctx, &std.Filebase64Args{
/// 			Input: "example.cer",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = iot.NewIotHubCertificate(ctx, "example", &iot.IotHubCertificateArgs{
/// 			Name:               pulumi.String("example"),
/// 			ResourceGroupName:  example.Name,
/// 			IotDpsName:         exampleIotHubDps.Name,
/// 			CertificateContent: pulumi.String(invokeFilebase64.Result),
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
/// import com.pulumi.azure.iot.IotHubCertificate;
/// import com.pulumi.azure.iot.IotHubCertificateArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.Filebase64Args;
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
///         var exampleIotHubCertificate = new IotHubCertificate("exampleIotHubCertificate", IotHubCertificateArgs.builder()
///             .name("example")
///             .resourceGroupName(example.name())
///             .iotDpsName(exampleIotHubDps.name())
///             .certificateContent(StdFunctions.filebase64(Filebase64Args.builder()
///                 .input("example.cer")
///                 .build()).result())
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
///   exampleIotHubCertificate:
///     type: azure:iot:IotHubCertificate
///     name: example
///     properties:
///       name: example
///       resourceGroupName: ${example.name}
///       iotDpsName: ${exampleIotHubDps.name}
///       certificateContent:
///         fn::invoke:
///           function: std:filebase64
///           arguments:
///             input: example.cer
///           return: result
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
/// IoTHub Device Provisioning Service Certificates can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:iot/iotHubCertificate:IotHubCertificate example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.Devices/provisioningServices/example/certificates/example
/// ```
class IotHubCertificate extends pulumi.CustomResource {
  /// The Base-64 representation of the X509 leaf certificate .cer file or just a .pem file content.
  late final pulumi.Output<String> certificateContent;
  /// The name of the IoT Device Provisioning Service that this certificate will be attached to. Changing this forces a new resource to be created.
  late final pulumi.Output<String> iotDpsName;
  /// Specifies if the certificate is created in verified state. Defaults to `false`. Changing this forces a new resource to be created.
  late final pulumi.Output<bool?> isVerified;
  /// Specifies the name of the Iot Device Provisioning Service Certificate resource. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The name of the resource group under which the Iot Device Provisioning Service Certificate resource has to be created. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;

  /// Creates a new [IotHubCertificate].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [IotHubCertificate]. {@macro pulumi_iot_iot_hub_certificate_iot_hub_certificate_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  IotHubCertificate(
    String name, {
    IotHubCertificateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:iot/iotHubCertificate:IotHubCertificate',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.certificateContent = registerOutput<String>('certificateContent');
    this.iotDpsName = registerOutput<String>('iotDpsName');
    this.isVerified = registerOutput<bool?>('isVerified');
    this.name = registerOutput<String>('name');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
  }

  /// Gets an existing [IotHubCertificate] resource's state with the given [name] and [id].
  static IotHubCertificate get(
    String name,
    pulumi.Input<String> id, {
    IotHubCertificateState? state,
  }) {
    return IotHubCertificate._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  IotHubCertificate._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:iot/iotHubCertificate:IotHubCertificate',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.certificateContent = registerOutput<String>('certificateContent');
    this.iotDpsName = registerOutput<String>('iotDpsName');
    this.isVerified = registerOutput<bool?>('isVerified');
    this.name = registerOutput<String>('name');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
  }
}
