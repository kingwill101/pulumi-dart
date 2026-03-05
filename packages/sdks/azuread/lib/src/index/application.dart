import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_api.dart';
import 'application_args.dart';
import 'application_optional_claims.dart';
import 'application_password.dart';
import 'application_public_client.dart';
import 'application_single_page_application.dart';
import 'application_state.dart';
import 'application_web.dart';

/// Manages an application registration within Azure Active Directory.
///
/// For a more lightweight alternative, please see the azuread.ApplicationRegistration resource. Please note that this resource should not be used together with the `azuread.ApplicationRegistration` resource when managing the same application.
///
/// ## API Permissions
///
/// The following API permissions are required in order to use this resource.
///
/// When authenticated with a service principal, this resource requires one of the following application roles: `Application.ReadWrite.OwnedBy` or `Application.ReadWrite.All`
///
/// &gt; When using the `Application.ReadWrite.OwnedBy` application role, you should ensure that the principal being used to run Terraform is included in the `owners` property.
///
/// Additionally, you may need the `User.Read.All` application role when including user principals in the `owners` property.
///
/// When authenticated with a user principal, this resource may require one of the following directory roles: `Application Administrator` or `Global Administrator`
///
/// ## Example Usage
///
/// *Create an application*
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azuread from "@pulumi/azuread";
/// import * as std from "@pulumi/std";
///
/// const current = azuread.getClientConfig({});
/// const example = new azuread.Application("example", {
///     displayName: "example",
///     identifierUris: ["api://example-app"],
///     logoImage: std.filebase64({
///         input: "/path/to/logo.png",
///     }).then(invoke => invoke.result),
///     owners: [current.then(current => current.objectId)],
///     signInAudience: "AzureADMultipleOrgs",
///     api: {
///         mappedClaimsEnabled: true,
///         requestedAccessTokenVersion: 2,
///         knownClientApplications: [
///             known1.clientId,
///             known2.clientId,
///         ],
///         oauth2PermissionScopes: [
///             {
///                 adminConsentDescription: "Allow the application to access example on behalf of the signed-in user.",
///                 adminConsentDisplayName: "Access example",
///                 enabled: true,
///                 id: "96183846-204b-4b43-82e1-5d2222eb4b9b",
///                 type: "User",
///                 userConsentDescription: "Allow the application to access example on your behalf.",
///                 userConsentDisplayName: "Access example",
///                 value: "user_impersonation",
///             },
///             {
///                 adminConsentDescription: "Administer the example application",
///                 adminConsentDisplayName: "Administer",
///                 enabled: true,
///                 id: "be98fa3e-ab5b-4b11-83d9-04ba2b7946bc",
///                 type: "Admin",
///                 value: "administer",
///             },
///         ],
///     },
///     appRoles: [
///         {
///             allowedMemberTypes: [
///                 "User",
///                 "Application",
///             ],
///             description: "Admins can manage roles and perform all task actions",
///             displayName: "Admin",
///             enabled: true,
///             id: "1b19509b-32b1-4e9f-b71d-4992aa991967",
///             value: "admin",
///         },
///         {
///             allowedMemberTypes: ["User"],
///             description: "ReadOnly roles have limited query access",
///             displayName: "ReadOnly",
///             enabled: true,
///             id: "497406e4-012a-4267-bf18-45a1cb148a01",
///             value: "User",
///         },
///     ],
///     featureTags: [{
///         enterprise: true,
///         gallery: true,
///     }],
///     optionalClaims: {
///         accessTokens: [
///             {
///                 name: "myclaim",
///             },
///             {
///                 name: "otherclaim",
///             },
///         ],
///         idTokens: [{
///             name: "userclaim",
///             source: "user",
///             essential: true,
///             additionalProperties: ["emit_as_roles"],
///         }],
///         saml2Tokens: [{
///             name: "samlexample",
///         }],
///     },
///     requiredResourceAccesses: [
///         {
///             resourceAppId: "00000003-0000-0000-c000-000000000000",
///             resourceAccesses: [
///                 {
///                     id: "df021288-bdef-4463-88db-98f22de89214",
///                     type: "Role",
///                 },
///                 {
///                     id: "b4e74841-8e56-480b-be8b-910348b18b4c",
///                     type: "Scope",
///                 },
///             ],
///         },
///         {
///             resourceAppId: "c5393580-f805-4401-95e8-94b7a6ef2fc2",
///             resourceAccesses: [{
///                 id: "594c1fb6-4f81-4475-ae41-0c394909246c",
///                 type: "Role",
///             }],
///         },
///     ],
///     web: {
///         homepageUrl: "https://app.example.net",
///         logoutUrl: "https://app.example.net/logout",
///         redirectUris: ["https://app.example.net/account"],
///         implicitGrant: {
///             accessTokenIssuanceEnabled: true,
///             idTokenIssuanceEnabled: true,
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azuread as azuread
/// import pulumi_std as std
///
/// current = azuread.get_client_config()
/// example = azuread.Application("example",
///     display_name="example",
///     identifier_uris=["api://example-app"],
///     logo_image=std.filebase64(input="/path/to/logo.png").result,
///     owners=[current.object_id],
///     sign_in_audience="AzureADMultipleOrgs",
///     api={
///         "mapped_claims_enabled": True,
///         "requested_access_token_version": 2,
///         "known_client_applications": [
///             known1["clientId"],
///             known2["clientId"],
///         ],
///         "oauth2_permission_scopes": [
///             {
///                 "admin_consent_description": "Allow the application to access example on behalf of the signed-in user.",
///                 "admin_consent_display_name": "Access example",
///                 "enabled": True,
///                 "id": "96183846-204b-4b43-82e1-5d2222eb4b9b",
///                 "type": "User",
///                 "user_consent_description": "Allow the application to access example on your behalf.",
///                 "user_consent_display_name": "Access example",
///                 "value": "user_impersonation",
///             },
///             {
///                 "admin_consent_description": "Administer the example application",
///                 "admin_consent_display_name": "Administer",
///                 "enabled": True,
///                 "id": "be98fa3e-ab5b-4b11-83d9-04ba2b7946bc",
///                 "type": "Admin",
///                 "value": "administer",
///             },
///         ],
///     },
///     app_roles=[
///         {
///             "allowed_member_types": [
///                 "User",
///                 "Application",
///             ],
///             "description": "Admins can manage roles and perform all task actions",
///             "display_name": "Admin",
///             "enabled": True,
///             "id": "1b19509b-32b1-4e9f-b71d-4992aa991967",
///             "value": "admin",
///         },
///         {
///             "allowed_member_types": ["User"],
///             "description": "ReadOnly roles have limited query access",
///             "display_name": "ReadOnly",
///             "enabled": True,
///             "id": "497406e4-012a-4267-bf18-45a1cb148a01",
///             "value": "User",
///         },
///     ],
///     feature_tags=[{
///         "enterprise": True,
///         "gallery": True,
///     }],
///     optional_claims={
///         "access_tokens": [
///             {
///                 "name": "myclaim",
///             },
///             {
///                 "name": "otherclaim",
///             },
///         ],
///         "id_tokens": [{
///             "name": "userclaim",
///             "source": "user",
///             "essential": True,
///             "additional_properties": ["emit_as_roles"],
///         }],
///         "saml2_tokens": [{
///             "name": "samlexample",
///         }],
///     },
///     required_resource_accesses=[
///         {
///             "resource_app_id": "00000003-0000-0000-c000-000000000000",
///             "resource_accesses": [
///                 {
///                     "id": "df021288-bdef-4463-88db-98f22de89214",
///                     "type": "Role",
///                 },
///                 {
///                     "id": "b4e74841-8e56-480b-be8b-910348b18b4c",
///                     "type": "Scope",
///                 },
///             ],
///         },
///         {
///             "resource_app_id": "c5393580-f805-4401-95e8-94b7a6ef2fc2",
///             "resource_accesses": [{
///                 "id": "594c1fb6-4f81-4475-ae41-0c394909246c",
///                 "type": "Role",
///             }],
///         },
///     ],
///     web={
///         "homepage_url": "https://app.example.net",
///         "logout_url": "https://app.example.net/logout",
///         "redirect_uris": ["https://app.example.net/account"],
///         "implicit_grant": {
///             "access_token_issuance_enabled": True,
///             "id_token_issuance_enabled": True,
///         },
///     })
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
///     var current = AzureAD.GetClientConfig.Invoke();
///
///     var example = new AzureAD.Application("example", new()
///     {
///         DisplayName = "example",
///         IdentifierUris = new[]
///         {
///             "api://example-app",
///         },
///         LogoImage = Std.Filebase64.Invoke(new()
///         {
///             Input = "/path/to/logo.png",
///         }).Apply(invoke => invoke.Result),
///         Owners = new[]
///         {
///             current.Apply(getClientConfigResult => getClientConfigResult.ObjectId),
///         },
///         SignInAudience = "AzureADMultipleOrgs",
///         Api = new AzureAD.Inputs.ApplicationApiArgs
///         {
///             MappedClaimsEnabled = true,
///             RequestedAccessTokenVersion = 2,
///             KnownClientApplications = new[]
///             {
///                 known1.ClientId,
///                 known2.ClientId,
///             },
///             Oauth2PermissionScopes = new[]
///             {
///                 new AzureAD.Inputs.ApplicationApiOauth2PermissionScopeArgs
///                 {
///                     AdminConsentDescription = "Allow the application to access example on behalf of the signed-in user.",
///                     AdminConsentDisplayName = "Access example",
///                     Enabled = true,
///                     Id = "96183846-204b-4b43-82e1-5d2222eb4b9b",
///                     Type = "User",
///                     UserConsentDescription = "Allow the application to access example on your behalf.",
///                     UserConsentDisplayName = "Access example",
///                     Value = "user_impersonation",
///                 },
///                 new AzureAD.Inputs.ApplicationApiOauth2PermissionScopeArgs
///                 {
///                     AdminConsentDescription = "Administer the example application",
///                     AdminConsentDisplayName = "Administer",
///                     Enabled = true,
///                     Id = "be98fa3e-ab5b-4b11-83d9-04ba2b7946bc",
///                     Type = "Admin",
///                     Value = "administer",
///                 },
///             },
///         },
///         AppRoles = new[]
///         {
///             new AzureAD.Inputs.ApplicationAppRoleArgs
///             {
///                 AllowedMemberTypes = new[]
///                 {
///                     "User",
///                     "Application",
///                 },
///                 Description = "Admins can manage roles and perform all task actions",
///                 DisplayName = "Admin",
///                 Enabled = true,
///                 Id = "1b19509b-32b1-4e9f-b71d-4992aa991967",
///                 Value = "admin",
///             },
///             new AzureAD.Inputs.ApplicationAppRoleArgs
///             {
///                 AllowedMemberTypes = new[]
///                 {
///                     "User",
///                 },
///                 Description = "ReadOnly roles have limited query access",
///                 DisplayName = "ReadOnly",
///                 Enabled = true,
///                 Id = "497406e4-012a-4267-bf18-45a1cb148a01",
///                 Value = "User",
///             },
///         },
///         FeatureTags = new[]
///         {
///             new AzureAD.Inputs.ApplicationFeatureTagArgs
///             {
///                 Enterprise = true,
///                 Gallery = true,
///             },
///         },
///         OptionalClaims = new AzureAD.Inputs.ApplicationOptionalClaimsArgs
///         {
///             AccessTokens = new[]
///             {
///                 new AzureAD.Inputs.ApplicationOptionalClaimsAccessTokenArgs
///                 {
///                     Name = "myclaim",
///                 },
///                 new AzureAD.Inputs.ApplicationOptionalClaimsAccessTokenArgs
///                 {
///                     Name = "otherclaim",
///                 },
///             },
///             IdTokens = new[]
///             {
///                 new AzureAD.Inputs.ApplicationOptionalClaimsIdTokenArgs
///                 {
///                     Name = "userclaim",
///                     Source = "user",
///                     Essential = true,
///                     AdditionalProperties = new[]
///                     {
///                         "emit_as_roles",
///                     },
///                 },
///             },
///             Saml2Tokens = new[]
///             {
///                 new AzureAD.Inputs.ApplicationOptionalClaimsSaml2TokenArgs
///                 {
///                     Name = "samlexample",
///                 },
///             },
///         },
///         RequiredResourceAccesses = new[]
///         {
///             new AzureAD.Inputs.ApplicationRequiredResourceAccessArgs
///             {
///                 ResourceAppId = "00000003-0000-0000-c000-000000000000",
///                 ResourceAccesses = new[]
///                 {
///                     new AzureAD.Inputs.ApplicationRequiredResourceAccessResourceAccessArgs
///                     {
///                         Id = "df021288-bdef-4463-88db-98f22de89214",
///                         Type = "Role",
///                     },
///                     new AzureAD.Inputs.ApplicationRequiredResourceAccessResourceAccessArgs
///                     {
///                         Id = "b4e74841-8e56-480b-be8b-910348b18b4c",
///                         Type = "Scope",
///                     },
///                 },
///             },
///             new AzureAD.Inputs.ApplicationRequiredResourceAccessArgs
///             {
///                 ResourceAppId = "c5393580-f805-4401-95e8-94b7a6ef2fc2",
///                 ResourceAccesses = new[]
///                 {
///                     new AzureAD.Inputs.ApplicationRequiredResourceAccessResourceAccessArgs
///                     {
///                         Id = "594c1fb6-4f81-4475-ae41-0c394909246c",
///                         Type = "Role",
///                     },
///                 },
///             },
///         },
///         Web = new AzureAD.Inputs.ApplicationWebArgs
///         {
///             HomepageUrl = "https://app.example.net",
///             LogoutUrl = "https://app.example.net/logout",
///             RedirectUris = new[]
///             {
///                 "https://app.example.net/account",
///             },
///             ImplicitGrant = new AzureAD.Inputs.ApplicationWebImplicitGrantArgs
///             {
///                 AccessTokenIssuanceEnabled = true,
///                 IdTokenIssuanceEnabled = true,
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
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		current, err := azuread.GetClientConfig(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeFilebase64, err := std.Filebase64(ctx, &std.Filebase64Args{
/// 			Input: "/path/to/logo.png",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = azuread.NewApplication(ctx, "example", &azuread.ApplicationArgs{
/// 			DisplayName: pulumi.String("example"),
/// 			IdentifierUris: pulumi.StringArray{
/// 				pulumi.String("api://example-app"),
/// 			},
/// 			LogoImage: pulumi.String(invokeFilebase64.Result),
/// 			Owners: pulumi.StringArray{
/// 				pulumi.String(current.ObjectId),
/// 			},
/// 			SignInAudience: pulumi.String("AzureADMultipleOrgs"),
/// 			Api: &azuread.ApplicationApiArgs{
/// 				MappedClaimsEnabled:         pulumi.Bool(true),
/// 				RequestedAccessTokenVersion: pulumi.Int(2),
/// 				KnownClientApplications: pulumi.StringArray{
/// 					known1.ClientId,
/// 					known2.ClientId,
/// 				},
/// 				Oauth2PermissionScopes: azuread.ApplicationApiOauth2PermissionScopeArray{
/// 					&azuread.ApplicationApiOauth2PermissionScopeArgs{
/// 						AdminConsentDescription: pulumi.String("Allow the application to access example on behalf of the signed-in user."),
/// 						AdminConsentDisplayName: pulumi.String("Access example"),
/// 						Enabled:                 pulumi.Bool(true),
/// 						Id:                      pulumi.String("96183846-204b-4b43-82e1-5d2222eb4b9b"),
/// 						Type:                    pulumi.String("User"),
/// 						UserConsentDescription:  pulumi.String("Allow the application to access example on your behalf."),
/// 						UserConsentDisplayName:  pulumi.String("Access example"),
/// 						Value:                   pulumi.String("user_impersonation"),
/// 					},
/// 					&azuread.ApplicationApiOauth2PermissionScopeArgs{
/// 						AdminConsentDescription: pulumi.String("Administer the example application"),
/// 						AdminConsentDisplayName: pulumi.String("Administer"),
/// 						Enabled:                 pulumi.Bool(true),
/// 						Id:                      pulumi.String("be98fa3e-ab5b-4b11-83d9-04ba2b7946bc"),
/// 						Type:                    pulumi.String("Admin"),
/// 						Value:                   pulumi.String("administer"),
/// 					},
/// 				},
/// 			},
/// 			AppRoles: azuread.ApplicationAppRoleTypeArray{
/// 				&azuread.ApplicationAppRoleTypeArgs{
/// 					AllowedMemberTypes: pulumi.StringArray{
/// 						pulumi.String("User"),
/// 						pulumi.String("Application"),
/// 					},
/// 					Description: pulumi.String("Admins can manage roles and perform all task actions"),
/// 					DisplayName: pulumi.String("Admin"),
/// 					Enabled:     pulumi.Bool(true),
/// 					Id:          pulumi.String("1b19509b-32b1-4e9f-b71d-4992aa991967"),
/// 					Value:       pulumi.String("admin"),
/// 				},
/// 				&azuread.ApplicationAppRoleTypeArgs{
/// 					AllowedMemberTypes: pulumi.StringArray{
/// 						pulumi.String("User"),
/// 					},
/// 					Description: pulumi.String("ReadOnly roles have limited query access"),
/// 					DisplayName: pulumi.String("ReadOnly"),
/// 					Enabled:     pulumi.Bool(true),
/// 					Id:          pulumi.String("497406e4-012a-4267-bf18-45a1cb148a01"),
/// 					Value:       pulumi.String("User"),
/// 				},
/// 			},
/// 			FeatureTags: azuread.ApplicationFeatureTagArray{
/// 				&azuread.ApplicationFeatureTagArgs{
/// 					Enterprise: pulumi.Bool(true),
/// 					Gallery:    pulumi.Bool(true),
/// 				},
/// 			},
/// 			OptionalClaims: &azuread.ApplicationOptionalClaimsTypeArgs{
/// 				AccessTokens: azuread.ApplicationOptionalClaimsAccessTokenArray{
/// 					&azuread.ApplicationOptionalClaimsAccessTokenArgs{
/// 						Name: pulumi.String("myclaim"),
/// 					},
/// 					&azuread.ApplicationOptionalClaimsAccessTokenArgs{
/// 						Name: pulumi.String("otherclaim"),
/// 					},
/// 				},
/// 				IdTokens: azuread.ApplicationOptionalClaimsIdTokenArray{
/// 					&azuread.ApplicationOptionalClaimsIdTokenArgs{
/// 						Name:      pulumi.String("userclaim"),
/// 						Source:    pulumi.String("user"),
/// 						Essential: pulumi.Bool(true),
/// 						AdditionalProperties: pulumi.StringArray{
/// 							pulumi.String("emit_as_roles"),
/// 						},
/// 					},
/// 				},
/// 				Saml2Tokens: azuread.ApplicationOptionalClaimsSaml2TokenArray{
/// 					&azuread.ApplicationOptionalClaimsSaml2TokenArgs{
/// 						Name: pulumi.String("samlexample"),
/// 					},
/// 				},
/// 			},
/// 			RequiredResourceAccesses: azuread.ApplicationRequiredResourceAccessArray{
/// 				&azuread.ApplicationRequiredResourceAccessArgs{
/// 					ResourceAppId: pulumi.String("00000003-0000-0000-c000-000000000000"),
/// 					ResourceAccesses: azuread.ApplicationRequiredResourceAccessResourceAccessArray{
/// 						&azuread.ApplicationRequiredResourceAccessResourceAccessArgs{
/// 							Id:   pulumi.String("df021288-bdef-4463-88db-98f22de89214"),
/// 							Type: pulumi.String("Role"),
/// 						},
/// 						&azuread.ApplicationRequiredResourceAccessResourceAccessArgs{
/// 							Id:   pulumi.String("b4e74841-8e56-480b-be8b-910348b18b4c"),
/// 							Type: pulumi.String("Scope"),
/// 						},
/// 					},
/// 				},
/// 				&azuread.ApplicationRequiredResourceAccessArgs{
/// 					ResourceAppId: pulumi.String("c5393580-f805-4401-95e8-94b7a6ef2fc2"),
/// 					ResourceAccesses: azuread.ApplicationRequiredResourceAccessResourceAccessArray{
/// 						&azuread.ApplicationRequiredResourceAccessResourceAccessArgs{
/// 							Id:   pulumi.String("594c1fb6-4f81-4475-ae41-0c394909246c"),
/// 							Type: pulumi.String("Role"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			Web: &azuread.ApplicationWebArgs{
/// 				HomepageUrl: pulumi.String("https://app.example.net"),
/// 				LogoutUrl:   pulumi.String("https://app.example.net/logout"),
/// 				RedirectUris: pulumi.StringArray{
/// 					pulumi.String("https://app.example.net/account"),
/// 				},
/// 				ImplicitGrant: &azuread.ApplicationWebImplicitGrantArgs{
/// 					AccessTokenIssuanceEnabled: pulumi.Bool(true),
/// 					IdTokenIssuanceEnabled:     pulumi.Bool(true),
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
/// import com.pulumi.azuread.AzureadFunctions;
/// import com.pulumi.azuread.Application;
/// import com.pulumi.azuread.ApplicationArgs;
/// import com.pulumi.azuread.inputs.ApplicationApiArgs;
/// import com.pulumi.azuread.inputs.ApplicationAppRoleArgs;
/// import com.pulumi.azuread.inputs.ApplicationFeatureTagArgs;
/// import com.pulumi.azuread.inputs.ApplicationOptionalClaimsArgs;
/// import com.pulumi.azuread.inputs.ApplicationRequiredResourceAccessArgs;
/// import com.pulumi.azuread.inputs.ApplicationWebArgs;
/// import com.pulumi.azuread.inputs.ApplicationWebImplicitGrantArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.Filebase64Args;
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
///         final var current = AzureadFunctions.getClientConfig(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         var example = new Application("example", ApplicationArgs.builder()
///             .displayName("example")
///             .identifierUris("api://example-app")
///             .logoImage(StdFunctions.filebase64(Filebase64Args.builder()
///                 .input("/path/to/logo.png")
///                 .build()).result())
///             .owners(current.objectId())
///             .signInAudience("AzureADMultipleOrgs")
///             .api(ApplicationApiArgs.builder()
///                 .mappedClaimsEnabled(true)
///                 .requestedAccessTokenVersion(2)
///                 .knownClientApplications(
///                     known1.clientId(),
///                     known2.clientId())
///                 .oauth2PermissionScopes(
///                     ApplicationApiOauth2PermissionScopeArgs.builder()
///                         .adminConsentDescription("Allow the application to access example on behalf of the signed-in user.")
///                         .adminConsentDisplayName("Access example")
///                         .enabled(true)
///                         .id("96183846-204b-4b43-82e1-5d2222eb4b9b")
///                         .type("User")
///                         .userConsentDescription("Allow the application to access example on your behalf.")
///                         .userConsentDisplayName("Access example")
///                         .value("user_impersonation")
///                         .build(),
///                     ApplicationApiOauth2PermissionScopeArgs.builder()
///                         .adminConsentDescription("Administer the example application")
///                         .adminConsentDisplayName("Administer")
///                         .enabled(true)
///                         .id("be98fa3e-ab5b-4b11-83d9-04ba2b7946bc")
///                         .type("Admin")
///                         .value("administer")
///                         .build())
///                 .build())
///             .appRoles(
///                 ApplicationAppRoleArgs.builder()
///                     .allowedMemberTypes(
///                         "User",
///                         "Application")
///                     .description("Admins can manage roles and perform all task actions")
///                     .displayName("Admin")
///                     .enabled(true)
///                     .id("1b19509b-32b1-4e9f-b71d-4992aa991967")
///                     .value("admin")
///                     .build(),
///                 ApplicationAppRoleArgs.builder()
///                     .allowedMemberTypes("User")
///                     .description("ReadOnly roles have limited query access")
///                     .displayName("ReadOnly")
///                     .enabled(true)
///                     .id("497406e4-012a-4267-bf18-45a1cb148a01")
///                     .value("User")
///                     .build())
///             .featureTags(ApplicationFeatureTagArgs.builder()
///                 .enterprise(true)
///                 .gallery(true)
///                 .build())
///             .optionalClaims(ApplicationOptionalClaimsArgs.builder()
///                 .accessTokens(
///                     ApplicationOptionalClaimsAccessTokenArgs.builder()
///                         .name("myclaim")
///                         .build(),
///                     ApplicationOptionalClaimsAccessTokenArgs.builder()
///                         .name("otherclaim")
///                         .build())
///                 .idTokens(ApplicationOptionalClaimsIdTokenArgs.builder()
///                     .name("userclaim")
///                     .source("user")
///                     .essential(true)
///                     .additionalProperties("emit_as_roles")
///                     .build())
///                 .saml2Tokens(ApplicationOptionalClaimsSaml2TokenArgs.builder()
///                     .name("samlexample")
///                     .build())
///                 .build())
///             .requiredResourceAccesses(
///                 ApplicationRequiredResourceAccessArgs.builder()
///                     .resourceAppId("00000003-0000-0000-c000-000000000000")
///                     .resourceAccesses(
///                         ApplicationRequiredResourceAccessResourceAccessArgs.builder()
///                             .id("df021288-bdef-4463-88db-98f22de89214")
///                             .type("Role")
///                             .build(),
///                         ApplicationRequiredResourceAccessResourceAccessArgs.builder()
///                             .id("b4e74841-8e56-480b-be8b-910348b18b4c")
///                             .type("Scope")
///                             .build())
///                     .build(),
///                 ApplicationRequiredResourceAccessArgs.builder()
///                     .resourceAppId("c5393580-f805-4401-95e8-94b7a6ef2fc2")
///                     .resourceAccesses(ApplicationRequiredResourceAccessResourceAccessArgs.builder()
///                         .id("594c1fb6-4f81-4475-ae41-0c394909246c")
///                         .type("Role")
///                         .build())
///                     .build())
///             .web(ApplicationWebArgs.builder()
///                 .homepageUrl("https://app.example.net")
///                 .logoutUrl("https://app.example.net/logout")
///                 .redirectUris("https://app.example.net/account")
///                 .implicitGrant(ApplicationWebImplicitGrantArgs.builder()
///                     .accessTokenIssuanceEnabled(true)
///                     .idTokenIssuanceEnabled(true)
///                     .build())
///                 .build())
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
///       identifierUris:
///         - api://example-app
///       logoImage:
///         fn::invoke:
///           function: std:filebase64
///           arguments:
///             input: /path/to/logo.png
///           return: result
///       owners:
///         - ${current.objectId}
///       signInAudience: AzureADMultipleOrgs
///       api:
///         mappedClaimsEnabled: true
///         requestedAccessTokenVersion: 2
///         knownClientApplications:
///           - ${known1.clientId}
///           - ${known2.clientId}
///         oauth2PermissionScopes:
///           - adminConsentDescription: Allow the application to access example on behalf of the signed-in user.
///             adminConsentDisplayName: Access example
///             enabled: true
///             id: 96183846-204b-4b43-82e1-5d2222eb4b9b
///             type: User
///             userConsentDescription: Allow the application to access example on your behalf.
///             userConsentDisplayName: Access example
///             value: user_impersonation
///           - adminConsentDescription: Administer the example application
///             adminConsentDisplayName: Administer
///             enabled: true
///             id: be98fa3e-ab5b-4b11-83d9-04ba2b7946bc
///             type: Admin
///             value: administer
///       appRoles:
///         - allowedMemberTypes:
///             - User
///             - Application
///           description: Admins can manage roles and perform all task actions
///           displayName: Admin
///           enabled: true
///           id: 1b19509b-32b1-4e9f-b71d-4992aa991967
///           value: admin
///         - allowedMemberTypes:
///             - User
///           description: ReadOnly roles have limited query access
///           displayName: ReadOnly
///           enabled: true
///           id: 497406e4-012a-4267-bf18-45a1cb148a01
///           value: User
///       featureTags:
///         - enterprise: true
///           gallery: true
///       optionalClaims:
///         accessTokens:
///           - name: myclaim
///           - name: otherclaim
///         idTokens:
///           - name: userclaim
///             source: user
///             essential: true
///             additionalProperties:
///               - emit_as_roles
///         saml2Tokens:
///           - name: samlexample
///       requiredResourceAccesses:
///         - resourceAppId: 00000003-0000-0000-c000-000000000000
///           resourceAccesses:
///             - id: df021288-bdef-4463-88db-98f22de89214
///               type: Role
///             - id: b4e74841-8e56-480b-be8b-910348b18b4c
///               type: Scope
///         - resourceAppId: c5393580-f805-4401-95e8-94b7a6ef2fc2
///           resourceAccesses:
///             - id: 594c1fb6-4f81-4475-ae41-0c394909246c
///               type: Role
///       web:
///         homepageUrl: https://app.example.net
///         logoutUrl: https://app.example.net/logout
///         redirectUris:
///           - https://app.example.net/account
///         implicitGrant:
///           accessTokenIssuanceEnabled: true
///           idTokenIssuanceEnabled: true
/// variables:
///   current:
///     fn::invoke:
///       function: azuread:getClientConfig
///       arguments: {}
/// ```
///
///
/// *Create application and generate a password*
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azuread from "@pulumi/azuread";
/// import * as std from "@pulumi/std";
/// import * as time from "@pulumiverse/time";
///
/// const current = azuread.getClientConfig({});
/// const example = new time.Rotating("example", {rotationDays: 180});
/// const exampleApplication = new azuread.Application("example", {
///     displayName: "example",
///     owners: [current.then(current => current.objectId)],
///     password: {
///         displayName: "MySecret-1",
///         startDate: example.id,
///         endDate: std.timeaddOutput({
///             duration: example.id,
///             timestamp: "4320h",
///         }).apply(invoke => invoke.result),
///     },
/// });
/// export const examplePassword = exampleApplication.password.apply(password => password?.[0]?.value);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azuread as azuread
/// import pulumi_std as std
/// import pulumiverse_time as time
///
/// current = azuread.get_client_config()
/// example = time.Rotating("example", rotation_days=180)
/// example_application = azuread.Application("example",
///     display_name="example",
///     owners=[current.object_id],
///     password={
///         "display_name": "MySecret-1",
///         "start_date": example.id,
///         "end_date": std.timeadd_output(duration=example.id,
///             timestamp="4320h").apply(lambda invoke: invoke.result),
///     })
/// pulumi.export("examplePassword", example_application.password[0]["value"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureAD = Pulumi.AzureAD;
/// using Std = Pulumi.Std;
/// using Time = Pulumiverse.Time;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var current = AzureAD.GetClientConfig.Invoke();
///
///     var example = new Time.Rotating("example", new()
///     {
///         RotationDays = 180,
///     });
///
///     var exampleApplication = new AzureAD.Application("example", new()
///     {
///         DisplayName = "example",
///         Owners = new[]
///         {
///             current.Apply(getClientConfigResult => getClientConfigResult.ObjectId),
///         },
///         Password = new AzureAD.Inputs.ApplicationPasswordArgs
///         {
///             DisplayName = "MySecret-1",
///             StartDate = example.Id,
///             EndDate = Std.Timeadd.Invoke(new()
///             {
///                 Duration = example.Id,
///                 Timestamp = "4320h",
///             }).Apply(invoke => invoke.Result),
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["examplePassword"] = exampleApplication.Password.Apply(password => password[0]?.Value),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azuread/sdk/v6/go/azuread"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumiverse/pulumi-time/sdk/go/time"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// current, err := azuread.GetClientConfig(ctx, map[string]interface{}{
/// }, nil);
/// if err != nil {
/// return err
/// }
/// example, err := time.NewRotating(ctx, "example", &time.RotatingArgs{
/// RotationDays: pulumi.Int(180),
/// })
/// if err != nil {
/// return err
/// }
/// exampleApplication, err := azuread.NewApplication(ctx, "example", &azuread.ApplicationArgs{
/// DisplayName: pulumi.String("example"),
/// Owners: pulumi.StringArray{
/// pulumi.String(current.ObjectId),
/// },
/// Password: &azuread.ApplicationPasswordTypeArgs{
/// DisplayName: pulumi.String("MySecret-1"),
/// StartDate: example.ID(),
/// EndDate: std.TimeaddOutput(ctx, std.TimeaddOutputArgs{
/// Duration: example.ID(),
/// Timestamp: pulumi.String("4320h"),
/// }, nil).ApplyT(func(invoke std.TimeaddResult) (*string, error) {
/// return invoke.Result, nil
/// }).(pulumi.StringPtrOutput),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// ctx.Export("examplePassword", exampleApplication.Password.ApplyT(func(password azuread.ApplicationPasswordType) (*interface{}, error) {
/// return &password[0].Value, nil
/// }).(pulumi.Interface{}PtrOutput))
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azuread.AzureadFunctions;
/// import com.pulumiverse.time.Rotating;
/// import com.pulumiverse.time.RotatingArgs;
/// import com.pulumi.azuread.Application;
/// import com.pulumi.azuread.ApplicationArgs;
/// import com.pulumi.azuread.inputs.ApplicationPasswordArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.TimeaddArgs;
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
///         final var current = AzureadFunctions.getClientConfig(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         var example = new Rotating("example", RotatingArgs.builder()
///             .rotationDays(180)
///             .build());
///
///         var exampleApplication = new Application("exampleApplication", ApplicationArgs.builder()
///             .displayName("example")
///             .owners(current.objectId())
///             .password(ApplicationPasswordArgs.builder()
///                 .displayName("MySecret-1")
///                 .startDate(example.id())
///                 .endDate(StdFunctions.timeadd(TimeaddArgs.builder()
///                     .duration(example.id())
///                     .timestamp("4320h")
///                     .build()).applyValue(_invoke -> _invoke.result()))
///                 .build())
///             .build());
///
///         ctx.export("examplePassword", exampleApplication.password().applyValue(_password -> _password[0].value()));
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: time:Rotating
///     properties:
///       rotationDays: 180
///   exampleApplication:
///     type: azuread:Application
///     name: example
///     properties:
///       displayName: example
///       owners:
///         - ${current.objectId}
///       password:
///         displayName: MySecret-1
///         startDate: ${example.id}
///         endDate:
///           fn::invoke:
///             function: std:timeadd
///             arguments:
///               duration: ${example.id}
///               timestamp: 4320h
///             return: result
/// variables:
///   current:
///     fn::invoke:
///       function: azuread:getClientConfig
///       arguments: {}
/// outputs:
///   examplePassword: ${exampleApplication.password[0].value}
/// ```
///
///
/// *Create application from a gallery template*
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azuread from "@pulumi/azuread";
///
/// const example = azuread.getApplicationTemplate({
///     displayName: "Marketo",
/// });
/// const exampleApplication = new azuread.Application("example", {
///     displayName: "example",
///     templateId: example.then(example => example.templateId),
/// });
/// const exampleServicePrincipal = new azuread.ServicePrincipal("example", {
///     clientId: exampleApplication.clientId,
///     useExisting: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azuread as azuread
///
/// example = azuread.get_application_template(display_name="Marketo")
/// example_application = azuread.Application("example",
///     display_name="example",
///     template_id=example.template_id)
/// example_service_principal = azuread.ServicePrincipal("example",
///     client_id=example_application.client_id,
///     use_existing=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureAD = Pulumi.AzureAD;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = AzureAD.GetApplicationTemplate.Invoke(new()
///     {
///         DisplayName = "Marketo",
///     });
///
///     var exampleApplication = new AzureAD.Application("example", new()
///     {
///         DisplayName = "example",
///         TemplateId = example.Apply(getApplicationTemplateResult => getApplicationTemplateResult.TemplateId),
///     });
///
///     var exampleServicePrincipal = new AzureAD.ServicePrincipal("example", new()
///     {
///         ClientId = exampleApplication.ClientId,
///         UseExisting = true,
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
/// 		example, err := azuread.GetApplicationTemplate(ctx, &azuread.GetApplicationTemplateArgs{
/// 			DisplayName: pulumi.StringRef("Marketo"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleApplication, err := azuread.NewApplication(ctx, "example", &azuread.ApplicationArgs{
/// 			DisplayName: pulumi.String("example"),
/// 			TemplateId:  pulumi.String(example.TemplateId),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = azuread.NewServicePrincipal(ctx, "example", &azuread.ServicePrincipalArgs{
/// 			ClientId:    exampleApplication.ClientId,
/// 			UseExisting: pulumi.Bool(true),
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
/// import com.pulumi.azuread.inputs.GetApplicationTemplateArgs;
/// import com.pulumi.azuread.Application;
/// import com.pulumi.azuread.ApplicationArgs;
/// import com.pulumi.azuread.ServicePrincipal;
/// import com.pulumi.azuread.ServicePrincipalArgs;
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
///         final var example = AzureadFunctions.getApplicationTemplate(GetApplicationTemplateArgs.builder()
///             .displayName("Marketo")
///             .build());
///
///         var exampleApplication = new Application("exampleApplication", ApplicationArgs.builder()
///             .displayName("example")
///             .templateId(example.templateId())
///             .build());
///
///         var exampleServicePrincipal = new ServicePrincipal("exampleServicePrincipal", ServicePrincipalArgs.builder()
///             .clientId(exampleApplication.clientId())
///             .useExisting(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleApplication:
///     type: azuread:Application
///     name: example
///     properties:
///       displayName: example
///       templateId: ${example.templateId}
///   exampleServicePrincipal:
///     type: azuread:ServicePrincipal
///     name: example
///     properties:
///       clientId: ${exampleApplication.clientId}
///       useExisting: true
/// variables:
///   example:
///     fn::invoke:
///       function: azuread:getApplicationTemplate
///       arguments:
///         displayName: Marketo
/// ```
///
///
/// ## Import
///
/// Applications can be imported using the object ID of the application, in the following format.
///
/// ```sh
/// $ pulumi import azuread:index/application:Application example /applications/00000000-0000-0000-0000-000000000000
/// ```
class Application extends pulumi.CustomResource {
  /// An `api` block as documented below, which configures API related settings for this application.
  late final pulumi.Output<ApplicationApi?> api;
  /// A mapping of app role values to app role IDs, intended to be useful when referencing app roles in other resources in your configuration.
  late final pulumi.Output<Map<String, String>> appRoleIds;
  /// A collection of `app_role` blocks as documented below. For more information see [official documentation on Application Roles](https://docs.microsoft.com/en-us/azure/architecture/multitenant-identity/app-roles).
  late final pulumi.Output<List<Map<String, dynamic>>?> appRoles;
  /// The Client ID for the application.
  late final pulumi.Output<String> clientId;
  /// A description of the application, as shown to end users.
  late final pulumi.Output<String?> description;
  /// Specifies whether this application supports device authentication without a user. Defaults to `false`.
  late final pulumi.Output<bool?> deviceOnlyAuthEnabled;
  /// Whether Microsoft has disabled the registered application. If the application is disabled, this will be a string indicating the status/reason, e.g. `DisabledDueToViolationOfServicesAgreement`
  late final pulumi.Output<String> disabledByMicrosoft;
  /// The display name for the application.
  late final pulumi.Output<String> displayName;
  /// Specifies whether the application is a public client. Appropriate for apps using token grant flows that don't use a redirect URI. Defaults to `false`.
  late final pulumi.Output<bool?> fallbackPublicClientEnabled;
  /// A `feature_tags` block as described below. Cannot be used together with the `tags` property.
  ///
  /// &gt; **Features and Tags** Features are configured for an application using tags, and are provided as a shortcut to set the corresponding magic tag value for each feature. You cannot configure `feature_tags` and `tags` for an application at the same time, so if you need to assign additional custom tags it's recommended to use the `tags` property instead. Tag values also propagate to any linked service principals.
  late final pulumi.Output<List<Map<String, dynamic>>> featureTags;
  /// A set of strings containing membership claims issued in a user or OAuth 2.0 access token that the app expects. Possible values are `None`, `SecurityGroup`, `DirectoryRole`, `ApplicationGroup` or `All`.
  late final pulumi.Output<List<String>?> groupMembershipClaims;
  /// A set of user-defined URI(s) that uniquely identify an application within its Azure AD tenant, or within a verified custom domain if the application is multi-tenant.
  late final pulumi.Output<List<String>?> identifierUris;
  /// A logo image to upload for the application, as a raw base64-encoded string. The image should be in gif, jpeg or png format. Note that once an image has been uploaded, it is not possible to remove it without replacing it with another image.
  late final pulumi.Output<String?> logoImage;
  /// CDN URL to the application's logo, as uploaded with the `logo_image` property.
  late final pulumi.Output<String> logoUrl;
  /// URL of the application's marketing page.
  late final pulumi.Output<String?> marketingUrl;
  /// User-specified notes relevant for the management of the application.
  late final pulumi.Output<String?> notes;
  /// A mapping of OAuth2.0 permission scope values to scope IDs, intended to be useful when referencing permission scopes in other resources in your configuration.
  late final pulumi.Output<Map<String, String>> oauth2PermissionScopeIds;
  /// Specifies whether, as part of OAuth 2.0 token requests, Azure AD allows POST requests, as opposed to GET requests. Defaults to `false`, which specifies that only GET requests are allowed.
  late final pulumi.Output<bool?> oauth2PostResponseRequired;
  /// The application's object ID.
  late final pulumi.Output<String> objectId;
  /// An `optional_claims` block as documented below.
  late final pulumi.Output<ApplicationOptionalClaims?> optionalClaims;
  /// A set of object IDs of principals that will be granted ownership of the application. Supported object types are users or service principals. By default, no owners are assigned.
  ///
  /// &gt; **Ownership of Applications** It's recommended to always specify one or more application owners, including the principal being used to execute Terraform, such as in the example above.
  late final pulumi.Output<List<String>?> owners;
  /// A single `password` block as documented below. The password is generated during creation. By default, no password is generated.
  ///
  /// &gt; **Creating a Password** The `password` block supports a single password for the application, and is provided so that a password can be generated when a new application is created. This helps to make new applications available for authentication more quickly. To add additional passwords to an application, see the azuread.ApplicationPassword resource.
  late final pulumi.Output<ApplicationPassword?> password;
  /// If `true`, will return an error if an existing application is found with the same name. Defaults to `false`.
  late final pulumi.Output<bool?> preventDuplicateNames;
  /// URL of the application's privacy statement.
  late final pulumi.Output<String?> privacyStatementUrl;
  /// A `public_client` block as documented below, which configures non-web app or non-web API application settings, for example mobile or other public clients such as an installed application running on a desktop device.
  late final pulumi.Output<ApplicationPublicClient?> publicClient;
  /// The verified publisher domain for the application.
  late final pulumi.Output<String> publisherDomain;
  /// A collection of `required_resource_access` blocks as documented below.
  late final pulumi.Output<List<Map<String, dynamic>>?> requiredResourceAccesses;
  /// References application context information from a Service or Asset Management database.
  late final pulumi.Output<String?> serviceManagementReference;
  /// The Microsoft account types that are supported for the current application. Must be one of `AzureADMyOrg`, `AzureADMultipleOrgs`, `AzureADandPersonalMicrosoftAccount` or `PersonalMicrosoftAccount`. Defaults to `AzureADMyOrg`.
  ///
  /// &gt; **Changing `sign_in_audience` for existing applications** When updating an existing application to use a `sign_in_audience` value of `AzureADandPersonalMicrosoftAccount` or `PersonalMicrosoftAccount`, your configuration may no longer be valid. Refer to [official documentation](https://docs.microsoft.com/en-gb/azure/active-directory/develop/supported-accounts-validation) to understand the differences in supported configurations. Where possible, the provider will attempt to validate your configuration and try to avoid applying unsupported settings to your application.
  late final pulumi.Output<String?> signInAudience;
  /// A `single_page_application` block as documented below, which configures single-page application (SPA) related settings for this application.
  late final pulumi.Output<ApplicationSinglePageApplication?> singlePageApplication;
  /// URL of the application's support page.
  late final pulumi.Output<String?> supportUrl;
  /// A set of tags to apply to the application for configuring specific behaviours of the application and linked service principals. Note that these are not provided for use by practitioners. Cannot be used together with the `feature_tags` block.
  ///
  /// &gt; **Tags and Features** Azure Active Directory uses special tag values to configure the behavior of applications. These can be specified using either the `tags` property or with the `feature_tags` block. If you need to set any custom tag values not supported by the `feature_tags` block, it's recommended to use the `tags` property. Tag values also propagate to any linked service principals.
  late final pulumi.Output<List<String>> tags;
  /// Unique ID for a templated application in the Azure AD App Gallery, from which to create the application. Changing this forces a new resource to be created.
  ///
  /// &gt; **Tip for Gallery Applications** This resource can  be used to instantiate a gallery application, however it will also attempt to manage the properties of the resulting application. If this is not desired, consider using the azuread.ApplicationRegistration resource instead.
  late final pulumi.Output<String> templateId;
  /// URL of the application's terms of service statement.
  late final pulumi.Output<String?> termsOfServiceUrl;
  /// A `web` block as documented below, which configures web related settings for this application.
  ///
  /// &gt; **Application Name Uniqueness** Application names are not unique within Azure Active Directory. Use the `prevent_duplicate_names` argument to check for existing applications if you want to avoid name collisions.
  late final pulumi.Output<ApplicationWeb?> web;

  /// Creates a new [Application].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Application]. {@macro pulumi_index_application_application_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Application(
    String name, {
    ApplicationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azuread:index/application:Application',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    api = registerOutput<ApplicationApi?>('api', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApplicationApi.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    appRoleIds = registerOutput<Map<String, String>>('appRoleIds');
    appRoles = registerOutput<List<Map<String, dynamic>>?>('appRoles');
    clientId = registerOutput<String>('clientId');
    description = registerOutput<String?>('description');
    deviceOnlyAuthEnabled = registerOutput<bool?>('deviceOnlyAuthEnabled');
    disabledByMicrosoft = registerOutput<String>('disabledByMicrosoft');
    displayName = registerOutput<String>('displayName');
    fallbackPublicClientEnabled = registerOutput<bool?>('fallbackPublicClientEnabled');
    featureTags = registerOutput<List<Map<String, dynamic>>>('featureTags');
    groupMembershipClaims = registerOutput<List<String>?>('groupMembershipClaims');
    identifierUris = registerOutput<List<String>?>('identifierUris');
    logoImage = registerOutput<String?>('logoImage');
    logoUrl = registerOutput<String>('logoUrl');
    marketingUrl = registerOutput<String?>('marketingUrl');
    notes = registerOutput<String?>('notes');
    oauth2PermissionScopeIds = registerOutput<Map<String, String>>('oauth2PermissionScopeIds');
    oauth2PostResponseRequired = registerOutput<bool?>('oauth2PostResponseRequired');
    objectId = registerOutput<String>('objectId');
    optionalClaims = registerOutput<ApplicationOptionalClaims?>('optionalClaims', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApplicationOptionalClaims.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    owners = registerOutput<List<String>?>('owners');
    password = registerOutput<ApplicationPassword?>('password', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApplicationPassword.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    preventDuplicateNames = registerOutput<bool?>('preventDuplicateNames');
    privacyStatementUrl = registerOutput<String?>('privacyStatementUrl');
    publicClient = registerOutput<ApplicationPublicClient?>('publicClient', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApplicationPublicClient.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    publisherDomain = registerOutput<String>('publisherDomain');
    requiredResourceAccesses = registerOutput<List<Map<String, dynamic>>?>('requiredResourceAccesses');
    serviceManagementReference = registerOutput<String?>('serviceManagementReference');
    signInAudience = registerOutput<String?>('signInAudience');
    singlePageApplication = registerOutput<ApplicationSinglePageApplication?>('singlePageApplication', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApplicationSinglePageApplication.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    supportUrl = registerOutput<String?>('supportUrl');
    tags = registerOutput<List<String>>('tags');
    templateId = registerOutput<String>('templateId');
    termsOfServiceUrl = registerOutput<String?>('termsOfServiceUrl');
    web = registerOutput<ApplicationWeb?>('web', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApplicationWeb.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [Application] resource's state with the given [name] and [id].
  static Application get(
    String name,
    pulumi.Input<String> id, {
    ApplicationState? state,
  }) {
    return Application._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Application._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azuread:index/application:Application',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    api = registerOutput<ApplicationApi?>('api', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApplicationApi.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    appRoleIds = registerOutput<Map<String, String>>('appRoleIds');
    appRoles = registerOutput<List<Map<String, dynamic>>?>('appRoles');
    clientId = registerOutput<String>('clientId');
    description = registerOutput<String?>('description');
    deviceOnlyAuthEnabled = registerOutput<bool?>('deviceOnlyAuthEnabled');
    disabledByMicrosoft = registerOutput<String>('disabledByMicrosoft');
    displayName = registerOutput<String>('displayName');
    fallbackPublicClientEnabled = registerOutput<bool?>('fallbackPublicClientEnabled');
    featureTags = registerOutput<List<Map<String, dynamic>>>('featureTags');
    groupMembershipClaims = registerOutput<List<String>?>('groupMembershipClaims');
    identifierUris = registerOutput<List<String>?>('identifierUris');
    logoImage = registerOutput<String?>('logoImage');
    logoUrl = registerOutput<String>('logoUrl');
    marketingUrl = registerOutput<String?>('marketingUrl');
    notes = registerOutput<String?>('notes');
    oauth2PermissionScopeIds = registerOutput<Map<String, String>>('oauth2PermissionScopeIds');
    oauth2PostResponseRequired = registerOutput<bool?>('oauth2PostResponseRequired');
    objectId = registerOutput<String>('objectId');
    optionalClaims = registerOutput<ApplicationOptionalClaims?>('optionalClaims', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApplicationOptionalClaims.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    owners = registerOutput<List<String>?>('owners');
    password = registerOutput<ApplicationPassword?>('password', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApplicationPassword.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    preventDuplicateNames = registerOutput<bool?>('preventDuplicateNames');
    privacyStatementUrl = registerOutput<String?>('privacyStatementUrl');
    publicClient = registerOutput<ApplicationPublicClient?>('publicClient', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApplicationPublicClient.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    publisherDomain = registerOutput<String>('publisherDomain');
    requiredResourceAccesses = registerOutput<List<Map<String, dynamic>>?>('requiredResourceAccesses');
    serviceManagementReference = registerOutput<String?>('serviceManagementReference');
    signInAudience = registerOutput<String?>('signInAudience');
    singlePageApplication = registerOutput<ApplicationSinglePageApplication?>('singlePageApplication', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApplicationSinglePageApplication.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    supportUrl = registerOutput<String?>('supportUrl');
    tags = registerOutput<List<String>>('tags');
    templateId = registerOutput<String>('templateId');
    termsOfServiceUrl = registerOutput<String?>('termsOfServiceUrl');
    web = registerOutput<ApplicationWeb?>('web', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApplicationWeb.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
