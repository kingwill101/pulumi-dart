import 'package:pulumi/pulumi.dart' as pulumi;
import 'directory_role_assignment_args.dart';
import 'directory_role_assignment_state.dart';

/// Manages a single directory role assignment within Azure Active Directory.
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
/// *Assignment for a built-in role*
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azuread from "@pulumi/azuread";
///
/// const example = azuread.getUser({
///     userPrincipalName: "jdoe@example.com",
/// });
/// const exampleDirectoryRole = new azuread.DirectoryRole("example", {displayName: "Security administrator"});
/// const exampleDirectoryRoleAssignment = new azuread.DirectoryRoleAssignment("example", {
///     roleId: exampleDirectoryRole.templateId,
///     principalObjectId: example.then(example => example.objectId),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azuread as azuread
///
/// example = azuread.get_user(user_principal_name="jdoe@example.com")
/// example_directory_role = azuread.DirectoryRole("example", display_name="Security administrator")
/// example_directory_role_assignment = azuread.DirectoryRoleAssignment("example",
///     role_id=example_directory_role.template_id,
///     principal_object_id=example.object_id)
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
///     var exampleDirectoryRole = new AzureAD.DirectoryRole("example", new()
///     {
///         DisplayName = "Security administrator",
///     });
///
///     var exampleDirectoryRoleAssignment = new AzureAD.DirectoryRoleAssignment("example", new()
///     {
///         RoleId = exampleDirectoryRole.TemplateId,
///         PrincipalObjectId = example.Apply(getUserResult => getUserResult.ObjectId),
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
/// 		exampleDirectoryRole, err := azuread.NewDirectoryRole(ctx, "example", &azuread.DirectoryRoleArgs{
/// 			DisplayName: pulumi.String("Security administrator"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = azuread.NewDirectoryRoleAssignment(ctx, "example", &azuread.DirectoryRoleAssignmentArgs{
/// 			RoleId:            exampleDirectoryRole.TemplateId,
/// 			PrincipalObjectId: pulumi.String(example.ObjectId),
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
/// import com.pulumi.azuread.DirectoryRole;
/// import com.pulumi.azuread.DirectoryRoleArgs;
/// import com.pulumi.azuread.DirectoryRoleAssignment;
/// import com.pulumi.azuread.DirectoryRoleAssignmentArgs;
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
///         var exampleDirectoryRole = new DirectoryRole("exampleDirectoryRole", DirectoryRoleArgs.builder()
///             .displayName("Security administrator")
///             .build());
///
///         var exampleDirectoryRoleAssignment = new DirectoryRoleAssignment("exampleDirectoryRoleAssignment", DirectoryRoleAssignmentArgs.builder()
///             .roleId(exampleDirectoryRole.templateId())
///             .principalObjectId(example.objectId())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleDirectoryRole:
///     type: azuread:DirectoryRole
///     name: example
///     properties:
///       displayName: Security administrator
///   exampleDirectoryRoleAssignment:
///     type: azuread:DirectoryRoleAssignment
///     name: example
///     properties:
///       roleId: ${exampleDirectoryRole.templateId}
///       principalObjectId: ${example.objectId}
/// variables:
///   example:
///     fn::invoke:
///       function: azuread:getUser
///       arguments:
///         userPrincipalName: jdoe@example.com
/// ```
///
///
/// &gt; Note the use of the `template_id` attribute when referencing built-in roles.
///
/// *Assignment for a custom role*
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azuread from "@pulumi/azuread";
///
/// const example = azuread.getUser({
///     userPrincipalName: "jdoe@example.com",
/// });
/// const exampleCustomDirectoryRole = new azuread.CustomDirectoryRole("example", {
///     displayName: "My Custom Role",
///     enabled: true,
///     version: "1.0",
///     permissions: [{
///         allowedResourceActions: [
///             "microsoft.directory/applications/basic/update",
///             "microsoft.directory/applications/standard/read",
///         ],
///     }],
/// });
/// const exampleDirectoryRoleAssignment = new azuread.DirectoryRoleAssignment("example", {
///     roleId: exampleCustomDirectoryRole.objectId,
///     principalObjectId: example.then(example => example.objectId),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azuread as azuread
///
/// example = azuread.get_user(user_principal_name="jdoe@example.com")
/// example_custom_directory_role = azuread.CustomDirectoryRole("example",
///     display_name="My Custom Role",
///     enabled=True,
///     version="1.0",
///     permissions=[{
///         "allowed_resource_actions": [
///             "microsoft.directory/applications/basic/update",
///             "microsoft.directory/applications/standard/read",
///         ],
///     }])
/// example_directory_role_assignment = azuread.DirectoryRoleAssignment("example",
///     role_id=example_custom_directory_role.object_id,
///     principal_object_id=example.object_id)
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
///     var exampleCustomDirectoryRole = new AzureAD.CustomDirectoryRole("example", new()
///     {
///         DisplayName = "My Custom Role",
///         Enabled = true,
///         Version = "1.0",
///         Permissions = new[]
///         {
///             new AzureAD.Inputs.CustomDirectoryRolePermissionArgs
///             {
///                 AllowedResourceActions = new[]
///                 {
///                     "microsoft.directory/applications/basic/update",
///                     "microsoft.directory/applications/standard/read",
///                 },
///             },
///         },
///     });
///
///     var exampleDirectoryRoleAssignment = new AzureAD.DirectoryRoleAssignment("example", new()
///     {
///         RoleId = exampleCustomDirectoryRole.ObjectId,
///         PrincipalObjectId = example.Apply(getUserResult => getUserResult.ObjectId),
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
/// 		exampleCustomDirectoryRole, err := azuread.NewCustomDirectoryRole(ctx, "example", &azuread.CustomDirectoryRoleArgs{
/// 			DisplayName: pulumi.String("My Custom Role"),
/// 			Enabled:     pulumi.Bool(true),
/// 			Version:     pulumi.String("1.0"),
/// 			Permissions: azuread.CustomDirectoryRolePermissionArray{
/// 				&azuread.CustomDirectoryRolePermissionArgs{
/// 					AllowedResourceActions: pulumi.StringArray{
/// 						pulumi.String("microsoft.directory/applications/basic/update"),
/// 						pulumi.String("microsoft.directory/applications/standard/read"),
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = azuread.NewDirectoryRoleAssignment(ctx, "example", &azuread.DirectoryRoleAssignmentArgs{
/// 			RoleId:            exampleCustomDirectoryRole.ObjectId,
/// 			PrincipalObjectId: pulumi.String(example.ObjectId),
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
/// import com.pulumi.azuread.CustomDirectoryRole;
/// import com.pulumi.azuread.CustomDirectoryRoleArgs;
/// import com.pulumi.azuread.inputs.CustomDirectoryRolePermissionArgs;
/// import com.pulumi.azuread.DirectoryRoleAssignment;
/// import com.pulumi.azuread.DirectoryRoleAssignmentArgs;
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
///         var exampleCustomDirectoryRole = new CustomDirectoryRole("exampleCustomDirectoryRole", CustomDirectoryRoleArgs.builder()
///             .displayName("My Custom Role")
///             .enabled(true)
///             .version("1.0")
///             .permissions(CustomDirectoryRolePermissionArgs.builder()
///                 .allowedResourceActions(
///                     "microsoft.directory/applications/basic/update",
///                     "microsoft.directory/applications/standard/read")
///                 .build())
///             .build());
///
///         var exampleDirectoryRoleAssignment = new DirectoryRoleAssignment("exampleDirectoryRoleAssignment", DirectoryRoleAssignmentArgs.builder()
///             .roleId(exampleCustomDirectoryRole.objectId())
///             .principalObjectId(example.objectId())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleCustomDirectoryRole:
///     type: azuread:CustomDirectoryRole
///     name: example
///     properties:
///       displayName: My Custom Role
///       enabled: true
///       version: '1.0'
///       permissions:
///         - allowedResourceActions:
///             - microsoft.directory/applications/basic/update
///             - microsoft.directory/applications/standard/read
///   exampleDirectoryRoleAssignment:
///     type: azuread:DirectoryRoleAssignment
///     name: example
///     properties:
///       roleId: ${exampleCustomDirectoryRole.objectId}
///       principalObjectId: ${example.objectId}
/// variables:
///   example:
///     fn::invoke:
///       function: azuread:getUser
///       arguments:
///         userPrincipalName: jdoe@example.com
/// ```
///
///
/// *Scoped assignment for an application*
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azuread from "@pulumi/azuread";
/// import * as std from "@pulumi/std";
///
/// const exampleDirectoryRole = new azuread.DirectoryRole("example", {displayName: "Cloud application administrator"});
/// const exampleApplication = new azuread.Application("example", {displayName: "My Application"});
/// const example = azuread.getUser({
///     userPrincipalName: "jdoe@example.com",
/// });
/// const exampleDirectoryRoleAssignment = new azuread.DirectoryRoleAssignment("example", {
///     roleId: exampleDirectoryRole.templateId,
///     principalObjectId: example.then(example => example.objectId),
///     directoryScopeId: std.format({
///         input: "/%s",
///         args: [exampleApplication.objectId],
///     }).then(invoke => invoke.result),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azuread as azuread
/// import pulumi_std as std
///
/// example_directory_role = azuread.DirectoryRole("example", display_name="Cloud application administrator")
/// example_application = azuread.Application("example", display_name="My Application")
/// example = azuread.get_user(user_principal_name="jdoe@example.com")
/// example_directory_role_assignment = azuread.DirectoryRoleAssignment("example",
///     role_id=example_directory_role.template_id,
///     principal_object_id=example.object_id,
///     directory_scope_id=std.format(input="/%s",
///         args=[example_application.object_id]).result)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureAD = Pulumi.AzureAD;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleDirectoryRole = new AzureAD.DirectoryRole("example", new()
///     {
///         DisplayName = "Cloud application administrator",
///     });
///
///     var exampleApplication = new AzureAD.Application("example", new()
///     {
///         DisplayName = "My Application",
///     });
///
///     var example = AzureAD.GetUser.Invoke(new()
///     {
///         UserPrincipalName = "jdoe@example.com",
///     });
///
///     var exampleDirectoryRoleAssignment = new AzureAD.DirectoryRoleAssignment("example", new()
///     {
///         RoleId = exampleDirectoryRole.TemplateId,
///         PrincipalObjectId = example.Apply(getUserResult => getUserResult.ObjectId),
///         DirectoryScopeId = Std.Format.Invoke(new()
///         {
///             Input = "/%s",
///             Args = new[]
///             {
///                 exampleApplication.ObjectId,
///             },
///         }).Apply(invoke => invoke.Result),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azuread/sdk/v6/go/azuread"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		exampleDirectoryRole, err := azuread.NewDirectoryRole(ctx, "example", &azuread.DirectoryRoleArgs{
/// 			DisplayName: pulumi.String("Cloud application administrator"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleApplication, err := azuread.NewApplication(ctx, "example", &azuread.ApplicationArgs{
/// 			DisplayName: pulumi.String("My Application"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := azuread.LookupUser(ctx, &azuread.LookupUserArgs{
/// 			UserPrincipalName: pulumi.StringRef("jdoe@example.com"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeFormat, err := std.Format(ctx, &std.FormatArgs{
/// 			Input: "/%s",
/// 			Args: pulumi.StringArray{
/// 				exampleApplication.ObjectId,
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = azuread.NewDirectoryRoleAssignment(ctx, "example", &azuread.DirectoryRoleAssignmentArgs{
/// 			RoleId:            exampleDirectoryRole.TemplateId,
/// 			PrincipalObjectId: pulumi.String(example.ObjectId),
/// 			DirectoryScopeId:  pulumi.String(invokeFormat.Result),
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
/// import com.pulumi.azuread.DirectoryRole;
/// import com.pulumi.azuread.DirectoryRoleArgs;
/// import com.pulumi.azuread.Application;
/// import com.pulumi.azuread.ApplicationArgs;
/// import com.pulumi.azuread.AzureadFunctions;
/// import com.pulumi.azuread.inputs.GetUserArgs;
/// import com.pulumi.azuread.DirectoryRoleAssignment;
/// import com.pulumi.azuread.DirectoryRoleAssignmentArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.FormatArgs;
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
///         var exampleDirectoryRole = new DirectoryRole("exampleDirectoryRole", DirectoryRoleArgs.builder()
///             .displayName("Cloud application administrator")
///             .build());
///
///         var exampleApplication = new Application("exampleApplication", ApplicationArgs.builder()
///             .displayName("My Application")
///             .build());
///
///         final var example = AzureadFunctions.getUser(GetUserArgs.builder()
///             .userPrincipalName("jdoe@example.com")
///             .build());
///
///         var exampleDirectoryRoleAssignment = new DirectoryRoleAssignment("exampleDirectoryRoleAssignment", DirectoryRoleAssignmentArgs.builder()
///             .roleId(exampleDirectoryRole.templateId())
///             .principalObjectId(example.objectId())
///             .directoryScopeId(StdFunctions.format(FormatArgs.builder()
///                 .input("/%s")
///                 .args(exampleApplication.objectId())
///                 .build()).result())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleDirectoryRole:
///     type: azuread:DirectoryRole
///     name: example
///     properties:
///       displayName: Cloud application administrator
///   exampleApplication:
///     type: azuread:Application
///     name: example
///     properties:
///       displayName: My Application
///   exampleDirectoryRoleAssignment:
///     type: azuread:DirectoryRoleAssignment
///     name: example
///     properties:
///       roleId: ${exampleDirectoryRole.templateId}
///       principalObjectId: ${example.objectId}
///       directoryScopeId:
///         fn::invoke:
///           function: std:format
///           arguments:
///             input: /%s
///             args:
///               - ${exampleApplication.objectId}
///           return: result
/// variables:
///   example:
///     fn::invoke:
///       function: azuread:getUser
///       arguments:
///         userPrincipalName: jdoe@example.com
/// ```
///
///
/// &gt; Note the use of the `template_id` attribute when referencing built-in roles.
///
/// ## Import
///
/// Directory role assignments can be imported using the ID of the assignment, e.g.
///
/// ```sh
/// $ pulumi import azuread:index/directoryRoleAssignment:DirectoryRoleAssignment example ePROZI_iKE653D_d6aoLHyr-lKgHI8ZGiIdz8CLVcng-1
/// ```
class DirectoryRoleAssignment extends pulumi.CustomResource {
  /// Identifier of the app-specific scope when the assignment scope is app-specific. Cannot be used with `directory_scope_id`. See [official documentation](https://docs.microsoft.com/en-us/graph/api/rbacapplication-post-roleassignments?view=graph-rest-1.0&tabs=http) for example usage. Changing this forces a new resource to be created.
  late final pulumi.Output<String> appScopeId;

  /// Identifier of the directory object representing the scope of the assignment. Cannot be used with `app_scope_id`. See [official documentation](https://docs.microsoft.com/en-us/graph/api/rbacapplication-post-roleassignments?view=graph-rest-1.0&tabs=http) for example usage. Changing this forces a new resource to be created.
  late final pulumi.Output<String> directoryScopeId;

  /// The object ID of the principal for you want to create a role assignment. Supported object types are Users, Groups or Service Principals. Changing this forces a new resource to be created.
  late final pulumi.Output<String> principalObjectId;

  /// The template ID (in the case of built-in roles) or object ID (in the case of custom roles) of the directory role you want to assign. Changing this forces a new resource to be created.
  late final pulumi.Output<String> roleId;

  /// Creates a new [DirectoryRoleAssignment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DirectoryRoleAssignment]. {@macro pulumi_index_directory_role_assignment_directory_role_assignment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DirectoryRoleAssignment(
    String name, {
    DirectoryRoleAssignmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azuread:index/directoryRoleAssignment:DirectoryRoleAssignment',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    appScopeId = registerOutput<String>('appScopeId');
    directoryScopeId = registerOutput<String>('directoryScopeId');
    principalObjectId = registerOutput<String>('principalObjectId');
    roleId = registerOutput<String>('roleId');
  }

  /// Gets an existing [DirectoryRoleAssignment] resource's state with the given [name] and [id].
  static DirectoryRoleAssignment get(
    String name,
    pulumi.Input<String> id, {
    DirectoryRoleAssignmentState? state,
  }) {
    return DirectoryRoleAssignment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  DirectoryRoleAssignment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azuread:index/directoryRoleAssignment:DirectoryRoleAssignment',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    appScopeId = registerOutput<String>('appScopeId');
    directoryScopeId = registerOutput<String>('directoryScopeId');
    principalObjectId = registerOutput<String>('principalObjectId');
    roleId = registerOutput<String>('roleId');
  }
}
