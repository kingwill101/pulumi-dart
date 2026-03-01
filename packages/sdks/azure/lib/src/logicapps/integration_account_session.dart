import 'package:pulumi/pulumi.dart' as pulumi;
import 'integration_account_session_args.dart';
import 'integration_account_session_state.dart';

/// Manages a Logic App Integration Account Session.
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
/// const exampleIntegrationAccount = new azure.logicapps.IntegrationAccount("example", {
///     name: "example-ia",
///     location: example.location,
///     resourceGroupName: example.name,
///     skuName: "Basic",
/// });
/// const exampleIntegrationAccountSession = new azure.logicapps.IntegrationAccountSession("example", {
///     name: "example-ias",
///     resourceGroupName: example.name,
///     integrationAccountName: exampleIntegrationAccount.name,
///     content: ` {
///        \\"controlNumber\\": \\"1234\\"
///     }
/// `,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_integration_account = azure.logicapps.IntegrationAccount("example",
///     name="example-ia",
///     location=example.location,
///     resource_group_name=example.name,
///     sku_name="Basic")
/// example_integration_account_session = azure.logicapps.IntegrationAccountSession("example",
///     name="example-ias",
///     resource_group_name=example.name,
///     integration_account_name=example_integration_account.name,
///     content=""" {
///        \"controlNumber\": \"1234\"
///     }
/// """)
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
///     var exampleIntegrationAccount = new Azure.LogicApps.IntegrationAccount("example", new()
///     {
///         Name = "example-ia",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         SkuName = "Basic",
///     });
///
///     var exampleIntegrationAccountSession = new Azure.LogicApps.IntegrationAccountSession("example", new()
///     {
///         Name = "example-ias",
///         ResourceGroupName = example.Name,
///         IntegrationAccountName = exampleIntegrationAccount.Name,
///         Content = @" {
///        \""controlNumber\"": \""1234\""
///     }
/// ",
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
/// 		_, err = logicapps.NewIntegrationAccountSession(ctx, "example", &logicapps.IntegrationAccountSessionArgs{
/// 			Name:                   pulumi.String("example-ias"),
/// 			ResourceGroupName:      example.Name,
/// 			IntegrationAccountName: exampleIntegrationAccount.Name,
/// 			Content:                pulumi.String(" {\n       \\\"controlNumber\\\": \\\"1234\\\"\n    }\n"),
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
/// import com.pulumi.azure.logicapps.IntegrationAccountSession;
/// import com.pulumi.azure.logicapps.IntegrationAccountSessionArgs;
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
///         var exampleIntegrationAccountSession = new IntegrationAccountSession("exampleIntegrationAccountSession", IntegrationAccountSessionArgs.builder()
///             .name("example-ias")
///             .resourceGroupName(example.name())
///             .integrationAccountName(exampleIntegrationAccount.name())
///             .content("""
///  {
///        \"controlNumber\": \"1234\"
///     }
///             """)
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
///   exampleIntegrationAccountSession:
///     type: azure:logicapps:IntegrationAccountSession
///     name: example
///     properties:
///       name: example-ias
///       resourceGroupName: ${example.name}
///       integrationAccountName: ${exampleIntegrationAccount.name}
///       content: |2
///          {
///                \"controlNumber\": \"1234\"
///             }
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
/// Logic App Integration Account Sessions can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:logicapps/integrationAccountSession:IntegrationAccountSession example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.Logic/integrationAccounts/account1/sessions/session1
/// ```
class IntegrationAccountSession extends pulumi.CustomResource {
  /// The content of the Logic App Integration Account Session.
  late final pulumi.Output<String> content;
  /// The name of the Logic App Integration Account. Changing this forces a new Logic App Integration Account Session to be created.
  late final pulumi.Output<String> integrationAccountName;
  /// The name which should be used for this Logic App Integration Account Session. Changing this forces a new Logic App Integration Account Session to be created.
  late final pulumi.Output<String> name;
  /// The name of the Resource Group where the Logic App Integration Account Session should exist. Changing this forces a new Logic App Integration Account Session to be created.
  late final pulumi.Output<String> resourceGroupName;

  /// Creates a new [IntegrationAccountSession].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [IntegrationAccountSession]. {@macro pulumi_logicapps_integration_account_session_integration_account_session_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  IntegrationAccountSession(
    String name, {
    IntegrationAccountSessionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:logicapps/integrationAccountSession:IntegrationAccountSession',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.content = registerOutput<String>('content');
    this.integrationAccountName = registerOutput<String>('integrationAccountName');
    this.name = registerOutput<String>('name');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
  }

  /// Gets an existing [IntegrationAccountSession] resource's state with the given [name] and [id].
  static IntegrationAccountSession get(
    String name,
    pulumi.Input<String> id, {
    IntegrationAccountSessionState? state,
  }) {
    return IntegrationAccountSession._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  IntegrationAccountSession._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:logicapps/integrationAccountSession:IntegrationAccountSession',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.content = registerOutput<String>('content');
    this.integrationAccountName = registerOutput<String>('integrationAccountName');
    this.name = registerOutput<String>('name');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
  }
}
