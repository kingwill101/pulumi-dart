import 'package:pulumi/pulumi.dart' as pulumi;
import 'integration_account_assembly_args.dart';
import 'integration_account_assembly_state.dart';

/// Manages a Logic App Integration Account Assembly.
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
///     skuName: "Basic",
/// });
/// const exampleIntegrationAccountAssembly = new azure.logicapps.IntegrationAccountAssembly("example", {
///     name: "example-assembly",
///     resourceGroupName: example.name,
///     integrationAccountName: exampleIntegrationAccount.name,
///     assemblyName: "TestAssembly",
///     content: std.filebase64({
///         input: "testdata/log4net.dll",
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
///     sku_name="Basic")
/// example_integration_account_assembly = azure.logicapps.IntegrationAccountAssembly("example",
///     name="example-assembly",
///     resource_group_name=example.name,
///     integration_account_name=example_integration_account.name,
///     assembly_name="TestAssembly",
///     content=std.filebase64(input="testdata/log4net.dll").result)
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
///         SkuName = "Basic",
///     });
///
///     var exampleIntegrationAccountAssembly = new Azure.LogicApps.IntegrationAccountAssembly("example", new()
///     {
///         Name = "example-assembly",
///         ResourceGroupName = example.Name,
///         IntegrationAccountName = exampleIntegrationAccount.Name,
///         AssemblyName = "TestAssembly",
///         Content = Std.Filebase64.Invoke(new()
///         {
///             Input = "testdata/log4net.dll",
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
/// 			SkuName:           pulumi.String("Basic"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeFilebase64, err := std.Filebase64(ctx, &std.Filebase64Args{
/// 			Input: "testdata/log4net.dll",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = logicapps.NewIntegrationAccountAssembly(ctx, "example", &logicapps.IntegrationAccountAssemblyArgs{
/// 			Name:                   pulumi.String("example-assembly"),
/// 			ResourceGroupName:      example.Name,
/// 			IntegrationAccountName: exampleIntegrationAccount.Name,
/// 			AssemblyName:           pulumi.String("TestAssembly"),
/// 			Content:                pulumi.String(invokeFilebase64.Result),
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
/// import com.pulumi.azure.logicapps.IntegrationAccountAssembly;
/// import com.pulumi.azure.logicapps.IntegrationAccountAssemblyArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.Filebase64Args;
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
///             .skuName("Basic")
///             .build());
///
///         var exampleIntegrationAccountAssembly = new IntegrationAccountAssembly("exampleIntegrationAccountAssembly", IntegrationAccountAssemblyArgs.builder()
///             .name("example-assembly")
///             .resourceGroupName(example.name())
///             .integrationAccountName(exampleIntegrationAccount.name())
///             .assemblyName("TestAssembly")
///             .content(StdFunctions.filebase64(Filebase64Args.builder()
///                 .input("testdata/log4net.dll")
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
///       skuName: Basic
///   exampleIntegrationAccountAssembly:
///     type: azure:logicapps:IntegrationAccountAssembly
///     name: example
///     properties:
///       name: example-assembly
///       resourceGroupName: ${example.name}
///       integrationAccountName: ${exampleIntegrationAccount.name}
///       assemblyName: TestAssembly
///       content:
///         fn::invoke:
///           function: std:filebase64
///           arguments:
///             input: testdata/log4net.dll
///           return: result
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Logic` - 2019-05-01
///
/// ## Import
///
/// Logic App Integration Account Assemblies can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:logicapps/integrationAccountAssembly:IntegrationAccountAssembly example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.Logic/integrationAccounts/account1/assemblies/assembly1
/// ```
class IntegrationAccountAssembly extends pulumi.CustomResource {
  /// The name of the Logic App Integration Account Assembly.
  late final pulumi.Output<String> assemblyName;
  /// The version of the Logic App Integration Account Assembly. Defaults to `0.0.0.0`.
  late final pulumi.Output<String?> assemblyVersion;
  /// The content of the Logic App Integration Account Assembly.
  late final pulumi.Output<String?> content;
  /// The content link URI of the Logic App Integration Account Assembly.
  late final pulumi.Output<String?> contentLinkUri;
  /// The name of the Logic App Integration Account. Changing this forces a new resource to be created.
  late final pulumi.Output<String> integrationAccountName;
  /// The metadata of the Logic App Integration Account Assembly.
  late final pulumi.Output<Map<String, String>?> metadata;
  /// The name which should be used for this Logic App Integration Account Assembly Artifact. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The name of the Resource Group where the Logic App Integration Account Assembly Artifact should exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;

  /// Creates a new [IntegrationAccountAssembly].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [IntegrationAccountAssembly]. {@macro pulumi_logicapps_integration_account_assembly_integration_account_assembly_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  IntegrationAccountAssembly(
    String name, {
    IntegrationAccountAssemblyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:logicapps/integrationAccountAssembly:IntegrationAccountAssembly',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    assemblyName = registerOutput<String>('assemblyName');
    assemblyVersion = registerOutput<String?>('assemblyVersion');
    content = registerOutput<String?>('content');
    contentLinkUri = registerOutput<String?>('contentLinkUri');
    integrationAccountName = registerOutput<String>('integrationAccountName');
    metadata = registerOutput<Map<String, String>?>('metadata');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
  }

  /// Gets an existing [IntegrationAccountAssembly] resource's state with the given [name] and [id].
  static IntegrationAccountAssembly get(
    String name,
    pulumi.Input<String> id, {
    IntegrationAccountAssemblyState? state,
  }) {
    return IntegrationAccountAssembly._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  IntegrationAccountAssembly._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:logicapps/integrationAccountAssembly:IntegrationAccountAssembly',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    assemblyName = registerOutput<String>('assemblyName');
    assemblyVersion = registerOutput<String?>('assemblyVersion');
    content = registerOutput<String?>('content');
    contentLinkUri = registerOutput<String?>('contentLinkUri');
    integrationAccountName = registerOutput<String>('integrationAccountName');
    metadata = registerOutput<Map<String, String>?>('metadata');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
  }
}
