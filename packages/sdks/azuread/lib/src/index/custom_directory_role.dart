import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_directory_role_args.dart';
import 'custom_directory_role_state.dart';

/// Manages a Custom Directory Role within Azure Active Directory.
///
/// This resource is for managing custom directory roles. For management of built-in roles, see the azuread.DirectoryRole resource.
///
/// ## API Permissions
///
/// The following API permissions are required in order to use this resource.
///
/// When authenticated with a service principal, this resource requires one of the following application roles: `RoleManagement.ReadWrite.Directory` or `Directory.ReadWrite.All`
///
/// When authenticated with a user principal, this resource requires one of the following directory roles: `Privileged Role Administrator` or `Global Administrator`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azuread from "@pulumi/azuread";
///
/// const example = new azuread.CustomDirectoryRole("example", {
///     displayName: "My Custom Role",
///     description: "Allows reading applications and updating groups",
///     enabled: true,
///     version: "1.0",
///     permissions: [
///         {
///             allowedResourceActions: [
///                 "microsoft.directory/applications/basic/update",
///                 "microsoft.directory/applications/create",
///                 "microsoft.directory/applications/standard/read",
///             ],
///         },
///         {
///             allowedResourceActions: [
///                 "microsoft.directory/groups/allProperties/read",
///                 "microsoft.directory/groups/allProperties/read",
///                 "microsoft.directory/groups/basic/update",
///                 "microsoft.directory/groups/create",
///                 "microsoft.directory/groups/delete",
///             ],
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azuread as azuread
///
/// example = azuread.CustomDirectoryRole("example",
///     display_name="My Custom Role",
///     description="Allows reading applications and updating groups",
///     enabled=True,
///     version="1.0",
///     permissions=[
///         {
///             "allowed_resource_actions": [
///                 "microsoft.directory/applications/basic/update",
///                 "microsoft.directory/applications/create",
///                 "microsoft.directory/applications/standard/read",
///             ],
///         },
///         {
///             "allowed_resource_actions": [
///                 "microsoft.directory/groups/allProperties/read",
///                 "microsoft.directory/groups/allProperties/read",
///                 "microsoft.directory/groups/basic/update",
///                 "microsoft.directory/groups/create",
///                 "microsoft.directory/groups/delete",
///             ],
///         },
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureAD = Pulumi.AzureAD;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new AzureAD.CustomDirectoryRole("example", new()
///     {
///         DisplayName = "My Custom Role",
///         Description = "Allows reading applications and updating groups",
///         Enabled = true,
///         Version = "1.0",
///         Permissions = new[]
///         {
///             new AzureAD.Inputs.CustomDirectoryRolePermissionArgs
///             {
///                 AllowedResourceActions = new[]
///                 {
///                     "microsoft.directory/applications/basic/update",
///                     "microsoft.directory/applications/create",
///                     "microsoft.directory/applications/standard/read",
///                 },
///             },
///             new AzureAD.Inputs.CustomDirectoryRolePermissionArgs
///             {
///                 AllowedResourceActions = new[]
///                 {
///                     "microsoft.directory/groups/allProperties/read",
///                     "microsoft.directory/groups/allProperties/read",
///                     "microsoft.directory/groups/basic/update",
///                     "microsoft.directory/groups/create",
///                     "microsoft.directory/groups/delete",
///                 },
///             },
///         },
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
/// 		_, err := azuread.NewCustomDirectoryRole(ctx, "example", &azuread.CustomDirectoryRoleArgs{
/// 			DisplayName: pulumi.String("My Custom Role"),
/// 			Description: pulumi.String("Allows reading applications and updating groups"),
/// 			Enabled:     pulumi.Bool(true),
/// 			Version:     pulumi.String("1.0"),
/// 			Permissions: azuread.CustomDirectoryRolePermissionArray{
/// 				&azuread.CustomDirectoryRolePermissionArgs{
/// 					AllowedResourceActions: pulumi.StringArray{
/// 						pulumi.String("microsoft.directory/applications/basic/update"),
/// 						pulumi.String("microsoft.directory/applications/create"),
/// 						pulumi.String("microsoft.directory/applications/standard/read"),
/// 					},
/// 				},
/// 				&azuread.CustomDirectoryRolePermissionArgs{
/// 					AllowedResourceActions: pulumi.StringArray{
/// 						pulumi.String("microsoft.directory/groups/allProperties/read"),
/// 						pulumi.String("microsoft.directory/groups/allProperties/read"),
/// 						pulumi.String("microsoft.directory/groups/basic/update"),
/// 						pulumi.String("microsoft.directory/groups/create"),
/// 						pulumi.String("microsoft.directory/groups/delete"),
/// 					},
/// 				},
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
/// import com.pulumi.azuread.CustomDirectoryRole;
/// import com.pulumi.azuread.CustomDirectoryRoleArgs;
/// import com.pulumi.azuread.inputs.CustomDirectoryRolePermissionArgs;
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
///         var example = new CustomDirectoryRole("example", CustomDirectoryRoleArgs.builder()
///             .displayName("My Custom Role")
///             .description("Allows reading applications and updating groups")
///             .enabled(true)
///             .version("1.0")
///             .permissions(
///                 CustomDirectoryRolePermissionArgs.builder()
///                     .allowedResourceActions(
///                         "microsoft.directory/applications/basic/update",
///                         "microsoft.directory/applications/create",
///                         "microsoft.directory/applications/standard/read")
///                     .build(),
///                 CustomDirectoryRolePermissionArgs.builder()
///                     .allowedResourceActions(
///                         "microsoft.directory/groups/allProperties/read",
///                         "microsoft.directory/groups/allProperties/read",
///                         "microsoft.directory/groups/basic/update",
///                         "microsoft.directory/groups/create",
///                         "microsoft.directory/groups/delete")
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azuread:CustomDirectoryRole
///     properties:
///       displayName: My Custom Role
///       description: Allows reading applications and updating groups
///       enabled: true
///       version: '1.0'
///       permissions:
///         - allowedResourceActions:
///             - microsoft.directory/applications/basic/update
///             - microsoft.directory/applications/create
///             - microsoft.directory/applications/standard/read
///         - allowedResourceActions:
///             - microsoft.directory/groups/allProperties/read
///             - microsoft.directory/groups/allProperties/read
///             - microsoft.directory/groups/basic/update
///             - microsoft.directory/groups/create
///             - microsoft.directory/groups/delete
/// ```
///
///
/// ## Import
///
/// This resource does not support importing.
class CustomDirectoryRole extends pulumi.CustomResource {
  /// The description of the custom directory role.
  late final pulumi.Output<String?> description;
  /// The display name of the custom directory role.
  late final pulumi.Output<String> displayName;
  /// Indicates whether the role is enabled for assignment.
  late final pulumi.Output<bool> enabled;
  /// The object ID of the custom directory role.
  late final pulumi.Output<String> objectId;
  /// A collection of `permissions` blocks as documented below.
  late final pulumi.Output<List<Map<String, dynamic>>> permissions;
  /// Custom template identifier that is typically used if one needs an identifier to be the same across different directories. Changing this forces a new resource to be created.
  late final pulumi.Output<String> templateId;
  /// The version of the role definition. This can be any arbitrary string between 1-128 characters.
  late final pulumi.Output<String> version;

  /// Creates a new [CustomDirectoryRole].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CustomDirectoryRole]. {@macro pulumi_index_custom_directory_role_custom_directory_role_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CustomDirectoryRole(
    String name, {
    CustomDirectoryRoleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azuread:index/customDirectoryRole:CustomDirectoryRole',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    description = registerOutput<String?>('description');
    displayName = registerOutput<String>('displayName');
    enabled = registerOutput<bool>('enabled');
    objectId = registerOutput<String>('objectId');
    permissions = registerOutput<List<Map<String, dynamic>>>('permissions');
    templateId = registerOutput<String>('templateId');
    version = registerOutput<String>('version');
  }

  /// Gets an existing [CustomDirectoryRole] resource's state with the given [name] and [id].
  static CustomDirectoryRole get(
    String name,
    pulumi.Input<String> id, {
    CustomDirectoryRoleState? state,
  }) {
    return CustomDirectoryRole._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  CustomDirectoryRole._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azuread:index/customDirectoryRole:CustomDirectoryRole',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    description = registerOutput<String?>('description');
    displayName = registerOutput<String>('displayName');
    enabled = registerOutput<bool>('enabled');
    objectId = registerOutput<String>('objectId');
    permissions = registerOutput<List<Map<String, dynamic>>>('permissions');
    templateId = registerOutput<String>('templateId');
    version = registerOutput<String>('version');
  }
}
