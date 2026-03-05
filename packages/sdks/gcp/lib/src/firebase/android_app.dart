import 'package:pulumi/pulumi.dart' as pulumi;
import 'android_app_args.dart';
import 'android_app_state.dart';

/// A Google Cloud Firebase Android application instance
///
/// To get more information about AndroidApp, see:
///
/// * [API documentation](https://firebase.google.com/docs/reference/firebase-management/rest/v1beta1/projects.androidApps)
/// * How-to Guides
/// * [Official Documentation](https://firebase.google.com/docs/android/setup)
///
/// ## Example Usage
///
/// ### Firebase Android App Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const basic = new gcp.firebase.AndroidApp("basic", {
///     project: "my-project-name",
///     displayName: "Display Name Basic",
///     packageName: "android.package.app",
///     sha1Hashes: ["2145bdf698b8715039bd0e83f2069bed435ac21c"],
///     sha256Hashes: ["2145bdf698b8715039bd0e83f2069bed435ac21ca1b2c3d4e5f6123456789abc"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// basic = gcp.firebase.AndroidApp("basic",
///     project="my-project-name",
///     display_name="Display Name Basic",
///     package_name="android.package.app",
///     sha1_hashes=["2145bdf698b8715039bd0e83f2069bed435ac21c"],
///     sha256_hashes=["2145bdf698b8715039bd0e83f2069bed435ac21ca1b2c3d4e5f6123456789abc"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var basic = new Gcp.Firebase.AndroidApp("basic", new()
///     {
///         Project = "my-project-name",
///         DisplayName = "Display Name Basic",
///         PackageName = "android.package.app",
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
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/firebase"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := firebase.NewAndroidApp(ctx, "basic", &firebase.AndroidAppArgs{
/// 			Project:     pulumi.String("my-project-name"),
/// 			DisplayName: pulumi.String("Display Name Basic"),
/// 			PackageName: pulumi.String("android.package.app"),
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
/// import com.pulumi.gcp.firebase.AndroidApp;
/// import com.pulumi.gcp.firebase.AndroidAppArgs;
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
///         var basic = new AndroidApp("basic", AndroidAppArgs.builder()
///             .project("my-project-name")
///             .displayName("Display Name Basic")
///             .packageName("android.package.app")
///             .sha1Hashes("2145bdf698b8715039bd0e83f2069bed435ac21c")
///             .sha256Hashes("2145bdf698b8715039bd0e83f2069bed435ac21ca1b2c3d4e5f6123456789abc")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   basic:
///     type: gcp:firebase:AndroidApp
///     properties:
///       project: my-project-name
///       displayName: Display Name Basic
///       packageName: android.package.app
///       sha1Hashes:
///         - 2145bdf698b8715039bd0e83f2069bed435ac21c
///       sha256Hashes:
///         - 2145bdf698b8715039bd0e83f2069bed435ac21ca1b2c3d4e5f6123456789abc
/// ```
///
/// ### Firebase Android App Custom Api Key
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const android = new gcp.projects.ApiKey("android", {
///     name: "api-key",
///     displayName: "Display Name",
///     project: "my-project-name",
///     restrictions: {
///         androidKeyRestrictions: {
///             allowedApplications: [{
///                 packageName: "android.package.app",
///                 sha1Fingerprint: "2145bdf698b8715039bd0e83f2069bed435ac21c",
///             }],
///         },
///     },
/// });
/// const _default = new gcp.firebase.AndroidApp("default", {
///     project: "my-project-name",
///     displayName: "Display Name",
///     packageName: "android.package.app",
///     sha1Hashes: ["2145bdf698b8715039bd0e83f2069bed435ac21c"],
///     sha256Hashes: ["2145bdf698b8715039bd0e83f2069bed435ac21ca1b2c3d4e5f6123456789abc"],
///     apiKeyId: android.uid,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// android = gcp.projects.ApiKey("android",
///     name="api-key",
///     display_name="Display Name",
///     project="my-project-name",
///     restrictions={
///         "android_key_restrictions": {
///             "allowed_applications": [{
///                 "package_name": "android.package.app",
///                 "sha1_fingerprint": "2145bdf698b8715039bd0e83f2069bed435ac21c",
///             }],
///         },
///     })
/// default = gcp.firebase.AndroidApp("default",
///     project="my-project-name",
///     display_name="Display Name",
///     package_name="android.package.app",
///     sha1_hashes=["2145bdf698b8715039bd0e83f2069bed435ac21c"],
///     sha256_hashes=["2145bdf698b8715039bd0e83f2069bed435ac21ca1b2c3d4e5f6123456789abc"],
///     api_key_id=android.uid)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var android = new Gcp.Projects.ApiKey("android", new()
///     {
///         Name = "api-key",
///         DisplayName = "Display Name",
///         Project = "my-project-name",
///         Restrictions = new Gcp.Projects.Inputs.ApiKeyRestrictionsArgs
///         {
///             AndroidKeyRestrictions = new Gcp.Projects.Inputs.ApiKeyRestrictionsAndroidKeyRestrictionsArgs
///             {
///                 AllowedApplications = new[]
///                 {
///                     new Gcp.Projects.Inputs.ApiKeyRestrictionsAndroidKeyRestrictionsAllowedApplicationArgs
///                     {
///                         PackageName = "android.package.app",
///                         Sha1Fingerprint = "2145bdf698b8715039bd0e83f2069bed435ac21c",
///                     },
///                 },
///             },
///         },
///     });
///
///     var @default = new Gcp.Firebase.AndroidApp("default", new()
///     {
///         Project = "my-project-name",
///         DisplayName = "Display Name",
///         PackageName = "android.package.app",
///         Sha1Hashes = new[]
///         {
///             "2145bdf698b8715039bd0e83f2069bed435ac21c",
///         },
///         Sha256Hashes = new[]
///         {
///             "2145bdf698b8715039bd0e83f2069bed435ac21ca1b2c3d4e5f6123456789abc",
///         },
///         ApiKeyId = android.Uid,
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
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		android, err := projects.NewApiKey(ctx, "android", &projects.ApiKeyArgs{
/// 			Name:        pulumi.String("api-key"),
/// 			DisplayName: pulumi.String("Display Name"),
/// 			Project:     pulumi.String("my-project-name"),
/// 			Restrictions: &projects.ApiKeyRestrictionsArgs{
/// 				AndroidKeyRestrictions: &projects.ApiKeyRestrictionsAndroidKeyRestrictionsArgs{
/// 					AllowedApplications: projects.ApiKeyRestrictionsAndroidKeyRestrictionsAllowedApplicationArray{
/// 						&projects.ApiKeyRestrictionsAndroidKeyRestrictionsAllowedApplicationArgs{
/// 							PackageName:     pulumi.String("android.package.app"),
/// 							Sha1Fingerprint: pulumi.String("2145bdf698b8715039bd0e83f2069bed435ac21c"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = firebase.NewAndroidApp(ctx, "default", &firebase.AndroidAppArgs{
/// 			Project:     pulumi.String("my-project-name"),
/// 			DisplayName: pulumi.String("Display Name"),
/// 			PackageName: pulumi.String("android.package.app"),
/// 			Sha1Hashes: pulumi.StringArray{
/// 				pulumi.String("2145bdf698b8715039bd0e83f2069bed435ac21c"),
/// 			},
/// 			Sha256Hashes: pulumi.StringArray{
/// 				pulumi.String("2145bdf698b8715039bd0e83f2069bed435ac21ca1b2c3d4e5f6123456789abc"),
/// 			},
/// 			ApiKeyId: android.Uid,
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
/// import com.pulumi.gcp.projects.ApiKey;
/// import com.pulumi.gcp.projects.ApiKeyArgs;
/// import com.pulumi.gcp.projects.inputs.ApiKeyRestrictionsArgs;
/// import com.pulumi.gcp.projects.inputs.ApiKeyRestrictionsAndroidKeyRestrictionsArgs;
/// import com.pulumi.gcp.firebase.AndroidApp;
/// import com.pulumi.gcp.firebase.AndroidAppArgs;
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
///         var android = new ApiKey("android", ApiKeyArgs.builder()
///             .name("api-key")
///             .displayName("Display Name")
///             .project("my-project-name")
///             .restrictions(ApiKeyRestrictionsArgs.builder()
///                 .androidKeyRestrictions(ApiKeyRestrictionsAndroidKeyRestrictionsArgs.builder()
///                     .allowedApplications(ApiKeyRestrictionsAndroidKeyRestrictionsAllowedApplicationArgs.builder()
///                         .packageName("android.package.app")
///                         .sha1Fingerprint("2145bdf698b8715039bd0e83f2069bed435ac21c")
///                         .build())
///                     .build())
///                 .build())
///             .build());
///
///         var default_ = new AndroidApp("default", AndroidAppArgs.builder()
///             .project("my-project-name")
///             .displayName("Display Name")
///             .packageName("android.package.app")
///             .sha1Hashes("2145bdf698b8715039bd0e83f2069bed435ac21c")
///             .sha256Hashes("2145bdf698b8715039bd0e83f2069bed435ac21ca1b2c3d4e5f6123456789abc")
///             .apiKeyId(android.uid())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:firebase:AndroidApp
///     properties:
///       project: my-project-name
///       displayName: Display Name
///       packageName: android.package.app
///       sha1Hashes:
///         - 2145bdf698b8715039bd0e83f2069bed435ac21c
///       sha256Hashes:
///         - 2145bdf698b8715039bd0e83f2069bed435ac21ca1b2c3d4e5f6123456789abc
///       apiKeyId: ${android.uid}
///   android:
///     type: gcp:projects:ApiKey
///     properties:
///       name: api-key
///       displayName: Display Name
///       project: my-project-name
///       restrictions:
///         androidKeyRestrictions:
///           allowedApplications:
///             - packageName: android.package.app
///               sha1Fingerprint: 2145bdf698b8715039bd0e83f2069bed435ac21c
/// ```
///
///
/// ## Import
///
/// AndroidApp can be imported using any of these accepted formats:
///
/// * `{{project}} projects/{{project}}/androidApps/{{app_id}}`
///
/// * `projects/{{project}}/androidApps/{{app_id}}`
///
/// * `{{project}}/{{project}}/{{app_id}}`
///
/// * `androidApps/{{app_id}}`
///
/// * `{{app_id}}`
///
/// When using the `pulumi import` command, AndroidApp can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:firebase/androidApp:AndroidApp default "{{project}} projects/{{project}}/androidApps/{{app_id}}"
/// ```
///
/// ```sh
/// $ pulumi import gcp:firebase/androidApp:AndroidApp default projects/{{project}}/androidApps/{{app_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:firebase/androidApp:AndroidApp default {{project}}/{{project}}/{{app_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:firebase/androidApp:AndroidApp default androidApps/{{app_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:firebase/androidApp:AndroidApp default {{app_id}}
/// ```
class AndroidApp extends pulumi.CustomResource {
  /// The globally unique, Google-assigned identifier (UID) for the Firebase API key associated with the AndroidApp.
  /// If apiKeyId is not set during creation, then Firebase automatically associates an apiKeyId with the AndroidApp.
  /// This auto-associated key may be an existing valid key or, if no valid key exists, a new one will be provisioned.
  late final pulumi.Output<String> apiKeyId;
  /// The globally unique, Firebase-assigned identifier of the AndroidApp.
  /// This identifier should be treated as an opaque token, as the data format is not specified.
  late final pulumi.Output<String> appId;
  late final pulumi.Output<String?> deletionPolicy;
  /// The user-assigned display name of the AndroidApp.
  late final pulumi.Output<String> displayName;
  /// This checksum is computed by the server based on the value of other fields, and it may be sent
  /// with update requests to ensure the client has an up-to-date value before proceeding.
  late final pulumi.Output<String> etag;
  /// The fully qualified resource name of the AndroidApp, for example:
  /// projects/projectId/androidApps/appId
  late final pulumi.Output<String> name;
  /// The canonical package name of the Android app as would appear in the Google Play
  /// Developer Console.
  late final pulumi.Output<String> packageName;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The SHA1 certificate hashes for the AndroidApp.
  late final pulumi.Output<List<String>?> sha1Hashes;
  /// The SHA256 certificate hashes for the AndroidApp.
  late final pulumi.Output<List<String>?> sha256Hashes;

  /// Creates a new [AndroidApp].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AndroidApp]. {@macro pulumi_firebase_android_app_android_app_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AndroidApp(
    String name, {
    AndroidAppArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:firebase/androidApp:AndroidApp',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiKeyId = registerOutput<String>('apiKeyId');
    appId = registerOutput<String>('appId');
    deletionPolicy = registerOutput<String?>('deletionPolicy');
    displayName = registerOutput<String>('displayName');
    etag = registerOutput<String>('etag');
    this.name = registerOutput<String>('name');
    packageName = registerOutput<String>('packageName');
    project = registerOutput<String>('project');
    sha1Hashes = registerOutput<List<String>?>('sha1Hashes');
    sha256Hashes = registerOutput<List<String>?>('sha256Hashes');
  }

  /// Gets an existing [AndroidApp] resource's state with the given [name] and [id].
  static AndroidApp get(
    String name,
    pulumi.Input<String> id, {
    AndroidAppState? state,
  }) {
    return AndroidApp._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AndroidApp._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:firebase/androidApp:AndroidApp',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiKeyId = registerOutput<String>('apiKeyId');
    appId = registerOutput<String>('appId');
    deletionPolicy = registerOutput<String?>('deletionPolicy');
    displayName = registerOutput<String>('displayName');
    etag = registerOutput<String>('etag');
    this.name = registerOutput<String>('name');
    packageName = registerOutput<String>('packageName');
    project = registerOutput<String>('project');
    sha1Hashes = registerOutput<List<String>?>('sha1Hashes');
    sha256Hashes = registerOutput<List<String>?>('sha256Hashes');
  }
}
