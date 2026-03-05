import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_args.dart';
import 'service_identity.dart';
import 'service_live_trace.dart';
import 'service_state.dart';

/// Manages an Azure Web PubSub Service.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "terraform-webpubsub",
///     location: "east us",
/// });
/// const exampleService = new azure.webpubsub.Service("example", {
///     name: "tfex-webpubsub",
///     location: example.location,
///     resourceGroupName: example.name,
///     sku: "Standard_S1",
///     capacity: 1,
///     publicNetworkAccessEnabled: false,
///     liveTrace: {
///         enabled: true,
///         messagingLogsEnabled: true,
///         connectivityLogsEnabled: false,
///     },
///     identity: {
///         type: "SystemAssigned",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="terraform-webpubsub",
///     location="east us")
/// example_service = azure.webpubsub.Service("example",
///     name="tfex-webpubsub",
///     location=example.location,
///     resource_group_name=example.name,
///     sku="Standard_S1",
///     capacity=1,
///     public_network_access_enabled=False,
///     live_trace={
///         "enabled": True,
///         "messaging_logs_enabled": True,
///         "connectivity_logs_enabled": False,
///     },
///     identity={
///         "type": "SystemAssigned",
///     })
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
///         Name = "terraform-webpubsub",
///         Location = "east us",
///     });
///
///     var exampleService = new Azure.WebPubSub.Service("example", new()
///     {
///         Name = "tfex-webpubsub",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         Sku = "Standard_S1",
///         Capacity = 1,
///         PublicNetworkAccessEnabled = false,
///         LiveTrace = new Azure.WebPubSub.Inputs.ServiceLiveTraceArgs
///         {
///             Enabled = true,
///             MessagingLogsEnabled = true,
///             ConnectivityLogsEnabled = false,
///         },
///         Identity = new Azure.WebPubSub.Inputs.ServiceIdentityArgs
///         {
///             Type = "SystemAssigned",
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/webpubsub"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("terraform-webpubsub"),
/// 			Location: pulumi.String("east us"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = webpubsub.NewService(ctx, "example", &webpubsub.ServiceArgs{
/// 			Name:                       pulumi.String("tfex-webpubsub"),
/// 			Location:                   example.Location,
/// 			ResourceGroupName:          example.Name,
/// 			Sku:                        pulumi.String("Standard_S1"),
/// 			Capacity:                   pulumi.Int(1),
/// 			PublicNetworkAccessEnabled: pulumi.Bool(false),
/// 			LiveTrace: &webpubsub.ServiceLiveTraceArgs{
/// 				Enabled:                 pulumi.Bool(true),
/// 				MessagingLogsEnabled:    pulumi.Bool(true),
/// 				ConnectivityLogsEnabled: pulumi.Bool(false),
/// 			},
/// 			Identity: &webpubsub.ServiceIdentityArgs{
/// 				Type: pulumi.String("SystemAssigned"),
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
/// import com.pulumi.azure.webpubsub.Service;
/// import com.pulumi.azure.webpubsub.ServiceArgs;
/// import com.pulumi.azure.webpubsub.inputs.ServiceLiveTraceArgs;
/// import com.pulumi.azure.webpubsub.inputs.ServiceIdentityArgs;
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
///             .name("terraform-webpubsub")
///             .location("east us")
///             .build());
///
///         var exampleService = new Service("exampleService", ServiceArgs.builder()
///             .name("tfex-webpubsub")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .sku("Standard_S1")
///             .capacity(1)
///             .publicNetworkAccessEnabled(false)
///             .liveTrace(ServiceLiveTraceArgs.builder()
///                 .enabled(true)
///                 .messagingLogsEnabled(true)
///                 .connectivityLogsEnabled(false)
///                 .build())
///             .identity(ServiceIdentityArgs.builder()
///                 .type("SystemAssigned")
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
///       name: terraform-webpubsub
///       location: east us
///   exampleService:
///     type: azure:webpubsub:Service
///     name: example
///     properties:
///       name: tfex-webpubsub
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       sku: Standard_S1
///       capacity: 1
///       publicNetworkAccessEnabled: false
///       liveTrace:
///         enabled: true
///         messagingLogsEnabled: true
///         connectivityLogsEnabled: false
///       identity:
///         type: SystemAssigned
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
/// Web PubSub services can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:webpubsub/service:Service example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.SignalRService/webPubSub/pubsub1
/// ```
class Service extends pulumi.CustomResource {
  /// Whether to enable AAD auth? Defaults to `true`.
  late final pulumi.Output<bool?> aadAuthEnabled;

  /// Specifies the number of units associated with this Web PubSub resource. Valid values are `1`, `2`, `3`, `4`, `5`, `6`, `7`, `8`, `9`, `10`, `20`, `30`, `40`, `50`, `60`, `70`, `80`, `90`, `100`, `200`, `300`, `400`, `500`, `600`, `700`, `800`, `900` and `1000`.
  ///
  /// &gt; **Note:** The valid capacity range for sku `Free_F1` is `1`, for sku `Premium_P2` is from `100` to `1000`, and from `1` to `100` for sku `Standard_S1` and `Premium_P1`.
  late final pulumi.Output<int?> capacity;

  /// The publicly accessible IP of the Web PubSub service.
  late final pulumi.Output<String> externalIp;

  /// The FQDN of the Web PubSub service.
  late final pulumi.Output<String> hostname;

  /// An `identity` block as defined below.
  late final pulumi.Output<ServiceIdentity?> identity;

  /// A `live_trace` block as defined below.
  late final pulumi.Output<ServiceLiveTrace?> liveTrace;

  /// Whether to enable local auth? Defaults to `true`.
  late final pulumi.Output<bool?> localAuthEnabled;

  /// Specifies the supported Azure location where the Web PubSub service exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;

  /// The name of the Web PubSub service. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;

  /// The primary access key for the Web PubSub service.
  late final pulumi.Output<String> primaryAccessKey;

  /// The primary connection string for the Web PubSub service.
  late final pulumi.Output<String> primaryConnectionString;

  /// Whether to enable public network access? Defaults to `true`.
  late final pulumi.Output<bool?> publicNetworkAccessEnabled;

  /// The publicly accessible port of the Web PubSub service which is designed for browser/client use.
  late final pulumi.Output<int> publicPort;

  /// The name of the resource group in which to create the Web PubSub service. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;

  /// The secondary access key for the Web PubSub service.
  late final pulumi.Output<String> secondaryAccessKey;

  /// The secondary connection string for the Web PubSub service.
  late final pulumi.Output<String> secondaryConnectionString;

  /// The publicly accessible port of the Web PubSub service which is designed for customer server side use.
  late final pulumi.Output<int> serverPort;

  /// Specifies which SKU to use. Possible values are `Free_F1`, `Standard_S1`, `Premium_P1` and `Premium_P2`.
  late final pulumi.Output<String> sku;

  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Whether to request client certificate during TLS handshake? Defaults to `false`.
  late final pulumi.Output<bool?> tlsClientCertEnabled;
  late final pulumi.Output<String> version;

  /// Creates a new [Service].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Service]. {@macro pulumi_webpubsub_service_service_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Service(
    String name, {
    ServiceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:webpubsub/service:Service',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    aadAuthEnabled = registerOutput<bool?>('aadAuthEnabled');
    capacity = registerOutput<int?>('capacity');
    externalIp = registerOutput<String>('externalIp');
    hostname = registerOutput<String>('hostname');
    identity = registerOutput<ServiceIdentity?>(
      'identity',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ServiceIdentity.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    liveTrace = registerOutput<ServiceLiveTrace?>(
      'liveTrace',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ServiceLiveTrace.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    localAuthEnabled = registerOutput<bool?>('localAuthEnabled');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    primaryAccessKey = registerOutput<String>('primaryAccessKey');
    primaryConnectionString = registerOutput<String>('primaryConnectionString');
    publicNetworkAccessEnabled = registerOutput<bool?>(
      'publicNetworkAccessEnabled',
    );
    publicPort = registerOutput<int>('publicPort');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    secondaryAccessKey = registerOutput<String>('secondaryAccessKey');
    secondaryConnectionString = registerOutput<String>(
      'secondaryConnectionString',
    );
    serverPort = registerOutput<int>('serverPort');
    sku = registerOutput<String>('sku');
    tags = registerOutput<Map<String, String>?>('tags');
    tlsClientCertEnabled = registerOutput<bool?>('tlsClientCertEnabled');
    version = registerOutput<String>('version');
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
         'azure:webpubsub/service:Service',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    aadAuthEnabled = registerOutput<bool?>('aadAuthEnabled');
    capacity = registerOutput<int?>('capacity');
    externalIp = registerOutput<String>('externalIp');
    hostname = registerOutput<String>('hostname');
    identity = registerOutput<ServiceIdentity?>(
      'identity',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ServiceIdentity.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    liveTrace = registerOutput<ServiceLiveTrace?>(
      'liveTrace',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ServiceLiveTrace.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    localAuthEnabled = registerOutput<bool?>('localAuthEnabled');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    primaryAccessKey = registerOutput<String>('primaryAccessKey');
    primaryConnectionString = registerOutput<String>('primaryConnectionString');
    publicNetworkAccessEnabled = registerOutput<bool?>(
      'publicNetworkAccessEnabled',
    );
    publicPort = registerOutput<int>('publicPort');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    secondaryAccessKey = registerOutput<String>('secondaryAccessKey');
    secondaryConnectionString = registerOutput<String>(
      'secondaryConnectionString',
    );
    serverPort = registerOutput<int>('serverPort');
    sku = registerOutput<String>('sku');
    tags = registerOutput<Map<String, String>?>('tags');
    tlsClientCertEnabled = registerOutput<bool?>('tlsClientCertEnabled');
    version = registerOutput<String>('version');
  }
}
