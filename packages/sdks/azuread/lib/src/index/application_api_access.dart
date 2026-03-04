import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_api_access_args.dart';
import 'application_api_access_state.dart';

/// Manages the API permissions for an application registration.
///
/// This resource is analogous to the `required_resource_access` block in the `azuread.Application` resource. When using these resources together, you should use the `ignore_changes` lifecycle meta-argument (see example below).
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
///
/// const wellKnown = azuread.getApplicationPublishedAppIds({});
/// const msgraph = wellKnown.then(wellKnown => azuread.getServicePrincipal({
///     clientId: wellKnown.result?.MicrosoftGraph,
/// }));
/// const example = new azuread.ApplicationRegistration("example", {displayName: "example"});
/// const exampleMsgraph = new azuread.ApplicationApiAccess("example_msgraph", {
///     applicationId: example.id,
///     apiClientId: wellKnown.then(wellKnown => wellKnown.result?.MicrosoftGraph),
///     roleIds: [
///         msgraph.then(msgraph => msgraph.appRoleIds?.["Group.Read.All"]),
///         msgraph.then(msgraph => msgraph.appRoleIds?.["User.Read.All"]),
///     ],
///     scopeIds: [msgraph.then(msgraph => msgraph.oauth2PermissionScopeIds?.["User.ReadWrite"])],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azuread as azuread
///
/// well_known = azuread.get_application_published_app_ids()
/// msgraph = azuread.get_service_principal(client_id=well_known.result["MicrosoftGraph"])
/// example = azuread.ApplicationRegistration("example", display_name="example")
/// example_msgraph = azuread.ApplicationApiAccess("example_msgraph",
///     application_id=example.id,
///     api_client_id=well_known.result["MicrosoftGraph"],
///     role_ids=[
///         msgraph.app_role_ids["Group.Read.All"],
///         msgraph.app_role_ids["User.Read.All"],
///     ],
///     scope_ids=[msgraph.oauth2_permission_scope_ids["User.ReadWrite"]])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureAD = Pulumi.AzureAD;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var wellKnown = AzureAD.GetApplicationPublishedAppIds.Invoke();
///
///     var msgraph = AzureAD.GetServicePrincipal.Invoke(new()
///     {
///         ClientId = wellKnown.Apply(getApplicationPublishedAppIdsResult => getApplicationPublishedAppIdsResult.Result?.MicrosoftGraph),
///     });
///
///     var example = new AzureAD.ApplicationRegistration("example", new()
///     {
///         DisplayName = "example",
///     });
///
///     var exampleMsgraph = new AzureAD.ApplicationApiAccess("example_msgraph", new()
///     {
///         ApplicationId = example.Id,
///         ApiClientId = wellKnown.Apply(getApplicationPublishedAppIdsResult => getApplicationPublishedAppIdsResult.Result?.MicrosoftGraph),
///         RoleIds = new[]
///         {
///             msgraph.Apply(getServicePrincipalResult => getServicePrincipalResult.AppRoleIds?.Group_Read_All),
///             msgraph.Apply(getServicePrincipalResult => getServicePrincipalResult.AppRoleIds?.User_Read_All),
///         },
///         ScopeIds = new[]
///         {
///             msgraph.Apply(getServicePrincipalResult => getServicePrincipalResult.Oauth2PermissionScopeIds?.User_ReadWrite),
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
/// 		wellKnown, err := azuread.GetApplicationPublishedAppIds(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		msgraph, err := azuread.LookupServicePrincipal(ctx, &azuread.LookupServicePrincipalArgs{
/// 			ClientId: pulumi.StringRef(wellKnown.Result.MicrosoftGraph),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := azuread.NewApplicationRegistration(ctx, "example", &azuread.ApplicationRegistrationArgs{
/// 			DisplayName: pulumi.String("example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = azuread.NewApplicationApiAccess(ctx, "example_msgraph", &azuread.ApplicationApiAccessArgs{
/// 			ApplicationId: example.ID(),
/// 			ApiClientId:   pulumi.String(wellKnown.Result.MicrosoftGraph),
/// 			RoleIds: pulumi.StringArray{
/// 				pulumi.String(msgraph.AppRoleIds.Group.Read.All),
/// 				pulumi.String(msgraph.AppRoleIds.User.Read.All),
/// 			},
/// 			ScopeIds: pulumi.StringArray{
/// 				pulumi.String(msgraph.Oauth2PermissionScopeIds.User.ReadWrite),
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
/// import com.pulumi.azuread.AzureadFunctions;
/// import com.pulumi.azuread.inputs.GetServicePrincipalArgs;
/// import com.pulumi.azuread.ApplicationRegistration;
/// import com.pulumi.azuread.ApplicationRegistrationArgs;
/// import com.pulumi.azuread.ApplicationApiAccess;
/// import com.pulumi.azuread.ApplicationApiAccessArgs;
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
///         final var wellKnown = AzureadFunctions.getApplicationPublishedAppIds(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         final var msgraph = AzureadFunctions.getServicePrincipal(GetServicePrincipalArgs.builder()
///             .clientId(wellKnown.result().MicrosoftGraph())
///             .build());
///
///         var example = new ApplicationRegistration("example", ApplicationRegistrationArgs.builder()
///             .displayName("example")
///             .build());
///
///         var exampleMsgraph = new ApplicationApiAccess("exampleMsgraph", ApplicationApiAccessArgs.builder()
///             .applicationId(example.id())
///             .apiClientId(wellKnown.result().MicrosoftGraph())
///             .roleIds(
///                 msgraph.appRoleIds().Group.Read.All(),
///                 msgraph.appRoleIds().User.Read.All())
///             .scopeIds(msgraph.oauth2PermissionScopeIds().User.ReadWrite())
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
///   exampleMsgraph:
///     type: azuread:ApplicationApiAccess
///     name: example_msgraph
///     properties:
///       applicationId: ${example.id}
///       apiClientId: ${wellKnown.result.MicrosoftGraph}
///       roleIds:
///         - ${msgraph.appRoleIds"Group.Read.All"[%!s(MISSING)]}
///         - ${msgraph.appRoleIds"User.Read.All"[%!s(MISSING)]}
///       scopeIds:
///         - ${msgraph.oauth2PermissionScopeIds"User.ReadWrite"[%!s(MISSING)]}
/// variables:
///   wellKnown:
///     fn::invoke:
///       function: azuread:getApplicationPublishedAppIds
///       arguments: {}
///   msgraph:
///     fn::invoke:
///       function: azuread:getServicePrincipal
///       arguments:
///         clientId: ${wellKnown.result.MicrosoftGraph}
/// ```
///
///
/// &gt; **Tip** For managing permissions for an additional API, create another instance of this resource
///
/// *Usage with azuread.Application resource*
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azuread from "@pulumi/azuread";
///
/// const example = new azuread.Application("example", {displayName: "example"});
/// const exampleApplicationApiAccess = new azuread.ApplicationApiAccess("example", {applicationId: example.id});
/// ```
/// ```python
/// import pulumi
/// import pulumi_azuread as azuread
///
/// example = azuread.Application("example", display_name="example")
/// example_application_api_access = azuread.ApplicationApiAccess("example", application_id=example.id)
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
///     var exampleApplicationApiAccess = new AzureAD.ApplicationApiAccess("example", new()
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
/// 		_, err = azuread.NewApplicationApiAccess(ctx, "example", &azuread.ApplicationApiAccessArgs{
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
/// import com.pulumi.azuread.ApplicationApiAccess;
/// import com.pulumi.azuread.ApplicationApiAccessArgs;
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
///         var exampleApplicationApiAccess = new ApplicationApiAccess("exampleApplicationApiAccess", ApplicationApiAccessArgs.builder()
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
///   exampleApplicationApiAccess:
///     type: azuread:ApplicationApiAccess
///     name: example
///     properties:
///       applicationId: ${example.id}
/// ```
///
///
/// ## Import
///
/// Application API Access can be imported using the object ID of the application and the client ID of the API, in the following format.
///
/// ```sh
/// $ pulumi import azuread:index/applicationApiAccess:ApplicationApiAccess example /applications/00000000-0000-0000-0000-000000000000/apiAccess/11111111-1111-1111-1111-111111111111
/// ```
class ApplicationApiAccess extends pulumi.CustomResource {
  /// The client ID of the API to which access is being granted. Changing this forces a new resource to be created.
  late final pulumi.Output<String> apiClientId;

  /// The resource ID of the application registration. Changing this forces a new resource to be created.
  late final pulumi.Output<String> applicationId;

  /// A set of role IDs to be granted to the application, as published by the API.
  late final pulumi.Output<List<String>?> roleIds;

  /// A set of scope IDs to be granted to the application, as published by the API.
  ///
  /// &gt; At least one of `role_ids` or `scope_ids` must be specified.
  late final pulumi.Output<List<String>?> scopeIds;

  /// Creates a new [ApplicationApiAccess].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ApplicationApiAccess]. {@macro pulumi_index_application_api_access_application_api_access_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ApplicationApiAccess(
    String name, {
    ApplicationApiAccessArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azuread:index/applicationApiAccess:ApplicationApiAccess',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    apiClientId = registerOutput<String>('apiClientId');
    applicationId = registerOutput<String>('applicationId');
    roleIds = registerOutput<List<String>?>('roleIds');
    scopeIds = registerOutput<List<String>?>('scopeIds');
  }

  /// Gets an existing [ApplicationApiAccess] resource's state with the given [name] and [id].
  static ApplicationApiAccess get(
    String name,
    pulumi.Input<String> id, {
    ApplicationApiAccessState? state,
  }) {
    return ApplicationApiAccess._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ApplicationApiAccess._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azuread:index/applicationApiAccess:ApplicationApiAccess',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    apiClientId = registerOutput<String>('apiClientId');
    applicationId = registerOutput<String>('applicationId');
    roleIds = registerOutput<List<String>?>('roleIds');
    scopeIds = registerOutput<List<String>?>('scopeIds');
  }
}
