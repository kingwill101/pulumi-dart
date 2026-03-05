import 'package:pulumi/pulumi.dart' as pulumi;
import 'channels_registration_args.dart';
import 'channels_registration_state.dart';

/// Manages a Bot Channels Registration.
///
/// &gt; **Note:** Bot Channels Registration has been [deprecated by Azure](https://learn.microsoft.com/en-us/azure/bot-service/bot-service-resources-faq-azure?view=azure-bot-service-4.0#why-are-web-app-bot-and-bot-channel-registration-being-deprecated). New implementations should use the `azure.bot.ServiceAzureBot` resource.
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
/// 		_, err = bot.NewChannelsRegistration(ctx, "example", &bot.ChannelsRegistrationArgs{
/// 			Name:              pulumi.String("example"),
/// 			Location:          pulumi.String("global"),
/// 			ResourceGroupName: example.Name,
/// 			Sku:               pulumi.String("F0"),
/// 			MicrosoftAppId:    pulumi.String(current.ClientId),
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
///             .name("example")
///             .location("global")
///             .resourceGroupName(example.name())
///             .sku("F0")
///             .microsoftAppId(current.clientId())
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
/// Bot Channels Registration can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:bot/channelsRegistration:ChannelsRegistration example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/example/providers/Microsoft.BotService/botServices/example
/// ```
class ChannelsRegistration extends pulumi.CustomResource {
  /// The CMK Key Vault Key URL to encrypt the Bot Channels Registration with the Customer Managed Encryption Key.
  ///
  /// &gt; **Note:** It has to add the Key Vault Access Policy for the `Bot Service CMEK Prod` Service Principal and the `soft_delete_enabled` and the `purge_protection_enabled` is enabled on the `azure.keyvault.KeyVault` resource while using `cmk_key_vault_url`.
  ///
  /// &gt; **Note:** It has to turn off the CMK feature before revoking Key Vault Access Policy. For more information, please refer to [Revoke access to customer-managed keys](https://docs.microsoft.com/azure/bot-service/bot-service-encryption?view=azure-bot-service-4.0&WT.mc_id=Portal-Microsoft_Azure_BotService#revoke-access-to-customer-managed-keys).
  late final pulumi.Output<String?> cmkKeyVaultUrl;
  /// The description of the Bot Channels Registration.
  late final pulumi.Output<String?> description;
  /// The Application Insights API Key to associate with the Bot Channels Registration.
  late final pulumi.Output<String?> developerAppInsightsApiKey;
  /// The Application Insights Application ID to associate with the Bot Channels Registration.
  late final pulumi.Output<String?> developerAppInsightsApplicationId;
  /// The Application Insights Key to associate with the Bot Channels Registration.
  late final pulumi.Output<String?> developerAppInsightsKey;
  /// The name of the Bot Channels Registration will be displayed as. This defaults to `name` if not specified.
  late final pulumi.Output<String> displayName;
  /// The Bot Channels Registration endpoint.
  late final pulumi.Output<String?> endpoint;
  /// The icon URL to visually identify the Bot Channels Registration. Defaults to `https://docs.botframework.com/static/devportal/client/images/bot-framework-default.png`.
  late final pulumi.Output<String?> iconUrl;
  /// The supported Azure location where the resource exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;
  /// The Microsoft Application ID for the Bot Channels Registration. Changing this forces a new resource to be created.
  late final pulumi.Output<String> microsoftAppId;
  /// Specifies the name of the Bot Channels Registration. Changing this forces a new resource to be created. Must be globally unique.
  late final pulumi.Output<String> name;
  /// Is the Bot Channels Registration in an isolated network?
  late final pulumi.Output<bool?> publicNetworkAccessEnabled;
  /// The name of the resource group in which to create the Bot Channels Registration. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// The SKU of the Bot Channels Registration. Valid values include `F0` or `S1`. Changing this forces a new resource to be created.
  late final pulumi.Output<String> sku;
  /// Is the streaming endpoint enabled for the Bot Channels Registration. Defaults to `false`.
  late final pulumi.Output<bool?> streamingEndpointEnabled;
  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [ChannelsRegistration].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ChannelsRegistration]. {@macro pulumi_bot_channels_registration_channels_registration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ChannelsRegistration(
    String name, {
    ChannelsRegistrationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:bot/channelsRegistration:ChannelsRegistration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    cmkKeyVaultUrl = registerOutput<String?>('cmkKeyVaultUrl');
    description = registerOutput<String?>('description');
    developerAppInsightsApiKey = registerOutput<String?>('developerAppInsightsApiKey');
    developerAppInsightsApplicationId = registerOutput<String?>('developerAppInsightsApplicationId');
    developerAppInsightsKey = registerOutput<String?>('developerAppInsightsKey');
    displayName = registerOutput<String>('displayName');
    endpoint = registerOutput<String?>('endpoint');
    iconUrl = registerOutput<String?>('iconUrl');
    location = registerOutput<String>('location');
    microsoftAppId = registerOutput<String>('microsoftAppId');
    this.name = registerOutput<String>('name');
    publicNetworkAccessEnabled = registerOutput<bool?>('publicNetworkAccessEnabled');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    sku = registerOutput<String>('sku');
    streamingEndpointEnabled = registerOutput<bool?>('streamingEndpointEnabled');
    tags = registerOutput<Map<String, String>?>('tags');
  }

  /// Gets an existing [ChannelsRegistration] resource's state with the given [name] and [id].
  static ChannelsRegistration get(
    String name,
    pulumi.Input<String> id, {
    ChannelsRegistrationState? state,
  }) {
    return ChannelsRegistration._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ChannelsRegistration._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:bot/channelsRegistration:ChannelsRegistration',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    cmkKeyVaultUrl = registerOutput<String?>('cmkKeyVaultUrl');
    description = registerOutput<String?>('description');
    developerAppInsightsApiKey = registerOutput<String?>('developerAppInsightsApiKey');
    developerAppInsightsApplicationId = registerOutput<String?>('developerAppInsightsApplicationId');
    developerAppInsightsKey = registerOutput<String?>('developerAppInsightsKey');
    displayName = registerOutput<String>('displayName');
    endpoint = registerOutput<String?>('endpoint');
    iconUrl = registerOutput<String?>('iconUrl');
    location = registerOutput<String>('location');
    microsoftAppId = registerOutput<String>('microsoftAppId');
    this.name = registerOutput<String>('name');
    publicNetworkAccessEnabled = registerOutput<bool?>('publicNetworkAccessEnabled');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    sku = registerOutput<String>('sku');
    streamingEndpointEnabled = registerOutput<bool?>('streamingEndpointEnabled');
    tags = registerOutput<Map<String, String>?>('tags');
  }
}
