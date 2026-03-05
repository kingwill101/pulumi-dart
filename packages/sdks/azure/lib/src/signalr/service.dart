import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_args.dart';
import 'service_identity.dart';
import 'service_live_trace.dart';
import 'service_sku.dart';
import 'service_state.dart';

/// Manages an Azure SignalR service.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "my-signalr",
///     location: "West US",
/// });
/// const exampleService = new azure.signalr.Service("example", {
///     name: "tfex-signalr",
///     location: example.location,
///     resourceGroupName: example.name,
///     sku: {
///         name: "Free_F1",
///         capacity: 1,
///     },
///     cors: [{
///         allowedOrigins: ["http://www.example.com"],
///     }],
///     publicNetworkAccessEnabled: false,
///     connectivityLogsEnabled: true,
///     messagingLogsEnabled: true,
///     serviceMode: "Default",
///     upstreamEndpoints: [{
///         categoryPatterns: [
///             "connections",
///             "messages",
///         ],
///         eventPatterns: ["*"],
///         hubPatterns: ["hub1"],
///         urlTemplate: "http://foo.com",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="my-signalr",
///     location="West US")
/// example_service = azure.signalr.Service("example",
///     name="tfex-signalr",
///     location=example.location,
///     resource_group_name=example.name,
///     sku={
///         "name": "Free_F1",
///         "capacity": 1,
///     },
///     cors=[{
///         "allowed_origins": ["http://www.example.com"],
///     }],
///     public_network_access_enabled=False,
///     connectivity_logs_enabled=True,
///     messaging_logs_enabled=True,
///     service_mode="Default",
///     upstream_endpoints=[{
///         "category_patterns": [
///             "connections",
///             "messages",
///         ],
///         "event_patterns": ["*"],
///         "hub_patterns": ["hub1"],
///         "url_template": "http://foo.com",
///     }])
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
///         Name = "my-signalr",
///         Location = "West US",
///     });
///
///     var exampleService = new Azure.SignalR.Service("example", new()
///     {
///         Name = "tfex-signalr",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         Sku = new Azure.SignalR.Inputs.ServiceSkuArgs
///         {
///             Name = "Free_F1",
///             Capacity = 1,
///         },
///         Cors = new[]
///         {
///             new Azure.SignalR.Inputs.ServiceCorArgs
///             {
///                 AllowedOrigins = new[]
///                 {
///                     "http://www.example.com",
///                 },
///             },
///         },
///         PublicNetworkAccessEnabled = false,
///         ConnectivityLogsEnabled = true,
///         MessagingLogsEnabled = true,
///         ServiceMode = "Default",
///         UpstreamEndpoints = new[]
///         {
///             new Azure.SignalR.Inputs.ServiceUpstreamEndpointArgs
///             {
///                 CategoryPatterns = new[]
///                 {
///                     "connections",
///                     "messages",
///                 },
///                 EventPatterns = new[]
///                 {
///                     "*",
///                 },
///                 HubPatterns = new[]
///                 {
///                     "hub1",
///                 },
///                 UrlTemplate = "http://foo.com",
///             },
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/signalr"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("my-signalr"),
/// 			Location: pulumi.String("West US"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = signalr.NewService(ctx, "example", &signalr.ServiceArgs{
/// 			Name:              pulumi.String("tfex-signalr"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			Sku: &signalr.ServiceSkuArgs{
/// 				Name:     pulumi.String("Free_F1"),
/// 				Capacity: pulumi.Int(1),
/// 			},
/// 			Cors: signalr.ServiceCorArray{
/// 				&signalr.ServiceCorArgs{
/// 					AllowedOrigins: pulumi.StringArray{
/// 						pulumi.String("http://www.example.com"),
/// 					},
/// 				},
/// 			},
/// 			PublicNetworkAccessEnabled: pulumi.Bool(false),
/// 			ConnectivityLogsEnabled:    pulumi.Bool(true),
/// 			MessagingLogsEnabled:       pulumi.Bool(true),
/// 			ServiceMode:                pulumi.String("Default"),
/// 			UpstreamEndpoints: signalr.ServiceUpstreamEndpointArray{
/// 				&signalr.ServiceUpstreamEndpointArgs{
/// 					CategoryPatterns: pulumi.StringArray{
/// 						pulumi.String("connections"),
/// 						pulumi.String("messages"),
/// 					},
/// 					EventPatterns: pulumi.StringArray{
/// 						pulumi.String("*"),
/// 					},
/// 					HubPatterns: pulumi.StringArray{
/// 						pulumi.String("hub1"),
/// 					},
/// 					UrlTemplate: pulumi.String("http://foo.com"),
/// 				},
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
/// import com.pulumi.azure.signalr.Service;
/// import com.pulumi.azure.signalr.ServiceArgs;
/// import com.pulumi.azure.signalr.inputs.ServiceSkuArgs;
/// import com.pulumi.azure.signalr.inputs.ServiceCorArgs;
/// import com.pulumi.azure.signalr.inputs.ServiceUpstreamEndpointArgs;
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
///             .name("my-signalr")
///             .location("West US")
///             .build());
///
///         var exampleService = new Service("exampleService", ServiceArgs.builder()
///             .name("tfex-signalr")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .sku(ServiceSkuArgs.builder()
///                 .name("Free_F1")
///                 .capacity(1)
///                 .build())
///             .cors(ServiceCorArgs.builder()
///                 .allowedOrigins("http://www.example.com")
///                 .build())
///             .publicNetworkAccessEnabled(false)
///             .connectivityLogsEnabled(true)
///             .messagingLogsEnabled(true)
///             .serviceMode("Default")
///             .upstreamEndpoints(ServiceUpstreamEndpointArgs.builder()
///                 .categoryPatterns(
///                     "connections",
///                     "messages")
///                 .eventPatterns("*")
///                 .hubPatterns("hub1")
///                 .urlTemplate("http://foo.com")
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
///       name: my-signalr
///       location: West US
///   exampleService:
///     type: azure:signalr:Service
///     name: example
///     properties:
///       name: tfex-signalr
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       sku:
///         name: Free_F1
///         capacity: 1
///       cors:
///         - allowedOrigins:
///             - http://www.example.com
///       publicNetworkAccessEnabled: false
///       connectivityLogsEnabled: true
///       messagingLogsEnabled: true
///       serviceMode: Default
///       upstreamEndpoints:
///         - categoryPatterns:
///             - connections
///             - messages
///           eventPatterns:
///             - '*'
///           hubPatterns:
///             - hub1
///           urlTemplate: http://foo.com
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.SignalRService` - 2024-03-01
///
/// ## Import
///
/// SignalR services can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:signalr/service:Service example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/terraform-signalr/providers/Microsoft.SignalRService/signalR/tfex-signalr
/// ```
class Service extends pulumi.CustomResource {
  /// Whether to enable AAD auth? Defaults to `true`.
  late final pulumi.Output<bool?> aadAuthEnabled;
  /// Specifies if Connectivity Logs are enabled or not. Defaults to `false`.
  late final pulumi.Output<bool?> connectivityLogsEnabled;
  /// A `cors` block as documented below.
  late final pulumi.Output<List<Map<String, dynamic>>> cors;
  /// The FQDN of the SignalR service.
  late final pulumi.Output<String> hostname;
  /// Specifies if Http Request Logs are enabled or not. Defaults to `false`.
  late final pulumi.Output<bool?> httpRequestLogsEnabled;
  /// An `identity` block as defined below.
  late final pulumi.Output<ServiceIdentity?> identity;
  /// The publicly accessible IP of the SignalR service.
  late final pulumi.Output<String> ipAddress;
  /// A `live_trace` block as defined below.
  late final pulumi.Output<ServiceLiveTrace?> liveTrace;
  late final pulumi.Output<bool?> liveTraceEnabled;
  /// Whether to enable local auth? Defaults to `true`.
  late final pulumi.Output<bool?> localAuthEnabled;
  /// Specifies the supported Azure location where the SignalR service exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;
  /// Specifies if Messaging Logs are enabled or not. Defaults to `false`.
  late final pulumi.Output<bool?> messagingLogsEnabled;
  /// The name of the SignalR service. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The primary access key for the SignalR service.
  late final pulumi.Output<String> primaryAccessKey;
  /// The primary connection string for the SignalR service.
  late final pulumi.Output<String> primaryConnectionString;
  /// Whether to enable public network access? Defaults to `true`.
  ///
  /// &gt; **Note:** `public_network_access_enabled` cannot be set to `false` in `Free` sku tier.
  late final pulumi.Output<bool?> publicNetworkAccessEnabled;
  /// The publicly accessible port of the SignalR service which is designed for browser/client use.
  late final pulumi.Output<int> publicPort;
  /// The name of the resource group in which to create the SignalR service. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// The secondary access key for the SignalR service.
  late final pulumi.Output<String> secondaryAccessKey;
  /// The secondary connection string for the SignalR service.
  late final pulumi.Output<String> secondaryConnectionString;
  /// The publicly accessible port of the SignalR service which is designed for customer server side use.
  late final pulumi.Output<int> serverPort;
  /// Specifies the client connection timeout. Defaults to `30`.
  late final pulumi.Output<int?> serverlessConnectionTimeoutInSeconds;
  /// Specifies the service mode. Possible values are `Classic`, `Default` and `Serverless`. Defaults to `Default`.
  late final pulumi.Output<String?> serviceMode;
  /// A `sku` block as documented below.
  late final pulumi.Output<ServiceSku> sku;
  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Whether to request client certificate during TLS handshake? Defaults to `false`.
  ///
  /// &gt; **Note:** `tls_client_cert_enabled` cannot be set to `true` in `Free` sku tier.
  late final pulumi.Output<bool?> tlsClientCertEnabled;
  /// An `upstream_endpoint` block as documented below. Using this block requires the SignalR service to be Serverless. When creating multiple blocks they will be processed in the order they are defined in.
  late final pulumi.Output<List<Map<String, dynamic>>?> upstreamEndpoints;

  /// Creates a new [Service].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Service]. {@macro pulumi_signalr_service_service_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Service(
    String name, {
    ServiceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:signalr/service:Service',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    aadAuthEnabled = registerOutput<bool?>('aadAuthEnabled');
    connectivityLogsEnabled = registerOutput<bool?>('connectivityLogsEnabled');
    cors = registerOutput<List<Map<String, dynamic>>>('cors');
    hostname = registerOutput<String>('hostname');
    httpRequestLogsEnabled = registerOutput<bool?>('httpRequestLogsEnabled');
    identity = registerOutput<ServiceIdentity?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServiceIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    ipAddress = registerOutput<String>('ipAddress');
    liveTrace = registerOutput<ServiceLiveTrace?>('liveTrace', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServiceLiveTrace.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    liveTraceEnabled = registerOutput<bool?>('liveTraceEnabled');
    localAuthEnabled = registerOutput<bool?>('localAuthEnabled');
    location = registerOutput<String>('location');
    messagingLogsEnabled = registerOutput<bool?>('messagingLogsEnabled');
    this.name = registerOutput<String>('name');
    primaryAccessKey = registerOutput<String>('primaryAccessKey');
    primaryConnectionString = registerOutput<String>('primaryConnectionString');
    publicNetworkAccessEnabled = registerOutput<bool?>('publicNetworkAccessEnabled');
    publicPort = registerOutput<int>('publicPort');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    secondaryAccessKey = registerOutput<String>('secondaryAccessKey');
    secondaryConnectionString = registerOutput<String>('secondaryConnectionString');
    serverPort = registerOutput<int>('serverPort');
    serverlessConnectionTimeoutInSeconds = registerOutput<int?>('serverlessConnectionTimeoutInSeconds');
    serviceMode = registerOutput<String?>('serviceMode');
    sku = registerOutput<ServiceSku>('sku', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServiceSku.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    tlsClientCertEnabled = registerOutput<bool?>('tlsClientCertEnabled');
    upstreamEndpoints = registerOutput<List<Map<String, dynamic>>?>('upstreamEndpoints');
  }

  /// Gets an existing [Service] resource's state with the given [name] and [id].
  static Service get(
    String name,
    pulumi.Input<String> id, {
    ServiceState? state,
  }) {
    return Service._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Service._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:signalr/service:Service',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    aadAuthEnabled = registerOutput<bool?>('aadAuthEnabled');
    connectivityLogsEnabled = registerOutput<bool?>('connectivityLogsEnabled');
    cors = registerOutput<List<Map<String, dynamic>>>('cors');
    hostname = registerOutput<String>('hostname');
    httpRequestLogsEnabled = registerOutput<bool?>('httpRequestLogsEnabled');
    identity = registerOutput<ServiceIdentity?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServiceIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    ipAddress = registerOutput<String>('ipAddress');
    liveTrace = registerOutput<ServiceLiveTrace?>('liveTrace', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServiceLiveTrace.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    liveTraceEnabled = registerOutput<bool?>('liveTraceEnabled');
    localAuthEnabled = registerOutput<bool?>('localAuthEnabled');
    location = registerOutput<String>('location');
    messagingLogsEnabled = registerOutput<bool?>('messagingLogsEnabled');
    this.name = registerOutput<String>('name');
    primaryAccessKey = registerOutput<String>('primaryAccessKey');
    primaryConnectionString = registerOutput<String>('primaryConnectionString');
    publicNetworkAccessEnabled = registerOutput<bool?>('publicNetworkAccessEnabled');
    publicPort = registerOutput<int>('publicPort');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    secondaryAccessKey = registerOutput<String>('secondaryAccessKey');
    secondaryConnectionString = registerOutput<String>('secondaryConnectionString');
    serverPort = registerOutput<int>('serverPort');
    serverlessConnectionTimeoutInSeconds = registerOutput<int?>('serverlessConnectionTimeoutInSeconds');
    serviceMode = registerOutput<String?>('serviceMode');
    sku = registerOutput<ServiceSku>('sku', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServiceSku.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    tlsClientCertEnabled = registerOutput<bool?>('tlsClientCertEnabled');
    upstreamEndpoints = registerOutput<List<Map<String, dynamic>>?>('upstreamEndpoints');
  }
}
