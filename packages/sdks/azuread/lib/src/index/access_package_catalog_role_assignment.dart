import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_package_catalog_role_assignment_args.dart';
import 'access_package_catalog_role_assignment_state.dart';

/// Manages a single catalog role assignment within Azure Active Directory.
///
/// ## API Permissions
///
/// The following API permissions are required in order to use this resource.
///
/// When authenticated with a service principal, this resource requires one of the following application roles: `EntitlementManagement.ReadWrite.All` or `Directory.ReadWrite.All`
///
/// When authenticated with a user principal, this resource requires one of the following directory roles: `Identity Governance administrator` or `Global Administrator`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azuread from "@pulumi/azuread";
///
/// const example = azuread.getUser({
///     userPrincipalName: "jdoe@example.com",
/// });
/// const exampleGetAccessPackageCatalogRole = azuread.getAccessPackageCatalogRole({
///     displayName: "Catalog owner",
/// });
/// const exampleAccessPackageCatalog = new azuread.AccessPackageCatalog("example", {
///     displayName: "example-access-package-catalog",
///     description: "Example access package catalog",
/// });
/// const exampleAccessPackageCatalogRoleAssignment = new azuread.AccessPackageCatalogRoleAssignment("example", {
///     roleId: exampleGetAccessPackageCatalogRole.then(exampleGetAccessPackageCatalogRole => exampleGetAccessPackageCatalogRole.objectId),
///     principalObjectId: example.then(example => example.objectId),
///     catalogId: exampleAccessPackageCatalog.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azuread as azuread
///
/// example = azuread.get_user(user_principal_name="jdoe@example.com")
/// example_get_access_package_catalog_role = azuread.get_access_package_catalog_role(display_name="Catalog owner")
/// example_access_package_catalog = azuread.AccessPackageCatalog("example",
///     display_name="example-access-package-catalog",
///     description="Example access package catalog")
/// example_access_package_catalog_role_assignment = azuread.AccessPackageCatalogRoleAssignment("example",
///     role_id=example_get_access_package_catalog_role.object_id,
///     principal_object_id=example.object_id,
///     catalog_id=example_access_package_catalog.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureAD = Pulumi.AzureAD;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = AzureAD.GetUser.Invoke(new()
///     {
///         UserPrincipalName = "jdoe@example.com",
///     });
///
///     var exampleGetAccessPackageCatalogRole = AzureAD.GetAccessPackageCatalogRole.Invoke(new()
///     {
///         DisplayName = "Catalog owner",
///     });
///
///     var exampleAccessPackageCatalog = new AzureAD.AccessPackageCatalog("example", new()
///     {
///         DisplayName = "example-access-package-catalog",
///         Description = "Example access package catalog",
///     });
///
///     var exampleAccessPackageCatalogRoleAssignment = new AzureAD.AccessPackageCatalogRoleAssignment("example", new()
///     {
///         RoleId = exampleGetAccessPackageCatalogRole.Apply(getAccessPackageCatalogRoleResult => getAccessPackageCatalogRoleResult.ObjectId),
///         PrincipalObjectId = example.Apply(getUserResult => getUserResult.ObjectId),
///         CatalogId = exampleAccessPackageCatalog.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azuread/sdk/v6/go/azuread"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := azuread.LookupUser(ctx, &azuread.LookupUserArgs{
/// 			UserPrincipalName: pulumi.StringRef("jdoe@example.com"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleGetAccessPackageCatalogRole, err := azuread.GetAccessPackageCatalogRole(ctx, &azuread.GetAccessPackageCatalogRoleArgs{
/// 			DisplayName: pulumi.StringRef("Catalog owner"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAccessPackageCatalog, err := azuread.NewAccessPackageCatalog(ctx, "example", &azuread.AccessPackageCatalogArgs{
/// 			DisplayName: pulumi.String("example-access-package-catalog"),
/// 			Description: pulumi.String("Example access package catalog"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = azuread.NewAccessPackageCatalogRoleAssignment(ctx, "example", &azuread.AccessPackageCatalogRoleAssignmentArgs{
/// 			RoleId:            pulumi.String(exampleGetAccessPackageCatalogRole.ObjectId),
/// 			PrincipalObjectId: pulumi.String(example.ObjectId),
/// 			CatalogId:         exampleAccessPackageCatalog.ID(),
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
/// import com.pulumi.azuread.AzureadFunctions;
/// import com.pulumi.azuread.inputs.GetUserArgs;
/// import com.pulumi.azuread.inputs.GetAccessPackageCatalogRoleArgs;
/// import com.pulumi.azuread.AccessPackageCatalog;
/// import com.pulumi.azuread.AccessPackageCatalogArgs;
/// import com.pulumi.azuread.AccessPackageCatalogRoleAssignment;
/// import com.pulumi.azuread.AccessPackageCatalogRoleAssignmentArgs;
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
///         final var example = AzureadFunctions.getUser(GetUserArgs.builder()
///             .userPrincipalName("jdoe@example.com")
///             .build());
///
///         final var exampleGetAccessPackageCatalogRole = AzureadFunctions.getAccessPackageCatalogRole(GetAccessPackageCatalogRoleArgs.builder()
///             .displayName("Catalog owner")
///             .build());
///
///         var exampleAccessPackageCatalog = new AccessPackageCatalog("exampleAccessPackageCatalog", AccessPackageCatalogArgs.builder()
///             .displayName("example-access-package-catalog")
///             .description("Example access package catalog")
///             .build());
///
///         var exampleAccessPackageCatalogRoleAssignment = new AccessPackageCatalogRoleAssignment("exampleAccessPackageCatalogRoleAssignment", AccessPackageCatalogRoleAssignmentArgs.builder()
///             .roleId(exampleGetAccessPackageCatalogRole.objectId())
///             .principalObjectId(example.objectId())
///             .catalogId(exampleAccessPackageCatalog.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleAccessPackageCatalog:
///     type: azuread:AccessPackageCatalog
///     name: example
///     properties:
///       displayName: example-access-package-catalog
///       description: Example access package catalog
///   exampleAccessPackageCatalogRoleAssignment:
///     type: azuread:AccessPackageCatalogRoleAssignment
///     name: example
///     properties:
///       roleId: ${exampleGetAccessPackageCatalogRole.objectId}
///       principalObjectId: ${example.objectId}
///       catalogId: ${exampleAccessPackageCatalog.id}
/// variables:
///   example:
///     fn::invoke:
///       function: azuread:getUser
///       arguments:
///         userPrincipalName: jdoe@example.com
///   exampleGetAccessPackageCatalogRole:
///     fn::invoke:
///       function: azuread:getAccessPackageCatalogRole
///       arguments:
///         displayName: Catalog owner
/// ```
///
///
/// ## Import
///
/// Catalog role assignments can be imported using the ID of the assignment, e.g.
///
/// ```sh
/// $ pulumi import azuread:index/accessPackageCatalogRoleAssignment:AccessPackageCatalogRoleAssignment example 00000000-0000-0000-0000-000000000000
/// ```
class AccessPackageCatalogRoleAssignment extends pulumi.CustomResource {
  /// The ID of the Catalog this role assignment will be scoped to. Changing this forces a new resource to be created.
  late final pulumi.Output<String> catalogId;
  /// The object ID of the principal for you want to create a role assignment. Supported object types are Users, Groups or Service Principals. Changing this forces a new resource to be created.
  late final pulumi.Output<String> principalObjectId;
  /// The object ID of the catalog role you want to assign. Changing this forces a new resource to be created.
  late final pulumi.Output<String> roleId;

  /// Creates a new [AccessPackageCatalogRoleAssignment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AccessPackageCatalogRoleAssignment]. {@macro pulumi_index_access_package_catalog_role_assignment_access_package_catalog_role_assignment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AccessPackageCatalogRoleAssignment(
    String name, {
    AccessPackageCatalogRoleAssignmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azuread:index/accessPackageCatalogRoleAssignment:AccessPackageCatalogRoleAssignment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.catalogId = registerOutput<String>('catalogId');
    this.principalObjectId = registerOutput<String>('principalObjectId');
    this.roleId = registerOutput<String>('roleId');
  }

  /// Gets an existing [AccessPackageCatalogRoleAssignment] resource's state with the given [name] and [id].
  static AccessPackageCatalogRoleAssignment get(
    String name,
    pulumi.Input<String> id, {
    AccessPackageCatalogRoleAssignmentState? state,
  }) {
    return AccessPackageCatalogRoleAssignment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AccessPackageCatalogRoleAssignment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azuread:index/accessPackageCatalogRoleAssignment:AccessPackageCatalogRoleAssignment',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.catalogId = registerOutput<String>('catalogId');
    this.principalObjectId = registerOutput<String>('principalObjectId');
    this.roleId = registerOutput<String>('roleId');
  }
}
