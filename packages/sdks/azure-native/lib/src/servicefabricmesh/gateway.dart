import 'package:pulumi/pulumi.dart' as pulumi;
import 'gateway_args.dart';
import 'network_ref_response.dart';

/// This type describes a gateway resource.
///
/// Uses Azure REST API version 2018-09-01-preview. In version 2.x of the Azure Native provider, it used API version 2018-09-01-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### CreateOrUpdateGateway
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var gateway = new AzureNative.ServiceFabricMesh.Gateway("gateway", new()
///     {
///         Description = "Service Fabric Mesh sample gateway.",
///         DestinationNetwork = new AzureNative.ServiceFabricMesh.Inputs.NetworkRefArgs
///         {
///             Name = "helloWorldNetwork",
///         },
///         GatewayResourceName = "sampleGateway",
///         Http = new[]
///         {
///             new AzureNative.ServiceFabricMesh.Inputs.HttpConfigArgs
///             {
///                 Hosts = new[]
///                 {
///                     new AzureNative.ServiceFabricMesh.Inputs.HttpHostConfigArgs
///                     {
///                         Name = "contoso.com",
///                         Routes = new[]
///                         {
///                             new AzureNative.ServiceFabricMesh.Inputs.HttpRouteConfigArgs
///                             {
///                                 Destination = new AzureNative.ServiceFabricMesh.Inputs.GatewayDestinationArgs
///                                 {
///                                     ApplicationName = "httpHelloWorldApp",
///                                     EndpointName = "indexHttpEndpoint",
///                                     ServiceName = "indexService",
///                                 },
///                                 Match = new AzureNative.ServiceFabricMesh.Inputs.HttpRouteMatchRuleArgs
///                                 {
///                                     Headers = new[]
///                                     {
///                                         new AzureNative.ServiceFabricMesh.Inputs.HttpRouteMatchHeaderArgs
///                                         {
///                                             Name = "accept",
///                                             Type = AzureNative.ServiceFabricMesh.HeaderMatchType.Exact,
///                                             Value = "application/json",
///                                         },
///                                     },
///                                     Path = new AzureNative.ServiceFabricMesh.Inputs.HttpRouteMatchPathArgs
///                                     {
///                                         Rewrite = "/",
///                                         Type = AzureNative.ServiceFabricMesh.PathMatchType.Prefix,
///                                         Value = "/index",
///                                     },
///                                 },
///                                 Name = "index",
///                             },
///                         },
///                     },
///                 },
///                 Name = "contosoWebsite",
///                 Port = 8081,
///             },
///         },
///         Location = "EastUS",
///         ResourceGroupName = "sbz_demo",
///         SourceNetwork = new AzureNative.ServiceFabricMesh.Inputs.NetworkRefArgs
///         {
///             Name = "Open",
///         },
///         Tags = null,
///         Tcp = new[]
///         {
///             new AzureNative.ServiceFabricMesh.Inputs.TcpConfigArgs
///             {
///                 Destination = new AzureNative.ServiceFabricMesh.Inputs.GatewayDestinationArgs
///                 {
///                     ApplicationName = "helloWorldApp",
///                     EndpointName = "helloWorldListener",
///                     ServiceName = "helloWorldService",
///                 },
///                 Name = "web",
///                 Port = 80,
///             },
///         },
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
/// 	servicefabricmesh "github.com/pulumi/pulumi-azure-native-sdk/servicefabricmesh/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := servicefabricmesh.NewGateway(ctx, "gateway", &servicefabricmesh.GatewayArgs{
/// 			Description: pulumi.String("Service Fabric Mesh sample gateway."),
/// 			DestinationNetwork: &servicefabricmesh.NetworkRefArgs{
/// 				Name: pulumi.String("helloWorldNetwork"),
/// 			},
/// 			GatewayResourceName: pulumi.String("sampleGateway"),
/// 			Http: servicefabricmesh.HttpConfigArray{
/// 				&servicefabricmesh.HttpConfigArgs{
/// 					Hosts: servicefabricmesh.HttpHostConfigArray{
/// 						&servicefabricmesh.HttpHostConfigArgs{
/// 							Name: pulumi.String("contoso.com"),
/// 							Routes: servicefabricmesh.HttpRouteConfigArray{
/// 								&servicefabricmesh.HttpRouteConfigArgs{
/// 									Destination: &servicefabricmesh.GatewayDestinationArgs{
/// 										ApplicationName: pulumi.String("httpHelloWorldApp"),
/// 										EndpointName:    pulumi.String("indexHttpEndpoint"),
/// 										ServiceName:     pulumi.String("indexService"),
/// 									},
/// 									Match: &servicefabricmesh.HttpRouteMatchRuleArgs{
/// 										Headers: servicefabricmesh.HttpRouteMatchHeaderArray{
/// 											&servicefabricmesh.HttpRouteMatchHeaderArgs{
/// 												Name:  pulumi.String("accept"),
/// 												Type:  pulumi.String(servicefabricmesh.HeaderMatchTypeExact),
/// 												Value: pulumi.String("application/json"),
/// 											},
/// 										},
/// 										Path: &servicefabricmesh.HttpRouteMatchPathArgs{
/// 											Rewrite: pulumi.String("/"),
/// 											Type:    pulumi.String(servicefabricmesh.PathMatchTypePrefix),
/// 											Value:   pulumi.String("/index"),
/// 										},
/// 									},
/// 									Name: pulumi.String("index"),
/// 								},
/// 							},
/// 						},
/// 					},
/// 					Name: pulumi.String("contosoWebsite"),
/// 					Port: pulumi.Int(8081),
/// 				},
/// 			},
/// 			Location:          pulumi.String("EastUS"),
/// 			ResourceGroupName: pulumi.String("sbz_demo"),
/// 			SourceNetwork: &servicefabricmesh.NetworkRefArgs{
/// 				Name: pulumi.String("Open"),
/// 			},
/// 			Tags: pulumi.StringMap{},
/// 			Tcp: servicefabricmesh.TcpConfigArray{
/// 				&servicefabricmesh.TcpConfigArgs{
/// 					Destination: &servicefabricmesh.GatewayDestinationArgs{
/// 						ApplicationName: pulumi.String("helloWorldApp"),
/// 						EndpointName:    pulumi.String("helloWorldListener"),
/// 						ServiceName:     pulumi.String("helloWorldService"),
/// 					},
/// 					Name: pulumi.String("web"),
/// 					Port: pulumi.Int(80),
/// 				},
/// 			},
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
/// import com.pulumi.azurenative.servicefabricmesh.Gateway;
/// import com.pulumi.azurenative.servicefabricmesh.GatewayArgs;
/// import com.pulumi.azurenative.servicefabricmesh.inputs.NetworkRefArgs;
/// import com.pulumi.azurenative.servicefabricmesh.inputs.HttpConfigArgs;
/// import com.pulumi.azurenative.servicefabricmesh.inputs.TcpConfigArgs;
/// import com.pulumi.azurenative.servicefabricmesh.inputs.GatewayDestinationArgs;
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
///         var gateway = new Gateway("gateway", GatewayArgs.builder()
///             .description("Service Fabric Mesh sample gateway.")
///             .destinationNetwork(NetworkRefArgs.builder()
///                 .name("helloWorldNetwork")
///                 .build())
///             .gatewayResourceName("sampleGateway")
///             .http(HttpConfigArgs.builder()
///                 .hosts(HttpHostConfigArgs.builder()
///                     .name("contoso.com")
///                     .routes(HttpRouteConfigArgs.builder()
///                         .destination(GatewayDestinationArgs.builder()
///                             .applicationName("httpHelloWorldApp")
///                             .endpointName("indexHttpEndpoint")
///                             .serviceName("indexService")
///                             .build())
///                         .match(HttpRouteMatchRuleArgs.builder()
///                             .headers(HttpRouteMatchHeaderArgs.builder()
///                                 .name("accept")
///                                 .type("exact")
///                                 .value("application/json")
///                                 .build())
///                             .path(HttpRouteMatchPathArgs.builder()
///                                 .rewrite("/")
///                                 .type("prefix")
///                                 .value("/index")
///                                 .build())
///                             .build())
///                         .name("index")
///                         .build())
///                     .build())
///                 .name("contosoWebsite")
///                 .port(8081)
///                 .build())
///             .location("EastUS")
///             .resourceGroupName("sbz_demo")
///             .sourceNetwork(NetworkRefArgs.builder()
///                 .name("Open")
///                 .build())
///             .tags(Map.ofEntries(
///             ))
///             .tcp(TcpConfigArgs.builder()
///                 .destination(GatewayDestinationArgs.builder()
///                     .applicationName("helloWorldApp")
///                     .endpointName("helloWorldListener")
///                     .serviceName("helloWorldService")
///                     .build())
///                 .name("web")
///                 .port(80)
///                 .build())
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
/// const gateway = new azure_native.servicefabricmesh.Gateway("gateway", {
///     description: "Service Fabric Mesh sample gateway.",
///     destinationNetwork: {
///         name: "helloWorldNetwork",
///     },
///     gatewayResourceName: "sampleGateway",
///     http: [{
///         hosts: [{
///             name: "contoso.com",
///             routes: [{
///                 destination: {
///                     applicationName: "httpHelloWorldApp",
///                     endpointName: "indexHttpEndpoint",
///                     serviceName: "indexService",
///                 },
///                 match: {
///                     headers: [{
///                         name: "accept",
///                         type: azure_native.servicefabricmesh.HeaderMatchType.Exact,
///                         value: "application/json",
///                     }],
///                     path: {
///                         rewrite: "/",
///                         type: azure_native.servicefabricmesh.PathMatchType.Prefix,
///                         value: "/index",
///                     },
///                 },
///                 name: "index",
///             }],
///         }],
///         name: "contosoWebsite",
///         port: 8081,
///     }],
///     location: "EastUS",
///     resourceGroupName: "sbz_demo",
///     sourceNetwork: {
///         name: "Open",
///     },
///     tags: {},
///     tcp: [{
///         destination: {
///             applicationName: "helloWorldApp",
///             endpointName: "helloWorldListener",
///             serviceName: "helloWorldService",
///         },
///         name: "web",
///         port: 80,
///     }],
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// gateway = azure_native.servicefabricmesh.Gateway("gateway",
///     description="Service Fabric Mesh sample gateway.",
///     destination_network={
///         "name": "helloWorldNetwork",
///     },
///     gateway_resource_name="sampleGateway",
///     http=[{
///         "hosts": [{
///             "name": "contoso.com",
///             "routes": [{
///                 "destination": {
///                     "application_name": "httpHelloWorldApp",
///                     "endpoint_name": "indexHttpEndpoint",
///                     "service_name": "indexService",
///                 },
///                 "match": {
///                     "headers": [{
///                         "name": "accept",
///                         "type": azure_native.servicefabricmesh.HeaderMatchType.EXACT,
///                         "value": "application/json",
///                     }],
///                     "path": {
///                         "rewrite": "/",
///                         "type": azure_native.servicefabricmesh.PathMatchType.PREFIX,
///                         "value": "/index",
///                     },
///                 },
///                 "name": "index",
///             }],
///         }],
///         "name": "contosoWebsite",
///         "port": 8081,
///     }],
///     location="EastUS",
///     resource_group_name="sbz_demo",
///     source_network={
///         "name": "Open",
///     },
///     tags={},
///     tcp=[{
///         "destination": {
///             "application_name": "helloWorldApp",
///             "endpoint_name": "helloWorldListener",
///             "service_name": "helloWorldService",
///         },
///         "name": "web",
///         "port": 80,
///     }])
///
/// ```
///
/// ```yaml
/// resources:
///   gateway:
///     type: azure-native:servicefabricmesh:Gateway
///     properties:
///       description: Service Fabric Mesh sample gateway.
///       destinationNetwork:
///         name: helloWorldNetwork
///       gatewayResourceName: sampleGateway
///       http:
///         - hosts:
///             - name: contoso.com
///               routes:
///                 - destination:
///                     applicationName: httpHelloWorldApp
///                     endpointName: indexHttpEndpoint
///                     serviceName: indexService
///                   match:
///                     headers:
///                       - name: accept
///                         type: exact
///                         value: application/json
///                     path:
///                       rewrite: /
///                       type: prefix
///                       value: /index
///                   name: index
///           name: contosoWebsite
///           port: 8081
///       location: EastUS
///       resourceGroupName: sbz_demo
///       sourceNetwork:
///         name: Open
///       tags: {}
///       tcp:
///         - destination:
///             applicationName: helloWorldApp
///             endpointName: helloWorldListener
///             serviceName: helloWorldService
///           name: web
///           port: 80
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
/// $ pulumi import azure-native:servicefabricmesh:Gateway sampleGateway /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ServiceFabricMesh/gateways/{gatewayResourceName}
/// ```
class Gateway extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// User readable description of the gateway.
  late final pulumi.Output<String?> description;

  /// Network that the Application is using.
  late final pulumi.Output<NetworkRefResponse> destinationNetwork;

  /// Configuration for http connectivity for this gateway.
  late final pulumi.Output<List<Map<String, dynamic>>?> http;

  /// IP address of the gateway. This is populated in the response and is ignored for incoming requests.
  late final pulumi.Output<String> ipAddress;

  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// State of the resource.
  late final pulumi.Output<String> provisioningState;

  /// Network the gateway should listen on for requests.
  late final pulumi.Output<NetworkRefResponse> sourceNetwork;

  /// Status of the resource.
  late final pulumi.Output<String> status;

  /// Gives additional information about the current status of the gateway.
  late final pulumi.Output<String> statusDetails;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Configuration for tcp connectivity for this gateway.
  late final pulumi.Output<List<Map<String, dynamic>>?> tcp;

  /// The type of the resource. Ex- Microsoft.Compute/virtualMachines or Microsoft.Storage/storageAccounts.
  late final pulumi.Output<String> type;

  /// Creates a new [Gateway].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Gateway]. {@macro pulumi_servicefabricmesh_gateway_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Gateway(
    String name, {
    GatewayArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:servicefabricmesh:Gateway',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    description = registerOutput<String?>('description');
    destinationNetwork = registerOutput<NetworkRefResponse>(
      'destinationNetwork',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return NetworkRefResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    http = registerOutput<List<Map<String, dynamic>>?>('http');
    ipAddress = registerOutput<String>('ipAddress');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    sourceNetwork = registerOutput<NetworkRefResponse>(
      'sourceNetwork',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return NetworkRefResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    status = registerOutput<String>('status');
    statusDetails = registerOutput<String>('statusDetails');
    tags = registerOutput<Map<String, String>?>('tags');
    tcp = registerOutput<List<Map<String, dynamic>>?>('tcp');
    type = registerOutput<String>('type');
  }
}
