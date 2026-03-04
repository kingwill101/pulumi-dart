import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_args.dart';

/// The description of the Windows IoT Device Service.
///
/// Uses Azure REST API version 2019-06-01. In version 2.x of the Azure Native provider, it used API version 2019-06-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Service_Create
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var service = new AzureNative.WindowsIoT.Service("service", new()
///     {
///         AdminDomainName = "d.e.f",
///         BillingDomainName = "a.b.c",
///         DeviceName = "service4445",
///         Location = "East US",
///         Notes = "blah",
///         Quantity = 1000000,
///         ResourceGroupName = "res9101",
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	windowsiot "github.com/pulumi/pulumi-azure-native-sdk/windowsiot/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := windowsiot.NewService(ctx, "service", &windowsiot.ServiceArgs{
/// 			AdminDomainName:   pulumi.String("d.e.f"),
/// 			BillingDomainName: pulumi.String("a.b.c"),
/// 			DeviceName:        pulumi.String("service4445"),
/// 			Location:          pulumi.String("East US"),
/// 			Notes:             pulumi.String("blah"),
/// 			Quantity:          pulumi.Float64(1000000),
/// 			ResourceGroupName: pulumi.String("res9101"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.windowsiot.Service;
/// import com.pulumi.azurenative.windowsiot.ServiceArgs;
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
///         var service = new Service("service", ServiceArgs.builder()
///             .adminDomainName("d.e.f")
///             .billingDomainName("a.b.c")
///             .deviceName("service4445")
///             .location("East US")
///             .notes("blah")
///             .quantity(1000000.0)
///             .resourceGroupName("res9101")
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const service = new azure_native.windowsiot.Service("service", {
///     adminDomainName: "d.e.f",
///     billingDomainName: "a.b.c",
///     deviceName: "service4445",
///     location: "East US",
///     notes: "blah",
///     quantity: 1000000,
///     resourceGroupName: "res9101",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// service = azure_native.windowsiot.Service("service",
///     admin_domain_name="d.e.f",
///     billing_domain_name="a.b.c",
///     device_name="service4445",
///     location="East US",
///     notes="blah",
///     quantity=1000000,
///     resource_group_name="res9101")
///
/// ```
///
/// ```yaml
/// resources:
///   service:
///     type: azure-native:windowsiot:Service
///     properties:
///       adminDomainName: d.e.f
///       billingDomainName: a.b.c
///       deviceName: service4445
///       location: East US
///       notes: blah
///       quantity: 1e+06
///       resourceGroupName: res9101
///
/// ```
///
/// {{% /example %}}
/// {{% /examples %}}
///
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:windowsiot:Service myresource1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.WindowsIoT/deviceServices/{deviceName}
/// ```
class Service extends pulumi.CustomResource {
  /// Windows IoT Device Service OEM AAD domain
  late final pulumi.Output<String?> adminDomainName;

  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Windows IoT Device Service ODM AAD domain
  late final pulumi.Output<String?> billingDomainName;

  /// The Etag field is *not* required. If it is provided in the response body, it must also be provided as a header per the normal ETag convention.
  late final pulumi.Output<String?> etag;

  /// The Azure Region where the resource lives
  late final pulumi.Output<String?> location;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// Windows IoT Device Service notes.
  late final pulumi.Output<String?> notes;

  /// Windows IoT Device Service device allocation,
  late final pulumi.Output<double?> quantity;

  /// Windows IoT Device Service start date,
  late final pulumi.Output<String> startDate;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the resource.
  late final pulumi.Output<String> type;

  /// Creates a new [Service].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Service]. {@macro pulumi_windowsiot_service_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Service(
    String name, {
    ServiceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:windowsiot:Service',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    adminDomainName = registerOutput<String?>('adminDomainName');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    billingDomainName = registerOutput<String?>('billingDomainName');
    etag = registerOutput<String?>('etag');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    notes = registerOutput<String?>('notes');
    quantity = registerOutput<double?>('quantity');
    startDate = registerOutput<String>('startDate');
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
