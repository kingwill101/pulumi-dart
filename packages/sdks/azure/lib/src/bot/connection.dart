import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_args.dart';
import 'connection_state.dart';

/// Manages a Bot Connection.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const current = azure.core.getClientConfig({});
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-resources",
///     location: "West Europe",
/// });
/// const exampleChannelsRegistration = new azure.bot.ChannelsRegistration("example", {
///     name: "example",
///     location: "global",
///     resourceGroupName: example.name,
///     sku: "F0",
///     microsoftAppId: current.then(current => current.clientId),
/// });
/// const exampleConnection = new azure.bot.Connection("example", {
///     name: "example",
///     botName: exampleChannelsRegistration.name,
///     location: exampleChannelsRegistration.location,
///     resourceGroupName: example.name,
///     serviceProviderName: "box",
///     clientId: "exampleId",
///     clientSecret: "exampleSecret",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// current = azure.core.get_client_config()
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_channels_registration = azure.bot.ChannelsRegistration("example",
///     name="example",
///     location="global",
///     resource_group_name=example.name,
///     sku="F0",
///     microsoft_app_id=current.client_id)
/// example_connection = azure.bot.Connection("example",
///     name="example",
///     bot_name=example_channels_registration.name,
///     location=example_channels_registration.location,
///     resource_group_name=example.name,
///     service_provider_name="box",
///     client_id="exampleId",
///     client_secret="exampleSecret")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var current = Azure.Core.GetClientConfig.Invoke();
///
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var exampleChannelsRegistration = new Azure.Bot.ChannelsRegistration("example", new()
///     {
///         Name = "example",
///         Location = "global",
///         ResourceGroupName = example.Name,
///         Sku = "F0",
///         MicrosoftAppId = current.Apply(getClientConfigResult => getClientConfigResult.ClientId),
///     });
///
///     var exampleConnection = new Azure.Bot.Connection("example", new()
///     {
///         Name = "example",
///         BotName = exampleChannelsRegistration.Name,
///         Location = exampleChannelsRegistration.Location,
///         ResourceGroupName = example.Name,
///         ServiceProviderName = "box",
///         ClientId = "exampleId",
///         ClientSecret = "exampleSecret",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/bot"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		current, err := core.GetClientConfig(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-resources"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleChannelsRegistration, err := bot.NewChannelsRegistration(ctx, "example", &bot.ChannelsRegistrationArgs{
/// 			Name:              pulumi.String("example"),
/// 			Location:          pulumi.String("global"),
/// 			ResourceGroupName: example.Name,
/// 			Sku:               pulumi.String("F0"),
/// 			MicrosoftAppId:    pulumi.String(current.ClientId),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = bot.NewConnection(ctx, "example", &bot.ConnectionArgs{
/// 			Name:                pulumi.String("example"),
/// 			BotName:             exampleChannelsRegistration.Name,
/// 			Location:            exampleChannelsRegistration.Location,
/// 			ResourceGroupName:   example.Name,
/// 			ServiceProviderName: pulumi.String("box"),
/// 			ClientId:            pulumi.String("exampleId"),
/// 			ClientSecret:        pulumi.String("exampleSecret"),
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
/// data "azure_core_getclientconfig" "current" {
/// }
///
/// resource "azure_core_resourcegroup" "example" {
///   name     = "example-resources"
///   location = "West Europe"
/// }
/// resource "azure_bot_channelsregistration" "example" {
///   name                = "example"
///   location            = "global"
///   resource_group_name = azure_core_resourcegroup.example.name
///   sku                 = "F0"
///   microsoft_app_id    = data.azure_core_getclientconfig.current.client_id
/// }
/// resource "azure_bot_connection" "example" {
///   name                  = "example"
///   bot_name              = azure_bot_channelsregistration.example.name
///   location              = azure_bot_channelsregistration.example.location
///   resource_group_name   = azure_core_resourcegroup.example.name
///   service_provider_name = "box"
///   client_id             = "exampleId"
///   client_secret         = "exampleSecret"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.core.CoreFunctions;
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.bot.ChannelsRegistration;
/// import com.pulumi.azure.bot.ChannelsRegistrationArgs;
/// import com.pulumi.azure.bot.Connection;
/// import com.pulumi.azure.bot.ConnectionArgs;
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
///         final var current = CoreFunctions.getClientConfig(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var exampleChannelsRegistration = new ChannelsRegistration("exampleChannelsRegistration", ChannelsRegistrationArgs.builder()
///             .name("example")
///             .location("global")
///             .resourceGroupName(example.name())
///             .sku("F0")
///             .microsoftAppId(current.clientId())
///             .build());
///
///         var exampleConnection = new Connection("exampleConnection", ConnectionArgs.builder()
///             .name("example")
///             .botName(exampleChannelsRegistration.name())
///             .location(exampleChannelsRegistration.location())
///             .resourceGroupName(example.name())
///             .serviceProviderName("box")
///             .clientId("exampleId")
///             .clientSecret("exampleSecret")
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
///       name: example-resources
///       location: West Europe
///   exampleChannelsRegistration:
///     type: azure:bot:ChannelsRegistration
///     name: example
///     properties:
///       name: example
///       location: global
///       resourceGroupName: ${example.name}
///       sku: F0
///       microsoftAppId: ${current.clientId}
///   exampleConnection:
///     type: azure:bot:Connection
///     name: example
///     properties:
///       name: example
///       botName: ${exampleChannelsRegistration.name}
///       location: ${exampleChannelsRegistration.location}
///       resourceGroupName: ${example.name}
///       serviceProviderName: box
///       clientId: exampleId
///       clientSecret: exampleSecret
/// variables:
///   current:
///     fn::invoke:
///       function: azure:core:getClientConfig
///       arguments: {}
/// ```
///
///
/// ## Import
///
/// Bot Connection can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:bot/connection:Connection example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/example/providers/Microsoft.BotService/botServices/example/connections/example
/// ```
class Connection extends pulumi.CustomResource {
  /// The name of the Bot Resource this connection will be associated with. Changing this forces a new resource to be created.
  late final pulumi.Output<String> botName;
  /// The Client ID that will be used to authenticate with the service provider.
  late final pulumi.Output<String> clientId;
  /// The Client Secret that will be used to authenticate with the service provider.
  late final pulumi.Output<String> clientSecret;
  /// The supported Azure location where the resource exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;
  /// Specifies the name of the Bot Connection. Changing this forces a new resource to be created. Must be globally unique.
  late final pulumi.Output<String> name;
  /// A map of additional parameters to apply to the connection.
  late final pulumi.Output<Map<String, String>?> parameters;
  /// The name of the resource group in which to create the Bot Connection. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// The Scopes at which the connection should be applied.
  late final pulumi.Output<String?> scopes;
  /// The name of the service provider that will be associated with this connection. Changing this forces a new resource to be created.
  late final pulumi.Output<String> serviceProviderName;

  /// Creates a new [Connection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Connection]. {@macro pulumi_bot_connection_connection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Connection(
    String name, {
    ConnectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:bot/connection:Connection',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
          additionalSecretOutputs: const ['clientSecret'],
        ) {
    botName = registerOutput<String>('botName');
    clientId = registerOutput<String>('clientId');
    clientSecret = registerOutput<String>('clientSecret', isSecret: true);
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    parameters = registerOutput<Map<String, String>?>('parameters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    resourceGroupName = registerOutput<String>('resourceGroupName');
    scopes = registerOutput<String?>('scopes');
    serviceProviderName = registerOutput<String>('serviceProviderName');
  }

  /// Gets an existing [Connection] resource's state with the given [name] and [id].
  static Connection get(
    String name,
    pulumi.Input<String> id, {
    ConnectionState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Connection._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Connection._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:bot/connection:Connection',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    botName = registerOutput<String>('botName');
    clientId = registerOutput<String>('clientId');
    clientSecret = registerOutput<String>('clientSecret', isSecret: true);
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    parameters = registerOutput<Map<String, String>?>('parameters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    resourceGroupName = registerOutput<String>('resourceGroupName');
    scopes = registerOutput<String?>('scopes');
    serviceProviderName = registerOutput<String>('serviceProviderName');
  }

  /// Creates a typed reference to an existing [Connection] resource.
  Connection.reference(String urn)
    : super(
        'azure:bot/connection:Connection',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['clientSecret'],
        isResourceReference: true,
      ) {
    botName = registerOutput<String>('botName');
    clientId = registerOutput<String>('clientId');
    clientSecret = registerOutput<String>('clientSecret', isSecret: true);
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    parameters = registerOutput<Map<String, String>?>('parameters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    resourceGroupName = registerOutput<String>('resourceGroupName');
    scopes = registerOutput<String?>('scopes');
    serviceProviderName = registerOutput<String>('serviceProviderName');
  }
}
