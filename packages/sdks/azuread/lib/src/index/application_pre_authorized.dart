import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_pre_authorized_args.dart';
import 'application_pre_authorized_state.dart';

/// Manages client applications that are pre-authorized with the specified permissions to access an application's APIs without requiring user consent.
///
/// ## API Permissions
///
/// The following API permissions are required in order to use this resource.
///
/// When authenticated with a service principal, this resource requires one of the following application roles: `Application.ReadWrite.OwnedBy` or `Application.ReadWrite.All`
///
/// &gt; When using the `Application.ReadWrite.OwnedBy` application role, the principal being used to run Terraform must be an owner of the application.
///
/// When authenticated with a user principal, this resource requires one of the following directory roles: `Application Administrator` or `Global Administrator`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azuread from "@pulumi/azuread";
///
/// const authorized = new azuread.ApplicationRegistration("authorized", {displayName: "example-authorized-app"});
/// const authorizer = new azuread.Application("authorizer", {
///     displayName: "example-authorizing-app",
///     api: {
///         oauth2PermissionScopes: [
///             {
///                 adminConsentDescription: "Administer the application",
///                 adminConsentDisplayName: "Administer",
///                 enabled: true,
///                 id: "00000000-0000-0000-0000-000000000000",
///                 type: "Admin",
///                 value: "administer",
///             },
///             {
///                 adminConsentDescription: "Access the application",
///                 adminConsentDisplayName: "Access",
///                 enabled: true,
///                 id: "11111111-1111-1111-1111-111111111111",
///                 type: "User",
///                 userConsentDescription: "Access the application",
///                 userConsentDisplayName: "Access",
///                 value: "user_impersonation",
///             },
///         ],
///     },
/// });
/// const example = new azuread.ApplicationPreAuthorized("example", {
///     applicationId: authorizer.id,
///     authorizedClientId: authorized.clientId,
///     permissionIds: [
///         "00000000-0000-0000-0000-000000000000",
///         "11111111-1111-1111-1111-111111111111",
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azuread as azuread
///
/// authorized = azuread.ApplicationRegistration("authorized", display_name="example-authorized-app")
/// authorizer = azuread.Application("authorizer",
///     display_name="example-authorizing-app",
///     api={
///         "oauth2_permission_scopes": [
///             {
///                 "admin_consent_description": "Administer the application",
///                 "admin_consent_display_name": "Administer",
///                 "enabled": True,
///                 "id": "00000000-0000-0000-0000-000000000000",
///                 "type": "Admin",
///                 "value": "administer",
///             },
///             {
///                 "admin_consent_description": "Access the application",
///                 "admin_consent_display_name": "Access",
///                 "enabled": True,
///                 "id": "11111111-1111-1111-1111-111111111111",
///                 "type": "User",
///                 "user_consent_description": "Access the application",
///                 "user_consent_display_name": "Access",
///                 "value": "user_impersonation",
///             },
///         ],
///     })
/// example = azuread.ApplicationPreAuthorized("example",
///     application_id=authorizer.id,
///     authorized_client_id=authorized.client_id,
///     permission_ids=[
///         "00000000-0000-0000-0000-000000000000",
///         "11111111-1111-1111-1111-111111111111",
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
///     var authorized = new AzureAD.ApplicationRegistration("authorized", new()
///     {
///         DisplayName = "example-authorized-app",
///     });
///
///     var authorizer = new AzureAD.Application("authorizer", new()
///     {
///         DisplayName = "example-authorizing-app",
///         Api = new AzureAD.Inputs.ApplicationApiArgs
///         {
///             Oauth2PermissionScopes = new[]
///             {
///                 new AzureAD.Inputs.ApplicationApiOauth2PermissionScopeArgs
///                 {
///                     AdminConsentDescription = "Administer the application",
///                     AdminConsentDisplayName = "Administer",
///                     Enabled = true,
///                     Id = "00000000-0000-0000-0000-000000000000",
///                     Type = "Admin",
///                     Value = "administer",
///                 },
///                 new AzureAD.Inputs.ApplicationApiOauth2PermissionScopeArgs
///                 {
///                     AdminConsentDescription = "Access the application",
///                     AdminConsentDisplayName = "Access",
///                     Enabled = true,
///                     Id = "11111111-1111-1111-1111-111111111111",
///                     Type = "User",
///                     UserConsentDescription = "Access the application",
///                     UserConsentDisplayName = "Access",
///                     Value = "user_impersonation",
///                 },
///             },
///         },
///     });
///
///     var example = new AzureAD.ApplicationPreAuthorized("example", new()
///     {
///         ApplicationId = authorizer.Id,
///         AuthorizedClientId = authorized.ClientId,
///         PermissionIds = new[]
///         {
///             "00000000-0000-0000-0000-000000000000",
///             "11111111-1111-1111-1111-111111111111",
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
/// 		authorized, err := azuread.NewApplicationRegistration(ctx, "authorized", &azuread.ApplicationRegistrationArgs{
/// 			DisplayName: pulumi.String("example-authorized-app"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		authorizer, err := azuread.NewApplication(ctx, "authorizer", &azuread.ApplicationArgs{
/// 			DisplayName: pulumi.String("example-authorizing-app"),
/// 			Api: &azuread.ApplicationApiArgs{
/// 				Oauth2PermissionScopes: azuread.ApplicationApiOauth2PermissionScopeArray{
/// 					&azuread.ApplicationApiOauth2PermissionScopeArgs{
/// 						AdminConsentDescription: pulumi.String("Administer the application"),
/// 						AdminConsentDisplayName: pulumi.String("Administer"),
/// 						Enabled:                 pulumi.Bool(true),
/// 						Id:                      pulumi.String("00000000-0000-0000-0000-000000000000"),
/// 						Type:                    pulumi.String("Admin"),
/// 						Value:                   pulumi.String("administer"),
/// 					},
/// 					&azuread.ApplicationApiOauth2PermissionScopeArgs{
/// 						AdminConsentDescription: pulumi.String("Access the application"),
/// 						AdminConsentDisplayName: pulumi.String("Access"),
/// 						Enabled:                 pulumi.Bool(true),
/// 						Id:                      pulumi.String("11111111-1111-1111-1111-111111111111"),
/// 						Type:                    pulumi.String("User"),
/// 						UserConsentDescription:  pulumi.String("Access the application"),
/// 						UserConsentDisplayName:  pulumi.String("Access"),
/// 						Value:                   pulumi.String("user_impersonation"),
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = azuread.NewApplicationPreAuthorized(ctx, "example", &azuread.ApplicationPreAuthorizedArgs{
/// 			ApplicationId:      authorizer.ID(),
/// 			AuthorizedClientId: authorized.ClientId,
/// 			PermissionIds: pulumi.StringArray{
/// 				pulumi.String("00000000-0000-0000-0000-000000000000"),
/// 				pulumi.String("11111111-1111-1111-1111-111111111111"),
/// 			},
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
///     azuread = {
///       source = "pulumi/azuread"
///     }
///   }
/// }
///
/// resource "azuread_applicationregistration" "authorized" {
///   display_name = "example-authorized-app"
/// }
/// resource "azuread_application" "authorizer" {
///   display_name = "example-authorizing-app"
///   api = {
///     oauth2_permission_scopes = [{
///       "adminConsentDescription" = "Administer the application"
///       "adminConsentDisplayName" = "Administer"
///       "enabled"                 = true
///       "id"                      = "00000000-0000-0000-0000-000000000000"
///       "type"                    = "Admin"
///       "value"                   = "administer"
///       }, {
///       "adminConsentDescription" = "Access the application"
///       "adminConsentDisplayName" = "Access"
///       "enabled"                 = true
///       "id"                      = "11111111-1111-1111-1111-111111111111"
///       "type"                    = "User"
///       "userConsentDescription"  = "Access the application"
///       "userConsentDisplayName"  = "Access"
///       "value"                   = "user_impersonation"
///     }]
///   }
/// }
/// resource "azuread_applicationpreauthorized" "example" {
///   application_id       = azuread_application.authorizer.id
///   authorized_client_id = azuread_applicationregistration.authorized.client_id
///   permission_ids       = ["00000000-0000-0000-0000-000000000000", "11111111-1111-1111-1111-111111111111"]
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
/// import com.pulumi.azuread.Application;
/// import com.pulumi.azuread.ApplicationArgs;
/// import com.pulumi.azuread.inputs.ApplicationApiArgs;
/// import com.pulumi.azuread.inputs.ApplicationApiOauth2PermissionScopeArgs;
/// import com.pulumi.azuread.ApplicationPreAuthorized;
/// import com.pulumi.azuread.ApplicationPreAuthorizedArgs;
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
///         var authorized = new ApplicationRegistration("authorized", ApplicationRegistrationArgs.builder()
///             .displayName("example-authorized-app")
///             .build());
///
///         var authorizer = new Application("authorizer", ApplicationArgs.builder()
///             .displayName("example-authorizing-app")
///             .api(ApplicationApiArgs.builder()
///                 .oauth2PermissionScopes(
///                     ApplicationApiOauth2PermissionScopeArgs.builder()
///                         .adminConsentDescription("Administer the application")
///                         .adminConsentDisplayName("Administer")
///                         .enabled(true)
///                         .id("00000000-0000-0000-0000-000000000000")
///                         .type("Admin")
///                         .value("administer")
///                         .build(),
///                     ApplicationApiOauth2PermissionScopeArgs.builder()
///                         .adminConsentDescription("Access the application")
///                         .adminConsentDisplayName("Access")
///                         .enabled(true)
///                         .id("11111111-1111-1111-1111-111111111111")
///                         .type("User")
///                         .userConsentDescription("Access the application")
///                         .userConsentDisplayName("Access")
///                         .value("user_impersonation")
///                         .build())
///                 .build())
///             .build());
///
///         var example = new ApplicationPreAuthorized("example", ApplicationPreAuthorizedArgs.builder()
///             .applicationId(authorizer.id())
///             .authorizedClientId(authorized.clientId())
///             .permissionIds(
///                 "00000000-0000-0000-0000-000000000000",
///                 "11111111-1111-1111-1111-111111111111")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   authorized:
///     type: azuread:ApplicationRegistration
///     properties:
///       displayName: example-authorized-app
///   authorizer:
///     type: azuread:Application
///     properties:
///       displayName: example-authorizing-app
///       api:
///         oauth2PermissionScopes:
///           - adminConsentDescription: Administer the application
///             adminConsentDisplayName: Administer
///             enabled: true
///             id: 00000000-0000-0000-0000-000000000000
///             type: Admin
///             value: administer
///           - adminConsentDescription: Access the application
///             adminConsentDisplayName: Access
///             enabled: true
///             id: 11111111-1111-1111-1111-111111111111
///             type: User
///             userConsentDescription: Access the application
///             userConsentDisplayName: Access
///             value: user_impersonation
///   example:
///     type: azuread:ApplicationPreAuthorized
///     properties:
///       applicationId: ${authorizer.id}
///       authorizedClientId: ${authorized.clientId}
///       permissionIds:
///         - 00000000-0000-0000-0000-000000000000
///         - 11111111-1111-1111-1111-111111111111
/// ```
///
///
/// ## Import
///
/// Pre-authorized applications can be imported using the object ID of the authorizing application and the application ID of the application being authorized, e.g.
///
/// ```sh
/// $ pulumi import azuread:index/applicationPreAuthorized:ApplicationPreAuthorized example 00000000-0000-0000-0000-000000000000/preAuthorizedApplication/11111111-1111-1111-1111-111111111111
/// ```
///
/// &gt; This ID format is unique to Terraform and is composed of the authorizing application's object ID, the string "preAuthorizedApplication" and the authorized application's application ID (client ID) in the format `{ObjectId}/preAuthorizedApplication/{ApplicationId}`.
class ApplicationPreAuthorized extends pulumi.CustomResource {
  /// The resource ID of the application for which permissions are being authorized. Changing this field forces a new resource to be created.
  late final pulumi.Output<String> applicationId;
  /// The client ID of the application being authorized. Changing this field forces a new resource to be created.
  late final pulumi.Output<String> authorizedClientId;
  /// A set of permission scope IDs required by the authorized application.
  late final pulumi.Output<List<String>> permissionIds;

  /// Creates a new [ApplicationPreAuthorized].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ApplicationPreAuthorized]. {@macro pulumi_index_application_pre_authorized_application_pre_authorized_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ApplicationPreAuthorized(
    String name, {
    ApplicationPreAuthorizedArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azuread:index/applicationPreAuthorized:ApplicationPreAuthorized',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    applicationId = registerOutput<String>('applicationId');
    authorizedClientId = registerOutput<String>('authorizedClientId');
    permissionIds = registerOutput<List<String>>('permissionIds');
  }

  /// Gets an existing [ApplicationPreAuthorized] resource's state with the given [name] and [id].
  static ApplicationPreAuthorized get(
    String name,
    pulumi.Input<String> id, {
    ApplicationPreAuthorizedState? state,
  }) {
    return ApplicationPreAuthorized._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ApplicationPreAuthorized._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azuread:index/applicationPreAuthorized:ApplicationPreAuthorized',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    applicationId = registerOutput<String>('applicationId');
    authorizedClientId = registerOutput<String>('authorizedClientId');
    permissionIds = registerOutput<List<String>>('permissionIds');
  }
}
