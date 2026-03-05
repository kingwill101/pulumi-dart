import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_project_args.dart';
import 'account_project_identity.dart';
import 'account_project_state.dart';

/// Manages a Cognitive Account Project.
///
/// &gt; **Note:** Cognitive Account Projects can only be created under a Cognitive Account that has `project_management_enabled = true`, `kind = "AIServices"`, a managed identity configured, and a `custom_subdomain_name` specified.
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
/// const exampleAccount = new azure.cognitive.Account("example", {
///     name: "example-account",
///     location: example.location,
///     resourceGroupName: example.name,
///     kind: "AIServices",
///     skuName: "S0",
///     projectManagementEnabled: true,
///     customSubdomainName: "example-account-subdomain",
///     identity: {
///         type: "SystemAssigned",
///     },
/// });
/// const exampleAccountProject = new azure.cognitive.AccountProject("example", {
///     name: "example-project",
///     cognitiveAccountId: exampleAccount.id,
///     location: example.location,
///     description: "Example cognitive services project",
///     displayName: "Example Project",
///     identity: {
///         type: "SystemAssigned",
///     },
///     tags: {
///         Environment: "test",
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
/// example_account = azure.cognitive.Account("example",
///     name="example-account",
///     location=example.location,
///     resource_group_name=example.name,
///     kind="AIServices",
///     sku_name="S0",
///     project_management_enabled=True,
///     custom_subdomain_name="example-account-subdomain",
///     identity={
///         "type": "SystemAssigned",
///     })
/// example_account_project = azure.cognitive.AccountProject("example",
///     name="example-project",
///     cognitive_account_id=example_account.id,
///     location=example.location,
///     description="Example cognitive services project",
///     display_name="Example Project",
///     identity={
///         "type": "SystemAssigned",
///     },
///     tags={
///         "Environment": "test",
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
///     var exampleAccount = new Azure.Cognitive.Account("example", new()
///     {
///         Name = "example-account",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         Kind = "AIServices",
///         SkuName = "S0",
///         ProjectManagementEnabled = true,
///         CustomSubdomainName = "example-account-subdomain",
///         Identity = new Azure.Cognitive.Inputs.AccountIdentityArgs
///         {
///             Type = "SystemAssigned",
///         },
///     });
///
///     var exampleAccountProject = new Azure.Cognitive.AccountProject("example", new()
///     {
///         Name = "example-project",
///         CognitiveAccountId = exampleAccount.Id,
///         Location = example.Location,
///         Description = "Example cognitive services project",
///         DisplayName = "Example Project",
///         Identity = new Azure.Cognitive.Inputs.AccountProjectIdentityArgs
///         {
///             Type = "SystemAssigned",
///         },
///         Tags =
///         {
///             { "Environment", "test" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/cognitive"
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
/// 		exampleAccount, err := cognitive.NewAccount(ctx, "example", &cognitive.AccountArgs{
/// 			Name:                     pulumi.String("example-account"),
/// 			Location:                 example.Location,
/// 			ResourceGroupName:        example.Name,
/// 			Kind:                     pulumi.String("AIServices"),
/// 			SkuName:                  pulumi.String("S0"),
/// 			ProjectManagementEnabled: pulumi.Bool(true),
/// 			CustomSubdomainName:      pulumi.String("example-account-subdomain"),
/// 			Identity: &cognitive.AccountIdentityArgs{
/// 				Type: pulumi.String("SystemAssigned"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cognitive.NewAccountProject(ctx, "example", &cognitive.AccountProjectArgs{
/// 			Name:               pulumi.String("example-project"),
/// 			CognitiveAccountId: exampleAccount.ID(),
/// 			Location:           example.Location,
/// 			Description:        pulumi.String("Example cognitive services project"),
/// 			DisplayName:        pulumi.String("Example Project"),
/// 			Identity: &cognitive.AccountProjectIdentityArgs{
/// 				Type: pulumi.String("SystemAssigned"),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"Environment": pulumi.String("test"),
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
/// import com.pulumi.azure.cognitive.Account;
/// import com.pulumi.azure.cognitive.AccountArgs;
/// import com.pulumi.azure.cognitive.inputs.AccountIdentityArgs;
/// import com.pulumi.azure.cognitive.AccountProject;
/// import com.pulumi.azure.cognitive.AccountProjectArgs;
/// import com.pulumi.azure.cognitive.inputs.AccountProjectIdentityArgs;
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
///         var exampleAccount = new Account("exampleAccount", AccountArgs.builder()
///             .name("example-account")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .kind("AIServices")
///             .skuName("S0")
///             .projectManagementEnabled(true)
///             .customSubdomainName("example-account-subdomain")
///             .identity(AccountIdentityArgs.builder()
///                 .type("SystemAssigned")
///                 .build())
///             .build());
///
///         var exampleAccountProject = new AccountProject("exampleAccountProject", AccountProjectArgs.builder()
///             .name("example-project")
///             .cognitiveAccountId(exampleAccount.id())
///             .location(example.location())
///             .description("Example cognitive services project")
///             .displayName("Example Project")
///             .identity(AccountProjectIdentityArgs.builder()
///                 .type("SystemAssigned")
///                 .build())
///             .tags(Map.of("Environment", "test"))
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
///       name: example-account
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       kind: AIServices
///       skuName: S0
///       projectManagementEnabled: true
///       customSubdomainName: example-account-subdomain
///       identity:
///         type: SystemAssigned
///   exampleAccountProject:
///     type: azure:cognitive:AccountProject
///     name: example
///     properties:
///       name: example-project
///       cognitiveAccountId: ${exampleAccount.id}
///       location: ${example.location}
///       description: Example cognitive services project
///       displayName: Example Project
///       identity:
///         type: SystemAssigned
///       tags:
///         Environment: test
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.CognitiveServices` - 2025-06-01
///
/// ## Import
///
/// Cognitive Account Projects can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:cognitive/accountProject:AccountProject example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.CognitiveServices/accounts/account1/projects/project1
/// ```
class AccountProject extends pulumi.CustomResource {
  /// The ID of the Cognitive Account where the Project should exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String> cognitiveAccountId;
  /// Whether this project is the default project for the Cognitive Account.
  late final pulumi.Output<bool> default_;
  /// A description of the Cognitive Account Project.
  late final pulumi.Output<String?> description;
  /// The display name of the Cognitive Account Project.
  late final pulumi.Output<String?> displayName;
  /// A mapping of endpoint names to endpoint URLs for the project.
  late final pulumi.Output<Map<String, String>> endpoints;
  /// An `identity` block as defined below.
  late final pulumi.Output<AccountProjectIdentity> identity;
  /// The Azure Region where the Cognitive Account Project should exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;
  /// The name of the Cognitive Account Project. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [AccountProject].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AccountProject]. {@macro pulumi_cognitive_account_project_account_project_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AccountProject(
    String name, {
    AccountProjectArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:cognitive/accountProject:AccountProject',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    cognitiveAccountId = registerOutput<String>('cognitiveAccountId');
    default_ = registerOutput<bool>('default');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String?>('displayName');
    endpoints = registerOutput<Map<String, String>>('endpoints');
    identity = registerOutput<AccountProjectIdentity>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccountProjectIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    tags = registerOutput<Map<String, String>?>('tags');
  }

  /// Gets an existing [AccountProject] resource's state with the given [name] and [id].
  static AccountProject get(
    String name,
    pulumi.Input<String> id, {
    AccountProjectState? state,
  }) {
    return AccountProject._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AccountProject._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:cognitive/accountProject:AccountProject',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    cognitiveAccountId = registerOutput<String>('cognitiveAccountId');
    default_ = registerOutput<bool>('default');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String?>('displayName');
    endpoints = registerOutput<Map<String, String>>('endpoints');
    identity = registerOutput<AccountProjectIdentity>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccountProjectIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    tags = registerOutput<Map<String, String>?>('tags');
  }
}
