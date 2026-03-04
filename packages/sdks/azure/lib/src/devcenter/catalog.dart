import 'package:pulumi/pulumi.dart' as pulumi;
import 'catalog_args.dart';
import 'catalog_catalog_adogit.dart';
import 'catalog_catalog_github.dart';
import 'catalog_state.dart';

/// Manages a Dev Center Catalog.
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
/// const exampleDevCenter = new azure.devcenter.DevCenter("example", {
///     location: example.location,
///     name: "example",
///     resourceGroupName: example.name,
///     identity: {
///         type: "SystemAssigned",
///     },
/// });
/// const exampleCatalog = new azure.devcenter.Catalog("example", {
///     name: "example",
///     resourceGroupName: testAzurermResourceGroup.name,
///     devCenterId: test.id,
///     catalogGithub: {
///         branch: "foo",
///         path: "",
///         uri: "example URI",
///         keyVaultKeyUrl: "secret",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_dev_center = azure.devcenter.DevCenter("example",
///     location=example.location,
///     name="example",
///     resource_group_name=example.name,
///     identity={
///         "type": "SystemAssigned",
///     })
/// example_catalog = azure.devcenter.Catalog("example",
///     name="example",
///     resource_group_name=test_azurerm_resource_group["name"],
///     dev_center_id=test["id"],
///     catalog_github={
///         "branch": "foo",
///         "path": "",
///         "uri": "example URI",
///         "key_vault_key_url": "secret",
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
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var exampleDevCenter = new Azure.DevCenter.DevCenter("example", new()
///     {
///         Location = example.Location,
///         Name = "example",
///         ResourceGroupName = example.Name,
///         Identity = new Azure.DevCenter.Inputs.DevCenterIdentityArgs
///         {
///             Type = "SystemAssigned",
///         },
///     });
///
///     var exampleCatalog = new Azure.DevCenter.Catalog("example", new()
///     {
///         Name = "example",
///         ResourceGroupName = testAzurermResourceGroup.Name,
///         DevCenterId = test.Id,
///         CatalogGithub = new Azure.DevCenter.Inputs.CatalogCatalogGithubArgs
///         {
///             Branch = "foo",
///             Path = "",
///             Uri = "example URI",
///             KeyVaultKeyUrl = "secret",
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/devcenter"
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
/// 		_, err = devcenter.NewDevCenter(ctx, "example", &devcenter.DevCenterArgs{
/// 			Location:          example.Location,
/// 			Name:              pulumi.String("example"),
/// 			ResourceGroupName: example.Name,
/// 			Identity: &devcenter.DevCenterIdentityArgs{
/// 				Type: pulumi.String("SystemAssigned"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = devcenter.NewCatalog(ctx, "example", &devcenter.CatalogArgs{
/// 			Name:              pulumi.String("example"),
/// 			ResourceGroupName: pulumi.Any(testAzurermResourceGroup.Name),
/// 			DevCenterId:       pulumi.Any(test.Id),
/// 			CatalogGithub: &devcenter.CatalogCatalogGithubArgs{
/// 				Branch:         pulumi.String("foo"),
/// 				Path:           pulumi.String(""),
/// 				Uri:            pulumi.String("example URI"),
/// 				KeyVaultKeyUrl: pulumi.String("secret"),
/// 			},
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
/// import com.pulumi.azure.devcenter.DevCenter;
/// import com.pulumi.azure.devcenter.DevCenterArgs;
/// import com.pulumi.azure.devcenter.inputs.DevCenterIdentityArgs;
/// import com.pulumi.azure.devcenter.Catalog;
/// import com.pulumi.azure.devcenter.CatalogArgs;
/// import com.pulumi.azure.devcenter.inputs.CatalogCatalogGithubArgs;
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
///         var exampleDevCenter = new DevCenter("exampleDevCenter", DevCenterArgs.builder()
///             .location(example.location())
///             .name("example")
///             .resourceGroupName(example.name())
///             .identity(DevCenterIdentityArgs.builder()
///                 .type("SystemAssigned")
///                 .build())
///             .build());
///
///         var exampleCatalog = new Catalog("exampleCatalog", CatalogArgs.builder()
///             .name("example")
///             .resourceGroupName(testAzurermResourceGroup.name())
///             .devCenterId(test.id())
///             .catalogGithub(CatalogCatalogGithubArgs.builder()
///                 .branch("foo")
///                 .path("")
///                 .uri("example URI")
///                 .keyVaultKeyUrl("secret")
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
///   exampleDevCenter:
///     type: azure:devcenter:DevCenter
///     name: example
///     properties:
///       location: ${example.location}
///       name: example
///       resourceGroupName: ${example.name}
///       identity:
///         type: SystemAssigned
///   exampleCatalog:
///     type: azure:devcenter:Catalog
///     name: example
///     properties:
///       name: example
///       resourceGroupName: ${testAzurermResourceGroup.name}
///       devCenterId: ${test.id}
///       catalogGithub:
///         branch: foo
///         path: ""
///         uri: example URI
///         keyVaultKeyUrl: secret
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.DevCenter` - 2025-02-01
///
/// ## Import
///
/// An existing Dev Center Catalog can be imported into Pulumi using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:devcenter/catalog:Catalog example /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DevCenter/devCenters/{devCenterName}/catalogs/{catalogName}
/// ```
///
/// * Where `{subscriptionId}` is the ID of the Azure Subscription where the Dev Center exists. For example `12345678-1234-9876-4563-123456789012`.
/// * Where `{resourceGroupName}` is the name of Resource Group where this Dev Center exists. For example `example-resource-group`.
/// * Where `{devCenterName}` is the name of the Dev Center. For example `devCenterValue`.
/// * Where `{catalogName}` is the name of the Dev Center Catalog. For example `catalogValue`.
class Catalog extends pulumi.CustomResource {
  /// A `catalog_adogit` block as defined below.
  late final pulumi.Output<CatalogCatalogAdogit?> catalogAdogit;

  /// A `catalog_github` block as defined below.
  late final pulumi.Output<CatalogCatalogGithub?> catalogGithub;

  /// Specifies the Dev Center Id within which this Dev Center Catalog should exist. Changing this forces a new Dev Center Catalog to be created.
  late final pulumi.Output<String> devCenterId;

  /// Specifies the name of this Dev Center Catalog. Changing this forces a new Dev Center to be created.
  late final pulumi.Output<String> name;

  /// Specifies the name of the Resource Group within which this Dev Center Catalog should exist. Changing this forces a new Dev Center to be created.
  late final pulumi.Output<String> resourceGroupName;

  /// Creates a new [Catalog].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Catalog]. {@macro pulumi_devcenter_catalog_catalog_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Catalog(
    String name, {
    CatalogArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:devcenter/catalog:Catalog',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    catalogAdogit = registerOutput<CatalogCatalogAdogit?>('catalogAdogit');
    catalogGithub = registerOutput<CatalogCatalogGithub?>('catalogGithub');
    devCenterId = registerOutput<String>('devCenterId');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
  }

  /// Gets an existing [Catalog] resource's state with the given [name] and [id].
  static Catalog get(
    String name,
    pulumi.Input<String> id, {
    CatalogState? state,
  }) {
    return Catalog._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Catalog._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:devcenter/catalog:Catalog',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    catalogAdogit = registerOutput<CatalogCatalogAdogit?>('catalogAdogit');
    catalogGithub = registerOutput<CatalogCatalogGithub?>('catalogGithub');
    devCenterId = registerOutput<String>('devCenterId');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
  }
}
