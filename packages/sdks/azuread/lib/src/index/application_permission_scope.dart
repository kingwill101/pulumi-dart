import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_permission_scope_args.dart';
import 'application_permission_scope_state.dart';

/// Manages a permission scope for an application registration.
///
/// This resource is analogous to the `oauth2_permission_scope` block in the `api` block of the  `azuread.Application` resource. When using these resources together, you should use the `ignore_changes` lifecycle meta-argument (see example below).
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
/// const exampleAdminister = new random.index.Uuid("example_administer", {});
/// const exampleApplicationPermissionScope = new azuread.ApplicationPermissionScope("example", {
///     applicationId: test.id,
///     scopeId: exampleAdminister.id,
///     value: "administer",
///     adminConsentDescription: "Administer the application",
///     adminConsentDisplayName: "Administer",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azuread as azuread
/// import pulumi_random as random
///
/// example = azuread.ApplicationRegistration("example", display_name="example")
/// example_administer = random.index.Uuid("example_administer")
/// example_application_permission_scope = azuread.ApplicationPermissionScope("example",
///     application_id=test["id"],
///     scope_id=example_administer["id"],
///     value="administer",
///     admin_consent_description="Administer the application",
///     admin_consent_display_name="Administer")
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
///     var exampleAdminister = new Random.Index.Uuid("example_administer");
///
///     var exampleApplicationPermissionScope = new AzureAD.ApplicationPermissionScope("example", new()
///     {
///         ApplicationId = test.Id,
///         ScopeId = exampleAdminister.Id,
///         Value = "administer",
///         AdminConsentDescription = "Administer the application",
///         AdminConsentDisplayName = "Administer",
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
/// 		_, err := azuread.NewApplicationRegistration(ctx, "example", &azuread.ApplicationRegistrationArgs{
/// 			DisplayName: pulumi.String("example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAdminister, err := random.NewUuid(ctx, "example_administer", nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = azuread.NewApplicationPermissionScope(ctx, "example", &azuread.ApplicationPermissionScopeArgs{
/// 			ApplicationId:           pulumi.Any(test.Id),
/// 			ScopeId:                 exampleAdminister.Id,
/// 			Value:                   pulumi.String("administer"),
/// 			AdminConsentDescription: pulumi.String("Administer the application"),
/// 			AdminConsentDisplayName: pulumi.String("Administer"),
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
/// import com.pulumi.azuread.ApplicationPermissionScope;
/// import com.pulumi.azuread.ApplicationPermissionScopeArgs;
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
///         var exampleAdminister = new Uuid("exampleAdminister");
///
///         var exampleApplicationPermissionScope = new ApplicationPermissionScope("exampleApplicationPermissionScope", ApplicationPermissionScopeArgs.builder()
///             .applicationId(test.id())
///             .scopeId(exampleAdminister.id())
///             .value("administer")
///             .adminConsentDescription("Administer the application")
///             .adminConsentDisplayName("Administer")
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
///   exampleAdminister:
///     type: random:Uuid
///     name: example_administer
///   exampleApplicationPermissionScope:
///     type: azuread:ApplicationPermissionScope
///     name: example
///     properties:
///       applicationId: ${test.id}
///       scopeId: ${exampleAdminister.id}
///       value: administer
///       adminConsentDescription: Administer the application
///       adminConsentDisplayName: Administer
/// ```
///
///
/// &gt; **Tip** For managing more permissions scopes, create additional instances of this resource
///
/// *Usage with azuread.Application resource*
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azuread from "@pulumi/azuread";
///
/// const example = new azuread.Application("example", {displayName: "example"});
/// const exampleApplicationPermissionScope = new azuread.ApplicationPermissionScope("example", {applicationId: example.id});
/// ```
/// ```python
/// import pulumi
/// import pulumi_azuread as azuread
///
/// example = azuread.Application("example", display_name="example")
/// example_application_permission_scope = azuread.ApplicationPermissionScope("example", application_id=example.id)
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
///     var exampleApplicationPermissionScope = new AzureAD.ApplicationPermissionScope("example", new()
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
/// 		_, err = azuread.NewApplicationPermissionScope(ctx, "example", &azuread.ApplicationPermissionScopeArgs{
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
/// import com.pulumi.azuread.ApplicationPermissionScope;
/// import com.pulumi.azuread.ApplicationPermissionScopeArgs;
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
///         var exampleApplicationPermissionScope = new ApplicationPermissionScope("exampleApplicationPermissionScope", ApplicationPermissionScopeArgs.builder()
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
///   exampleApplicationPermissionScope:
///     type: azuread:ApplicationPermissionScope
///     name: example
///     properties:
///       applicationId: ${example.id}
/// ```
///
///
/// ## Import
///
/// Application App Roles can be imported using the object ID of the application and the ID of the permission scope, in the following format.
///
/// ```sh
/// $ pulumi import azuread:index/applicationPermissionScope:ApplicationPermissionScope example /applications/00000000-0000-0000-0000-000000000000/permissionScopes/11111111-1111-1111-1111-111111111111
/// ```
class ApplicationPermissionScope extends pulumi.CustomResource {
  /// Delegated permission description that appears in all tenant-wide admin consent experiences, intended to be read by an administrator granting the permission on behalf of all users.
  late final pulumi.Output<String> adminConsentDescription;

  /// Display name for the delegated permission, intended to be read by an administrator granting the permission on behalf of all users.
  late final pulumi.Output<String> adminConsentDisplayName;

  /// The resource ID of the application registration. Changing this forces a new resource to be created.
  late final pulumi.Output<String> applicationId;

  /// The unique identifier of the permission scope. Must be a valid UUID. Changing this forces a new resource to be created.
  late final pulumi.Output<String> scopeId;

  /// Whether this delegated permission should be considered safe for non-admin users to consent to on behalf of themselves, or whether an administrator should be required for consent to the permissions.
  late final pulumi.Output<String?> type;

  /// Delegated permission description that appears in the end user consent experience, intended to be read by a user consenting on their own behalf.
  late final pulumi.Output<String?> userConsentDescription;

  /// Display name for the delegated permission that appears in the end user consent experience.
  ///
  /// &gt; **Tip** Use the `random_uuid` resource to generate UUIDs and save them to state for permission scopes within your Terraform configuration
  late final pulumi.Output<String?> userConsentDisplayName;

  /// The value that is used for the `scp` claim in OAuth access tokens.
  ///
  /// &gt; **Roles and Permission Scopes** In Azure Active Directory, application roles and permission scopes exported by an application share the same namespace and cannot contain duplicate values.
  late final pulumi.Output<String> value;

  /// Creates a new [ApplicationPermissionScope].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ApplicationPermissionScope]. {@macro pulumi_index_application_permission_scope_application_permission_scope_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ApplicationPermissionScope(
    String name, {
    ApplicationPermissionScopeArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azuread:index/applicationPermissionScope:ApplicationPermissionScope',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    adminConsentDescription = registerOutput<String>('adminConsentDescription');
    adminConsentDisplayName = registerOutput<String>('adminConsentDisplayName');
    applicationId = registerOutput<String>('applicationId');
    scopeId = registerOutput<String>('scopeId');
    type = registerOutput<String?>('type');
    userConsentDescription = registerOutput<String?>('userConsentDescription');
    userConsentDisplayName = registerOutput<String?>('userConsentDisplayName');
    value = registerOutput<String>('value');
  }

  /// Gets an existing [ApplicationPermissionScope] resource's state with the given [name] and [id].
  static ApplicationPermissionScope get(
    String name,
    pulumi.Input<String> id, {
    ApplicationPermissionScopeState? state,
  }) {
    return ApplicationPermissionScope._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ApplicationPermissionScope._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azuread:index/applicationPermissionScope:ApplicationPermissionScope',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    adminConsentDescription = registerOutput<String>('adminConsentDescription');
    adminConsentDisplayName = registerOutput<String>('adminConsentDisplayName');
    applicationId = registerOutput<String>('applicationId');
    scopeId = registerOutput<String>('scopeId');
    type = registerOutput<String?>('type');
    userConsentDescription = registerOutput<String?>('userConsentDescription');
    userConsentDisplayName = registerOutput<String?>('userConsentDisplayName');
    value = registerOutput<String>('value');
  }
}
