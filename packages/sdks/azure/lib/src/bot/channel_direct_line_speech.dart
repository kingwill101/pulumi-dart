import 'package:pulumi/pulumi.dart' as pulumi;
import 'channel_direct_line_speech_args.dart';
import 'channel_direct_line_speech_state.dart';

/// Manages a Direct Line Speech integration for a Bot Channel
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
/// const exampleAccount = new azure.cognitive.Account("example", {
///     name: "example-cogacct",
///     location: example.location,
///     resourceGroupName: example.name,
///     kind: "SpeechServices",
///     skuName: "S0",
/// });
/// const exampleChannelsRegistration = new azure.bot.ChannelsRegistration("example", {
///     name: "example-bcr",
///     location: "global",
///     resourceGroupName: example.name,
///     sku: "F0",
///     microsoftAppId: current.then(current => current.clientId),
/// });
/// const exampleChannelDirectLineSpeech = new azure.bot.ChannelDirectLineSpeech("example", {
///     botName: exampleChannelsRegistration.name,
///     location: exampleChannelsRegistration.location,
///     resourceGroupName: example.name,
///     cognitiveServiceLocation: exampleAccount.location,
///     cognitiveServiceAccessKey: exampleAccount.primaryAccessKey,
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
/// example_account = azure.cognitive.Account("example",
///     name="example-cogacct",
///     location=example.location,
///     resource_group_name=example.name,
///     kind="SpeechServices",
///     sku_name="S0")
/// example_channels_registration = azure.bot.ChannelsRegistration("example",
///     name="example-bcr",
///     location="global",
///     resource_group_name=example.name,
///     sku="F0",
///     microsoft_app_id=current.client_id)
/// example_channel_direct_line_speech = azure.bot.ChannelDirectLineSpeech("example",
///     bot_name=example_channels_registration.name,
///     location=example_channels_registration.location,
///     resource_group_name=example.name,
///     cognitive_service_location=example_account.location,
///     cognitive_service_access_key=example_account.primary_access_key)
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
///     var exampleAccount = new Azure.Cognitive.Account("example", new()
///     {
///         Name = "example-cogacct",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         Kind = "SpeechServices",
///         SkuName = "S0",
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
///     var exampleChannelDirectLineSpeech = new Azure.Bot.ChannelDirectLineSpeech("example", new()
///     {
///         BotName = exampleChannelsRegistration.Name,
///         Location = exampleChannelsRegistration.Location,
///         ResourceGroupName = example.Name,
///         CognitiveServiceLocation = exampleAccount.Location,
///         CognitiveServiceAccessKey = exampleAccount.PrimaryAccessKey,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/bot"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/cognitive"
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
/// 		exampleAccount, err := cognitive.NewAccount(ctx, "example", &cognitive.AccountArgs{
/// 			Name:              pulumi.String("example-cogacct"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			Kind:              pulumi.String("SpeechServices"),
/// 			SkuName:           pulumi.String("S0"),
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
/// 		_, err = bot.NewChannelDirectLineSpeech(ctx, "example", &bot.ChannelDirectLineSpeechArgs{
/// 			BotName:                   exampleChannelsRegistration.Name,
/// 			Location:                  exampleChannelsRegistration.Location,
/// 			ResourceGroupName:         example.Name,
/// 			CognitiveServiceLocation:  exampleAccount.Location,
/// 			CognitiveServiceAccessKey: exampleAccount.PrimaryAccessKey,
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
/// import com.pulumi.azure.cognitive.Account;
/// import com.pulumi.azure.cognitive.AccountArgs;
/// import com.pulumi.azure.bot.ChannelsRegistration;
/// import com.pulumi.azure.bot.ChannelsRegistrationArgs;
/// import com.pulumi.azure.bot.ChannelDirectLineSpeech;
/// import com.pulumi.azure.bot.ChannelDirectLineSpeechArgs;
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
///         var exampleAccount = new Account("exampleAccount", AccountArgs.builder()
///             .name("example-cogacct")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .kind("SpeechServices")
///             .skuName("S0")
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
///         var exampleChannelDirectLineSpeech = new ChannelDirectLineSpeech("exampleChannelDirectLineSpeech", ChannelDirectLineSpeechArgs.builder()
///             .botName(exampleChannelsRegistration.name())
///             .location(exampleChannelsRegistration.location())
///             .resourceGroupName(example.name())
///             .cognitiveServiceLocation(exampleAccount.location())
///             .cognitiveServiceAccessKey(exampleAccount.primaryAccessKey())
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
///   exampleAccount:
///     type: azure:cognitive:Account
///     name: example
///     properties:
///       name: example-cogacct
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       kind: SpeechServices
///       skuName: S0
///   exampleChannelsRegistration:
///     type: azure:bot:ChannelsRegistration
///     name: example
///     properties:
///       name: example-bcr
///       location: global
///       resourceGroupName: ${example.name}
///       sku: F0
///       microsoftAppId: ${current.clientId}
///   exampleChannelDirectLineSpeech:
///     type: azure:bot:ChannelDirectLineSpeech
///     name: example
///     properties:
///       botName: ${exampleChannelsRegistration.name}
///       location: ${exampleChannelsRegistration.location}
///       resourceGroupName: ${example.name}
///       cognitiveServiceLocation: ${exampleAccount.location}
///       cognitiveServiceAccessKey: ${exampleAccount.primaryAccessKey}
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
/// Direct Line Speech Channels can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:bot/channelDirectLineSpeech:ChannelDirectLineSpeech example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.BotService/botServices/botService1/channels/DirectLineSpeechChannel
/// ```
class ChannelDirectLineSpeech extends pulumi.CustomResource {
  /// The name of the Bot Resource this channel will be associated with. Changing this forces a new resource to be created.
  late final pulumi.Output<String> botName;
  /// The ID of the Cognitive Account this Bot Channel should be associated with.
  late final pulumi.Output<String?> cognitiveAccountId;
  /// The access key to access the Cognitive Service.
  late final pulumi.Output<String> cognitiveServiceAccessKey;
  /// Specifies the supported Azure location where the Cognitive Service resource exists.
  late final pulumi.Output<String> cognitiveServiceLocation;
  /// The custom speech model id for the Direct Line Speech Channel.
  late final pulumi.Output<String?> customSpeechModelId;
  /// The custom voice deployment id for the Direct Line Speech Channel.
  late final pulumi.Output<String?> customVoiceDeploymentId;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;
  /// The name of the resource group where the Direct Line Speech Channel should be created. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;

  /// Creates a new [ChannelDirectLineSpeech].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ChannelDirectLineSpeech]. {@macro pulumi_bot_channel_direct_line_speech_channel_direct_line_speech_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ChannelDirectLineSpeech(
    String name, {
    ChannelDirectLineSpeechArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:bot/channelDirectLineSpeech:ChannelDirectLineSpeech',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.botName = registerOutput<String>('botName');
    this.cognitiveAccountId = registerOutput<String?>('cognitiveAccountId');
    this.cognitiveServiceAccessKey = registerOutput<String>('cognitiveServiceAccessKey');
    this.cognitiveServiceLocation = registerOutput<String>('cognitiveServiceLocation');
    this.customSpeechModelId = registerOutput<String?>('customSpeechModelId');
    this.customVoiceDeploymentId = registerOutput<String?>('customVoiceDeploymentId');
    this.location = registerOutput<String>('location');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
  }

  /// Gets an existing [ChannelDirectLineSpeech] resource's state with the given [name] and [id].
  static ChannelDirectLineSpeech get(
    String name,
    pulumi.Input<String> id, {
    ChannelDirectLineSpeechState? state,
  }) {
    return ChannelDirectLineSpeech._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ChannelDirectLineSpeech._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:bot/channelDirectLineSpeech:ChannelDirectLineSpeech',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.botName = registerOutput<String>('botName');
    this.cognitiveAccountId = registerOutput<String?>('cognitiveAccountId');
    this.cognitiveServiceAccessKey = registerOutput<String>('cognitiveServiceAccessKey');
    this.cognitiveServiceLocation = registerOutput<String>('cognitiveServiceLocation');
    this.customSpeechModelId = registerOutput<String?>('customSpeechModelId');
    this.customVoiceDeploymentId = registerOutput<String?>('customVoiceDeploymentId');
    this.location = registerOutput<String>('location');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
  }
}
