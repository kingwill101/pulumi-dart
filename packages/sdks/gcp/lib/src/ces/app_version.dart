import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_version_args.dart';
import 'app_version_snapshot.dart';
import 'app_version_state.dart';

/// Description
///
///
///
/// ## Example Usage
///
/// ### Ces App Version Basic
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
/// 		_, err = ces.NewAppVersion(ctx, "my-app-version", &ces.AppVersionArgs{
/// 			Location:     pulumi.String("us"),
/// 			DisplayName:  pulumi.String("my-app-version"),
/// 			App:          my_app.Name,
/// 			AppVersionId: pulumi.String("app-version-id"),
/// 			Description:  pulumi.String("example-app-version"),
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
/// ```
///
///
/// ## Import
///
/// AppVersion can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/apps/{{app}}/versions/{{name}}`
/// * `{{project}}/{{location}}/{{app}}/{{name}}`
/// * `{{location}}/{{app}}/{{name}}`
///
///
/// When using the `pulumi import` command, AppVersion can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:ces/appVersion:AppVersion default projects/{{project}}/locations/{{location}}/apps/{{app}}/versions/{{name}}
/// $ pulumi import gcp:ces/appVersion:AppVersion default {{project}}/{{location}}/{{app}}/{{name}}
/// $ pulumi import gcp:ces/appVersion:AppVersion default {{location}}/{{app}}/{{name}}
/// ```
class AppVersion extends pulumi.CustomResource {
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final pulumi.Output<String> app;
  /// The ID to use for the app version, which will become the final component
  /// of the app version's resource name. If not provided, a unique ID will be
  /// automatically assigned for the app version.
  late final pulumi.Output<String> appVersionId;
  /// (Output)
  /// Timestamp when the toolset was created.
  late final pulumi.Output<String> createTime;
  /// Email of the user who created the app version.
  late final pulumi.Output<String> creator;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// The description of the app version.
  late final pulumi.Output<String?> description;
  /// The display name of the app version.
  late final pulumi.Output<String?> displayName;
  /// (Output)
  /// ETag used to ensure the object hasn't changed during a read-modify-write
  /// operation. If the etag is empty, the update will overwrite any concurrent
  /// changes.
  late final pulumi.Output<String> etag;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final pulumi.Output<String> location;
  /// (Output)
  /// Identifier. The unique identifier of the toolset.
  /// Format:
  /// `projects/{project}/locations/{location}/apps/{app}/toolsets/{toolset}`
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// A snapshot of the app.
  /// Structure is documented below.
  late final pulumi.Output<List<AppVersionSnapshot>> snapshots;

  /// Creates a new [AppVersion].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AppVersion]. {@macro pulumi_ces_app_version_app_version_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AppVersion(
    String name, {
    AppVersionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:ces/appVersion:AppVersion',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.36.1').merge(options),
        ) {
    app = registerOutput<String>('app');
    appVersionId = registerOutput<String>('appVersionId');
    createTime = registerOutput<String>('createTime');
    creator = registerOutput<String>('creator');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String?>('displayName');
    etag = registerOutput<String>('etag');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    snapshots = registerOutput<List<AppVersionSnapshot>>('snapshots', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AppVersionSnapshot>(guardedValue, (value) => AppVersionSnapshot.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Gets an existing [AppVersion] resource's state with the given [name] and [id].
  static AppVersion get(
    String name,
    pulumi.Input<String> id, {
    AppVersionState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return AppVersion._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  AppVersion._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:ces/appVersion:AppVersion',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    app = registerOutput<String>('app');
    appVersionId = registerOutput<String>('appVersionId');
    createTime = registerOutput<String>('createTime');
    creator = registerOutput<String>('creator');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String?>('displayName');
    etag = registerOutput<String>('etag');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    snapshots = registerOutput<List<AppVersionSnapshot>>('snapshots', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AppVersionSnapshot>(guardedValue, (value) => AppVersionSnapshot.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Creates a typed reference to an existing [AppVersion] resource.
  AppVersion.reference(String urn)
    : super(
        'gcp:ces/appVersion:AppVersion',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    app = registerOutput<String>('app');
    appVersionId = registerOutput<String>('appVersionId');
    createTime = registerOutput<String>('createTime');
    creator = registerOutput<String>('creator');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String?>('displayName');
    etag = registerOutput<String>('etag');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    snapshots = registerOutput<List<AppVersionSnapshot>>('snapshots', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AppVersionSnapshot>(guardedValue, (value) => AppVersionSnapshot.fromMap((value as Map).cast<String, dynamic>())); });
  }
}
