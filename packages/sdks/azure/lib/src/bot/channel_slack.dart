import 'package:pulumi/pulumi.dart' as pulumi;
import 'channel_slack_args.dart';
import 'channel_slack_state.dart';

/// Manages a Slack integration for a Bot Channel
///
/// &gt; **Note:** A bot can only have a single Slack Channel associated with it.
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
/// const exampleChannelSlack = new azure.bot.ChannelSlack("example", {
///     botName: exampleChannelsRegistration.name,
///     location: exampleChannelsRegistration.location,
///     resourceGroupName: example.name,
///     clientId: "exampleId",
///     clientSecret: "exampleSecret",
///     verificationToken: "exampleVerificationToken",
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
/// example_channel_slack = azure.bot.ChannelSlack("example",
///     bot_name=example_channels_registration.name,
///     location=example_channels_registration.location,
///     resource_group_name=example.name,
///     client_id="exampleId",
///     client_secret="exampleSecret",
///     verification_token="exampleVerificationToken")
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
///     var exampleChannelSlack = new Azure.Bot.ChannelSlack("example", new()
///     {
///         BotName = exampleChannelsRegistration.Name,
///         Location = exampleChannelsRegistration.Location,
///         ResourceGroupName = example.Name,
///         ClientId = "exampleId",
///         ClientSecret = "exampleSecret",
///         VerificationToken = "exampleVerificationToken",
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
/// 		_, err = bot.NewChannelSlack(ctx, "example", &bot.ChannelSlackArgs{
/// 			BotName:           exampleChannelsRegistration.Name,
/// 			Location:          exampleChannelsRegistration.Location,
/// 			ResourceGroupName: example.Name,
/// 			ClientId:          pulumi.String("exampleId"),
/// 			ClientSecret:      pulumi.String("exampleSecret"),
/// 			VerificationToken: pulumi.String("exampleVerificationToken"),
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
/// resource "azure_bot_channelslack" "example" {
///   bot_name            = azure_bot_channelsregistration.example.name
///   location            = azure_bot_channelsregistration.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   client_id           = "exampleId"
///   client_secret       = "exampleSecret"
///   verification_token  = "exampleVerificationToken"
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
/// import com.pulumi.azure.bot.ChannelSlack;
/// import com.pulumi.azure.bot.ChannelSlackArgs;
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
///         var exampleChannelSlack = new ChannelSlack("exampleChannelSlack", ChannelSlackArgs.builder()
///             .botName(exampleChannelsRegistration.name())
///             .location(exampleChannelsRegistration.location())
///             .resourceGroupName(example.name())
///             .clientId("exampleId")
///             .clientSecret("exampleSecret")
///             .verificationToken("exampleVerificationToken")
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
///   exampleChannelSlack:
///     type: azure:bot:ChannelSlack
///     name: example
///     properties:
///       botName: ${exampleChannelsRegistration.name}
///       location: ${exampleChannelsRegistration.location}
///       resourceGroupName: ${example.name}
///       clientId: exampleId
///       clientSecret: exampleSecret
///       verificationToken: exampleVerificationToken
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
/// The Slack Integration for a Bot Channel can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:bot/channelSlack:ChannelSlack example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/example/providers/Microsoft.BotService/botServices/example/channels/SlackChannel
/// ```
class ChannelSlack extends pulumi.CustomResource {
  /// The name of the Bot Resource this channel will be associated with. Changing this forces a new resource to be created.
  late final pulumi.Output<String> botName;
  /// The Client ID that will be used to authenticate with Slack.
  late final pulumi.Output<String> clientId;
  /// The Client Secret that will be used to authenticate with Slack.
  late final pulumi.Output<String> clientSecret;
  /// The Slack Landing Page URL.
  late final pulumi.Output<String?> landingPageUrl;
  /// The supported Azure location where the resource exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;
  /// The name of the resource group in which to create the Bot Channel. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// The Signing Secret that will be used to sign the requests.
  late final pulumi.Output<String?> signingSecret;
  /// The Verification Token that will be used to authenticate with Slack.
  late final pulumi.Output<String> verificationToken;

  /// Creates a new [ChannelSlack].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ChannelSlack]. {@macro pulumi_bot_channel_slack_channel_slack_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ChannelSlack(
    String name, {
    ChannelSlackArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:bot/channelSlack:ChannelSlack',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    botName = registerOutput<String>('botName');
    clientId = registerOutput<String>('clientId');
    clientSecret = registerOutput<String>('clientSecret');
    landingPageUrl = registerOutput<String?>('landingPageUrl');
    location = registerOutput<String>('location');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    signingSecret = registerOutput<String?>('signingSecret');
    verificationToken = registerOutput<String>('verificationToken');
  }

  /// Gets an existing [ChannelSlack] resource's state with the given [name] and [id].
  static ChannelSlack get(
    String name,
    pulumi.Input<String> id, {
    ChannelSlackState? state,
  }) {
    return ChannelSlack._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ChannelSlack._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:bot/channelSlack:ChannelSlack',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    botName = registerOutput<String>('botName');
    clientId = registerOutput<String>('clientId');
    clientSecret = registerOutput<String>('clientSecret');
    landingPageUrl = registerOutput<String?>('landingPageUrl');
    location = registerOutput<String>('location');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    signingSecret = registerOutput<String?>('signingSecret');
    verificationToken = registerOutput<String>('verificationToken');
  }
}
