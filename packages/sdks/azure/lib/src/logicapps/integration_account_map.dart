import 'package:pulumi/pulumi.dart' as pulumi;
import 'integration_account_map_args.dart';
import 'integration_account_map_state.dart';

/// Manages a Logic App Integration Account Map.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
/// import * as std from "@pulumi/std";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-resources",
///     location: "West Europe",
/// });
/// const exampleIntegrationAccount = new azure.logicapps.IntegrationAccount("example", {
///     name: "example-ia",
///     location: example.location,
///     resourceGroupName: example.name,
///     skuName: "Standard",
/// });
/// const exampleIntegrationAccountMap = new azure.logicapps.IntegrationAccountMap("example", {
///     name: "example-iamap",
///     resourceGroupName: example.name,
///     integrationAccountName: exampleIntegrationAccount.name,
///     mapType: "Xslt",
///     content: std.file({
///         input: "testdata/integration_account_map_content.xsd",
///     }).then(invoke => invoke.result),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
/// import pulumi_std as std
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_integration_account = azure.logicapps.IntegrationAccount("example",
///     name="example-ia",
///     location=example.location,
///     resource_group_name=example.name,
///     sku_name="Standard")
/// example_integration_account_map = azure.logicapps.IntegrationAccountMap("example",
///     name="example-iamap",
///     resource_group_name=example.name,
///     integration_account_name=example_integration_account.name,
///     map_type="Xslt",
///     content=std.file(input="testdata/integration_account_map_content.xsd").result)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var exampleIntegrationAccount = new Azure.LogicApps.IntegrationAccount("example", new()
///     {
///         Name = "example-ia",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         SkuName = "Standard",
///     });
///
///     var exampleIntegrationAccountMap = new Azure.LogicApps.IntegrationAccountMap("example", new()
///     {
///         Name = "example-iamap",
///         ResourceGroupName = example.Name,
///         IntegrationAccountName = exampleIntegrationAccount.Name,
///         MapType = "Xslt",
///         Content = Std.File.Invoke(new()
///         {
///             Input = "testdata/integration_account_map_content.xsd",
///         }).Apply(invoke => invoke.Result),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/logicapps"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
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
/// 		exampleIntegrationAccount, err := logicapps.NewIntegrationAccount(ctx, "example", &logicapps.IntegrationAccountArgs{
/// 			Name:              pulumi.String("example-ia"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			SkuName:           pulumi.String("Standard"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeFile, err := std.File(ctx, &std.FileArgs{
/// 			Input: "testdata/integration_account_map_content.xsd",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = logicapps.NewIntegrationAccountMapResource(ctx, "example", &logicapps.IntegrationAccountMapResourceArgs{
/// 			Name:                   pulumi.String("example-iamap"),
/// 			ResourceGroupName:      example.Name,
/// 			IntegrationAccountName: exampleIntegrationAccount.Name,
/// 			MapType:                pulumi.String("Xslt"),
/// 			Content:                pulumi.String(invokeFile.Result),
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
/// import com.pulumi.azure.logicapps.IntegrationAccount;
/// import com.pulumi.azure.logicapps.IntegrationAccountArgs;
/// import com.pulumi.azure.logicapps.IntegrationAccountMap;
/// import com.pulumi.azure.logicapps.IntegrationAccountMapArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.FileArgs;
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
///         var exampleIntegrationAccount = new IntegrationAccount("exampleIntegrationAccount", IntegrationAccountArgs.builder()
///             .name("example-ia")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .skuName("Standard")
///             .build());
///
///         var exampleIntegrationAccountMap = new IntegrationAccountMap("exampleIntegrationAccountMap", IntegrationAccountMapArgs.builder()
///             .name("example-iamap")
///             .resourceGroupName(example.name())
///             .integrationAccountName(exampleIntegrationAccount.name())
///             .mapType("Xslt")
///             .content(StdFunctions.file(FileArgs.builder()
///                 .input("testdata/integration_account_map_content.xsd")
///                 .build()).result())
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
///   exampleIntegrationAccount:
///     type: azure:logicapps:IntegrationAccount
///     name: example
///     properties:
///       name: example-ia
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       skuName: Standard
///   exampleIntegrationAccountMap:
///     type: azure:logicapps:IntegrationAccountMap
///     name: example
///     properties:
///       name: example-iamap
///       resourceGroupName: ${example.name}
///       integrationAccountName: ${exampleIntegrationAccount.name}
///       mapType: Xslt
///       content:
///         fn::invoke:
///           function: std:file
///           arguments:
///             input: testdata/integration_account_map_content.xsd
///           return: result
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Logic` - 2019-05-01
///
/// ## Import
///
/// Logic App Integration Account Maps can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:logicapps/integrationAccountMap:IntegrationAccountMap example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.Logic/integrationAccounts/account1/maps/map1
/// ```
class IntegrationAccountMap extends pulumi.CustomResource {
  /// The content of the Logic App Integration Account Map.
  late final pulumi.Output<String> content;
  /// The name of the Logic App Integration Account. Changing this forces a new Logic App Integration Account Map to be created.
  late final pulumi.Output<String> integrationAccountName;
  /// The type of the Logic App Integration Account Map. Possible values are `Liquid`, `NotSpecified`, `Xslt`, `Xslt30` and `Xslt20`.
  late final pulumi.Output<String> mapType;
  /// The metadata of the Logic App Integration Account Map.
  late final pulumi.Output<Map<String, String>?> metadata;
  /// The name which should be used for this Logic App Integration Account Map. Changing this forces a new Logic App Integration Account Map to be created.
  late final pulumi.Output<String> name;
  /// The name of the Resource Group where the Logic App Integration Account Map should exist. Changing this forces a new Logic App Integration Account Map to be created.
  late final pulumi.Output<String> resourceGroupName;

  /// Creates a new [IntegrationAccountMap].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [IntegrationAccountMap]. {@macro pulumi_logicapps_integration_account_map_integration_account_map_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  IntegrationAccountMap(
    String name, {
    IntegrationAccountMapArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:logicapps/integrationAccountMap:IntegrationAccountMap',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.content = registerOutput<String>('content');
    this.integrationAccountName = registerOutput<String>('integrationAccountName');
    this.mapType = registerOutput<String>('mapType');
    this.metadata = registerOutput<Map<String, String>?>('metadata');
    this.name = registerOutput<String>('name');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
  }

  /// Gets an existing [IntegrationAccountMap] resource's state with the given [name] and [id].
  static IntegrationAccountMap get(
    String name,
    pulumi.Input<String> id, {
    IntegrationAccountMapState? state,
  }) {
    return IntegrationAccountMap._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  IntegrationAccountMap._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:logicapps/integrationAccountMap:IntegrationAccountMap',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.content = registerOutput<String>('content');
    this.integrationAccountName = registerOutput<String>('integrationAccountName');
    this.mapType = registerOutput<String>('mapType');
    this.metadata = registerOutput<Map<String, String>?>('metadata');
    this.name = registerOutput<String>('name');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
  }
}
