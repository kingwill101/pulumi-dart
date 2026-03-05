import 'package:pulumi/pulumi.dart' as pulumi;
import 'hosting_site_args.dart';
import 'hosting_site_state.dart';

/// A `Site` represents a Firebase Hosting site.
///
/// To get more information about Site, see:
///
/// * [API documentation](https://firebase.google.com/docs/reference/hosting/rest/v1beta1/projects.sites)
/// * How-to Guides
/// * [Official Documentation](https://firebase.google.com/docs/hosting)
///
/// ## Example Usage
///
/// ### Firebasehosting Site Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.firebase.HostingSite("default", {
///     project: "my-project-name",
///     siteId: "site-no-app",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.firebase.HostingSite("default",
///     project="my-project-name",
///     site_id="site-no-app")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.Firebase.HostingSite("default", new()
///     {
///         Project = "my-project-name",
///         SiteId = "site-no-app",
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
/// 		_, err := firebase.NewHostingSite(ctx, "default", &firebase.HostingSiteArgs{
/// 			Project: pulumi.String("my-project-name"),
/// 			SiteId:  pulumi.String("site-no-app"),
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
/// import com.pulumi.gcp.firebase.HostingSite;
/// import com.pulumi.gcp.firebase.HostingSiteArgs;
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
///         var default_ = new HostingSite("default", HostingSiteArgs.builder()
///             .project("my-project-name")
///             .siteId("site-no-app")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:firebase:HostingSite
///     properties:
///       project: my-project-name
///       siteId: site-no-app
/// ```
///
/// ### Firebasehosting Site Full
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.firebase.WebApp("default", {
///     project: "my-project-name",
///     displayName: "Test web app for Firebase Hosting",
/// });
/// const full = new gcp.firebase.HostingSite("full", {
///     project: "my-project-name",
///     siteId: "site-with-app",
///     appId: _default.appId,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.firebase.WebApp("default",
///     project="my-project-name",
///     display_name="Test web app for Firebase Hosting")
/// full = gcp.firebase.HostingSite("full",
///     project="my-project-name",
///     site_id="site-with-app",
///     app_id=default.app_id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.Firebase.WebApp("default", new()
///     {
///         Project = "my-project-name",
///         DisplayName = "Test web app for Firebase Hosting",
///     });
///
///     var full = new Gcp.Firebase.HostingSite("full", new()
///     {
///         Project = "my-project-name",
///         SiteId = "site-with-app",
///         AppId = @default.AppId,
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
/// 		_default, err := firebase.NewWebApp(ctx, "default", &firebase.WebAppArgs{
/// 			Project:     pulumi.String("my-project-name"),
/// 			DisplayName: pulumi.String("Test web app for Firebase Hosting"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = firebase.NewHostingSite(ctx, "full", &firebase.HostingSiteArgs{
/// 			Project: pulumi.String("my-project-name"),
/// 			SiteId:  pulumi.String("site-with-app"),
/// 			AppId:   _default.AppId,
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
/// import com.pulumi.gcp.firebase.WebApp;
/// import com.pulumi.gcp.firebase.WebAppArgs;
/// import com.pulumi.gcp.firebase.HostingSite;
/// import com.pulumi.gcp.firebase.HostingSiteArgs;
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
///             .displayName("Test web app for Firebase Hosting")
///             .build());
///
///         var full = new HostingSite("full", HostingSiteArgs.builder()
///             .project("my-project-name")
///             .siteId("site-with-app")
///             .appId(default_.appId())
///             .build());
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
///       displayName: Test web app for Firebase Hosting
///   full:
///     type: gcp:firebase:HostingSite
///     properties:
///       project: my-project-name
///       siteId: site-with-app
///       appId: ${default.appId}
/// ```
///
/// ### Firebasehosting Site Default
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.firebase.HostingSite("default", {
///     project: "my-project-name",
///     siteId: "my-project-name",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.firebase.HostingSite("default",
///     project="my-project-name",
///     site_id="my-project-name")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.Firebase.HostingSite("default", new()
///     {
///         Project = "my-project-name",
///         SiteId = "my-project-name",
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
/// 		_, err := firebase.NewHostingSite(ctx, "default", &firebase.HostingSiteArgs{
/// 			Project: pulumi.String("my-project-name"),
/// 			SiteId:  pulumi.String("my-project-name"),
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
/// import com.pulumi.gcp.firebase.HostingSite;
/// import com.pulumi.gcp.firebase.HostingSiteArgs;
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
///         var default_ = new HostingSite("default", HostingSiteArgs.builder()
///             .project("my-project-name")
///             .siteId("my-project-name")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:firebase:HostingSite
///     properties:
///       project: my-project-name
///       siteId: my-project-name
/// ```
///
///
/// ## Import
///
/// Site can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/sites/{{site_id}}`
///
/// * `{{project}}/{{site_id}}`
///
/// * `sites/{{site_id}}`
///
/// * `{{site_id}}`
///
/// When using the `pulumi import` command, Site can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:firebase/hostingSite:HostingSite default projects/{{project}}/sites/{{site_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:firebase/hostingSite:HostingSite default {{project}}/{{site_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:firebase/hostingSite:HostingSite default sites/{{site_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:firebase/hostingSite:HostingSite default {{site_id}}
/// ```
class HostingSite extends pulumi.CustomResource {
  /// Optional. The [ID of a Web App](https://firebase.google.com/docs/reference/firebase-management/rest/v1beta1/projects.webApps#WebApp.FIELDS.app_id)
  /// associated with the Hosting site.
  late final pulumi.Output<String?> appId;
  /// The default URL for the site in the form of https://{name}.web.app
  late final pulumi.Output<String> defaultUrl;
  /// Output only. The fully-qualified resource name of the Hosting site, in
  /// the format: projects/PROJECT_IDENTIFIER/sites/SITE_ID PROJECT_IDENTIFIER: the
  /// Firebase project's
  /// [`ProjectNumber`](https://firebase.google.com/docs/reference/firebase-management/rest/v1beta1/projects#FirebaseProject.FIELDS.project_number) ***(recommended)*** or its
  /// [`ProjectId`](https://firebase.google.com/docs/reference/firebase-management/rest/v1beta1/projects#FirebaseProject.FIELDS.project_id).
  /// Learn more about using project identifiers in Google's
  /// [AIP 2510 standard](https://google.aip.dev/cloud/2510).
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// Required. Immutable. A globally unique identifier for the Hosting site. This identifier is
  /// used to construct the Firebase-provisioned subdomains for the site, so it must also be a valid
  /// domain name label.
  late final pulumi.Output<String?> siteId;
  /// The type of Hosting site, either 'DEFAULT_SITE' or `USER_SITE`
  late final pulumi.Output<String> type;

  /// Creates a new [HostingSite].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [HostingSite]. {@macro pulumi_firebase_hosting_site_hosting_site_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  HostingSite(
    String name, {
    HostingSiteArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:firebase/hostingSite:HostingSite',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    appId = registerOutput<String?>('appId');
    defaultUrl = registerOutput<String>('defaultUrl');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    siteId = registerOutput<String?>('siteId');
    type = registerOutput<String>('type');
  }

  /// Gets an existing [HostingSite] resource's state with the given [name] and [id].
  static HostingSite get(
    String name,
    pulumi.Input<String> id, {
    HostingSiteState? state,
  }) {
    return HostingSite._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  HostingSite._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:firebase/hostingSite:HostingSite',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    appId = registerOutput<String?>('appId');
    defaultUrl = registerOutput<String>('defaultUrl');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    siteId = registerOutput<String?>('siteId');
    type = registerOutput<String>('type');
  }
}
