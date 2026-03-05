import 'package:pulumi/pulumi.dart' as pulumi;
import 'extended_location_response.dart';
import 'system_data_response.dart';
import 'vmm_server_args.dart';
import 'vmmserver_properties_response_credentials.dart';

/// The VmmServers resource definition.
///
/// Uses Azure REST API version 2023-04-01-preview. In version 2.x of the Azure Native provider, it used API version 2022-05-21-preview.
///
/// Other available API versions: 2022-05-21-preview, 2023-10-07, 2024-06-01, 2025-03-13. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native scvmm [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### CreateVMMServer
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var vmmServer = new AzureNative.ScVmm.VmmServer("vmmServer", new()
///     {
///         Credentials = new AzureNative.ScVmm.Inputs.VMMServerPropertiesCredentialsArgs
///         {
///             Password = "password",
///             Username = "testuser",
///         },
///         ExtendedLocation = new AzureNative.ScVmm.Inputs.ExtendedLocationArgs
///         {
///             Name = "/subscriptions/a5015e1c-867f-4533-8541-85cd470d0cfb/resourceGroups/demoRG/providers/Microsoft.Arc/customLocations/contoso",
///             Type = "customLocation",
///         },
///         Fqdn = "VMM.contoso.com",
///         Location = "East US",
///         Port = 1234,
///         ResourceGroupName = "testrg",
///         VmmServerName = "ContosoVMMServer",
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
/// 	scvmm "github.com/pulumi/pulumi-azure-native-sdk/scvmm/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := scvmm.NewVmmServer(ctx, "vmmServer", &scvmm.VmmServerArgs{
/// 			Credentials: &scvmm.VMMServerPropertiesCredentialsArgs{
/// 				Password: pulumi.String("password"),
/// 				Username: pulumi.String("testuser"),
/// 			},
/// 			ExtendedLocation: &scvmm.ExtendedLocationArgs{
/// 				Name: pulumi.String("/subscriptions/a5015e1c-867f-4533-8541-85cd470d0cfb/resourceGroups/demoRG/providers/Microsoft.Arc/customLocations/contoso"),
/// 				Type: pulumi.String("customLocation"),
/// 			},
/// 			Fqdn:              pulumi.String("VMM.contoso.com"),
/// 			Location:          pulumi.String("East US"),
/// 			Port:              pulumi.Int(1234),
/// 			ResourceGroupName: pulumi.String("testrg"),
/// 			VmmServerName:     pulumi.String("ContosoVMMServer"),
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
/// import com.pulumi.azurenative.scvmm.VmmServer;
/// import com.pulumi.azurenative.scvmm.VmmServerArgs;
/// import com.pulumi.azurenative.scvmm.inputs.VMMServerPropertiesCredentialsArgs;
/// import com.pulumi.azurenative.scvmm.inputs.ExtendedLocationArgs;
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
///         var vmmServer = new VmmServer("vmmServer", VmmServerArgs.builder()
///             .credentials(VMMServerPropertiesCredentialsArgs.builder()
///                 .password("password")
///                 .username("testuser")
///                 .build())
///             .extendedLocation(ExtendedLocationArgs.builder()
///                 .name("/subscriptions/a5015e1c-867f-4533-8541-85cd470d0cfb/resourceGroups/demoRG/providers/Microsoft.Arc/customLocations/contoso")
///                 .type("customLocation")
///                 .build())
///             .fqdn("VMM.contoso.com")
///             .location("East US")
///             .port(1234)
///             .resourceGroupName("testrg")
///             .vmmServerName("ContosoVMMServer")
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
/// const vmmServer = new azure_native.scvmm.VmmServer("vmmServer", {
///     credentials: {
///         password: "password",
///         username: "testuser",
///     },
///     extendedLocation: {
///         name: "/subscriptions/a5015e1c-867f-4533-8541-85cd470d0cfb/resourceGroups/demoRG/providers/Microsoft.Arc/customLocations/contoso",
///         type: "customLocation",
///     },
///     fqdn: "VMM.contoso.com",
///     location: "East US",
///     port: 1234,
///     resourceGroupName: "testrg",
///     vmmServerName: "ContosoVMMServer",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// vmm_server = azure_native.scvmm.VmmServer("vmmServer",
///     credentials={
///         "password": "password",
///         "username": "testuser",
///     },
///     extended_location={
///         "name": "/subscriptions/a5015e1c-867f-4533-8541-85cd470d0cfb/resourceGroups/demoRG/providers/Microsoft.Arc/customLocations/contoso",
///         "type": "customLocation",
///     },
///     fqdn="VMM.contoso.com",
///     location="East US",
///     port=1234,
///     resource_group_name="testrg",
///     vmm_server_name="ContosoVMMServer")
///
/// ```
///
/// ```yaml
/// resources:
///   vmmServer:
///     type: azure-native:scvmm:VmmServer
///     properties:
///       credentials:
///         password: password
///         username: testuser
///       extendedLocation:
///         name: /subscriptions/a5015e1c-867f-4533-8541-85cd470d0cfb/resourceGroups/demoRG/providers/Microsoft.Arc/customLocations/contoso
///         type: customLocation
///       fqdn: VMM.contoso.com
///       location: East US
///       port: 1234
///       resourceGroupName: testrg
///       vmmServerName: ContosoVMMServer
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
/// $ pulumi import azure-native:scvmm:VmmServer ContosoVMMServer /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ScVmm/vmmServers/{vmmServerName}
/// ```
class VmmServer extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Gets or sets the connection status to the vmmServer.
  late final pulumi.Output<String> connectionStatus;
  /// Credentials to connect to VMMServer.
  late final pulumi.Output<VMMServerPropertiesResponseCredentials?> credentials;
  /// Gets or sets any error message if connection to vmmServer is having any issue.
  late final pulumi.Output<String> errorMessage;
  /// The extended location.
  late final pulumi.Output<ExtendedLocationResponse> extendedLocation;
  /// Fqdn is the hostname/ip of the vmmServer.
  late final pulumi.Output<String> fqdn;
  /// Gets or sets the location.
  late final pulumi.Output<String> location;
  /// Resource Name
  late final pulumi.Output<String> name;
  /// Port is the port on which the vmmServer is listening.
  late final pulumi.Output<int?> port;
  /// Gets or sets the provisioning state.
  late final pulumi.Output<String> provisioningState;
  /// The system data.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags
  late final pulumi.Output<Map<String, String>?> tags;
  /// Resource Type
  late final pulumi.Output<String> type;
  /// Unique ID of vmmServer.
  late final pulumi.Output<String> uuid;
  /// Version is the version of the vmmSever.
  late final pulumi.Output<String> version;

  /// Creates a new [VmmServer].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VmmServer]. {@macro pulumi_scvmm_vmm_server_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VmmServer(
    String name, {
    VmmServerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:scvmm:VmmServer',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    connectionStatus = registerOutput<String>('connectionStatus');
    credentials = registerOutput<VMMServerPropertiesResponseCredentials?>('credentials', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VMMServerPropertiesResponseCredentials.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    errorMessage = registerOutput<String>('errorMessage');
    extendedLocation = registerOutput<ExtendedLocationResponse>('extendedLocation', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ExtendedLocationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    fqdn = registerOutput<String>('fqdn');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    port = registerOutput<int?>('port');
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
    uuid = registerOutput<String>('uuid');
    version = registerOutput<String>('version');
  }
}
