import 'package:pulumi/pulumi.dart' as pulumi;
import 'frontends_interface_args.dart';
import 'system_data_response.dart';

/// Frontend Sub Resource of Traffic Controller.
///
/// Uses Azure REST API version 2025-01-01. In version 2.x of the Azure Native provider, it used API version 2023-05-01-preview.
///
/// Other available API versions: 2023-05-01-preview, 2023-11-01, 2024-05-01-preview, 2025-03-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native servicenetworking [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Put Frontend
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var frontendsInterface = new AzureNative.ServiceNetworking.FrontendsInterface("frontendsInterface", new()
///     {
///         FrontendName = "fe1",
///         Location = "NorthCentralUS",
///         ResourceGroupName = "rg1",
///         TrafficControllerName = "tc1",
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
/// 	servicenetworking "github.com/pulumi/pulumi-azure-native-sdk/servicenetworking/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := servicenetworking.NewFrontendsInterface(ctx, "frontendsInterface", &servicenetworking.FrontendsInterfaceArgs{
/// 			FrontendName:          pulumi.String("fe1"),
/// 			Location:              pulumi.String("NorthCentralUS"),
/// 			ResourceGroupName:     pulumi.String("rg1"),
/// 			TrafficControllerName: pulumi.String("tc1"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_servicenetworking_frontendsinterface" "frontendsInterface" {
///   frontend_name           = "fe1"
///   location                = "NorthCentralUS"
///   resource_group_name     = "rg1"
///   traffic_controller_name = "tc1"
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
/// import com.pulumi.azurenative.servicenetworking.FrontendsInterface;
/// import com.pulumi.azurenative.servicenetworking.FrontendsInterfaceArgs;
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
///         var frontendsInterface = new FrontendsInterface("frontendsInterface", FrontendsInterfaceArgs.builder()
///             .frontendName("fe1")
///             .location("NorthCentralUS")
///             .resourceGroupName("rg1")
///             .trafficControllerName("tc1")
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
/// const frontendsInterface = new azure_native.servicenetworking.FrontendsInterface("frontendsInterface", {
///     frontendName: "fe1",
///     location: "NorthCentralUS",
///     resourceGroupName: "rg1",
///     trafficControllerName: "tc1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// frontends_interface = azure_native.servicenetworking.FrontendsInterface("frontendsInterface",
///     frontend_name="fe1",
///     location="NorthCentralUS",
///     resource_group_name="rg1",
///     traffic_controller_name="tc1")
///
/// ```
///
/// ```yaml
/// resources:
///   frontendsInterface:
///     type: azure-native:servicenetworking:FrontendsInterface
///     properties:
///       frontendName: fe1
///       location: NorthCentralUS
///       resourceGroupName: rg1
///       trafficControllerName: tc1
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
/// $ pulumi import azure-native:servicenetworking:FrontendsInterface fe1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ServiceNetworking/trafficControllers/{trafficControllerName}/frontends/{frontendName}
/// ```
class FrontendsInterface extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The Fully Qualified Domain Name of the DNS record associated to a Traffic Controller frontend.
  late final pulumi.Output<String> fqdn;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Provisioning State of Traffic Controller Frontend Resource
  late final pulumi.Output<String> provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [FrontendsInterface].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FrontendsInterface]. {@macro pulumi_servicenetworking_frontends_interface_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FrontendsInterface(
    String name, {
    FrontendsInterfaceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:servicenetworking:FrontendsInterface',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    fqdn = registerOutput<String>('fqdn');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [FrontendsInterface] resource.
  FrontendsInterface.reference(String urn)
    : super(
        'azure-native:servicenetworking:FrontendsInterface',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    fqdn = registerOutput<String>('fqdn');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }
}
