import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_check_play_integrity_config_args.dart';
import 'app_check_play_integrity_config_state.dart';

/// An app's Play Integrity configuration object. Note that your registered SHA-256 certificate fingerprints are used to validate tokens issued by the Play Integrity API.
/// Make sure your `gcp.firebase.AndroidApp` has at least one `sha256Hashes` present.
///
///
/// To get more information about PlayIntegrityConfig, see:
///
/// * [API documentation](https://firebase.google.com/docs/reference/appcheck/rest/v1/projects.apps.playIntegrityConfig)
/// * How-to Guides
/// * [Official Documentation](https://firebase.google.com/docs/app-check)
///
/// ## Example Usage
///
/// ### Firebase App Check Play Integrity Config Minimal
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as time from "@pulumiverse/time";
///
/// // Enables the Play Integrity API
/// const playIntegrity = new gcp.projects.Service("play_integrity", {
///     project: "my-project-name",
///     service: "playintegrity.googleapis.com",
/// });
/// const _default = new gcp.firebase.AndroidApp("default", {
///     project: "my-project-name",
///     displayName: "Play Integrity app",
///     packageName: "package.name.playintegrity",
///     sha1Hashes: ["2145bdf698b8715039bd0e83f2069bed435ac21c"],
///     sha256Hashes: ["2145bdf698b8715039bd0e83f2069bed435ac21ca1b2c3d4e5f6123456789abc"],
/// });
/// // It takes a while for App Check to recognize the new app
/// // If your app already exists, you don't have to wait 30 seconds.
/// const wait30s = new time.Sleep("wait_30s", {createDuration: "30s"}, {
///     dependsOn: [_default],
/// });
/// const defaultAppCheckPlayIntegrityConfig = new gcp.firebase.AppCheckPlayIntegrityConfig("default", {
///     project: "my-project-name",
///     appId: _default.appId,
/// }, {
///     dependsOn: [wait30s],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumiverse_time as time
///
/// # Enables the Play Integrity API
/// play_integrity = gcp.projects.Service("play_integrity",
///     project="my-project-name",
///     service="playintegrity.googleapis.com")
/// default = gcp.firebase.AndroidApp("default",
///     project="my-project-name",
///     display_name="Play Integrity app",
///     package_name="package.name.playintegrity",
///     sha1_hashes=["2145bdf698b8715039bd0e83f2069bed435ac21c"],
///     sha256_hashes=["2145bdf698b8715039bd0e83f2069bed435ac21ca1b2c3d4e5f6123456789abc"])
/// # It takes a while for App Check to recognize the new app
/// # If your app already exists, you don't have to wait 30 seconds.
/// wait30s = time.Sleep("wait_30s", create_duration="30s",
/// opts = pulumi.ResourceOptions(depends_on=[default]))
/// default_app_check_play_integrity_config = gcp.firebase.AppCheckPlayIntegrityConfig("default",
///     project="my-project-name",
///     app_id=default.app_id,
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
///     // Enables the Play Integrity API
///     var playIntegrity = new Gcp.Projects.Service("play_integrity", new()
///     {
///         Project = "my-project-name",
///         ServiceName = "playintegrity.googleapis.com",
///     });
///
///     var @default = new Gcp.Firebase.AndroidApp("default", new()
///     {
///         Project = "my-project-name",
///         DisplayName = "Play Integrity app",
///         PackageName = "package.name.playintegrity",
///         Sha1Hashes = new[]
///         {
///             "2145bdf698b8715039bd0e83f2069bed435ac21c",
///         },
///         Sha256Hashes = new[]
///         {
///             "2145bdf698b8715039bd0e83f2069bed435ac21ca1b2c3d4e5f6123456789abc",
///         },
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
///     var defaultAppCheckPlayIntegrityConfig = new Gcp.Firebase.AppCheckPlayIntegrityConfig("default", new()
///     {
///         Project = "my-project-name",
///         AppId = @default.AppId,
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
/// 		// Enables the Play Integrity API
/// 		_, err := projects.NewService(ctx, "play_integrity", &projects.ServiceArgs{
/// 			Project: pulumi.String("my-project-name"),
/// 			Service: pulumi.String("playintegrity.googleapis.com"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_default, err := firebase.NewAndroidApp(ctx, "default", &firebase.AndroidAppArgs{
/// 			Project:     pulumi.String("my-project-name"),
/// 			DisplayName: pulumi.String("Play Integrity app"),
/// 			PackageName: pulumi.String("package.name.playintegrity"),
/// 			Sha1Hashes: pulumi.StringArray{
/// 				pulumi.String("2145bdf698b8715039bd0e83f2069bed435ac21c"),
/// 			},
/// 			Sha256Hashes: pulumi.StringArray{
/// 				pulumi.String("2145bdf698b8715039bd0e83f2069bed435ac21ca1b2c3d4e5f6123456789abc"),
/// 			},
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
/// 		_, err = firebase.NewAppCheckPlayIntegrityConfig(ctx, "default", &firebase.AppCheckPlayIntegrityConfigArgs{
/// 			Project: pulumi.String("my-project-name"),
/// 			AppId:   _default.AppId,
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
/// # Enables the Play Integrity API
/// resource "gcp_projects_service" "play_integrity" {
///   project = "my-project-name"
///   service = "playintegrity.googleapis.com"
/// }
/// resource "gcp_firebase_androidapp" "default" {
///   project       = "my-project-name"
///   display_name  = "Play Integrity app"
///   package_name  = "package.name.playintegrity"
///   sha1_hashes   = ["2145bdf698b8715039bd0e83f2069bed435ac21c"]
///   sha256_hashes = ["2145bdf698b8715039bd0e83f2069bed435ac21ca1b2c3d4e5f6123456789abc"]
/// }
/// # It takes a while for App Check to recognize the new app
/// # If your app already exists, you don't have to wait 30 seconds.
/// resource "time_sleep" "wait_30s" {
///   depends_on      = [gcp_firebase_androidapp.default]
///   create_duration = "30s"
/// }
/// resource "gcp_firebase_appcheckplayintegrityconfig" "default" {
///   depends_on = [time_sleep.wait_30s]
///   project    = "my-project-name"
///   app_id     = gcp_firebase_androidapp.default.app_id
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
/// import com.pulumi.gcp.firebase.AndroidApp;
/// import com.pulumi.gcp.firebase.AndroidAppArgs;
/// import com.pulumiverse.time.Sleep;
/// import com.pulumiverse.time.SleepArgs;
/// import com.pulumi.gcp.firebase.AppCheckPlayIntegrityConfig;
/// import com.pulumi.gcp.firebase.AppCheckPlayIntegrityConfigArgs;
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
///         // Enables the Play Integrity API
///         var playIntegrity = new Service("playIntegrity", ServiceArgs.builder()
///             .project("my-project-name")
///             .service("playintegrity.googleapis.com")
///             .build());
///
///         var default_ = new AndroidApp("default", AndroidAppArgs.builder()
///             .project("my-project-name")
///             .displayName("Play Integrity app")
///             .packageName("package.name.playintegrity")
///             .sha1Hashes("2145bdf698b8715039bd0e83f2069bed435ac21c")
///             .sha256Hashes("2145bdf698b8715039bd0e83f2069bed435ac21ca1b2c3d4e5f6123456789abc")
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
///         var defaultAppCheckPlayIntegrityConfig = new AppCheckPlayIntegrityConfig("defaultAppCheckPlayIntegrityConfig", AppCheckPlayIntegrityConfigArgs.builder()
///             .project("my-project-name")
///             .appId(default_.appId())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(wait30s)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   # Enables the Play Integrity API
///   playIntegrity:
///     type: gcp:projects:Service
///     name: play_integrity
///     properties:
///       project: my-project-name
///       service: playintegrity.googleapis.com
///   default:
///     type: gcp:firebase:AndroidApp
///     properties:
///       project: my-project-name
///       displayName: Play Integrity app
///       packageName: package.name.playintegrity
///       sha1Hashes:
///         - 2145bdf698b8715039bd0e83f2069bed435ac21c
///       sha256Hashes:
///         - 2145bdf698b8715039bd0e83f2069bed435ac21ca1b2c3d4e5f6123456789abc
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
///   defaultAppCheckPlayIntegrityConfig:
///     type: gcp:firebase:AppCheckPlayIntegrityConfig
///     name: default
///     properties:
///       project: my-project-name
///       appId: ${default.appId}
///     options:
///       dependsOn:
///         - ${wait30s}
/// ```
///
/// ### Firebase App Check Play Integrity Config Full
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as time from "@pulumiverse/time";
///
/// // Enables the Play Integrity API
/// const playIntegrity = new gcp.projects.Service("play_integrity", {
///     project: "my-project-name",
///     service: "playintegrity.googleapis.com",
/// });
/// const _default = new gcp.firebase.AndroidApp("default", {
///     project: "my-project-name",
///     displayName: "Play Integrity app",
///     packageName: "package.name.playintegrity",
///     sha1Hashes: ["2145bdf698b8715039bd0e83f2069bed435ac21c"],
///     sha256Hashes: ["2145bdf698b8715039bd0e83f2069bed435ac21ca1b2c3d4e5f6123456789abc"],
/// });
/// // It takes a while for App Check to recognize the new app
/// // If your app already exists, you don't have to wait 30 seconds.
/// const wait30s = new time.Sleep("wait_30s", {createDuration: "30s"}, {
///     dependsOn: [_default],
/// });
/// const defaultAppCheckPlayIntegrityConfig = new gcp.firebase.AppCheckPlayIntegrityConfig("default", {
///     project: "my-project-name",
///     appId: _default.appId,
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
/// # Enables the Play Integrity API
/// play_integrity = gcp.projects.Service("play_integrity",
///     project="my-project-name",
///     service="playintegrity.googleapis.com")
/// default = gcp.firebase.AndroidApp("default",
///     project="my-project-name",
///     display_name="Play Integrity app",
///     package_name="package.name.playintegrity",
///     sha1_hashes=["2145bdf698b8715039bd0e83f2069bed435ac21c"],
///     sha256_hashes=["2145bdf698b8715039bd0e83f2069bed435ac21ca1b2c3d4e5f6123456789abc"])
/// # It takes a while for App Check to recognize the new app
/// # If your app already exists, you don't have to wait 30 seconds.
/// wait30s = time.Sleep("wait_30s", create_duration="30s",
/// opts = pulumi.ResourceOptions(depends_on=[default]))
/// default_app_check_play_integrity_config = gcp.firebase.AppCheckPlayIntegrityConfig("default",
///     project="my-project-name",
///     app_id=default.app_id,
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
///     // Enables the Play Integrity API
///     var playIntegrity = new Gcp.Projects.Service("play_integrity", new()
///     {
///         Project = "my-project-name",
///         ServiceName = "playintegrity.googleapis.com",
///     });
///
///     var @default = new Gcp.Firebase.AndroidApp("default", new()
///     {
///         Project = "my-project-name",
///         DisplayName = "Play Integrity app",
///         PackageName = "package.name.playintegrity",
///         Sha1Hashes = new[]
///         {
///             "2145bdf698b8715039bd0e83f2069bed435ac21c",
///         },
///         Sha256Hashes = new[]
///         {
///             "2145bdf698b8715039bd0e83f2069bed435ac21ca1b2c3d4e5f6123456789abc",
///         },
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
///     var defaultAppCheckPlayIntegrityConfig = new Gcp.Firebase.AppCheckPlayIntegrityConfig("default", new()
///     {
///         Project = "my-project-name",
///         AppId = @default.AppId,
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
/// 		// Enables the Play Integrity API
/// 		_, err := projects.NewService(ctx, "play_integrity", &projects.ServiceArgs{
/// 			Project: pulumi.String("my-project-name"),
/// 			Service: pulumi.String("playintegrity.googleapis.com"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_default, err := firebase.NewAndroidApp(ctx, "default", &firebase.AndroidAppArgs{
/// 			Project:     pulumi.String("my-project-name"),
/// 			DisplayName: pulumi.String("Play Integrity app"),
/// 			PackageName: pulumi.String("package.name.playintegrity"),
/// 			Sha1Hashes: pulumi.StringArray{
/// 				pulumi.String("2145bdf698b8715039bd0e83f2069bed435ac21c"),
/// 			},
/// 			Sha256Hashes: pulumi.StringArray{
/// 				pulumi.String("2145bdf698b8715039bd0e83f2069bed435ac21ca1b2c3d4e5f6123456789abc"),
/// 			},
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
/// 		_, err = firebase.NewAppCheckPlayIntegrityConfig(ctx, "default", &firebase.AppCheckPlayIntegrityConfigArgs{
/// 			Project:  pulumi.String("my-project-name"),
/// 			AppId:    _default.AppId,
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
/// # Enables the Play Integrity API
/// resource "gcp_projects_service" "play_integrity" {
///   project = "my-project-name"
///   service = "playintegrity.googleapis.com"
/// }
/// resource "gcp_firebase_androidapp" "default" {
///   project       = "my-project-name"
///   display_name  = "Play Integrity app"
///   package_name  = "package.name.playintegrity"
///   sha1_hashes   = ["2145bdf698b8715039bd0e83f2069bed435ac21c"]
///   sha256_hashes = ["2145bdf698b8715039bd0e83f2069bed435ac21ca1b2c3d4e5f6123456789abc"]
/// }
/// # It takes a while for App Check to recognize the new app
/// # If your app already exists, you don't have to wait 30 seconds.
/// resource "time_sleep" "wait_30s" {
///   depends_on      = [gcp_firebase_androidapp.default]
///   create_duration = "30s"
/// }
/// resource "gcp_firebase_appcheckplayintegrityconfig" "default" {
///   depends_on = [time_sleep.wait_30s]
///   project    = "my-project-name"
///   app_id     = gcp_firebase_androidapp.default.app_id
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
/// import com.pulumi.gcp.firebase.AndroidApp;
/// import com.pulumi.gcp.firebase.AndroidAppArgs;
/// import com.pulumiverse.time.Sleep;
/// import com.pulumiverse.time.SleepArgs;
/// import com.pulumi.gcp.firebase.AppCheckPlayIntegrityConfig;
/// import com.pulumi.gcp.firebase.AppCheckPlayIntegrityConfigArgs;
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
///         // Enables the Play Integrity API
///         var playIntegrity = new Service("playIntegrity", ServiceArgs.builder()
///             .project("my-project-name")
///             .service("playintegrity.googleapis.com")
///             .build());
///
///         var default_ = new AndroidApp("default", AndroidAppArgs.builder()
///             .project("my-project-name")
///             .displayName("Play Integrity app")
///             .packageName("package.name.playintegrity")
///             .sha1Hashes("2145bdf698b8715039bd0e83f2069bed435ac21c")
///             .sha256Hashes("2145bdf698b8715039bd0e83f2069bed435ac21ca1b2c3d4e5f6123456789abc")
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
///         var defaultAppCheckPlayIntegrityConfig = new AppCheckPlayIntegrityConfig("defaultAppCheckPlayIntegrityConfig", AppCheckPlayIntegrityConfigArgs.builder()
///             .project("my-project-name")
///             .appId(default_.appId())
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
///   # Enables the Play Integrity API
///   playIntegrity:
///     type: gcp:projects:Service
///     name: play_integrity
///     properties:
///       project: my-project-name
///       service: playintegrity.googleapis.com
///   default:
///     type: gcp:firebase:AndroidApp
///     properties:
///       project: my-project-name
///       displayName: Play Integrity app
///       packageName: package.name.playintegrity
///       sha1Hashes:
///         - 2145bdf698b8715039bd0e83f2069bed435ac21c
///       sha256Hashes:
///         - 2145bdf698b8715039bd0e83f2069bed435ac21ca1b2c3d4e5f6123456789abc
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
///   defaultAppCheckPlayIntegrityConfig:
///     type: gcp:firebase:AppCheckPlayIntegrityConfig
///     name: default
///     properties:
///       project: my-project-name
///       appId: ${default.appId}
///       tokenTtl: 7200s
///     options:
///       dependsOn:
///         - ${wait30s}
/// ```
///
///
/// ## Import
///
/// PlayIntegrityConfig can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/apps/{{app_id}}/playIntegrityConfig`
/// * `{{project}}/{{app_id}}`
/// * `{{app_id}}`
///
///
/// When using the `pulumi import` command, PlayIntegrityConfig can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:firebase/appCheckPlayIntegrityConfig:AppCheckPlayIntegrityConfig default projects/{{project}}/apps/{{app_id}}/playIntegrityConfig
/// $ pulumi import gcp:firebase/appCheckPlayIntegrityConfig:AppCheckPlayIntegrityConfig default {{project}}/{{app_id}}
/// $ pulumi import gcp:firebase/appCheckPlayIntegrityConfig:AppCheckPlayIntegrityConfig default {{app_id}}
/// ```
class AppCheckPlayIntegrityConfig extends pulumi.CustomResource {
  /// The ID of an
  /// [Android App](https://firebase.google.com/docs/reference/firebase-management/rest/v1beta1/projects.androidApps#AndroidApp.FIELDS.app_id).
  late final pulumi.Output<String> appId;
  /// The relative resource name of the Play Integrity configuration object
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// Specifies the duration for which App Check tokens exchanged from Play Integrity artifacts will be valid.
  /// If unset, a default value of 1 hour is assumed. Must be between 30 minutes and 7 days, inclusive.
  /// A duration in seconds with up to nine fractional digits, ending with 's'. Example: "3.5s".
  late final pulumi.Output<String> tokenTtl;

  /// Creates a new [AppCheckPlayIntegrityConfig].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AppCheckPlayIntegrityConfig]. {@macro pulumi_firebase_app_check_play_integrity_config_app_check_play_integrity_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AppCheckPlayIntegrityConfig(
    String name, {
    AppCheckPlayIntegrityConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:firebase/appCheckPlayIntegrityConfig:AppCheckPlayIntegrityConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.36.1').merge(options),
        ) {
    appId = registerOutput<String>('appId');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    tokenTtl = registerOutput<String>('tokenTtl');
  }

  /// Gets an existing [AppCheckPlayIntegrityConfig] resource's state with the given [name] and [id].
  static AppCheckPlayIntegrityConfig get(
    String name,
    pulumi.Input<String> id, {
    AppCheckPlayIntegrityConfigState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return AppCheckPlayIntegrityConfig._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  AppCheckPlayIntegrityConfig._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:firebase/appCheckPlayIntegrityConfig:AppCheckPlayIntegrityConfig',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    appId = registerOutput<String>('appId');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    tokenTtl = registerOutput<String>('tokenTtl');
  }

  /// Creates a typed reference to an existing [AppCheckPlayIntegrityConfig] resource.
  AppCheckPlayIntegrityConfig.reference(String urn)
    : super(
        'gcp:firebase/appCheckPlayIntegrityConfig:AppCheckPlayIntegrityConfig',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    appId = registerOutput<String>('appId');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    tokenTtl = registerOutput<String>('tokenTtl');
  }
}
