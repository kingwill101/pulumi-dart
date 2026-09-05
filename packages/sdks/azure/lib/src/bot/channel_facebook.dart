import 'package:pulumi/pulumi.dart' as pulumi;
import 'channel_facebook_args.dart';
import 'channel_facebook_page.dart';
import 'channel_facebook_state.dart';

/// Manages a Facebook integration for a Bot Channel
///
/// &gt; **Note:** A bot can only have a single Facebook Channel associated with it.
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
///     name: "example-bcr",
///     location: "global",
///     resourceGroupName: example.name,
///     sku: "F0",
///     microsoftAppId: current.then(current => current.clientId),
/// });
/// const exampleChannelFacebook = new azure.bot.ChannelFacebook("example", {
///     botName: exampleChannelsRegistration.name,
///     location: exampleChannelsRegistration.location,
///     resourceGroupName: example.name,
///     facebookApplicationId: "563490254873576",
///     facebookApplicationSecret: "8976d2536445ad5b976dee8437b9beb0",
///     pages: [{
///         id: "876248795081953",
///         accessToken: "CGGCec3UAFPMBAKwK3Ft8SEpO8ZCuvpNBI5DClaJCDfqJj2BgEHCKxcY0FDarmUQap6XxpZC9GWCW4nZCzjcKosAZAP7SO44X8Q8gAntbDIXgYUBGp9xtS8wUkwgKPobUePcOOVFkvClxvYZByuiQxoTiK9fQ9jZCPEorbmZCsKDZAx4VLnrNwCTZAPUwXxO61gfq4ZD",
///     }],
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
///     name="example-bcr",
///     location="global",
///     resource_group_name=example.name,
///     sku="F0",
///     microsoft_app_id=current.client_id)
/// example_channel_facebook = azure.bot.ChannelFacebook("example",
///     bot_name=example_channels_registration.name,
///     location=example_channels_registration.location,
///     resource_group_name=example.name,
///     facebook_application_id="563490254873576",
///     facebook_application_secret="8976d2536445ad5b976dee8437b9beb0",
///     pages=[{
///         "id": "876248795081953",
///         "access_token": "CGGCec3UAFPMBAKwK3Ft8SEpO8ZCuvpNBI5DClaJCDfqJj2BgEHCKxcY0FDarmUQap6XxpZC9GWCW4nZCzjcKosAZAP7SO44X8Q8gAntbDIXgYUBGp9xtS8wUkwgKPobUePcOOVFkvClxvYZByuiQxoTiK9fQ9jZCPEorbmZCsKDZAx4VLnrNwCTZAPUwXxO61gfq4ZD",
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
///         Name = "example-bcr",
///         Location = "global",
///         ResourceGroupName = example.Name,
///         Sku = "F0",
///         MicrosoftAppId = current.Apply(getClientConfigResult => getClientConfigResult.ClientId),
///     });
///
///     var exampleChannelFacebook = new Azure.Bot.ChannelFacebook("example", new()
///     {
///         BotName = exampleChannelsRegistration.Name,
///         Location = exampleChannelsRegistration.Location,
///         ResourceGroupName = example.Name,
///         FacebookApplicationId = "563490254873576",
///         FacebookApplicationSecret = "8976d2536445ad5b976dee8437b9beb0",
///         Pages = new[]
///         {
///             new Azure.Bot.Inputs.ChannelFacebookPageArgs
///             {
///                 Id = "876248795081953",
///                 AccessToken = "CGGCec3UAFPMBAKwK3Ft8SEpO8ZCuvpNBI5DClaJCDfqJj2BgEHCKxcY0FDarmUQap6XxpZC9GWCW4nZCzjcKosAZAP7SO44X8Q8gAntbDIXgYUBGp9xtS8wUkwgKPobUePcOOVFkvClxvYZByuiQxoTiK9fQ9jZCPEorbmZCsKDZAx4VLnrNwCTZAPUwXxO61gfq4ZD",
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
/// 			Name:              pulumi.String("example-bcr"),
/// 			Location:          pulumi.String("global"),
/// 			ResourceGroupName: example.Name,
/// 			Sku:               pulumi.String("F0"),
/// 			MicrosoftAppId:    pulumi.String(current.ClientId),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = bot.NewChannelFacebook(ctx, "example", &bot.ChannelFacebookArgs{
/// 			BotName:                   exampleChannelsRegistration.Name,
/// 			Location:                  exampleChannelsRegistration.Location,
/// 			ResourceGroupName:         example.Name,
/// 			FacebookApplicationId:     pulumi.String("563490254873576"),
/// 			FacebookApplicationSecret: pulumi.String("8976d2536445ad5b976dee8437b9beb0"),
/// 			Pages: bot.ChannelFacebookPageArray{
/// 				&bot.ChannelFacebookPageArgs{
/// 					Id:          pulumi.String("876248795081953"),
/// 					AccessToken: pulumi.String("CGGCec3UAFPMBAKwK3Ft8SEpO8ZCuvpNBI5DClaJCDfqJj2BgEHCKxcY0FDarmUQap6XxpZC9GWCW4nZCzjcKosAZAP7SO44X8Q8gAntbDIXgYUBGp9xtS8wUkwgKPobUePcOOVFkvClxvYZByuiQxoTiK9fQ9jZCPEorbmZCsKDZAx4VLnrNwCTZAPUwXxO61gfq4ZD"),
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
///   name                = "example-bcr"
///   location            = "global"
///   resource_group_name = azure_core_resourcegroup.example.name
///   sku                 = "F0"
///   microsoft_app_id    = data.azure_core_getclientconfig.current.client_id
/// }
/// resource "azure_bot_channelfacebook" "example" {
///   bot_name                    = azure_bot_channelsregistration.example.name
///   location                    = azure_bot_channelsregistration.example.location
///   resource_group_name         = azure_core_resourcegroup.example.name
///   facebook_application_id     = "563490254873576"
///   facebook_application_secret = "8976d2536445ad5b976dee8437b9beb0"
///   pages {
///     id           = "876248795081953"
///     access_token = "CGGCec3UAFPMBAKwK3Ft8SEpO8ZCuvpNBI5DClaJCDfqJj2BgEHCKxcY0FDarmUQap6XxpZC9GWCW4nZCzjcKosAZAP7SO44X8Q8gAntbDIXgYUBGp9xtS8wUkwgKPobUePcOOVFkvClxvYZByuiQxoTiK9fQ9jZCPEorbmZCsKDZAx4VLnrNwCTZAPUwXxO61gfq4ZD"
///   }
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
/// import com.pulumi.azure.bot.ChannelFacebook;
/// import com.pulumi.azure.bot.ChannelFacebookArgs;
/// import com.pulumi.azure.bot.inputs.ChannelFacebookPageArgs;
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
///             .name("example-bcr")
///             .location("global")
///             .resourceGroupName(example.name())
///             .sku("F0")
///             .microsoftAppId(current.clientId())
///             .build());
///
///         var exampleChannelFacebook = new ChannelFacebook("exampleChannelFacebook", ChannelFacebookArgs.builder()
///             .botName(exampleChannelsRegistration.name())
///             .location(exampleChannelsRegistration.location())
///             .resourceGroupName(example.name())
///             .facebookApplicationId("563490254873576")
///             .facebookApplicationSecret("8976d2536445ad5b976dee8437b9beb0")
///             .pages(ChannelFacebookPageArgs.builder()
///                 .id("876248795081953")
///                 .accessToken("CGGCec3UAFPMBAKwK3Ft8SEpO8ZCuvpNBI5DClaJCDfqJj2BgEHCKxcY0FDarmUQap6XxpZC9GWCW4nZCzjcKosAZAP7SO44X8Q8gAntbDIXgYUBGp9xtS8wUkwgKPobUePcOOVFkvClxvYZByuiQxoTiK9fQ9jZCPEorbmZCsKDZAx4VLnrNwCTZAPUwXxO61gfq4ZD")
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
///       name: example-resources
///       location: West Europe
///   exampleChannelsRegistration:
///     type: azure:bot:ChannelsRegistration
///     name: example
///     properties:
///       name: example-bcr
///       location: global
///       resourceGroupName: ${example.name}
///       sku: F0
///       microsoftAppId: ${current.clientId}
///   exampleChannelFacebook:
///     type: azure:bot:ChannelFacebook
///     name: example
///     properties:
///       botName: ${exampleChannelsRegistration.name}
///       location: ${exampleChannelsRegistration.location}
///       resourceGroupName: ${example.name}
///       facebookApplicationId: '563490254873576'
///       facebookApplicationSecret: 8976d2536445ad5b976dee8437b9beb0
///       pages:
///         - id: '876248795081953'
///           accessToken: CGGCec3UAFPMBAKwK3Ft8SEpO8ZCuvpNBI5DClaJCDfqJj2BgEHCKxcY0FDarmUQap6XxpZC9GWCW4nZCzjcKosAZAP7SO44X8Q8gAntbDIXgYUBGp9xtS8wUkwgKPobUePcOOVFkvClxvYZByuiQxoTiK9fQ9jZCPEorbmZCsKDZAx4VLnrNwCTZAPUwXxO61gfq4ZD
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
/// The Facebook Integration for a Bot Channel can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:bot/channelFacebook:ChannelFacebook example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.BotService/botServices/botService1/channels/FacebookChannel
/// ```
class ChannelFacebook extends pulumi.CustomResource {
  /// The name of the Bot Resource this channel will be associated with. Changing this forces a new resource to be created.
  late final pulumi.Output<String> botName;
  /// The Facebook Application ID for the Facebook Channel.
  late final pulumi.Output<String> facebookApplicationId;
  /// The Facebook Application Secret for the Facebook Channel.
  late final pulumi.Output<String> facebookApplicationSecret;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;
  /// One or more `page` blocks as defined below.
  late final pulumi.Output<List<ChannelFacebookPage>> pages;
  /// The name of the resource group where the Facebook Channel should be created. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;

  /// Creates a new [ChannelFacebook].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ChannelFacebook]. {@macro pulumi_bot_channel_facebook_channel_facebook_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ChannelFacebook(
    String name, {
    ChannelFacebookArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:bot/channelFacebook:ChannelFacebook',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
          additionalSecretOutputs: const ['facebookApplicationSecret'],
        ) {
    botName = registerOutput<String>('botName');
    facebookApplicationId = registerOutput<String>('facebookApplicationId');
    facebookApplicationSecret = registerOutput<String>('facebookApplicationSecret', isSecret: true);
    location = registerOutput<String>('location');
    pages = registerOutput<List<ChannelFacebookPage>>('pages', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ChannelFacebookPage>(guardedValue, (value) => ChannelFacebookPage.fromMap((value as Map).cast<String, dynamic>())); });
    resourceGroupName = registerOutput<String>('resourceGroupName');
  }

  /// Gets an existing [ChannelFacebook] resource's state with the given [name] and [id].
  static ChannelFacebook get(
    String name,
    pulumi.Input<String> id, {
    ChannelFacebookState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ChannelFacebook._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ChannelFacebook._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:bot/channelFacebook:ChannelFacebook',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    botName = registerOutput<String>('botName');
    facebookApplicationId = registerOutput<String>('facebookApplicationId');
    facebookApplicationSecret = registerOutput<String>('facebookApplicationSecret', isSecret: true);
    location = registerOutput<String>('location');
    pages = registerOutput<List<ChannelFacebookPage>>('pages', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ChannelFacebookPage>(guardedValue, (value) => ChannelFacebookPage.fromMap((value as Map).cast<String, dynamic>())); });
    resourceGroupName = registerOutput<String>('resourceGroupName');
  }

  /// Creates a typed reference to an existing [ChannelFacebook] resource.
  ChannelFacebook.reference(String urn)
    : super(
        'azure:bot/channelFacebook:ChannelFacebook',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['facebookApplicationSecret'],
        isResourceReference: true,
      ) {
    botName = registerOutput<String>('botName');
    facebookApplicationId = registerOutput<String>('facebookApplicationId');
    facebookApplicationSecret = registerOutput<String>('facebookApplicationSecret', isSecret: true);
    location = registerOutput<String>('location');
    pages = registerOutput<List<ChannelFacebookPage>>('pages', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ChannelFacebookPage>(guardedValue, (value) => ChannelFacebookPage.fromMap((value as Map).cast<String, dynamic>())); });
    resourceGroupName = registerOutput<String>('resourceGroupName');
  }
}
