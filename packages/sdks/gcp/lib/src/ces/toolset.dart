import 'package:pulumi/pulumi.dart' as pulumi;
import 'toolset_args.dart';
import 'toolset_mcp_toolset.dart';
import 'toolset_open_api_toolset.dart';
import 'toolset_state.dart';
import 'toolset_tool_fake_config.dart';

/// Description
///
///
///
/// ## Example Usage
///
/// ### Ces Toolset Openapi Service Account Auth Config
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const cesAppForToolset = new gcp.ces.App("ces_app_for_toolset", {
///     appId: "app-id",
///     location: "us",
///     description: "App used as parent for CES Toolset example",
///     displayName: "my-app",
///     languageSettings: {
///         defaultLanguageCode: "en-US",
///         supportedLanguageCodes: [
///             "es-ES",
///             "fr-FR",
///         ],
///         enableMultilingualSupport: true,
///         fallbackAction: "escalate",
///     },
///     timeZoneSettings: {
///         timeZone: "America/Los_Angeles",
///     },
/// });
/// const cesToolsetOpenapiServiceAccountAuthConfig = new gcp.ces.Toolset("ces_toolset_openapi_service_account_auth_config", {
///     toolsetId: "toolset1",
///     location: "us",
///     app: cesAppForToolset.appId,
///     displayName: "Basic toolset display name",
///     openApiToolset: {
///         openApiSchema: `openapi: 3.0.0
/// info:
///   title: My Sample API
///   version: 1.0.0
///   description: A simple API example
/// servers:
///   - url: https://api.example.com/v1
/// paths: {}
/// `,
///         ignoreUnknownFields: false,
///         tlsConfig: {
///             caCerts: [{
///                 displayName: "example",
///                 cert: "ZXhhbXBsZQ==",
///             }],
///         },
///         serviceDirectoryConfig: {
///             service: "projects/example/locations/us/namespaces/namespace/services/service",
///         },
///         apiAuthentication: {
///             serviceAccountAuthConfig: {
///                 serviceAccount: "my@service-account.com",
///                 scopes: ["scope1"],
///             },
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// ces_app_for_toolset = gcp.ces.App("ces_app_for_toolset",
///     app_id="app-id",
///     location="us",
///     description="App used as parent for CES Toolset example",
///     display_name="my-app",
///     language_settings={
///         "default_language_code": "en-US",
///         "supported_language_codes": [
///             "es-ES",
///             "fr-FR",
///         ],
///         "enable_multilingual_support": True,
///         "fallback_action": "escalate",
///     },
///     time_zone_settings={
///         "time_zone": "America/Los_Angeles",
///     })
/// ces_toolset_openapi_service_account_auth_config = gcp.ces.Toolset("ces_toolset_openapi_service_account_auth_config",
///     toolset_id="toolset1",
///     location="us",
///     app=ces_app_for_toolset.app_id,
///     display_name="Basic toolset display name",
///     open_api_toolset={
///         "open_api_schema": """openapi: 3.0.0
/// info:
///   title: My Sample API
///   version: 1.0.0
///   description: A simple API example
/// servers:
///   - url: https://api.example.com/v1
/// paths: {}
/// """,
///         "ignore_unknown_fields": False,
///         "tls_config": {
///             "ca_certs": [{
///                 "display_name": "example",
///                 "cert": "ZXhhbXBsZQ==",
///             }],
///         },
///         "service_directory_config": {
///             "service": "projects/example/locations/us/namespaces/namespace/services/service",
///         },
///         "api_authentication": {
///             "service_account_auth_config": {
///                 "service_account": "my@service-account.com",
///                 "scopes": ["scope1"],
///             },
///         },
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var cesAppForToolset = new Gcp.Ces.App("ces_app_for_toolset", new()
///     {
///         AppId = "app-id",
///         Location = "us",
///         Description = "App used as parent for CES Toolset example",
///         DisplayName = "my-app",
///         LanguageSettings = new Gcp.Ces.Inputs.AppLanguageSettingsArgs
///         {
///             DefaultLanguageCode = "en-US",
///             SupportedLanguageCodes = new[]
///             {
///                 "es-ES",
///                 "fr-FR",
///             },
///             EnableMultilingualSupport = true,
///             FallbackAction = "escalate",
///         },
///         TimeZoneSettings = new Gcp.Ces.Inputs.AppTimeZoneSettingsArgs
///         {
///             TimeZone = "America/Los_Angeles",
///         },
///     });
///
///     var cesToolsetOpenapiServiceAccountAuthConfig = new Gcp.Ces.Toolset("ces_toolset_openapi_service_account_auth_config", new()
///     {
///         ToolsetId = "toolset1",
///         Location = "us",
///         App = cesAppForToolset.AppId,
///         DisplayName = "Basic toolset display name",
///         OpenApiToolset = new Gcp.Ces.Inputs.ToolsetOpenApiToolsetArgs
///         {
///             OpenApiSchema = @"openapi: 3.0.0
/// info:
///   title: My Sample API
///   version: 1.0.0
///   description: A simple API example
/// servers:
///   - url: https://api.example.com/v1
/// paths: {}
/// ",
///             IgnoreUnknownFields = false,
///             TlsConfig = new Gcp.Ces.Inputs.ToolsetOpenApiToolsetTlsConfigArgs
///             {
///                 CaCerts = new[]
///                 {
///                     new Gcp.Ces.Inputs.ToolsetOpenApiToolsetTlsConfigCaCertArgs
///                     {
///                         DisplayName = "example",
///                         Cert = "ZXhhbXBsZQ==",
///                     },
///                 },
///             },
///             ServiceDirectoryConfig = new Gcp.Ces.Inputs.ToolsetOpenApiToolsetServiceDirectoryConfigArgs
///             {
///                 Service = "projects/example/locations/us/namespaces/namespace/services/service",
///             },
///             ApiAuthentication = new Gcp.Ces.Inputs.ToolsetOpenApiToolsetApiAuthenticationArgs
///             {
///                 ServiceAccountAuthConfig = new Gcp.Ces.Inputs.ToolsetOpenApiToolsetApiAuthenticationServiceAccountAuthConfigArgs
///                 {
///                     ServiceAccount = "my@service-account.com",
///                     Scopes = new[]
///                     {
///                         "scope1",
///                     },
///                 },
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/ces"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cesAppForToolset, err := ces.NewApp(ctx, "ces_app_for_toolset", &ces.AppArgs{
/// 			AppId:       pulumi.String("app-id"),
/// 			Location:    pulumi.String("us"),
/// 			Description: pulumi.String("App used as parent for CES Toolset example"),
/// 			DisplayName: pulumi.String("my-app"),
/// 			LanguageSettings: &ces.AppLanguageSettingsArgs{
/// 				DefaultLanguageCode: pulumi.String("en-US"),
/// 				SupportedLanguageCodes: pulumi.StringArray{
/// 					pulumi.String("es-ES"),
/// 					pulumi.String("fr-FR"),
/// 				},
/// 				EnableMultilingualSupport: pulumi.Bool(true),
/// 				FallbackAction:            pulumi.String("escalate"),
/// 			},
/// 			TimeZoneSettings: &ces.AppTimeZoneSettingsArgs{
/// 				TimeZone: pulumi.String("America/Los_Angeles"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ces.NewToolset(ctx, "ces_toolset_openapi_service_account_auth_config", &ces.ToolsetArgs{
/// 			ToolsetId:   pulumi.String("toolset1"),
/// 			Location:    pulumi.String("us"),
/// 			App:         cesAppForToolset.AppId,
/// 			DisplayName: pulumi.String("Basic toolset display name"),
/// 			OpenApiToolset: &ces.ToolsetOpenApiToolsetArgs{
/// 				OpenApiSchema: pulumi.String(`openapi: 3.0.0
/// info:
///   title: My Sample API
///   version: 1.0.0
///   description: A simple API example
/// servers:
///   - url: https://api.example.com/v1
/// paths: {}
/// `),
/// 				IgnoreUnknownFields: pulumi.Bool(false),
/// 				TlsConfig: &ces.ToolsetOpenApiToolsetTlsConfigArgs{
/// 					CaCerts: ces.ToolsetOpenApiToolsetTlsConfigCaCertArray{
/// 						&ces.ToolsetOpenApiToolsetTlsConfigCaCertArgs{
/// 							DisplayName: pulumi.String("example"),
/// 							Cert:        pulumi.String("ZXhhbXBsZQ=="),
/// 						},
/// 					},
/// 				},
/// 				ServiceDirectoryConfig: &ces.ToolsetOpenApiToolsetServiceDirectoryConfigArgs{
/// 					Service: pulumi.String("projects/example/locations/us/namespaces/namespace/services/service"),
/// 				},
/// 				ApiAuthentication: &ces.ToolsetOpenApiToolsetApiAuthenticationArgs{
/// 					ServiceAccountAuthConfig: &ces.ToolsetOpenApiToolsetApiAuthenticationServiceAccountAuthConfigArgs{
/// 						ServiceAccount: pulumi.String("my@service-account.com"),
/// 						Scopes: pulumi.StringArray{
/// 							pulumi.String("scope1"),
/// 						},
/// 					},
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
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_ces_app" "ces_app_for_toolset" {
///   app_id       = "app-id"
///   location     = "us"
///   description  = "App used as parent for CES Toolset example"
///   display_name = "my-app"
///   language_settings = {
///     default_language_code       = "en-US"
///     supported_language_codes    = ["es-ES", "fr-FR"]
///     enable_multilingual_support = true
///     fallback_action             = "escalate"
///   }
///   time_zone_settings = {
///     time_zone = "America/Los_Angeles"
///   }
/// }
/// resource "gcp_ces_toolset" "ces_toolset_openapi_service_account_auth_config" {
///   toolset_id   = "toolset1"
///   location     = "us"
///   app          = gcp_ces_app.ces_app_for_toolset.app_id
///   display_name = "Basic toolset display name"
///   open_api_toolset = {
///     open_api_schema       = "openapi: 3.0.0\ninfo:\n  title: My Sample API\n  version: 1.0.0\n  description: A simple API example\nservers:\n  - url: https://api.example.com/v1\npaths: {}\n"
///     ignore_unknown_fields = false
///     tls_config = {
///       ca_certs = [{
///         "displayName" = "example"
///         "cert"        = "ZXhhbXBsZQ=="
///       }]
///     }
///     service_directory_config = {
///       service = "projects/example/locations/us/namespaces/namespace/services/service"
///     }
///     api_authentication = {
///       service_account_auth_config = {
///         service_account = "my@service-account.com"
///         scopes          = ["scope1"]
///       }
///     }
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.ces.App;
/// import com.pulumi.gcp.ces.AppArgs;
/// import com.pulumi.gcp.ces.inputs.AppLanguageSettingsArgs;
/// import com.pulumi.gcp.ces.inputs.AppTimeZoneSettingsArgs;
/// import com.pulumi.gcp.ces.Toolset;
/// import com.pulumi.gcp.ces.ToolsetArgs;
/// import com.pulumi.gcp.ces.inputs.ToolsetOpenApiToolsetArgs;
/// import com.pulumi.gcp.ces.inputs.ToolsetOpenApiToolsetTlsConfigArgs;
/// import com.pulumi.gcp.ces.inputs.ToolsetOpenApiToolsetTlsConfigCaCertArgs;
/// import com.pulumi.gcp.ces.inputs.ToolsetOpenApiToolsetServiceDirectoryConfigArgs;
/// import com.pulumi.gcp.ces.inputs.ToolsetOpenApiToolsetApiAuthenticationArgs;
/// import com.pulumi.gcp.ces.inputs.ToolsetOpenApiToolsetApiAuthenticationServiceAccountAuthConfigArgs;
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
///         var cesAppForToolset = new App("cesAppForToolset", AppArgs.builder()
///             .appId("app-id")
///             .location("us")
///             .description("App used as parent for CES Toolset example")
///             .displayName("my-app")
///             .languageSettings(AppLanguageSettingsArgs.builder()
///                 .defaultLanguageCode("en-US")
///                 .supportedLanguageCodes(
///                     "es-ES",
///                     "fr-FR")
///                 .enableMultilingualSupport(true)
///                 .fallbackAction("escalate")
///                 .build())
///             .timeZoneSettings(AppTimeZoneSettingsArgs.builder()
///                 .timeZone("America/Los_Angeles")
///                 .build())
///             .build());
///
///         var cesToolsetOpenapiServiceAccountAuthConfig = new Toolset("cesToolsetOpenapiServiceAccountAuthConfig", ToolsetArgs.builder()
///             .toolsetId("toolset1")
///             .location("us")
///             .app(cesAppForToolset.appId())
///             .displayName("Basic toolset display name")
///             .openApiToolset(ToolsetOpenApiToolsetArgs.builder()
///                 .openApiSchema("""
/// openapi: 3.0.0
/// info:
///   title: My Sample API
///   version: 1.0.0
///   description: A simple API example
/// servers:
///   - url: https://api.example.com/v1
/// paths: {}
///                 """)
///                 .ignoreUnknownFields(false)
///                 .tlsConfig(ToolsetOpenApiToolsetTlsConfigArgs.builder()
///                     .caCerts(ToolsetOpenApiToolsetTlsConfigCaCertArgs.builder()
///                         .displayName("example")
///                         .cert("ZXhhbXBsZQ==")
///                         .build())
///                     .build())
///                 .serviceDirectoryConfig(ToolsetOpenApiToolsetServiceDirectoryConfigArgs.builder()
///                     .service("projects/example/locations/us/namespaces/namespace/services/service")
///                     .build())
///                 .apiAuthentication(ToolsetOpenApiToolsetApiAuthenticationArgs.builder()
///                     .serviceAccountAuthConfig(ToolsetOpenApiToolsetApiAuthenticationServiceAccountAuthConfigArgs.builder()
///                         .serviceAccount("my@service-account.com")
///                         .scopes("scope1")
///                         .build())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   cesAppForToolset:
///     type: gcp:ces:App
///     name: ces_app_for_toolset
///     properties:
///       appId: app-id
///       location: us
///       description: App used as parent for CES Toolset example
///       displayName: my-app
///       languageSettings:
///         defaultLanguageCode: en-US
///         supportedLanguageCodes:
///           - es-ES
///           - fr-FR
///         enableMultilingualSupport: true
///         fallbackAction: escalate
///       timeZoneSettings:
///         timeZone: America/Los_Angeles
///   cesToolsetOpenapiServiceAccountAuthConfig:
///     type: gcp:ces:Toolset
///     name: ces_toolset_openapi_service_account_auth_config
///     properties:
///       toolsetId: toolset1
///       location: us
///       app: ${cesAppForToolset.appId}
///       displayName: Basic toolset display name
///       openApiToolset:
///         openApiSchema: |
///           openapi: 3.0.0
///           info:
///             title: My Sample API
///             version: 1.0.0
///             description: A simple API example
///           servers:
///             - url: https://api.example.com/v1
///           paths: {}
///         ignoreUnknownFields: false
///         tlsConfig:
///           caCerts:
///             - displayName: example
///               cert: ZXhhbXBsZQ==
///         serviceDirectoryConfig:
///           service: projects/example/locations/us/namespaces/namespace/services/service
///         apiAuthentication:
///           serviceAccountAuthConfig:
///             serviceAccount: my@service-account.com
///             scopes:
///               - scope1
/// ```
///
/// ### Ces Toolset Openapi Oauth Config
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const cesAppForToolset = new gcp.ces.App("ces_app_for_toolset", {
///     appId: "app-id",
///     location: "us",
///     description: "App used as parent for CES Toolset example",
///     displayName: "my-app",
///     languageSettings: {
///         defaultLanguageCode: "en-US",
///         supportedLanguageCodes: [
///             "es-ES",
///             "fr-FR",
///         ],
///         enableMultilingualSupport: true,
///         fallbackAction: "escalate",
///     },
///     timeZoneSettings: {
///         timeZone: "America/Los_Angeles",
///     },
/// });
/// const cesToolsetOpenapiOauthConfig = new gcp.ces.Toolset("ces_toolset_openapi_oauth_config", {
///     toolsetId: "toolset1",
///     location: "us",
///     app: cesAppForToolset.appId,
///     displayName: "Basic toolset display name",
///     openApiToolset: {
///         openApiSchema: `openapi: 3.0.0
/// info:
///   title: My Sample API
///   version: 1.0.0
///   description: A simple API example
/// servers:
///   - url: https://api.example.com/v1
/// paths: {}
/// `,
///         ignoreUnknownFields: false,
///         tlsConfig: {
///             caCerts: [{
///                 displayName: "example",
///                 cert: "ZXhhbXBsZQ==",
///             }],
///         },
///         serviceDirectoryConfig: {
///             service: "projects/example/locations/us/namespaces/namespace/services/service",
///         },
///         apiAuthentication: {
///             oauthConfig: {
///                 oauthGrantType: "CLIENT_CREDENTIAL",
///                 clientId: "example_client_id",
///                 clientSecretVersion: "projects/fake-project/secrets/fake-secret/versions/version1",
///                 tokenEndpoint: "123",
///                 scopes: ["scope1"],
///             },
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// ces_app_for_toolset = gcp.ces.App("ces_app_for_toolset",
///     app_id="app-id",
///     location="us",
///     description="App used as parent for CES Toolset example",
///     display_name="my-app",
///     language_settings={
///         "default_language_code": "en-US",
///         "supported_language_codes": [
///             "es-ES",
///             "fr-FR",
///         ],
///         "enable_multilingual_support": True,
///         "fallback_action": "escalate",
///     },
///     time_zone_settings={
///         "time_zone": "America/Los_Angeles",
///     })
/// ces_toolset_openapi_oauth_config = gcp.ces.Toolset("ces_toolset_openapi_oauth_config",
///     toolset_id="toolset1",
///     location="us",
///     app=ces_app_for_toolset.app_id,
///     display_name="Basic toolset display name",
///     open_api_toolset={
///         "open_api_schema": """openapi: 3.0.0
/// info:
///   title: My Sample API
///   version: 1.0.0
///   description: A simple API example
/// servers:
///   - url: https://api.example.com/v1
/// paths: {}
/// """,
///         "ignore_unknown_fields": False,
///         "tls_config": {
///             "ca_certs": [{
///                 "display_name": "example",
///                 "cert": "ZXhhbXBsZQ==",
///             }],
///         },
///         "service_directory_config": {
///             "service": "projects/example/locations/us/namespaces/namespace/services/service",
///         },
///         "api_authentication": {
///             "oauth_config": {
///                 "oauth_grant_type": "CLIENT_CREDENTIAL",
///                 "client_id": "example_client_id",
///                 "client_secret_version": "projects/fake-project/secrets/fake-secret/versions/version1",
///                 "token_endpoint": "123",
///                 "scopes": ["scope1"],
///             },
///         },
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var cesAppForToolset = new Gcp.Ces.App("ces_app_for_toolset", new()
///     {
///         AppId = "app-id",
///         Location = "us",
///         Description = "App used as parent for CES Toolset example",
///         DisplayName = "my-app",
///         LanguageSettings = new Gcp.Ces.Inputs.AppLanguageSettingsArgs
///         {
///             DefaultLanguageCode = "en-US",
///             SupportedLanguageCodes = new[]
///             {
///                 "es-ES",
///                 "fr-FR",
///             },
///             EnableMultilingualSupport = true,
///             FallbackAction = "escalate",
///         },
///         TimeZoneSettings = new Gcp.Ces.Inputs.AppTimeZoneSettingsArgs
///         {
///             TimeZone = "America/Los_Angeles",
///         },
///     });
///
///     var cesToolsetOpenapiOauthConfig = new Gcp.Ces.Toolset("ces_toolset_openapi_oauth_config", new()
///     {
///         ToolsetId = "toolset1",
///         Location = "us",
///         App = cesAppForToolset.AppId,
///         DisplayName = "Basic toolset display name",
///         OpenApiToolset = new Gcp.Ces.Inputs.ToolsetOpenApiToolsetArgs
///         {
///             OpenApiSchema = @"openapi: 3.0.0
/// info:
///   title: My Sample API
///   version: 1.0.0
///   description: A simple API example
/// servers:
///   - url: https://api.example.com/v1
/// paths: {}
/// ",
///             IgnoreUnknownFields = false,
///             TlsConfig = new Gcp.Ces.Inputs.ToolsetOpenApiToolsetTlsConfigArgs
///             {
///                 CaCerts = new[]
///                 {
///                     new Gcp.Ces.Inputs.ToolsetOpenApiToolsetTlsConfigCaCertArgs
///                     {
///                         DisplayName = "example",
///                         Cert = "ZXhhbXBsZQ==",
///                     },
///                 },
///             },
///             ServiceDirectoryConfig = new Gcp.Ces.Inputs.ToolsetOpenApiToolsetServiceDirectoryConfigArgs
///             {
///                 Service = "projects/example/locations/us/namespaces/namespace/services/service",
///             },
///             ApiAuthentication = new Gcp.Ces.Inputs.ToolsetOpenApiToolsetApiAuthenticationArgs
///             {
///                 OauthConfig = new Gcp.Ces.Inputs.ToolsetOpenApiToolsetApiAuthenticationOauthConfigArgs
///                 {
///                     OauthGrantType = "CLIENT_CREDENTIAL",
///                     ClientId = "example_client_id",
///                     ClientSecretVersion = "projects/fake-project/secrets/fake-secret/versions/version1",
///                     TokenEndpoint = "123",
///                     Scopes = new[]
///                     {
///                         "scope1",
///                     },
///                 },
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/ces"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cesAppForToolset, err := ces.NewApp(ctx, "ces_app_for_toolset", &ces.AppArgs{
/// 			AppId:       pulumi.String("app-id"),
/// 			Location:    pulumi.String("us"),
/// 			Description: pulumi.String("App used as parent for CES Toolset example"),
/// 			DisplayName: pulumi.String("my-app"),
/// 			LanguageSettings: &ces.AppLanguageSettingsArgs{
/// 				DefaultLanguageCode: pulumi.String("en-US"),
/// 				SupportedLanguageCodes: pulumi.StringArray{
/// 					pulumi.String("es-ES"),
/// 					pulumi.String("fr-FR"),
/// 				},
/// 				EnableMultilingualSupport: pulumi.Bool(true),
/// 				FallbackAction:            pulumi.String("escalate"),
/// 			},
/// 			TimeZoneSettings: &ces.AppTimeZoneSettingsArgs{
/// 				TimeZone: pulumi.String("America/Los_Angeles"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ces.NewToolset(ctx, "ces_toolset_openapi_oauth_config", &ces.ToolsetArgs{
/// 			ToolsetId:   pulumi.String("toolset1"),
/// 			Location:    pulumi.String("us"),
/// 			App:         cesAppForToolset.AppId,
/// 			DisplayName: pulumi.String("Basic toolset display name"),
/// 			OpenApiToolset: &ces.ToolsetOpenApiToolsetArgs{
/// 				OpenApiSchema: pulumi.String(`openapi: 3.0.0
/// info:
///   title: My Sample API
///   version: 1.0.0
///   description: A simple API example
/// servers:
///   - url: https://api.example.com/v1
/// paths: {}
/// `),
/// 				IgnoreUnknownFields: pulumi.Bool(false),
/// 				TlsConfig: &ces.ToolsetOpenApiToolsetTlsConfigArgs{
/// 					CaCerts: ces.ToolsetOpenApiToolsetTlsConfigCaCertArray{
/// 						&ces.ToolsetOpenApiToolsetTlsConfigCaCertArgs{
/// 							DisplayName: pulumi.String("example"),
/// 							Cert:        pulumi.String("ZXhhbXBsZQ=="),
/// 						},
/// 					},
/// 				},
/// 				ServiceDirectoryConfig: &ces.ToolsetOpenApiToolsetServiceDirectoryConfigArgs{
/// 					Service: pulumi.String("projects/example/locations/us/namespaces/namespace/services/service"),
/// 				},
/// 				ApiAuthentication: &ces.ToolsetOpenApiToolsetApiAuthenticationArgs{
/// 					OauthConfig: &ces.ToolsetOpenApiToolsetApiAuthenticationOauthConfigArgs{
/// 						OauthGrantType:      pulumi.String("CLIENT_CREDENTIAL"),
/// 						ClientId:            pulumi.String("example_client_id"),
/// 						ClientSecretVersion: pulumi.String("projects/fake-project/secrets/fake-secret/versions/version1"),
/// 						TokenEndpoint:       pulumi.String("123"),
/// 						Scopes: pulumi.StringArray{
/// 							pulumi.String("scope1"),
/// 						},
/// 					},
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
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_ces_app" "ces_app_for_toolset" {
///   app_id       = "app-id"
///   location     = "us"
///   description  = "App used as parent for CES Toolset example"
///   display_name = "my-app"
///   language_settings = {
///     default_language_code       = "en-US"
///     supported_language_codes    = ["es-ES", "fr-FR"]
///     enable_multilingual_support = true
///     fallback_action             = "escalate"
///   }
///   time_zone_settings = {
///     time_zone = "America/Los_Angeles"
///   }
/// }
/// resource "gcp_ces_toolset" "ces_toolset_openapi_oauth_config" {
///   toolset_id   = "toolset1"
///   location     = "us"
///   app          = gcp_ces_app.ces_app_for_toolset.app_id
///   display_name = "Basic toolset display name"
///   open_api_toolset = {
///     open_api_schema       = "openapi: 3.0.0\ninfo:\n  title: My Sample API\n  version: 1.0.0\n  description: A simple API example\nservers:\n  - url: https://api.example.com/v1\npaths: {}\n"
///     ignore_unknown_fields = false
///     tls_config = {
///       ca_certs = [{
///         "displayName" = "example"
///         "cert"        = "ZXhhbXBsZQ=="
///       }]
///     }
///     service_directory_config = {
///       service = "projects/example/locations/us/namespaces/namespace/services/service"
///     }
///     api_authentication = {
///       oauth_config = {
///         oauth_grant_type      = "CLIENT_CREDENTIAL"
///         client_id             = "example_client_id"
///         client_secret_version = "projects/fake-project/secrets/fake-secret/versions/version1"
///         token_endpoint        = "123"
///         scopes                = ["scope1"]
///       }
///     }
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.ces.App;
/// import com.pulumi.gcp.ces.AppArgs;
/// import com.pulumi.gcp.ces.inputs.AppLanguageSettingsArgs;
/// import com.pulumi.gcp.ces.inputs.AppTimeZoneSettingsArgs;
/// import com.pulumi.gcp.ces.Toolset;
/// import com.pulumi.gcp.ces.ToolsetArgs;
/// import com.pulumi.gcp.ces.inputs.ToolsetOpenApiToolsetArgs;
/// import com.pulumi.gcp.ces.inputs.ToolsetOpenApiToolsetTlsConfigArgs;
/// import com.pulumi.gcp.ces.inputs.ToolsetOpenApiToolsetTlsConfigCaCertArgs;
/// import com.pulumi.gcp.ces.inputs.ToolsetOpenApiToolsetServiceDirectoryConfigArgs;
/// import com.pulumi.gcp.ces.inputs.ToolsetOpenApiToolsetApiAuthenticationArgs;
/// import com.pulumi.gcp.ces.inputs.ToolsetOpenApiToolsetApiAuthenticationOauthConfigArgs;
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
///         var cesAppForToolset = new App("cesAppForToolset", AppArgs.builder()
///             .appId("app-id")
///             .location("us")
///             .description("App used as parent for CES Toolset example")
///             .displayName("my-app")
///             .languageSettings(AppLanguageSettingsArgs.builder()
///                 .defaultLanguageCode("en-US")
///                 .supportedLanguageCodes(
///                     "es-ES",
///                     "fr-FR")
///                 .enableMultilingualSupport(true)
///                 .fallbackAction("escalate")
///                 .build())
///             .timeZoneSettings(AppTimeZoneSettingsArgs.builder()
///                 .timeZone("America/Los_Angeles")
///                 .build())
///             .build());
///
///         var cesToolsetOpenapiOauthConfig = new Toolset("cesToolsetOpenapiOauthConfig", ToolsetArgs.builder()
///             .toolsetId("toolset1")
///             .location("us")
///             .app(cesAppForToolset.appId())
///             .displayName("Basic toolset display name")
///             .openApiToolset(ToolsetOpenApiToolsetArgs.builder()
///                 .openApiSchema("""
/// openapi: 3.0.0
/// info:
///   title: My Sample API
///   version: 1.0.0
///   description: A simple API example
/// servers:
///   - url: https://api.example.com/v1
/// paths: {}
///                 """)
///                 .ignoreUnknownFields(false)
///                 .tlsConfig(ToolsetOpenApiToolsetTlsConfigArgs.builder()
///                     .caCerts(ToolsetOpenApiToolsetTlsConfigCaCertArgs.builder()
///                         .displayName("example")
///                         .cert("ZXhhbXBsZQ==")
///                         .build())
///                     .build())
///                 .serviceDirectoryConfig(ToolsetOpenApiToolsetServiceDirectoryConfigArgs.builder()
///                     .service("projects/example/locations/us/namespaces/namespace/services/service")
///                     .build())
///                 .apiAuthentication(ToolsetOpenApiToolsetApiAuthenticationArgs.builder()
///                     .oauthConfig(ToolsetOpenApiToolsetApiAuthenticationOauthConfigArgs.builder()
///                         .oauthGrantType("CLIENT_CREDENTIAL")
///                         .clientId("example_client_id")
///                         .clientSecretVersion("projects/fake-project/secrets/fake-secret/versions/version1")
///                         .tokenEndpoint("123")
///                         .scopes("scope1")
///                         .build())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   cesAppForToolset:
///     type: gcp:ces:App
///     name: ces_app_for_toolset
///     properties:
///       appId: app-id
///       location: us
///       description: App used as parent for CES Toolset example
///       displayName: my-app
///       languageSettings:
///         defaultLanguageCode: en-US
///         supportedLanguageCodes:
///           - es-ES
///           - fr-FR
///         enableMultilingualSupport: true
///         fallbackAction: escalate
///       timeZoneSettings:
///         timeZone: America/Los_Angeles
///   cesToolsetOpenapiOauthConfig:
///     type: gcp:ces:Toolset
///     name: ces_toolset_openapi_oauth_config
///     properties:
///       toolsetId: toolset1
///       location: us
///       app: ${cesAppForToolset.appId}
///       displayName: Basic toolset display name
///       openApiToolset:
///         openApiSchema: |
///           openapi: 3.0.0
///           info:
///             title: My Sample API
///             version: 1.0.0
///             description: A simple API example
///           servers:
///             - url: https://api.example.com/v1
///           paths: {}
///         ignoreUnknownFields: false
///         tlsConfig:
///           caCerts:
///             - displayName: example
///               cert: ZXhhbXBsZQ==
///         serviceDirectoryConfig:
///           service: projects/example/locations/us/namespaces/namespace/services/service
///         apiAuthentication:
///           oauthConfig:
///             oauthGrantType: CLIENT_CREDENTIAL
///             clientId: example_client_id
///             clientSecretVersion: projects/fake-project/secrets/fake-secret/versions/version1
///             tokenEndpoint: '123'
///             scopes:
///               - scope1
/// ```
///
/// ### Ces Toolset Openapi Service Agent Id Token Auth Config
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const cesAppForToolset = new gcp.ces.App("ces_app_for_toolset", {
///     appId: "app-id",
///     location: "us",
///     description: "App used as parent for CES Toolset example",
///     displayName: "my-app",
///     languageSettings: {
///         defaultLanguageCode: "en-US",
///         supportedLanguageCodes: [
///             "es-ES",
///             "fr-FR",
///         ],
///         enableMultilingualSupport: true,
///         fallbackAction: "escalate",
///     },
///     timeZoneSettings: {
///         timeZone: "America/Los_Angeles",
///     },
/// });
/// const cesToolsetOpenapiServiceAgentIdTokenAuthConfig = new gcp.ces.Toolset("ces_toolset_openapi_service_agent_id_token_auth_config", {
///     toolsetId: "toolset1",
///     location: "us",
///     app: cesAppForToolset.appId,
///     displayName: "Basic toolset display name",
///     openApiToolset: {
///         openApiSchema: `openapi: 3.0.0
/// info:
///   title: My Sample API
///   version: 1.0.0
///   description: A simple API example
/// servers:
///   - url: https://api.example.com/v1
/// paths: {}
/// `,
///         ignoreUnknownFields: false,
///         tlsConfig: {
///             caCerts: [{
///                 displayName: "example",
///                 cert: "ZXhhbXBsZQ==",
///             }],
///         },
///         serviceDirectoryConfig: {
///             service: "projects/example/locations/us/namespaces/namespace/services/service",
///         },
///         apiAuthentication: {
///             serviceAgentIdTokenAuthConfig: {},
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// ces_app_for_toolset = gcp.ces.App("ces_app_for_toolset",
///     app_id="app-id",
///     location="us",
///     description="App used as parent for CES Toolset example",
///     display_name="my-app",
///     language_settings={
///         "default_language_code": "en-US",
///         "supported_language_codes": [
///             "es-ES",
///             "fr-FR",
///         ],
///         "enable_multilingual_support": True,
///         "fallback_action": "escalate",
///     },
///     time_zone_settings={
///         "time_zone": "America/Los_Angeles",
///     })
/// ces_toolset_openapi_service_agent_id_token_auth_config = gcp.ces.Toolset("ces_toolset_openapi_service_agent_id_token_auth_config",
///     toolset_id="toolset1",
///     location="us",
///     app=ces_app_for_toolset.app_id,
///     display_name="Basic toolset display name",
///     open_api_toolset={
///         "open_api_schema": """openapi: 3.0.0
/// info:
///   title: My Sample API
///   version: 1.0.0
///   description: A simple API example
/// servers:
///   - url: https://api.example.com/v1
/// paths: {}
/// """,
///         "ignore_unknown_fields": False,
///         "tls_config": {
///             "ca_certs": [{
///                 "display_name": "example",
///                 "cert": "ZXhhbXBsZQ==",
///             }],
///         },
///         "service_directory_config": {
///             "service": "projects/example/locations/us/namespaces/namespace/services/service",
///         },
///         "api_authentication": {
///             "service_agent_id_token_auth_config": {},
///         },
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var cesAppForToolset = new Gcp.Ces.App("ces_app_for_toolset", new()
///     {
///         AppId = "app-id",
///         Location = "us",
///         Description = "App used as parent for CES Toolset example",
///         DisplayName = "my-app",
///         LanguageSettings = new Gcp.Ces.Inputs.AppLanguageSettingsArgs
///         {
///             DefaultLanguageCode = "en-US",
///             SupportedLanguageCodes = new[]
///             {
///                 "es-ES",
///                 "fr-FR",
///             },
///             EnableMultilingualSupport = true,
///             FallbackAction = "escalate",
///         },
///         TimeZoneSettings = new Gcp.Ces.Inputs.AppTimeZoneSettingsArgs
///         {
///             TimeZone = "America/Los_Angeles",
///         },
///     });
///
///     var cesToolsetOpenapiServiceAgentIdTokenAuthConfig = new Gcp.Ces.Toolset("ces_toolset_openapi_service_agent_id_token_auth_config", new()
///     {
///         ToolsetId = "toolset1",
///         Location = "us",
///         App = cesAppForToolset.AppId,
///         DisplayName = "Basic toolset display name",
///         OpenApiToolset = new Gcp.Ces.Inputs.ToolsetOpenApiToolsetArgs
///         {
///             OpenApiSchema = @"openapi: 3.0.0
/// info:
///   title: My Sample API
///   version: 1.0.0
///   description: A simple API example
/// servers:
///   - url: https://api.example.com/v1
/// paths: {}
/// ",
///             IgnoreUnknownFields = false,
///             TlsConfig = new Gcp.Ces.Inputs.ToolsetOpenApiToolsetTlsConfigArgs
///             {
///                 CaCerts = new[]
///                 {
///                     new Gcp.Ces.Inputs.ToolsetOpenApiToolsetTlsConfigCaCertArgs
///                     {
///                         DisplayName = "example",
///                         Cert = "ZXhhbXBsZQ==",
///                     },
///                 },
///             },
///             ServiceDirectoryConfig = new Gcp.Ces.Inputs.ToolsetOpenApiToolsetServiceDirectoryConfigArgs
///             {
///                 Service = "projects/example/locations/us/namespaces/namespace/services/service",
///             },
///             ApiAuthentication = new Gcp.Ces.Inputs.ToolsetOpenApiToolsetApiAuthenticationArgs
///             {
///                 ServiceAgentIdTokenAuthConfig = null,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/ces"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cesAppForToolset, err := ces.NewApp(ctx, "ces_app_for_toolset", &ces.AppArgs{
/// 			AppId:       pulumi.String("app-id"),
/// 			Location:    pulumi.String("us"),
/// 			Description: pulumi.String("App used as parent for CES Toolset example"),
/// 			DisplayName: pulumi.String("my-app"),
/// 			LanguageSettings: &ces.AppLanguageSettingsArgs{
/// 				DefaultLanguageCode: pulumi.String("en-US"),
/// 				SupportedLanguageCodes: pulumi.StringArray{
/// 					pulumi.String("es-ES"),
/// 					pulumi.String("fr-FR"),
/// 				},
/// 				EnableMultilingualSupport: pulumi.Bool(true),
/// 				FallbackAction:            pulumi.String("escalate"),
/// 			},
/// 			TimeZoneSettings: &ces.AppTimeZoneSettingsArgs{
/// 				TimeZone: pulumi.String("America/Los_Angeles"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ces.NewToolset(ctx, "ces_toolset_openapi_service_agent_id_token_auth_config", &ces.ToolsetArgs{
/// 			ToolsetId:   pulumi.String("toolset1"),
/// 			Location:    pulumi.String("us"),
/// 			App:         cesAppForToolset.AppId,
/// 			DisplayName: pulumi.String("Basic toolset display name"),
/// 			OpenApiToolset: &ces.ToolsetOpenApiToolsetArgs{
/// 				OpenApiSchema: pulumi.String(`openapi: 3.0.0
/// info:
///   title: My Sample API
///   version: 1.0.0
///   description: A simple API example
/// servers:
///   - url: https://api.example.com/v1
/// paths: {}
/// `),
/// 				IgnoreUnknownFields: pulumi.Bool(false),
/// 				TlsConfig: &ces.ToolsetOpenApiToolsetTlsConfigArgs{
/// 					CaCerts: ces.ToolsetOpenApiToolsetTlsConfigCaCertArray{
/// 						&ces.ToolsetOpenApiToolsetTlsConfigCaCertArgs{
/// 							DisplayName: pulumi.String("example"),
/// 							Cert:        pulumi.String("ZXhhbXBsZQ=="),
/// 						},
/// 					},
/// 				},
/// 				ServiceDirectoryConfig: &ces.ToolsetOpenApiToolsetServiceDirectoryConfigArgs{
/// 					Service: pulumi.String("projects/example/locations/us/namespaces/namespace/services/service"),
/// 				},
/// 				ApiAuthentication: &ces.ToolsetOpenApiToolsetApiAuthenticationArgs{
/// 					ServiceAgentIdTokenAuthConfig: &ces.ToolsetOpenApiToolsetApiAuthenticationServiceAgentIdTokenAuthConfigArgs{},
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
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_ces_app" "ces_app_for_toolset" {
///   app_id       = "app-id"
///   location     = "us"
///   description  = "App used as parent for CES Toolset example"
///   display_name = "my-app"
///   language_settings = {
///     default_language_code       = "en-US"
///     supported_language_codes    = ["es-ES", "fr-FR"]
///     enable_multilingual_support = true
///     fallback_action             = "escalate"
///   }
///   time_zone_settings = {
///     time_zone = "America/Los_Angeles"
///   }
/// }
/// resource "gcp_ces_toolset" "ces_toolset_openapi_service_agent_id_token_auth_config" {
///   toolset_id   = "toolset1"
///   location     = "us"
///   app          = gcp_ces_app.ces_app_for_toolset.app_id
///   display_name = "Basic toolset display name"
///   open_api_toolset = {
///     open_api_schema       = "openapi: 3.0.0\ninfo:\n  title: My Sample API\n  version: 1.0.0\n  description: A simple API example\nservers:\n  - url: https://api.example.com/v1\npaths: {}\n"
///     ignore_unknown_fields = false
///     tls_config = {
///       ca_certs = [{
///         "displayName" = "example"
///         "cert"        = "ZXhhbXBsZQ=="
///       }]
///     }
///     service_directory_config = {
///       service = "projects/example/locations/us/namespaces/namespace/services/service"
///     }
///     api_authentication = {
///       service_agent_id_token_auth_config = {}
///     }
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.ces.App;
/// import com.pulumi.gcp.ces.AppArgs;
/// import com.pulumi.gcp.ces.inputs.AppLanguageSettingsArgs;
/// import com.pulumi.gcp.ces.inputs.AppTimeZoneSettingsArgs;
/// import com.pulumi.gcp.ces.Toolset;
/// import com.pulumi.gcp.ces.ToolsetArgs;
/// import com.pulumi.gcp.ces.inputs.ToolsetOpenApiToolsetArgs;
/// import com.pulumi.gcp.ces.inputs.ToolsetOpenApiToolsetTlsConfigArgs;
/// import com.pulumi.gcp.ces.inputs.ToolsetOpenApiToolsetTlsConfigCaCertArgs;
/// import com.pulumi.gcp.ces.inputs.ToolsetOpenApiToolsetServiceDirectoryConfigArgs;
/// import com.pulumi.gcp.ces.inputs.ToolsetOpenApiToolsetApiAuthenticationArgs;
/// import com.pulumi.gcp.ces.inputs.ToolsetOpenApiToolsetApiAuthenticationServiceAgentIdTokenAuthConfigArgs;
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
///         var cesAppForToolset = new App("cesAppForToolset", AppArgs.builder()
///             .appId("app-id")
///             .location("us")
///             .description("App used as parent for CES Toolset example")
///             .displayName("my-app")
///             .languageSettings(AppLanguageSettingsArgs.builder()
///                 .defaultLanguageCode("en-US")
///                 .supportedLanguageCodes(
///                     "es-ES",
///                     "fr-FR")
///                 .enableMultilingualSupport(true)
///                 .fallbackAction("escalate")
///                 .build())
///             .timeZoneSettings(AppTimeZoneSettingsArgs.builder()
///                 .timeZone("America/Los_Angeles")
///                 .build())
///             .build());
///
///         var cesToolsetOpenapiServiceAgentIdTokenAuthConfig = new Toolset("cesToolsetOpenapiServiceAgentIdTokenAuthConfig", ToolsetArgs.builder()
///             .toolsetId("toolset1")
///             .location("us")
///             .app(cesAppForToolset.appId())
///             .displayName("Basic toolset display name")
///             .openApiToolset(ToolsetOpenApiToolsetArgs.builder()
///                 .openApiSchema("""
/// openapi: 3.0.0
/// info:
///   title: My Sample API
///   version: 1.0.0
///   description: A simple API example
/// servers:
///   - url: https://api.example.com/v1
/// paths: {}
///                 """)
///                 .ignoreUnknownFields(false)
///                 .tlsConfig(ToolsetOpenApiToolsetTlsConfigArgs.builder()
///                     .caCerts(ToolsetOpenApiToolsetTlsConfigCaCertArgs.builder()
///                         .displayName("example")
///                         .cert("ZXhhbXBsZQ==")
///                         .build())
///                     .build())
///                 .serviceDirectoryConfig(ToolsetOpenApiToolsetServiceDirectoryConfigArgs.builder()
///                     .service("projects/example/locations/us/namespaces/namespace/services/service")
///                     .build())
///                 .apiAuthentication(ToolsetOpenApiToolsetApiAuthenticationArgs.builder()
///                     .serviceAgentIdTokenAuthConfig(ToolsetOpenApiToolsetApiAuthenticationServiceAgentIdTokenAuthConfigArgs.builder()
///                         .build())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   cesAppForToolset:
///     type: gcp:ces:App
///     name: ces_app_for_toolset
///     properties:
///       appId: app-id
///       location: us
///       description: App used as parent for CES Toolset example
///       displayName: my-app
///       languageSettings:
///         defaultLanguageCode: en-US
///         supportedLanguageCodes:
///           - es-ES
///           - fr-FR
///         enableMultilingualSupport: true
///         fallbackAction: escalate
///       timeZoneSettings:
///         timeZone: America/Los_Angeles
///   cesToolsetOpenapiServiceAgentIdTokenAuthConfig:
///     type: gcp:ces:Toolset
///     name: ces_toolset_openapi_service_agent_id_token_auth_config
///     properties:
///       toolsetId: toolset1
///       location: us
///       app: ${cesAppForToolset.appId}
///       displayName: Basic toolset display name
///       openApiToolset:
///         openApiSchema: |
///           openapi: 3.0.0
///           info:
///             title: My Sample API
///             version: 1.0.0
///             description: A simple API example
///           servers:
///             - url: https://api.example.com/v1
///           paths: {}
///         ignoreUnknownFields: false
///         tlsConfig:
///           caCerts:
///             - displayName: example
///               cert: ZXhhbXBsZQ==
///         serviceDirectoryConfig:
///           service: projects/example/locations/us/namespaces/namespace/services/service
///         apiAuthentication:
///           serviceAgentIdTokenAuthConfig: {}
/// ```
///
/// ### Ces Toolset Openapi Api Key Config
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const cesAppForToolset = new gcp.ces.App("ces_app_for_toolset", {
///     appId: "app-id",
///     location: "us",
///     description: "App used as parent for CES Toolset example",
///     displayName: "my-app",
///     languageSettings: {
///         defaultLanguageCode: "en-US",
///         supportedLanguageCodes: [
///             "es-ES",
///             "fr-FR",
///         ],
///         enableMultilingualSupport: true,
///         fallbackAction: "escalate",
///     },
///     timeZoneSettings: {
///         timeZone: "America/Los_Angeles",
///     },
/// });
/// const cesToolsetOpenapiApiKeyConfig = new gcp.ces.Toolset("ces_toolset_openapi_api_key_config", {
///     toolsetId: "toolset1",
///     location: "us",
///     app: cesAppForToolset.appId,
///     displayName: "Basic toolset display name",
///     description: "Test description",
///     executionType: "SYNCHRONOUS",
///     openApiToolset: {
///         openApiSchema: `openapi: 3.0.0
/// info:
///   title: My Sample API
///   version: 1.0.0
///   description: A simple API example
/// servers:
///   - url: https://api.example.com/v1
/// paths: {}
/// `,
///         ignoreUnknownFields: false,
///         tlsConfig: {
///             caCerts: [{
///                 displayName: "example",
///                 cert: "ZXhhbXBsZQ==",
///             }],
///         },
///         serviceDirectoryConfig: {
///             service: "projects/example/locations/us/namespaces/namespace/services/service",
///         },
///         apiAuthentication: {
///             apiKeyConfig: {
///                 keyName: "ExampleKey",
///                 apiKeySecretVersion: "projects/fake-project/secrets/fake-secret/versions/version-1",
///                 requestLocation: "HEADER",
///             },
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// ces_app_for_toolset = gcp.ces.App("ces_app_for_toolset",
///     app_id="app-id",
///     location="us",
///     description="App used as parent for CES Toolset example",
///     display_name="my-app",
///     language_settings={
///         "default_language_code": "en-US",
///         "supported_language_codes": [
///             "es-ES",
///             "fr-FR",
///         ],
///         "enable_multilingual_support": True,
///         "fallback_action": "escalate",
///     },
///     time_zone_settings={
///         "time_zone": "America/Los_Angeles",
///     })
/// ces_toolset_openapi_api_key_config = gcp.ces.Toolset("ces_toolset_openapi_api_key_config",
///     toolset_id="toolset1",
///     location="us",
///     app=ces_app_for_toolset.app_id,
///     display_name="Basic toolset display name",
///     description="Test description",
///     execution_type="SYNCHRONOUS",
///     open_api_toolset={
///         "open_api_schema": """openapi: 3.0.0
/// info:
///   title: My Sample API
///   version: 1.0.0
///   description: A simple API example
/// servers:
///   - url: https://api.example.com/v1
/// paths: {}
/// """,
///         "ignore_unknown_fields": False,
///         "tls_config": {
///             "ca_certs": [{
///                 "display_name": "example",
///                 "cert": "ZXhhbXBsZQ==",
///             }],
///         },
///         "service_directory_config": {
///             "service": "projects/example/locations/us/namespaces/namespace/services/service",
///         },
///         "api_authentication": {
///             "api_key_config": {
///                 "key_name": "ExampleKey",
///                 "api_key_secret_version": "projects/fake-project/secrets/fake-secret/versions/version-1",
///                 "request_location": "HEADER",
///             },
///         },
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var cesAppForToolset = new Gcp.Ces.App("ces_app_for_toolset", new()
///     {
///         AppId = "app-id",
///         Location = "us",
///         Description = "App used as parent for CES Toolset example",
///         DisplayName = "my-app",
///         LanguageSettings = new Gcp.Ces.Inputs.AppLanguageSettingsArgs
///         {
///             DefaultLanguageCode = "en-US",
///             SupportedLanguageCodes = new[]
///             {
///                 "es-ES",
///                 "fr-FR",
///             },
///             EnableMultilingualSupport = true,
///             FallbackAction = "escalate",
///         },
///         TimeZoneSettings = new Gcp.Ces.Inputs.AppTimeZoneSettingsArgs
///         {
///             TimeZone = "America/Los_Angeles",
///         },
///     });
///
///     var cesToolsetOpenapiApiKeyConfig = new Gcp.Ces.Toolset("ces_toolset_openapi_api_key_config", new()
///     {
///         ToolsetId = "toolset1",
///         Location = "us",
///         App = cesAppForToolset.AppId,
///         DisplayName = "Basic toolset display name",
///         Description = "Test description",
///         ExecutionType = "SYNCHRONOUS",
///         OpenApiToolset = new Gcp.Ces.Inputs.ToolsetOpenApiToolsetArgs
///         {
///             OpenApiSchema = @"openapi: 3.0.0
/// info:
///   title: My Sample API
///   version: 1.0.0
///   description: A simple API example
/// servers:
///   - url: https://api.example.com/v1
/// paths: {}
/// ",
///             IgnoreUnknownFields = false,
///             TlsConfig = new Gcp.Ces.Inputs.ToolsetOpenApiToolsetTlsConfigArgs
///             {
///                 CaCerts = new[]
///                 {
///                     new Gcp.Ces.Inputs.ToolsetOpenApiToolsetTlsConfigCaCertArgs
///                     {
///                         DisplayName = "example",
///                         Cert = "ZXhhbXBsZQ==",
///                     },
///                 },
///             },
///             ServiceDirectoryConfig = new Gcp.Ces.Inputs.ToolsetOpenApiToolsetServiceDirectoryConfigArgs
///             {
///                 Service = "projects/example/locations/us/namespaces/namespace/services/service",
///             },
///             ApiAuthentication = new Gcp.Ces.Inputs.ToolsetOpenApiToolsetApiAuthenticationArgs
///             {
///                 ApiKeyConfig = new Gcp.Ces.Inputs.ToolsetOpenApiToolsetApiAuthenticationApiKeyConfigArgs
///                 {
///                     KeyName = "ExampleKey",
///                     ApiKeySecretVersion = "projects/fake-project/secrets/fake-secret/versions/version-1",
///                     RequestLocation = "HEADER",
///                 },
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/ces"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cesAppForToolset, err := ces.NewApp(ctx, "ces_app_for_toolset", &ces.AppArgs{
/// 			AppId:       pulumi.String("app-id"),
/// 			Location:    pulumi.String("us"),
/// 			Description: pulumi.String("App used as parent for CES Toolset example"),
/// 			DisplayName: pulumi.String("my-app"),
/// 			LanguageSettings: &ces.AppLanguageSettingsArgs{
/// 				DefaultLanguageCode: pulumi.String("en-US"),
/// 				SupportedLanguageCodes: pulumi.StringArray{
/// 					pulumi.String("es-ES"),
/// 					pulumi.String("fr-FR"),
/// 				},
/// 				EnableMultilingualSupport: pulumi.Bool(true),
/// 				FallbackAction:            pulumi.String("escalate"),
/// 			},
/// 			TimeZoneSettings: &ces.AppTimeZoneSettingsArgs{
/// 				TimeZone: pulumi.String("America/Los_Angeles"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ces.NewToolset(ctx, "ces_toolset_openapi_api_key_config", &ces.ToolsetArgs{
/// 			ToolsetId:     pulumi.String("toolset1"),
/// 			Location:      pulumi.String("us"),
/// 			App:           cesAppForToolset.AppId,
/// 			DisplayName:   pulumi.String("Basic toolset display name"),
/// 			Description:   pulumi.String("Test description"),
/// 			ExecutionType: pulumi.String("SYNCHRONOUS"),
/// 			OpenApiToolset: &ces.ToolsetOpenApiToolsetArgs{
/// 				OpenApiSchema: pulumi.String(`openapi: 3.0.0
/// info:
///   title: My Sample API
///   version: 1.0.0
///   description: A simple API example
/// servers:
///   - url: https://api.example.com/v1
/// paths: {}
/// `),
/// 				IgnoreUnknownFields: pulumi.Bool(false),
/// 				TlsConfig: &ces.ToolsetOpenApiToolsetTlsConfigArgs{
/// 					CaCerts: ces.ToolsetOpenApiToolsetTlsConfigCaCertArray{
/// 						&ces.ToolsetOpenApiToolsetTlsConfigCaCertArgs{
/// 							DisplayName: pulumi.String("example"),
/// 							Cert:        pulumi.String("ZXhhbXBsZQ=="),
/// 						},
/// 					},
/// 				},
/// 				ServiceDirectoryConfig: &ces.ToolsetOpenApiToolsetServiceDirectoryConfigArgs{
/// 					Service: pulumi.String("projects/example/locations/us/namespaces/namespace/services/service"),
/// 				},
/// 				ApiAuthentication: &ces.ToolsetOpenApiToolsetApiAuthenticationArgs{
/// 					ApiKeyConfig: &ces.ToolsetOpenApiToolsetApiAuthenticationApiKeyConfigArgs{
/// 						KeyName:             pulumi.String("ExampleKey"),
/// 						ApiKeySecretVersion: pulumi.String("projects/fake-project/secrets/fake-secret/versions/version-1"),
/// 						RequestLocation:     pulumi.String("HEADER"),
/// 					},
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
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_ces_app" "ces_app_for_toolset" {
///   app_id       = "app-id"
///   location     = "us"
///   description  = "App used as parent for CES Toolset example"
///   display_name = "my-app"
///   language_settings = {
///     default_language_code       = "en-US"
///     supported_language_codes    = ["es-ES", "fr-FR"]
///     enable_multilingual_support = true
///     fallback_action             = "escalate"
///   }
///   time_zone_settings = {
///     time_zone = "America/Los_Angeles"
///   }
/// }
/// resource "gcp_ces_toolset" "ces_toolset_openapi_api_key_config" {
///   toolset_id     = "toolset1"
///   location       = "us"
///   app            = gcp_ces_app.ces_app_for_toolset.app_id
///   display_name   = "Basic toolset display name"
///   description    = "Test description"
///   execution_type = "SYNCHRONOUS"
///   open_api_toolset = {
///     open_api_schema       = "openapi: 3.0.0\ninfo:\n  title: My Sample API\n  version: 1.0.0\n  description: A simple API example\nservers:\n  - url: https://api.example.com/v1\npaths: {}\n"
///     ignore_unknown_fields = false
///     tls_config = {
///       ca_certs = [{
///         "displayName" = "example"
///         "cert"        = "ZXhhbXBsZQ=="
///       }]
///     }
///     service_directory_config = {
///       service = "projects/example/locations/us/namespaces/namespace/services/service"
///     }
///     api_authentication = {
///       api_key_config = {
///         key_name               = "ExampleKey"
///         api_key_secret_version = "projects/fake-project/secrets/fake-secret/versions/version-1"
///         request_location       = "HEADER"
///       }
///     }
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.ces.App;
/// import com.pulumi.gcp.ces.AppArgs;
/// import com.pulumi.gcp.ces.inputs.AppLanguageSettingsArgs;
/// import com.pulumi.gcp.ces.inputs.AppTimeZoneSettingsArgs;
/// import com.pulumi.gcp.ces.Toolset;
/// import com.pulumi.gcp.ces.ToolsetArgs;
/// import com.pulumi.gcp.ces.inputs.ToolsetOpenApiToolsetArgs;
/// import com.pulumi.gcp.ces.inputs.ToolsetOpenApiToolsetTlsConfigArgs;
/// import com.pulumi.gcp.ces.inputs.ToolsetOpenApiToolsetTlsConfigCaCertArgs;
/// import com.pulumi.gcp.ces.inputs.ToolsetOpenApiToolsetServiceDirectoryConfigArgs;
/// import com.pulumi.gcp.ces.inputs.ToolsetOpenApiToolsetApiAuthenticationArgs;
/// import com.pulumi.gcp.ces.inputs.ToolsetOpenApiToolsetApiAuthenticationApiKeyConfigArgs;
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
///         var cesAppForToolset = new App("cesAppForToolset", AppArgs.builder()
///             .appId("app-id")
///             .location("us")
///             .description("App used as parent for CES Toolset example")
///             .displayName("my-app")
///             .languageSettings(AppLanguageSettingsArgs.builder()
///                 .defaultLanguageCode("en-US")
///                 .supportedLanguageCodes(
///                     "es-ES",
///                     "fr-FR")
///                 .enableMultilingualSupport(true)
///                 .fallbackAction("escalate")
///                 .build())
///             .timeZoneSettings(AppTimeZoneSettingsArgs.builder()
///                 .timeZone("America/Los_Angeles")
///                 .build())
///             .build());
///
///         var cesToolsetOpenapiApiKeyConfig = new Toolset("cesToolsetOpenapiApiKeyConfig", ToolsetArgs.builder()
///             .toolsetId("toolset1")
///             .location("us")
///             .app(cesAppForToolset.appId())
///             .displayName("Basic toolset display name")
///             .description("Test description")
///             .executionType("SYNCHRONOUS")
///             .openApiToolset(ToolsetOpenApiToolsetArgs.builder()
///                 .openApiSchema("""
/// openapi: 3.0.0
/// info:
///   title: My Sample API
///   version: 1.0.0
///   description: A simple API example
/// servers:
///   - url: https://api.example.com/v1
/// paths: {}
///                 """)
///                 .ignoreUnknownFields(false)
///                 .tlsConfig(ToolsetOpenApiToolsetTlsConfigArgs.builder()
///                     .caCerts(ToolsetOpenApiToolsetTlsConfigCaCertArgs.builder()
///                         .displayName("example")
///                         .cert("ZXhhbXBsZQ==")
///                         .build())
///                     .build())
///                 .serviceDirectoryConfig(ToolsetOpenApiToolsetServiceDirectoryConfigArgs.builder()
///                     .service("projects/example/locations/us/namespaces/namespace/services/service")
///                     .build())
///                 .apiAuthentication(ToolsetOpenApiToolsetApiAuthenticationArgs.builder()
///                     .apiKeyConfig(ToolsetOpenApiToolsetApiAuthenticationApiKeyConfigArgs.builder()
///                         .keyName("ExampleKey")
///                         .apiKeySecretVersion("projects/fake-project/secrets/fake-secret/versions/version-1")
///                         .requestLocation("HEADER")
///                         .build())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   cesAppForToolset:
///     type: gcp:ces:App
///     name: ces_app_for_toolset
///     properties:
///       appId: app-id
///       location: us
///       description: App used as parent for CES Toolset example
///       displayName: my-app
///       languageSettings:
///         defaultLanguageCode: en-US
///         supportedLanguageCodes:
///           - es-ES
///           - fr-FR
///         enableMultilingualSupport: true
///         fallbackAction: escalate
///       timeZoneSettings:
///         timeZone: America/Los_Angeles
///   cesToolsetOpenapiApiKeyConfig:
///     type: gcp:ces:Toolset
///     name: ces_toolset_openapi_api_key_config
///     properties:
///       toolsetId: toolset1
///       location: us
///       app: ${cesAppForToolset.appId}
///       displayName: Basic toolset display name
///       description: Test description
///       executionType: SYNCHRONOUS
///       openApiToolset:
///         openApiSchema: |
///           openapi: 3.0.0
///           info:
///             title: My Sample API
///             version: 1.0.0
///             description: A simple API example
///           servers:
///             - url: https://api.example.com/v1
///           paths: {}
///         ignoreUnknownFields: false
///         tlsConfig:
///           caCerts:
///             - displayName: example
///               cert: ZXhhbXBsZQ==
///         serviceDirectoryConfig:
///           service: projects/example/locations/us/namespaces/namespace/services/service
///         apiAuthentication:
///           apiKeyConfig:
///             keyName: ExampleKey
///             apiKeySecretVersion: projects/fake-project/secrets/fake-secret/versions/version-1
///             requestLocation: HEADER
/// ```
///
/// ### Ces Toolset Bearer Token Config
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const cesAppForToolset = new gcp.ces.App("ces_app_for_toolset", {
///     appId: "app-id",
///     location: "us",
///     description: "App used as parent for CES Toolset example",
///     displayName: "my-app",
///     languageSettings: {
///         defaultLanguageCode: "en-US",
///         supportedLanguageCodes: [
///             "es-ES",
///             "fr-FR",
///         ],
///         enableMultilingualSupport: true,
///         fallbackAction: "escalate",
///     },
///     timeZoneSettings: {
///         timeZone: "America/Los_Angeles",
///     },
/// });
/// const cesToolsetBearerTokenConfig = new gcp.ces.Toolset("ces_toolset_bearer_token_config", {
///     toolsetId: "toolset1",
///     location: "us",
///     app: cesAppForToolset.appId,
///     displayName: "Basic toolset display name",
///     openApiToolset: {
///         openApiSchema: `openapi: 3.0.0
/// info:
///   title: My Sample API
///   version: 1.0.0
///   description: A simple API example
/// servers:
///   - url: https://api.example.com/v1
/// paths: {}
/// `,
///         ignoreUnknownFields: false,
///         tlsConfig: {
///             caCerts: [{
///                 displayName: "example",
///                 cert: "ZXhhbXBsZQ==",
///             }],
///         },
///         serviceDirectoryConfig: {
///             service: "projects/example/locations/us/namespaces/namespace/services/service",
///         },
///         apiAuthentication: {
///             bearerTokenConfig: {
///                 token: "$context.variables.my_ces_toolset_auth_token",
///             },
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// ces_app_for_toolset = gcp.ces.App("ces_app_for_toolset",
///     app_id="app-id",
///     location="us",
///     description="App used as parent for CES Toolset example",
///     display_name="my-app",
///     language_settings={
///         "default_language_code": "en-US",
///         "supported_language_codes": [
///             "es-ES",
///             "fr-FR",
///         ],
///         "enable_multilingual_support": True,
///         "fallback_action": "escalate",
///     },
///     time_zone_settings={
///         "time_zone": "America/Los_Angeles",
///     })
/// ces_toolset_bearer_token_config = gcp.ces.Toolset("ces_toolset_bearer_token_config",
///     toolset_id="toolset1",
///     location="us",
///     app=ces_app_for_toolset.app_id,
///     display_name="Basic toolset display name",
///     open_api_toolset={
///         "open_api_schema": """openapi: 3.0.0
/// info:
///   title: My Sample API
///   version: 1.0.0
///   description: A simple API example
/// servers:
///   - url: https://api.example.com/v1
/// paths: {}
/// """,
///         "ignore_unknown_fields": False,
///         "tls_config": {
///             "ca_certs": [{
///                 "display_name": "example",
///                 "cert": "ZXhhbXBsZQ==",
///             }],
///         },
///         "service_directory_config": {
///             "service": "projects/example/locations/us/namespaces/namespace/services/service",
///         },
///         "api_authentication": {
///             "bearer_token_config": {
///                 "token": "$context.variables.my_ces_toolset_auth_token",
///             },
///         },
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var cesAppForToolset = new Gcp.Ces.App("ces_app_for_toolset", new()
///     {
///         AppId = "app-id",
///         Location = "us",
///         Description = "App used as parent for CES Toolset example",
///         DisplayName = "my-app",
///         LanguageSettings = new Gcp.Ces.Inputs.AppLanguageSettingsArgs
///         {
///             DefaultLanguageCode = "en-US",
///             SupportedLanguageCodes = new[]
///             {
///                 "es-ES",
///                 "fr-FR",
///             },
///             EnableMultilingualSupport = true,
///             FallbackAction = "escalate",
///         },
///         TimeZoneSettings = new Gcp.Ces.Inputs.AppTimeZoneSettingsArgs
///         {
///             TimeZone = "America/Los_Angeles",
///         },
///     });
///
///     var cesToolsetBearerTokenConfig = new Gcp.Ces.Toolset("ces_toolset_bearer_token_config", new()
///     {
///         ToolsetId = "toolset1",
///         Location = "us",
///         App = cesAppForToolset.AppId,
///         DisplayName = "Basic toolset display name",
///         OpenApiToolset = new Gcp.Ces.Inputs.ToolsetOpenApiToolsetArgs
///         {
///             OpenApiSchema = @"openapi: 3.0.0
/// info:
///   title: My Sample API
///   version: 1.0.0
///   description: A simple API example
/// servers:
///   - url: https://api.example.com/v1
/// paths: {}
/// ",
///             IgnoreUnknownFields = false,
///             TlsConfig = new Gcp.Ces.Inputs.ToolsetOpenApiToolsetTlsConfigArgs
///             {
///                 CaCerts = new[]
///                 {
///                     new Gcp.Ces.Inputs.ToolsetOpenApiToolsetTlsConfigCaCertArgs
///                     {
///                         DisplayName = "example",
///                         Cert = "ZXhhbXBsZQ==",
///                     },
///                 },
///             },
///             ServiceDirectoryConfig = new Gcp.Ces.Inputs.ToolsetOpenApiToolsetServiceDirectoryConfigArgs
///             {
///                 Service = "projects/example/locations/us/namespaces/namespace/services/service",
///             },
///             ApiAuthentication = new Gcp.Ces.Inputs.ToolsetOpenApiToolsetApiAuthenticationArgs
///             {
///                 BearerTokenConfig = new Gcp.Ces.Inputs.ToolsetOpenApiToolsetApiAuthenticationBearerTokenConfigArgs
///                 {
///                     Token = "$context.variables.my_ces_toolset_auth_token",
///                 },
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/ces"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cesAppForToolset, err := ces.NewApp(ctx, "ces_app_for_toolset", &ces.AppArgs{
/// 			AppId:       pulumi.String("app-id"),
/// 			Location:    pulumi.String("us"),
/// 			Description: pulumi.String("App used as parent for CES Toolset example"),
/// 			DisplayName: pulumi.String("my-app"),
/// 			LanguageSettings: &ces.AppLanguageSettingsArgs{
/// 				DefaultLanguageCode: pulumi.String("en-US"),
/// 				SupportedLanguageCodes: pulumi.StringArray{
/// 					pulumi.String("es-ES"),
/// 					pulumi.String("fr-FR"),
/// 				},
/// 				EnableMultilingualSupport: pulumi.Bool(true),
/// 				FallbackAction:            pulumi.String("escalate"),
/// 			},
/// 			TimeZoneSettings: &ces.AppTimeZoneSettingsArgs{
/// 				TimeZone: pulumi.String("America/Los_Angeles"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ces.NewToolset(ctx, "ces_toolset_bearer_token_config", &ces.ToolsetArgs{
/// 			ToolsetId:   pulumi.String("toolset1"),
/// 			Location:    pulumi.String("us"),
/// 			App:         cesAppForToolset.AppId,
/// 			DisplayName: pulumi.String("Basic toolset display name"),
/// 			OpenApiToolset: &ces.ToolsetOpenApiToolsetArgs{
/// 				OpenApiSchema: pulumi.String(`openapi: 3.0.0
/// info:
///   title: My Sample API
///   version: 1.0.0
///   description: A simple API example
/// servers:
///   - url: https://api.example.com/v1
/// paths: {}
/// `),
/// 				IgnoreUnknownFields: pulumi.Bool(false),
/// 				TlsConfig: &ces.ToolsetOpenApiToolsetTlsConfigArgs{
/// 					CaCerts: ces.ToolsetOpenApiToolsetTlsConfigCaCertArray{
/// 						&ces.ToolsetOpenApiToolsetTlsConfigCaCertArgs{
/// 							DisplayName: pulumi.String("example"),
/// 							Cert:        pulumi.String("ZXhhbXBsZQ=="),
/// 						},
/// 					},
/// 				},
/// 				ServiceDirectoryConfig: &ces.ToolsetOpenApiToolsetServiceDirectoryConfigArgs{
/// 					Service: pulumi.String("projects/example/locations/us/namespaces/namespace/services/service"),
/// 				},
/// 				ApiAuthentication: &ces.ToolsetOpenApiToolsetApiAuthenticationArgs{
/// 					BearerTokenConfig: &ces.ToolsetOpenApiToolsetApiAuthenticationBearerTokenConfigArgs{
/// 						Token: pulumi.String("$context.variables.my_ces_toolset_auth_token"),
/// 					},
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
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_ces_app" "ces_app_for_toolset" {
///   app_id       = "app-id"
///   location     = "us"
///   description  = "App used as parent for CES Toolset example"
///   display_name = "my-app"
///   language_settings = {
///     default_language_code       = "en-US"
///     supported_language_codes    = ["es-ES", "fr-FR"]
///     enable_multilingual_support = true
///     fallback_action             = "escalate"
///   }
///   time_zone_settings = {
///     time_zone = "America/Los_Angeles"
///   }
/// }
/// resource "gcp_ces_toolset" "ces_toolset_bearer_token_config" {
///   toolset_id   = "toolset1"
///   location     = "us"
///   app          = gcp_ces_app.ces_app_for_toolset.app_id
///   display_name = "Basic toolset display name"
///   open_api_toolset = {
///     open_api_schema       = "openapi: 3.0.0\ninfo:\n  title: My Sample API\n  version: 1.0.0\n  description: A simple API example\nservers:\n  - url: https://api.example.com/v1\npaths: {}\n"
///     ignore_unknown_fields = false
///     tls_config = {
///       ca_certs = [{
///         "displayName" = "example"
///         "cert"        = "ZXhhbXBsZQ=="
///       }]
///     }
///     service_directory_config = {
///       service = "projects/example/locations/us/namespaces/namespace/services/service"
///     }
///     api_authentication = {
///       bearer_token_config = {
///         token = "$context.variables.my_ces_toolset_auth_token"
///       }
///     }
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.ces.App;
/// import com.pulumi.gcp.ces.AppArgs;
/// import com.pulumi.gcp.ces.inputs.AppLanguageSettingsArgs;
/// import com.pulumi.gcp.ces.inputs.AppTimeZoneSettingsArgs;
/// import com.pulumi.gcp.ces.Toolset;
/// import com.pulumi.gcp.ces.ToolsetArgs;
/// import com.pulumi.gcp.ces.inputs.ToolsetOpenApiToolsetArgs;
/// import com.pulumi.gcp.ces.inputs.ToolsetOpenApiToolsetTlsConfigArgs;
/// import com.pulumi.gcp.ces.inputs.ToolsetOpenApiToolsetTlsConfigCaCertArgs;
/// import com.pulumi.gcp.ces.inputs.ToolsetOpenApiToolsetServiceDirectoryConfigArgs;
/// import com.pulumi.gcp.ces.inputs.ToolsetOpenApiToolsetApiAuthenticationArgs;
/// import com.pulumi.gcp.ces.inputs.ToolsetOpenApiToolsetApiAuthenticationBearerTokenConfigArgs;
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
///         var cesAppForToolset = new App("cesAppForToolset", AppArgs.builder()
///             .appId("app-id")
///             .location("us")
///             .description("App used as parent for CES Toolset example")
///             .displayName("my-app")
///             .languageSettings(AppLanguageSettingsArgs.builder()
///                 .defaultLanguageCode("en-US")
///                 .supportedLanguageCodes(
///                     "es-ES",
///                     "fr-FR")
///                 .enableMultilingualSupport(true)
///                 .fallbackAction("escalate")
///                 .build())
///             .timeZoneSettings(AppTimeZoneSettingsArgs.builder()
///                 .timeZone("America/Los_Angeles")
///                 .build())
///             .build());
///
///         var cesToolsetBearerTokenConfig = new Toolset("cesToolsetBearerTokenConfig", ToolsetArgs.builder()
///             .toolsetId("toolset1")
///             .location("us")
///             .app(cesAppForToolset.appId())
///             .displayName("Basic toolset display name")
///             .openApiToolset(ToolsetOpenApiToolsetArgs.builder()
///                 .openApiSchema("""
/// openapi: 3.0.0
/// info:
///   title: My Sample API
///   version: 1.0.0
///   description: A simple API example
/// servers:
///   - url: https://api.example.com/v1
/// paths: {}
///                 """)
///                 .ignoreUnknownFields(false)
///                 .tlsConfig(ToolsetOpenApiToolsetTlsConfigArgs.builder()
///                     .caCerts(ToolsetOpenApiToolsetTlsConfigCaCertArgs.builder()
///                         .displayName("example")
///                         .cert("ZXhhbXBsZQ==")
///                         .build())
///                     .build())
///                 .serviceDirectoryConfig(ToolsetOpenApiToolsetServiceDirectoryConfigArgs.builder()
///                     .service("projects/example/locations/us/namespaces/namespace/services/service")
///                     .build())
///                 .apiAuthentication(ToolsetOpenApiToolsetApiAuthenticationArgs.builder()
///                     .bearerTokenConfig(ToolsetOpenApiToolsetApiAuthenticationBearerTokenConfigArgs.builder()
///                         .token("$context.variables.my_ces_toolset_auth_token")
///                         .build())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   cesAppForToolset:
///     type: gcp:ces:App
///     name: ces_app_for_toolset
///     properties:
///       appId: app-id
///       location: us
///       description: App used as parent for CES Toolset example
///       displayName: my-app
///       languageSettings:
///         defaultLanguageCode: en-US
///         supportedLanguageCodes:
///           - es-ES
///           - fr-FR
///         enableMultilingualSupport: true
///         fallbackAction: escalate
///       timeZoneSettings:
///         timeZone: America/Los_Angeles
///   cesToolsetBearerTokenConfig:
///     type: gcp:ces:Toolset
///     name: ces_toolset_bearer_token_config
///     properties:
///       toolsetId: toolset1
///       location: us
///       app: ${cesAppForToolset.appId}
///       displayName: Basic toolset display name
///       openApiToolset:
///         openApiSchema: |
///           openapi: 3.0.0
///           info:
///             title: My Sample API
///             version: 1.0.0
///             description: A simple API example
///           servers:
///             - url: https://api.example.com/v1
///           paths: {}
///         ignoreUnknownFields: false
///         tlsConfig:
///           caCerts:
///             - displayName: example
///               cert: ZXhhbXBsZQ==
///         serviceDirectoryConfig:
///           service: projects/example/locations/us/namespaces/namespace/services/service
///         apiAuthentication:
///           bearerTokenConfig:
///             token: $context.variables.my_ces_toolset_auth_token
/// ```
///
/// ### Ces Toolset Mcp Service Account Auth Config
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const cesAppForToolset = new gcp.ces.App("ces_app_for_toolset", {
///     appId: "app-id",
///     location: "us",
///     description: "App used as parent for CES Toolset example",
///     displayName: "my-app",
///     languageSettings: {
///         defaultLanguageCode: "en-US",
///         supportedLanguageCodes: [
///             "es-ES",
///             "fr-FR",
///         ],
///         enableMultilingualSupport: true,
///         fallbackAction: "escalate",
///     },
///     timeZoneSettings: {
///         timeZone: "America/Los_Angeles",
///     },
/// });
/// const cesToolsetMcpServiceAccountAuthConfig = new gcp.ces.Toolset("ces_toolset_mcp_service_account_auth_config", {
///     toolsetId: "toolset1",
///     location: "us",
///     app: cesAppForToolset.appId,
///     displayName: "Basic toolset display name",
///     mcpToolset: {
///         serverAddress: "https://api.example.com/mcp/",
///         tlsConfig: {
///             caCerts: [{
///                 displayName: "example",
///                 cert: "ZXhhbXBsZQ==",
///             }],
///         },
///         serviceDirectoryConfig: {
///             service: "projects/example/locations/us/namespaces/namespace/services/service",
///         },
///         apiAuthentication: {
///             serviceAccountAuthConfig: {
///                 serviceAccount: "my@service-account.com",
///                 scopes: ["scope1"],
///             },
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// ces_app_for_toolset = gcp.ces.App("ces_app_for_toolset",
///     app_id="app-id",
///     location="us",
///     description="App used as parent for CES Toolset example",
///     display_name="my-app",
///     language_settings={
///         "default_language_code": "en-US",
///         "supported_language_codes": [
///             "es-ES",
///             "fr-FR",
///         ],
///         "enable_multilingual_support": True,
///         "fallback_action": "escalate",
///     },
///     time_zone_settings={
///         "time_zone": "America/Los_Angeles",
///     })
/// ces_toolset_mcp_service_account_auth_config = gcp.ces.Toolset("ces_toolset_mcp_service_account_auth_config",
///     toolset_id="toolset1",
///     location="us",
///     app=ces_app_for_toolset.app_id,
///     display_name="Basic toolset display name",
///     mcp_toolset={
///         "server_address": "https://api.example.com/mcp/",
///         "tls_config": {
///             "ca_certs": [{
///                 "display_name": "example",
///                 "cert": "ZXhhbXBsZQ==",
///             }],
///         },
///         "service_directory_config": {
///             "service": "projects/example/locations/us/namespaces/namespace/services/service",
///         },
///         "api_authentication": {
///             "service_account_auth_config": {
///                 "service_account": "my@service-account.com",
///                 "scopes": ["scope1"],
///             },
///         },
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var cesAppForToolset = new Gcp.Ces.App("ces_app_for_toolset", new()
///     {
///         AppId = "app-id",
///         Location = "us",
///         Description = "App used as parent for CES Toolset example",
///         DisplayName = "my-app",
///         LanguageSettings = new Gcp.Ces.Inputs.AppLanguageSettingsArgs
///         {
///             DefaultLanguageCode = "en-US",
///             SupportedLanguageCodes = new[]
///             {
///                 "es-ES",
///                 "fr-FR",
///             },
///             EnableMultilingualSupport = true,
///             FallbackAction = "escalate",
///         },
///         TimeZoneSettings = new Gcp.Ces.Inputs.AppTimeZoneSettingsArgs
///         {
///             TimeZone = "America/Los_Angeles",
///         },
///     });
///
///     var cesToolsetMcpServiceAccountAuthConfig = new Gcp.Ces.Toolset("ces_toolset_mcp_service_account_auth_config", new()
///     {
///         ToolsetId = "toolset1",
///         Location = "us",
///         App = cesAppForToolset.AppId,
///         DisplayName = "Basic toolset display name",
///         McpToolset = new Gcp.Ces.Inputs.ToolsetMcpToolsetArgs
///         {
///             ServerAddress = "https://api.example.com/mcp/",
///             TlsConfig = new Gcp.Ces.Inputs.ToolsetMcpToolsetTlsConfigArgs
///             {
///                 CaCerts = new[]
///                 {
///                     new Gcp.Ces.Inputs.ToolsetMcpToolsetTlsConfigCaCertArgs
///                     {
///                         DisplayName = "example",
///                         Cert = "ZXhhbXBsZQ==",
///                     },
///                 },
///             },
///             ServiceDirectoryConfig = new Gcp.Ces.Inputs.ToolsetMcpToolsetServiceDirectoryConfigArgs
///             {
///                 Service = "projects/example/locations/us/namespaces/namespace/services/service",
///             },
///             ApiAuthentication = new Gcp.Ces.Inputs.ToolsetMcpToolsetApiAuthenticationArgs
///             {
///                 ServiceAccountAuthConfig = new Gcp.Ces.Inputs.ToolsetMcpToolsetApiAuthenticationServiceAccountAuthConfigArgs
///                 {
///                     ServiceAccount = "my@service-account.com",
///                     Scopes = new[]
///                     {
///                         "scope1",
///                     },
///                 },
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/ces"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cesAppForToolset, err := ces.NewApp(ctx, "ces_app_for_toolset", &ces.AppArgs{
/// 			AppId:       pulumi.String("app-id"),
/// 			Location:    pulumi.String("us"),
/// 			Description: pulumi.String("App used as parent for CES Toolset example"),
/// 			DisplayName: pulumi.String("my-app"),
/// 			LanguageSettings: &ces.AppLanguageSettingsArgs{
/// 				DefaultLanguageCode: pulumi.String("en-US"),
/// 				SupportedLanguageCodes: pulumi.StringArray{
/// 					pulumi.String("es-ES"),
/// 					pulumi.String("fr-FR"),
/// 				},
/// 				EnableMultilingualSupport: pulumi.Bool(true),
/// 				FallbackAction:            pulumi.String("escalate"),
/// 			},
/// 			TimeZoneSettings: &ces.AppTimeZoneSettingsArgs{
/// 				TimeZone: pulumi.String("America/Los_Angeles"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ces.NewToolset(ctx, "ces_toolset_mcp_service_account_auth_config", &ces.ToolsetArgs{
/// 			ToolsetId:   pulumi.String("toolset1"),
/// 			Location:    pulumi.String("us"),
/// 			App:         cesAppForToolset.AppId,
/// 			DisplayName: pulumi.String("Basic toolset display name"),
/// 			McpToolset: &ces.ToolsetMcpToolsetArgs{
/// 				ServerAddress: pulumi.String("https://api.example.com/mcp/"),
/// 				TlsConfig: &ces.ToolsetMcpToolsetTlsConfigArgs{
/// 					CaCerts: ces.ToolsetMcpToolsetTlsConfigCaCertArray{
/// 						&ces.ToolsetMcpToolsetTlsConfigCaCertArgs{
/// 							DisplayName: pulumi.String("example"),
/// 							Cert:        pulumi.String("ZXhhbXBsZQ=="),
/// 						},
/// 					},
/// 				},
/// 				ServiceDirectoryConfig: &ces.ToolsetMcpToolsetServiceDirectoryConfigArgs{
/// 					Service: pulumi.String("projects/example/locations/us/namespaces/namespace/services/service"),
/// 				},
/// 				ApiAuthentication: &ces.ToolsetMcpToolsetApiAuthenticationArgs{
/// 					ServiceAccountAuthConfig: &ces.ToolsetMcpToolsetApiAuthenticationServiceAccountAuthConfigArgs{
/// 						ServiceAccount: pulumi.String("my@service-account.com"),
/// 						Scopes: pulumi.StringArray{
/// 							pulumi.String("scope1"),
/// 						},
/// 					},
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
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_ces_app" "ces_app_for_toolset" {
///   app_id       = "app-id"
///   location     = "us"
///   description  = "App used as parent for CES Toolset example"
///   display_name = "my-app"
///   language_settings = {
///     default_language_code       = "en-US"
///     supported_language_codes    = ["es-ES", "fr-FR"]
///     enable_multilingual_support = true
///     fallback_action             = "escalate"
///   }
///   time_zone_settings = {
///     time_zone = "America/Los_Angeles"
///   }
/// }
/// resource "gcp_ces_toolset" "ces_toolset_mcp_service_account_auth_config" {
///   toolset_id   = "toolset1"
///   location     = "us"
///   app          = gcp_ces_app.ces_app_for_toolset.app_id
///   display_name = "Basic toolset display name"
///   mcp_toolset = {
///     server_address = "https://api.example.com/mcp/"
///     tls_config = {
///       ca_certs = [{
///         "displayName" = "example"
///         "cert"        = "ZXhhbXBsZQ=="
///       }]
///     }
///     service_directory_config = {
///       service = "projects/example/locations/us/namespaces/namespace/services/service"
///     }
///     api_authentication = {
///       service_account_auth_config = {
///         service_account = "my@service-account.com"
///         scopes          = ["scope1"]
///       }
///     }
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.ces.App;
/// import com.pulumi.gcp.ces.AppArgs;
/// import com.pulumi.gcp.ces.inputs.AppLanguageSettingsArgs;
/// import com.pulumi.gcp.ces.inputs.AppTimeZoneSettingsArgs;
/// import com.pulumi.gcp.ces.Toolset;
/// import com.pulumi.gcp.ces.ToolsetArgs;
/// import com.pulumi.gcp.ces.inputs.ToolsetMcpToolsetArgs;
/// import com.pulumi.gcp.ces.inputs.ToolsetMcpToolsetTlsConfigArgs;
/// import com.pulumi.gcp.ces.inputs.ToolsetMcpToolsetTlsConfigCaCertArgs;
/// import com.pulumi.gcp.ces.inputs.ToolsetMcpToolsetServiceDirectoryConfigArgs;
/// import com.pulumi.gcp.ces.inputs.ToolsetMcpToolsetApiAuthenticationArgs;
/// import com.pulumi.gcp.ces.inputs.ToolsetMcpToolsetApiAuthenticationServiceAccountAuthConfigArgs;
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
///         var cesAppForToolset = new App("cesAppForToolset", AppArgs.builder()
///             .appId("app-id")
///             .location("us")
///             .description("App used as parent for CES Toolset example")
///             .displayName("my-app")
///             .languageSettings(AppLanguageSettingsArgs.builder()
///                 .defaultLanguageCode("en-US")
///                 .supportedLanguageCodes(
///                     "es-ES",
///                     "fr-FR")
///                 .enableMultilingualSupport(true)
///                 .fallbackAction("escalate")
///                 .build())
///             .timeZoneSettings(AppTimeZoneSettingsArgs.builder()
///                 .timeZone("America/Los_Angeles")
///                 .build())
///             .build());
///
///         var cesToolsetMcpServiceAccountAuthConfig = new Toolset("cesToolsetMcpServiceAccountAuthConfig", ToolsetArgs.builder()
///             .toolsetId("toolset1")
///             .location("us")
///             .app(cesAppForToolset.appId())
///             .displayName("Basic toolset display name")
///             .mcpToolset(ToolsetMcpToolsetArgs.builder()
///                 .serverAddress("https://api.example.com/mcp/")
///                 .tlsConfig(ToolsetMcpToolsetTlsConfigArgs.builder()
///                     .caCerts(ToolsetMcpToolsetTlsConfigCaCertArgs.builder()
///                         .displayName("example")
///                         .cert("ZXhhbXBsZQ==")
///                         .build())
///                     .build())
///                 .serviceDirectoryConfig(ToolsetMcpToolsetServiceDirectoryConfigArgs.builder()
///                     .service("projects/example/locations/us/namespaces/namespace/services/service")
///                     .build())
///                 .apiAuthentication(ToolsetMcpToolsetApiAuthenticationArgs.builder()
///                     .serviceAccountAuthConfig(ToolsetMcpToolsetApiAuthenticationServiceAccountAuthConfigArgs.builder()
///                         .serviceAccount("my@service-account.com")
///                         .scopes("scope1")
///                         .build())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   cesAppForToolset:
///     type: gcp:ces:App
///     name: ces_app_for_toolset
///     properties:
///       appId: app-id
///       location: us
///       description: App used as parent for CES Toolset example
///       displayName: my-app
///       languageSettings:
///         defaultLanguageCode: en-US
///         supportedLanguageCodes:
///           - es-ES
///           - fr-FR
///         enableMultilingualSupport: true
///         fallbackAction: escalate
///       timeZoneSettings:
///         timeZone: America/Los_Angeles
///   cesToolsetMcpServiceAccountAuthConfig:
///     type: gcp:ces:Toolset
///     name: ces_toolset_mcp_service_account_auth_config
///     properties:
///       toolsetId: toolset1
///       location: us
///       app: ${cesAppForToolset.appId}
///       displayName: Basic toolset display name
///       mcpToolset:
///         serverAddress: https://api.example.com/mcp/
///         tlsConfig:
///           caCerts:
///             - displayName: example
///               cert: ZXhhbXBsZQ==
///         serviceDirectoryConfig:
///           service: projects/example/locations/us/namespaces/namespace/services/service
///         apiAuthentication:
///           serviceAccountAuthConfig:
///             serviceAccount: my@service-account.com
///             scopes:
///               - scope1
/// ```
///
/// ### Ces Toolset Mcp Oauth Config
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const cesAppForToolset = new gcp.ces.App("ces_app_for_toolset", {
///     appId: "app-id",
///     location: "us",
///     description: "App used as parent for CES Toolset example",
///     displayName: "my-app",
///     languageSettings: {
///         defaultLanguageCode: "en-US",
///         supportedLanguageCodes: [
///             "es-ES",
///             "fr-FR",
///         ],
///         enableMultilingualSupport: true,
///         fallbackAction: "escalate",
///     },
///     timeZoneSettings: {
///         timeZone: "America/Los_Angeles",
///     },
/// });
/// const cesToolsetMcpOauthConfig = new gcp.ces.Toolset("ces_toolset_mcp_oauth_config", {
///     toolsetId: "toolset1",
///     location: "us",
///     app: cesAppForToolset.appId,
///     displayName: "Basic toolset display name",
///     mcpToolset: {
///         serverAddress: "https://api.example.com/mcp/",
///         tlsConfig: {
///             caCerts: [{
///                 displayName: "example",
///                 cert: "ZXhhbXBsZQ==",
///             }],
///         },
///         serviceDirectoryConfig: {
///             service: "projects/example/locations/us/namespaces/namespace/services/service",
///         },
///         apiAuthentication: {
///             oauthConfig: {
///                 oauthGrantType: "CLIENT_CREDENTIAL",
///                 clientId: "example_client_id",
///                 clientSecretVersion: "projects/fake-project/secrets/fake-secret/versions/version1",
///                 tokenEndpoint: "123",
///                 scopes: ["scope1"],
///             },
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// ces_app_for_toolset = gcp.ces.App("ces_app_for_toolset",
///     app_id="app-id",
///     location="us",
///     description="App used as parent for CES Toolset example",
///     display_name="my-app",
///     language_settings={
///         "default_language_code": "en-US",
///         "supported_language_codes": [
///             "es-ES",
///             "fr-FR",
///         ],
///         "enable_multilingual_support": True,
///         "fallback_action": "escalate",
///     },
///     time_zone_settings={
///         "time_zone": "America/Los_Angeles",
///     })
/// ces_toolset_mcp_oauth_config = gcp.ces.Toolset("ces_toolset_mcp_oauth_config",
///     toolset_id="toolset1",
///     location="us",
///     app=ces_app_for_toolset.app_id,
///     display_name="Basic toolset display name",
///     mcp_toolset={
///         "server_address": "https://api.example.com/mcp/",
///         "tls_config": {
///             "ca_certs": [{
///                 "display_name": "example",
///                 "cert": "ZXhhbXBsZQ==",
///             }],
///         },
///         "service_directory_config": {
///             "service": "projects/example/locations/us/namespaces/namespace/services/service",
///         },
///         "api_authentication": {
///             "oauth_config": {
///                 "oauth_grant_type": "CLIENT_CREDENTIAL",
///                 "client_id": "example_client_id",
///                 "client_secret_version": "projects/fake-project/secrets/fake-secret/versions/version1",
///                 "token_endpoint": "123",
///                 "scopes": ["scope1"],
///             },
///         },
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var cesAppForToolset = new Gcp.Ces.App("ces_app_for_toolset", new()
///     {
///         AppId = "app-id",
///         Location = "us",
///         Description = "App used as parent for CES Toolset example",
///         DisplayName = "my-app",
///         LanguageSettings = new Gcp.Ces.Inputs.AppLanguageSettingsArgs
///         {
///             DefaultLanguageCode = "en-US",
///             SupportedLanguageCodes = new[]
///             {
///                 "es-ES",
///                 "fr-FR",
///             },
///             EnableMultilingualSupport = true,
///             FallbackAction = "escalate",
///         },
///         TimeZoneSettings = new Gcp.Ces.Inputs.AppTimeZoneSettingsArgs
///         {
///             TimeZone = "America/Los_Angeles",
///         },
///     });
///
///     var cesToolsetMcpOauthConfig = new Gcp.Ces.Toolset("ces_toolset_mcp_oauth_config", new()
///     {
///         ToolsetId = "toolset1",
///         Location = "us",
///         App = cesAppForToolset.AppId,
///         DisplayName = "Basic toolset display name",
///         McpToolset = new Gcp.Ces.Inputs.ToolsetMcpToolsetArgs
///         {
///             ServerAddress = "https://api.example.com/mcp/",
///             TlsConfig = new Gcp.Ces.Inputs.ToolsetMcpToolsetTlsConfigArgs
///             {
///                 CaCerts = new[]
///                 {
///                     new Gcp.Ces.Inputs.ToolsetMcpToolsetTlsConfigCaCertArgs
///                     {
///                         DisplayName = "example",
///                         Cert = "ZXhhbXBsZQ==",
///                     },
///                 },
///             },
///             ServiceDirectoryConfig = new Gcp.Ces.Inputs.ToolsetMcpToolsetServiceDirectoryConfigArgs
///             {
///                 Service = "projects/example/locations/us/namespaces/namespace/services/service",
///             },
///             ApiAuthentication = new Gcp.Ces.Inputs.ToolsetMcpToolsetApiAuthenticationArgs
///             {
///                 OauthConfig = new Gcp.Ces.Inputs.ToolsetMcpToolsetApiAuthenticationOauthConfigArgs
///                 {
///                     OauthGrantType = "CLIENT_CREDENTIAL",
///                     ClientId = "example_client_id",
///                     ClientSecretVersion = "projects/fake-project/secrets/fake-secret/versions/version1",
///                     TokenEndpoint = "123",
///                     Scopes = new[]
///                     {
///                         "scope1",
///                     },
///                 },
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/ces"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cesAppForToolset, err := ces.NewApp(ctx, "ces_app_for_toolset", &ces.AppArgs{
/// 			AppId:       pulumi.String("app-id"),
/// 			Location:    pulumi.String("us"),
/// 			Description: pulumi.String("App used as parent for CES Toolset example"),
/// 			DisplayName: pulumi.String("my-app"),
/// 			LanguageSettings: &ces.AppLanguageSettingsArgs{
/// 				DefaultLanguageCode: pulumi.String("en-US"),
/// 				SupportedLanguageCodes: pulumi.StringArray{
/// 					pulumi.String("es-ES"),
/// 					pulumi.String("fr-FR"),
/// 				},
/// 				EnableMultilingualSupport: pulumi.Bool(true),
/// 				FallbackAction:            pulumi.String("escalate"),
/// 			},
/// 			TimeZoneSettings: &ces.AppTimeZoneSettingsArgs{
/// 				TimeZone: pulumi.String("America/Los_Angeles"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ces.NewToolset(ctx, "ces_toolset_mcp_oauth_config", &ces.ToolsetArgs{
/// 			ToolsetId:   pulumi.String("toolset1"),
/// 			Location:    pulumi.String("us"),
/// 			App:         cesAppForToolset.AppId,
/// 			DisplayName: pulumi.String("Basic toolset display name"),
/// 			McpToolset: &ces.ToolsetMcpToolsetArgs{
/// 				ServerAddress: pulumi.String("https://api.example.com/mcp/"),
/// 				TlsConfig: &ces.ToolsetMcpToolsetTlsConfigArgs{
/// 					CaCerts: ces.ToolsetMcpToolsetTlsConfigCaCertArray{
/// 						&ces.ToolsetMcpToolsetTlsConfigCaCertArgs{
/// 							DisplayName: pulumi.String("example"),
/// 							Cert:        pulumi.String("ZXhhbXBsZQ=="),
/// 						},
/// 					},
/// 				},
/// 				ServiceDirectoryConfig: &ces.ToolsetMcpToolsetServiceDirectoryConfigArgs{
/// 					Service: pulumi.String("projects/example/locations/us/namespaces/namespace/services/service"),
/// 				},
/// 				ApiAuthentication: &ces.ToolsetMcpToolsetApiAuthenticationArgs{
/// 					OauthConfig: &ces.ToolsetMcpToolsetApiAuthenticationOauthConfigArgs{
/// 						OauthGrantType:      pulumi.String("CLIENT_CREDENTIAL"),
/// 						ClientId:            pulumi.String("example_client_id"),
/// 						ClientSecretVersion: pulumi.String("projects/fake-project/secrets/fake-secret/versions/version1"),
/// 						TokenEndpoint:       pulumi.String("123"),
/// 						Scopes: pulumi.StringArray{
/// 							pulumi.String("scope1"),
/// 						},
/// 					},
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
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_ces_app" "ces_app_for_toolset" {
///   app_id       = "app-id"
///   location     = "us"
///   description  = "App used as parent for CES Toolset example"
///   display_name = "my-app"
///   language_settings = {
///     default_language_code       = "en-US"
///     supported_language_codes    = ["es-ES", "fr-FR"]
///     enable_multilingual_support = true
///     fallback_action             = "escalate"
///   }
///   time_zone_settings = {
///     time_zone = "America/Los_Angeles"
///   }
/// }
/// resource "gcp_ces_toolset" "ces_toolset_mcp_oauth_config" {
///   toolset_id   = "toolset1"
///   location     = "us"
///   app          = gcp_ces_app.ces_app_for_toolset.app_id
///   display_name = "Basic toolset display name"
///   mcp_toolset = {
///     server_address = "https://api.example.com/mcp/"
///     tls_config = {
///       ca_certs = [{
///         "displayName" = "example"
///         "cert"        = "ZXhhbXBsZQ=="
///       }]
///     }
///     service_directory_config = {
///       service = "projects/example/locations/us/namespaces/namespace/services/service"
///     }
///     api_authentication = {
///       oauth_config = {
///         oauth_grant_type      = "CLIENT_CREDENTIAL"
///         client_id             = "example_client_id"
///         client_secret_version = "projects/fake-project/secrets/fake-secret/versions/version1"
///         token_endpoint        = "123"
///         scopes                = ["scope1"]
///       }
///     }
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.ces.App;
/// import com.pulumi.gcp.ces.AppArgs;
/// import com.pulumi.gcp.ces.inputs.AppLanguageSettingsArgs;
/// import com.pulumi.gcp.ces.inputs.AppTimeZoneSettingsArgs;
/// import com.pulumi.gcp.ces.Toolset;
/// import com.pulumi.gcp.ces.ToolsetArgs;
/// import com.pulumi.gcp.ces.inputs.ToolsetMcpToolsetArgs;
/// import com.pulumi.gcp.ces.inputs.ToolsetMcpToolsetTlsConfigArgs;
/// import com.pulumi.gcp.ces.inputs.ToolsetMcpToolsetTlsConfigCaCertArgs;
/// import com.pulumi.gcp.ces.inputs.ToolsetMcpToolsetServiceDirectoryConfigArgs;
/// import com.pulumi.gcp.ces.inputs.ToolsetMcpToolsetApiAuthenticationArgs;
/// import com.pulumi.gcp.ces.inputs.ToolsetMcpToolsetApiAuthenticationOauthConfigArgs;
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
///         var cesAppForToolset = new App("cesAppForToolset", AppArgs.builder()
///             .appId("app-id")
///             .location("us")
///             .description("App used as parent for CES Toolset example")
///             .displayName("my-app")
///             .languageSettings(AppLanguageSettingsArgs.builder()
///                 .defaultLanguageCode("en-US")
///                 .supportedLanguageCodes(
///                     "es-ES",
///                     "fr-FR")
///                 .enableMultilingualSupport(true)
///                 .fallbackAction("escalate")
///                 .build())
///             .timeZoneSettings(AppTimeZoneSettingsArgs.builder()
///                 .timeZone("America/Los_Angeles")
///                 .build())
///             .build());
///
///         var cesToolsetMcpOauthConfig = new Toolset("cesToolsetMcpOauthConfig", ToolsetArgs.builder()
///             .toolsetId("toolset1")
///             .location("us")
///             .app(cesAppForToolset.appId())
///             .displayName("Basic toolset display name")
///             .mcpToolset(ToolsetMcpToolsetArgs.builder()
///                 .serverAddress("https://api.example.com/mcp/")
///                 .tlsConfig(ToolsetMcpToolsetTlsConfigArgs.builder()
///                     .caCerts(ToolsetMcpToolsetTlsConfigCaCertArgs.builder()
///                         .displayName("example")
///                         .cert("ZXhhbXBsZQ==")
///                         .build())
///                     .build())
///                 .serviceDirectoryConfig(ToolsetMcpToolsetServiceDirectoryConfigArgs.builder()
///                     .service("projects/example/locations/us/namespaces/namespace/services/service")
///                     .build())
///                 .apiAuthentication(ToolsetMcpToolsetApiAuthenticationArgs.builder()
///                     .oauthConfig(ToolsetMcpToolsetApiAuthenticationOauthConfigArgs.builder()
///                         .oauthGrantType("CLIENT_CREDENTIAL")
///                         .clientId("example_client_id")
///                         .clientSecretVersion("projects/fake-project/secrets/fake-secret/versions/version1")
///                         .tokenEndpoint("123")
///                         .scopes("scope1")
///                         .build())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   cesAppForToolset:
///     type: gcp:ces:App
///     name: ces_app_for_toolset
///     properties:
///       appId: app-id
///       location: us
///       description: App used as parent for CES Toolset example
///       displayName: my-app
///       languageSettings:
///         defaultLanguageCode: en-US
///         supportedLanguageCodes:
///           - es-ES
///           - fr-FR
///         enableMultilingualSupport: true
///         fallbackAction: escalate
///       timeZoneSettings:
///         timeZone: America/Los_Angeles
///   cesToolsetMcpOauthConfig:
///     type: gcp:ces:Toolset
///     name: ces_toolset_mcp_oauth_config
///     properties:
///       toolsetId: toolset1
///       location: us
///       app: ${cesAppForToolset.appId}
///       displayName: Basic toolset display name
///       mcpToolset:
///         serverAddress: https://api.example.com/mcp/
///         tlsConfig:
///           caCerts:
///             - displayName: example
///               cert: ZXhhbXBsZQ==
///         serviceDirectoryConfig:
///           service: projects/example/locations/us/namespaces/namespace/services/service
///         apiAuthentication:
///           oauthConfig:
///             oauthGrantType: CLIENT_CREDENTIAL
///             clientId: example_client_id
///             clientSecretVersion: projects/fake-project/secrets/fake-secret/versions/version1
///             tokenEndpoint: '123'
///             scopes:
///               - scope1
/// ```
///
/// ### Ces Toolset Mcp Service Agent Id Token Auth Config
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const cesAppForToolset = new gcp.ces.App("ces_app_for_toolset", {
///     appId: "app-id",
///     location: "us",
///     description: "App used as parent for CES Toolset example",
///     displayName: "my-app",
///     languageSettings: {
///         defaultLanguageCode: "en-US",
///         supportedLanguageCodes: [
///             "es-ES",
///             "fr-FR",
///         ],
///         enableMultilingualSupport: true,
///         fallbackAction: "escalate",
///     },
///     timeZoneSettings: {
///         timeZone: "America/Los_Angeles",
///     },
/// });
/// const cesToolsetMcpServiceAgentIdTokenAuthConfig = new gcp.ces.Toolset("ces_toolset_mcp_service_agent_id_token_auth_config", {
///     toolsetId: "toolset1",
///     location: "us",
///     app: cesAppForToolset.appId,
///     displayName: "Basic toolset display name",
///     mcpToolset: {
///         serverAddress: "https://api.example.com/mcp/",
///         customHeaders: {
///             "X-Custom-Header": "$context.variables.my_variable",
///         },
///         tlsConfig: {
///             caCerts: [{
///                 displayName: "example",
///                 cert: "ZXhhbXBsZQ==",
///             }],
///         },
///         serviceDirectoryConfig: {
///             service: "projects/example/locations/us/namespaces/namespace/services/service",
///         },
///         apiAuthentication: {
///             serviceAgentIdTokenAuthConfig: {},
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// ces_app_for_toolset = gcp.ces.App("ces_app_for_toolset",
///     app_id="app-id",
///     location="us",
///     description="App used as parent for CES Toolset example",
///     display_name="my-app",
///     language_settings={
///         "default_language_code": "en-US",
///         "supported_language_codes": [
///             "es-ES",
///             "fr-FR",
///         ],
///         "enable_multilingual_support": True,
///         "fallback_action": "escalate",
///     },
///     time_zone_settings={
///         "time_zone": "America/Los_Angeles",
///     })
/// ces_toolset_mcp_service_agent_id_token_auth_config = gcp.ces.Toolset("ces_toolset_mcp_service_agent_id_token_auth_config",
///     toolset_id="toolset1",
///     location="us",
///     app=ces_app_for_toolset.app_id,
///     display_name="Basic toolset display name",
///     mcp_toolset={
///         "server_address": "https://api.example.com/mcp/",
///         "custom_headers": {
///             "X-Custom-Header": "$context.variables.my_variable",
///         },
///         "tls_config": {
///             "ca_certs": [{
///                 "display_name": "example",
///                 "cert": "ZXhhbXBsZQ==",
///             }],
///         },
///         "service_directory_config": {
///             "service": "projects/example/locations/us/namespaces/namespace/services/service",
///         },
///         "api_authentication": {
///             "service_agent_id_token_auth_config": {},
///         },
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var cesAppForToolset = new Gcp.Ces.App("ces_app_for_toolset", new()
///     {
///         AppId = "app-id",
///         Location = "us",
///         Description = "App used as parent for CES Toolset example",
///         DisplayName = "my-app",
///         LanguageSettings = new Gcp.Ces.Inputs.AppLanguageSettingsArgs
///         {
///             DefaultLanguageCode = "en-US",
///             SupportedLanguageCodes = new[]
///             {
///                 "es-ES",
///                 "fr-FR",
///             },
///             EnableMultilingualSupport = true,
///             FallbackAction = "escalate",
///         },
///         TimeZoneSettings = new Gcp.Ces.Inputs.AppTimeZoneSettingsArgs
///         {
///             TimeZone = "America/Los_Angeles",
///         },
///     });
///
///     var cesToolsetMcpServiceAgentIdTokenAuthConfig = new Gcp.Ces.Toolset("ces_toolset_mcp_service_agent_id_token_auth_config", new()
///     {
///         ToolsetId = "toolset1",
///         Location = "us",
///         App = cesAppForToolset.AppId,
///         DisplayName = "Basic toolset display name",
///         McpToolset = new Gcp.Ces.Inputs.ToolsetMcpToolsetArgs
///         {
///             ServerAddress = "https://api.example.com/mcp/",
///             CustomHeaders =
///             {
///                 { "X-Custom-Header", "$context.variables.my_variable" },
///             },
///             TlsConfig = new Gcp.Ces.Inputs.ToolsetMcpToolsetTlsConfigArgs
///             {
///                 CaCerts = new[]
///                 {
///                     new Gcp.Ces.Inputs.ToolsetMcpToolsetTlsConfigCaCertArgs
///                     {
///                         DisplayName = "example",
///                         Cert = "ZXhhbXBsZQ==",
///                     },
///                 },
///             },
///             ServiceDirectoryConfig = new Gcp.Ces.Inputs.ToolsetMcpToolsetServiceDirectoryConfigArgs
///             {
///                 Service = "projects/example/locations/us/namespaces/namespace/services/service",
///             },
///             ApiAuthentication = new Gcp.Ces.Inputs.ToolsetMcpToolsetApiAuthenticationArgs
///             {
///                 ServiceAgentIdTokenAuthConfig = null,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/ces"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cesAppForToolset, err := ces.NewApp(ctx, "ces_app_for_toolset", &ces.AppArgs{
/// 			AppId:       pulumi.String("app-id"),
/// 			Location:    pulumi.String("us"),
/// 			Description: pulumi.String("App used as parent for CES Toolset example"),
/// 			DisplayName: pulumi.String("my-app"),
/// 			LanguageSettings: &ces.AppLanguageSettingsArgs{
/// 				DefaultLanguageCode: pulumi.String("en-US"),
/// 				SupportedLanguageCodes: pulumi.StringArray{
/// 					pulumi.String("es-ES"),
/// 					pulumi.String("fr-FR"),
/// 				},
/// 				EnableMultilingualSupport: pulumi.Bool(true),
/// 				FallbackAction:            pulumi.String("escalate"),
/// 			},
/// 			TimeZoneSettings: &ces.AppTimeZoneSettingsArgs{
/// 				TimeZone: pulumi.String("America/Los_Angeles"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ces.NewToolset(ctx, "ces_toolset_mcp_service_agent_id_token_auth_config", &ces.ToolsetArgs{
/// 			ToolsetId:   pulumi.String("toolset1"),
/// 			Location:    pulumi.String("us"),
/// 			App:         cesAppForToolset.AppId,
/// 			DisplayName: pulumi.String("Basic toolset display name"),
/// 			McpToolset: &ces.ToolsetMcpToolsetArgs{
/// 				ServerAddress: pulumi.String("https://api.example.com/mcp/"),
/// 				CustomHeaders: pulumi.StringMap{
/// 					"X-Custom-Header": pulumi.String("$context.variables.my_variable"),
/// 				},
/// 				TlsConfig: &ces.ToolsetMcpToolsetTlsConfigArgs{
/// 					CaCerts: ces.ToolsetMcpToolsetTlsConfigCaCertArray{
/// 						&ces.ToolsetMcpToolsetTlsConfigCaCertArgs{
/// 							DisplayName: pulumi.String("example"),
/// 							Cert:        pulumi.String("ZXhhbXBsZQ=="),
/// 						},
/// 					},
/// 				},
/// 				ServiceDirectoryConfig: &ces.ToolsetMcpToolsetServiceDirectoryConfigArgs{
/// 					Service: pulumi.String("projects/example/locations/us/namespaces/namespace/services/service"),
/// 				},
/// 				ApiAuthentication: &ces.ToolsetMcpToolsetApiAuthenticationArgs{
/// 					ServiceAgentIdTokenAuthConfig: &ces.ToolsetMcpToolsetApiAuthenticationServiceAgentIdTokenAuthConfigArgs{},
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
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_ces_app" "ces_app_for_toolset" {
///   app_id       = "app-id"
///   location     = "us"
///   description  = "App used as parent for CES Toolset example"
///   display_name = "my-app"
///   language_settings = {
///     default_language_code       = "en-US"
///     supported_language_codes    = ["es-ES", "fr-FR"]
///     enable_multilingual_support = true
///     fallback_action             = "escalate"
///   }
///   time_zone_settings = {
///     time_zone = "America/Los_Angeles"
///   }
/// }
/// resource "gcp_ces_toolset" "ces_toolset_mcp_service_agent_id_token_auth_config" {
///   toolset_id   = "toolset1"
///   location     = "us"
///   app          = gcp_ces_app.ces_app_for_toolset.app_id
///   display_name = "Basic toolset display name"
///   mcp_toolset = {
///     server_address = "https://api.example.com/mcp/"
///     custom_headers = {
///       "X-Custom-Header" = "$context.variables.my_variable"
///     }
///     tls_config = {
///       ca_certs = [{
///         "displayName" = "example"
///         "cert"        = "ZXhhbXBsZQ=="
///       }]
///     }
///     service_directory_config = {
///       service = "projects/example/locations/us/namespaces/namespace/services/service"
///     }
///     api_authentication = {
///       service_agent_id_token_auth_config = {}
///     }
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.ces.App;
/// import com.pulumi.gcp.ces.AppArgs;
/// import com.pulumi.gcp.ces.inputs.AppLanguageSettingsArgs;
/// import com.pulumi.gcp.ces.inputs.AppTimeZoneSettingsArgs;
/// import com.pulumi.gcp.ces.Toolset;
/// import com.pulumi.gcp.ces.ToolsetArgs;
/// import com.pulumi.gcp.ces.inputs.ToolsetMcpToolsetArgs;
/// import com.pulumi.gcp.ces.inputs.ToolsetMcpToolsetTlsConfigArgs;
/// import com.pulumi.gcp.ces.inputs.ToolsetMcpToolsetTlsConfigCaCertArgs;
/// import com.pulumi.gcp.ces.inputs.ToolsetMcpToolsetServiceDirectoryConfigArgs;
/// import com.pulumi.gcp.ces.inputs.ToolsetMcpToolsetApiAuthenticationArgs;
/// import com.pulumi.gcp.ces.inputs.ToolsetMcpToolsetApiAuthenticationServiceAgentIdTokenAuthConfigArgs;
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
///         var cesAppForToolset = new App("cesAppForToolset", AppArgs.builder()
///             .appId("app-id")
///             .location("us")
///             .description("App used as parent for CES Toolset example")
///             .displayName("my-app")
///             .languageSettings(AppLanguageSettingsArgs.builder()
///                 .defaultLanguageCode("en-US")
///                 .supportedLanguageCodes(
///                     "es-ES",
///                     "fr-FR")
///                 .enableMultilingualSupport(true)
///                 .fallbackAction("escalate")
///                 .build())
///             .timeZoneSettings(AppTimeZoneSettingsArgs.builder()
///                 .timeZone("America/Los_Angeles")
///                 .build())
///             .build());
///
///         var cesToolsetMcpServiceAgentIdTokenAuthConfig = new Toolset("cesToolsetMcpServiceAgentIdTokenAuthConfig", ToolsetArgs.builder()
///             .toolsetId("toolset1")
///             .location("us")
///             .app(cesAppForToolset.appId())
///             .displayName("Basic toolset display name")
///             .mcpToolset(ToolsetMcpToolsetArgs.builder()
///                 .serverAddress("https://api.example.com/mcp/")
///                 .customHeaders(Map.of("X-Custom-Header", "$context.variables.my_variable"))
///                 .tlsConfig(ToolsetMcpToolsetTlsConfigArgs.builder()
///                     .caCerts(ToolsetMcpToolsetTlsConfigCaCertArgs.builder()
///                         .displayName("example")
///                         .cert("ZXhhbXBsZQ==")
///                         .build())
///                     .build())
///                 .serviceDirectoryConfig(ToolsetMcpToolsetServiceDirectoryConfigArgs.builder()
///                     .service("projects/example/locations/us/namespaces/namespace/services/service")
///                     .build())
///                 .apiAuthentication(ToolsetMcpToolsetApiAuthenticationArgs.builder()
///                     .serviceAgentIdTokenAuthConfig(ToolsetMcpToolsetApiAuthenticationServiceAgentIdTokenAuthConfigArgs.builder()
///                         .build())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   cesAppForToolset:
///     type: gcp:ces:App
///     name: ces_app_for_toolset
///     properties:
///       appId: app-id
///       location: us
///       description: App used as parent for CES Toolset example
///       displayName: my-app
///       languageSettings:
///         defaultLanguageCode: en-US
///         supportedLanguageCodes:
///           - es-ES
///           - fr-FR
///         enableMultilingualSupport: true
///         fallbackAction: escalate
///       timeZoneSettings:
///         timeZone: America/Los_Angeles
///   cesToolsetMcpServiceAgentIdTokenAuthConfig:
///     type: gcp:ces:Toolset
///     name: ces_toolset_mcp_service_agent_id_token_auth_config
///     properties:
///       toolsetId: toolset1
///       location: us
///       app: ${cesAppForToolset.appId}
///       displayName: Basic toolset display name
///       mcpToolset:
///         serverAddress: https://api.example.com/mcp/
///         customHeaders:
///           X-Custom-Header: $context.variables.my_variable
///         tlsConfig:
///           caCerts:
///             - displayName: example
///               cert: ZXhhbXBsZQ==
///         serviceDirectoryConfig:
///           service: projects/example/locations/us/namespaces/namespace/services/service
///         apiAuthentication:
///           serviceAgentIdTokenAuthConfig: {}
/// ```
///
/// ### Ces Toolset Mcp Api Key Config
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const cesAppForToolset = new gcp.ces.App("ces_app_for_toolset", {
///     appId: "app-id",
///     location: "us",
///     description: "App used as parent for CES Toolset example",
///     displayName: "my-app",
///     languageSettings: {
///         defaultLanguageCode: "en-US",
///         supportedLanguageCodes: [
///             "es-ES",
///             "fr-FR",
///         ],
///         enableMultilingualSupport: true,
///         fallbackAction: "escalate",
///     },
///     timeZoneSettings: {
///         timeZone: "America/Los_Angeles",
///     },
/// });
/// const cesToolsetMcpApiKeyConfig = new gcp.ces.Toolset("ces_toolset_mcp_api_key_config", {
///     toolsetId: "toolset1",
///     location: "us",
///     app: cesAppForToolset.appId,
///     displayName: "Basic toolset display name",
///     description: "Test description",
///     executionType: "SYNCHRONOUS",
///     mcpToolset: {
///         serverAddress: "https://api.example.com/mcp/",
///         tlsConfig: {
///             caCerts: [{
///                 displayName: "example",
///                 cert: "ZXhhbXBsZQ==",
///             }],
///         },
///         serviceDirectoryConfig: {
///             service: "projects/example/locations/us/namespaces/namespace/services/service",
///         },
///         apiAuthentication: {
///             apiKeyConfig: {
///                 keyName: "ExampleKey",
///                 apiKeySecretVersion: "projects/fake-project/secrets/fake-secret/versions/version-1",
///                 requestLocation: "HEADER",
///             },
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// ces_app_for_toolset = gcp.ces.App("ces_app_for_toolset",
///     app_id="app-id",
///     location="us",
///     description="App used as parent for CES Toolset example",
///     display_name="my-app",
///     language_settings={
///         "default_language_code": "en-US",
///         "supported_language_codes": [
///             "es-ES",
///             "fr-FR",
///         ],
///         "enable_multilingual_support": True,
///         "fallback_action": "escalate",
///     },
///     time_zone_settings={
///         "time_zone": "America/Los_Angeles",
///     })
/// ces_toolset_mcp_api_key_config = gcp.ces.Toolset("ces_toolset_mcp_api_key_config",
///     toolset_id="toolset1",
///     location="us",
///     app=ces_app_for_toolset.app_id,
///     display_name="Basic toolset display name",
///     description="Test description",
///     execution_type="SYNCHRONOUS",
///     mcp_toolset={
///         "server_address": "https://api.example.com/mcp/",
///         "tls_config": {
///             "ca_certs": [{
///                 "display_name": "example",
///                 "cert": "ZXhhbXBsZQ==",
///             }],
///         },
///         "service_directory_config": {
///             "service": "projects/example/locations/us/namespaces/namespace/services/service",
///         },
///         "api_authentication": {
///             "api_key_config": {
///                 "key_name": "ExampleKey",
///                 "api_key_secret_version": "projects/fake-project/secrets/fake-secret/versions/version-1",
///                 "request_location": "HEADER",
///             },
///         },
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var cesAppForToolset = new Gcp.Ces.App("ces_app_for_toolset", new()
///     {
///         AppId = "app-id",
///         Location = "us",
///         Description = "App used as parent for CES Toolset example",
///         DisplayName = "my-app",
///         LanguageSettings = new Gcp.Ces.Inputs.AppLanguageSettingsArgs
///         {
///             DefaultLanguageCode = "en-US",
///             SupportedLanguageCodes = new[]
///             {
///                 "es-ES",
///                 "fr-FR",
///             },
///             EnableMultilingualSupport = true,
///             FallbackAction = "escalate",
///         },
///         TimeZoneSettings = new Gcp.Ces.Inputs.AppTimeZoneSettingsArgs
///         {
///             TimeZone = "America/Los_Angeles",
///         },
///     });
///
///     var cesToolsetMcpApiKeyConfig = new Gcp.Ces.Toolset("ces_toolset_mcp_api_key_config", new()
///     {
///         ToolsetId = "toolset1",
///         Location = "us",
///         App = cesAppForToolset.AppId,
///         DisplayName = "Basic toolset display name",
///         Description = "Test description",
///         ExecutionType = "SYNCHRONOUS",
///         McpToolset = new Gcp.Ces.Inputs.ToolsetMcpToolsetArgs
///         {
///             ServerAddress = "https://api.example.com/mcp/",
///             TlsConfig = new Gcp.Ces.Inputs.ToolsetMcpToolsetTlsConfigArgs
///             {
///                 CaCerts = new[]
///                 {
///                     new Gcp.Ces.Inputs.ToolsetMcpToolsetTlsConfigCaCertArgs
///                     {
///                         DisplayName = "example",
///                         Cert = "ZXhhbXBsZQ==",
///                     },
///                 },
///             },
///             ServiceDirectoryConfig = new Gcp.Ces.Inputs.ToolsetMcpToolsetServiceDirectoryConfigArgs
///             {
///                 Service = "projects/example/locations/us/namespaces/namespace/services/service",
///             },
///             ApiAuthentication = new Gcp.Ces.Inputs.ToolsetMcpToolsetApiAuthenticationArgs
///             {
///                 ApiKeyConfig = new Gcp.Ces.Inputs.ToolsetMcpToolsetApiAuthenticationApiKeyConfigArgs
///                 {
///                     KeyName = "ExampleKey",
///                     ApiKeySecretVersion = "projects/fake-project/secrets/fake-secret/versions/version-1",
///                     RequestLocation = "HEADER",
///                 },
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/ces"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cesAppForToolset, err := ces.NewApp(ctx, "ces_app_for_toolset", &ces.AppArgs{
/// 			AppId:       pulumi.String("app-id"),
/// 			Location:    pulumi.String("us"),
/// 			Description: pulumi.String("App used as parent for CES Toolset example"),
/// 			DisplayName: pulumi.String("my-app"),
/// 			LanguageSettings: &ces.AppLanguageSettingsArgs{
/// 				DefaultLanguageCode: pulumi.String("en-US"),
/// 				SupportedLanguageCodes: pulumi.StringArray{
/// 					pulumi.String("es-ES"),
/// 					pulumi.String("fr-FR"),
/// 				},
/// 				EnableMultilingualSupport: pulumi.Bool(true),
/// 				FallbackAction:            pulumi.String("escalate"),
/// 			},
/// 			TimeZoneSettings: &ces.AppTimeZoneSettingsArgs{
/// 				TimeZone: pulumi.String("America/Los_Angeles"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ces.NewToolset(ctx, "ces_toolset_mcp_api_key_config", &ces.ToolsetArgs{
/// 			ToolsetId:     pulumi.String("toolset1"),
/// 			Location:      pulumi.String("us"),
/// 			App:           cesAppForToolset.AppId,
/// 			DisplayName:   pulumi.String("Basic toolset display name"),
/// 			Description:   pulumi.String("Test description"),
/// 			ExecutionType: pulumi.String("SYNCHRONOUS"),
/// 			McpToolset: &ces.ToolsetMcpToolsetArgs{
/// 				ServerAddress: pulumi.String("https://api.example.com/mcp/"),
/// 				TlsConfig: &ces.ToolsetMcpToolsetTlsConfigArgs{
/// 					CaCerts: ces.ToolsetMcpToolsetTlsConfigCaCertArray{
/// 						&ces.ToolsetMcpToolsetTlsConfigCaCertArgs{
/// 							DisplayName: pulumi.String("example"),
/// 							Cert:        pulumi.String("ZXhhbXBsZQ=="),
/// 						},
/// 					},
/// 				},
/// 				ServiceDirectoryConfig: &ces.ToolsetMcpToolsetServiceDirectoryConfigArgs{
/// 					Service: pulumi.String("projects/example/locations/us/namespaces/namespace/services/service"),
/// 				},
/// 				ApiAuthentication: &ces.ToolsetMcpToolsetApiAuthenticationArgs{
/// 					ApiKeyConfig: &ces.ToolsetMcpToolsetApiAuthenticationApiKeyConfigArgs{
/// 						KeyName:             pulumi.String("ExampleKey"),
/// 						ApiKeySecretVersion: pulumi.String("projects/fake-project/secrets/fake-secret/versions/version-1"),
/// 						RequestLocation:     pulumi.String("HEADER"),
/// 					},
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
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_ces_app" "ces_app_for_toolset" {
///   app_id       = "app-id"
///   location     = "us"
///   description  = "App used as parent for CES Toolset example"
///   display_name = "my-app"
///   language_settings = {
///     default_language_code       = "en-US"
///     supported_language_codes    = ["es-ES", "fr-FR"]
///     enable_multilingual_support = true
///     fallback_action             = "escalate"
///   }
///   time_zone_settings = {
///     time_zone = "America/Los_Angeles"
///   }
/// }
/// resource "gcp_ces_toolset" "ces_toolset_mcp_api_key_config" {
///   toolset_id     = "toolset1"
///   location       = "us"
///   app            = gcp_ces_app.ces_app_for_toolset.app_id
///   display_name   = "Basic toolset display name"
///   description    = "Test description"
///   execution_type = "SYNCHRONOUS"
///   mcp_toolset = {
///     server_address = "https://api.example.com/mcp/"
///     tls_config = {
///       ca_certs = [{
///         "displayName" = "example"
///         "cert"        = "ZXhhbXBsZQ=="
///       }]
///     }
///     service_directory_config = {
///       service = "projects/example/locations/us/namespaces/namespace/services/service"
///     }
///     api_authentication = {
///       api_key_config = {
///         key_name               = "ExampleKey"
///         api_key_secret_version = "projects/fake-project/secrets/fake-secret/versions/version-1"
///         request_location       = "HEADER"
///       }
///     }
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.ces.App;
/// import com.pulumi.gcp.ces.AppArgs;
/// import com.pulumi.gcp.ces.inputs.AppLanguageSettingsArgs;
/// import com.pulumi.gcp.ces.inputs.AppTimeZoneSettingsArgs;
/// import com.pulumi.gcp.ces.Toolset;
/// import com.pulumi.gcp.ces.ToolsetArgs;
/// import com.pulumi.gcp.ces.inputs.ToolsetMcpToolsetArgs;
/// import com.pulumi.gcp.ces.inputs.ToolsetMcpToolsetTlsConfigArgs;
/// import com.pulumi.gcp.ces.inputs.ToolsetMcpToolsetTlsConfigCaCertArgs;
/// import com.pulumi.gcp.ces.inputs.ToolsetMcpToolsetServiceDirectoryConfigArgs;
/// import com.pulumi.gcp.ces.inputs.ToolsetMcpToolsetApiAuthenticationArgs;
/// import com.pulumi.gcp.ces.inputs.ToolsetMcpToolsetApiAuthenticationApiKeyConfigArgs;
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
///         var cesAppForToolset = new App("cesAppForToolset", AppArgs.builder()
///             .appId("app-id")
///             .location("us")
///             .description("App used as parent for CES Toolset example")
///             .displayName("my-app")
///             .languageSettings(AppLanguageSettingsArgs.builder()
///                 .defaultLanguageCode("en-US")
///                 .supportedLanguageCodes(
///                     "es-ES",
///                     "fr-FR")
///                 .enableMultilingualSupport(true)
///                 .fallbackAction("escalate")
///                 .build())
///             .timeZoneSettings(AppTimeZoneSettingsArgs.builder()
///                 .timeZone("America/Los_Angeles")
///                 .build())
///             .build());
///
///         var cesToolsetMcpApiKeyConfig = new Toolset("cesToolsetMcpApiKeyConfig", ToolsetArgs.builder()
///             .toolsetId("toolset1")
///             .location("us")
///             .app(cesAppForToolset.appId())
///             .displayName("Basic toolset display name")
///             .description("Test description")
///             .executionType("SYNCHRONOUS")
///             .mcpToolset(ToolsetMcpToolsetArgs.builder()
///                 .serverAddress("https://api.example.com/mcp/")
///                 .tlsConfig(ToolsetMcpToolsetTlsConfigArgs.builder()
///                     .caCerts(ToolsetMcpToolsetTlsConfigCaCertArgs.builder()
///                         .displayName("example")
///                         .cert("ZXhhbXBsZQ==")
///                         .build())
///                     .build())
///                 .serviceDirectoryConfig(ToolsetMcpToolsetServiceDirectoryConfigArgs.builder()
///                     .service("projects/example/locations/us/namespaces/namespace/services/service")
///                     .build())
///                 .apiAuthentication(ToolsetMcpToolsetApiAuthenticationArgs.builder()
///                     .apiKeyConfig(ToolsetMcpToolsetApiAuthenticationApiKeyConfigArgs.builder()
///                         .keyName("ExampleKey")
///                         .apiKeySecretVersion("projects/fake-project/secrets/fake-secret/versions/version-1")
///                         .requestLocation("HEADER")
///                         .build())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   cesAppForToolset:
///     type: gcp:ces:App
///     name: ces_app_for_toolset
///     properties:
///       appId: app-id
///       location: us
///       description: App used as parent for CES Toolset example
///       displayName: my-app
///       languageSettings:
///         defaultLanguageCode: en-US
///         supportedLanguageCodes:
///           - es-ES
///           - fr-FR
///         enableMultilingualSupport: true
///         fallbackAction: escalate
///       timeZoneSettings:
///         timeZone: America/Los_Angeles
///   cesToolsetMcpApiKeyConfig:
///     type: gcp:ces:Toolset
///     name: ces_toolset_mcp_api_key_config
///     properties:
///       toolsetId: toolset1
///       location: us
///       app: ${cesAppForToolset.appId}
///       displayName: Basic toolset display name
///       description: Test description
///       executionType: SYNCHRONOUS
///       mcpToolset:
///         serverAddress: https://api.example.com/mcp/
///         tlsConfig:
///           caCerts:
///             - displayName: example
///               cert: ZXhhbXBsZQ==
///         serviceDirectoryConfig:
///           service: projects/example/locations/us/namespaces/namespace/services/service
///         apiAuthentication:
///           apiKeyConfig:
///             keyName: ExampleKey
///             apiKeySecretVersion: projects/fake-project/secrets/fake-secret/versions/version-1
///             requestLocation: HEADER
/// ```
///
/// ### Ces Toolset Mcp Bearer Token Config
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const cesAppForToolset = new gcp.ces.App("ces_app_for_toolset", {
///     appId: "app-id",
///     location: "us",
///     description: "App used as parent for CES Toolset example",
///     displayName: "my-app",
///     languageSettings: {
///         defaultLanguageCode: "en-US",
///         supportedLanguageCodes: [
///             "es-ES",
///             "fr-FR",
///         ],
///         enableMultilingualSupport: true,
///         fallbackAction: "escalate",
///     },
///     timeZoneSettings: {
///         timeZone: "America/Los_Angeles",
///     },
/// });
/// const cesToolsetMcpBearerTokenConfig = new gcp.ces.Toolset("ces_toolset_mcp_bearer_token_config", {
///     toolsetId: "toolset1",
///     location: "us",
///     app: cesAppForToolset.appId,
///     displayName: "Basic toolset display name",
///     mcpToolset: {
///         serverAddress: "https://api.example.com/mcp/",
///         tlsConfig: {
///             caCerts: [{
///                 displayName: "example",
///                 cert: "ZXhhbXBsZQ==",
///             }],
///         },
///         serviceDirectoryConfig: {
///             service: "projects/example/locations/us/namespaces/namespace/services/service",
///         },
///         apiAuthentication: {
///             bearerTokenConfig: {
///                 token: "$context.variables.my_ces_toolset_auth_token",
///             },
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// ces_app_for_toolset = gcp.ces.App("ces_app_for_toolset",
///     app_id="app-id",
///     location="us",
///     description="App used as parent for CES Toolset example",
///     display_name="my-app",
///     language_settings={
///         "default_language_code": "en-US",
///         "supported_language_codes": [
///             "es-ES",
///             "fr-FR",
///         ],
///         "enable_multilingual_support": True,
///         "fallback_action": "escalate",
///     },
///     time_zone_settings={
///         "time_zone": "America/Los_Angeles",
///     })
/// ces_toolset_mcp_bearer_token_config = gcp.ces.Toolset("ces_toolset_mcp_bearer_token_config",
///     toolset_id="toolset1",
///     location="us",
///     app=ces_app_for_toolset.app_id,
///     display_name="Basic toolset display name",
///     mcp_toolset={
///         "server_address": "https://api.example.com/mcp/",
///         "tls_config": {
///             "ca_certs": [{
///                 "display_name": "example",
///                 "cert": "ZXhhbXBsZQ==",
///             }],
///         },
///         "service_directory_config": {
///             "service": "projects/example/locations/us/namespaces/namespace/services/service",
///         },
///         "api_authentication": {
///             "bearer_token_config": {
///                 "token": "$context.variables.my_ces_toolset_auth_token",
///             },
///         },
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var cesAppForToolset = new Gcp.Ces.App("ces_app_for_toolset", new()
///     {
///         AppId = "app-id",
///         Location = "us",
///         Description = "App used as parent for CES Toolset example",
///         DisplayName = "my-app",
///         LanguageSettings = new Gcp.Ces.Inputs.AppLanguageSettingsArgs
///         {
///             DefaultLanguageCode = "en-US",
///             SupportedLanguageCodes = new[]
///             {
///                 "es-ES",
///                 "fr-FR",
///             },
///             EnableMultilingualSupport = true,
///             FallbackAction = "escalate",
///         },
///         TimeZoneSettings = new Gcp.Ces.Inputs.AppTimeZoneSettingsArgs
///         {
///             TimeZone = "America/Los_Angeles",
///         },
///     });
///
///     var cesToolsetMcpBearerTokenConfig = new Gcp.Ces.Toolset("ces_toolset_mcp_bearer_token_config", new()
///     {
///         ToolsetId = "toolset1",
///         Location = "us",
///         App = cesAppForToolset.AppId,
///         DisplayName = "Basic toolset display name",
///         McpToolset = new Gcp.Ces.Inputs.ToolsetMcpToolsetArgs
///         {
///             ServerAddress = "https://api.example.com/mcp/",
///             TlsConfig = new Gcp.Ces.Inputs.ToolsetMcpToolsetTlsConfigArgs
///             {
///                 CaCerts = new[]
///                 {
///                     new Gcp.Ces.Inputs.ToolsetMcpToolsetTlsConfigCaCertArgs
///                     {
///                         DisplayName = "example",
///                         Cert = "ZXhhbXBsZQ==",
///                     },
///                 },
///             },
///             ServiceDirectoryConfig = new Gcp.Ces.Inputs.ToolsetMcpToolsetServiceDirectoryConfigArgs
///             {
///                 Service = "projects/example/locations/us/namespaces/namespace/services/service",
///             },
///             ApiAuthentication = new Gcp.Ces.Inputs.ToolsetMcpToolsetApiAuthenticationArgs
///             {
///                 BearerTokenConfig = new Gcp.Ces.Inputs.ToolsetMcpToolsetApiAuthenticationBearerTokenConfigArgs
///                 {
///                     Token = "$context.variables.my_ces_toolset_auth_token",
///                 },
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/ces"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cesAppForToolset, err := ces.NewApp(ctx, "ces_app_for_toolset", &ces.AppArgs{
/// 			AppId:       pulumi.String("app-id"),
/// 			Location:    pulumi.String("us"),
/// 			Description: pulumi.String("App used as parent for CES Toolset example"),
/// 			DisplayName: pulumi.String("my-app"),
/// 			LanguageSettings: &ces.AppLanguageSettingsArgs{
/// 				DefaultLanguageCode: pulumi.String("en-US"),
/// 				SupportedLanguageCodes: pulumi.StringArray{
/// 					pulumi.String("es-ES"),
/// 					pulumi.String("fr-FR"),
/// 				},
/// 				EnableMultilingualSupport: pulumi.Bool(true),
/// 				FallbackAction:            pulumi.String("escalate"),
/// 			},
/// 			TimeZoneSettings: &ces.AppTimeZoneSettingsArgs{
/// 				TimeZone: pulumi.String("America/Los_Angeles"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ces.NewToolset(ctx, "ces_toolset_mcp_bearer_token_config", &ces.ToolsetArgs{
/// 			ToolsetId:   pulumi.String("toolset1"),
/// 			Location:    pulumi.String("us"),
/// 			App:         cesAppForToolset.AppId,
/// 			DisplayName: pulumi.String("Basic toolset display name"),
/// 			McpToolset: &ces.ToolsetMcpToolsetArgs{
/// 				ServerAddress: pulumi.String("https://api.example.com/mcp/"),
/// 				TlsConfig: &ces.ToolsetMcpToolsetTlsConfigArgs{
/// 					CaCerts: ces.ToolsetMcpToolsetTlsConfigCaCertArray{
/// 						&ces.ToolsetMcpToolsetTlsConfigCaCertArgs{
/// 							DisplayName: pulumi.String("example"),
/// 							Cert:        pulumi.String("ZXhhbXBsZQ=="),
/// 						},
/// 					},
/// 				},
/// 				ServiceDirectoryConfig: &ces.ToolsetMcpToolsetServiceDirectoryConfigArgs{
/// 					Service: pulumi.String("projects/example/locations/us/namespaces/namespace/services/service"),
/// 				},
/// 				ApiAuthentication: &ces.ToolsetMcpToolsetApiAuthenticationArgs{
/// 					BearerTokenConfig: &ces.ToolsetMcpToolsetApiAuthenticationBearerTokenConfigArgs{
/// 						Token: pulumi.String("$context.variables.my_ces_toolset_auth_token"),
/// 					},
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
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_ces_app" "ces_app_for_toolset" {
///   app_id       = "app-id"
///   location     = "us"
///   description  = "App used as parent for CES Toolset example"
///   display_name = "my-app"
///   language_settings = {
///     default_language_code       = "en-US"
///     supported_language_codes    = ["es-ES", "fr-FR"]
///     enable_multilingual_support = true
///     fallback_action             = "escalate"
///   }
///   time_zone_settings = {
///     time_zone = "America/Los_Angeles"
///   }
/// }
/// resource "gcp_ces_toolset" "ces_toolset_mcp_bearer_token_config" {
///   toolset_id   = "toolset1"
///   location     = "us"
///   app          = gcp_ces_app.ces_app_for_toolset.app_id
///   display_name = "Basic toolset display name"
///   mcp_toolset = {
///     server_address = "https://api.example.com/mcp/"
///     tls_config = {
///       ca_certs = [{
///         "displayName" = "example"
///         "cert"        = "ZXhhbXBsZQ=="
///       }]
///     }
///     service_directory_config = {
///       service = "projects/example/locations/us/namespaces/namespace/services/service"
///     }
///     api_authentication = {
///       bearer_token_config = {
///         token = "$context.variables.my_ces_toolset_auth_token"
///       }
///     }
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.ces.App;
/// import com.pulumi.gcp.ces.AppArgs;
/// import com.pulumi.gcp.ces.inputs.AppLanguageSettingsArgs;
/// import com.pulumi.gcp.ces.inputs.AppTimeZoneSettingsArgs;
/// import com.pulumi.gcp.ces.Toolset;
/// import com.pulumi.gcp.ces.ToolsetArgs;
/// import com.pulumi.gcp.ces.inputs.ToolsetMcpToolsetArgs;
/// import com.pulumi.gcp.ces.inputs.ToolsetMcpToolsetTlsConfigArgs;
/// import com.pulumi.gcp.ces.inputs.ToolsetMcpToolsetTlsConfigCaCertArgs;
/// import com.pulumi.gcp.ces.inputs.ToolsetMcpToolsetServiceDirectoryConfigArgs;
/// import com.pulumi.gcp.ces.inputs.ToolsetMcpToolsetApiAuthenticationArgs;
/// import com.pulumi.gcp.ces.inputs.ToolsetMcpToolsetApiAuthenticationBearerTokenConfigArgs;
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
///         var cesAppForToolset = new App("cesAppForToolset", AppArgs.builder()
///             .appId("app-id")
///             .location("us")
///             .description("App used as parent for CES Toolset example")
///             .displayName("my-app")
///             .languageSettings(AppLanguageSettingsArgs.builder()
///                 .defaultLanguageCode("en-US")
///                 .supportedLanguageCodes(
///                     "es-ES",
///                     "fr-FR")
///                 .enableMultilingualSupport(true)
///                 .fallbackAction("escalate")
///                 .build())
///             .timeZoneSettings(AppTimeZoneSettingsArgs.builder()
///                 .timeZone("America/Los_Angeles")
///                 .build())
///             .build());
///
///         var cesToolsetMcpBearerTokenConfig = new Toolset("cesToolsetMcpBearerTokenConfig", ToolsetArgs.builder()
///             .toolsetId("toolset1")
///             .location("us")
///             .app(cesAppForToolset.appId())
///             .displayName("Basic toolset display name")
///             .mcpToolset(ToolsetMcpToolsetArgs.builder()
///                 .serverAddress("https://api.example.com/mcp/")
///                 .tlsConfig(ToolsetMcpToolsetTlsConfigArgs.builder()
///                     .caCerts(ToolsetMcpToolsetTlsConfigCaCertArgs.builder()
///                         .displayName("example")
///                         .cert("ZXhhbXBsZQ==")
///                         .build())
///                     .build())
///                 .serviceDirectoryConfig(ToolsetMcpToolsetServiceDirectoryConfigArgs.builder()
///                     .service("projects/example/locations/us/namespaces/namespace/services/service")
///                     .build())
///                 .apiAuthentication(ToolsetMcpToolsetApiAuthenticationArgs.builder()
///                     .bearerTokenConfig(ToolsetMcpToolsetApiAuthenticationBearerTokenConfigArgs.builder()
///                         .token("$context.variables.my_ces_toolset_auth_token")
///                         .build())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   cesAppForToolset:
///     type: gcp:ces:App
///     name: ces_app_for_toolset
///     properties:
///       appId: app-id
///       location: us
///       description: App used as parent for CES Toolset example
///       displayName: my-app
///       languageSettings:
///         defaultLanguageCode: en-US
///         supportedLanguageCodes:
///           - es-ES
///           - fr-FR
///         enableMultilingualSupport: true
///         fallbackAction: escalate
///       timeZoneSettings:
///         timeZone: America/Los_Angeles
///   cesToolsetMcpBearerTokenConfig:
///     type: gcp:ces:Toolset
///     name: ces_toolset_mcp_bearer_token_config
///     properties:
///       toolsetId: toolset1
///       location: us
///       app: ${cesAppForToolset.appId}
///       displayName: Basic toolset display name
///       mcpToolset:
///         serverAddress: https://api.example.com/mcp/
///         tlsConfig:
///           caCerts:
///             - displayName: example
///               cert: ZXhhbXBsZQ==
///         serviceDirectoryConfig:
///           service: projects/example/locations/us/namespaces/namespace/services/service
///         apiAuthentication:
///           bearerTokenConfig:
///             token: $context.variables.my_ces_toolset_auth_token
/// ```
///
///
/// ## Import
///
/// Toolset can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/apps/{{app}}/toolsets/{{toolset_id}}`
/// * `{{project}}/{{location}}/{{app}}/{{toolset_id}}`
/// * `{{location}}/{{app}}/{{toolset_id}}`
///
///
/// When using the `pulumi import` command, Toolset can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:ces/toolset:Toolset default projects/{{project}}/locations/{{location}}/apps/{{app}}/toolsets/{{toolset_id}}
/// $ pulumi import gcp:ces/toolset:Toolset default {{project}}/{{location}}/{{app}}/{{toolset_id}}
/// $ pulumi import gcp:ces/toolset:Toolset default {{location}}/{{app}}/{{toolset_id}}
/// ```
class Toolset extends pulumi.CustomResource {
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final pulumi.Output<String> app;
  /// Timestamp when the toolset was created.
  late final pulumi.Output<String> createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// The description of the toolset.
  late final pulumi.Output<String?> description;
  /// The display name of the toolset. Must be unique within the same app.
  late final pulumi.Output<String?> displayName;
  /// ETag used to ensure the object hasn't changed during a read-modify-write
  /// operation. If the etag is empty, the update will overwrite any concurrent
  /// changes.
  late final pulumi.Output<String> etag;
  /// Possible values:
  /// SYNCHRONOUS
  /// ASYNCHRONOUS
  late final pulumi.Output<String?> executionType;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final pulumi.Output<String> location;
  /// A toolset that contains a list of tools that are offered by the MCP
  /// server.
  /// Structure is documented below.
  late final pulumi.Output<ToolsetMcpToolset?> mcpToolset;
  /// Identifier. The unique identifier of the toolset.
  /// Format:
  /// `projects/{project}/locations/{location}/apps/{app}/toolsets/{toolset}`
  late final pulumi.Output<String> name;
  /// A toolset that contains a list of tools that are defined by an OpenAPI
  /// schema.
  /// Structure is documented below.
  late final pulumi.Output<ToolsetOpenApiToolset?> openApiToolset;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// Configuration for tools behavior in fake mode.
  /// Structure is documented below.
  late final pulumi.Output<ToolsetToolFakeConfig?> toolFakeConfig;
  /// The ID to use for the toolset, which will become the final component of
  /// the toolset's resource name. If not provided, a unique ID will be
  /// automatically assigned for the toolset.
  late final pulumi.Output<String> toolsetId;
  /// Timestamp when the toolset was last updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [Toolset].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Toolset]. {@macro pulumi_ces_toolset_toolset_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Toolset(
    String name, {
    ToolsetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:ces/toolset:Toolset',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.35.1').merge(options),
        ) {
    app = registerOutput<String>('app');
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String?>('displayName');
    etag = registerOutput<String>('etag');
    executionType = registerOutput<String?>('executionType');
    location = registerOutput<String>('location');
    mcpToolset = registerOutput<ToolsetMcpToolset?>('mcpToolset', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ToolsetMcpToolset.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    openApiToolset = registerOutput<ToolsetOpenApiToolset?>('openApiToolset', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ToolsetOpenApiToolset.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    project = registerOutput<String>('project');
    toolFakeConfig = registerOutput<ToolsetToolFakeConfig?>('toolFakeConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ToolsetToolFakeConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    toolsetId = registerOutput<String>('toolsetId');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [Toolset] resource's state with the given [name] and [id].
  static Toolset get(
    String name,
    pulumi.Input<String> id, {
    ToolsetState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Toolset._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Toolset._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:ces/toolset:Toolset',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    app = registerOutput<String>('app');
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String?>('displayName');
    etag = registerOutput<String>('etag');
    executionType = registerOutput<String?>('executionType');
    location = registerOutput<String>('location');
    mcpToolset = registerOutput<ToolsetMcpToolset?>('mcpToolset', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ToolsetMcpToolset.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    openApiToolset = registerOutput<ToolsetOpenApiToolset?>('openApiToolset', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ToolsetOpenApiToolset.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    project = registerOutput<String>('project');
    toolFakeConfig = registerOutput<ToolsetToolFakeConfig?>('toolFakeConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ToolsetToolFakeConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    toolsetId = registerOutput<String>('toolsetId');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Creates a typed reference to an existing [Toolset] resource.
  Toolset.reference(String urn)
    : super(
        'gcp:ces/toolset:Toolset',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    app = registerOutput<String>('app');
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String?>('displayName');
    etag = registerOutput<String>('etag');
    executionType = registerOutput<String?>('executionType');
    location = registerOutput<String>('location');
    mcpToolset = registerOutput<ToolsetMcpToolset?>('mcpToolset', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ToolsetMcpToolset.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    openApiToolset = registerOutput<ToolsetOpenApiToolset?>('openApiToolset', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ToolsetOpenApiToolset.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    project = registerOutput<String>('project');
    toolFakeConfig = registerOutput<ToolsetToolFakeConfig?>('toolFakeConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ToolsetToolFakeConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    toolsetId = registerOutput<String>('toolsetId');
    updateTime = registerOutput<String>('updateTime');
  }
}
