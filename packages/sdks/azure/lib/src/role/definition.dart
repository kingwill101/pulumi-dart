import 'package:pulumi/pulumi.dart' as pulumi;
import 'definition_args.dart';
import 'definition_state.dart';

/// Manages a custom Role Definition, used to assign Roles to Users/Principals. See ['Understand role definitions'](https://docs.microsoft.com/azure/role-based-access-control/role-definitions) in the Azure documentation for more details.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const primary = azure.core.getSubscription({});
/// const example = new azure.authorization.RoleDefinition("example", {
///     name: "my-custom-role",
///     scope: primary.then(primary => primary.id),
///     description: "This is a custom role created",
///     permissions: [{
///         actions: ["*"],
///         notActions: [],
///     }],
///     assignableScopes: [primary.then(primary => primary.id)],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// primary = azure.core.get_subscription()
/// example = azure.authorization.RoleDefinition("example",
///     name="my-custom-role",
///     scope=primary.id,
///     description="This is a custom role created",
///     permissions=[{
///         "actions": ["*"],
///         "not_actions": [],
///     }],
///     assignable_scopes=[primary.id])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var primary = Azure.Core.GetSubscription.Invoke();
///
///     var example = new Azure.Authorization.RoleDefinition("example", new()
///     {
///         Name = "my-custom-role",
///         Scope = primary.Apply(getSubscriptionResult => getSubscriptionResult.Id),
///         Description = "This is a custom role created",
///         Permissions = new[]
///         {
///             new Azure.Authorization.Inputs.RoleDefinitionPermissionArgs
///             {
///                 Actions = new[]
///                 {
///                     "*",
///                 },
///                 NotActions = new() { },
///             },
///         },
///         AssignableScopes = new[]
///         {
///             primary.Apply(getSubscriptionResult => getSubscriptionResult.Id),
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/authorization"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		primary, err := core.LookupSubscription(ctx, &core.LookupSubscriptionArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = authorization.NewRoleDefinition(ctx, "example", &authorization.RoleDefinitionArgs{
/// 			Name:        pulumi.String("my-custom-role"),
/// 			Scope:       pulumi.String(primary.Id),
/// 			Description: pulumi.String("This is a custom role created"),
/// 			Permissions: authorization.RoleDefinitionPermissionArray{
/// 				&authorization.RoleDefinitionPermissionArgs{
/// 					Actions: pulumi.StringArray{
/// 						pulumi.String("*"),
/// 					},
/// 					NotActions: pulumi.StringArray{},
/// 				},
/// 			},
/// 			AssignableScopes: pulumi.StringArray{
/// 				pulumi.String(primary.Id),
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
/// import com.pulumi.azure.core.CoreFunctions;
/// import com.pulumi.azure.core.inputs.GetSubscriptionArgs;
/// import com.pulumi.azure.authorization.RoleDefinition;
/// import com.pulumi.azure.authorization.RoleDefinitionArgs;
/// import com.pulumi.azure.authorization.inputs.RoleDefinitionPermissionArgs;
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
///         final var primary = CoreFunctions.getSubscription(GetSubscriptionArgs.builder()
///             .build());
///
///         var example = new RoleDefinition("example", RoleDefinitionArgs.builder()
///             .name("my-custom-role")
///             .scope(primary.id())
///             .description("This is a custom role created")
///             .permissions(RoleDefinitionPermissionArgs.builder()
///                 .actions("*")
///                 .notActions()
///                 .build())
///             .assignableScopes(primary.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:authorization:RoleDefinition
///     properties:
///       name: my-custom-role
///       scope: ${primary.id}
///       description: This is a custom role created
///       permissions:
///         - actions:
///             - '*'
///           notActions: []
///       assignableScopes:
///         - ${primary.id}
/// variables:
///   primary:
///     fn::invoke:
///       function: azure:core:getSubscription
///       arguments: {}
/// ```
///
///
///
/// ### With Management Group
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const current = azure.core.getSubscription({});
/// const example = new azure.management.Group("example", {
///     displayName: "ParentGroup",
///     subscriptionIds: [current.then(current => current.subscriptionId)],
/// });
/// const exampleRoleDefinition = new azure.authorization.RoleDefinition("example", {
///     name: "example-mg-role",
///     scope: example.id,
///     description: "Example custom role scoped to a management group.",
///     permissions: [{
///         actions: ["Microsoft.Insights/alertRules/*"],
///         notActions: [],
///     }],
///     assignableScopes: [example.id],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// current = azure.core.get_subscription()
/// example = azure.management.Group("example",
///     display_name="ParentGroup",
///     subscription_ids=[current.subscription_id])
/// example_role_definition = azure.authorization.RoleDefinition("example",
///     name="example-mg-role",
///     scope=example.id,
///     description="Example custom role scoped to a management group.",
///     permissions=[{
///         "actions": ["Microsoft.Insights/alertRules/*"],
///         "not_actions": [],
///     }],
///     assignable_scopes=[example.id])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var current = Azure.Core.GetSubscription.Invoke();
///
///     var example = new Azure.Management.Group("example", new()
///     {
///         DisplayName = "ParentGroup",
///         SubscriptionIds = new[]
///         {
///             current.Apply(getSubscriptionResult => getSubscriptionResult.SubscriptionId),
///         },
///     });
///
///     var exampleRoleDefinition = new Azure.Authorization.RoleDefinition("example", new()
///     {
///         Name = "example-mg-role",
///         Scope = example.Id,
///         Description = "Example custom role scoped to a management group.",
///         Permissions = new[]
///         {
///             new Azure.Authorization.Inputs.RoleDefinitionPermissionArgs
///             {
///                 Actions = new[]
///                 {
///                     "Microsoft.Insights/alertRules/*",
///                 },
///                 NotActions = new() { },
///             },
///         },
///         AssignableScopes = new[]
///         {
///             example.Id,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/authorization"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/management"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		current, err := core.LookupSubscription(ctx, &core.LookupSubscriptionArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := management.NewGroup(ctx, "example", &management.GroupArgs{
/// 			DisplayName: pulumi.String("ParentGroup"),
/// 			SubscriptionIds: pulumi.StringArray{
/// 				pulumi.String(current.SubscriptionId),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = authorization.NewRoleDefinition(ctx, "example", &authorization.RoleDefinitionArgs{
/// 			Name:        pulumi.String("example-mg-role"),
/// 			Scope:       example.ID(),
/// 			Description: pulumi.String("Example custom role scoped to a management group."),
/// 			Permissions: authorization.RoleDefinitionPermissionArray{
/// 				&authorization.RoleDefinitionPermissionArgs{
/// 					Actions: pulumi.StringArray{
/// 						pulumi.String("Microsoft.Insights/alertRules/*"),
/// 					},
/// 					NotActions: pulumi.StringArray{},
/// 				},
/// 			},
/// 			AssignableScopes: pulumi.StringArray{
/// 				example.ID(),
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
/// import com.pulumi.azure.core.CoreFunctions;
/// import com.pulumi.azure.core.inputs.GetSubscriptionArgs;
/// import com.pulumi.azure.management.Group;
/// import com.pulumi.azure.management.GroupArgs;
/// import com.pulumi.azure.authorization.RoleDefinition;
/// import com.pulumi.azure.authorization.RoleDefinitionArgs;
/// import com.pulumi.azure.authorization.inputs.RoleDefinitionPermissionArgs;
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
///         final var current = CoreFunctions.getSubscription(GetSubscriptionArgs.builder()
///             .build());
///
///         var example = new Group("example", GroupArgs.builder()
///             .displayName("ParentGroup")
///             .subscriptionIds(current.subscriptionId())
///             .build());
///
///         var exampleRoleDefinition = new RoleDefinition("exampleRoleDefinition", RoleDefinitionArgs.builder()
///             .name("example-mg-role")
///             .scope(example.id())
///             .description("Example custom role scoped to a management group.")
///             .permissions(RoleDefinitionPermissionArgs.builder()
///                 .actions("Microsoft.Insights/alertRules/*")
///                 .notActions()
///                 .build())
///             .assignableScopes(example.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:management:Group
///     properties:
///       displayName: ParentGroup
///       subscriptionIds:
///         - ${current.subscriptionId}
///   exampleRoleDefinition:
///     type: azure:authorization:RoleDefinition
///     name: example
///     properties:
///       name: example-mg-role
///       scope: ${example.id}
///       description: Example custom role scoped to a management group.
///       permissions:
///         - actions:
///             - Microsoft.Insights/alertRules/*
///           notActions: []
///       assignableScopes:
///         - ${example.id}
/// variables:
///   current:
///     fn::invoke:
///       function: azure:core:getSubscription
///       arguments: {}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Authorization` - 2022-05-01-preview
///
/// ## Import
///
/// Role Definitions can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:role/definition:Definition example "/subscriptions/00000000-0000-0000-0000-000000000000/providers/Microsoft.Authorization/roleDefinitions/00000000-0000-0000-0000-000000000000|/subscriptions/00000000-0000-0000-0000-000000000000"
/// ```
///
/// &gt; **Note:** This ID is specific to this provider - and is of the format `{roleDefinitionId}|{scope}`.
class Definition extends pulumi.CustomResource {
  /// One or more assignable scopes for this Role Definition, such as `/subscriptions/0b1f6471-1bf0-4dda-aec3-111122223333`, `/subscriptions/0b1f6471-1bf0-4dda-aec3-111122223333/resourceGroups/myGroup`, `/providers/Microsoft.Management/managementGroups/0b1f6471-1bf0-4dda-aec3-111122223333` , or `/subscriptions/0b1f6471-1bf0-4dda-aec3-111122223333/resourceGroups/myGroup/providers/Microsoft.Compute/virtualMachines/myVM`.
  ///
  /// &gt; **NOTE:** The value for `scope` is automatically included in this list if no other values supplied.
  late final pulumi.Output<List<String>> assignableScopes;

  /// A description of the Role Definition.
  late final pulumi.Output<String?> description;

  /// The name of the Role Definition.
  late final pulumi.Output<String> name;

  /// A `permissions` block as defined below.
  late final pulumi.Output<List<Map<String, dynamic>>?> permissions;

  /// A unique UUID/GUID which identifies this role - one will be generated if not specified. Changing this forces a new resource to be created.
  late final pulumi.Output<String> roleDefinitionId;

  /// The Azure Resource Manager ID for the resource.
  late final pulumi.Output<String> roleDefinitionResourceId;

  /// The scope at which the Role Definition applies to, such as `/subscriptions/0b1f6471-1bf0-4dda-aec3-111122223333`, `/subscriptions/0b1f6471-1bf0-4dda-aec3-111122223333/resourceGroups/myGroup`, `/providers/Microsoft.Management/managementGroups/0b1f6471-1bf0-4dda-aec3-111122223333`, or `/subscriptions/0b1f6471-1bf0-4dda-aec3-111122223333/resourceGroups/myGroup/providers/Microsoft.Compute/virtualMachines/myVM`. It is recommended to use the first entry of the `assignable_scopes`. Changing this forces a new resource to be created.
  late final pulumi.Output<String> scope;

  /// Creates a new [Definition].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Definition]. {@macro pulumi_role_definition_definition_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Definition(
    String name, {
    DefinitionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:role/definition:Definition',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    assignableScopes = registerOutput<List<String>>('assignableScopes');
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    permissions = registerOutput<List<Map<String, dynamic>>?>('permissions');
    roleDefinitionId = registerOutput<String>('roleDefinitionId');
    roleDefinitionResourceId = registerOutput<String>(
      'roleDefinitionResourceId',
    );
    scope = registerOutput<String>('scope');
  }

  /// Gets an existing [Definition] resource's state with the given [name] and [id].
  static Definition get(
    String name,
    pulumi.Input<String> id, {
    DefinitionState? state,
  }) {
    return Definition._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Definition._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:role/definition:Definition',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    assignableScopes = registerOutput<List<String>>('assignableScopes');
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    permissions = registerOutput<List<Map<String, dynamic>>?>('permissions');
    roleDefinitionId = registerOutput<String>('roleDefinitionId');
    roleDefinitionResourceId = registerOutput<String>(
      'roleDefinitionResourceId',
    );
    scope = registerOutput<String>('scope');
  }
}
