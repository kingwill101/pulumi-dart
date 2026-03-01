import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_check_app_attest_config_args.dart';
import 'app_check_app_attest_config_state.dart';

/// An app's App Attest configuration object. Note that the Team ID registered with your
/// app is used as part of the validation process. Make sure your `gcp.firebase.AppleApp` has a team_id present.
///
///
/// To get more information about AppAttestConfig, see:
///
/// * [API documentation](https://firebase.google.com/docs/reference/appcheck/rest/v1/projects.apps.appAttestConfig)
/// * How-to Guides
/// * [Official Documentation](https://firebase.google.com/docs/app-check)
///
/// ## Example Usage
///
/// ### Firebase App Check App Attest Config Minimal
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as time from "@pulumiverse/time";
///
/// const _default = new gcp.firebase.AppleApp("default", {
///     project: "my-project-name",
///     displayName: "Apple app",
///     bundleId: "bundle.id.appattest",
///     teamId: "9987654321",
/// });
/// // It takes a while for App Check to recognize the new app
/// // If your app already exists, you don't have to wait 30 seconds.
/// const wait30s = new time.Sleep("wait_30s", {createDuration: "30s"}, {
///     dependsOn: [_default],
/// });
/// const defaultAppCheckAppAttestConfig = new gcp.firebase.AppCheckAppAttestConfig("default", {
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
/// default = gcp.firebase.AppleApp("default",
///     project="my-project-name",
///     display_name="Apple app",
///     bundle_id="bundle.id.appattest",
///     team_id="9987654321")
/// # It takes a while for App Check to recognize the new app
/// # If your app already exists, you don't have to wait 30 seconds.
/// wait30s = time.Sleep("wait_30s", create_duration="30s",
/// opts = pulumi.ResourceOptions(depends_on=[default]))
/// default_app_check_app_attest_config = gcp.firebase.AppCheckAppAttestConfig("default",
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
///     var @default = new Gcp.Firebase.AppleApp("default", new()
///     {
///         Project = "my-project-name",
///         DisplayName = "Apple app",
///         BundleId = "bundle.id.appattest",
///         TeamId = "9987654321",
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
///     var defaultAppCheckAppAttestConfig = new Gcp.Firebase.AppCheckAppAttestConfig("default", new()
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
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumiverse/pulumi-time/sdk/go/time"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := firebase.NewAppleApp(ctx, "default", &firebase.AppleAppArgs{
/// 			Project:     pulumi.String("my-project-name"),
/// 			DisplayName: pulumi.String("Apple app"),
/// 			BundleId:    pulumi.String("bundle.id.appattest"),
/// 			TeamId:      pulumi.String("9987654321"),
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
/// 		_, err = firebase.NewAppCheckAppAttestConfig(ctx, "default", &firebase.AppCheckAppAttestConfigArgs{
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.firebase.AppleApp;
/// import com.pulumi.gcp.firebase.AppleAppArgs;
/// import com.pulumiverse.time.Sleep;
/// import com.pulumiverse.time.SleepArgs;
/// import com.pulumi.gcp.firebase.AppCheckAppAttestConfig;
/// import com.pulumi.gcp.firebase.AppCheckAppAttestConfigArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var default_ = new AppleApp("default", AppleAppArgs.builder()
///             .project("my-project-name")
///             .displayName("Apple app")
///             .bundleId("bundle.id.appattest")
///             .teamId("9987654321")
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
///         var defaultAppCheckAppAttestConfig = new AppCheckAppAttestConfig("defaultAppCheckAppAttestConfig", AppCheckAppAttestConfigArgs.builder()
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
///   default:
///     type: gcp:firebase:AppleApp
///     properties:
///       project: my-project-name
///       displayName: Apple app
///       bundleId: bundle.id.appattest
///       teamId: '9987654321'
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
///   defaultAppCheckAppAttestConfig:
///     type: gcp:firebase:AppCheckAppAttestConfig
///     name: default
///     properties:
///       project: my-project-name
///       appId: ${default.appId}
///     options:
///       dependsOn:
///         - ${wait30s}
/// ```
///
/// ### Firebase App Check App Attest Config Full
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as time from "@pulumiverse/time";
///
/// const _default = new gcp.firebase.AppleApp("default", {
///     project: "my-project-name",
///     displayName: "Apple app",
///     bundleId: "bundle.id.appattest",
///     teamId: "9987654321",
/// });
/// // It takes a while for App Check to recognize the new app
/// // If your app already exists, you don't have to wait 30 seconds.
/// const wait30s = new time.Sleep("wait_30s", {createDuration: "30s"}, {
///     dependsOn: [_default],
/// });
/// const defaultAppCheckAppAttestConfig = new gcp.firebase.AppCheckAppAttestConfig("default", {
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
/// default = gcp.firebase.AppleApp("default",
///     project="my-project-name",
///     display_name="Apple app",
///     bundle_id="bundle.id.appattest",
///     team_id="9987654321")
/// # It takes a while for App Check to recognize the new app
/// # If your app already exists, you don't have to wait 30 seconds.
/// wait30s = time.Sleep("wait_30s", create_duration="30s",
/// opts = pulumi.ResourceOptions(depends_on=[default]))
/// default_app_check_app_attest_config = gcp.firebase.AppCheckAppAttestConfig("default",
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
///     var @default = new Gcp.Firebase.AppleApp("default", new()
///     {
///         Project = "my-project-name",
///         DisplayName = "Apple app",
///         BundleId = "bundle.id.appattest",
///         TeamId = "9987654321",
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
///     var defaultAppCheckAppAttestConfig = new Gcp.Firebase.AppCheckAppAttestConfig("default", new()
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
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumiverse/pulumi-time/sdk/go/time"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := firebase.NewAppleApp(ctx, "default", &firebase.AppleAppArgs{
/// 			Project:     pulumi.String("my-project-name"),
/// 			DisplayName: pulumi.String("Apple app"),
/// 			BundleId:    pulumi.String("bundle.id.appattest"),
/// 			TeamId:      pulumi.String("9987654321"),
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
/// 		_, err = firebase.NewAppCheckAppAttestConfig(ctx, "default", &firebase.AppCheckAppAttestConfigArgs{
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.firebase.AppleApp;
/// import com.pulumi.gcp.firebase.AppleAppArgs;
/// import com.pulumiverse.time.Sleep;
/// import com.pulumiverse.time.SleepArgs;
/// import com.pulumi.gcp.firebase.AppCheckAppAttestConfig;
/// import com.pulumi.gcp.firebase.AppCheckAppAttestConfigArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var default_ = new AppleApp("default", AppleAppArgs.builder()
///             .project("my-project-name")
///             .displayName("Apple app")
///             .bundleId("bundle.id.appattest")
///             .teamId("9987654321")
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
///         var defaultAppCheckAppAttestConfig = new AppCheckAppAttestConfig("defaultAppCheckAppAttestConfig", AppCheckAppAttestConfigArgs.builder()
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
///   default:
///     type: gcp:firebase:AppleApp
///     properties:
///       project: my-project-name
///       displayName: Apple app
///       bundleId: bundle.id.appattest
///       teamId: '9987654321'
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
///   defaultAppCheckAppAttestConfig:
///     type: gcp:firebase:AppCheckAppAttestConfig
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
/// AppAttestConfig can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/apps/{{app_id}}/appAttestConfig`
///
/// * `{{project}}/{{app_id}}`
///
/// * `{{app_id}}`
///
/// When using the `pulumi import` command, AppAttestConfig can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:firebase/appCheckAppAttestConfig:AppCheckAppAttestConfig default projects/{{project}}/apps/{{app_id}}/appAttestConfig
/// ```
///
/// ```sh
/// $ pulumi import gcp:firebase/appCheckAppAttestConfig:AppCheckAppAttestConfig default {{project}}/{{app_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:firebase/appCheckAppAttestConfig:AppCheckAppAttestConfig default {{app_id}}
/// ```
class AppCheckAppAttestConfig extends pulumi.CustomResource {
  /// The ID of an
  /// [Apple App](https://firebase.google.com/docs/reference/firebase-management/rest/v1beta1/projects.iosApps#IosApp.FIELDS.app_id).
  late final pulumi.Output<String> appId;
  /// The relative resource name of the App Attest configuration object
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// Specifies the duration for which App Check tokens exchanged from App Attest artifacts will be valid.
  /// If unset, a default value of 1 hour is assumed. Must be between 30 minutes and 7 days, inclusive.
  /// A duration in seconds with up to nine fractional digits, ending with 's'. Example: "3.5s".
  late final pulumi.Output<String> tokenTtl;

  /// Creates a new [AppCheckAppAttestConfig].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AppCheckAppAttestConfig]. {@macro pulumi_firebase_app_check_app_attest_config_app_check_app_attest_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AppCheckAppAttestConfig(
    String name, {
    AppCheckAppAttestConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:firebase/appCheckAppAttestConfig:AppCheckAppAttestConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.appId = registerOutput<String>('appId');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.tokenTtl = registerOutput<String>('tokenTtl');
  }

  /// Gets an existing [AppCheckAppAttestConfig] resource's state with the given [name] and [id].
  static AppCheckAppAttestConfig get(
    String name,
    pulumi.Input<String> id, {
    AppCheckAppAttestConfigState? state,
  }) {
    return AppCheckAppAttestConfig._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AppCheckAppAttestConfig._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:firebase/appCheckAppAttestConfig:AppCheckAppAttestConfig',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.appId = registerOutput<String>('appId');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.tokenTtl = registerOutput<String>('tokenTtl');
  }
}
