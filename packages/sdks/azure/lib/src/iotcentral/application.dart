import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_args.dart';
import 'application_identity.dart';
import 'application_state.dart';

/// Manages an IoT Central Application
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-resource",
///     location: "West Europe",
/// });
/// const exampleApplication = new azure.iotcentral.Application("example", {
///     name: "example-iotcentral-app",
///     resourceGroupName: example.name,
///     location: example.location,
///     subDomain: "example-iotcentral-app-subdomain",
///     displayName: "example-iotcentral-app-display-name",
///     sku: "ST1",
///     template: "iotc-default@1.0.0",
///     tags: {
///         Foo: "Bar",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resource",
///     location="West Europe")
/// example_application = azure.iotcentral.Application("example",
///     name="example-iotcentral-app",
///     resource_group_name=example.name,
///     location=example.location,
///     sub_domain="example-iotcentral-app-subdomain",
///     display_name="example-iotcentral-app-display-name",
///     sku="ST1",
///     template="iotc-default@1.0.0",
///     tags={
///         "Foo": "Bar",
///     })
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
///         Name = "example-resource",
///         Location = "West Europe",
///     });
///
///     var exampleApplication = new Azure.IotCentral.Application("example", new()
///     {
///         Name = "example-iotcentral-app",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         SubDomain = "example-iotcentral-app-subdomain",
///         DisplayName = "example-iotcentral-app-display-name",
///         Sku = "ST1",
///         Template = "iotc-default@1.0.0",
///         Tags =
///         {
///             { "Foo", "Bar" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/iotcentral"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-resource"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = iotcentral.NewApplication(ctx, "example", &iotcentral.ApplicationArgs{
/// 			Name:              pulumi.String("example-iotcentral-app"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			SubDomain:         pulumi.String("example-iotcentral-app-subdomain"),
/// 			DisplayName:       pulumi.String("example-iotcentral-app-display-name"),
/// 			Sku:               pulumi.String("ST1"),
/// 			Template:          pulumi.String("iotc-default@1.0.0"),
/// 			Tags: pulumi.StringMap{
/// 				"Foo": pulumi.String("Bar"),
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
/// resource "azure_core_resourcegroup" "example" {
///   name     = "example-resource"
///   location = "West Europe"
/// }
/// resource "azure_iotcentral_application" "example" {
///   name                = "example-iotcentral-app"
///   resource_group_name = azure_core_resourcegroup.example.name
///   location            = azure_core_resourcegroup.example.location
///   sub_domain          = "example-iotcentral-app-subdomain"
///   display_name        = "example-iotcentral-app-display-name"
///   sku                 = "ST1"
///   template            = "iotc-default@1.0.0"
///   tags = {
///     "Foo" = "Bar"
///   }
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
/// import com.pulumi.azure.iotcentral.Application;
/// import com.pulumi.azure.iotcentral.ApplicationArgs;
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
///             .name("example-resource")
///             .location("West Europe")
///             .build());
///
///         var exampleApplication = new Application("exampleApplication", ApplicationArgs.builder()
///             .name("example-iotcentral-app")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .subDomain("example-iotcentral-app-subdomain")
///             .displayName("example-iotcentral-app-display-name")
///             .sku("ST1")
///             .template("iotc-default@1.0.0")
///             .tags(Map.of("Foo", "Bar"))
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
///       name: example-resource
///       location: West Europe
///   exampleApplication:
///     type: azure:iotcentral:Application
///     name: example
///     properties:
///       name: example-iotcentral-app
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       subDomain: example-iotcentral-app-subdomain
///       displayName: example-iotcentral-app-display-name
///       sku: ST1
///       template: iotc-default@1.0.0
///       tags:
///         Foo: Bar
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.IoTCentral` - 2021-11-01-preview
///
/// ## Import
///
/// The IoT Central Application can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:iotcentral/application:Application example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.IoTCentral/iotApps/app1
/// ```
class Application extends pulumi.CustomResource {
  /// A `displayName` name. Custom display name for the IoT Central application. Default is resource name.
  ///
  /// &gt; **Note:** Due to a bug in the provider, the default value of `displayName` of a newly created IoT Central App will be the Resource Group Name, it will be fixed and use resource name in 4.0. For an existing IoT Central App, this could be fixed by specifying the `displayName` explicitly.
  late final pulumi.Output<String> displayName;
  /// An `identity` block as defined below.
  late final pulumi.Output<ApplicationIdentity?> identity;
  /// Specifies the supported Azure location where the resource has to be create. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;
  /// Specifies the name of the IotHub resource. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// Whether public network access is allowed for the IoT Central Application. Defaults to `true`.
  late final pulumi.Output<bool?> publicNetworkAccessEnabled;
  /// The name of the resource group under which the IotHub resource has to be created. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// A `sku` name. Possible values is `ST0`, `ST1`, `ST2`, Default value is `ST1`
  late final pulumi.Output<String?> sku;
  /// A `subDomain` name. Subdomain for the IoT Central URL. Each application must have a unique subdomain.
  late final pulumi.Output<String> subDomain;
  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A `template` name. IoT Central application template name. Defaults to `iotc-pnp-preview@1.0.0`. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> template;

  /// Creates a new [Application].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Application]. {@macro pulumi_iotcentral_application_application_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Application(
    String name, {
    ApplicationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:iotcentral/application:Application',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    displayName = registerOutput<String>('displayName');
    identity = registerOutput<ApplicationIdentity?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApplicationIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    publicNetworkAccessEnabled = registerOutput<bool?>('publicNetworkAccessEnabled');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    sku = registerOutput<String?>('sku');
    subDomain = registerOutput<String>('subDomain');
    tags = registerOutput<Map<String, String>?>('tags');
    template = registerOutput<String?>('template');
  }

  /// Gets an existing [Application] resource's state with the given [name] and [id].
  static Application get(
    String name,
    pulumi.Input<String> id, {
    ApplicationState? state,
  }) {
    return Application._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Application._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:iotcentral/application:Application',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    displayName = registerOutput<String>('displayName');
    identity = registerOutput<ApplicationIdentity?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApplicationIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    publicNetworkAccessEnabled = registerOutput<bool?>('publicNetworkAccessEnabled');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    sku = registerOutput<String?>('sku');
    subDomain = registerOutput<String>('subDomain');
    tags = registerOutput<Map<String, String>?>('tags');
    template = registerOutput<String?>('template');
  }
}
