import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_check_recaptcha_enterprise_config_args.dart';
import 'app_check_recaptcha_enterprise_config_state.dart';

/// An app's reCAPTCHA Enterprise configuration object.
///
///
/// To get more information about RecaptchaEnterpriseConfig, see:
///
/// * [API documentation](https://firebase.google.com/docs/reference/appcheck/rest/v1/projects.apps.recaptchaEnterpriseConfig)
/// * How-to Guides
/// * [Official Documentation](https://firebase.google.com/docs/app-check)
///
/// ## Example Usage
///
/// ### Firebase App Check Recaptcha Enterprise Config Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as time from "@pulumiverse/time";
///
/// // Enables the reCAPTCHA Enterprise API
/// const recaptchaEnterprise = new gcp.projects.Service("recaptcha_enterprise", {
///     project: "my-project-name",
///     service: "recaptchaenterprise.googleapis.com",
/// });
/// const _default = new gcp.firebase.WebApp("default", {
///     project: "my-project-name",
///     displayName: "Web App for reCAPTCHA Enterprise",
/// });
/// // It takes a while for App Check to recognize the new app
/// // If your app already exists, you don't have to wait 30 seconds.
/// const wait30s = new time.Sleep("wait_30s", {createDuration: "30s"}, {
///     dependsOn: [_default],
/// });
/// const defaultAppCheckRecaptchaEnterpriseConfig = new gcp.firebase.AppCheckRecaptchaEnterpriseConfig("default", {
///     project: "my-project-name",
///     appId: _default.appId,
///     siteKey: "6LdpMXIpAAAAANkwWQPgEdjEhal7ugkH9RK9ytuw",
///     tokenTtl: "7200s",
/// }, {
///     dependsOn: [wait30s],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumiverse_time as time
///
/// # Enables the reCAPTCHA Enterprise API
/// recaptcha_enterprise = gcp.projects.Service("recaptcha_enterprise",
///     project="my-project-name",
///     service="recaptchaenterprise.googleapis.com")
/// default = gcp.firebase.WebApp("default",
///     project="my-project-name",
///     display_name="Web App for reCAPTCHA Enterprise")
/// # It takes a while for App Check to recognize the new app
/// # If your app already exists, you don't have to wait 30 seconds.
/// wait30s = time.Sleep("wait_30s", create_duration="30s",
/// opts = pulumi.ResourceOptions(depends_on=[default]))
/// default_app_check_recaptcha_enterprise_config = gcp.firebase.AppCheckRecaptchaEnterpriseConfig("default",
///     project="my-project-name",
///     app_id=default.app_id,
///     site_key="6LdpMXIpAAAAANkwWQPgEdjEhal7ugkH9RK9ytuw",
///     token_ttl="7200s",
///     opts = pulumi.ResourceOptions(depends_on=[wait30s]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
/// using Time = Pulumiverse.Time;
///
/// return await Deployment.RunAsync(() =>
/// {
///     // Enables the reCAPTCHA Enterprise API
///     var recaptchaEnterprise = new Gcp.Projects.Service("recaptcha_enterprise", new()
///     {
///         Project = "my-project-name",
///         ServiceName = "recaptchaenterprise.googleapis.com",
///     });
///
///     var @default = new Gcp.Firebase.WebApp("default", new()
///     {
///         Project = "my-project-name",
///         DisplayName = "Web App for reCAPTCHA Enterprise",
///     });
///
///     // It takes a while for App Check to recognize the new app
///     // If your app already exists, you don't have to wait 30 seconds.
///     var wait30s = new Time.Sleep("wait_30s", new()
///     {
///         CreateDuration = "30s",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             @default,
///         },
///     });
///
///     var defaultAppCheckRecaptchaEnterpriseConfig = new Gcp.Firebase.AppCheckRecaptchaEnterpriseConfig("default", new()
///     {
///         Project = "my-project-name",
///         AppId = @default.AppId,
///         SiteKey = "6LdpMXIpAAAAANkwWQPgEdjEhal7ugkH9RK9ytuw",
///         TokenTtl = "7200s",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             wait30s,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/firebase"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/projects"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumiverse/pulumi-time/sdk/go/time"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		// Enables the reCAPTCHA Enterprise API
/// 		_, err := projects.NewService(ctx, "recaptcha_enterprise", &projects.ServiceArgs{
/// 			Project: pulumi.String("my-project-name"),
/// 			Service: pulumi.String("recaptchaenterprise.googleapis.com"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_default, err := firebase.NewWebApp(ctx, "default", &firebase.WebAppArgs{
/// 			Project:     pulumi.String("my-project-name"),
/// 			DisplayName: pulumi.String("Web App for reCAPTCHA Enterprise"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// It takes a while for App Check to recognize the new app
/// 		// If your app already exists, you don't have to wait 30 seconds.
/// 		wait30s, err := time.NewSleep(ctx, "wait_30s", &time.SleepArgs{
/// 			CreateDuration: pulumi.String("30s"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			_default,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = firebase.NewAppCheckRecaptchaEnterpriseConfig(ctx, "default", &firebase.AppCheckRecaptchaEnterpriseConfigArgs{
/// 			Project:  pulumi.String("my-project-name"),
/// 			AppId:    _default.AppId,
/// 			SiteKey:  pulumi.String("6LdpMXIpAAAAANkwWQPgEdjEhal7ugkH9RK9ytuw"),
/// 			TokenTtl: pulumi.String("7200s"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			wait30s,
/// 		}))
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
///     time = {
///       source = "pulumi/time"
///     }
///   }
/// }
///
/// # Enables the reCAPTCHA Enterprise API
/// resource "gcp_projects_service" "recaptcha_enterprise" {
///   project = "my-project-name"
///   service = "recaptchaenterprise.googleapis.com"
/// }
/// resource "gcp_firebase_webapp" "default" {
///   project      = "my-project-name"
///   display_name = "Web App for reCAPTCHA Enterprise"
/// }
/// # It takes a while for App Check to recognize the new app
/// # If your app already exists, you don't have to wait 30 seconds.
/// resource "time_sleep" "wait_30s" {
///   depends_on      = [gcp_firebase_webapp.default]
///   create_duration = "30s"
/// }
/// resource "gcp_firebase_appcheckrecaptchaenterpriseconfig" "default" {
///   depends_on = [time_sleep.wait_30s]
///   project    = "my-project-name"
///   app_id     = gcp_firebase_webapp.default.app_id
///   site_key   = "6LdpMXIpAAAAANkwWQPgEdjEhal7ugkH9RK9ytuw"
///   token_ttl  = "7200s"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.projects.Service;
/// import com.pulumi.gcp.projects.ServiceArgs;
/// import com.pulumi.gcp.firebase.WebApp;
/// import com.pulumi.gcp.firebase.WebAppArgs;
/// import com.pulumiverse.time.Sleep;
/// import com.pulumiverse.time.SleepArgs;
/// import com.pulumi.gcp.firebase.AppCheckRecaptchaEnterpriseConfig;
/// import com.pulumi.gcp.firebase.AppCheckRecaptchaEnterpriseConfigArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         // Enables the reCAPTCHA Enterprise API
///         var recaptchaEnterprise = new Service("recaptchaEnterprise", ServiceArgs.builder()
///             .project("my-project-name")
///             .service("recaptchaenterprise.googleapis.com")
///             .build());
///
///         var default_ = new WebApp("default", WebAppArgs.builder()
///             .project("my-project-name")
///             .displayName("Web App for reCAPTCHA Enterprise")
///             .build());
///
///         // It takes a while for App Check to recognize the new app
///         // If your app already exists, you don't have to wait 30 seconds.
///         var wait30s = new Sleep("wait30s", SleepArgs.builder()
///             .createDuration("30s")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(default_)
///                 .build());
///
///         var defaultAppCheckRecaptchaEnterpriseConfig = new AppCheckRecaptchaEnterpriseConfig("defaultAppCheckRecaptchaEnterpriseConfig", AppCheckRecaptchaEnterpriseConfigArgs.builder()
///             .project("my-project-name")
///             .appId(default_.appId())
///             .siteKey("6LdpMXIpAAAAANkwWQPgEdjEhal7ugkH9RK9ytuw")
///             .tokenTtl("7200s")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(wait30s)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   # Enables the reCAPTCHA Enterprise API
///   recaptchaEnterprise:
///     type: gcp:projects:Service
///     name: recaptcha_enterprise
///     properties:
///       project: my-project-name
///       service: recaptchaenterprise.googleapis.com
///   default:
///     type: gcp:firebase:WebApp
///     properties:
///       project: my-project-name
///       displayName: Web App for reCAPTCHA Enterprise
///   # It takes a while for App Check to recognize the new app
///   # If your app already exists, you don't have to wait 30 seconds.
///   wait30s:
///     type: time:Sleep
///     name: wait_30s
///     properties:
///       createDuration: 30s
///     options:
///       dependsOn:
///         - ${default}
///   defaultAppCheckRecaptchaEnterpriseConfig:
///     type: gcp:firebase:AppCheckRecaptchaEnterpriseConfig
///     name: default
///     properties:
///       project: my-project-name
///       appId: ${default.appId}
///       siteKey: 6LdpMXIpAAAAANkwWQPgEdjEhal7ugkH9RK9ytuw
///       tokenTtl: 7200s
///     options:
///       dependsOn:
///         - ${wait30s}
/// ```
///
///
/// ## Import
///
/// RecaptchaEnterpriseConfig can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/apps/{{app_id}}/recaptchaEnterpriseConfig`
/// * `{{project}}/{{app_id}}`
/// * `{{app_id}}`
///
///
/// When using the `pulumi import` command, RecaptchaEnterpriseConfig can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:firebase/appCheckRecaptchaEnterpriseConfig:AppCheckRecaptchaEnterpriseConfig default projects/{{project}}/apps/{{app_id}}/recaptchaEnterpriseConfig
/// $ pulumi import gcp:firebase/appCheckRecaptchaEnterpriseConfig:AppCheckRecaptchaEnterpriseConfig default {{project}}/{{app_id}}
/// $ pulumi import gcp:firebase/appCheckRecaptchaEnterpriseConfig:AppCheckRecaptchaEnterpriseConfig default {{app_id}}
/// ```
class AppCheckRecaptchaEnterpriseConfig extends pulumi.CustomResource {
  /// The ID of an
  /// [Web App](https://firebase.google.com/docs/reference/firebase-management/rest/v1beta1/projects.webApps#WebApp.FIELDS.app_id).
  late final pulumi.Output<String> appId;
  /// The relative resource name of the reCAPTCHA Enterprise configuration object
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The score-based site key created in reCAPTCHA Enterprise used to invoke reCAPTCHA and generate the reCAPTCHA tokens for your application.
  /// **Important**: This is not the siteSecret (as it is in reCAPTCHA v3), but rather your score-based reCAPTCHA Enterprise site key.
  late final pulumi.Output<String> siteKey;
  /// Specifies the duration for which App Check tokens exchanged from reCAPTCHA Enterprise artifacts will be valid.
  /// If unset, a default value of 1 hour is assumed. Must be between 30 minutes and 7 days, inclusive.
  /// A duration in seconds with up to nine fractional digits, ending with 's'. Example: "3.5s".
  late final pulumi.Output<String> tokenTtl;

  /// Creates a new [AppCheckRecaptchaEnterpriseConfig].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AppCheckRecaptchaEnterpriseConfig]. {@macro pulumi_firebase_app_check_recaptcha_enterprise_config_app_check_recaptcha_enterprise_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AppCheckRecaptchaEnterpriseConfig(
    String name, {
    AppCheckRecaptchaEnterpriseConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:firebase/appCheckRecaptchaEnterpriseConfig:AppCheckRecaptchaEnterpriseConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.36.1').merge(options),
        ) {
    appId = registerOutput<String>('appId');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    siteKey = registerOutput<String>('siteKey');
    tokenTtl = registerOutput<String>('tokenTtl');
  }

  /// Gets an existing [AppCheckRecaptchaEnterpriseConfig] resource's state with the given [name] and [id].
  static AppCheckRecaptchaEnterpriseConfig get(
    String name,
    pulumi.Input<String> id, {
    AppCheckRecaptchaEnterpriseConfigState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return AppCheckRecaptchaEnterpriseConfig._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  AppCheckRecaptchaEnterpriseConfig._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:firebase/appCheckRecaptchaEnterpriseConfig:AppCheckRecaptchaEnterpriseConfig',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    appId = registerOutput<String>('appId');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    siteKey = registerOutput<String>('siteKey');
    tokenTtl = registerOutput<String>('tokenTtl');
  }

  /// Creates a typed reference to an existing [AppCheckRecaptchaEnterpriseConfig] resource.
  AppCheckRecaptchaEnterpriseConfig.reference(String urn)
    : super(
        'gcp:firebase/appCheckRecaptchaEnterpriseConfig:AppCheckRecaptchaEnterpriseConfig',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    appId = registerOutput<String>('appId');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    siteKey = registerOutput<String>('siteKey');
    tokenTtl = registerOutput<String>('tokenTtl');
  }
}
