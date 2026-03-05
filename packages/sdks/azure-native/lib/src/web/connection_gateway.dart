import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_gateway_args.dart';
import 'connection_gateway_definition_response_properties.dart';

/// The gateway definition
///
/// Uses Azure REST API version 2016-06-01. In version 2.x of the Azure Native provider, it used API version 2016-06-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Replace a connection gateway definition
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var connectionGateway = new AzureNative.Web.ConnectionGateway("connectionGateway", new()
///     {
///         ConnectionGatewayName = "test123",
///         Properties = new AzureNative.Web.Inputs.ConnectionGatewayDefinitionPropertiesArgs
///         {
///             BackendUri = "https://WABI-WEST-US-redirect.analysis.windows.net",
///             ConnectionGatewayInstallation = new AzureNative.Web.Inputs.ConnectionGatewayReferenceArgs
///             {
///                 Id = "/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/providers/Microsoft.Web/locations/westus/connectionGatewayInstallations/865dccd1-5d5c-45fe-b5a0-249d4de4134c",
///             },
///             ContactInformation = new[]
///             {
///                 "test123@microsoft.com",
///             },
///             DisplayName = "test123",
///             MachineName = "TEST123",
///             Status = "Installed",
///         },
///         ResourceGroupName = "testResourceGroup",
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
/// 	web "github.com/pulumi/pulumi-azure-native-sdk/web/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := web.NewConnectionGateway(ctx, "connectionGateway", &web.ConnectionGatewayArgs{
/// 			ConnectionGatewayName: pulumi.String("test123"),
/// 			Properties: &web.ConnectionGatewayDefinitionPropertiesArgs{
/// 				BackendUri: pulumi.String("https://WABI-WEST-US-redirect.analysis.windows.net"),
/// 				ConnectionGatewayInstallation: &web.ConnectionGatewayReferenceArgs{
/// 					Id: pulumi.String("/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/providers/Microsoft.Web/locations/westus/connectionGatewayInstallations/865dccd1-5d5c-45fe-b5a0-249d4de4134c"),
/// 				},
/// 				ContactInformation: pulumi.StringArray{
/// 					pulumi.String("test123@microsoft.com"),
/// 				},
/// 				DisplayName: pulumi.String("test123"),
/// 				MachineName: pulumi.String("TEST123"),
/// 				Status:      pulumi.Any("Installed"),
/// 			},
/// 			ResourceGroupName: pulumi.String("testResourceGroup"),
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
/// import com.pulumi.azurenative.web.ConnectionGateway;
/// import com.pulumi.azurenative.web.ConnectionGatewayArgs;
/// import com.pulumi.azurenative.web.inputs.ConnectionGatewayDefinitionPropertiesArgs;
/// import com.pulumi.azurenative.web.inputs.ConnectionGatewayReferenceArgs;
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
///         var connectionGateway = new ConnectionGateway("connectionGateway", ConnectionGatewayArgs.builder()
///             .connectionGatewayName("test123")
///             .properties(ConnectionGatewayDefinitionPropertiesArgs.builder()
///                 .backendUri("https://WABI-WEST-US-redirect.analysis.windows.net")
///                 .connectionGatewayInstallation(ConnectionGatewayReferenceArgs.builder()
///                     .id("/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/providers/Microsoft.Web/locations/westus/connectionGatewayInstallations/865dccd1-5d5c-45fe-b5a0-249d4de4134c")
///                     .build())
///                 .contactInformation("test123@microsoft.com")
///                 .displayName("test123")
///                 .machineName("TEST123")
///                 .status("Installed")
///                 .build())
///             .resourceGroupName("testResourceGroup")
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
/// const connectionGateway = new azure_native.web.ConnectionGateway("connectionGateway", {
///     connectionGatewayName: "test123",
///     properties: {
///         backendUri: "https://WABI-WEST-US-redirect.analysis.windows.net",
///         connectionGatewayInstallation: {
///             id: "/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/providers/Microsoft.Web/locations/westus/connectionGatewayInstallations/865dccd1-5d5c-45fe-b5a0-249d4de4134c",
///         },
///         contactInformation: ["test123@microsoft.com"],
///         displayName: "test123",
///         machineName: "TEST123",
///         status: "Installed",
///     },
///     resourceGroupName: "testResourceGroup",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// connection_gateway = azure_native.web.ConnectionGateway("connectionGateway",
///     connection_gateway_name="test123",
///     properties={
///         "backend_uri": "https://WABI-WEST-US-redirect.analysis.windows.net",
///         "connection_gateway_installation": {
///             "id": "/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/providers/Microsoft.Web/locations/westus/connectionGatewayInstallations/865dccd1-5d5c-45fe-b5a0-249d4de4134c",
///         },
///         "contact_information": ["test123@microsoft.com"],
///         "display_name": "test123",
///         "machine_name": "TEST123",
///         "status": "Installed",
///     },
///     resource_group_name="testResourceGroup")
///
/// ```
///
/// ```yaml
/// resources:
///   connectionGateway:
///     type: azure-native:web:ConnectionGateway
///     properties:
///       connectionGatewayName: test123
///       properties:
///         backendUri: https://WABI-WEST-US-redirect.analysis.windows.net
///         connectionGatewayInstallation:
///           id: /subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/providers/Microsoft.Web/locations/westus/connectionGatewayInstallations/865dccd1-5d5c-45fe-b5a0-249d4de4134c
///         contactInformation:
///           - test123@microsoft.com
///         displayName: test123
///         machineName: TEST123
///         status: Installed
///       resourceGroupName: testResourceGroup
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
/// $ pulumi import azure-native:web:ConnectionGateway test123 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Web/connectionGateways/{connectionGatewayName}
/// ```
class ConnectionGateway extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Resource ETag
  late final pulumi.Output<String?> etag;

  /// Resource location
  late final pulumi.Output<String?> location;

  /// Resource name
  late final pulumi.Output<String> name;
  late final pulumi.Output<ConnectionGatewayDefinitionResponseProperties>
  properties;

  /// Resource tags
  late final pulumi.Output<Map<String, String>?> tags;

  /// Resource type
  late final pulumi.Output<String> type;

  /// Creates a new [ConnectionGateway].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ConnectionGateway]. {@macro pulumi_web_connection_gateway_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ConnectionGateway(
    String name, {
    ConnectionGatewayArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:web:ConnectionGateway',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    etag = registerOutput<String?>('etag');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<ConnectionGatewayDefinitionResponseProperties>(
      'properties',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ConnectionGatewayDefinitionResponseProperties.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
