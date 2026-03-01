import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_args.dart';
import 'application_feature_settings.dart';
import 'application_iap.dart';
import 'application_state.dart';
import 'application_url_dispatch_rule.dart';

/// Allows creation and management of an App Engine application.
///
/// > App Engine applications cannot be deleted once they're created; you have to delete the
/// entire project to delete the application. This provider will report the application has been
/// successfully deleted; this is a limitation of the provider, and will go away in the future.
/// This provider is not able to delete App Engine applications.
///
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const myProject = new gcp.organizations.Project("my_project", {
///     name: "My Project",
///     projectId: "your-project-id",
///     orgId: "1234567",
/// });
/// const app = new gcp.appengine.Application("app", {
///     project: myProject.projectId,
///     locationId: "us-central",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_project = gcp.organizations.Project("my_project",
///     name="My Project",
///     project_id="your-project-id",
///     org_id="1234567")
/// app = gcp.appengine.Application("app",
///     project=my_project.project_id,
///     location_id="us-central")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var myProject = new Gcp.Organizations.Project("my_project", new()
///     {
///         Name = "My Project",
///         ProjectId = "your-project-id",
///         OrgId = "1234567",
///     });
///
///     var app = new Gcp.AppEngine.Application("app", new()
///     {
///         Project = myProject.ProjectId,
///         LocationId = "us-central",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/appengine"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		myProject, err := organizations.NewProject(ctx, "my_project", &organizations.ProjectArgs{
/// 			Name:      pulumi.String("My Project"),
/// 			ProjectId: pulumi.String("your-project-id"),
/// 			OrgId:     pulumi.String("1234567"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = appengine.NewApplication(ctx, "app", &appengine.ApplicationArgs{
/// 			Project:    myProject.ProjectId,
/// 			LocationId: pulumi.String("us-central"),
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
/// import com.pulumi.gcp.organizations.Project;
/// import com.pulumi.gcp.organizations.ProjectArgs;
/// import com.pulumi.gcp.appengine.Application;
/// import com.pulumi.gcp.appengine.ApplicationArgs;
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
///         var myProject = new Project("myProject", ProjectArgs.builder()
///             .name("My Project")
///             .projectId("your-project-id")
///             .orgId("1234567")
///             .build());
///
///         var app = new Application("app", ApplicationArgs.builder()
///             .project(myProject.projectId())
///             .locationId("us-central")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   myProject:
///     type: gcp:organizations:Project
///     name: my_project
///     properties:
///       name: My Project
///       projectId: your-project-id
///       orgId: '1234567'
///   app:
///     type: gcp:appengine:Application
///     properties:
///       project: ${myProject.projectId}
///       locationId: us-central
/// ```
///
///
/// ## Import
///
/// Applications can be imported using the ID of the project the application belongs to, e.g.
///
/// * `{{project-id}}`
///
/// When using the `pulumi import` command, Applications can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:appengine/application:Application default {{project-id}}
/// ```
class Application extends pulumi.CustomResource {
  /// Identifier of the app, usually `{PROJECT_ID}`
  late final pulumi.Output<String> appId;
  /// The domain to authenticate users with when using App Engine's User API.
  late final pulumi.Output<String> authDomain;
  /// The GCS bucket code is being stored in for this app.
  late final pulumi.Output<String> codeBucket;
  /// The type of the Cloud Firestore or Cloud Datastore database associated with this application.
  /// Can be `CLOUD_FIRESTORE` or `CLOUD_DATASTORE_COMPATIBILITY` for new
  /// instances.  To support old instances, the value `CLOUD_DATASTORE` is accepted by the provider, but will be rejected by the API.
  /// To create a Cloud Firestore database without creating an App Engine application, use the
  /// `gcp.firestore.Database`
  /// resource instead.
  late final pulumi.Output<String> databaseType;
  /// The GCS bucket content is being stored in for this app.
  late final pulumi.Output<String> defaultBucket;
  /// The default hostname for this app.
  late final pulumi.Output<String> defaultHostname;
  /// A block of optional settings to configure specific App Engine features:
  late final pulumi.Output<ApplicationFeatureSettings> featureSettings;
  /// The GCR domain used for storing managed Docker images for this app.
  late final pulumi.Output<String> gcrDomain;
  /// Settings for enabling Cloud Identity Aware Proxy
  late final pulumi.Output<ApplicationIap> iap;
  /// The [location](https://cloud.google.com/appengine/docs/locations)
  /// to serve the app from.
  late final pulumi.Output<String> locationId;
  /// Unique name of the app, usually `apps/{PROJECT_ID}`
  late final pulumi.Output<String> name;
  /// The project ID to create the application under.
  /// ~>**NOTE:** GCP only accepts project ID, not project number. If you are using number,
  /// you may get a "Permission denied" error.
  late final pulumi.Output<String> project;
  /// The serving status of the app.
  late final pulumi.Output<String> servingStatus;
  /// A list of the SSL policy that will be applied. Each block has a `SSL_POLICY_UNSPECIFIED`, `DEFAULT`, and `MODERN` field.
  late final pulumi.Output<String> sslPolicy;
  /// A list of dispatch rule blocks. Each block has a `domain`, `path`, and `service` field.
  late final pulumi.Output<List<ApplicationUrlDispatchRule>> urlDispatchRules;

  /// Creates a new [Application].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Application]. {@macro pulumi_appengine_application_application_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Application(
    String name, {
    ApplicationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:appengine/application:Application',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.appId = registerOutput<String>('appId');
    this.authDomain = registerOutput<String>('authDomain');
    this.codeBucket = registerOutput<String>('codeBucket');
    this.databaseType = registerOutput<String>('databaseType');
    this.defaultBucket = registerOutput<String>('defaultBucket');
    this.defaultHostname = registerOutput<String>('defaultHostname');
    this.featureSettings = registerOutput<ApplicationFeatureSettings>('featureSettings');
    this.gcrDomain = registerOutput<String>('gcrDomain');
    this.iap = registerOutput<ApplicationIap>('iap');
    this.locationId = registerOutput<String>('locationId');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.servingStatus = registerOutput<String>('servingStatus');
    this.sslPolicy = registerOutput<String>('sslPolicy');
    this.urlDispatchRules = registerOutput<List<ApplicationUrlDispatchRule>>('urlDispatchRules');
  }

  /// Gets an existing [Application] resource's state with the given [name] and [id].
  static Application get(
    String name,
    pulumi.Input<String> id, {
    ApplicationState? state,
  }) {
    return Application._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Application._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:appengine/application:Application',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.appId = registerOutput<String>('appId');
    this.authDomain = registerOutput<String>('authDomain');
    this.codeBucket = registerOutput<String>('codeBucket');
    this.databaseType = registerOutput<String>('databaseType');
    this.defaultBucket = registerOutput<String>('defaultBucket');
    this.defaultHostname = registerOutput<String>('defaultHostname');
    this.featureSettings = registerOutput<ApplicationFeatureSettings>('featureSettings');
    this.gcrDomain = registerOutput<String>('gcrDomain');
    this.iap = registerOutput<ApplicationIap>('iap');
    this.locationId = registerOutput<String>('locationId');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.servingStatus = registerOutput<String>('servingStatus');
    this.sslPolicy = registerOutput<String>('sslPolicy');
    this.urlDispatchRules = registerOutput<List<ApplicationUrlDispatchRule>>('urlDispatchRules');
  }
}
