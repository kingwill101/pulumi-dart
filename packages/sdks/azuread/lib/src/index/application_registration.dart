import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_registration_args.dart';
import 'application_registration_state.dart';

/// Manages an application registration within Azure Active Directory.
///
/// For a more comprehensive alternative, please see the azuread.Application resource. Please note that this resource should not be used together with the `azuread.Application` resource when managing the same application.
///
/// ## API Permissions
///
/// The following API permissions are required in order to use this resource.
///
/// When authenticated with a service principal, this resource requires one of the following application roles: `Application.ReadWrite.OwnedBy` or `Application.ReadWrite.All`
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
/// const example = new azuread.ApplicationRegistration("example", {
///     displayName: "Example Application",
///     description: "My example application",
///     signInAudience: "AzureADMyOrg",
///     homepageUrl: "https://app.example.com/",
///     logoutUrl: "https://app.example.com/logout",
///     marketingUrl: "https://example.com/",
///     privacyStatementUrl: "https://example.com/privacy",
///     supportUrl: "https://support.example.com/",
///     termsOfServiceUrl: "https://example.com/terms",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azuread as azuread
///
/// example = azuread.ApplicationRegistration("example",
///     display_name="Example Application",
///     description="My example application",
///     sign_in_audience="AzureADMyOrg",
///     homepage_url="https://app.example.com/",
///     logout_url="https://app.example.com/logout",
///     marketing_url="https://example.com/",
///     privacy_statement_url="https://example.com/privacy",
///     support_url="https://support.example.com/",
///     terms_of_service_url="https://example.com/terms")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureAD = Pulumi.AzureAD;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new AzureAD.ApplicationRegistration("example", new()
///     {
///         DisplayName = "Example Application",
///         Description = "My example application",
///         SignInAudience = "AzureADMyOrg",
///         HomepageUrl = "https://app.example.com/",
///         LogoutUrl = "https://app.example.com/logout",
///         MarketingUrl = "https://example.com/",
///         PrivacyStatementUrl = "https://example.com/privacy",
///         SupportUrl = "https://support.example.com/",
///         TermsOfServiceUrl = "https://example.com/terms",
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
/// 		_, err := azuread.NewApplicationRegistration(ctx, "example", &azuread.ApplicationRegistrationArgs{
/// 			DisplayName:         pulumi.String("Example Application"),
/// 			Description:         pulumi.String("My example application"),
/// 			SignInAudience:      pulumi.String("AzureADMyOrg"),
/// 			HomepageUrl:         pulumi.String("https://app.example.com/"),
/// 			LogoutUrl:           pulumi.String("https://app.example.com/logout"),
/// 			MarketingUrl:        pulumi.String("https://example.com/"),
/// 			PrivacyStatementUrl: pulumi.String("https://example.com/privacy"),
/// 			SupportUrl:          pulumi.String("https://support.example.com/"),
/// 			TermsOfServiceUrl:   pulumi.String("https://example.com/terms"),
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
///             .displayName("Example Application")
///             .description("My example application")
///             .signInAudience("AzureADMyOrg")
///             .homepageUrl("https://app.example.com/")
///             .logoutUrl("https://app.example.com/logout")
///             .marketingUrl("https://example.com/")
///             .privacyStatementUrl("https://example.com/privacy")
///             .supportUrl("https://support.example.com/")
///             .termsOfServiceUrl("https://example.com/terms")
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
///       displayName: Example Application
///       description: My example application
///       signInAudience: AzureADMyOrg
///       homepageUrl: https://app.example.com/
///       logoutUrl: https://app.example.com/logout
///       marketingUrl: https://example.com/
///       privacyStatementUrl: https://example.com/privacy
///       supportUrl: https://support.example.com/
///       termsOfServiceUrl: https://example.com/terms
/// ```
///
///
/// ## Import
///
/// Application Registrations can be imported using the object ID of the application, in the following format.
///
/// ```sh
/// $ pulumi import azuread:index/applicationRegistration:ApplicationRegistration example /applications/00000000-0000-0000-0000-000000000000
/// ```
class ApplicationRegistration extends pulumi.CustomResource {
  /// The Client ID for the application, which is globally unique.
  late final pulumi.Output<String> clientId;

  /// A description of the application, as shown to end users.
  late final pulumi.Output<String?> description;

  /// Whether Microsoft has disabled the registered application. If the application is disabled, this will be a string indicating the status/reason, e.g. `DisabledDueToViolationOfServicesAgreement`
  late final pulumi.Output<String> disabledByMicrosoft;

  /// The display name for the application.
  late final pulumi.Output<String> displayName;

  /// Configures the `groups` claim issued in a user or OAuth access token that the app expects. Possible values are `None`, `SecurityGroup`, `DirectoryRole`, `ApplicationGroup` or `All`.
  late final pulumi.Output<List<String>?> groupMembershipClaims;

  /// Home page or landing page of the application.
  late final pulumi.Output<String?> homepageUrl;

  /// Whether this web application can request an access token using OAuth implicit flow.
  late final pulumi.Output<bool?> implicitAccessTokenIssuanceEnabled;

  /// Whether this web application can request an ID token using OAuth implicit flow.
  late final pulumi.Output<bool?> implicitIdTokenIssuanceEnabled;

  /// The URL that will be used by Microsoft's authorization service to sign out a user using front-channel, back-channel or SAML logout protocols.
  late final pulumi.Output<String?> logoutUrl;

  /// URL of the marketing page for the application.
  late final pulumi.Output<String?> marketingUrl;

  /// User-specified notes relevant for the management of the application.
  late final pulumi.Output<String?> notes;

  /// The object ID of the application within the tenant.
  late final pulumi.Output<String> objectId;

  /// URL of the privacy statement for the application.
  late final pulumi.Output<String?> privacyStatementUrl;

  /// The verified publisher domain for the application.
  late final pulumi.Output<String> publisherDomain;

  /// The access token version expected by this resource. Must be one of `1` or `2`, and must be `2` when `sign_in_audience` is either `AzureADandPersonalMicrosoftAccount` or `PersonalMicrosoftAccount` Defaults to `2`.
  late final pulumi.Output<int?> requestedAccessTokenVersion;

  /// References application context information from a Service or Asset Management database.
  late final pulumi.Output<String?> serviceManagementReference;

  /// The Microsoft account types that are supported for the current application. Must be one of `AzureADMyOrg`, `AzureADMultipleOrgs`, `AzureADandPersonalMicrosoftAccount` or `PersonalMicrosoftAccount`. Defaults to `AzureADMyOrg`.
  late final pulumi.Output<String?> signInAudience;

  /// URL of the support page for the application.
  late final pulumi.Output<String?> supportUrl;

  /// URL of the terms of service statement for the application.
  late final pulumi.Output<String?> termsOfServiceUrl;

  /// Creates a new [ApplicationRegistration].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ApplicationRegistration]. {@macro pulumi_index_application_registration_application_registration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ApplicationRegistration(
    String name, {
    ApplicationRegistrationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azuread:index/applicationRegistration:ApplicationRegistration',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    clientId = registerOutput<String>('clientId');
    description = registerOutput<String?>('description');
    disabledByMicrosoft = registerOutput<String>('disabledByMicrosoft');
    displayName = registerOutput<String>('displayName');
    groupMembershipClaims = registerOutput<List<String>?>(
      'groupMembershipClaims',
    );
    homepageUrl = registerOutput<String?>('homepageUrl');
    implicitAccessTokenIssuanceEnabled = registerOutput<bool?>(
      'implicitAccessTokenIssuanceEnabled',
    );
    implicitIdTokenIssuanceEnabled = registerOutput<bool?>(
      'implicitIdTokenIssuanceEnabled',
    );
    logoutUrl = registerOutput<String?>('logoutUrl');
    marketingUrl = registerOutput<String?>('marketingUrl');
    notes = registerOutput<String?>('notes');
    objectId = registerOutput<String>('objectId');
    privacyStatementUrl = registerOutput<String?>('privacyStatementUrl');
    publisherDomain = registerOutput<String>('publisherDomain');
    requestedAccessTokenVersion = registerOutput<int?>(
      'requestedAccessTokenVersion',
    );
    serviceManagementReference = registerOutput<String?>(
      'serviceManagementReference',
    );
    signInAudience = registerOutput<String?>('signInAudience');
    supportUrl = registerOutput<String?>('supportUrl');
    termsOfServiceUrl = registerOutput<String?>('termsOfServiceUrl');
  }

  /// Gets an existing [ApplicationRegistration] resource's state with the given [name] and [id].
  static ApplicationRegistration get(
    String name,
    pulumi.Input<String> id, {
    ApplicationRegistrationState? state,
  }) {
    return ApplicationRegistration._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ApplicationRegistration._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azuread:index/applicationRegistration:ApplicationRegistration',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    clientId = registerOutput<String>('clientId');
    description = registerOutput<String?>('description');
    disabledByMicrosoft = registerOutput<String>('disabledByMicrosoft');
    displayName = registerOutput<String>('displayName');
    groupMembershipClaims = registerOutput<List<String>?>(
      'groupMembershipClaims',
    );
    homepageUrl = registerOutput<String?>('homepageUrl');
    implicitAccessTokenIssuanceEnabled = registerOutput<bool?>(
      'implicitAccessTokenIssuanceEnabled',
    );
    implicitIdTokenIssuanceEnabled = registerOutput<bool?>(
      'implicitIdTokenIssuanceEnabled',
    );
    logoutUrl = registerOutput<String?>('logoutUrl');
    marketingUrl = registerOutput<String?>('marketingUrl');
    notes = registerOutput<String?>('notes');
    objectId = registerOutput<String>('objectId');
    privacyStatementUrl = registerOutput<String?>('privacyStatementUrl');
    publisherDomain = registerOutput<String>('publisherDomain');
    requestedAccessTokenVersion = registerOutput<int?>(
      'requestedAccessTokenVersion',
    );
    serviceManagementReference = registerOutput<String?>(
      'serviceManagementReference',
    );
    signInAudience = registerOutput<String?>('signInAudience');
    supportUrl = registerOutput<String?>('supportUrl');
    termsOfServiceUrl = registerOutput<String?>('termsOfServiceUrl');
  }
}
