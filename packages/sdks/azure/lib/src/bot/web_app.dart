import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_app_args.dart';
import 'web_app_state.dart';

/// Manages a Bot Web App.
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
/// const exampleWebApp = new azure.bot.WebApp("example", {
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
/// example_web_app = azure.bot.WebApp("example",
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
///     var exampleWebApp = new Azure.Bot.WebApp("example", new()
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
/// 		_, err = bot.NewWebApp(ctx, "example", &bot.WebAppArgs{
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
/// import com.pulumi.azure.bot.WebApp;
/// import com.pulumi.azure.bot.WebAppArgs;
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
///         var exampleWebApp = new WebApp("exampleWebApp", WebAppArgs.builder()
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
///   exampleWebApp:
///     type: azure:bot:WebApp
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
/// Bot Web App's can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:bot/webApp:WebApp example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/example/providers/Microsoft.BotService/botServices/example
/// ```
class WebApp extends pulumi.CustomResource {
  /// The Application Insights API Key to associate with the Web App Bot.
  late final pulumi.Output<String?> developerAppInsightsApiKey;
  /// The Application Insights Application ID to associate with the Web App Bot.
  late final pulumi.Output<String?> developerAppInsightsApplicationId;
  /// The Application Insights Key to associate with the Web App Bot.
  late final pulumi.Output<String?> developerAppInsightsKey;
  /// The name of the Web App Bot will be displayed as. This defaults to `name` if not specified.
  late final pulumi.Output<String> displayName;
  /// The Web App Bot endpoint.
  late final pulumi.Output<String?> endpoint;
  /// The supported Azure location where the resource exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;
  /// A list of LUIS App IDs to associate with the Web App Bot.
  late final pulumi.Output<List<String>?> luisAppIds;
  /// The LUIS key to associate with the Web App Bot.
  late final pulumi.Output<String?> luisKey;
  /// The Microsoft Application ID for the Web App Bot. Changing this forces a new resource to be created.
  late final pulumi.Output<String> microsoftAppId;
  /// Specifies the name of the Web App Bot. Changing this forces a new resource to be created. Must be globally unique.
  late final pulumi.Output<String> name;
  /// The name of the resource group in which to create the Web App Bot. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// The SKU of the Web App Bot. Valid values include `F0` or `S1`. Changing this forces a new resource to be created.
  late final pulumi.Output<String> sku;
  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [WebApp].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WebApp]. {@macro pulumi_bot_web_app_web_app_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WebApp(
    String name, {
    WebAppArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:bot/webApp:WebApp',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.developerAppInsightsApiKey = registerOutput<String?>('developerAppInsightsApiKey');
    this.developerAppInsightsApplicationId = registerOutput<String?>('developerAppInsightsApplicationId');
    this.developerAppInsightsKey = registerOutput<String?>('developerAppInsightsKey');
    this.displayName = registerOutput<String>('displayName');
    this.endpoint = registerOutput<String?>('endpoint');
    this.location = registerOutput<String>('location');
    this.luisAppIds = registerOutput<List<String>?>('luisAppIds');
    this.luisKey = registerOutput<String?>('luisKey');
    this.microsoftAppId = registerOutput<String>('microsoftAppId');
    this.name = registerOutput<String>('name');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.sku = registerOutput<String>('sku');
    this.tags = registerOutput<Map<String, String>?>('tags');
  }

  /// Gets an existing [WebApp] resource's state with the given [name] and [id].
  static WebApp get(
    String name,
    pulumi.Input<String> id, {
    WebAppState? state,
  }) {
    return WebApp._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  WebApp._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:bot/webApp:WebApp',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.developerAppInsightsApiKey = registerOutput<String?>('developerAppInsightsApiKey');
    this.developerAppInsightsApplicationId = registerOutput<String?>('developerAppInsightsApplicationId');
    this.developerAppInsightsKey = registerOutput<String?>('developerAppInsightsKey');
    this.displayName = registerOutput<String>('displayName');
    this.endpoint = registerOutput<String?>('endpoint');
    this.location = registerOutput<String>('location');
    this.luisAppIds = registerOutput<List<String>?>('luisAppIds');
    this.luisKey = registerOutput<String?>('luisKey');
    this.microsoftAppId = registerOutput<String>('microsoftAppId');
    this.name = registerOutput<String>('name');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.sku = registerOutput<String>('sku');
    this.tags = registerOutput<Map<String, String>?>('tags');
  }
}
