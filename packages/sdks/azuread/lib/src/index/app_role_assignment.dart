import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_role_assignment_args.dart';
import 'app_role_assignment_state.dart';

/// Manages an app role assignment for a group, user or service principal. Can be used to grant admin consent for application permissions.
///
/// ## API Permissions
///
/// The following API permissions are required in order to use this resource.
///
/// When authenticated with a service principal, this resource requires one of the following application roles: `AppRoleAssignment.ReadWrite.All` and `Application.Read.All`, or `AppRoleAssignment.ReadWrite.All` and `Directory.Read.All`, or `Application.ReadWrite.All`, or `Directory.ReadWrite.All`
///
/// When authenticated with a user principal, this resource requires one of the following directory roles: `Application Administrator` or `Global Administrator`
///
/// ## Example Usage
///
/// *App role assignment for accessing Microsoft Graph*
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azuread from "@pulumi/azuread";
///
/// const wellKnown = azuread.getApplicationPublishedAppIds({});
/// const msgraph = new azuread.ServicePrincipal("msgraph", {
///     clientId: wellKnown.then(wellKnown => wellKnown.result?.microsoftGraph),
///     useExisting: true,
/// });
/// const example = new azuread.Application("example", {
///     displayName: "example",
///     requiredResourceAccesses: [{
///         resourceAppId: wellKnown.then(wellKnown => wellKnown.result?.microsoftGraph),
///         resourceAccesses: [
///             {
///                 id: msgraph.appRoleIds["User.Read.All"],
///                 type: "Role",
///             },
///             {
///                 id: msgraph.oauth2PermissionScopeIds["User.ReadWrite"],
///                 type: "Scope",
///             },
///         ],
///     }],
/// });
/// const exampleServicePrincipal = new azuread.ServicePrincipal("example", {clientId: example.clientId});
/// const exampleAppRoleAssignment = new azuread.AppRoleAssignment("example", {
///     appRoleId: msgraph.appRoleIds["User.Read.All"],
///     principalObjectId: exampleServicePrincipal.objectId,
///     resourceObjectId: msgraph.objectId,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azuread as azuread
///
/// well_known = azuread.get_application_published_app_ids()
/// msgraph = azuread.ServicePrincipal("msgraph",
///     client_id=well_known.result["microsoftGraph"],
///     use_existing=True)
/// example = azuread.Application("example",
///     display_name="example",
///     required_resource_accesses=[{
///         "resource_app_id": well_known.result["microsoftGraph"],
///         "resource_accesses": [
///             {
///                 "id": msgraph.app_role_ids["User.Read.All"],
///                 "type": "Role",
///             },
///             {
///                 "id": msgraph.oauth2_permission_scope_ids["User.ReadWrite"],
///                 "type": "Scope",
///             },
///         ],
///     }])
/// example_service_principal = azuread.ServicePrincipal("example", client_id=example.client_id)
/// example_app_role_assignment = azuread.AppRoleAssignment("example",
///     app_role_id=msgraph.app_role_ids["User.Read.All"],
///     principal_object_id=example_service_principal.object_id,
///     resource_object_id=msgraph.object_id)
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
///     var msgraph = new AzureAD.ServicePrincipal("msgraph", new()
///     {
///         ClientId = wellKnown.Apply(getApplicationPublishedAppIdsResult => getApplicationPublishedAppIdsResult.Result?.MicrosoftGraph),
///         UseExisting = true,
///     });
///
///     var example = new AzureAD.Application("example", new()
///     {
///         DisplayName = "example",
///         RequiredResourceAccesses = new[]
///         {
///             new AzureAD.Inputs.ApplicationRequiredResourceAccessArgs
///             {
///                 ResourceAppId = wellKnown.Apply(getApplicationPublishedAppIdsResult => getApplicationPublishedAppIdsResult.Result?.MicrosoftGraph),
///                 ResourceAccesses = new[]
///                 {
///                     new AzureAD.Inputs.ApplicationRequiredResourceAccessResourceAccessArgs
///                     {
///                         Id = msgraph.AppRoleIds.Apply(appRoleIds => appRoleIds.User_Read_All),
///                         Type = "Role",
///                     },
///                     new AzureAD.Inputs.ApplicationRequiredResourceAccessResourceAccessArgs
///                     {
///                         Id = msgraph.Oauth2PermissionScopeIds.Apply(oauth2PermissionScopeIds => oauth2PermissionScopeIds.User_ReadWrite),
///                         Type = "Scope",
///                     },
///                 },
///             },
///         },
///     });
///
///     var exampleServicePrincipal = new AzureAD.ServicePrincipal("example", new()
///     {
///         ClientId = example.ClientId,
///     });
///
///     var exampleAppRoleAssignment = new AzureAD.AppRoleAssignment("example", new()
///     {
///         AppRoleId = msgraph.AppRoleIds.Apply(appRoleIds => appRoleIds.User_Read_All),
///         PrincipalObjectId = exampleServicePrincipal.ObjectId,
///         ResourceObjectId = msgraph.ObjectId,
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
/// 		msgraph, err := azuread.NewServicePrincipal(ctx, "msgraph", &azuread.ServicePrincipalArgs{
/// 			ClientId:    pulumi.String(wellKnown.Result.MicrosoftGraph),
/// 			UseExisting: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := azuread.NewApplication(ctx, "example", &azuread.ApplicationArgs{
/// 			DisplayName: pulumi.String("example"),
/// 			RequiredResourceAccesses: azuread.ApplicationRequiredResourceAccessArray{
/// 				&azuread.ApplicationRequiredResourceAccessArgs{
/// 					ResourceAppId: pulumi.String(wellKnown.Result.MicrosoftGraph),
/// 					ResourceAccesses: azuread.ApplicationRequiredResourceAccessResourceAccessArray{
/// 						&azuread.ApplicationRequiredResourceAccessResourceAccessArgs{
/// 							Id: msgraph.AppRoleIds.ApplyT(func(appRoleIds map[string]string) (string, error) {
/// 								return appRoleIds.User.Read.All, nil
/// 							}).(pulumi.StringOutput),
/// 							Type: pulumi.String("Role"),
/// 						},
/// 						&azuread.ApplicationRequiredResourceAccessResourceAccessArgs{
/// 							Id: msgraph.Oauth2PermissionScopeIds.ApplyT(func(oauth2PermissionScopeIds map[string]string) (string, error) {
/// 								return oauth2PermissionScopeIds.User.ReadWrite, nil
/// 							}).(pulumi.StringOutput),
/// 							Type: pulumi.String("Scope"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleServicePrincipal, err := azuread.NewServicePrincipal(ctx, "example", &azuread.ServicePrincipalArgs{
/// 			ClientId: example.ClientId,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = azuread.NewAppRoleAssignment(ctx, "example", &azuread.AppRoleAssignmentArgs{
/// 			AppRoleId: msgraph.AppRoleIds.ApplyT(func(appRoleIds map[string]string) (string, error) {
/// 				return appRoleIds.User.Read.All, nil
/// 			}).(pulumi.StringOutput),
/// 			PrincipalObjectId: exampleServicePrincipal.ObjectId,
/// 			ResourceObjectId:  msgraph.ObjectId,
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
/// import com.pulumi.azuread.ServicePrincipal;
/// import com.pulumi.azuread.ServicePrincipalArgs;
/// import com.pulumi.azuread.Application;
/// import com.pulumi.azuread.ApplicationArgs;
/// import com.pulumi.azuread.inputs.ApplicationRequiredResourceAccessArgs;
/// import com.pulumi.azuread.AppRoleAssignment;
/// import com.pulumi.azuread.AppRoleAssignmentArgs;
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
///         var msgraph = new ServicePrincipal("msgraph", ServicePrincipalArgs.builder()
///             .clientId(wellKnown.result().microsoftGraph())
///             .useExisting(true)
///             .build());
///
///         var example = new Application("example", ApplicationArgs.builder()
///             .displayName("example")
///             .requiredResourceAccesses(ApplicationRequiredResourceAccessArgs.builder()
///                 .resourceAppId(wellKnown.result().microsoftGraph())
///                 .resourceAccesses(
///                     ApplicationRequiredResourceAccessResourceAccessArgs.builder()
///                         .id(msgraph.appRoleIds().applyValue(_appRoleIds -> _appRoleIds.User.Read.All()))
///                         .type("Role")
///                         .build(),
///                     ApplicationRequiredResourceAccessResourceAccessArgs.builder()
///                         .id(msgraph.oauth2PermissionScopeIds().applyValue(_oauth2PermissionScopeIds -> _oauth2PermissionScopeIds.User.ReadWrite()))
///                         .type("Scope")
///                         .build())
///                 .build())
///             .build());
///
///         var exampleServicePrincipal = new ServicePrincipal("exampleServicePrincipal", ServicePrincipalArgs.builder()
///             .clientId(example.clientId())
///             .build());
///
///         var exampleAppRoleAssignment = new AppRoleAssignment("exampleAppRoleAssignment", AppRoleAssignmentArgs.builder()
///             .appRoleId(msgraph.appRoleIds().applyValue(_appRoleIds -> _appRoleIds.User.Read.All()))
///             .principalObjectId(exampleServicePrincipal.objectId())
///             .resourceObjectId(msgraph.objectId())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   msgraph:
///     type: azuread:ServicePrincipal
///     properties:
///       clientId: ${wellKnown.result.microsoftGraph}
///       useExisting: true
///   example:
///     type: azuread:Application
///     properties:
///       displayName: example
///       requiredResourceAccesses:
///         - resourceAppId: ${wellKnown.result.microsoftGraph}
///           resourceAccesses:
///             - id: ${msgraph.appRoleIds"User.Read.All"[%!s(MISSING)]}
///               type: Role
///             - id: ${msgraph.oauth2PermissionScopeIds"User.ReadWrite"[%!s(MISSING)]}
///               type: Scope
///   exampleServicePrincipal:
///     type: azuread:ServicePrincipal
///     name: example
///     properties:
///       clientId: ${example.clientId}
///   exampleAppRoleAssignment:
///     type: azuread:AppRoleAssignment
///     name: example
///     properties:
///       appRoleId: ${msgraph.appRoleIds"User.Read.All"[%!s(MISSING)]}
///       principalObjectId: ${exampleServicePrincipal.objectId}
///       resourceObjectId: ${msgraph.objectId}
/// variables:
///   wellKnown:
///     fn::invoke:
///       function: azuread:getApplicationPublishedAppIds
///       arguments: {}
/// ```
///
///
/// *App role assignment for internal application*
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azuread from "@pulumi/azuread";
///
/// const internal = new azuread.Application("internal", {
///     displayName: "internal",
///     appRoles: [{
///         allowedMemberTypes: ["Application"],
///         description: "Apps can query the database",
///         displayName: "Query",
///         enabled: true,
///         id: "00000000-0000-0000-0000-111111111111",
///         value: "Query.All",
///     }],
/// });
/// const internalServicePrincipal = new azuread.ServicePrincipal("internal", {clientId: internal.clientId});
/// const example = new azuread.Application("example", {
///     displayName: "example",
///     requiredResourceAccesses: [{
///         resourceAppId: internal.clientId,
///         resourceAccesses: [{
///             id: internalServicePrincipal.appRoleIds["Query.All"],
///             type: "Role",
///         }],
///     }],
/// });
/// const exampleServicePrincipal = new azuread.ServicePrincipal("example", {clientId: example.clientId});
/// const exampleAppRoleAssignment = new azuread.AppRoleAssignment("example", {
///     appRoleId: internalServicePrincipal.appRoleIds["Query.All"],
///     principalObjectId: exampleServicePrincipal.objectId,
///     resourceObjectId: internalServicePrincipal.objectId,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azuread as azuread
///
/// internal = azuread.Application("internal",
///     display_name="internal",
///     app_roles=[{
///         "allowed_member_types": ["Application"],
///         "description": "Apps can query the database",
///         "display_name": "Query",
///         "enabled": True,
///         "id": "00000000-0000-0000-0000-111111111111",
///         "value": "Query.All",
///     }])
/// internal_service_principal = azuread.ServicePrincipal("internal", client_id=internal.client_id)
/// example = azuread.Application("example",
///     display_name="example",
///     required_resource_accesses=[{
///         "resource_app_id": internal.client_id,
///         "resource_accesses": [{
///             "id": internal_service_principal.app_role_ids["Query.All"],
///             "type": "Role",
///         }],
///     }])
/// example_service_principal = azuread.ServicePrincipal("example", client_id=example.client_id)
/// example_app_role_assignment = azuread.AppRoleAssignment("example",
///     app_role_id=internal_service_principal.app_role_ids["Query.All"],
///     principal_object_id=example_service_principal.object_id,
///     resource_object_id=internal_service_principal.object_id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureAD = Pulumi.AzureAD;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @internal = new AzureAD.Application("internal", new()
///     {
///         DisplayName = "internal",
///         AppRoles = new[]
///         {
///             new AzureAD.Inputs.ApplicationAppRoleArgs
///             {
///                 AllowedMemberTypes = new[]
///                 {
///                     "Application",
///                 },
///                 Description = "Apps can query the database",
///                 DisplayName = "Query",
///                 Enabled = true,
///                 Id = "00000000-0000-0000-0000-111111111111",
///                 Value = "Query.All",
///             },
///         },
///     });
///
///     var internalServicePrincipal = new AzureAD.ServicePrincipal("internal", new()
///     {
///         ClientId = @internal.ClientId,
///     });
///
///     var example = new AzureAD.Application("example", new()
///     {
///         DisplayName = "example",
///         RequiredResourceAccesses = new[]
///         {
///             new AzureAD.Inputs.ApplicationRequiredResourceAccessArgs
///             {
///                 ResourceAppId = @internal.ClientId,
///                 ResourceAccesses = new[]
///                 {
///                     new AzureAD.Inputs.ApplicationRequiredResourceAccessResourceAccessArgs
///                     {
///                         Id = internalServicePrincipal.AppRoleIds.Apply(appRoleIds => appRoleIds.Query_All),
///                         Type = "Role",
///                     },
///                 },
///             },
///         },
///     });
///
///     var exampleServicePrincipal = new AzureAD.ServicePrincipal("example", new()
///     {
///         ClientId = example.ClientId,
///     });
///
///     var exampleAppRoleAssignment = new AzureAD.AppRoleAssignment("example", new()
///     {
///         AppRoleId = internalServicePrincipal.AppRoleIds.Apply(appRoleIds => appRoleIds.Query_All),
///         PrincipalObjectId = exampleServicePrincipal.ObjectId,
///         ResourceObjectId = internalServicePrincipal.ObjectId,
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
/// 		internal, err := azuread.NewApplication(ctx, "internal", &azuread.ApplicationArgs{
/// 			DisplayName: pulumi.String("internal"),
/// 			AppRoles: azuread.ApplicationAppRoleTypeArray{
/// 				&azuread.ApplicationAppRoleTypeArgs{
/// 					AllowedMemberTypes: pulumi.StringArray{
/// 						pulumi.String("Application"),
/// 					},
/// 					Description: pulumi.String("Apps can query the database"),
/// 					DisplayName: pulumi.String("Query"),
/// 					Enabled:     pulumi.Bool(true),
/// 					Id:          pulumi.String("00000000-0000-0000-0000-111111111111"),
/// 					Value:       pulumi.String("Query.All"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		internalServicePrincipal, err := azuread.NewServicePrincipal(ctx, "internal", &azuread.ServicePrincipalArgs{
/// 			ClientId: internal.ClientId,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := azuread.NewApplication(ctx, "example", &azuread.ApplicationArgs{
/// 			DisplayName: pulumi.String("example"),
/// 			RequiredResourceAccesses: azuread.ApplicationRequiredResourceAccessArray{
/// 				&azuread.ApplicationRequiredResourceAccessArgs{
/// 					ResourceAppId: internal.ClientId,
/// 					ResourceAccesses: azuread.ApplicationRequiredResourceAccessResourceAccessArray{
/// 						&azuread.ApplicationRequiredResourceAccessResourceAccessArgs{
/// 							Id: internalServicePrincipal.AppRoleIds.ApplyT(func(appRoleIds map[string]string) (string, error) {
/// 								return appRoleIds.Query.All, nil
/// 							}).(pulumi.StringOutput),
/// 							Type: pulumi.String("Role"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleServicePrincipal, err := azuread.NewServicePrincipal(ctx, "example", &azuread.ServicePrincipalArgs{
/// 			ClientId: example.ClientId,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = azuread.NewAppRoleAssignment(ctx, "example", &azuread.AppRoleAssignmentArgs{
/// 			AppRoleId: internalServicePrincipal.AppRoleIds.ApplyT(func(appRoleIds map[string]string) (string, error) {
/// 				return appRoleIds.Query.All, nil
/// 			}).(pulumi.StringOutput),
/// 			PrincipalObjectId: exampleServicePrincipal.ObjectId,
/// 			ResourceObjectId:  internalServicePrincipal.ObjectId,
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
/// import com.pulumi.azuread.inputs.ApplicationAppRoleArgs;
/// import com.pulumi.azuread.ServicePrincipal;
/// import com.pulumi.azuread.ServicePrincipalArgs;
/// import com.pulumi.azuread.inputs.ApplicationRequiredResourceAccessArgs;
/// import com.pulumi.azuread.AppRoleAssignment;
/// import com.pulumi.azuread.AppRoleAssignmentArgs;
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
///         var internal = new Application("internal", ApplicationArgs.builder()
///             .displayName("internal")
///             .appRoles(ApplicationAppRoleArgs.builder()
///                 .allowedMemberTypes("Application")
///                 .description("Apps can query the database")
///                 .displayName("Query")
///                 .enabled(true)
///                 .id("00000000-0000-0000-0000-111111111111")
///                 .value("Query.All")
///                 .build())
///             .build());
///
///         var internalServicePrincipal = new ServicePrincipal("internalServicePrincipal", ServicePrincipalArgs.builder()
///             .clientId(internal.clientId())
///             .build());
///
///         var example = new Application("example", ApplicationArgs.builder()
///             .displayName("example")
///             .requiredResourceAccesses(ApplicationRequiredResourceAccessArgs.builder()
///                 .resourceAppId(internal.clientId())
///                 .resourceAccesses(ApplicationRequiredResourceAccessResourceAccessArgs.builder()
///                     .id(internalServicePrincipal.appRoleIds().applyValue(_appRoleIds -> _appRoleIds.Query.All()))
///                     .type("Role")
///                     .build())
///                 .build())
///             .build());
///
///         var exampleServicePrincipal = new ServicePrincipal("exampleServicePrincipal", ServicePrincipalArgs.builder()
///             .clientId(example.clientId())
///             .build());
///
///         var exampleAppRoleAssignment = new AppRoleAssignment("exampleAppRoleAssignment", AppRoleAssignmentArgs.builder()
///             .appRoleId(internalServicePrincipal.appRoleIds().applyValue(_appRoleIds -> _appRoleIds.Query.All()))
///             .principalObjectId(exampleServicePrincipal.objectId())
///             .resourceObjectId(internalServicePrincipal.objectId())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   internal:
///     type: azuread:Application
///     properties:
///       displayName: internal
///       appRoles:
///         - allowedMemberTypes:
///             - Application
///           description: Apps can query the database
///           displayName: Query
///           enabled: true
///           id: 00000000-0000-0000-0000-111111111111
///           value: Query.All
///   internalServicePrincipal:
///     type: azuread:ServicePrincipal
///     name: internal
///     properties:
///       clientId: ${internal.clientId}
///   example:
///     type: azuread:Application
///     properties:
///       displayName: example
///       requiredResourceAccesses:
///         - resourceAppId: ${internal.clientId}
///           resourceAccesses:
///             - id: ${internalServicePrincipal.appRoleIds"Query.All"[%!s(MISSING)]}
///               type: Role
///   exampleServicePrincipal:
///     type: azuread:ServicePrincipal
///     name: example
///     properties:
///       clientId: ${example.clientId}
///   exampleAppRoleAssignment:
///     type: azuread:AppRoleAssignment
///     name: example
///     properties:
///       appRoleId: ${internalServicePrincipal.appRoleIds"Query.All"[%!s(MISSING)]}
///       principalObjectId: ${exampleServicePrincipal.objectId}
///       resourceObjectId: ${internalServicePrincipal.objectId}
/// ```
///
///
/// *Assign a user and group to an internal application*
///
/// ## Import
///
/// App role assignments can be imported using the object ID of the service principal representing the resource and the ID of the app role assignment (note: _not_ the ID of the app role), e.g.
///
/// ```sh
/// $ pulumi import azuread:index/appRoleAssignment:AppRoleAssignment example /servicePrincipals/00000000-0000-0000-0000-000000000000/appRoleAssignedTo/aaBBcDDeFG6h5JKLMN2PQrrssTTUUvWWxxxxxyyyzzz
/// ```
///
/// > This ID format is unique to Terraform and is composed of the Resource Service Principal Object ID and the ID of the App Role Assignment in the format `/servicePrincipals/{ResourcePrincipalID}/appRoleAssignedTo/{AppRoleAssignmentID}`.
class AppRoleAssignment extends pulumi.CustomResource {
  /// The ID of the app role to be assigned, or the default role ID `00000000-0000-0000-0000-000000000000`. Changing this forces a new resource to be created.
  late final pulumi.Output<String> appRoleId;
  /// The display name of the principal to which the app role is assigned.
  late final pulumi.Output<String> principalDisplayName;
  /// The object ID of the user, group or service principal to be assigned this app role. Supported object types are Users, Groups or Service Principals. Changing this forces a new resource to be created.
  late final pulumi.Output<String> principalObjectId;
  /// The object type of the principal to which the app role is assigned.
  late final pulumi.Output<String> principalType;
  /// The display name of the application representing the resource.
  late final pulumi.Output<String> resourceDisplayName;
  /// The object ID of the service principal representing the resource. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceObjectId;

  /// Creates a new [AppRoleAssignment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AppRoleAssignment]. {@macro pulumi_index_app_role_assignment_app_role_assignment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AppRoleAssignment(
    String name, {
    AppRoleAssignmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azuread:index/appRoleAssignment:AppRoleAssignment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.appRoleId = registerOutput<String>('appRoleId');
    this.principalDisplayName = registerOutput<String>('principalDisplayName');
    this.principalObjectId = registerOutput<String>('principalObjectId');
    this.principalType = registerOutput<String>('principalType');
    this.resourceDisplayName = registerOutput<String>('resourceDisplayName');
    this.resourceObjectId = registerOutput<String>('resourceObjectId');
  }

  /// Gets an existing [AppRoleAssignment] resource's state with the given [name] and [id].
  static AppRoleAssignment get(
    String name,
    pulumi.Input<String> id, {
    AppRoleAssignmentState? state,
  }) {
    return AppRoleAssignment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AppRoleAssignment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azuread:index/appRoleAssignment:AppRoleAssignment',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.appRoleId = registerOutput<String>('appRoleId');
    this.principalDisplayName = registerOutput<String>('principalDisplayName');
    this.principalObjectId = registerOutput<String>('principalObjectId');
    this.principalType = registerOutput<String>('principalType');
    this.resourceDisplayName = registerOutput<String>('resourceDisplayName');
    this.resourceObjectId = registerOutput<String>('resourceObjectId');
  }
}
