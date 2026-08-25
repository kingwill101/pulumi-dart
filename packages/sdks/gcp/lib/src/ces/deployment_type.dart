import 'package:pulumi/pulumi.dart' as pulumi;
import 'deployment_args.dart';
import 'deployment_channel_profile.dart';
import 'deployment_state.dart';

/// Description
///
///
///
/// ## Example Usage
///
/// ### Ces Deployment Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const my_app = new gcp.ces.App("my-app", {
///     location: "us",
///     displayName: "my-app",
///     appId: "app-id",
///     timeZoneSettings: {
///         timeZone: "America/Los_Angeles",
///     },
/// });
/// const my_app_version = new gcp.ces.AppVersion("my-app-version", {
///     location: "us",
///     displayName: "my-app-version",
///     app: my_app.name,
///     appVersionId: "app-version-id",
///     description: "example-app-version",
/// });
/// const my_deployment = new gcp.ces.Deployment("my-deployment", {
///     location: "us",
///     displayName: "my-deployment",
///     app: my_app.name,
///     appVersion: my_app_version.id,
///     channelProfile: {
///         channelType: "API",
///         disableBargeInControl: true,
///         disableDtmf: true,
///         personaProperty: {
///             persona: "CHATTY",
///         },
///         profileId: "temp_profile_id",
///         webWidgetConfig: {
///             modality: "CHAT_AND_VOICE",
///             theme: "DARK",
///             webWidgetTitle: "temp_webwidget_title",
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_app = gcp.ces.App("my-app",
///     location="us",
///     display_name="my-app",
///     app_id="app-id",
///     time_zone_settings={
///         "time_zone": "America/Los_Angeles",
///     })
/// my_app_version = gcp.ces.AppVersion("my-app-version",
///     location="us",
///     display_name="my-app-version",
///     app=my_app.name,
///     app_version_id="app-version-id",
///     description="example-app-version")
/// my_deployment = gcp.ces.Deployment("my-deployment",
///     location="us",
///     display_name="my-deployment",
///     app=my_app.name,
///     app_version=my_app_version.id,
///     channel_profile={
///         "channel_type": "API",
///         "disable_barge_in_control": True,
///         "disable_dtmf": True,
///         "persona_property": {
///             "persona": "CHATTY",
///         },
///         "profile_id": "temp_profile_id",
///         "web_widget_config": {
///             "modality": "CHAT_AND_VOICE",
///             "theme": "DARK",
///             "web_widget_title": "temp_webwidget_title",
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
///     var my_app = new Gcp.Ces.App("my-app", new()
///     {
///         Location = "us",
///         DisplayName = "my-app",
///         AppId = "app-id",
///         TimeZoneSettings = new Gcp.Ces.Inputs.AppTimeZoneSettingsArgs
///         {
///             TimeZone = "America/Los_Angeles",
///         },
///     });
///
///     var my_app_version = new Gcp.Ces.AppVersion("my-app-version", new()
///     {
///         Location = "us",
///         DisplayName = "my-app-version",
///         App = my_app.Name,
///         AppVersionId = "app-version-id",
///         Description = "example-app-version",
///     });
///
///     var my_deployment = new Gcp.Ces.Deployment("my-deployment", new()
///     {
///         Location = "us",
///         DisplayName = "my-deployment",
///         App = my_app.Name,
///         AppVersion = my_app_version.Id,
///         ChannelProfile = new Gcp.Ces.Inputs.DeploymentChannelProfileArgs
///         {
///             ChannelType = "API",
///             DisableBargeInControl = true,
///             DisableDtmf = true,
///             PersonaProperty = new Gcp.Ces.Inputs.DeploymentChannelProfilePersonaPropertyArgs
///             {
///                 Persona = "CHATTY",
///             },
///             ProfileId = "temp_profile_id",
///             WebWidgetConfig = new Gcp.Ces.Inputs.DeploymentChannelProfileWebWidgetConfigArgs
///             {
///                 Modality = "CHAT_AND_VOICE",
///                 Theme = "DARK",
///                 WebWidgetTitle = "temp_webwidget_title",
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
/// 		my_app, err := ces.NewApp(ctx, "my-app", &ces.AppArgs{
/// 			Location:    pulumi.String("us"),
/// 			DisplayName: pulumi.String("my-app"),
/// 			AppId:       pulumi.String("app-id"),
/// 			TimeZoneSettings: &ces.AppTimeZoneSettingsArgs{
/// 				TimeZone: pulumi.String("America/Los_Angeles"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		my_app_version, err := ces.NewAppVersion(ctx, "my-app-version", &ces.AppVersionArgs{
/// 			Location:     pulumi.String("us"),
/// 			DisplayName:  pulumi.String("my-app-version"),
/// 			App:          my_app.Name,
/// 			AppVersionId: pulumi.String("app-version-id"),
/// 			Description:  pulumi.String("example-app-version"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ces.NewDeployment(ctx, "my-deployment", &ces.DeploymentArgs{
/// 			Location:    pulumi.String("us"),
/// 			DisplayName: pulumi.String("my-deployment"),
/// 			App:         my_app.Name,
/// 			AppVersion:  my_app_version.ID().ToIDOutput().ToStringOutput(),
/// 			ChannelProfile: &ces.DeploymentChannelProfileArgs{
/// 				ChannelType:           pulumi.String("API"),
/// 				DisableBargeInControl: pulumi.Bool(true),
/// 				DisableDtmf:           pulumi.Bool(true),
/// 				PersonaProperty: &ces.DeploymentChannelProfilePersonaPropertyArgs{
/// 					Persona: pulumi.String("CHATTY"),
/// 				},
/// 				ProfileId: pulumi.String("temp_profile_id"),
/// 				WebWidgetConfig: &ces.DeploymentChannelProfileWebWidgetConfigArgs{
/// 					Modality:       pulumi.String("CHAT_AND_VOICE"),
/// 					Theme:          pulumi.String("DARK"),
/// 					WebWidgetTitle: pulumi.String("temp_webwidget_title"),
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
/// resource "gcp_ces_app" "my-app" {
///   location     = "us"
///   display_name = "my-app"
///   app_id       = "app-id"
///   time_zone_settings = {
///     time_zone = "America/Los_Angeles"
///   }
/// }
/// resource "gcp_ces_appversion" "my-app-version" {
///   location       = "us"
///   display_name   = "my-app-version"
///   app            = gcp_ces_app.my-app.name
///   app_version_id = "app-version-id"
///   description    = "example-app-version"
/// }
/// resource "gcp_ces_deployment" "my-deployment" {
///   location     = "us"
///   display_name = "my-deployment"
///   app          = gcp_ces_app.my-app.name
///   app_version  = gcp_ces_appversion.my-app-version.id
///   channel_profile = {
///     channel_type             = "API"
///     disable_barge_in_control = true
///     disable_dtmf             = true
///     persona_property = {
///       persona = "CHATTY"
///     }
///     profile_id = "temp_profile_id"
///     web_widget_config = {
///       modality         = "CHAT_AND_VOICE"
///       theme            = "DARK"
///       web_widget_title = "temp_webwidget_title"
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
/// import com.pulumi.gcp.ces.inputs.AppTimeZoneSettingsArgs;
/// import com.pulumi.gcp.ces.AppVersion;
/// import com.pulumi.gcp.ces.AppVersionArgs;
/// import com.pulumi.gcp.ces.Deployment;
/// import com.pulumi.gcp.ces.DeploymentArgs;
/// import com.pulumi.gcp.ces.inputs.DeploymentChannelProfileArgs;
/// import com.pulumi.gcp.ces.inputs.DeploymentChannelProfilePersonaPropertyArgs;
/// import com.pulumi.gcp.ces.inputs.DeploymentChannelProfileWebWidgetConfigArgs;
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
///         var my_app = new App("my-app", AppArgs.builder()
///             .location("us")
///             .displayName("my-app")
///             .appId("app-id")
///             .timeZoneSettings(AppTimeZoneSettingsArgs.builder()
///                 .timeZone("America/Los_Angeles")
///                 .build())
///             .build());
///
///         var my_app_version = new AppVersion("my-app-version", AppVersionArgs.builder()
///             .location("us")
///             .displayName("my-app-version")
///             .app(my_app.name())
///             .appVersionId("app-version-id")
///             .description("example-app-version")
///             .build());
///
///         var my_deployment = new Deployment("my-deployment", DeploymentArgs.builder()
///             .location("us")
///             .displayName("my-deployment")
///             .app(my_app.name())
///             .appVersion(my_app_version.id())
///             .channelProfile(DeploymentChannelProfileArgs.builder()
///                 .channelType("API")
///                 .disableBargeInControl(true)
///                 .disableDtmf(true)
///                 .personaProperty(DeploymentChannelProfilePersonaPropertyArgs.builder()
///                     .persona("CHATTY")
///                     .build())
///                 .profileId("temp_profile_id")
///                 .webWidgetConfig(DeploymentChannelProfileWebWidgetConfigArgs.builder()
///                     .modality("CHAT_AND_VOICE")
///                     .theme("DARK")
///                     .webWidgetTitle("temp_webwidget_title")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   my-app:
///     type: gcp:ces:App
///     properties:
///       location: us
///       displayName: my-app
///       appId: app-id
///       timeZoneSettings:
///         timeZone: America/Los_Angeles
///   my-app-version:
///     type: gcp:ces:AppVersion
///     properties:
///       location: us
///       displayName: my-app-version
///       app: ${["my-app"].name}
///       appVersionId: app-version-id
///       description: example-app-version
///   my-deployment:
///     type: gcp:ces:Deployment
///     properties:
///       location: us
///       displayName: my-deployment
///       app: ${["my-app"].name}
///       appVersion: ${["my-app-version"].id}
///       channelProfile:
///         channelType: API
///         disableBargeInControl: true
///         disableDtmf: true
///         personaProperty:
///           persona: CHATTY
///         profileId: temp_profile_id
///         webWidgetConfig:
///           modality: CHAT_AND_VOICE
///           theme: DARK
///           webWidgetTitle: temp_webwidget_title
/// ```
///
/// ### Ces Deployment Full
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const my_app = new gcp.ces.App("my-app", {
///     location: "us",
///     displayName: "my-app",
///     appId: "app-id",
///     timeZoneSettings: {
///         timeZone: "America/Los_Angeles",
///     },
/// });
/// const my_app_version = new gcp.ces.AppVersion("my-app-version", {
///     location: "us",
///     displayName: "my-app-version",
///     app: my_app.name,
///     appVersionId: "app-version-id",
///     description: "example-app-version",
/// });
/// const my_deployment = new gcp.ces.Deployment("my-deployment", {
///     location: "us",
///     displayName: "my-deployment",
///     app: my_app.name,
///     appVersion: my_app_version.id,
///     channelProfile: {
///         channelType: "API",
///         disableBargeInControl: true,
///         disableDtmf: true,
///         personaProperty: {
///             persona: "CHATTY",
///         },
///         profileId: "temp_profile_id",
///         webWidgetConfig: {
///             modality: "CHAT_AND_VOICE",
///             theme: "DARK",
///             webWidgetTitle: "temp_webwidget_title",
///             securitySettings: {
///                 enablePublicAccess: true,
///                 enableOriginCheck: true,
///                 allowedOrigins: [
///                     "https://example.com",
///                     "https://test.com",
///                 ],
///                 enableRecaptcha: true,
///             },
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_app = gcp.ces.App("my-app",
///     location="us",
///     display_name="my-app",
///     app_id="app-id",
///     time_zone_settings={
///         "time_zone": "America/Los_Angeles",
///     })
/// my_app_version = gcp.ces.AppVersion("my-app-version",
///     location="us",
///     display_name="my-app-version",
///     app=my_app.name,
///     app_version_id="app-version-id",
///     description="example-app-version")
/// my_deployment = gcp.ces.Deployment("my-deployment",
///     location="us",
///     display_name="my-deployment",
///     app=my_app.name,
///     app_version=my_app_version.id,
///     channel_profile={
///         "channel_type": "API",
///         "disable_barge_in_control": True,
///         "disable_dtmf": True,
///         "persona_property": {
///             "persona": "CHATTY",
///         },
///         "profile_id": "temp_profile_id",
///         "web_widget_config": {
///             "modality": "CHAT_AND_VOICE",
///             "theme": "DARK",
///             "web_widget_title": "temp_webwidget_title",
///             "security_settings": {
///                 "enable_public_access": True,
///                 "enable_origin_check": True,
///                 "allowed_origins": [
///                     "https://example.com",
///                     "https://test.com",
///                 ],
///                 "enable_recaptcha": True,
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
///     var my_app = new Gcp.Ces.App("my-app", new()
///     {
///         Location = "us",
///         DisplayName = "my-app",
///         AppId = "app-id",
///         TimeZoneSettings = new Gcp.Ces.Inputs.AppTimeZoneSettingsArgs
///         {
///             TimeZone = "America/Los_Angeles",
///         },
///     });
///
///     var my_app_version = new Gcp.Ces.AppVersion("my-app-version", new()
///     {
///         Location = "us",
///         DisplayName = "my-app-version",
///         App = my_app.Name,
///         AppVersionId = "app-version-id",
///         Description = "example-app-version",
///     });
///
///     var my_deployment = new Gcp.Ces.Deployment("my-deployment", new()
///     {
///         Location = "us",
///         DisplayName = "my-deployment",
///         App = my_app.Name,
///         AppVersion = my_app_version.Id,
///         ChannelProfile = new Gcp.Ces.Inputs.DeploymentChannelProfileArgs
///         {
///             ChannelType = "API",
///             DisableBargeInControl = true,
///             DisableDtmf = true,
///             PersonaProperty = new Gcp.Ces.Inputs.DeploymentChannelProfilePersonaPropertyArgs
///             {
///                 Persona = "CHATTY",
///             },
///             ProfileId = "temp_profile_id",
///             WebWidgetConfig = new Gcp.Ces.Inputs.DeploymentChannelProfileWebWidgetConfigArgs
///             {
///                 Modality = "CHAT_AND_VOICE",
///                 Theme = "DARK",
///                 WebWidgetTitle = "temp_webwidget_title",
///                 SecuritySettings = new Gcp.Ces.Inputs.DeploymentChannelProfileWebWidgetConfigSecuritySettingsArgs
///                 {
///                     EnablePublicAccess = true,
///                     EnableOriginCheck = true,
///                     AllowedOrigins = new[]
///                     {
///                         "https://example.com",
///                         "https://test.com",
///                     },
///                     EnableRecaptcha = true,
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
/// 		my_app, err := ces.NewApp(ctx, "my-app", &ces.AppArgs{
/// 			Location:    pulumi.String("us"),
/// 			DisplayName: pulumi.String("my-app"),
/// 			AppId:       pulumi.String("app-id"),
/// 			TimeZoneSettings: &ces.AppTimeZoneSettingsArgs{
/// 				TimeZone: pulumi.String("America/Los_Angeles"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		my_app_version, err := ces.NewAppVersion(ctx, "my-app-version", &ces.AppVersionArgs{
/// 			Location:     pulumi.String("us"),
/// 			DisplayName:  pulumi.String("my-app-version"),
/// 			App:          my_app.Name,
/// 			AppVersionId: pulumi.String("app-version-id"),
/// 			Description:  pulumi.String("example-app-version"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ces.NewDeployment(ctx, "my-deployment", &ces.DeploymentArgs{
/// 			Location:    pulumi.String("us"),
/// 			DisplayName: pulumi.String("my-deployment"),
/// 			App:         my_app.Name,
/// 			AppVersion:  my_app_version.ID().ToIDOutput().ToStringOutput(),
/// 			ChannelProfile: &ces.DeploymentChannelProfileArgs{
/// 				ChannelType:           pulumi.String("API"),
/// 				DisableBargeInControl: pulumi.Bool(true),
/// 				DisableDtmf:           pulumi.Bool(true),
/// 				PersonaProperty: &ces.DeploymentChannelProfilePersonaPropertyArgs{
/// 					Persona: pulumi.String("CHATTY"),
/// 				},
/// 				ProfileId: pulumi.String("temp_profile_id"),
/// 				WebWidgetConfig: &ces.DeploymentChannelProfileWebWidgetConfigArgs{
/// 					Modality:       pulumi.String("CHAT_AND_VOICE"),
/// 					Theme:          pulumi.String("DARK"),
/// 					WebWidgetTitle: pulumi.String("temp_webwidget_title"),
/// 					SecuritySettings: &ces.DeploymentChannelProfileWebWidgetConfigSecuritySettingsArgs{
/// 						EnablePublicAccess: pulumi.Bool(true),
/// 						EnableOriginCheck:  pulumi.Bool(true),
/// 						AllowedOrigins: pulumi.StringArray{
/// 							pulumi.String("https://example.com"),
/// 							pulumi.String("https://test.com"),
/// 						},
/// 						EnableRecaptcha: pulumi.Bool(true),
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
/// resource "gcp_ces_app" "my-app" {
///   location     = "us"
///   display_name = "my-app"
///   app_id       = "app-id"
///   time_zone_settings = {
///     time_zone = "America/Los_Angeles"
///   }
/// }
/// resource "gcp_ces_appversion" "my-app-version" {
///   location       = "us"
///   display_name   = "my-app-version"
///   app            = gcp_ces_app.my-app.name
///   app_version_id = "app-version-id"
///   description    = "example-app-version"
/// }
/// resource "gcp_ces_deployment" "my-deployment" {
///   location     = "us"
///   display_name = "my-deployment"
///   app          = gcp_ces_app.my-app.name
///   app_version  = gcp_ces_appversion.my-app-version.id
///   channel_profile = {
///     channel_type             = "API"
///     disable_barge_in_control = true
///     disable_dtmf             = true
///     persona_property = {
///       persona = "CHATTY"
///     }
///     profile_id = "temp_profile_id"
///     web_widget_config = {
///       modality         = "CHAT_AND_VOICE"
///       theme            = "DARK"
///       web_widget_title = "temp_webwidget_title"
///       security_settings = {
///         enable_public_access = true
///         enable_origin_check  = true
///         allowed_origins      = ["https://example.com", "https://test.com"]
///         enable_recaptcha     = true
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
/// import com.pulumi.gcp.ces.inputs.AppTimeZoneSettingsArgs;
/// import com.pulumi.gcp.ces.AppVersion;
/// import com.pulumi.gcp.ces.AppVersionArgs;
/// import com.pulumi.gcp.ces.Deployment;
/// import com.pulumi.gcp.ces.DeploymentArgs;
/// import com.pulumi.gcp.ces.inputs.DeploymentChannelProfileArgs;
/// import com.pulumi.gcp.ces.inputs.DeploymentChannelProfilePersonaPropertyArgs;
/// import com.pulumi.gcp.ces.inputs.DeploymentChannelProfileWebWidgetConfigArgs;
/// import com.pulumi.gcp.ces.inputs.DeploymentChannelProfileWebWidgetConfigSecuritySettingsArgs;
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
///         var my_app = new App("my-app", AppArgs.builder()
///             .location("us")
///             .displayName("my-app")
///             .appId("app-id")
///             .timeZoneSettings(AppTimeZoneSettingsArgs.builder()
///                 .timeZone("America/Los_Angeles")
///                 .build())
///             .build());
///
///         var my_app_version = new AppVersion("my-app-version", AppVersionArgs.builder()
///             .location("us")
///             .displayName("my-app-version")
///             .app(my_app.name())
///             .appVersionId("app-version-id")
///             .description("example-app-version")
///             .build());
///
///         var my_deployment = new Deployment("my-deployment", DeploymentArgs.builder()
///             .location("us")
///             .displayName("my-deployment")
///             .app(my_app.name())
///             .appVersion(my_app_version.id())
///             .channelProfile(DeploymentChannelProfileArgs.builder()
///                 .channelType("API")
///                 .disableBargeInControl(true)
///                 .disableDtmf(true)
///                 .personaProperty(DeploymentChannelProfilePersonaPropertyArgs.builder()
///                     .persona("CHATTY")
///                     .build())
///                 .profileId("temp_profile_id")
///                 .webWidgetConfig(DeploymentChannelProfileWebWidgetConfigArgs.builder()
///                     .modality("CHAT_AND_VOICE")
///                     .theme("DARK")
///                     .webWidgetTitle("temp_webwidget_title")
///                     .securitySettings(DeploymentChannelProfileWebWidgetConfigSecuritySettingsArgs.builder()
///                         .enablePublicAccess(true)
///                         .enableOriginCheck(true)
///                         .allowedOrigins(
///                             "https://example.com",
///                             "https://test.com")
///                         .enableRecaptcha(true)
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
///   my-app:
///     type: gcp:ces:App
///     properties:
///       location: us
///       displayName: my-app
///       appId: app-id
///       timeZoneSettings:
///         timeZone: America/Los_Angeles
///   my-app-version:
///     type: gcp:ces:AppVersion
///     properties:
///       location: us
///       displayName: my-app-version
///       app: ${["my-app"].name}
///       appVersionId: app-version-id
///       description: example-app-version
///   my-deployment:
///     type: gcp:ces:Deployment
///     properties:
///       location: us
///       displayName: my-deployment
///       app: ${["my-app"].name}
///       appVersion: ${["my-app-version"].id}
///       channelProfile:
///         channelType: API
///         disableBargeInControl: true
///         disableDtmf: true
///         personaProperty:
///           persona: CHATTY
///         profileId: temp_profile_id
///         webWidgetConfig:
///           modality: CHAT_AND_VOICE
///           theme: DARK
///           webWidgetTitle: temp_webwidget_title
///           securitySettings:
///             enablePublicAccess: true
///             enableOriginCheck: true
///             allowedOrigins:
///               - https://example.com
///               - https://test.com
///             enableRecaptcha: true
/// ```
///
///
/// ## Import
///
/// Deployment can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/apps/{{app}}/deployments/{{name}}`
/// * `{{project}}/{{location}}/{{app}}/{{name}}`
/// * `{{location}}/{{app}}/{{name}}`
///
///
/// When using the `pulumi import` command, Deployment can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:ces/deployment:Deployment default projects/{{project}}/locations/{{location}}/apps/{{app}}/deployments/{{name}}
/// $ pulumi import gcp:ces/deployment:Deployment default {{project}}/{{location}}/{{app}}/{{name}}
/// $ pulumi import gcp:ces/deployment:Deployment default {{location}}/{{app}}/{{name}}
/// ```
class DeploymentType extends pulumi.CustomResource {
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final pulumi.Output<String> app;
  /// The resource name of the app version to deploy.
  /// Format:
  /// projects/{project}/locations/{location}/apps/{app}/versions/{version}
  late final pulumi.Output<String> appVersion;
  /// A ChannelProfile configures the agent's behavior for a specific communication
  /// channel, such as web UI or telephony.
  /// Structure is documented below.
  late final pulumi.Output<DeploymentChannelProfile> channelProfile;
  /// Timestamp when this deployment was created.
  late final pulumi.Output<String> createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// Display name of the deployment.
  late final pulumi.Output<String> displayName;
  /// Etag used to ensure the object hasn't changed during a read-modify-write
  /// operation. If the etag is empty, the update will overwrite any concurrent
  /// changes.
  late final pulumi.Output<String> etag;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final pulumi.Output<String> location;
  /// Identifier. The resource name of the deployment.
  /// Format:
  /// projects/{project}/locations/{location}/apps/{app}/deployments/{deployment}
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// Timestamp when this deployment was last updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [DeploymentType].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DeploymentType]. {@macro pulumi_ces_deployment_deployment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DeploymentType(
    String name, {
    DeploymentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:ces/deployment:Deployment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.35.1').merge(options),
        ) {
    app = registerOutput<String>('app');
    appVersion = registerOutput<String>('appVersion');
    channelProfile = registerOutput<DeploymentChannelProfile>('channelProfile', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DeploymentChannelProfile.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String>('displayName');
    etag = registerOutput<String>('etag');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [DeploymentType] resource's state with the given [name] and [id].
  static DeploymentType get(
    String name,
    pulumi.Input<String> id, {
    DeploymentState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return DeploymentType._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  DeploymentType._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:ces/deployment:Deployment',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    app = registerOutput<String>('app');
    appVersion = registerOutput<String>('appVersion');
    channelProfile = registerOutput<DeploymentChannelProfile>('channelProfile', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DeploymentChannelProfile.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String>('displayName');
    etag = registerOutput<String>('etag');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Creates a typed reference to an existing [DeploymentType] resource.
  DeploymentType.reference(String urn)
    : super(
        'gcp:ces/deployment:Deployment',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    app = registerOutput<String>('app');
    appVersion = registerOutput<String>('appVersion');
    channelProfile = registerOutput<DeploymentChannelProfile>('channelProfile', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DeploymentChannelProfile.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String>('displayName');
    etag = registerOutput<String>('etag');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    updateTime = registerOutput<String>('updateTime');
  }
}
