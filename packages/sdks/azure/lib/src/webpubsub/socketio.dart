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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure = {
///       source = "pulumi/azure"
///     }
///   }
/// }
///
/// resource "azure_core_resourcegroup" "example" {
///   name     = "example"
///   location = "West Europe"
/// }
/// resource "azure_webpubsub_socketio" "example" {
///   name                = "example"
///   resource_group_name = azure_core_resourcegroup.example.name
///   location            = azure_core_resourcegroup.example.location
///   sku                 = "Free_F1" [0]
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
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
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
  /// &gt; **Note:** `publicNetworkAccess` cannot be set to `Disabled` when `sku` is `Free_F1`.
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
  /// &gt; **Note:** `tlsClientCertEnabled` cannot be set to `true` when `sku` is `Free_F1`.
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
    aadAuthEnabled = registerOutput<bool?>('aadAuthEnabled');
    externalIp = registerOutput<String>('externalIp');
    hostname = registerOutput<String>('hostname');
    identity = registerOutput<SocketioIdentity?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SocketioIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    liveTraceConnectivityLogsEnabled = registerOutput<bool?>('liveTraceConnectivityLogsEnabled');
    liveTraceEnabled = registerOutput<bool?>('liveTraceEnabled');
    liveTraceHttpRequestLogsEnabled = registerOutput<bool?>('liveTraceHttpRequestLogsEnabled');
    liveTraceMessagingLogsEnabled = registerOutput<bool?>('liveTraceMessagingLogsEnabled');
    localAuthEnabled = registerOutput<bool?>('localAuthEnabled');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    primaryAccessKey = registerOutput<String>('primaryAccessKey');
    primaryConnectionString = registerOutput<String>('primaryConnectionString');
    publicNetworkAccess = registerOutput<String?>('publicNetworkAccess');
    publicPort = registerOutput<int>('publicPort');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    secondaryAccessKey = registerOutput<String>('secondaryAccessKey');
    secondaryConnectionString = registerOutput<String>('secondaryConnectionString');
    serverPort = registerOutput<int>('serverPort');
    serviceMode = registerOutput<String?>('serviceMode');
    sku = registerOutput<SocketioSku>('sku', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SocketioSku.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    tlsClientCertEnabled = registerOutput<bool?>('tlsClientCertEnabled');
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
    aadAuthEnabled = registerOutput<bool?>('aadAuthEnabled');
    externalIp = registerOutput<String>('externalIp');
    hostname = registerOutput<String>('hostname');
    identity = registerOutput<SocketioIdentity?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SocketioIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    liveTraceConnectivityLogsEnabled = registerOutput<bool?>('liveTraceConnectivityLogsEnabled');
    liveTraceEnabled = registerOutput<bool?>('liveTraceEnabled');
    liveTraceHttpRequestLogsEnabled = registerOutput<bool?>('liveTraceHttpRequestLogsEnabled');
    liveTraceMessagingLogsEnabled = registerOutput<bool?>('liveTraceMessagingLogsEnabled');
    localAuthEnabled = registerOutput<bool?>('localAuthEnabled');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    primaryAccessKey = registerOutput<String>('primaryAccessKey');
    primaryConnectionString = registerOutput<String>('primaryConnectionString');
    publicNetworkAccess = registerOutput<String?>('publicNetworkAccess');
    publicPort = registerOutput<int>('publicPort');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    secondaryAccessKey = registerOutput<String>('secondaryAccessKey');
    secondaryConnectionString = registerOutput<String>('secondaryConnectionString');
    serverPort = registerOutput<int>('serverPort');
    serviceMode = registerOutput<String?>('serviceMode');
    sku = registerOutput<SocketioSku>('sku', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SocketioSku.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    tlsClientCertEnabled = registerOutput<bool?>('tlsClientCertEnabled');
  }
}
