import 'package:pulumi/pulumi.dart' as pulumi;
import 'channel_alexa_args.dart';
import 'channel_alexa_state.dart';

/// Manages an Alexa integration for a Bot Channel
///
/// > **Note:** A bot can only have a single Alexa Channel associated with it.
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
/// const exampleChannelAlexa = new azure.bot.ChannelAlexa("example", {
///     botName: exampleChannelsRegistration.name,
///     location: exampleChannelsRegistration.location,
///     resourceGroupName: example.name,
///     skillId: "amzn1.ask.skill.00000000-0000-0000-0000-000000000000",
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
/// example_channel_alexa = azure.bot.ChannelAlexa("example",
///     bot_name=example_channels_registration.name,
///     location=example_channels_registration.location,
///     resource_group_name=example.name,
///     skill_id="amzn1.ask.skill.00000000-0000-0000-0000-000000000000")
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
///     var exampleChannelAlexa = new Azure.Bot.ChannelAlexa("example", new()
///     {
///         BotName = exampleChannelsRegistration.Name,
///         Location = exampleChannelsRegistration.Location,
///         ResourceGroupName = example.Name,
///         SkillId = "amzn1.ask.skill.00000000-0000-0000-0000-000000000000",
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
/// 		_, err = bot.NewChannelAlexa(ctx, "example", &bot.ChannelAlexaArgs{
/// 			BotName:           exampleChannelsRegistration.Name,
/// 			Location:          exampleChannelsRegistration.Location,
/// 			ResourceGroupName: example.Name,
/// 			SkillId:           pulumi.String("amzn1.ask.skill.00000000-0000-0000-0000-000000000000"),
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
/// import com.pulumi.azure.core.CoreFunctions;
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.bot.ChannelsRegistration;
/// import com.pulumi.azure.bot.ChannelsRegistrationArgs;
/// import com.pulumi.azure.bot.ChannelAlexa;
/// import com.pulumi.azure.bot.ChannelAlexaArgs;
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
///         var exampleChannelAlexa = new ChannelAlexa("exampleChannelAlexa", ChannelAlexaArgs.builder()
///             .botName(exampleChannelsRegistration.name())
///             .location(exampleChannelsRegistration.location())
///             .resourceGroupName(example.name())
///             .skillId("amzn1.ask.skill.00000000-0000-0000-0000-000000000000")
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
///   exampleChannelAlexa:
///     type: azure:bot:ChannelAlexa
///     name: example
///     properties:
///       botName: ${exampleChannelsRegistration.name}
///       location: ${exampleChannelsRegistration.location}
///       resourceGroupName: ${example.name}
///       skillId: amzn1.ask.skill.00000000-0000-0000-0000-000000000000
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
/// The Alexa Integration for a Bot Channel can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:bot/channelAlexa:ChannelAlexa example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.BotService/botServices/botService1/channels/AlexaChannel
/// ```
class ChannelAlexa extends pulumi.CustomResource {
  /// The name of the Bot Resource this channel will be associated with. Changing this forces a new resource to be created.
  late final pulumi.Output<String> botName;
  /// The supported Azure location where the resource exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;
  /// The name of the resource group where the Alexa Channel should be created. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// The Alexa skill ID for the Alexa Channel.
  late final pulumi.Output<String> skillId;

  /// Creates a new [ChannelAlexa].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ChannelAlexa]. {@macro pulumi_bot_channel_alexa_channel_alexa_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ChannelAlexa(
    String name, {
    ChannelAlexaArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:bot/channelAlexa:ChannelAlexa',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.botName = registerOutput<String>('botName');
    this.location = registerOutput<String>('location');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.skillId = registerOutput<String>('skillId');
  }

  /// Gets an existing [ChannelAlexa] resource's state with the given [name] and [id].
  static ChannelAlexa get(
    String name,
    pulumi.Input<String> id, {
    ChannelAlexaState? state,
  }) {
    return ChannelAlexa._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ChannelAlexa._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:bot/channelAlexa:ChannelAlexa',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.botName = registerOutput<String>('botName');
    this.location = registerOutput<String>('location');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.skillId = registerOutput<String>('skillId');
  }
}
