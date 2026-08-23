import 'package:pulumi/pulumi.dart' as pulumi;
import 'cx_webhook_args.dart';
import 'cx_webhook_generic_web_service.dart';
import 'cx_webhook_service_directory.dart';
import 'cx_webhook_state.dart';

/// Webhooks host the developer's business logic. During a session, webhooks allow the developer to use the data extracted by Dialogflow's natural language processing to generate dynamic responses, validate collected data, or trigger actions on the backend.
///
///
/// To get more information about Webhook, see:
///
/// * [API documentation](https://cloud.google.com/dialogflow/cx/docs/reference/rest/v3/projects.locations.agents.webhooks)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/dialogflow/cx/docs)
///
/// ## Example Usage
///
/// ### Dialogflowcx Webhook Standard
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const agent = new gcp.diagflow.CxAgent("agent", {
///     displayName: "dialogflowcx-agent",
///     location: "global",
///     defaultLanguageCode: "en",
///     supportedLanguageCodes: [
///         "it",
///         "de",
///         "es",
///     ],
///     timeZone: "America/New_York",
///     description: "Example description.",
///     avatarUri: "https://cloud.google.com/_static/images/cloud/icons/favicons/onecloud/super_cloud.png",
///     enableStackdriverLogging: true,
///     enableSpellCorrection: true,
///     speechToTextSettings: {
///         enableSpeechAdaptation: true,
///     },
/// });
/// const standardWebhook = new gcp.diagflow.CxWebhook("standard_webhook", {
///     parent: agent.id,
///     displayName: "MyFlow",
///     genericWebService: {
///         allowedCaCerts: ["BQA="],
///         uri: "https://example.com",
///         requestHeaders: {
///             "example-key": "example-value",
///         },
///         webhookType: "STANDARD",
///         oauthConfig: {
///             clientId: "example-client-id",
///             secretVersionForClientSecret: "projects/example-proj/secrets/example-secret/versions/example-version",
///             tokenEndpoint: "https://example.com",
///             scopes: ["example-scope"],
///         },
///         serviceAgentAuth: "NONE",
///         secretVersionForUsernamePassword: "projects/example-proj/secrets/example-secret/versions/example-version",
///         secretVersionsForRequestHeaders: [
///             {
///                 key: "example-key-1",
///                 secretVersion: "projects/example-proj/secrets/example-secret/versions/example-version",
///             },
///             {
///                 key: "example-key-2",
///                 secretVersion: "projects/example-proj/secrets/example-secret/versions/example-version-2",
///             },
///         ],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// agent = gcp.diagflow.CxAgent("agent",
///     display_name="dialogflowcx-agent",
///     location="global",
///     default_language_code="en",
///     supported_language_codes=[
///         "it",
///         "de",
///         "es",
///     ],
///     time_zone="America/New_York",
///     description="Example description.",
///     avatar_uri="https://cloud.google.com/_static/images/cloud/icons/favicons/onecloud/super_cloud.png",
///     enable_stackdriver_logging=True,
///     enable_spell_correction=True,
///     speech_to_text_settings={
///         "enable_speech_adaptation": True,
///     })
/// standard_webhook = gcp.diagflow.CxWebhook("standard_webhook",
///     parent=agent.id,
///     display_name="MyFlow",
///     generic_web_service={
///         "allowed_ca_certs": ["BQA="],
///         "uri": "https://example.com",
///         "request_headers": {
///             "example-key": "example-value",
///         },
///         "webhook_type": "STANDARD",
///         "oauth_config": {
///             "client_id": "example-client-id",
///             "secret_version_for_client_secret": "projects/example-proj/secrets/example-secret/versions/example-version",
///             "token_endpoint": "https://example.com",
///             "scopes": ["example-scope"],
///         },
///         "service_agent_auth": "NONE",
///         "secret_version_for_username_password": "projects/example-proj/secrets/example-secret/versions/example-version",
///         "secret_versions_for_request_headers": [
///             {
///                 "key": "example-key-1",
///                 "secret_version": "projects/example-proj/secrets/example-secret/versions/example-version",
///             },
///             {
///                 "key": "example-key-2",
///                 "secret_version": "projects/example-proj/secrets/example-secret/versions/example-version-2",
///             },
///         ],
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
///     var agent = new Gcp.Diagflow.CxAgent("agent", new()
///     {
///         DisplayName = "dialogflowcx-agent",
///         Location = "global",
///         DefaultLanguageCode = "en",
///         SupportedLanguageCodes = new[]
///         {
///             "it",
///             "de",
///             "es",
///         },
///         TimeZone = "America/New_York",
///         Description = "Example description.",
///         AvatarUri = "https://cloud.google.com/_static/images/cloud/icons/favicons/onecloud/super_cloud.png",
///         EnableStackdriverLogging = true,
///         EnableSpellCorrection = true,
///         SpeechToTextSettings = new Gcp.Diagflow.Inputs.CxAgentSpeechToTextSettingsArgs
///         {
///             EnableSpeechAdaptation = true,
///         },
///     });
///
///     var standardWebhook = new Gcp.Diagflow.CxWebhook("standard_webhook", new()
///     {
///         Parent = agent.Id,
///         DisplayName = "MyFlow",
///         GenericWebService = new Gcp.Diagflow.Inputs.CxWebhookGenericWebServiceArgs
///         {
///             AllowedCaCerts = new[]
///             {
///                 "BQA=",
///             },
///             Uri = "https://example.com",
///             RequestHeaders =
///             {
///                 { "example-key", "example-value" },
///             },
///             WebhookType = "STANDARD",
///             OauthConfig = new Gcp.Diagflow.Inputs.CxWebhookGenericWebServiceOauthConfigArgs
///             {
///                 ClientId = "example-client-id",
///                 SecretVersionForClientSecret = "projects/example-proj/secrets/example-secret/versions/example-version",
///                 TokenEndpoint = "https://example.com",
///                 Scopes = new[]
///                 {
///                     "example-scope",
///                 },
///             },
///             ServiceAgentAuth = "NONE",
///             SecretVersionForUsernamePassword = "projects/example-proj/secrets/example-secret/versions/example-version",
///             SecretVersionsForRequestHeaders = new[]
///             {
///                 new Gcp.Diagflow.Inputs.CxWebhookGenericWebServiceSecretVersionsForRequestHeaderArgs
///                 {
///                     Key = "example-key-1",
///                     SecretVersion = "projects/example-proj/secrets/example-secret/versions/example-version",
///                 },
///                 new Gcp.Diagflow.Inputs.CxWebhookGenericWebServiceSecretVersionsForRequestHeaderArgs
///                 {
///                     Key = "example-key-2",
///                     SecretVersion = "projects/example-proj/secrets/example-secret/versions/example-version-2",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/diagflow"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		agent, err := diagflow.NewCxAgent(ctx, "agent", &diagflow.CxAgentArgs{
/// 			DisplayName:         pulumi.String("dialogflowcx-agent"),
/// 			Location:            pulumi.String("global"),
/// 			DefaultLanguageCode: pulumi.String("en"),
/// 			SupportedLanguageCodes: pulumi.StringArray{
/// 				pulumi.String("it"),
/// 				pulumi.String("de"),
/// 				pulumi.String("es"),
/// 			},
/// 			TimeZone:                 pulumi.String("America/New_York"),
/// 			Description:              pulumi.String("Example description."),
/// 			AvatarUri:                pulumi.String("https://cloud.google.com/_static/images/cloud/icons/favicons/onecloud/super_cloud.png"),
/// 			EnableStackdriverLogging: pulumi.Bool(true),
/// 			EnableSpellCorrection:    pulumi.Bool(true),
/// 			SpeechToTextSettings: &diagflow.CxAgentSpeechToTextSettingsArgs{
/// 				EnableSpeechAdaptation: pulumi.Bool(true),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = diagflow.NewCxWebhook(ctx, "standard_webhook", &diagflow.CxWebhookArgs{
/// 			Parent:      agent.ID().ToIDOutput().ToStringOutput(),
/// 			DisplayName: pulumi.String("MyFlow"),
/// 			GenericWebService: &diagflow.CxWebhookGenericWebServiceArgs{
/// 				AllowedCaCerts: pulumi.StringArray{
/// 					pulumi.String("BQA="),
/// 				},
/// 				Uri: pulumi.String("https://example.com"),
/// 				RequestHeaders: pulumi.StringMap{
/// 					"example-key": pulumi.String("example-value"),
/// 				},
/// 				WebhookType: pulumi.String("STANDARD"),
/// 				OauthConfig: &diagflow.CxWebhookGenericWebServiceOauthConfigArgs{
/// 					ClientId:                     pulumi.String("example-client-id"),
/// 					SecretVersionForClientSecret: pulumi.String("projects/example-proj/secrets/example-secret/versions/example-version"),
/// 					TokenEndpoint:                pulumi.String("https://example.com"),
/// 					Scopes: pulumi.StringArray{
/// 						pulumi.String("example-scope"),
/// 					},
/// 				},
/// 				ServiceAgentAuth:                 pulumi.String("NONE"),
/// 				SecretVersionForUsernamePassword: pulumi.String("projects/example-proj/secrets/example-secret/versions/example-version"),
/// 				SecretVersionsForRequestHeaders: diagflow.CxWebhookGenericWebServiceSecretVersionsForRequestHeaderArray{
/// 					&diagflow.CxWebhookGenericWebServiceSecretVersionsForRequestHeaderArgs{
/// 						Key:           pulumi.String("example-key-1"),
/// 						SecretVersion: pulumi.String("projects/example-proj/secrets/example-secret/versions/example-version"),
/// 					},
/// 					&diagflow.CxWebhookGenericWebServiceSecretVersionsForRequestHeaderArgs{
/// 						Key:           pulumi.String("example-key-2"),
/// 						SecretVersion: pulumi.String("projects/example-proj/secrets/example-secret/versions/example-version-2"),
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
/// resource "gcp_diagflow_cxagent" "agent" {
///   display_name               = "dialogflowcx-agent"
///   location                   = "global"
///   default_language_code      = "en"
///   supported_language_codes   = ["it", "de", "es"]
///   time_zone                  = "America/New_York"
///   description                = "Example description."
///   avatar_uri                 = "https://cloud.google.com/_static/images/cloud/icons/favicons/onecloud/super_cloud.png"
///   enable_stackdriver_logging = true
///   enable_spell_correction    = true
///   speech_to_text_settings = {
///     enable_speech_adaptation = true
///   }
/// }
/// resource "gcp_diagflow_cxwebhook" "standard_webhook" {
///   parent       = gcp_diagflow_cxagent.agent.id
///   display_name = "MyFlow"
///   generic_web_service = {
///     allowed_ca_certs = ["BQA="]
///     uri              = "https://example.com"
///     request_headers = {
///       "example-key" = "example-value"
///     }
///     webhook_type = "STANDARD"
///     oauth_config = {
///       client_id                        = "example-client-id"
///       secret_version_for_client_secret = "projects/example-proj/secrets/example-secret/versions/example-version"
///       token_endpoint                   = "https://example.com"
///       scopes                           = ["example-scope"]
///     }
///     service_agent_auth                   = "NONE"
///     secret_version_for_username_password = "projects/example-proj/secrets/example-secret/versions/example-version"
///     secret_versions_for_request_headers = [{
///       "key"           = "example-key-1"
///       "secretVersion" = "projects/example-proj/secrets/example-secret/versions/example-version"
///       }, {
///       "key"           = "example-key-2"
///       "secretVersion" = "projects/example-proj/secrets/example-secret/versions/example-version-2"
///     }]
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.diagflow.CxAgent;
/// import com.pulumi.gcp.diagflow.CxAgentArgs;
/// import com.pulumi.gcp.diagflow.inputs.CxAgentSpeechToTextSettingsArgs;
/// import com.pulumi.gcp.diagflow.CxWebhook;
/// import com.pulumi.gcp.diagflow.CxWebhookArgs;
/// import com.pulumi.gcp.diagflow.inputs.CxWebhookGenericWebServiceArgs;
/// import com.pulumi.gcp.diagflow.inputs.CxWebhookGenericWebServiceOauthConfigArgs;
/// import com.pulumi.gcp.diagflow.inputs.CxWebhookGenericWebServiceSecretVersionsForRequestHeaderArgs;
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
///         var agent = new CxAgent("agent", CxAgentArgs.builder()
///             .displayName("dialogflowcx-agent")
///             .location("global")
///             .defaultLanguageCode("en")
///             .supportedLanguageCodes(
///                 "it",
///                 "de",
///                 "es")
///             .timeZone("America/New_York")
///             .description("Example description.")
///             .avatarUri("https://cloud.google.com/_static/images/cloud/icons/favicons/onecloud/super_cloud.png")
///             .enableStackdriverLogging(true)
///             .enableSpellCorrection(true)
///             .speechToTextSettings(CxAgentSpeechToTextSettingsArgs.builder()
///                 .enableSpeechAdaptation(true)
///                 .build())
///             .build());
///
///         var standardWebhook = new CxWebhook("standardWebhook", CxWebhookArgs.builder()
///             .parent(agent.id())
///             .displayName("MyFlow")
///             .genericWebService(CxWebhookGenericWebServiceArgs.builder()
///                 .allowedCaCerts("BQA=")
///                 .uri("https://example.com")
///                 .requestHeaders(Map.of("example-key", "example-value"))
///                 .webhookType("STANDARD")
///                 .oauthConfig(CxWebhookGenericWebServiceOauthConfigArgs.builder()
///                     .clientId("example-client-id")
///                     .secretVersionForClientSecret("projects/example-proj/secrets/example-secret/versions/example-version")
///                     .tokenEndpoint("https://example.com")
///                     .scopes("example-scope")
///                     .build())
///                 .serviceAgentAuth("NONE")
///                 .secretVersionForUsernamePassword("projects/example-proj/secrets/example-secret/versions/example-version")
///                 .secretVersionsForRequestHeaders(
///                     CxWebhookGenericWebServiceSecretVersionsForRequestHeaderArgs.builder()
///                         .key("example-key-1")
///                         .secretVersion("projects/example-proj/secrets/example-secret/versions/example-version")
///                         .build(),
///                     CxWebhookGenericWebServiceSecretVersionsForRequestHeaderArgs.builder()
///                         .key("example-key-2")
///                         .secretVersion("projects/example-proj/secrets/example-secret/versions/example-version-2")
///                         .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   agent:
///     type: gcp:diagflow:CxAgent
///     properties:
///       displayName: dialogflowcx-agent
///       location: global
///       defaultLanguageCode: en
///       supportedLanguageCodes:
///         - it
///         - de
///         - es
///       timeZone: America/New_York
///       description: Example description.
///       avatarUri: https://cloud.google.com/_static/images/cloud/icons/favicons/onecloud/super_cloud.png
///       enableStackdriverLogging: true
///       enableSpellCorrection: true
///       speechToTextSettings:
///         enableSpeechAdaptation: true
///   standardWebhook:
///     type: gcp:diagflow:CxWebhook
///     name: standard_webhook
///     properties:
///       parent: ${agent.id}
///       displayName: MyFlow
///       genericWebService:
///         allowedCaCerts:
///           - BQA=
///         uri: https://example.com
///         requestHeaders:
///           example-key: example-value
///         webhookType: STANDARD
///         oauthConfig:
///           clientId: example-client-id
///           secretVersionForClientSecret: projects/example-proj/secrets/example-secret/versions/example-version
///           tokenEndpoint: https://example.com
///           scopes:
///             - example-scope
///         serviceAgentAuth: NONE
///         secretVersionForUsernamePassword: projects/example-proj/secrets/example-secret/versions/example-version
///         secretVersionsForRequestHeaders:
///           - key: example-key-1
///             secretVersion: projects/example-proj/secrets/example-secret/versions/example-version
///           - key: example-key-2
///             secretVersion: projects/example-proj/secrets/example-secret/versions/example-version-2
/// ```
///
/// ### Dialogflowcx Webhook Flexible
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const agent = new gcp.diagflow.CxAgent("agent", {
///     displayName: "dialogflowcx-agent",
///     location: "global",
///     defaultLanguageCode: "en",
///     supportedLanguageCodes: [
///         "it",
///         "de",
///         "es",
///     ],
///     timeZone: "America/New_York",
///     description: "Example description.",
///     avatarUri: "https://cloud.google.com/_static/images/cloud/icons/favicons/onecloud/super_cloud.png",
///     enableStackdriverLogging: true,
///     enableSpellCorrection: true,
///     speechToTextSettings: {
///         enableSpeechAdaptation: true,
///     },
/// });
/// const flexibleWebhook = new gcp.diagflow.CxWebhook("flexible_webhook", {
///     parent: agent.id,
///     displayName: "MyFlow",
///     genericWebService: {
///         uri: "https://example.com",
///         requestHeaders: {
///             "example-key": "example-value",
///         },
///         webhookType: "FLEXIBLE",
///         oauthConfig: {
///             clientId: "example-client-id",
///             clientSecret: "projects/example-proj/secrets/example-secret/versions/example-version",
///             tokenEndpoint: "https://example.com",
///         },
///         serviceAgentAuth: "NONE",
///         httpMethod: "POST",
///         requestBody: "{\"example-key\": \"example-value\"}",
///         parameterMapping: {
///             "example-parameter": "examplePath",
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// agent = gcp.diagflow.CxAgent("agent",
///     display_name="dialogflowcx-agent",
///     location="global",
///     default_language_code="en",
///     supported_language_codes=[
///         "it",
///         "de",
///         "es",
///     ],
///     time_zone="America/New_York",
///     description="Example description.",
///     avatar_uri="https://cloud.google.com/_static/images/cloud/icons/favicons/onecloud/super_cloud.png",
///     enable_stackdriver_logging=True,
///     enable_spell_correction=True,
///     speech_to_text_settings={
///         "enable_speech_adaptation": True,
///     })
/// flexible_webhook = gcp.diagflow.CxWebhook("flexible_webhook",
///     parent=agent.id,
///     display_name="MyFlow",
///     generic_web_service={
///         "uri": "https://example.com",
///         "request_headers": {
///             "example-key": "example-value",
///         },
///         "webhook_type": "FLEXIBLE",
///         "oauth_config": {
///             "client_id": "example-client-id",
///             "client_secret": "projects/example-proj/secrets/example-secret/versions/example-version",
///             "token_endpoint": "https://example.com",
///         },
///         "service_agent_auth": "NONE",
///         "http_method": "POST",
///         "request_body": "{\"example-key\": \"example-value\"}",
///         "parameter_mapping": {
///             "example-parameter": "examplePath",
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
///     var agent = new Gcp.Diagflow.CxAgent("agent", new()
///     {
///         DisplayName = "dialogflowcx-agent",
///         Location = "global",
///         DefaultLanguageCode = "en",
///         SupportedLanguageCodes = new[]
///         {
///             "it",
///             "de",
///             "es",
///         },
///         TimeZone = "America/New_York",
///         Description = "Example description.",
///         AvatarUri = "https://cloud.google.com/_static/images/cloud/icons/favicons/onecloud/super_cloud.png",
///         EnableStackdriverLogging = true,
///         EnableSpellCorrection = true,
///         SpeechToTextSettings = new Gcp.Diagflow.Inputs.CxAgentSpeechToTextSettingsArgs
///         {
///             EnableSpeechAdaptation = true,
///         },
///     });
///
///     var flexibleWebhook = new Gcp.Diagflow.CxWebhook("flexible_webhook", new()
///     {
///         Parent = agent.Id,
///         DisplayName = "MyFlow",
///         GenericWebService = new Gcp.Diagflow.Inputs.CxWebhookGenericWebServiceArgs
///         {
///             Uri = "https://example.com",
///             RequestHeaders =
///             {
///                 { "example-key", "example-value" },
///             },
///             WebhookType = "FLEXIBLE",
///             OauthConfig = new Gcp.Diagflow.Inputs.CxWebhookGenericWebServiceOauthConfigArgs
///             {
///                 ClientId = "example-client-id",
///                 ClientSecret = "projects/example-proj/secrets/example-secret/versions/example-version",
///                 TokenEndpoint = "https://example.com",
///             },
///             ServiceAgentAuth = "NONE",
///             HttpMethod = "POST",
///             RequestBody = "{\"example-key\": \"example-value\"}",
///             ParameterMapping =
///             {
///                 { "example-parameter", "examplePath" },
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/diagflow"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		agent, err := diagflow.NewCxAgent(ctx, "agent", &diagflow.CxAgentArgs{
/// 			DisplayName:         pulumi.String("dialogflowcx-agent"),
/// 			Location:            pulumi.String("global"),
/// 			DefaultLanguageCode: pulumi.String("en"),
/// 			SupportedLanguageCodes: pulumi.StringArray{
/// 				pulumi.String("it"),
/// 				pulumi.String("de"),
/// 				pulumi.String("es"),
/// 			},
/// 			TimeZone:                 pulumi.String("America/New_York"),
/// 			Description:              pulumi.String("Example description."),
/// 			AvatarUri:                pulumi.String("https://cloud.google.com/_static/images/cloud/icons/favicons/onecloud/super_cloud.png"),
/// 			EnableStackdriverLogging: pulumi.Bool(true),
/// 			EnableSpellCorrection:    pulumi.Bool(true),
/// 			SpeechToTextSettings: &diagflow.CxAgentSpeechToTextSettingsArgs{
/// 				EnableSpeechAdaptation: pulumi.Bool(true),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = diagflow.NewCxWebhook(ctx, "flexible_webhook", &diagflow.CxWebhookArgs{
/// 			Parent:      agent.ID().ToIDOutput().ToStringOutput(),
/// 			DisplayName: pulumi.String("MyFlow"),
/// 			GenericWebService: &diagflow.CxWebhookGenericWebServiceArgs{
/// 				Uri: pulumi.String("https://example.com"),
/// 				RequestHeaders: pulumi.StringMap{
/// 					"example-key": pulumi.String("example-value"),
/// 				},
/// 				WebhookType: pulumi.String("FLEXIBLE"),
/// 				OauthConfig: &diagflow.CxWebhookGenericWebServiceOauthConfigArgs{
/// 					ClientId:      pulumi.String("example-client-id"),
/// 					ClientSecret:  pulumi.String("projects/example-proj/secrets/example-secret/versions/example-version"),
/// 					TokenEndpoint: pulumi.String("https://example.com"),
/// 				},
/// 				ServiceAgentAuth: pulumi.String("NONE"),
/// 				HttpMethod:       pulumi.String("POST"),
/// 				RequestBody:      pulumi.String("{\"example-key\": \"example-value\"}"),
/// 				ParameterMapping: pulumi.StringMap{
/// 					"example-parameter": pulumi.String("examplePath"),
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
/// resource "gcp_diagflow_cxagent" "agent" {
///   display_name               = "dialogflowcx-agent"
///   location                   = "global"
///   default_language_code      = "en"
///   supported_language_codes   = ["it", "de", "es"]
///   time_zone                  = "America/New_York"
///   description                = "Example description."
///   avatar_uri                 = "https://cloud.google.com/_static/images/cloud/icons/favicons/onecloud/super_cloud.png"
///   enable_stackdriver_logging = true
///   enable_spell_correction    = true
///   speech_to_text_settings = {
///     enable_speech_adaptation = true
///   }
/// }
/// resource "gcp_diagflow_cxwebhook" "flexible_webhook" {
///   parent       = gcp_diagflow_cxagent.agent.id
///   display_name = "MyFlow"
///   generic_web_service = {
///     uri = "https://example.com"
///     request_headers = {
///       "example-key" = "example-value"
///     }
///     webhook_type = "FLEXIBLE"
///     oauth_config = {
///       client_id      = "example-client-id"
///       client_secret  = "projects/example-proj/secrets/example-secret/versions/example-version"
///       token_endpoint = "https://example.com"
///     }
///     service_agent_auth = "NONE"
///     http_method        = "POST"
///     request_body       = "{\"example-key\": \"example-value\"}"
///     parameter_mapping = {
///       "example-parameter" = "examplePath"
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
/// import com.pulumi.gcp.diagflow.CxAgent;
/// import com.pulumi.gcp.diagflow.CxAgentArgs;
/// import com.pulumi.gcp.diagflow.inputs.CxAgentSpeechToTextSettingsArgs;
/// import com.pulumi.gcp.diagflow.CxWebhook;
/// import com.pulumi.gcp.diagflow.CxWebhookArgs;
/// import com.pulumi.gcp.diagflow.inputs.CxWebhookGenericWebServiceArgs;
/// import com.pulumi.gcp.diagflow.inputs.CxWebhookGenericWebServiceOauthConfigArgs;
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
///         var agent = new CxAgent("agent", CxAgentArgs.builder()
///             .displayName("dialogflowcx-agent")
///             .location("global")
///             .defaultLanguageCode("en")
///             .supportedLanguageCodes(
///                 "it",
///                 "de",
///                 "es")
///             .timeZone("America/New_York")
///             .description("Example description.")
///             .avatarUri("https://cloud.google.com/_static/images/cloud/icons/favicons/onecloud/super_cloud.png")
///             .enableStackdriverLogging(true)
///             .enableSpellCorrection(true)
///             .speechToTextSettings(CxAgentSpeechToTextSettingsArgs.builder()
///                 .enableSpeechAdaptation(true)
///                 .build())
///             .build());
///
///         var flexibleWebhook = new CxWebhook("flexibleWebhook", CxWebhookArgs.builder()
///             .parent(agent.id())
///             .displayName("MyFlow")
///             .genericWebService(CxWebhookGenericWebServiceArgs.builder()
///                 .uri("https://example.com")
///                 .requestHeaders(Map.of("example-key", "example-value"))
///                 .webhookType("FLEXIBLE")
///                 .oauthConfig(CxWebhookGenericWebServiceOauthConfigArgs.builder()
///                     .clientId("example-client-id")
///                     .clientSecret("projects/example-proj/secrets/example-secret/versions/example-version")
///                     .tokenEndpoint("https://example.com")
///                     .build())
///                 .serviceAgentAuth("NONE")
///                 .httpMethod("POST")
///                 .requestBody("{\"example-key\": \"example-value\"}")
///                 .parameterMapping(Map.of("example-parameter", "examplePath"))
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   agent:
///     type: gcp:diagflow:CxAgent
///     properties:
///       displayName: dialogflowcx-agent
///       location: global
///       defaultLanguageCode: en
///       supportedLanguageCodes:
///         - it
///         - de
///         - es
///       timeZone: America/New_York
///       description: Example description.
///       avatarUri: https://cloud.google.com/_static/images/cloud/icons/favicons/onecloud/super_cloud.png
///       enableStackdriverLogging: true
///       enableSpellCorrection: true
///       speechToTextSettings:
///         enableSpeechAdaptation: true
///   flexibleWebhook:
///     type: gcp:diagflow:CxWebhook
///     name: flexible_webhook
///     properties:
///       parent: ${agent.id}
///       displayName: MyFlow
///       genericWebService:
///         uri: https://example.com
///         requestHeaders:
///           example-key: example-value
///         webhookType: FLEXIBLE
///         oauthConfig:
///           clientId: example-client-id
///           clientSecret: projects/example-proj/secrets/example-secret/versions/example-version
///           tokenEndpoint: https://example.com
///         serviceAgentAuth: NONE
///         httpMethod: POST
///         requestBody: '{"example-key": "example-value"}'
///         parameterMapping:
///           example-parameter: examplePath
/// ```
///
/// ### Dialogflowcx Webhook Service Directory Standard
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const agent = new gcp.diagflow.CxAgent("agent", {
///     displayName: "dialogflowcx-agent",
///     location: "us-central1",
///     defaultLanguageCode: "en",
///     supportedLanguageCodes: [
///         "it",
///         "de",
///         "es",
///     ],
///     timeZone: "America/New_York",
///     description: "Example description.",
///     avatarUri: "https://cloud.google.com/_static/images/cloud/icons/favicons/onecloud/super_cloud.png",
///     enableStackdriverLogging: true,
///     enableSpellCorrection: true,
///     speechToTextSettings: {
///         enableSpeechAdaptation: true,
///     },
/// });
/// const standardWebhook = new gcp.diagflow.CxWebhook("standard_webhook", {
///     parent: agent.id,
///     displayName: "MyFlow",
///     serviceDirectory: {
///         service: "projects/example-proj/locations/us-central1/namespaces/example-namespace/services/example-service",
///         genericWebService: {
///             allowedCaCerts: ["BQA="],
///             uri: "https://example.com",
///             requestHeaders: {
///                 "example-key": "example-value",
///             },
///             webhookType: "STANDARD",
///             oauthConfig: {
///                 clientId: "example-client-id",
///                 secretVersionForClientSecret: "projects/example-proj/secrets/example-secret/versions/example-version",
///                 tokenEndpoint: "https://example.com",
///                 scopes: ["example-scope"],
///             },
///             serviceAgentAuth: "NONE",
///             secretVersionForUsernamePassword: "projects/example-proj/secrets/example-secret/versions/example-version",
///             secretVersionsForRequestHeaders: [
///                 {
///                     key: "example-key-1",
///                     secretVersion: "projects/example-proj/secrets/example-secret/versions/example-version",
///                 },
///                 {
///                     key: "example-key-2",
///                     secretVersion: "projects/example-proj/secrets/example-secret/versions/example-version-2",
///                 },
///             ],
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// agent = gcp.diagflow.CxAgent("agent",
///     display_name="dialogflowcx-agent",
///     location="us-central1",
///     default_language_code="en",
///     supported_language_codes=[
///         "it",
///         "de",
///         "es",
///     ],
///     time_zone="America/New_York",
///     description="Example description.",
///     avatar_uri="https://cloud.google.com/_static/images/cloud/icons/favicons/onecloud/super_cloud.png",
///     enable_stackdriver_logging=True,
///     enable_spell_correction=True,
///     speech_to_text_settings={
///         "enable_speech_adaptation": True,
///     })
/// standard_webhook = gcp.diagflow.CxWebhook("standard_webhook",
///     parent=agent.id,
///     display_name="MyFlow",
///     service_directory={
///         "service": "projects/example-proj/locations/us-central1/namespaces/example-namespace/services/example-service",
///         "generic_web_service": {
///             "allowed_ca_certs": ["BQA="],
///             "uri": "https://example.com",
///             "request_headers": {
///                 "example-key": "example-value",
///             },
///             "webhook_type": "STANDARD",
///             "oauth_config": {
///                 "client_id": "example-client-id",
///                 "secret_version_for_client_secret": "projects/example-proj/secrets/example-secret/versions/example-version",
///                 "token_endpoint": "https://example.com",
///                 "scopes": ["example-scope"],
///             },
///             "service_agent_auth": "NONE",
///             "secret_version_for_username_password": "projects/example-proj/secrets/example-secret/versions/example-version",
///             "secret_versions_for_request_headers": [
///                 {
///                     "key": "example-key-1",
///                     "secret_version": "projects/example-proj/secrets/example-secret/versions/example-version",
///                 },
///                 {
///                     "key": "example-key-2",
///                     "secret_version": "projects/example-proj/secrets/example-secret/versions/example-version-2",
///                 },
///             ],
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
///     var agent = new Gcp.Diagflow.CxAgent("agent", new()
///     {
///         DisplayName = "dialogflowcx-agent",
///         Location = "us-central1",
///         DefaultLanguageCode = "en",
///         SupportedLanguageCodes = new[]
///         {
///             "it",
///             "de",
///             "es",
///         },
///         TimeZone = "America/New_York",
///         Description = "Example description.",
///         AvatarUri = "https://cloud.google.com/_static/images/cloud/icons/favicons/onecloud/super_cloud.png",
///         EnableStackdriverLogging = true,
///         EnableSpellCorrection = true,
///         SpeechToTextSettings = new Gcp.Diagflow.Inputs.CxAgentSpeechToTextSettingsArgs
///         {
///             EnableSpeechAdaptation = true,
///         },
///     });
///
///     var standardWebhook = new Gcp.Diagflow.CxWebhook("standard_webhook", new()
///     {
///         Parent = agent.Id,
///         DisplayName = "MyFlow",
///         ServiceDirectory = new Gcp.Diagflow.Inputs.CxWebhookServiceDirectoryArgs
///         {
///             Service = "projects/example-proj/locations/us-central1/namespaces/example-namespace/services/example-service",
///             GenericWebService = new Gcp.Diagflow.Inputs.CxWebhookServiceDirectoryGenericWebServiceArgs
///             {
///                 AllowedCaCerts = new[]
///                 {
///                     "BQA=",
///                 },
///                 Uri = "https://example.com",
///                 RequestHeaders =
///                 {
///                     { "example-key", "example-value" },
///                 },
///                 WebhookType = "STANDARD",
///                 OauthConfig = new Gcp.Diagflow.Inputs.CxWebhookServiceDirectoryGenericWebServiceOauthConfigArgs
///                 {
///                     ClientId = "example-client-id",
///                     SecretVersionForClientSecret = "projects/example-proj/secrets/example-secret/versions/example-version",
///                     TokenEndpoint = "https://example.com",
///                     Scopes = new[]
///                     {
///                         "example-scope",
///                     },
///                 },
///                 ServiceAgentAuth = "NONE",
///                 SecretVersionForUsernamePassword = "projects/example-proj/secrets/example-secret/versions/example-version",
///                 SecretVersionsForRequestHeaders = new[]
///                 {
///                     new Gcp.Diagflow.Inputs.CxWebhookServiceDirectoryGenericWebServiceSecretVersionsForRequestHeaderArgs
///                     {
///                         Key = "example-key-1",
///                         SecretVersion = "projects/example-proj/secrets/example-secret/versions/example-version",
///                     },
///                     new Gcp.Diagflow.Inputs.CxWebhookServiceDirectoryGenericWebServiceSecretVersionsForRequestHeaderArgs
///                     {
///                         Key = "example-key-2",
///                         SecretVersion = "projects/example-proj/secrets/example-secret/versions/example-version-2",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/diagflow"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		agent, err := diagflow.NewCxAgent(ctx, "agent", &diagflow.CxAgentArgs{
/// 			DisplayName:         pulumi.String("dialogflowcx-agent"),
/// 			Location:            pulumi.String("us-central1"),
/// 			DefaultLanguageCode: pulumi.String("en"),
/// 			SupportedLanguageCodes: pulumi.StringArray{
/// 				pulumi.String("it"),
/// 				pulumi.String("de"),
/// 				pulumi.String("es"),
/// 			},
/// 			TimeZone:                 pulumi.String("America/New_York"),
/// 			Description:              pulumi.String("Example description."),
/// 			AvatarUri:                pulumi.String("https://cloud.google.com/_static/images/cloud/icons/favicons/onecloud/super_cloud.png"),
/// 			EnableStackdriverLogging: pulumi.Bool(true),
/// 			EnableSpellCorrection:    pulumi.Bool(true),
/// 			SpeechToTextSettings: &diagflow.CxAgentSpeechToTextSettingsArgs{
/// 				EnableSpeechAdaptation: pulumi.Bool(true),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = diagflow.NewCxWebhook(ctx, "standard_webhook", &diagflow.CxWebhookArgs{
/// 			Parent:      agent.ID().ToIDOutput().ToStringOutput(),
/// 			DisplayName: pulumi.String("MyFlow"),
/// 			ServiceDirectory: &diagflow.CxWebhookServiceDirectoryArgs{
/// 				Service: pulumi.String("projects/example-proj/locations/us-central1/namespaces/example-namespace/services/example-service"),
/// 				GenericWebService: &diagflow.CxWebhookServiceDirectoryGenericWebServiceArgs{
/// 					AllowedCaCerts: pulumi.StringArray{
/// 						pulumi.String("BQA="),
/// 					},
/// 					Uri: pulumi.String("https://example.com"),
/// 					RequestHeaders: pulumi.StringMap{
/// 						"example-key": pulumi.String("example-value"),
/// 					},
/// 					WebhookType: pulumi.String("STANDARD"),
/// 					OauthConfig: &diagflow.CxWebhookServiceDirectoryGenericWebServiceOauthConfigArgs{
/// 						ClientId:                     pulumi.String("example-client-id"),
/// 						SecretVersionForClientSecret: pulumi.String("projects/example-proj/secrets/example-secret/versions/example-version"),
/// 						TokenEndpoint:                pulumi.String("https://example.com"),
/// 						Scopes: pulumi.StringArray{
/// 							pulumi.String("example-scope"),
/// 						},
/// 					},
/// 					ServiceAgentAuth:                 pulumi.String("NONE"),
/// 					SecretVersionForUsernamePassword: pulumi.String("projects/example-proj/secrets/example-secret/versions/example-version"),
/// 					SecretVersionsForRequestHeaders: diagflow.CxWebhookServiceDirectoryGenericWebServiceSecretVersionsForRequestHeaderArray{
/// 						&diagflow.CxWebhookServiceDirectoryGenericWebServiceSecretVersionsForRequestHeaderArgs{
/// 							Key:           pulumi.String("example-key-1"),
/// 							SecretVersion: pulumi.String("projects/example-proj/secrets/example-secret/versions/example-version"),
/// 						},
/// 						&diagflow.CxWebhookServiceDirectoryGenericWebServiceSecretVersionsForRequestHeaderArgs{
/// 							Key:           pulumi.String("example-key-2"),
/// 							SecretVersion: pulumi.String("projects/example-proj/secrets/example-secret/versions/example-version-2"),
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
/// resource "gcp_diagflow_cxagent" "agent" {
///   display_name               = "dialogflowcx-agent"
///   location                   = "us-central1"
///   default_language_code      = "en"
///   supported_language_codes   = ["it", "de", "es"]
///   time_zone                  = "America/New_York"
///   description                = "Example description."
///   avatar_uri                 = "https://cloud.google.com/_static/images/cloud/icons/favicons/onecloud/super_cloud.png"
///   enable_stackdriver_logging = true
///   enable_spell_correction    = true
///   speech_to_text_settings = {
///     enable_speech_adaptation = true
///   }
/// }
/// resource "gcp_diagflow_cxwebhook" "standard_webhook" {
///   parent       = gcp_diagflow_cxagent.agent.id
///   display_name = "MyFlow"
///   service_directory = {
///     service = "projects/example-proj/locations/us-central1/namespaces/example-namespace/services/example-service"
///     generic_web_service = {
///       allowed_ca_certs = ["BQA="]
///       uri              = "https://example.com"
///       request_headers = {
///         "example-key" = "example-value"
///       }
///       webhook_type = "STANDARD"
///       oauth_config = {
///         client_id                        = "example-client-id"
///         secret_version_for_client_secret = "projects/example-proj/secrets/example-secret/versions/example-version"
///         token_endpoint                   = "https://example.com"
///         scopes                           = ["example-scope"]
///       }
///       service_agent_auth                   = "NONE"
///       secret_version_for_username_password = "projects/example-proj/secrets/example-secret/versions/example-version"
///       secret_versions_for_request_headers = [{
///         "key"           = "example-key-1"
///         "secretVersion" = "projects/example-proj/secrets/example-secret/versions/example-version"
///         }, {
///         "key"           = "example-key-2"
///         "secretVersion" = "projects/example-proj/secrets/example-secret/versions/example-version-2"
///       }]
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
/// import com.pulumi.gcp.diagflow.CxAgent;
/// import com.pulumi.gcp.diagflow.CxAgentArgs;
/// import com.pulumi.gcp.diagflow.inputs.CxAgentSpeechToTextSettingsArgs;
/// import com.pulumi.gcp.diagflow.CxWebhook;
/// import com.pulumi.gcp.diagflow.CxWebhookArgs;
/// import com.pulumi.gcp.diagflow.inputs.CxWebhookServiceDirectoryArgs;
/// import com.pulumi.gcp.diagflow.inputs.CxWebhookServiceDirectoryGenericWebServiceArgs;
/// import com.pulumi.gcp.diagflow.inputs.CxWebhookServiceDirectoryGenericWebServiceOauthConfigArgs;
/// import com.pulumi.gcp.diagflow.inputs.CxWebhookServiceDirectoryGenericWebServiceSecretVersionsForRequestHeaderArgs;
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
///         var agent = new CxAgent("agent", CxAgentArgs.builder()
///             .displayName("dialogflowcx-agent")
///             .location("us-central1")
///             .defaultLanguageCode("en")
///             .supportedLanguageCodes(
///                 "it",
///                 "de",
///                 "es")
///             .timeZone("America/New_York")
///             .description("Example description.")
///             .avatarUri("https://cloud.google.com/_static/images/cloud/icons/favicons/onecloud/super_cloud.png")
///             .enableStackdriverLogging(true)
///             .enableSpellCorrection(true)
///             .speechToTextSettings(CxAgentSpeechToTextSettingsArgs.builder()
///                 .enableSpeechAdaptation(true)
///                 .build())
///             .build());
///
///         var standardWebhook = new CxWebhook("standardWebhook", CxWebhookArgs.builder()
///             .parent(agent.id())
///             .displayName("MyFlow")
///             .serviceDirectory(CxWebhookServiceDirectoryArgs.builder()
///                 .service("projects/example-proj/locations/us-central1/namespaces/example-namespace/services/example-service")
///                 .genericWebService(CxWebhookServiceDirectoryGenericWebServiceArgs.builder()
///                     .allowedCaCerts("BQA=")
///                     .uri("https://example.com")
///                     .requestHeaders(Map.of("example-key", "example-value"))
///                     .webhookType("STANDARD")
///                     .oauthConfig(CxWebhookServiceDirectoryGenericWebServiceOauthConfigArgs.builder()
///                         .clientId("example-client-id")
///                         .secretVersionForClientSecret("projects/example-proj/secrets/example-secret/versions/example-version")
///                         .tokenEndpoint("https://example.com")
///                         .scopes("example-scope")
///                         .build())
///                     .serviceAgentAuth("NONE")
///                     .secretVersionForUsernamePassword("projects/example-proj/secrets/example-secret/versions/example-version")
///                     .secretVersionsForRequestHeaders(
///                         CxWebhookServiceDirectoryGenericWebServiceSecretVersionsForRequestHeaderArgs.builder()
///                             .key("example-key-1")
///                             .secretVersion("projects/example-proj/secrets/example-secret/versions/example-version")
///                             .build(),
///                         CxWebhookServiceDirectoryGenericWebServiceSecretVersionsForRequestHeaderArgs.builder()
///                             .key("example-key-2")
///                             .secretVersion("projects/example-proj/secrets/example-secret/versions/example-version-2")
///                             .build())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   agent:
///     type: gcp:diagflow:CxAgent
///     properties:
///       displayName: dialogflowcx-agent
///       location: us-central1
///       defaultLanguageCode: en
///       supportedLanguageCodes:
///         - it
///         - de
///         - es
///       timeZone: America/New_York
///       description: Example description.
///       avatarUri: https://cloud.google.com/_static/images/cloud/icons/favicons/onecloud/super_cloud.png
///       enableStackdriverLogging: true
///       enableSpellCorrection: true
///       speechToTextSettings:
///         enableSpeechAdaptation: true
///   standardWebhook:
///     type: gcp:diagflow:CxWebhook
///     name: standard_webhook
///     properties:
///       parent: ${agent.id}
///       displayName: MyFlow
///       serviceDirectory:
///         service: projects/example-proj/locations/us-central1/namespaces/example-namespace/services/example-service
///         genericWebService:
///           allowedCaCerts:
///             - BQA=
///           uri: https://example.com
///           requestHeaders:
///             example-key: example-value
///           webhookType: STANDARD
///           oauthConfig:
///             clientId: example-client-id
///             secretVersionForClientSecret: projects/example-proj/secrets/example-secret/versions/example-version
///             tokenEndpoint: https://example.com
///             scopes:
///               - example-scope
///           serviceAgentAuth: NONE
///           secretVersionForUsernamePassword: projects/example-proj/secrets/example-secret/versions/example-version
///           secretVersionsForRequestHeaders:
///             - key: example-key-1
///               secretVersion: projects/example-proj/secrets/example-secret/versions/example-version
///             - key: example-key-2
///               secretVersion: projects/example-proj/secrets/example-secret/versions/example-version-2
/// ```
///
/// ### Dialogflowcx Webhook Service Directory Flexible
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const agent = new gcp.diagflow.CxAgent("agent", {
///     displayName: "dialogflowcx-agent",
///     location: "us-central1",
///     defaultLanguageCode: "en",
///     supportedLanguageCodes: [
///         "it",
///         "de",
///         "es",
///     ],
///     timeZone: "America/New_York",
///     description: "Example description.",
///     avatarUri: "https://cloud.google.com/_static/images/cloud/icons/favicons/onecloud/super_cloud.png",
///     enableStackdriverLogging: true,
///     enableSpellCorrection: true,
///     speechToTextSettings: {
///         enableSpeechAdaptation: true,
///     },
/// });
/// const flexibleWebhook = new gcp.diagflow.CxWebhook("flexible_webhook", {
///     parent: agent.id,
///     displayName: "MyFlow",
///     serviceDirectory: {
///         service: "projects/example-proj/locations/us-central1/namespaces/example-namespace/services/example-service",
///         genericWebService: {
///             uri: "https://example.com",
///             requestHeaders: {
///                 "example-key": "example-value",
///             },
///             webhookType: "FLEXIBLE",
///             oauthConfig: {
///                 clientId: "example-client-id",
///                 clientSecret: "projects/example-proj/secrets/example-secret/versions/example-version",
///                 tokenEndpoint: "https://example.com",
///             },
///             serviceAgentAuth: "NONE",
///             httpMethod: "POST",
///             requestBody: "{\"example-key\": \"example-value\"}",
///             parameterMapping: {
///                 "example-parameter": "examplePath",
///             },
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// agent = gcp.diagflow.CxAgent("agent",
///     display_name="dialogflowcx-agent",
///     location="us-central1",
///     default_language_code="en",
///     supported_language_codes=[
///         "it",
///         "de",
///         "es",
///     ],
///     time_zone="America/New_York",
///     description="Example description.",
///     avatar_uri="https://cloud.google.com/_static/images/cloud/icons/favicons/onecloud/super_cloud.png",
///     enable_stackdriver_logging=True,
///     enable_spell_correction=True,
///     speech_to_text_settings={
///         "enable_speech_adaptation": True,
///     })
/// flexible_webhook = gcp.diagflow.CxWebhook("flexible_webhook",
///     parent=agent.id,
///     display_name="MyFlow",
///     service_directory={
///         "service": "projects/example-proj/locations/us-central1/namespaces/example-namespace/services/example-service",
///         "generic_web_service": {
///             "uri": "https://example.com",
///             "request_headers": {
///                 "example-key": "example-value",
///             },
///             "webhook_type": "FLEXIBLE",
///             "oauth_config": {
///                 "client_id": "example-client-id",
///                 "client_secret": "projects/example-proj/secrets/example-secret/versions/example-version",
///                 "token_endpoint": "https://example.com",
///             },
///             "service_agent_auth": "NONE",
///             "http_method": "POST",
///             "request_body": "{\"example-key\": \"example-value\"}",
///             "parameter_mapping": {
///                 "example-parameter": "examplePath",
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
///     var agent = new Gcp.Diagflow.CxAgent("agent", new()
///     {
///         DisplayName = "dialogflowcx-agent",
///         Location = "us-central1",
///         DefaultLanguageCode = "en",
///         SupportedLanguageCodes = new[]
///         {
///             "it",
///             "de",
///             "es",
///         },
///         TimeZone = "America/New_York",
///         Description = "Example description.",
///         AvatarUri = "https://cloud.google.com/_static/images/cloud/icons/favicons/onecloud/super_cloud.png",
///         EnableStackdriverLogging = true,
///         EnableSpellCorrection = true,
///         SpeechToTextSettings = new Gcp.Diagflow.Inputs.CxAgentSpeechToTextSettingsArgs
///         {
///             EnableSpeechAdaptation = true,
///         },
///     });
///
///     var flexibleWebhook = new Gcp.Diagflow.CxWebhook("flexible_webhook", new()
///     {
///         Parent = agent.Id,
///         DisplayName = "MyFlow",
///         ServiceDirectory = new Gcp.Diagflow.Inputs.CxWebhookServiceDirectoryArgs
///         {
///             Service = "projects/example-proj/locations/us-central1/namespaces/example-namespace/services/example-service",
///             GenericWebService = new Gcp.Diagflow.Inputs.CxWebhookServiceDirectoryGenericWebServiceArgs
///             {
///                 Uri = "https://example.com",
///                 RequestHeaders =
///                 {
///                     { "example-key", "example-value" },
///                 },
///                 WebhookType = "FLEXIBLE",
///                 OauthConfig = new Gcp.Diagflow.Inputs.CxWebhookServiceDirectoryGenericWebServiceOauthConfigArgs
///                 {
///                     ClientId = "example-client-id",
///                     ClientSecret = "projects/example-proj/secrets/example-secret/versions/example-version",
///                     TokenEndpoint = "https://example.com",
///                 },
///                 ServiceAgentAuth = "NONE",
///                 HttpMethod = "POST",
///                 RequestBody = "{\"example-key\": \"example-value\"}",
///                 ParameterMapping =
///                 {
///                     { "example-parameter", "examplePath" },
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/diagflow"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		agent, err := diagflow.NewCxAgent(ctx, "agent", &diagflow.CxAgentArgs{
/// 			DisplayName:         pulumi.String("dialogflowcx-agent"),
/// 			Location:            pulumi.String("us-central1"),
/// 			DefaultLanguageCode: pulumi.String("en"),
/// 			SupportedLanguageCodes: pulumi.StringArray{
/// 				pulumi.String("it"),
/// 				pulumi.String("de"),
/// 				pulumi.String("es"),
/// 			},
/// 			TimeZone:                 pulumi.String("America/New_York"),
/// 			Description:              pulumi.String("Example description."),
/// 			AvatarUri:                pulumi.String("https://cloud.google.com/_static/images/cloud/icons/favicons/onecloud/super_cloud.png"),
/// 			EnableStackdriverLogging: pulumi.Bool(true),
/// 			EnableSpellCorrection:    pulumi.Bool(true),
/// 			SpeechToTextSettings: &diagflow.CxAgentSpeechToTextSettingsArgs{
/// 				EnableSpeechAdaptation: pulumi.Bool(true),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = diagflow.NewCxWebhook(ctx, "flexible_webhook", &diagflow.CxWebhookArgs{
/// 			Parent:      agent.ID().ToIDOutput().ToStringOutput(),
/// 			DisplayName: pulumi.String("MyFlow"),
/// 			ServiceDirectory: &diagflow.CxWebhookServiceDirectoryArgs{
/// 				Service: pulumi.String("projects/example-proj/locations/us-central1/namespaces/example-namespace/services/example-service"),
/// 				GenericWebService: &diagflow.CxWebhookServiceDirectoryGenericWebServiceArgs{
/// 					Uri: pulumi.String("https://example.com"),
/// 					RequestHeaders: pulumi.StringMap{
/// 						"example-key": pulumi.String("example-value"),
/// 					},
/// 					WebhookType: pulumi.String("FLEXIBLE"),
/// 					OauthConfig: &diagflow.CxWebhookServiceDirectoryGenericWebServiceOauthConfigArgs{
/// 						ClientId:      pulumi.String("example-client-id"),
/// 						ClientSecret:  pulumi.String("projects/example-proj/secrets/example-secret/versions/example-version"),
/// 						TokenEndpoint: pulumi.String("https://example.com"),
/// 					},
/// 					ServiceAgentAuth: pulumi.String("NONE"),
/// 					HttpMethod:       pulumi.String("POST"),
/// 					RequestBody:      pulumi.String("{\"example-key\": \"example-value\"}"),
/// 					ParameterMapping: pulumi.StringMap{
/// 						"example-parameter": pulumi.String("examplePath"),
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
/// resource "gcp_diagflow_cxagent" "agent" {
///   display_name               = "dialogflowcx-agent"
///   location                   = "us-central1"
///   default_language_code      = "en"
///   supported_language_codes   = ["it", "de", "es"]
///   time_zone                  = "America/New_York"
///   description                = "Example description."
///   avatar_uri                 = "https://cloud.google.com/_static/images/cloud/icons/favicons/onecloud/super_cloud.png"
///   enable_stackdriver_logging = true
///   enable_spell_correction    = true
///   speech_to_text_settings = {
///     enable_speech_adaptation = true
///   }
/// }
/// resource "gcp_diagflow_cxwebhook" "flexible_webhook" {
///   parent       = gcp_diagflow_cxagent.agent.id
///   display_name = "MyFlow"
///   service_directory = {
///     service = "projects/example-proj/locations/us-central1/namespaces/example-namespace/services/example-service"
///     generic_web_service = {
///       uri = "https://example.com"
///       request_headers = {
///         "example-key" = "example-value"
///       }
///       webhook_type = "FLEXIBLE"
///       oauth_config = {
///         client_id      = "example-client-id"
///         client_secret  = "projects/example-proj/secrets/example-secret/versions/example-version"
///         token_endpoint = "https://example.com"
///       }
///       service_agent_auth = "NONE"
///       http_method        = "POST"
///       request_body       = "{\"example-key\": \"example-value\"}"
///       parameter_mapping = {
///         "example-parameter" = "examplePath"
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
/// import com.pulumi.gcp.diagflow.CxAgent;
/// import com.pulumi.gcp.diagflow.CxAgentArgs;
/// import com.pulumi.gcp.diagflow.inputs.CxAgentSpeechToTextSettingsArgs;
/// import com.pulumi.gcp.diagflow.CxWebhook;
/// import com.pulumi.gcp.diagflow.CxWebhookArgs;
/// import com.pulumi.gcp.diagflow.inputs.CxWebhookServiceDirectoryArgs;
/// import com.pulumi.gcp.diagflow.inputs.CxWebhookServiceDirectoryGenericWebServiceArgs;
/// import com.pulumi.gcp.diagflow.inputs.CxWebhookServiceDirectoryGenericWebServiceOauthConfigArgs;
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
///         var agent = new CxAgent("agent", CxAgentArgs.builder()
///             .displayName("dialogflowcx-agent")
///             .location("us-central1")
///             .defaultLanguageCode("en")
///             .supportedLanguageCodes(
///                 "it",
///                 "de",
///                 "es")
///             .timeZone("America/New_York")
///             .description("Example description.")
///             .avatarUri("https://cloud.google.com/_static/images/cloud/icons/favicons/onecloud/super_cloud.png")
///             .enableStackdriverLogging(true)
///             .enableSpellCorrection(true)
///             .speechToTextSettings(CxAgentSpeechToTextSettingsArgs.builder()
///                 .enableSpeechAdaptation(true)
///                 .build())
///             .build());
///
///         var flexibleWebhook = new CxWebhook("flexibleWebhook", CxWebhookArgs.builder()
///             .parent(agent.id())
///             .displayName("MyFlow")
///             .serviceDirectory(CxWebhookServiceDirectoryArgs.builder()
///                 .service("projects/example-proj/locations/us-central1/namespaces/example-namespace/services/example-service")
///                 .genericWebService(CxWebhookServiceDirectoryGenericWebServiceArgs.builder()
///                     .uri("https://example.com")
///                     .requestHeaders(Map.of("example-key", "example-value"))
///                     .webhookType("FLEXIBLE")
///                     .oauthConfig(CxWebhookServiceDirectoryGenericWebServiceOauthConfigArgs.builder()
///                         .clientId("example-client-id")
///                         .clientSecret("projects/example-proj/secrets/example-secret/versions/example-version")
///                         .tokenEndpoint("https://example.com")
///                         .build())
///                     .serviceAgentAuth("NONE")
///                     .httpMethod("POST")
///                     .requestBody("{\"example-key\": \"example-value\"}")
///                     .parameterMapping(Map.of("example-parameter", "examplePath"))
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   agent:
///     type: gcp:diagflow:CxAgent
///     properties:
///       displayName: dialogflowcx-agent
///       location: us-central1
///       defaultLanguageCode: en
///       supportedLanguageCodes:
///         - it
///         - de
///         - es
///       timeZone: America/New_York
///       description: Example description.
///       avatarUri: https://cloud.google.com/_static/images/cloud/icons/favicons/onecloud/super_cloud.png
///       enableStackdriverLogging: true
///       enableSpellCorrection: true
///       speechToTextSettings:
///         enableSpeechAdaptation: true
///   flexibleWebhook:
///     type: gcp:diagflow:CxWebhook
///     name: flexible_webhook
///     properties:
///       parent: ${agent.id}
///       displayName: MyFlow
///       serviceDirectory:
///         service: projects/example-proj/locations/us-central1/namespaces/example-namespace/services/example-service
///         genericWebService:
///           uri: https://example.com
///           requestHeaders:
///             example-key: example-value
///           webhookType: FLEXIBLE
///           oauthConfig:
///             clientId: example-client-id
///             clientSecret: projects/example-proj/secrets/example-secret/versions/example-version
///             tokenEndpoint: https://example.com
///           serviceAgentAuth: NONE
///           httpMethod: POST
///           requestBody: '{"example-key": "example-value"}'
///           parameterMapping:
///             example-parameter: examplePath
/// ```
///
/// ### Dialogflowcx Webhook With Service Account Auth
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const agent = new gcp.diagflow.CxAgent("agent", {
///     displayName: "dialogflowcx-agent",
///     location: "global",
///     defaultLanguageCode: "en",
///     supportedLanguageCodes: [
///         "it",
///         "de",
///         "es",
///     ],
///     timeZone: "America/New_York",
///     description: "Example description.",
///     avatarUri: "https://cloud.google.com/_static/images/cloud/icons/favicons/onecloud/super_cloud.png",
///     enableStackdriverLogging: true,
///     enableSpellCorrection: true,
///     speechToTextSettings: {
///         enableSpeechAdaptation: true,
///     },
/// });
/// const webhookUseServiceAccount = new gcp.diagflow.CxWebhook("webhook_use_service_account", {
///     parent: agent.id,
///     displayName: "MyWebhook",
///     genericWebService: {
///         uri: "https://example.googleapis.com",
///         webhookType: "STANDARD",
///         serviceAccountAuthConfig: {
///             serviceAccount: "my@service-account.com",
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// agent = gcp.diagflow.CxAgent("agent",
///     display_name="dialogflowcx-agent",
///     location="global",
///     default_language_code="en",
///     supported_language_codes=[
///         "it",
///         "de",
///         "es",
///     ],
///     time_zone="America/New_York",
///     description="Example description.",
///     avatar_uri="https://cloud.google.com/_static/images/cloud/icons/favicons/onecloud/super_cloud.png",
///     enable_stackdriver_logging=True,
///     enable_spell_correction=True,
///     speech_to_text_settings={
///         "enable_speech_adaptation": True,
///     })
/// webhook_use_service_account = gcp.diagflow.CxWebhook("webhook_use_service_account",
///     parent=agent.id,
///     display_name="MyWebhook",
///     generic_web_service={
///         "uri": "https://example.googleapis.com",
///         "webhook_type": "STANDARD",
///         "service_account_auth_config": {
///             "service_account": "my@service-account.com",
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
///     var agent = new Gcp.Diagflow.CxAgent("agent", new()
///     {
///         DisplayName = "dialogflowcx-agent",
///         Location = "global",
///         DefaultLanguageCode = "en",
///         SupportedLanguageCodes = new[]
///         {
///             "it",
///             "de",
///             "es",
///         },
///         TimeZone = "America/New_York",
///         Description = "Example description.",
///         AvatarUri = "https://cloud.google.com/_static/images/cloud/icons/favicons/onecloud/super_cloud.png",
///         EnableStackdriverLogging = true,
///         EnableSpellCorrection = true,
///         SpeechToTextSettings = new Gcp.Diagflow.Inputs.CxAgentSpeechToTextSettingsArgs
///         {
///             EnableSpeechAdaptation = true,
///         },
///     });
///
///     var webhookUseServiceAccount = new Gcp.Diagflow.CxWebhook("webhook_use_service_account", new()
///     {
///         Parent = agent.Id,
///         DisplayName = "MyWebhook",
///         GenericWebService = new Gcp.Diagflow.Inputs.CxWebhookGenericWebServiceArgs
///         {
///             Uri = "https://example.googleapis.com",
///             WebhookType = "STANDARD",
///             ServiceAccountAuthConfig = new Gcp.Diagflow.Inputs.CxWebhookGenericWebServiceServiceAccountAuthConfigArgs
///             {
///                 ServiceAccount = "my@service-account.com",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/diagflow"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		agent, err := diagflow.NewCxAgent(ctx, "agent", &diagflow.CxAgentArgs{
/// 			DisplayName:         pulumi.String("dialogflowcx-agent"),
/// 			Location:            pulumi.String("global"),
/// 			DefaultLanguageCode: pulumi.String("en"),
/// 			SupportedLanguageCodes: pulumi.StringArray{
/// 				pulumi.String("it"),
/// 				pulumi.String("de"),
/// 				pulumi.String("es"),
/// 			},
/// 			TimeZone:                 pulumi.String("America/New_York"),
/// 			Description:              pulumi.String("Example description."),
/// 			AvatarUri:                pulumi.String("https://cloud.google.com/_static/images/cloud/icons/favicons/onecloud/super_cloud.png"),
/// 			EnableStackdriverLogging: pulumi.Bool(true),
/// 			EnableSpellCorrection:    pulumi.Bool(true),
/// 			SpeechToTextSettings: &diagflow.CxAgentSpeechToTextSettingsArgs{
/// 				EnableSpeechAdaptation: pulumi.Bool(true),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = diagflow.NewCxWebhook(ctx, "webhook_use_service_account", &diagflow.CxWebhookArgs{
/// 			Parent:      agent.ID().ToIDOutput().ToStringOutput(),
/// 			DisplayName: pulumi.String("MyWebhook"),
/// 			GenericWebService: &diagflow.CxWebhookGenericWebServiceArgs{
/// 				Uri:         pulumi.String("https://example.googleapis.com"),
/// 				WebhookType: pulumi.String("STANDARD"),
/// 				ServiceAccountAuthConfig: &diagflow.CxWebhookGenericWebServiceServiceAccountAuthConfigArgs{
/// 					ServiceAccount: pulumi.String("my@service-account.com"),
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
/// resource "gcp_diagflow_cxagent" "agent" {
///   display_name               = "dialogflowcx-agent"
///   location                   = "global"
///   default_language_code      = "en"
///   supported_language_codes   = ["it", "de", "es"]
///   time_zone                  = "America/New_York"
///   description                = "Example description."
///   avatar_uri                 = "https://cloud.google.com/_static/images/cloud/icons/favicons/onecloud/super_cloud.png"
///   enable_stackdriver_logging = true
///   enable_spell_correction    = true
///   speech_to_text_settings = {
///     enable_speech_adaptation = true
///   }
/// }
/// resource "gcp_diagflow_cxwebhook" "webhook_use_service_account" {
///   parent       = gcp_diagflow_cxagent.agent.id
///   display_name = "MyWebhook"
///   generic_web_service = {
///     uri          = "https://example.googleapis.com"
///     webhook_type = "STANDARD"
///     service_account_auth_config = {
///       service_account = "my@service-account.com"
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
/// import com.pulumi.gcp.diagflow.CxAgent;
/// import com.pulumi.gcp.diagflow.CxAgentArgs;
/// import com.pulumi.gcp.diagflow.inputs.CxAgentSpeechToTextSettingsArgs;
/// import com.pulumi.gcp.diagflow.CxWebhook;
/// import com.pulumi.gcp.diagflow.CxWebhookArgs;
/// import com.pulumi.gcp.diagflow.inputs.CxWebhookGenericWebServiceArgs;
/// import com.pulumi.gcp.diagflow.inputs.CxWebhookGenericWebServiceServiceAccountAuthConfigArgs;
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
///         var agent = new CxAgent("agent", CxAgentArgs.builder()
///             .displayName("dialogflowcx-agent")
///             .location("global")
///             .defaultLanguageCode("en")
///             .supportedLanguageCodes(
///                 "it",
///                 "de",
///                 "es")
///             .timeZone("America/New_York")
///             .description("Example description.")
///             .avatarUri("https://cloud.google.com/_static/images/cloud/icons/favicons/onecloud/super_cloud.png")
///             .enableStackdriverLogging(true)
///             .enableSpellCorrection(true)
///             .speechToTextSettings(CxAgentSpeechToTextSettingsArgs.builder()
///                 .enableSpeechAdaptation(true)
///                 .build())
///             .build());
///
///         var webhookUseServiceAccount = new CxWebhook("webhookUseServiceAccount", CxWebhookArgs.builder()
///             .parent(agent.id())
///             .displayName("MyWebhook")
///             .genericWebService(CxWebhookGenericWebServiceArgs.builder()
///                 .uri("https://example.googleapis.com")
///                 .webhookType("STANDARD")
///                 .serviceAccountAuthConfig(CxWebhookGenericWebServiceServiceAccountAuthConfigArgs.builder()
///                     .serviceAccount("my@service-account.com")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   agent:
///     type: gcp:diagflow:CxAgent
///     properties:
///       displayName: dialogflowcx-agent
///       location: global
///       defaultLanguageCode: en
///       supportedLanguageCodes:
///         - it
///         - de
///         - es
///       timeZone: America/New_York
///       description: Example description.
///       avatarUri: https://cloud.google.com/_static/images/cloud/icons/favicons/onecloud/super_cloud.png
///       enableStackdriverLogging: true
///       enableSpellCorrection: true
///       speechToTextSettings:
///         enableSpeechAdaptation: true
///   webhookUseServiceAccount:
///     type: gcp:diagflow:CxWebhook
///     name: webhook_use_service_account
///     properties:
///       parent: ${agent.id}
///       displayName: MyWebhook
///       genericWebService:
///         uri: https://example.googleapis.com
///         webhookType: STANDARD
///         serviceAccountAuthConfig:
///           serviceAccount: my@service-account.com
/// ```
///
/// ### Dialogflowcx Webhook Service Directory With Service Account Auth
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const agent = new gcp.diagflow.CxAgent("agent", {
///     displayName: "dialogflowcx-agent",
///     location: "us-central1",
///     defaultLanguageCode: "en",
///     supportedLanguageCodes: [
///         "it",
///         "de",
///         "es",
///     ],
///     timeZone: "America/New_York",
///     description: "Example description.",
///     avatarUri: "https://cloud.google.com/_static/images/cloud/icons/favicons/onecloud/super_cloud.png",
///     enableStackdriverLogging: true,
///     enableSpellCorrection: true,
///     speechToTextSettings: {
///         enableSpeechAdaptation: true,
///     },
/// });
/// const webhookUseServiceAccount = new gcp.diagflow.CxWebhook("webhook_use_service_account", {
///     parent: agent.id,
///     displayName: "MyWebhook",
///     serviceDirectory: {
///         service: "projects/example-proj/locations/us-central1/namespaces/example-namespace/services/example-service",
///         genericWebService: {
///             uri: "https://example.googleapis.com",
///             webhookType: "STANDARD",
///             serviceAccountAuthConfig: {
///                 serviceAccount: "my@service-account.com",
///             },
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// agent = gcp.diagflow.CxAgent("agent",
///     display_name="dialogflowcx-agent",
///     location="us-central1",
///     default_language_code="en",
///     supported_language_codes=[
///         "it",
///         "de",
///         "es",
///     ],
///     time_zone="America/New_York",
///     description="Example description.",
///     avatar_uri="https://cloud.google.com/_static/images/cloud/icons/favicons/onecloud/super_cloud.png",
///     enable_stackdriver_logging=True,
///     enable_spell_correction=True,
///     speech_to_text_settings={
///         "enable_speech_adaptation": True,
///     })
/// webhook_use_service_account = gcp.diagflow.CxWebhook("webhook_use_service_account",
///     parent=agent.id,
///     display_name="MyWebhook",
///     service_directory={
///         "service": "projects/example-proj/locations/us-central1/namespaces/example-namespace/services/example-service",
///         "generic_web_service": {
///             "uri": "https://example.googleapis.com",
///             "webhook_type": "STANDARD",
///             "service_account_auth_config": {
///                 "service_account": "my@service-account.com",
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
///     var agent = new Gcp.Diagflow.CxAgent("agent", new()
///     {
///         DisplayName = "dialogflowcx-agent",
///         Location = "us-central1",
///         DefaultLanguageCode = "en",
///         SupportedLanguageCodes = new[]
///         {
///             "it",
///             "de",
///             "es",
///         },
///         TimeZone = "America/New_York",
///         Description = "Example description.",
///         AvatarUri = "https://cloud.google.com/_static/images/cloud/icons/favicons/onecloud/super_cloud.png",
///         EnableStackdriverLogging = true,
///         EnableSpellCorrection = true,
///         SpeechToTextSettings = new Gcp.Diagflow.Inputs.CxAgentSpeechToTextSettingsArgs
///         {
///             EnableSpeechAdaptation = true,
///         },
///     });
///
///     var webhookUseServiceAccount = new Gcp.Diagflow.CxWebhook("webhook_use_service_account", new()
///     {
///         Parent = agent.Id,
///         DisplayName = "MyWebhook",
///         ServiceDirectory = new Gcp.Diagflow.Inputs.CxWebhookServiceDirectoryArgs
///         {
///             Service = "projects/example-proj/locations/us-central1/namespaces/example-namespace/services/example-service",
///             GenericWebService = new Gcp.Diagflow.Inputs.CxWebhookServiceDirectoryGenericWebServiceArgs
///             {
///                 Uri = "https://example.googleapis.com",
///                 WebhookType = "STANDARD",
///                 ServiceAccountAuthConfig = new Gcp.Diagflow.Inputs.CxWebhookServiceDirectoryGenericWebServiceServiceAccountAuthConfigArgs
///                 {
///                     ServiceAccount = "my@service-account.com",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/diagflow"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		agent, err := diagflow.NewCxAgent(ctx, "agent", &diagflow.CxAgentArgs{
/// 			DisplayName:         pulumi.String("dialogflowcx-agent"),
/// 			Location:            pulumi.String("us-central1"),
/// 			DefaultLanguageCode: pulumi.String("en"),
/// 			SupportedLanguageCodes: pulumi.StringArray{
/// 				pulumi.String("it"),
/// 				pulumi.String("de"),
/// 				pulumi.String("es"),
/// 			},
/// 			TimeZone:                 pulumi.String("America/New_York"),
/// 			Description:              pulumi.String("Example description."),
/// 			AvatarUri:                pulumi.String("https://cloud.google.com/_static/images/cloud/icons/favicons/onecloud/super_cloud.png"),
/// 			EnableStackdriverLogging: pulumi.Bool(true),
/// 			EnableSpellCorrection:    pulumi.Bool(true),
/// 			SpeechToTextSettings: &diagflow.CxAgentSpeechToTextSettingsArgs{
/// 				EnableSpeechAdaptation: pulumi.Bool(true),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = diagflow.NewCxWebhook(ctx, "webhook_use_service_account", &diagflow.CxWebhookArgs{
/// 			Parent:      agent.ID().ToIDOutput().ToStringOutput(),
/// 			DisplayName: pulumi.String("MyWebhook"),
/// 			ServiceDirectory: &diagflow.CxWebhookServiceDirectoryArgs{
/// 				Service: pulumi.String("projects/example-proj/locations/us-central1/namespaces/example-namespace/services/example-service"),
/// 				GenericWebService: &diagflow.CxWebhookServiceDirectoryGenericWebServiceArgs{
/// 					Uri:         pulumi.String("https://example.googleapis.com"),
/// 					WebhookType: pulumi.String("STANDARD"),
/// 					ServiceAccountAuthConfig: &diagflow.CxWebhookServiceDirectoryGenericWebServiceServiceAccountAuthConfigArgs{
/// 						ServiceAccount: pulumi.String("my@service-account.com"),
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
/// resource "gcp_diagflow_cxagent" "agent" {
///   display_name               = "dialogflowcx-agent"
///   location                   = "us-central1"
///   default_language_code      = "en"
///   supported_language_codes   = ["it", "de", "es"]
///   time_zone                  = "America/New_York"
///   description                = "Example description."
///   avatar_uri                 = "https://cloud.google.com/_static/images/cloud/icons/favicons/onecloud/super_cloud.png"
///   enable_stackdriver_logging = true
///   enable_spell_correction    = true
///   speech_to_text_settings = {
///     enable_speech_adaptation = true
///   }
/// }
/// resource "gcp_diagflow_cxwebhook" "webhook_use_service_account" {
///   parent       = gcp_diagflow_cxagent.agent.id
///   display_name = "MyWebhook"
///   service_directory = {
///     service = "projects/example-proj/locations/us-central1/namespaces/example-namespace/services/example-service"
///     generic_web_service = {
///       uri          = "https://example.googleapis.com"
///       webhook_type = "STANDARD"
///       service_account_auth_config = {
///         service_account = "my@service-account.com"
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
/// import com.pulumi.gcp.diagflow.CxAgent;
/// import com.pulumi.gcp.diagflow.CxAgentArgs;
/// import com.pulumi.gcp.diagflow.inputs.CxAgentSpeechToTextSettingsArgs;
/// import com.pulumi.gcp.diagflow.CxWebhook;
/// import com.pulumi.gcp.diagflow.CxWebhookArgs;
/// import com.pulumi.gcp.diagflow.inputs.CxWebhookServiceDirectoryArgs;
/// import com.pulumi.gcp.diagflow.inputs.CxWebhookServiceDirectoryGenericWebServiceArgs;
/// import com.pulumi.gcp.diagflow.inputs.CxWebhookServiceDirectoryGenericWebServiceServiceAccountAuthConfigArgs;
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
///         var agent = new CxAgent("agent", CxAgentArgs.builder()
///             .displayName("dialogflowcx-agent")
///             .location("us-central1")
///             .defaultLanguageCode("en")
///             .supportedLanguageCodes(
///                 "it",
///                 "de",
///                 "es")
///             .timeZone("America/New_York")
///             .description("Example description.")
///             .avatarUri("https://cloud.google.com/_static/images/cloud/icons/favicons/onecloud/super_cloud.png")
///             .enableStackdriverLogging(true)
///             .enableSpellCorrection(true)
///             .speechToTextSettings(CxAgentSpeechToTextSettingsArgs.builder()
///                 .enableSpeechAdaptation(true)
///                 .build())
///             .build());
///
///         var webhookUseServiceAccount = new CxWebhook("webhookUseServiceAccount", CxWebhookArgs.builder()
///             .parent(agent.id())
///             .displayName("MyWebhook")
///             .serviceDirectory(CxWebhookServiceDirectoryArgs.builder()
///                 .service("projects/example-proj/locations/us-central1/namespaces/example-namespace/services/example-service")
///                 .genericWebService(CxWebhookServiceDirectoryGenericWebServiceArgs.builder()
///                     .uri("https://example.googleapis.com")
///                     .webhookType("STANDARD")
///                     .serviceAccountAuthConfig(CxWebhookServiceDirectoryGenericWebServiceServiceAccountAuthConfigArgs.builder()
///                         .serviceAccount("my@service-account.com")
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
///   agent:
///     type: gcp:diagflow:CxAgent
///     properties:
///       displayName: dialogflowcx-agent
///       location: us-central1
///       defaultLanguageCode: en
///       supportedLanguageCodes:
///         - it
///         - de
///         - es
///       timeZone: America/New_York
///       description: Example description.
///       avatarUri: https://cloud.google.com/_static/images/cloud/icons/favicons/onecloud/super_cloud.png
///       enableStackdriverLogging: true
///       enableSpellCorrection: true
///       speechToTextSettings:
///         enableSpeechAdaptation: true
///   webhookUseServiceAccount:
///     type: gcp:diagflow:CxWebhook
///     name: webhook_use_service_account
///     properties:
///       parent: ${agent.id}
///       displayName: MyWebhook
///       serviceDirectory:
///         service: projects/example-proj/locations/us-central1/namespaces/example-namespace/services/example-service
///         genericWebService:
///           uri: https://example.googleapis.com
///           webhookType: STANDARD
///           serviceAccountAuthConfig:
///             serviceAccount: my@service-account.com
/// ```
///
///
/// ## Import
///
/// Webhook can be imported using any of these accepted formats:
///
/// * `{{parent}}/webhooks/{{name}}`
/// * `{{parent}}/{{name}}`
///
///
/// When using the `pulumi import` command, Webhook can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:diagflow/cxWebhook:CxWebhook default {{parent}}/webhooks/{{name}}
/// $ pulumi import gcp:diagflow/cxWebhook:CxWebhook default {{parent}}/{{name}}
/// ```
class CxWebhook extends pulumi.CustomResource {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// Indicates whether the webhook is disabled.
  late final pulumi.Output<bool?> disabled;
  /// The human-readable name of the webhook, unique within the agent.
  late final pulumi.Output<String> displayName;
  /// Deprecated. Indicates if automatic spell correction is enabled in detect intent requests.
  late final pulumi.Output<bool?> enableSpellCorrection;
  /// Deprecated. Determines whether this agent should log conversation queries.
  late final pulumi.Output<bool?> enableStackdriverLogging;
  /// Represents configuration for a generic web service.
  /// Structure is documented below.
  late final pulumi.Output<CxWebhookGenericWebService?> genericWebService;
  /// The unique identifier of the webhook.
  /// Format: projects/&lt;Project ID&gt;/locations/&lt;Location ID&gt;/agents/&lt;Agent ID&gt;/webhooks/&lt;Webhook ID&gt;.
  late final pulumi.Output<String> name;
  /// The agent to create a webhook for.
  /// Format: projects/&lt;Project ID&gt;/locations/&lt;Location ID&gt;/agents/&lt;Agent ID&gt;.
  late final pulumi.Output<String?> parent;
  /// Deprecated. Name of the SecuritySettings reference for the agent. Format: projects/&lt;Project ID&gt;/locations/&lt;Location ID&gt;/securitySettings/&lt;Security Settings ID&gt;.
  late final pulumi.Output<String?> securitySettings;
  /// Configuration for a Service Directory service.
  /// Structure is documented below.
  late final pulumi.Output<CxWebhookServiceDirectory?> serviceDirectory;
  /// Deprecated. Name of the start flow in this agent. A start flow will be automatically created when the agent is created, and can only be deleted by deleting the agent. Format: projects/&lt;Project ID&gt;/locations/&lt;Location ID&gt;/agents/&lt;Agent ID&gt;/flows/&lt;Flow ID&gt;.
  late final pulumi.Output<String> startFlow;
  /// Webhook execution timeout.
  late final pulumi.Output<String?> timeout;

  /// Creates a new [CxWebhook].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CxWebhook]. {@macro pulumi_diagflow_cx_webhook_cx_webhook_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CxWebhook(
    String name, {
    CxWebhookArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:diagflow/cxWebhook:CxWebhook',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    deletionPolicy = registerOutput<String>('deletionPolicy');
    disabled = registerOutput<bool?>('disabled');
    displayName = registerOutput<String>('displayName');
    enableSpellCorrection = registerOutput<bool?>('enableSpellCorrection');
    enableStackdriverLogging = registerOutput<bool?>('enableStackdriverLogging');
    genericWebService = registerOutput<CxWebhookGenericWebService?>('genericWebService', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CxWebhookGenericWebService.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    parent = registerOutput<String?>('parent');
    securitySettings = registerOutput<String?>('securitySettings');
    serviceDirectory = registerOutput<CxWebhookServiceDirectory?>('serviceDirectory', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CxWebhookServiceDirectory.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    startFlow = registerOutput<String>('startFlow');
    timeout = registerOutput<String?>('timeout');
  }

  /// Gets an existing [CxWebhook] resource's state with the given [name] and [id].
  static CxWebhook get(
    String name,
    pulumi.Input<String> id, {
    CxWebhookState? state,
  }) {
    return CxWebhook._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  CxWebhook._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:diagflow/cxWebhook:CxWebhook',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    deletionPolicy = registerOutput<String>('deletionPolicy');
    disabled = registerOutput<bool?>('disabled');
    displayName = registerOutput<String>('displayName');
    enableSpellCorrection = registerOutput<bool?>('enableSpellCorrection');
    enableStackdriverLogging = registerOutput<bool?>('enableStackdriverLogging');
    genericWebService = registerOutput<CxWebhookGenericWebService?>('genericWebService', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CxWebhookGenericWebService.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    parent = registerOutput<String?>('parent');
    securitySettings = registerOutput<String?>('securitySettings');
    serviceDirectory = registerOutput<CxWebhookServiceDirectory?>('serviceDirectory', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CxWebhookServiceDirectory.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    startFlow = registerOutput<String>('startFlow');
    timeout = registerOutput<String?>('timeout');
  }
}
