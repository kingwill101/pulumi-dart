import 'package:pulumi/pulumi.dart' as pulumi;
import 'role_assignment_args.dart';
import 'role_assignment_state.dart';

/// Assigns a given Principal (User or Group) to a given Role in a Private Azure Marketplace.
///
/// ## Example Usage
///
/// ### Using A Role Definition Name)
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.core.getClientConfig({});
/// const exampleRoleAssignment = new azure.marketplace.RoleAssignment("example", {
///     roleDefinitionName: "Marketplace Admin",
///     principalId: example.then(example => example.objectId),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.get_client_config()
/// example_role_assignment = azure.marketplace.RoleAssignment("example",
///     role_definition_name="Marketplace Admin",
///     principal_id=example.object_id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Core.GetClientConfig.Invoke();
///
///     var exampleRoleAssignment = new Azure.Marketplace.RoleAssignment("example", new()
///     {
///         RoleDefinitionName = "Marketplace Admin",
///         PrincipalId = example.Apply(getClientConfigResult => getClientConfigResult.ObjectId),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/marketplace"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.GetClientConfig(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = marketplace.NewRoleAssignment(ctx, "example", &marketplace.RoleAssignmentArgs{
/// 			RoleDefinitionName: pulumi.String("Marketplace Admin"),
/// 			PrincipalId:        pulumi.String(example.ObjectId),
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
/// data "azure_core_getclientconfig" "example" {
/// }
///
/// resource "azure_marketplace_roleassignment" "example" {
///   role_definition_name = "Marketplace Admin"
///   principal_id         = data.azure_core_getclientconfig.example.object_id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.core.CoreFunctions;
/// import com.pulumi.azure.marketplace.RoleAssignment;
/// import com.pulumi.azure.marketplace.RoleAssignmentArgs;
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
///         final var example = CoreFunctions.getClientConfig(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         var exampleRoleAssignment = new RoleAssignment("exampleRoleAssignment", RoleAssignmentArgs.builder()
///             .roleDefinitionName("Marketplace Admin")
///             .principalId(example.objectId())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleRoleAssignment:
///     type: azure:marketplace:RoleAssignment
///     name: example
///     properties:
///       roleDefinitionName: Marketplace Admin
///       principalId: ${example.objectId}
/// variables:
///   example:
///     fn::invoke:
///       function: azure:core:getClientConfig
///       arguments: {}
/// ```
///
///
///
/// ### Using A Role Definition ID)
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.core.getClientConfig({});
/// const exampleGetRoleDefinition = azure.authorization.getRoleDefinition({
///     name: "Log Analytics Reader",
/// });
/// const exampleRoleAssignment = new azure.marketplace.RoleAssignment("example", {
///     roleDefinitionId: exampleGetRoleDefinition.then(exampleGetRoleDefinition => exampleGetRoleDefinition.id),
///     principalId: example.then(example => example.objectId),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.get_client_config()
/// example_get_role_definition = azure.authorization.get_role_definition(name="Log Analytics Reader")
/// example_role_assignment = azure.marketplace.RoleAssignment("example",
///     role_definition_id=example_get_role_definition.id,
///     principal_id=example.object_id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Core.GetClientConfig.Invoke();
///
///     var exampleGetRoleDefinition = Azure.Authorization.GetRoleDefinition.Invoke(new()
///     {
///         Name = "Log Analytics Reader",
///     });
///
///     var exampleRoleAssignment = new Azure.Marketplace.RoleAssignment("example", new()
///     {
///         RoleDefinitionId = exampleGetRoleDefinition.Apply(getRoleDefinitionResult => getRoleDefinitionResult.Id),
///         PrincipalId = example.Apply(getClientConfigResult => getClientConfigResult.ObjectId),
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/marketplace"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.GetClientConfig(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleGetRoleDefinition, err := authorization.LookupRoleDefinition(ctx, &authorization.LookupRoleDefinitionArgs{
/// 			Name: pulumi.StringRef("Log Analytics Reader"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = marketplace.NewRoleAssignment(ctx, "example", &marketplace.RoleAssignmentArgs{
/// 			RoleDefinitionId: pulumi.String(exampleGetRoleDefinition.Id),
/// 			PrincipalId:      pulumi.String(example.ObjectId),
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
/// data "azure_core_getclientconfig" "example" {
/// }
/// data "azure_authorization_getroledefinition" "exampleGetRoleDefinition" {
///   name = "Log Analytics Reader"
/// }
///
/// resource "azure_marketplace_roleassignment" "example" {
///   role_definition_id = data.azure_authorization_getroledefinition.exampleGetRoleDefinition.id
///   principal_id       = data.azure_core_getclientconfig.example.object_id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.core.CoreFunctions;
/// import com.pulumi.azure.authorization.AuthorizationFunctions;
/// import com.pulumi.azure.authorization.inputs.GetRoleDefinitionArgs;
/// import com.pulumi.azure.marketplace.RoleAssignment;
/// import com.pulumi.azure.marketplace.RoleAssignmentArgs;
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
///         final var example = CoreFunctions.getClientConfig(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         final var exampleGetRoleDefinition = AuthorizationFunctions.getRoleDefinition(GetRoleDefinitionArgs.builder()
///             .name("Log Analytics Reader")
///             .build());
///
///         var exampleRoleAssignment = new RoleAssignment("exampleRoleAssignment", RoleAssignmentArgs.builder()
///             .roleDefinitionId(exampleGetRoleDefinition.id())
///             .principalId(example.objectId())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleRoleAssignment:
///     type: azure:marketplace:RoleAssignment
///     name: example
///     properties:
///       roleDefinitionId: ${exampleGetRoleDefinition.id}
///       principalId: ${example.objectId}
/// variables:
///   example:
///     fn::invoke:
///       function: azure:core:getClientConfig
///       arguments: {}
///   exampleGetRoleDefinition:
///     fn::invoke:
///       function: azure:authorization:getRoleDefinition
///       arguments:
///         name: Log Analytics Reader
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Authorization` - 2022-05-01-preview, 2022-04-01
///
/// ## Import
///
/// Role Assignments can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:marketplace/roleAssignment:RoleAssignment example /providers/Microsoft.Marketplace/providers/Microsoft.Authorization/roleAssignments/00000000-0000-0000-0000-000000000000
/// ```
///
/// &gt; **Note:** For cross tenant scenarios, the format of the `resource id` consists of the Azure resource ID and the tenant ID, for example:
///
/// ```text
/// /providers/Microsoft.Marketplace/providers/Microsoft.Authorization/roleAssignments/00000000-0000-0000-0000-000000000000|00000000-0000-0000-0000-000000000000
/// ```
class RoleAssignment extends pulumi.CustomResource {
  /// The condition that limits the resources that the role can be assigned to. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> condition;
  /// The version of the condition. Possible values are `1.0` or `2.0`. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> conditionVersion;
  /// The delegated Azure Resource ID which contains a Managed Identity. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** This field is only used in cross tenant scenarios.
  late final pulumi.Output<String?> delegatedManagedIdentityResourceId;
  /// The description for this Role Assignment. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> description;
  /// A unique UUID/GUID for this Role Assignment - one will be generated if not specified. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The ID of the Principal (User, Group or Service Principal) to assign the Role Definition to. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** The Principal ID is also known as the Object ID (i.e. not the "Application ID" for applications). To assign Azure roles, the Principal must have `Microsoft.Authorization/roleAssignments/write` permissions. See [documentation](https://learn.microsoft.com/en-us/azure/role-based-access-control/role-assignments-portal) for more information.
  late final pulumi.Output<String> principalId;
  /// The type of the `principalId`, e.g. User, Group, Service Principal, Application, etc.
  late final pulumi.Output<String> principalType;
  /// The Scoped-ID of the Role Definition. Changing this forces a new resource to be created. Conflicts with `roleDefinitionName`.
  late final pulumi.Output<String?> roleDefinitionId;
  /// The name of a built-in Role. Changing this forces a new resource to be created. Conflicts with `roleDefinitionId`.
  ///
  /// &gt; **Note:** To assign `Marketplace Admin` role, the calling Principal must first be assigned Privileged Role Administrator (like `Owner` role) or Global Administrator. See [documentation](https://learn.microsoft.com/en-us/marketplace/create-manage-private-azure-marketplace-new#prerequisites) for more information.
  late final pulumi.Output<String?> roleDefinitionName;
  /// If the `principalId` is a newly provisioned `Service Principal` set this value to `true` to skip the `Azure Active Directory` check which may fail due to replication lag. This argument is only valid if the `principalId` is a `Service Principal` identity. Defaults to `false`. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** This field takes effect only when `principalId` is a `Service Principal` identity.
  late final pulumi.Output<bool?> skipServicePrincipalAadCheck;

  /// Creates a new [RoleAssignment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RoleAssignment]. {@macro pulumi_marketplace_role_assignment_role_assignment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RoleAssignment(
    String name, {
    RoleAssignmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:marketplace/roleAssignment:RoleAssignment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
        ) {
    condition = registerOutput<String?>('condition');
    conditionVersion = registerOutput<String?>('conditionVersion');
    delegatedManagedIdentityResourceId = registerOutput<String?>('delegatedManagedIdentityResourceId');
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    principalId = registerOutput<String>('principalId');
    principalType = registerOutput<String>('principalType');
    roleDefinitionId = registerOutput<String?>('roleDefinitionId');
    roleDefinitionName = registerOutput<String?>('roleDefinitionName');
    skipServicePrincipalAadCheck = registerOutput<bool?>('skipServicePrincipalAadCheck');
  }

  /// Gets an existing [RoleAssignment] resource's state with the given [name] and [id].
  static RoleAssignment get(
    String name,
    pulumi.Input<String> id, {
    RoleAssignmentState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return RoleAssignment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  RoleAssignment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:marketplace/roleAssignment:RoleAssignment',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    condition = registerOutput<String?>('condition');
    conditionVersion = registerOutput<String?>('conditionVersion');
    delegatedManagedIdentityResourceId = registerOutput<String?>('delegatedManagedIdentityResourceId');
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    principalId = registerOutput<String>('principalId');
    principalType = registerOutput<String>('principalType');
    roleDefinitionId = registerOutput<String?>('roleDefinitionId');
    roleDefinitionName = registerOutput<String?>('roleDefinitionName');
    skipServicePrincipalAadCheck = registerOutput<bool?>('skipServicePrincipalAadCheck');
  }

  /// Creates a typed reference to an existing [RoleAssignment] resource.
  RoleAssignment.reference(String urn)
    : super(
        'azure:marketplace/roleAssignment:RoleAssignment',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    condition = registerOutput<String?>('condition');
    conditionVersion = registerOutput<String?>('conditionVersion');
    delegatedManagedIdentityResourceId = registerOutput<String?>('delegatedManagedIdentityResourceId');
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    principalId = registerOutput<String>('principalId');
    principalType = registerOutput<String>('principalType');
    roleDefinitionId = registerOutput<String?>('roleDefinitionId');
    roleDefinitionName = registerOutput<String?>('roleDefinitionName');
    skipServicePrincipalAadCheck = registerOutput<bool?>('skipServicePrincipalAadCheck');
  }
}
