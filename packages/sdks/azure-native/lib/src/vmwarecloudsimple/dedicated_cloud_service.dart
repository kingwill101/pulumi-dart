import 'package:pulumi/pulumi.dart' as pulumi;
import 'dedicated_cloud_service_args.dart';

/// Dedicated cloud service model
///
/// Uses Azure REST API version 2019-04-01. In version 2.x of the Azure Native provider, it used API version 2019-04-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### CreateDedicatedCloudService
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var dedicatedCloudService = new AzureNative.VMwareCloudSimple.DedicatedCloudService("dedicatedCloudService", new()
///     {
///         DedicatedCloudServiceName = "myService",
///         GatewaySubnet = "10.0.0.0",
///         Location = "westus",
///         ResourceGroupName = "myResourceGroup",
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
/// 	vmwarecloudsimple "github.com/pulumi/pulumi-azure-native-sdk/vmwarecloudsimple/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := vmwarecloudsimple.NewDedicatedCloudService(ctx, "dedicatedCloudService", &vmwarecloudsimple.DedicatedCloudServiceArgs{
/// 			DedicatedCloudServiceName: pulumi.String("myService"),
/// 			GatewaySubnet:             pulumi.String("10.0.0.0"),
/// 			Location:                  pulumi.String("westus"),
/// 			ResourceGroupName:         pulumi.String("myResourceGroup"),
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
/// import com.pulumi.azurenative.vmwarecloudsimple.DedicatedCloudService;
/// import com.pulumi.azurenative.vmwarecloudsimple.DedicatedCloudServiceArgs;
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
///         var dedicatedCloudService = new DedicatedCloudService("dedicatedCloudService", DedicatedCloudServiceArgs.builder()
///             .dedicatedCloudServiceName("myService")
///             .gatewaySubnet("10.0.0.0")
///             .location("westus")
///             .resourceGroupName("myResourceGroup")
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
/// const dedicatedCloudService = new azure_native.vmwarecloudsimple.DedicatedCloudService("dedicatedCloudService", {
///     dedicatedCloudServiceName: "myService",
///     gatewaySubnet: "10.0.0.0",
///     location: "westus",
///     resourceGroupName: "myResourceGroup",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// dedicated_cloud_service = azure_native.vmwarecloudsimple.DedicatedCloudService("dedicatedCloudService",
///     dedicated_cloud_service_name="myService",
///     gateway_subnet="10.0.0.0",
///     location="westus",
///     resource_group_name="myResourceGroup")
///
/// ```
///
/// ```yaml
/// resources:
///   dedicatedCloudService:
///     type: azure-native:vmwarecloudsimple:DedicatedCloudService
///     properties:
///       dedicatedCloudServiceName: myService
///       gatewaySubnet: 10.0.0.0
///       location: westus
///       resourceGroupName: myResourceGroup
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
/// $ pulumi import azure-native:vmwarecloudsimple:DedicatedCloudService myService /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.VMwareCloudSimple/dedicatedCloudServices/{dedicatedCloudServiceName}
/// ```
class DedicatedCloudService extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// gateway Subnet for the account. It will collect the subnet address and always treat it as /28
  late final pulumi.Output<String> gatewaySubnet;

  /// indicates whether account onboarded or not in a given region
  late final pulumi.Output<String> isAccountOnboarded;

  /// Azure region
  late final pulumi.Output<String> location;

  /// {dedicatedCloudServiceName}
  late final pulumi.Output<String> name;

  /// total nodes purchased
  late final pulumi.Output<int> nodes;

  /// link to a service management web portal
  late final pulumi.Output<String> serviceURL;

  /// The list of tags
  late final pulumi.Output<Map<String, String>?> tags;

  /// {resourceProviderNamespace}/{resourceType}
  late final pulumi.Output<String> type;

  /// Creates a new [DedicatedCloudService].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DedicatedCloudService]. {@macro pulumi_vmwarecloudsimple_dedicated_cloud_service_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DedicatedCloudService(
    String name, {
    DedicatedCloudServiceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:vmwarecloudsimple:DedicatedCloudService',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    gatewaySubnet = registerOutput<String>('gatewaySubnet');
    isAccountOnboarded = registerOutput<String>('isAccountOnboarded');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    nodes = registerOutput<int>('nodes');
    serviceURL = registerOutput<String>('serviceURL');
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
