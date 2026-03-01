import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_check_debug_token_args.dart';
import 'app_check_debug_token_state.dart';

/// A debug token is a secret used during the development or integration testing of
/// an app. It essentially allows the development or integration testing to bypass
/// app attestation while still allowing App Check to enforce protection on supported
/// production Firebase services.
///
///
/// To get more information about DebugToken, see:
///
/// * [API documentation](https://firebase.google.com/docs/reference/appcheck/rest/v1/projects.apps.debugTokens)
/// * How-to Guides
/// * [Official Documentation](https://firebase.google.com/docs/app-check)
///
///
///
/// ## Example Usage
///
/// ### Firebase App Check Debug Token Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as time from "@pulumiverse/time";
///
/// const _default = new gcp.firebase.WebApp("default", {
///     project: "my-project-name",
///     displayName: "Web App for debug token",
/// });
/// // It takes a while for App Check to recognize the new app
/// // If your app already exists, you don't have to wait 30 seconds.
/// const wait30s = new time.Sleep("wait_30s", {createDuration: "30s"}, {
///     dependsOn: [_default],
/// });
/// const defaultAppCheckDebugToken = new gcp.firebase.AppCheckDebugToken("default", {
///     project: "my-project-name",
///     appId: _default.appId,
///     displayName: "Debug Token",
///     token: "00000000-AAAA-BBBB-CCCC-000000000000",
/// }, {
///     dependsOn: [wait30s],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumiverse_time as time
///
/// default = gcp.firebase.WebApp("default",
///     project="my-project-name",
///     display_name="Web App for debug token")
/// # It takes a while for App Check to recognize the new app
/// # If your app already exists, you don't have to wait 30 seconds.
/// wait30s = time.Sleep("wait_30s", create_duration="30s",
/// opts = pulumi.ResourceOptions(depends_on=[default]))
/// default_app_check_debug_token = gcp.firebase.AppCheckDebugToken("default",
///     project="my-project-name",
///     app_id=default.app_id,
///     display_name="Debug Token",
///     token="00000000-AAAA-BBBB-CCCC-000000000000",
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
///     var @default = new Gcp.Firebase.WebApp("default", new()
///     {
///         Project = "my-project-name",
///         DisplayName = "Web App for debug token",
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
///     var defaultAppCheckDebugToken = new Gcp.Firebase.AppCheckDebugToken("default", new()
///     {
///         Project = "my-project-name",
///         AppId = @default.AppId,
///         DisplayName = "Debug Token",
///         Token = "00000000-AAAA-BBBB-CCCC-000000000000",
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
/// 		_default, err := firebase.NewWebApp(ctx, "default", &firebase.WebAppArgs{
/// 			Project:     pulumi.String("my-project-name"),
/// 			DisplayName: pulumi.String("Web App for debug token"),
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
/// 		_, err = firebase.NewAppCheckDebugToken(ctx, "default", &firebase.AppCheckDebugTokenArgs{
/// 			Project:     pulumi.String("my-project-name"),
/// 			AppId:       _default.AppId,
/// 			DisplayName: pulumi.String("Debug Token"),
/// 			Token:       pulumi.String("00000000-AAAA-BBBB-CCCC-000000000000"),
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
/// import com.pulumi.gcp.firebase.WebApp;
/// import com.pulumi.gcp.firebase.WebAppArgs;
/// import com.pulumiverse.time.Sleep;
/// import com.pulumiverse.time.SleepArgs;
/// import com.pulumi.gcp.firebase.AppCheckDebugToken;
/// import com.pulumi.gcp.firebase.AppCheckDebugTokenArgs;
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
///         var default_ = new WebApp("default", WebAppArgs.builder()
///             .project("my-project-name")
///             .displayName("Web App for debug token")
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
///         var defaultAppCheckDebugToken = new AppCheckDebugToken("defaultAppCheckDebugToken", AppCheckDebugTokenArgs.builder()
///             .project("my-project-name")
///             .appId(default_.appId())
///             .displayName("Debug Token")
///             .token("00000000-AAAA-BBBB-CCCC-000000000000")
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
///     type: gcp:firebase:WebApp
///     properties:
///       project: my-project-name
///       displayName: Web App for debug token
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
///   defaultAppCheckDebugToken:
///     type: gcp:firebase:AppCheckDebugToken
///     name: default
///     properties:
///       project: my-project-name
///       appId: ${default.appId}
///       displayName: Debug Token
///       token: 00000000-AAAA-BBBB-CCCC-000000000000
///     options:
///       dependsOn:
///         - ${wait30s}
/// ```
///
///
/// ## Import
///
/// DebugToken can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/apps/{{app_id}}/debugTokens/{{debug_token_id}}`
///
/// * `{{project}}/{{app_id}}/{{debug_token_id}}`
///
/// * `{{app_id}}/{{debug_token_id}}`
///
/// When using the `pulumi import` command, DebugToken can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:firebase/appCheckDebugToken:AppCheckDebugToken default projects/{{project}}/apps/{{app_id}}/debugTokens/{{debug_token_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:firebase/appCheckDebugToken:AppCheckDebugToken default {{project}}/{{app_id}}/{{debug_token_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:firebase/appCheckDebugToken:AppCheckDebugToken default {{app_id}}/{{debug_token_id}}
/// ```
class AppCheckDebugToken extends pulumi.CustomResource {
  /// The ID of a
  /// [Web App](https://firebase.google.com/docs/reference/firebase-management/rest/v1beta1/projects.webApps#WebApp.FIELDS.app_id),
  /// [Apple App](https://firebase.google.com/docs/reference/firebase-management/rest/v1beta1/projects.iosApps#IosApp.FIELDS.app_id),
  /// or [Android App](https://firebase.google.com/docs/reference/firebase-management/rest/v1beta1/projects.androidApps#AndroidApp.FIELDS.app_id)
  late final pulumi.Output<String> appId;
  /// The last segment of the resource name of the debug token.
  late final pulumi.Output<String> debugTokenId;
  /// A human readable display name used to identify this debug token.
  late final pulumi.Output<String> displayName;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The secret token itself. Must be provided during creation, and must be a UUID4,
  /// case insensitive. You may use a method of your choice such as random/random_uuid
  /// to generate the token.
  /// This field is immutable once set, and cannot be updated. You can, however, delete
  /// this debug token to revoke it.
  /// For security reasons, this field will never be populated in any response.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  late final pulumi.Output<String> token;

  /// Creates a new [AppCheckDebugToken].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AppCheckDebugToken]. {@macro pulumi_firebase_app_check_debug_token_app_check_debug_token_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AppCheckDebugToken(
    String name, {
    AppCheckDebugTokenArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:firebase/appCheckDebugToken:AppCheckDebugToken',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.appId = registerOutput<String>('appId');
    this.debugTokenId = registerOutput<String>('debugTokenId');
    this.displayName = registerOutput<String>('displayName');
    this.project = registerOutput<String>('project');
    this.token = registerOutput<String>('token');
  }

  /// Gets an existing [AppCheckDebugToken] resource's state with the given [name] and [id].
  static AppCheckDebugToken get(
    String name,
    pulumi.Input<String> id, {
    AppCheckDebugTokenState? state,
  }) {
    return AppCheckDebugToken._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AppCheckDebugToken._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:firebase/appCheckDebugToken:AppCheckDebugToken',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.appId = registerOutput<String>('appId');
    this.debugTokenId = registerOutput<String>('debugTokenId');
    this.displayName = registerOutput<String>('displayName');
    this.project = registerOutput<String>('project');
    this.token = registerOutput<String>('token');
  }
}
