import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_app_role_args.dart';
import 'application_app_role_state.dart';

/// Manages an app role for an application registration.
///
/// This resource is analogous to the `app_role` block in the `azuread.Application` resource. When using these resources together, you should use the `ignore_changes` lifecycle meta-argument (see example below).
///
/// ## API Permissions
///
/// The following API permissions are required in order to use this resource.
///
/// When authenticated with a service principal, this resource requires one of the following application roles: `Application.ReadWrite.OwnedBy` or `Application.ReadWrite.All`
///
/// &gt; When using the `Application.ReadWrite.OwnedBy` application role, the principal being used to run Terraform must be an owner of the application.
///
/// When authenticated with a user principal, this resource may require one of the following directory roles: `Application Administrator` or `Global Administrator`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azuread from "@pulumi/azuread";
/// import * as random from "@pulumi/random";
///
/// const example = new azuread.ApplicationRegistration("example", {displayName: "example"});
/// const exampleAdministrator = new random.index.Uuid("example_administrator", {});
/// const exampleAdminister = new azuread.ApplicationAppRole("example_administer", {
///     applicationId: example.id,
///     roleId: exampleAdministrator.id,
///     allowedMemberTypes: ["User"],
///     description: "My role description",
///     displayName: "Administer",
///     value: "admin",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azuread as azuread
/// import pulumi_random as random
///
/// example = azuread.ApplicationRegistration("example", display_name="example")
/// example_administrator = random.index.Uuid("example_administrator")
/// example_administer = azuread.ApplicationAppRole("example_administer",
///     application_id=example.id,
///     role_id=example_administrator["id"],
///     allowed_member_types=["User"],
///     description="My role description",
///     display_name="Administer",
///     value="admin")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureAD = Pulumi.AzureAD;
/// using Random = Pulumi.Random;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new AzureAD.ApplicationRegistration("example", new()
///     {
///         DisplayName = "example",
///     });
///
///     var exampleAdministrator = new Random.Index.Uuid("example_administrator");
///
///     var exampleAdminister = new AzureAD.ApplicationAppRole("example_administer", new()
///     {
///         ApplicationId = example.Id,
///         RoleId = exampleAdministrator.Id,
///         AllowedMemberTypes = new[]
///         {
///             "User",
///         },
///         Description = "My role description",
///         DisplayName = "Administer",
///         Value = "admin",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azuread/sdk/v6/go/azuread"
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := azuread.NewApplicationRegistration(ctx, "example", &azuread.ApplicationRegistrationArgs{
/// 			DisplayName: pulumi.String("example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAdministrator, err := random.NewUuid(ctx, "example_administrator", nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = azuread.NewApplicationAppRole(ctx, "example_administer", &azuread.ApplicationAppRoleArgs{
/// 			ApplicationId: example.ID(),
/// 			RoleId:        exampleAdministrator.Id,
/// 			AllowedMemberTypes: pulumi.StringArray{
/// 				pulumi.String("User"),
/// 			},
/// 			Description: pulumi.String("My role description"),
/// 			DisplayName: pulumi.String("Administer"),
/// 			Value:       pulumi.String("admin"),
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
/// import com.pulumi.azuread.ApplicationRegistration;
/// import com.pulumi.azuread.ApplicationRegistrationArgs;
/// import com.pulumi.random.Uuid;
/// import com.pulumi.azuread.ApplicationAppRole;
/// import com.pulumi.azuread.ApplicationAppRoleArgs;
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
///         var example = new ApplicationRegistration("example", ApplicationRegistrationArgs.builder()
///             .displayName("example")
///             .build());
///
///         var exampleAdministrator = new Uuid("exampleAdministrator");
///
///         var exampleAdminister = new ApplicationAppRole("exampleAdminister", ApplicationAppRoleArgs.builder()
///             .applicationId(example.id())
///             .roleId(exampleAdministrator.id())
///             .allowedMemberTypes("User")
///             .description("My role description")
///             .displayName("Administer")
///             .value("admin")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azuread:ApplicationRegistration
///     properties:
///       displayName: example
///   exampleAdministrator:
///     type: random:Uuid
///     name: example_administrator
///   exampleAdminister:
///     type: azuread:ApplicationAppRole
///     name: example_administer
///     properties:
///       applicationId: ${example.id}
///       roleId: ${exampleAdministrator.id}
///       allowedMemberTypes:
///         - User
///       description: My role description
///       displayName: Administer
///       value: admin
/// ```
///
///
/// &gt; **Tip** For managing more app roles, create additional instances of this resource
///
/// *Usage with azuread.Application resource*
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azuread from "@pulumi/azuread";
///
/// const example = new azuread.Application("example", {displayName: "example"});
/// const exampleAdminister = new azuread.ApplicationAppRole("example_administer", {applicationId: example.id});
/// ```
/// ```python
/// import pulumi
/// import pulumi_azuread as azuread
///
/// example = azuread.Application("example", display_name="example")
/// example_administer = azuread.ApplicationAppRole("example_administer", application_id=example.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureAD = Pulumi.AzureAD;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new AzureAD.Application("example", new()
///     {
///         DisplayName = "example",
///     });
///
///     var exampleAdminister = new AzureAD.ApplicationAppRole("example_administer", new()
///     {
///         ApplicationId = example.Id,
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
/// 		example, err := azuread.NewApplication(ctx, "example", &azuread.ApplicationArgs{
/// 			DisplayName: pulumi.String("example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = azuread.NewApplicationAppRole(ctx, "example_administer", &azuread.ApplicationAppRoleArgs{
/// 			ApplicationId: example.ID(),
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
/// import com.pulumi.azuread.Application;
/// import com.pulumi.azuread.ApplicationArgs;
/// import com.pulumi.azuread.ApplicationAppRole;
/// import com.pulumi.azuread.ApplicationAppRoleArgs;
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
///         var example = new Application("example", ApplicationArgs.builder()
///             .displayName("example")
///             .build());
///
///         var exampleAdminister = new ApplicationAppRole("exampleAdminister", ApplicationAppRoleArgs.builder()
///             .applicationId(example.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azuread:Application
///     properties:
///       displayName: example
///   exampleAdminister:
///     type: azuread:ApplicationAppRole
///     name: example_administer
///     properties:
///       applicationId: ${example.id}
/// ```
///
///
/// ## Import
///
/// Application App Roles can be imported using the object ID of the application and the ID of the app role, in the following format.
///
/// ```sh
/// $ pulumi import azuread:index/applicationAppRole:ApplicationAppRole example /applications/00000000-0000-0000-0000-000000000000/appRoles/11111111-1111-1111-1111-111111111111
/// ```
class ApplicationAppRoleResource extends pulumi.CustomResource {
  /// A set of values to specify whether this app role definition can be assigned to users and groups by setting to `User`, or to other applications by setting to `Application`, or to both.
  late final pulumi.Output<List<String>> allowedMemberTypes;

  /// The resource ID of the application registration. Changing this forces a new resource to be created.
  late final pulumi.Output<String> applicationId;

  /// Description of the app role that appears when the role is being assigned, and if the role functions as an application permissions, during the consent experiences.
  late final pulumi.Output<String> description;

  /// Display name for the app role that appears during app role assignment and in consent experiences.
  late final pulumi.Output<String> displayName;

  /// The unique identifier of the app role. Must be a valid UUID. Changing this forces a new resource to be created.
  ///
  /// &gt; **Tip** Use the `random_uuid` resource to generate UUIDs and save them to state for app roles within your Terraform configuration
  late final pulumi.Output<String> roleId;

  /// The value that is used for the `roles` claim in ID tokens and OAuth 2.0 access tokens that are authenticating an assigned service or user principal.
  ///
  /// &gt; **Roles and Permission Scopes** In Azure Active Directory, application roles and permission scopes exported by an application share the same namespace and cannot contain duplicate values.
  late final pulumi.Output<String?> value;

  /// Creates a new [ApplicationAppRoleResource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ApplicationAppRoleResource]. {@macro pulumi_index_application_app_role_application_app_role_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ApplicationAppRoleResource(
    String name, {
    ApplicationAppRoleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azuread:index/applicationAppRole:ApplicationAppRole',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    allowedMemberTypes = registerOutput<List<String>>('allowedMemberTypes');
    applicationId = registerOutput<String>('applicationId');
    description = registerOutput<String>('description');
    displayName = registerOutput<String>('displayName');
    roleId = registerOutput<String>('roleId');
    value = registerOutput<String?>('value');
  }

  /// Gets an existing [ApplicationAppRoleResource] resource's state with the given [name] and [id].
  static ApplicationAppRoleResource get(
    String name,
    pulumi.Input<String> id, {
    ApplicationAppRoleState? state,
  }) {
    return ApplicationAppRoleResource._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ApplicationAppRoleResource._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azuread:index/applicationAppRole:ApplicationAppRole',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    allowedMemberTypes = registerOutput<List<String>>('allowedMemberTypes');
    applicationId = registerOutput<String>('applicationId');
    description = registerOutput<String>('description');
    displayName = registerOutput<String>('displayName');
    roleId = registerOutput<String>('roleId');
    value = registerOutput<String?>('value');
  }
}
