import 'package:pulumi/pulumi.dart' as pulumi;
import 'socketio_args.dart';
import 'socketio_identity.dart';
import 'socketio_sku.dart';
import 'socketio_state.dart';

/// Manages a Web PubSub Service for Socket.IO.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example",
///     location: "West Europe",
/// });
/// const exampleSocketio = new azure.webpubsub.Socketio("example", {
///     name: "example",
///     resourceGroupName: example.name,
///     location: example.location,
///     sku: "Free_F1"[0],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example",
///     location="West Europe")
/// example_socketio = azure.webpubsub.Socketio("example",
///     name="example",
///     resource_group_name=example.name,
///     location=example.location,
///     sku="Free_F1"[0])
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
///         Name = "example",
///         Location = "West Europe",
///     });
///
///     var exampleSocketio = new Azure.WebPubSub.Socketio("example", new()
///     {
///         Name = "example",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         Sku = "Free_F1"[0],
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
/// 			Name:     pulumi.String("example"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = webpubsub.NewSocketio(ctx, "example", &webpubsub.SocketioArgs{
/// 			Name:              pulumi.String("example"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			Sku:               "Free_F1"[0],
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
/// import com.pulumi.azure.webpubsub.Socketio;
/// import com.pulumi.azure.webpubsub.SocketioArgs;
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
///             .name("example")
///             .location("West Europe")
///             .build());
///
///         var exampleSocketio = new Socketio("exampleSocketio", SocketioArgs.builder()
///             .name("example")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .sku("Free_F1"[0])
///             .build());
///
///     }
/// }
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.SignalRService` - 2024-03-01
///
/// ## Import
///
/// Web PubSub Service for Socket.IOs can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:webpubsub/socketio:Socketio example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.SignalRService/webPubSub/pubsub1
/// ```
class Socketio extends pulumi.CustomResource {
  /// Whether Azure Active Directory authentication is enabled. Defaults to `true`.
  late final pulumi.Output<bool?> aadAuthEnabled;
  /// The publicly accessible IP address of the Web PubSub Service.
  late final pulumi.Output<String> externalIp;
  /// The FQDN of the Web PubSub Service.
  late final pulumi.Output<String> hostname;
  /// An `identity` block as defined below.
  late final pulumi.Output<SocketioIdentity?> identity;
  /// Whether the connectivity log category for live trace is enabled. Defaults to `true`.
  late final pulumi.Output<bool?> liveTraceConnectivityLogsEnabled;
  /// Whether the live trace tool is enabled. Defaults to `true`.
  late final pulumi.Output<bool?> liveTraceEnabled;
  /// Whether the HTTP request log category for live trace is enabled. Defaults to `true`.
  late final pulumi.Output<bool?> liveTraceHttpRequestLogsEnabled;
  /// Whether the messaging log category for live trace is enabled. Defaults to `true`.
  late final pulumi.Output<bool?> liveTraceMessagingLogsEnabled;
  /// Whether local authentication using an access key is enabled. Defaults to `true`.
  late final pulumi.Output<bool?> localAuthEnabled;
  /// The Azure Region where the Web PubSub Service should exist. Changing this forces a new Web PubSub Service to be created.
  late final pulumi.Output<String> location;
  /// The name which should be used for this Web PubSub Service. Changing this forces a new Web PubSub Service to be created.
  late final pulumi.Output<String> name;
  /// The primary access key for the Web PubSub Service.
  late final pulumi.Output<String> primaryAccessKey;
  /// The primary connection string for the Web PubSub Service.
  late final pulumi.Output<String> primaryConnectionString;
  /// Whether public network access is enabled. Defaults to `Enabled`. Possible values are `Enabled` and `Disabled`.
  ///
  /// > **Note:** `public_network_access` cannot be set to `Disabled` when `sku` is `Free_F1`.
  late final pulumi.Output<String?> publicNetworkAccess;
  /// The publicly accessible port for client-side usage of the Web PubSub Service.
  late final pulumi.Output<int> publicPort;
  /// The name of the Resource Group where the Web PubSub Service should exist. Changing this forces a new Web PubSub Service to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// The secondary access key for the Web PubSub Service.
  late final pulumi.Output<String> secondaryAccessKey;
  /// The secondary connection string for the Web PubSub Service.
  late final pulumi.Output<String> secondaryConnectionString;
  /// The publicly accessible port for server-side usage of the Web PubSub Service.
  late final pulumi.Output<int> serverPort;
  /// The service mode of this Web PubSub Service. Defaults to `Default`. Possible values are `Default` and `Serverless`.
  late final pulumi.Output<String?> serviceMode;
  /// One or more `sku` blocks as defined below.
  late final pulumi.Output<SocketioSku> sku;
  /// A mapping of tags which should be assigned to the Web PubSub Service.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Whether the service should request a client certificate during a TLS handshake. Defaults to `false`.
  ///
  /// > **Note:** `tls_client_cert_enabled` cannot be set to `true` when `sku` is `Free_F1`.
  late final pulumi.Output<bool?> tlsClientCertEnabled;

  /// Creates a new [Socketio].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Socketio]. {@macro pulumi_webpubsub_socketio_socketio_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Socketio(
    String name, {
    SocketioArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:webpubsub/socketio:Socketio',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.aadAuthEnabled = registerOutput<bool?>('aadAuthEnabled');
    this.externalIp = registerOutput<String>('externalIp');
    this.hostname = registerOutput<String>('hostname');
    this.identity = registerOutput<SocketioIdentity?>('identity');
    this.liveTraceConnectivityLogsEnabled = registerOutput<bool?>('liveTraceConnectivityLogsEnabled');
    this.liveTraceEnabled = registerOutput<bool?>('liveTraceEnabled');
    this.liveTraceHttpRequestLogsEnabled = registerOutput<bool?>('liveTraceHttpRequestLogsEnabled');
    this.liveTraceMessagingLogsEnabled = registerOutput<bool?>('liveTraceMessagingLogsEnabled');
    this.localAuthEnabled = registerOutput<bool?>('localAuthEnabled');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.primaryAccessKey = registerOutput<String>('primaryAccessKey');
    this.primaryConnectionString = registerOutput<String>('primaryConnectionString');
    this.publicNetworkAccess = registerOutput<String?>('publicNetworkAccess');
    this.publicPort = registerOutput<int>('publicPort');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.secondaryAccessKey = registerOutput<String>('secondaryAccessKey');
    this.secondaryConnectionString = registerOutput<String>('secondaryConnectionString');
    this.serverPort = registerOutput<int>('serverPort');
    this.serviceMode = registerOutput<String?>('serviceMode');
    this.sku = registerOutput<SocketioSku>('sku');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tlsClientCertEnabled = registerOutput<bool?>('tlsClientCertEnabled');
  }

  /// Gets an existing [Socketio] resource's state with the given [name] and [id].
  static Socketio get(
    String name,
    pulumi.Input<String> id, {
    SocketioState? state,
  }) {
    return Socketio._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Socketio._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:webpubsub/socketio:Socketio',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.aadAuthEnabled = registerOutput<bool?>('aadAuthEnabled');
    this.externalIp = registerOutput<String>('externalIp');
    this.hostname = registerOutput<String>('hostname');
    this.identity = registerOutput<SocketioIdentity?>('identity');
    this.liveTraceConnectivityLogsEnabled = registerOutput<bool?>('liveTraceConnectivityLogsEnabled');
    this.liveTraceEnabled = registerOutput<bool?>('liveTraceEnabled');
    this.liveTraceHttpRequestLogsEnabled = registerOutput<bool?>('liveTraceHttpRequestLogsEnabled');
    this.liveTraceMessagingLogsEnabled = registerOutput<bool?>('liveTraceMessagingLogsEnabled');
    this.localAuthEnabled = registerOutput<bool?>('localAuthEnabled');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.primaryAccessKey = registerOutput<String>('primaryAccessKey');
    this.primaryConnectionString = registerOutput<String>('primaryConnectionString');
    this.publicNetworkAccess = registerOutput<String?>('publicNetworkAccess');
    this.publicPort = registerOutput<int>('publicPort');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.secondaryAccessKey = registerOutput<String>('secondaryAccessKey');
    this.secondaryConnectionString = registerOutput<String>('secondaryConnectionString');
    this.serverPort = registerOutput<int>('serverPort');
    this.serviceMode = registerOutput<String?>('serviceMode');
    this.sku = registerOutput<SocketioSku>('sku');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tlsClientCertEnabled = registerOutput<bool?>('tlsClientCertEnabled');
  }
}
