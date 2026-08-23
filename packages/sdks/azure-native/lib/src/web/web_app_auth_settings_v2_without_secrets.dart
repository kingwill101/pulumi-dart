import 'package:pulumi/pulumi.dart' as pulumi;
import 'auth_platform_response.dart';
import 'global_validation_response.dart';
import 'http_settings_response.dart';
import 'identity_providers_response.dart';
import 'login_response.dart';
import 'system_data_response.dart';
import 'web_app_auth_settings_v2_without_secrets_args.dart';

/// Configuration settings for the Azure App Service Authentication / Authorization V2 feature.
///
/// Uses Azure REST API version 2025-05-01.
///
/// Other available API versions: 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-04-01, 2024-11-01, 2025-03-01, 2026-03-01-preview, 2026-03-15, 2026-07-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Update Auth Settings V2
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var webAppAuthSettingsV2WithoutSecrets = new AzureNative.Web.WebAppAuthSettingsV2WithoutSecrets("webAppAuthSettingsV2WithoutSecrets", new()
///     {
///         GlobalValidation = new AzureNative.Web.Inputs.GlobalValidationArgs
///         {
///             ExcludedPaths = new[]
///             {
///                 "/nosecrets/Path",
///             },
///             RequireAuthentication = true,
///             UnauthenticatedClientAction = AzureNative.Web.UnauthenticatedClientActionV2.Return403,
///         },
///         HttpSettings = new AzureNative.Web.Inputs.HttpSettingsArgs
///         {
///             ForwardProxy = new AzureNative.Web.Inputs.ForwardProxyArgs
///             {
///                 Convention = AzureNative.Web.ForwardProxyConvention.Standard,
///                 CustomHostHeaderName = "authHeader",
///                 CustomProtoHeaderName = "customProtoHeader",
///             },
///             RequireHttps = true,
///             Routes = new AzureNative.Web.Inputs.HttpSettingsRoutesArgs
///             {
///                 ApiPrefix = "/authv2/",
///             },
///         },
///         IdentityProviders = new AzureNative.Web.Inputs.IdentityProvidersV1Args
///         {
///             Google = new AzureNative.Web.Inputs.GoogleArgs
///             {
///                 Enabled = true,
///                 Login = new AzureNative.Web.Inputs.LoginScopesArgs
///                 {
///                     Scopes = new[]
///                     {
///                         "admin",
///                     },
///                 },
///                 Registration = new AzureNative.Web.Inputs.ClientRegistrationArgs
///                 {
///                     ClientId = "42d795a9-8abb-4d06-8534-39528af40f8e.apps.googleusercontent.com",
///                     ClientSecretSettingName = "ClientSecret",
///                 },
///                 Validation = new AzureNative.Web.Inputs.AllowedAudiencesValidationArgs
///                 {
///                     AllowedAudiences = new[]
///                     {
///                         "https://example.com",
///                     },
///                 },
///             },
///         },
///         Login = new AzureNative.Web.Inputs.LoginArgs
///         {
///             AllowedExternalRedirectUrls = new[]
///             {
///                 "https://someurl.com",
///             },
///             CookieExpiration = new AzureNative.Web.Inputs.CookieExpirationArgs
///             {
///                 Convention = AzureNative.Web.CookieExpirationConvention.IdentityProviderDerived,
///                 TimeToExpiration = "2022:09-01T00:00Z",
///             },
///             Nonce = new AzureNative.Web.Inputs.NonceArgs
///             {
///                 ValidateNonce = true,
///             },
///             PreserveUrlFragmentsForLogins = true,
///             Routes = new AzureNative.Web.Inputs.LoginRoutesArgs
///             {
///                 LogoutEndpoint = "https://app.com/logout",
///             },
///             TokenStore = new AzureNative.Web.Inputs.TokenStoreArgs
///             {
///                 Enabled = true,
///                 FileSystem = new AzureNative.Web.Inputs.FileSystemTokenStoreArgs
///                 {
///                     Directory = "/wwwroot/sites/example",
///                 },
///                 TokenRefreshExtensionHours = 96,
///             },
///         },
///         Name = "sitef6141",
///         Platform = new AzureNative.Web.Inputs.AuthPlatformArgs
///         {
///             ConfigFilePath = "/auth/config.json",
///             Enabled = true,
///             RuntimeVersion = "~1",
///         },
///         ResourceGroupName = "testrg123",
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	web "github.com/pulumi/pulumi-azure-native-sdk/web/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := web.NewWebAppAuthSettingsV2WithoutSecrets(ctx, "webAppAuthSettingsV2WithoutSecrets", &web.WebAppAuthSettingsV2WithoutSecretsArgs{
/// 			GlobalValidation: &web.GlobalValidationArgs{
/// 				ExcludedPaths: pulumi.StringArray{
/// 					pulumi.String("/nosecrets/Path"),
/// 				},
/// 				RequireAuthentication:       pulumi.Bool(true),
/// 				UnauthenticatedClientAction: web.UnauthenticatedClientActionV2Return403,
/// 			},
/// 			HttpSettings: &web.HttpSettingsArgs{
/// 				ForwardProxy: &web.ForwardProxyArgs{
/// 					Convention:            web.ForwardProxyConventionStandard,
/// 					CustomHostHeaderName:  pulumi.String("authHeader"),
/// 					CustomProtoHeaderName: pulumi.String("customProtoHeader"),
/// 				},
/// 				RequireHttps: pulumi.Bool(true),
/// 				Routes: &web.HttpSettingsRoutesArgs{
/// 					ApiPrefix: pulumi.String("/authv2/"),
/// 				},
/// 			},
/// 			IdentityProviders: &web.IdentityProvidersV1Args{
/// 				Google: &web.GoogleArgs{
/// 					Enabled: pulumi.Bool(true),
/// 					Login: &web.LoginScopesArgs{
/// 						Scopes: pulumi.StringArray{
/// 							pulumi.String("admin"),
/// 						},
/// 					},
/// 					Registration: &web.ClientRegistrationArgs{
/// 						ClientId:                pulumi.String("42d795a9-8abb-4d06-8534-39528af40f8e.apps.googleusercontent.com"),
/// 						ClientSecretSettingName: pulumi.String("ClientSecret"),
/// 					},
/// 					Validation: &web.AllowedAudiencesValidationArgs{
/// 						AllowedAudiences: pulumi.StringArray{
/// 							pulumi.String("https://example.com"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			Login: &web.LoginArgs{
/// 				AllowedExternalRedirectUrls: pulumi.StringArray{
/// 					pulumi.String("https://someurl.com"),
/// 				},
/// 				CookieExpiration: &web.CookieExpirationArgs{
/// 					Convention:       web.CookieExpirationConventionIdentityProviderDerived,
/// 					TimeToExpiration: pulumi.String("2022:09-01T00:00Z"),
/// 				},
/// 				Nonce: &web.NonceArgs{
/// 					ValidateNonce: pulumi.Bool(true),
/// 				},
/// 				PreserveUrlFragmentsForLogins: pulumi.Bool(true),
/// 				Routes: &web.LoginRoutesArgs{
/// 					LogoutEndpoint: pulumi.String("https://app.com/logout"),
/// 				},
/// 				TokenStore: &web.TokenStoreArgs{
/// 					Enabled: pulumi.Bool(true),
/// 					FileSystem: &web.FileSystemTokenStoreArgs{
/// 						Directory: pulumi.String("/wwwroot/sites/example"),
/// 					},
/// 					TokenRefreshExtensionHours: pulumi.Float64(96),
/// 				},
/// 			},
/// 			Name: pulumi.String("sitef6141"),
/// 			Platform: &web.AuthPlatformArgs{
/// 				ConfigFilePath: pulumi.String("/auth/config.json"),
/// 				Enabled:        pulumi.Bool(true),
/// 				RuntimeVersion: pulumi.String("~1"),
/// 			},
/// 			ResourceGroupName: pulumi.String("testrg123"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_web_webappauthsettingsv2withoutsecrets" "webAppAuthSettingsV2WithoutSecrets" {
///   global_validation = {
///     excluded_paths                = ["/nosecrets/Path"]
///     require_authentication        = true
///     unauthenticated_client_action = "Return403"
///   }
///   http_settings = {
///     forward_proxy = {
///       convention               = "Standard"
///       custom_host_header_name  = "authHeader"
///       custom_proto_header_name = "customProtoHeader"
///     }
///     require_https = true
///     routes = {
///       api_prefix = "/authv2/"
///     }
///   }
///   identity_providers = {
///     google = {
///       enabled = true
///       login = {
///         scopes = ["admin"]
///       }
///       registration = {
///         client_id                  = "42d795a9-8abb-4d06-8534-39528af40f8e.apps.googleusercontent.com"
///         client_secret_setting_name = "ClientSecret"
///       }
///       validation = {
///         allowed_audiences = ["https://example.com"]
///       }
///     }
///   }
///   login = {
///     allowed_external_redirect_urls = ["https://someurl.com"]
///     cookie_expiration = {
///       convention         = "IdentityProviderDerived"
///       time_to_expiration = "2022:09-01T00:00Z"
///     }
///     nonce = {
///       validate_nonce = true
///     }
///     preserve_url_fragments_for_logins = true
///     routes = {
///       logout_endpoint = "https://app.com/logout"
///     }
///     token_store = {
///       enabled = true
///       file_system = {
///         directory = "/wwwroot/sites/example"
///       }
///       token_refresh_extension_hours = 96
///     }
///   }
///   name = "sitef6141"
///   platform = {
///     config_file_path = "/auth/config.json"
///     enabled          = true
///     runtime_version  = "~1"
///   }
///   resource_group_name = "testrg123"
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.web.WebAppAuthSettingsV2WithoutSecrets;
/// import com.pulumi.azurenative.web.WebAppAuthSettingsV2WithoutSecretsArgs;
/// import com.pulumi.azurenative.web.inputs.GlobalValidationArgs;
/// import com.pulumi.azurenative.web.inputs.HttpSettingsArgs;
/// import com.pulumi.azurenative.web.inputs.ForwardProxyArgs;
/// import com.pulumi.azurenative.web.inputs.HttpSettingsRoutesArgs;
/// import com.pulumi.azurenative.web.inputs.IdentityProvidersV1Args;
/// import com.pulumi.azurenative.web.inputs.GoogleArgs;
/// import com.pulumi.azurenative.web.inputs.LoginScopesArgs;
/// import com.pulumi.azurenative.web.inputs.ClientRegistrationArgs;
/// import com.pulumi.azurenative.web.inputs.AllowedAudiencesValidationArgs;
/// import com.pulumi.azurenative.web.inputs.LoginArgs;
/// import com.pulumi.azurenative.web.inputs.CookieExpirationArgs;
/// import com.pulumi.azurenative.web.inputs.NonceArgs;
/// import com.pulumi.azurenative.web.inputs.LoginRoutesArgs;
/// import com.pulumi.azurenative.web.inputs.TokenStoreArgs;
/// import com.pulumi.azurenative.web.inputs.FileSystemTokenStoreArgs;
/// import com.pulumi.azurenative.web.inputs.AuthPlatformArgs;
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
///         var webAppAuthSettingsV2WithoutSecrets = new WebAppAuthSettingsV2WithoutSecrets("webAppAuthSettingsV2WithoutSecrets", WebAppAuthSettingsV2WithoutSecretsArgs.builder()
///             .globalValidation(GlobalValidationArgs.builder()
///                 .excludedPaths("/nosecrets/Path")
///                 .requireAuthentication(true)
///                 .unauthenticatedClientAction("Return403")
///                 .build())
///             .httpSettings(HttpSettingsArgs.builder()
///                 .forwardProxy(ForwardProxyArgs.builder()
///                     .convention("Standard")
///                     .customHostHeaderName("authHeader")
///                     .customProtoHeaderName("customProtoHeader")
///                     .build())
///                 .requireHttps(true)
///                 .routes(HttpSettingsRoutesArgs.builder()
///                     .apiPrefix("/authv2/")
///                     .build())
///                 .build())
///             .identityProviders(IdentityProvidersV1Args.builder()
///                 .google(GoogleArgs.builder()
///                     .enabled(true)
///                     .login(LoginScopesArgs.builder()
///                         .scopes("admin")
///                         .build())
///                     .registration(ClientRegistrationArgs.builder()
///                         .clientId("42d795a9-8abb-4d06-8534-39528af40f8e.apps.googleusercontent.com")
///                         .clientSecretSettingName("ClientSecret")
///                         .build())
///                     .validation(AllowedAudiencesValidationArgs.builder()
///                         .allowedAudiences("https://example.com")
///                         .build())
///                     .build())
///                 .build())
///             .login(LoginArgs.builder()
///                 .allowedExternalRedirectUrls("https://someurl.com")
///                 .cookieExpiration(CookieExpirationArgs.builder()
///                     .convention("IdentityProviderDerived")
///                     .timeToExpiration("2022:09-01T00:00Z")
///                     .build())
///                 .nonce(NonceArgs.builder()
///                     .validateNonce(true)
///                     .build())
///                 .preserveUrlFragmentsForLogins(true)
///                 .routes(LoginRoutesArgs.builder()
///                     .logoutEndpoint("https://app.com/logout")
///                     .build())
///                 .tokenStore(TokenStoreArgs.builder()
///                     .enabled(true)
///                     .fileSystem(FileSystemTokenStoreArgs.builder()
///                         .directory("/wwwroot/sites/example")
///                         .build())
///                     .tokenRefreshExtensionHours(96.0)
///                     .build())
///                 .build())
///             .name("sitef6141")
///             .platform(AuthPlatformArgs.builder()
///                 .configFilePath("/auth/config.json")
///                 .enabled(true)
///                 .runtimeVersion("~1")
///                 .build())
///             .resourceGroupName("testrg123")
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const webAppAuthSettingsV2WithoutSecrets = new azure_native.web.WebAppAuthSettingsV2WithoutSecrets("webAppAuthSettingsV2WithoutSecrets", {
///     globalValidation: {
///         excludedPaths: ["/nosecrets/Path"],
///         requireAuthentication: true,
///         unauthenticatedClientAction: azure_native.web.UnauthenticatedClientActionV2.Return403,
///     },
///     httpSettings: {
///         forwardProxy: {
///             convention: azure_native.web.ForwardProxyConvention.Standard,
///             customHostHeaderName: "authHeader",
///             customProtoHeaderName: "customProtoHeader",
///         },
///         requireHttps: true,
///         routes: {
///             apiPrefix: "/authv2/",
///         },
///     },
///     identityProviders: {
///         google: {
///             enabled: true,
///             login: {
///                 scopes: ["admin"],
///             },
///             registration: {
///                 clientId: "42d795a9-8abb-4d06-8534-39528af40f8e.apps.googleusercontent.com",
///                 clientSecretSettingName: "ClientSecret",
///             },
///             validation: {
///                 allowedAudiences: ["https://example.com"],
///             },
///         },
///     },
///     login: {
///         allowedExternalRedirectUrls: ["https://someurl.com"],
///         cookieExpiration: {
///             convention: azure_native.web.CookieExpirationConvention.IdentityProviderDerived,
///             timeToExpiration: "2022:09-01T00:00Z",
///         },
///         nonce: {
///             validateNonce: true,
///         },
///         preserveUrlFragmentsForLogins: true,
///         routes: {
///             logoutEndpoint: "https://app.com/logout",
///         },
///         tokenStore: {
///             enabled: true,
///             fileSystem: {
///                 directory: "/wwwroot/sites/example",
///             },
///             tokenRefreshExtensionHours: 96,
///         },
///     },
///     name: "sitef6141",
///     platform: {
///         configFilePath: "/auth/config.json",
///         enabled: true,
///         runtimeVersion: "~1",
///     },
///     resourceGroupName: "testrg123",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// web_app_auth_settings_v2_without_secrets = azure_native.web.WebAppAuthSettingsV2WithoutSecrets("webAppAuthSettingsV2WithoutSecrets",
///     global_validation={
///         "excluded_paths": ["/nosecrets/Path"],
///         "require_authentication": True,
///         "unauthenticated_client_action": azure_native.web.UnauthenticatedClientActionV2.RETURN403,
///     },
///     http_settings={
///         "forward_proxy": {
///             "convention": azure_native.web.ForwardProxyConvention.STANDARD,
///             "custom_host_header_name": "authHeader",
///             "custom_proto_header_name": "customProtoHeader",
///         },
///         "require_https": True,
///         "routes": {
///             "api_prefix": "/authv2/",
///         },
///     },
///     identity_providers={
///         "google": {
///             "enabled": True,
///             "login": {
///                 "scopes": ["admin"],
///             },
///             "registration": {
///                 "client_id": "42d795a9-8abb-4d06-8534-39528af40f8e.apps.googleusercontent.com",
///                 "client_secret_setting_name": "ClientSecret",
///             },
///             "validation": {
///                 "allowed_audiences": ["https://example.com"],
///             },
///         },
///     },
///     login={
///         "allowed_external_redirect_urls": ["https://someurl.com"],
///         "cookie_expiration": {
///             "convention": azure_native.web.CookieExpirationConvention.IDENTITY_PROVIDER_DERIVED,
///             "time_to_expiration": "2022:09-01T00:00Z",
///         },
///         "nonce": {
///             "validate_nonce": True,
///         },
///         "preserve_url_fragments_for_logins": True,
///         "routes": {
///             "logout_endpoint": "https://app.com/logout",
///         },
///         "token_store": {
///             "enabled": True,
///             "file_system": {
///                 "directory": "/wwwroot/sites/example",
///             },
///             "token_refresh_extension_hours": float(96),
///         },
///     },
///     name="sitef6141",
///     platform={
///         "config_file_path": "/auth/config.json",
///         "enabled": True,
///         "runtime_version": "~1",
///     },
///     resource_group_name="testrg123")
///
/// ```
///
/// ```yaml
/// resources:
///   webAppAuthSettingsV2WithoutSecrets:
///     type: azure-native:web:WebAppAuthSettingsV2WithoutSecrets
///     properties:
///       globalValidation:
///         excludedPaths:
///           - /nosecrets/Path
///         requireAuthentication: true
///         unauthenticatedClientAction: Return403
///       httpSettings:
///         forwardProxy:
///           convention: Standard
///           customHostHeaderName: authHeader
///           customProtoHeaderName: customProtoHeader
///         requireHttps: true
///         routes:
///           apiPrefix: /authv2/
///       identityProviders:
///         google:
///           enabled: true
///           login:
///             scopes:
///               - admin
///           registration:
///             clientId: 42d795a9-8abb-4d06-8534-39528af40f8e.apps.googleusercontent.com
///             clientSecretSettingName: ClientSecret
///           validation:
///             allowedAudiences:
///               - https://example.com
///       login:
///         allowedExternalRedirectUrls:
///           - https://someurl.com
///         cookieExpiration:
///           convention: IdentityProviderDerived
///           timeToExpiration: 2022:09-01T00:00Z
///         nonce:
///           validateNonce: true
///         preserveUrlFragmentsForLogins: true
///         routes:
///           logoutEndpoint: https://app.com/logout
///         tokenStore:
///           enabled: true
///           fileSystem:
///             directory: /wwwroot/sites/example
///           tokenRefreshExtensionHours: 96
///       name: sitef6141
///       platform:
///         configFilePath: /auth/config.json
///         enabled: true
///         runtimeVersion: ~1
///       resourceGroupName: testrg123
///
/// ```
///
/// {{% /example %}}
/// {{% /examples %}}
///
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:web:WebAppAuthSettingsV2WithoutSecrets authsettingsv2 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Web/sites/{name}/config/authsettingsV2
/// ```
class WebAppAuthSettingsV2WithoutSecrets extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The configuration settings that determines the validation flow of users using App Service Authentication/Authorization.
  late final pulumi.Output<GlobalValidationResponse?> globalValidation;
  /// The configuration settings of the HTTP requests for authentication and authorization requests made against App Service Authentication/Authorization.
  late final pulumi.Output<HttpSettingsResponse?> httpSettings;
  /// The configuration settings of each of the identity providers used to configure App Service Authentication/Authorization.
  late final pulumi.Output<IdentityProvidersResponse?> identityProviders;
  /// Kind of resource. If the resource is an app, you can refer to https://github.com/Azure/app-service-linux-docs/blob/master/Things_You_Should_Know/kind_property.md#app-service-resource-kind-reference for details supported values for kind.
  late final pulumi.Output<String?> kind;
  /// The configuration settings of the login flow of users using App Service Authentication/Authorization.
  late final pulumi.Output<LoginResponse?> login;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The configuration settings of the platform of App Service Authentication/Authorization.
  late final pulumi.Output<AuthPlatformResponse?> platform;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [WebAppAuthSettingsV2WithoutSecrets].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WebAppAuthSettingsV2WithoutSecrets]. {@macro pulumi_web_web_app_auth_settings_v2_without_secrets_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WebAppAuthSettingsV2WithoutSecrets(
    String name, {
    WebAppAuthSettingsV2WithoutSecretsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:web:WebAppAuthSettingsV2WithoutSecrets',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    globalValidation = registerOutput<GlobalValidationResponse?>('globalValidation', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GlobalValidationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    httpSettings = registerOutput<HttpSettingsResponse?>('httpSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return HttpSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    identityProviders = registerOutput<IdentityProvidersResponse?>('identityProviders', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IdentityProvidersResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    kind = registerOutput<String?>('kind');
    login = registerOutput<LoginResponse?>('login', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LoginResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    platform = registerOutput<AuthPlatformResponse?>('platform', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AuthPlatformResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
