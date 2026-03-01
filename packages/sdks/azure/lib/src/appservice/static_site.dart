import 'package:pulumi/pulumi.dart' as pulumi;
import 'static_site_args.dart';
import 'static_site_identity.dart';
import 'static_site_state.dart';

/// Manages an App Service Static Site.
///
/// > **Note:** The `azure.appservice.StaticSite` resource is deprecated in favour of `azure.appservice.StaticWebApp` and will be removed in a future major release.
///
/// > **Note:** After the Static Site is provisioned, you'll need to associate your target repository, which contains your web app, to the Static Site, by following the [Azure Static Site document](https://docs.microsoft.com/azure/static-web-apps/github-actions-workflow).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-resources",
///     location: "West Europe",
/// });
/// const exampleStaticSite = new azure.appservice.StaticSite("example", {
///     name: "example",
///     resourceGroupName: example.name,
///     location: example.location,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_static_site = azure.appservice.StaticSite("example",
///     name="example",
///     resource_group_name=example.name,
///     location=example.location)
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
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var exampleStaticSite = new Azure.AppService.StaticSite("example", new()
///     {
///         Name = "example",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/appservice"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-resources"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = appservice.NewStaticSite(ctx, "example", &appservice.StaticSiteArgs{
/// 			Name:              pulumi.String("example"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
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
/// import com.pulumi.azure.appservice.StaticSite;
/// import com.pulumi.azure.appservice.StaticSiteArgs;
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
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var exampleStaticSite = new StaticSite("exampleStaticSite", StaticSiteArgs.builder()
///             .name("example")
///             .resourceGroupName(example.name())
///             .location(example.location())
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
///   exampleStaticSite:
///     type: azure:appservice:StaticSite
///     name: example
///     properties:
///       name: example
///       resourceGroupName: ${example.name}
///       location: ${example.location}
/// ```
///
///
/// ## Import
///
/// Static Web Apps can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:appservice/staticSite:StaticSite example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.Web/staticSites/my-static-site1
/// ```
class StaticSite extends pulumi.CustomResource {
  /// The API key of this Static Web App, which is used for later interacting with this Static Web App from other clients, e.g. GitHub Action.
  late final pulumi.Output<String> apiKey;
  /// A key-value pair of App Settings.
  late final pulumi.Output<Map<String, String>?> appSettings;
  /// The default host name of the Static Web App.
  late final pulumi.Output<String> defaultHostName;
  /// An `identity` block as defined below.
  late final pulumi.Output<StaticSiteIdentity?> identity;
  /// The Azure Region where the Static Web App should exist. Changing this forces a new Static Web App to be created.
  late final pulumi.Output<String> location;
  /// The name which should be used for this Static Web App. Changing this forces a new Static Web App to be created.
  late final pulumi.Output<String> name;
  /// The name of the Resource Group where the Static Web App should exist. Changing this forces a new Static Web App to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// Specifies the SKU size of the Static Web App. Possible values are `Free` or `Standard`. Defaults to `Free`.
  late final pulumi.Output<String?> skuSize;
  /// Specifies the SKU tier of the Static Web App. Possible values are `Free` or `Standard`. Defaults to `Free`.
  late final pulumi.Output<String?> skuTier;
  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [StaticSite].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [StaticSite]. {@macro pulumi_appservice_static_site_static_site_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  StaticSite(
    String name, {
    StaticSiteArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:appservice/staticSite:StaticSite',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.apiKey = registerOutput<String>('apiKey');
    this.appSettings = registerOutput<Map<String, String>?>('appSettings');
    this.defaultHostName = registerOutput<String>('defaultHostName');
    this.identity = registerOutput<StaticSiteIdentity?>('identity');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.skuSize = registerOutput<String?>('skuSize');
    this.skuTier = registerOutput<String?>('skuTier');
    this.tags = registerOutput<Map<String, String>?>('tags');
  }

  /// Gets an existing [StaticSite] resource's state with the given [name] and [id].
  static StaticSite get(
    String name,
    pulumi.Input<String> id, {
    StaticSiteState? state,
  }) {
    return StaticSite._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  StaticSite._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:appservice/staticSite:StaticSite',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.apiKey = registerOutput<String>('apiKey');
    this.appSettings = registerOutput<Map<String, String>?>('appSettings');
    this.defaultHostName = registerOutput<String>('defaultHostName');
    this.identity = registerOutput<StaticSiteIdentity?>('identity');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.skuSize = registerOutput<String?>('skuSize');
    this.skuTier = registerOutput<String?>('skuTier');
    this.tags = registerOutput<Map<String, String>?>('tags');
  }
}
