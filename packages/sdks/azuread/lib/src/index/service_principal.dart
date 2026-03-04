import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_principal_args.dart';
import 'service_principal_saml_single_sign_on.dart';
import 'service_principal_state.dart';

/// Manages a service principal associated with an application within Azure Active Directory.
///
/// ## API Permissions
///
/// The following API permissions are required in order to use this resource.
///
/// When authenticated with a service principal, this resource requires one of the following application roles: `Application.ReadWrite.OwnedBy` or `Application.ReadWrite.All`
///
/// &gt; When using the `Application.ReadWrite.OwnedBy` application role, the principal being used to run Terraform must be an owner of _both_ the linked application registration, _and_ the service principal being managed.
///
/// When authenticated with a user principal, this resource may require one of the following directory roles: `Application Administrator` or `Global Administrator`
///
/// ## Example Usage
///
/// *Create a service principal for an application*
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azuread from "@pulumi/azuread";
///
/// const current = azuread.getClientConfig({});
/// const example = new azuread.Application("example", {
///     displayName: "example",
///     owners: [current.then(current => current.objectId)],
/// });
/// const exampleServicePrincipal = new azuread.ServicePrincipal("example", {
///     clientId: example.clientId,
///     appRoleAssignmentRequired: false,
///     owners: [current.then(current => current.objectId)],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azuread as azuread
///
/// current = azuread.get_client_config()
/// example = azuread.Application("example",
///     display_name="example",
///     owners=[current.object_id])
/// example_service_principal = azuread.ServicePrincipal("example",
///     client_id=example.client_id,
///     app_role_assignment_required=False,
///     owners=[current.object_id])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureAD = Pulumi.AzureAD;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var current = AzureAD.GetClientConfig.Invoke();
///
///     var example = new AzureAD.Application("example", new()
///     {
///         DisplayName = "example",
///         Owners = new[]
///         {
///             current.Apply(getClientConfigResult => getClientConfigResult.ObjectId),
///         },
///     });
///
///     var exampleServicePrincipal = new AzureAD.ServicePrincipal("example", new()
///     {
///         ClientId = example.ClientId,
///         AppRoleAssignmentRequired = false,
///         Owners = new[]
///         {
///             current.Apply(getClientConfigResult => getClientConfigResult.ObjectId),
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
/// 		current, err := azuread.GetClientConfig(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := azuread.NewApplication(ctx, "example", &azuread.ApplicationArgs{
/// 			DisplayName: pulumi.String("example"),
/// 			Owners: pulumi.StringArray{
/// 				pulumi.String(current.ObjectId),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = azuread.NewServicePrincipal(ctx, "example", &azuread.ServicePrincipalArgs{
/// 			ClientId:                  example.ClientId,
/// 			AppRoleAssignmentRequired: pulumi.Bool(false),
/// 			Owners: pulumi.StringArray{
/// 				pulumi.String(current.ObjectId),
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
///         final var current = AzureadFunctions.getClientConfig(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         var example = new Application("example", ApplicationArgs.builder()
///             .displayName("example")
///             .owners(current.objectId())
///             .build());
///
///         var exampleServicePrincipal = new ServicePrincipal("exampleServicePrincipal", ServicePrincipalArgs.builder()
///             .clientId(example.clientId())
///             .appRoleAssignmentRequired(false)
///             .owners(current.objectId())
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
///       owners:
///         - ${current.objectId}
///   exampleServicePrincipal:
///     type: azuread:ServicePrincipal
///     name: example
///     properties:
///       clientId: ${example.clientId}
///       appRoleAssignmentRequired: false
///       owners:
///         - ${current.objectId}
/// variables:
///   current:
///     fn::invoke:
///       function: azuread:getClientConfig
///       arguments: {}
/// ```
///
///
/// *Create a service principal for an enterprise application*
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azuread from "@pulumi/azuread";
///
/// const current = azuread.getClientConfig({});
/// const example = new azuread.Application("example", {
///     displayName: "example",
///     owners: [current.then(current => current.objectId)],
/// });
/// const exampleServicePrincipal = new azuread.ServicePrincipal("example", {
///     clientId: example.clientId,
///     appRoleAssignmentRequired: false,
///     owners: [current.then(current => current.objectId)],
///     featureTags: [{
///         enterprise: true,
///         gallery: true,
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azuread as azuread
///
/// current = azuread.get_client_config()
/// example = azuread.Application("example",
///     display_name="example",
///     owners=[current.object_id])
/// example_service_principal = azuread.ServicePrincipal("example",
///     client_id=example.client_id,
///     app_role_assignment_required=False,
///     owners=[current.object_id],
///     feature_tags=[{
///         "enterprise": True,
///         "gallery": True,
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureAD = Pulumi.AzureAD;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var current = AzureAD.GetClientConfig.Invoke();
///
///     var example = new AzureAD.Application("example", new()
///     {
///         DisplayName = "example",
///         Owners = new[]
///         {
///             current.Apply(getClientConfigResult => getClientConfigResult.ObjectId),
///         },
///     });
///
///     var exampleServicePrincipal = new AzureAD.ServicePrincipal("example", new()
///     {
///         ClientId = example.ClientId,
///         AppRoleAssignmentRequired = false,
///         Owners = new[]
///         {
///             current.Apply(getClientConfigResult => getClientConfigResult.ObjectId),
///         },
///         FeatureTags = new[]
///         {
///             new AzureAD.Inputs.ServicePrincipalFeatureTagArgs
///             {
///                 Enterprise = true,
///                 Gallery = true,
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
/// 		current, err := azuread.GetClientConfig(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := azuread.NewApplication(ctx, "example", &azuread.ApplicationArgs{
/// 			DisplayName: pulumi.String("example"),
/// 			Owners: pulumi.StringArray{
/// 				pulumi.String(current.ObjectId),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = azuread.NewServicePrincipal(ctx, "example", &azuread.ServicePrincipalArgs{
/// 			ClientId:                  example.ClientId,
/// 			AppRoleAssignmentRequired: pulumi.Bool(false),
/// 			Owners: pulumi.StringArray{
/// 				pulumi.String(current.ObjectId),
/// 			},
/// 			FeatureTags: azuread.ServicePrincipalFeatureTagArray{
/// 				&azuread.ServicePrincipalFeatureTagArgs{
/// 					Enterprise: pulumi.Bool(true),
/// 					Gallery:    pulumi.Bool(true),
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
/// import com.pulumi.azuread.ServicePrincipal;
/// import com.pulumi.azuread.ServicePrincipalArgs;
/// import com.pulumi.azuread.inputs.ServicePrincipalFeatureTagArgs;
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
///             .owners(current.objectId())
///             .build());
///
///         var exampleServicePrincipal = new ServicePrincipal("exampleServicePrincipal", ServicePrincipalArgs.builder()
///             .clientId(example.clientId())
///             .appRoleAssignmentRequired(false)
///             .owners(current.objectId())
///             .featureTags(ServicePrincipalFeatureTagArgs.builder()
///                 .enterprise(true)
///                 .gallery(true)
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
///       owners:
///         - ${current.objectId}
///   exampleServicePrincipal:
///     type: azuread:ServicePrincipal
///     name: example
///     properties:
///       clientId: ${example.clientId}
///       appRoleAssignmentRequired: false
///       owners:
///         - ${current.objectId}
///       featureTags:
///         - enterprise: true
///           gallery: true
/// variables:
///   current:
///     fn::invoke:
///       function: azuread:getClientConfig
///       arguments: {}
/// ```
///
///
/// *Manage a service principal for a first-party Microsoft application*
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
/// ```
/// ```python
/// import pulumi
/// import pulumi_azuread as azuread
///
/// well_known = azuread.get_application_published_app_ids()
/// msgraph = azuread.ServicePrincipal("msgraph",
///     client_id=well_known.result["microsoftGraph"],
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
///     var wellKnown = AzureAD.GetApplicationPublishedAppIds.Invoke();
///
///     var msgraph = new AzureAD.ServicePrincipal("msgraph", new()
///     {
///         ClientId = wellKnown.Apply(getApplicationPublishedAppIdsResult => getApplicationPublishedAppIdsResult.Result?.MicrosoftGraph),
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
/// 		wellKnown, err := azuread.GetApplicationPublishedAppIds(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = azuread.NewServicePrincipal(ctx, "msgraph", &azuread.ServicePrincipalArgs{
/// 			ClientId:    pulumi.String(wellKnown.Result.MicrosoftGraph),
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
///         final var wellKnown = AzureadFunctions.getApplicationPublishedAppIds(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         var msgraph = new ServicePrincipal("msgraph", ServicePrincipalArgs.builder()
///             .clientId(wellKnown.result().microsoftGraph())
///             .useExisting(true)
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
/// variables:
///   wellKnown:
///     fn::invoke:
///       function: azuread:getApplicationPublishedAppIds
///       arguments: {}
/// ```
///
///
/// *Create a service principal for an application created from a gallery template*
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
/// Service principals can be imported using their object ID, e.g.
///
/// ```sh
/// $ pulumi import azuread:index/servicePrincipal:ServicePrincipal example /servicePrincipals/00000000-0000-0000-0000-000000000000
/// ```
class ServicePrincipal extends pulumi.CustomResource {
  /// Whether or not the service principal account is enabled. Defaults to `true`.
  late final pulumi.Output<bool?> accountEnabled;

  /// A set of alternative names, used to retrieve service principals by subscription, identify resource group and full resource ids for managed identities.
  late final pulumi.Output<List<String>?> alternativeNames;

  /// Whether this service principal requires an app role assignment to a user or group before Azure AD will issue a user or access token to the application. Defaults to `false`.
  late final pulumi.Output<bool?> appRoleAssignmentRequired;

  /// A mapping of app role values to app role IDs, as published by the associated application, intended to be useful when referencing app roles in other resources in your configuration.
  late final pulumi.Output<Map<String, String>> appRoleIds;

  /// A list of app roles published by the associated application, as documented below. For more information [official documentation](https://docs.microsoft.com/en-us/azure/architecture/multitenant-identity/app-roles).
  late final pulumi.Output<List<Map<String, dynamic>>> appRoles;

  /// The tenant ID where the associated application is registered.
  late final pulumi.Output<String> applicationTenantId;

  /// The client ID of the application for which to create a service principal.
  late final pulumi.Output<String> clientId;

  /// A description of the service principal provided for internal end-users.
  late final pulumi.Output<String?> description;

  /// Display name for the app role that appears during app role assignment and in consent experiences.
  late final pulumi.Output<String> displayName;

  /// A `feature_tags` block as described below. Cannot be used together with the `tags` property.
  ///
  /// &gt; **Features and Tags** Features are configured for a service principal using tags, and are provided as a shortcut to set the corresponding magic tag value for each feature. You cannot configure `feature_tags` and `tags` for a service principal at the same time, so if you need to assign additional custom tags it's recommended to use the `tags` property instead. Any tags configured for the linked application will propagate to this service principal.
  late final pulumi.Output<List<Map<String, dynamic>>> featureTags;

  /// Block of features to configure for this service principal using tags
  late final pulumi.Output<List<Map<String, dynamic>>> features;

  /// Home page or landing page of the associated application.
  late final pulumi.Output<String> homepageUrl;

  /// The URL where the service provider redirects the user to Azure AD to authenticate. Azure AD uses the URL to launch the application from Microsoft 365 or the Azure AD My Apps. When blank, Azure AD performs IdP-initiated sign-on for applications configured with SAML-based single sign-on.
  late final pulumi.Output<String?> loginUrl;

  /// The URL that will be used by Microsoft's authorization service to log out an user using OpenId Connect front-channel, back-channel or SAML logout protocols, taken from the associated application.
  late final pulumi.Output<String> logoutUrl;

  /// A free text field to capture information about the service principal, typically used for operational purposes.
  late final pulumi.Output<String?> notes;

  /// A set of email addresses where Azure AD sends a notification when the active certificate is near the expiration date. This is only for the certificates used to sign the SAML token issued for Azure AD Gallery applications.
  late final pulumi.Output<List<String>?> notificationEmailAddresses;

  /// A mapping of OAuth2.0 permission scope values to scope IDs, as exposed by the associated application, intended to be useful when referencing permission scopes in other resources in your configuration.
  late final pulumi.Output<Map<String, String>> oauth2PermissionScopeIds;

  /// A list of OAuth 2.0 delegated permission scopes exposed by the associated application, as documented below.
  late final pulumi.Output<List<Map<String, dynamic>>> oauth2PermissionScopes;

  /// The object ID of the service principal.
  late final pulumi.Output<String> objectId;

  /// A set of object IDs of principals that will be granted ownership of the service principal. Supported object types are users or service principals. By default, no owners are assigned.
  ///
  /// &gt; **Ownership of Service Principals** It's recommended to always specify one or more service principal owners, including the principal being used to execute Terraform, such as in the example above.
  late final pulumi.Output<List<String>?> owners;

  /// The single sign-on mode configured for this application. Azure AD uses the preferred single sign-on mode to launch the application from Microsoft 365 or the Azure AD My Apps. Supported values are `oidc`, `password`, `saml` or `notSupported`. Omit this property or specify a blank string to unset.
  late final pulumi.Output<String?> preferredSingleSignOnMode;

  /// A list of URLs where user tokens are sent for sign-in with the associated application, or the redirect URIs where OAuth 2.0 authorization codes and access tokens are sent for the associated application.
  late final pulumi.Output<List<String>> redirectUris;

  /// The URL where the service exposes SAML metadata for federation.
  late final pulumi.Output<String> samlMetadataUrl;

  /// A `saml_single_sign_on` block as documented below.
  late final pulumi.Output<ServicePrincipalSamlSingleSignOn?> samlSingleSignOn;

  /// A list of identifier URI(s), copied over from the associated application.
  late final pulumi.Output<List<String>> servicePrincipalNames;

  /// The Microsoft account types that are supported for the associated application. Possible values include `AzureADMyOrg`, `AzureADMultipleOrgs`, `AzureADandPersonalMicrosoftAccount` or `PersonalMicrosoftAccount`.
  late final pulumi.Output<String> signInAudience;

  /// A set of tags to apply to the service principal for configuring specific behaviours of the service principal. Note that these are not provided for use by practitioners. Cannot be used together with the `feature_tags` block.
  ///
  /// &gt; **Tags and Features** Azure Active Directory uses special tag values to configure the behavior of service principals. These can be specified using either the `tags` property or with the `feature_tags` block. If you need to set any custom tag values not supported by the `feature_tags` block, it's recommended to use the `tags` property. Tag values set for the linked application will also propagate to this service principal.
  late final pulumi.Output<List<String>> tags;

  /// Whether this delegated permission should be considered safe for non-admin users to consent to on behalf of themselves, or whether an administrator should be required for consent to the permissions. Possible values are `User` or `Admin`.
  late final pulumi.Output<String> type;

  /// When true, any existing service principal linked to the same application will be automatically imported. When false, an import error will be raised for any pre-existing service principal.
  ///
  /// &gt; **Caveats of `use_existing`** Enabling this behaviour is useful for managing existing service principals that may already be installed in your tenant for Microsoft-published APIs, as it allows you to make changes where permitted, and then also reference them in your Terraform configuration. However, the behaviour of delete operations is also affected - when `use_existing` is `true`, Terraform will still attempt to delete the service principal on destroy, although it will not raise an error if the deletion fails (as it often the case for first-party Microsoft applications).
  late final pulumi.Output<bool?> useExisting;

  /// Creates a new [ServicePrincipal].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ServicePrincipal]. {@macro pulumi_index_service_principal_service_principal_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ServicePrincipal(
    String name, {
    ServicePrincipalArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azuread:index/servicePrincipal:ServicePrincipal',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    accountEnabled = registerOutput<bool?>('accountEnabled');
    alternativeNames = registerOutput<List<String>?>('alternativeNames');
    appRoleAssignmentRequired = registerOutput<bool?>(
      'appRoleAssignmentRequired',
    );
    appRoleIds = registerOutput<Map<String, String>>('appRoleIds');
    appRoles = registerOutput<List<Map<String, dynamic>>>('appRoles');
    applicationTenantId = registerOutput<String>('applicationTenantId');
    clientId = registerOutput<String>('clientId');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String>('displayName');
    featureTags = registerOutput<List<Map<String, dynamic>>>('featureTags');
    features = registerOutput<List<Map<String, dynamic>>>('features');
    homepageUrl = registerOutput<String>('homepageUrl');
    loginUrl = registerOutput<String?>('loginUrl');
    logoutUrl = registerOutput<String>('logoutUrl');
    notes = registerOutput<String?>('notes');
    notificationEmailAddresses = registerOutput<List<String>?>(
      'notificationEmailAddresses',
    );
    oauth2PermissionScopeIds = registerOutput<Map<String, String>>(
      'oauth2PermissionScopeIds',
    );
    oauth2PermissionScopes = registerOutput<List<Map<String, dynamic>>>(
      'oauth2PermissionScopes',
    );
    objectId = registerOutput<String>('objectId');
    owners = registerOutput<List<String>?>('owners');
    preferredSingleSignOnMode = registerOutput<String?>(
      'preferredSingleSignOnMode',
    );
    redirectUris = registerOutput<List<String>>('redirectUris');
    samlMetadataUrl = registerOutput<String>('samlMetadataUrl');
    samlSingleSignOn = registerOutput<ServicePrincipalSamlSingleSignOn?>(
      'samlSingleSignOn',
    );
    servicePrincipalNames = registerOutput<List<String>>(
      'servicePrincipalNames',
    );
    signInAudience = registerOutput<String>('signInAudience');
    tags = registerOutput<List<String>>('tags');
    type = registerOutput<String>('type');
    useExisting = registerOutput<bool?>('useExisting');
  }

  /// Gets an existing [ServicePrincipal] resource's state with the given [name] and [id].
  static ServicePrincipal get(
    String name,
    pulumi.Input<String> id, {
    ServicePrincipalState? state,
  }) {
    return ServicePrincipal._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ServicePrincipal._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azuread:index/servicePrincipal:ServicePrincipal',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    accountEnabled = registerOutput<bool?>('accountEnabled');
    alternativeNames = registerOutput<List<String>?>('alternativeNames');
    appRoleAssignmentRequired = registerOutput<bool?>(
      'appRoleAssignmentRequired',
    );
    appRoleIds = registerOutput<Map<String, String>>('appRoleIds');
    appRoles = registerOutput<List<Map<String, dynamic>>>('appRoles');
    applicationTenantId = registerOutput<String>('applicationTenantId');
    clientId = registerOutput<String>('clientId');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String>('displayName');
    featureTags = registerOutput<List<Map<String, dynamic>>>('featureTags');
    features = registerOutput<List<Map<String, dynamic>>>('features');
    homepageUrl = registerOutput<String>('homepageUrl');
    loginUrl = registerOutput<String?>('loginUrl');
    logoutUrl = registerOutput<String>('logoutUrl');
    notes = registerOutput<String?>('notes');
    notificationEmailAddresses = registerOutput<List<String>?>(
      'notificationEmailAddresses',
    );
    oauth2PermissionScopeIds = registerOutput<Map<String, String>>(
      'oauth2PermissionScopeIds',
    );
    oauth2PermissionScopes = registerOutput<List<Map<String, dynamic>>>(
      'oauth2PermissionScopes',
    );
    objectId = registerOutput<String>('objectId');
    owners = registerOutput<List<String>?>('owners');
    preferredSingleSignOnMode = registerOutput<String?>(
      'preferredSingleSignOnMode',
    );
    redirectUris = registerOutput<List<String>>('redirectUris');
    samlMetadataUrl = registerOutput<String>('samlMetadataUrl');
    samlSingleSignOn = registerOutput<ServicePrincipalSamlSingleSignOn?>(
      'samlSingleSignOn',
    );
    servicePrincipalNames = registerOutput<List<String>>(
      'servicePrincipalNames',
    );
    signInAudience = registerOutput<String>('signInAudience');
    tags = registerOutput<List<String>>('tags');
    type = registerOutput<String>('type');
    useExisting = registerOutput<bool?>('useExisting');
  }
}
