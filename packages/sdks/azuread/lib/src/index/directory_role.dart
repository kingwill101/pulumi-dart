import 'package:pulumi/pulumi.dart' as pulumi;
import 'directory_role_args.dart';
import 'directory_role_state.dart';

/// Manages a Directory Role within Azure Active Directory. Directory Roles are also known as Administrator Roles.
///
/// Directory Roles are built-in to Azure Active Directory and are immutable. However, by default they are not activated in a tenant (except for the Global Administrator role). This resource ensures a directory role is activated from its associated role template, and exports the object ID of the role, so that role assignments can be made for it.
///
/// Once activated, directory roles cannot be deactivated and so this resource does not perform any actions on destroy.
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
/// *Activate a directory role by its template ID*
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azuread from "@pulumi/azuread";
///
/// const example = new azuread.DirectoryRole("example", {templateId: "00000000-0000-0000-0000-000000000000"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_azuread as azuread
///
/// example = azuread.DirectoryRole("example", template_id="00000000-0000-0000-0000-000000000000")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureAD = Pulumi.AzureAD;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new AzureAD.DirectoryRole("example", new()
///     {
///         TemplateId = "00000000-0000-0000-0000-000000000000",
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
/// 		_, err := azuread.NewDirectoryRole(ctx, "example", &azuread.DirectoryRoleArgs{
/// 			TemplateId: pulumi.String("00000000-0000-0000-0000-000000000000"),
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
///         var example = new DirectoryRole("example", DirectoryRoleArgs.builder()
///             .templateId("00000000-0000-0000-0000-000000000000")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azuread:DirectoryRole
///     properties:
///       templateId: 00000000-0000-0000-0000-000000000000
/// ```
///
///
/// *Activate a directory role by display name*
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azuread from "@pulumi/azuread";
///
/// const example = new azuread.DirectoryRole("example", {displayName: "Printer administrator"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_azuread as azuread
///
/// example = azuread.DirectoryRole("example", display_name="Printer administrator")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureAD = Pulumi.AzureAD;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new AzureAD.DirectoryRole("example", new()
///     {
///         DisplayName = "Printer administrator",
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
/// 		_, err := azuread.NewDirectoryRole(ctx, "example", &azuread.DirectoryRoleArgs{
/// 			DisplayName: pulumi.String("Printer administrator"),
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
///         var example = new DirectoryRole("example", DirectoryRoleArgs.builder()
///             .displayName("Printer administrator")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azuread:DirectoryRole
///     properties:
///       displayName: Printer administrator
/// ```
///
///
/// ## Import
///
/// This resource does not support importing.
class DirectoryRole extends pulumi.CustomResource {
  /// The description of the directory role.
  late final pulumi.Output<String> description;
  /// The display name of the directory role to activate. Changing this forces a new resource to be created.
  late final pulumi.Output<String> displayName;
  /// The object ID of the directory role.
  late final pulumi.Output<String> objectId;
  /// The object ID of the role template from which to activate the directory role. Changing this forces a new resource to be created.
  ///
  /// &gt; Either `display_name` or `template_id` must be specified.
  late final pulumi.Output<String> templateId;

  /// Creates a new [DirectoryRole].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DirectoryRole]. {@macro pulumi_index_directory_role_directory_role_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DirectoryRole(
    String name, {
    DirectoryRoleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azuread:index/directoryRole:DirectoryRole',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    description = registerOutput<String>('description');
    displayName = registerOutput<String>('displayName');
    objectId = registerOutput<String>('objectId');
    templateId = registerOutput<String>('templateId');
  }

  /// Gets an existing [DirectoryRole] resource's state with the given [name] and [id].
  static DirectoryRole get(
    String name,
    pulumi.Input<String> id, {
    DirectoryRoleState? state,
  }) {
    return DirectoryRole._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  DirectoryRole._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azuread:index/directoryRole:DirectoryRole',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    description = registerOutput<String>('description');
    displayName = registerOutput<String>('displayName');
    objectId = registerOutput<String>('objectId');
    templateId = registerOutput<String>('templateId');
  }
}
