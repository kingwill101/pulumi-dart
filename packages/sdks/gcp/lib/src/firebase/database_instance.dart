import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_instance_args.dart';
import 'database_instance_state.dart';

/// A Firebase Realtime Database instance.
///
/// &gt; **Warning:** This resource is in beta, and should be used with the terraform-provider-google-beta provider.
/// See Provider Versions for more details on beta resources.
///
/// To get more information about Instance, see:
///
/// * [API documentation](https://firebase.google.com/docs/reference/rest/database/database-management/rest)
/// * How-to Guides
/// * [Official Documentation](https://firebase.google.com/products/realtime-database)
///
/// ## Example Usage
///
/// ### Firebase Database Instance Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const basic = new gcp.firebase.DatabaseInstance("basic", {
///     project: "my-project-name",
///     region: "us-central1",
///     instanceId: "active-db",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// basic = gcp.firebase.DatabaseInstance("basic",
///     project="my-project-name",
///     region="us-central1",
///     instance_id="active-db")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var basic = new Gcp.Firebase.DatabaseInstance("basic", new()
///     {
///         Project = "my-project-name",
///         Region = "us-central1",
///         InstanceId = "active-db",
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
/// 		_, err := firebase.NewDatabaseInstance(ctx, "basic", &firebase.DatabaseInstanceArgs{
/// 			Project:    pulumi.String("my-project-name"),
/// 			Region:     pulumi.String("us-central1"),
/// 			InstanceId: pulumi.String("active-db"),
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
/// resource "gcp_firebase_databaseinstance" "basic" {
///   project     = "my-project-name"
///   region      = "us-central1"
///   instance_id = "active-db"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.firebase.DatabaseInstance;
/// import com.pulumi.gcp.firebase.DatabaseInstanceArgs;
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
///         var basic = new DatabaseInstance("basic", DatabaseInstanceArgs.builder()
///             .project("my-project-name")
///             .region("us-central1")
///             .instanceId("active-db")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   basic:
///     type: gcp:firebase:DatabaseInstance
///     properties:
///       project: my-project-name
///       region: us-central1
///       instanceId: active-db
/// ```
///
/// ### Firebase Database Instance Full
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const full = new gcp.firebase.DatabaseInstance("full", {
///     project: "my-project-name",
///     region: "europe-west1",
///     instanceId: "disabled-db",
///     type: "USER_DATABASE",
///     desiredState: "DISABLED",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// full = gcp.firebase.DatabaseInstance("full",
///     project="my-project-name",
///     region="europe-west1",
///     instance_id="disabled-db",
///     type="USER_DATABASE",
///     desired_state="DISABLED")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var full = new Gcp.Firebase.DatabaseInstance("full", new()
///     {
///         Project = "my-project-name",
///         Region = "europe-west1",
///         InstanceId = "disabled-db",
///         Type = "USER_DATABASE",
///         DesiredState = "DISABLED",
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
/// 		_, err := firebase.NewDatabaseInstance(ctx, "full", &firebase.DatabaseInstanceArgs{
/// 			Project:      pulumi.String("my-project-name"),
/// 			Region:       pulumi.String("europe-west1"),
/// 			InstanceId:   pulumi.String("disabled-db"),
/// 			Type:         pulumi.String("USER_DATABASE"),
/// 			DesiredState: pulumi.String("DISABLED"),
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
/// resource "gcp_firebase_databaseinstance" "full" {
///   project       = "my-project-name"
///   region        = "europe-west1"
///   instance_id   = "disabled-db"
///   type          = "USER_DATABASE"
///   desired_state = "DISABLED"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.firebase.DatabaseInstance;
/// import com.pulumi.gcp.firebase.DatabaseInstanceArgs;
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
///         var full = new DatabaseInstance("full", DatabaseInstanceArgs.builder()
///             .project("my-project-name")
///             .region("europe-west1")
///             .instanceId("disabled-db")
///             .type("USER_DATABASE")
///             .desiredState("DISABLED")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   full:
///     type: gcp:firebase:DatabaseInstance
///     properties:
///       project: my-project-name
///       region: europe-west1
///       instanceId: disabled-db
///       type: USER_DATABASE
///       desiredState: DISABLED
/// ```
///
/// ### Firebase Database Instance Default Database
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as time from "@pulumiverse/time";
///
/// const _default = new gcp.organizations.Project("default", {
///     projectId: "rtdb-project",
///     name: "rtdb-project",
///     orgId: "123456789",
///     deletionPolicy: "DELETE",
///     labels: {
///         firebase: "enabled",
///     },
/// });
/// const firebase = new gcp.projects.Service("firebase", {
///     project: _default.projectId,
///     service: "firebase.googleapis.com",
/// });
/// const defaultProject = new gcp.firebase.Project("default", {project: _default.projectId}, {
///     dependsOn: [firebase],
/// });
/// const firebaseDatabase = new gcp.projects.Service("firebase_database", {
///     project: defaultProject.project,
///     service: "firebasedatabase.googleapis.com",
/// });
/// const wait60Seconds = new time.Sleep("wait_60_seconds", {createDuration: "60s"}, {
///     dependsOn: [firebaseDatabase],
/// });
/// const defaultDatabaseInstance = new gcp.firebase.DatabaseInstance("default", {
///     project: defaultProject.project,
///     region: "us-central1",
///     instanceId: "rtdb-project-default-rtdb",
///     type: "DEFAULT_DATABASE",
/// }, {
///     dependsOn: [wait60Seconds],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumiverse_time as time
///
/// default = gcp.organizations.Project("default",
///     project_id="rtdb-project",
///     name="rtdb-project",
///     org_id="123456789",
///     deletion_policy="DELETE",
///     labels={
///         "firebase": "enabled",
///     })
/// firebase = gcp.projects.Service("firebase",
///     project=default.project_id,
///     service="firebase.googleapis.com")
/// default_project = gcp.firebase.Project("default", project=default.project_id,
/// opts = pulumi.ResourceOptions(depends_on=[firebase]))
/// firebase_database = gcp.projects.Service("firebase_database",
///     project=default_project.project,
///     service="firebasedatabase.googleapis.com")
/// wait60_seconds = time.Sleep("wait_60_seconds", create_duration="60s",
/// opts = pulumi.ResourceOptions(depends_on=[firebase_database]))
/// default_database_instance = gcp.firebase.DatabaseInstance("default",
///     project=default_project.project,
///     region="us-central1",
///     instance_id="rtdb-project-default-rtdb",
///     type="DEFAULT_DATABASE",
///     opts = pulumi.ResourceOptions(depends_on=[wait60_seconds]))
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
///     var @default = new Gcp.Organizations.Project("default", new()
///     {
///         ProjectId = "rtdb-project",
///         Name = "rtdb-project",
///         OrgId = "123456789",
///         DeletionPolicy = "DELETE",
///         Labels =
///         {
///             { "firebase", "enabled" },
///         },
///     });
///
///     var firebase = new Gcp.Projects.Service("firebase", new()
///     {
///         Project = @default.ProjectId,
///         ServiceName = "firebase.googleapis.com",
///     });
///
///     var defaultProject = new Gcp.Firebase.Project("default", new()
///     {
///         ProjectID = @default.ProjectId,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             firebase,
///         },
///     });
///
///     var firebaseDatabase = new Gcp.Projects.Service("firebase_database", new()
///     {
///         Project = defaultProject.ProjectID,
///         ServiceName = "firebasedatabase.googleapis.com",
///     });
///
///     var wait60Seconds = new Time.Sleep("wait_60_seconds", new()
///     {
///         CreateDuration = "60s",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             firebaseDatabase,
///         },
///     });
///
///     var defaultDatabaseInstance = new Gcp.Firebase.DatabaseInstance("default", new()
///     {
///         Project = defaultProject.ProjectID,
///         Region = "us-central1",
///         InstanceId = "rtdb-project-default-rtdb",
///         Type = "DEFAULT_DATABASE",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             wait60Seconds,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/projects"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumiverse/pulumi-time/sdk/go/time"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := organizations.NewProject(ctx, "default", &organizations.ProjectArgs{
/// 			ProjectId:      pulumi.String("rtdb-project"),
/// 			Name:           pulumi.String("rtdb-project"),
/// 			OrgId:          pulumi.String("123456789"),
/// 			DeletionPolicy: pulumi.String("DELETE"),
/// 			Labels: pulumi.StringMap{
/// 				"firebase": pulumi.String("enabled"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		firebase2, err := projects.NewService(ctx, "firebase", &projects.ServiceArgs{
/// 			Project: _default.ProjectId,
/// 			Service: pulumi.String("firebase.googleapis.com"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultProject, err := firebase.NewProject(ctx, "default", &firebase.ProjectArgs{
/// 			Project: _default.ProjectId,
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			firebase2,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		firebaseDatabase, err := projects.NewService(ctx, "firebase_database", &projects.ServiceArgs{
/// 			Project: defaultProject.Project,
/// 			Service: pulumi.String("firebasedatabase.googleapis.com"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		wait60Seconds, err := time.NewSleep(ctx, "wait_60_seconds", &time.SleepArgs{
/// 			CreateDuration: pulumi.String("60s"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			firebaseDatabase,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = firebase.NewDatabaseInstance(ctx, "default", &firebase.DatabaseInstanceArgs{
/// 			Project:    defaultProject.Project,
/// 			Region:     pulumi.String("us-central1"),
/// 			InstanceId: pulumi.String("rtdb-project-default-rtdb"),
/// 			Type:       pulumi.String("DEFAULT_DATABASE"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			wait60Seconds,
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
/// resource "gcp_organizations_project" "default" {
///   project_id      = "rtdb-project"
///   name            = "rtdb-project"
///   org_id          = "123456789"
///   deletion_policy = "DELETE"
///   labels = {
///     "firebase" = "enabled"
///   }
/// }
/// resource "gcp_projects_service" "firebase" {
///   project = gcp_organizations_project.default.project_id
///   service = "firebase.googleapis.com"
/// }
/// resource "gcp_firebase_project" "default" {
///   depends_on = [gcp_projects_service.firebase]
///   project    = gcp_organizations_project.default.project_id
/// }
/// resource "gcp_projects_service" "firebase_database" {
///   project = gcp_firebase_project.default.project
///   service = "firebasedatabase.googleapis.com"
/// }
/// resource "time_sleep" "wait_60_seconds" {
///   depends_on      = [gcp_projects_service.firebase_database]
///   create_duration = "60s"
/// }
/// resource "gcp_firebase_databaseinstance" "default" {
///   depends_on  = [time_sleep.wait_60_seconds]
///   project     = gcp_firebase_project.default.project
///   region      = "us-central1"
///   instance_id = "rtdb-project-default-rtdb"
///   type        = "DEFAULT_DATABASE"
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
/// import com.pulumiverse.time.Sleep;
/// import com.pulumiverse.time.SleepArgs;
/// import com.pulumi.gcp.firebase.DatabaseInstance;
/// import com.pulumi.gcp.firebase.DatabaseInstanceArgs;
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
///         var default_ = new com.pulumi.gcp.organizations.Project("default", com.pulumi.gcp.organizations.ProjectArgs.builder()
///             .projectId("rtdb-project")
///             .name("rtdb-project")
///             .orgId("123456789")
///             .deletionPolicy("DELETE")
///             .labels(Map.of("firebase", "enabled"))
///             .build());
///
///         var firebase = new Service("firebase", ServiceArgs.builder()
///             .project(default_.projectId())
///             .service("firebase.googleapis.com")
///             .build());
///
///         var defaultProject = new com.pulumi.gcp.firebase.Project("defaultProject", com.pulumi.gcp.firebase.ProjectArgs.builder()
///             .project(default_.projectId())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(firebase)
///                 .build());
///
///         var firebaseDatabase = new Service("firebaseDatabase", ServiceArgs.builder()
///             .project(defaultProject.project())
///             .service("firebasedatabase.googleapis.com")
///             .build());
///
///         var wait60Seconds = new Sleep("wait60Seconds", SleepArgs.builder()
///             .createDuration("60s")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(firebaseDatabase)
///                 .build());
///
///         var defaultDatabaseInstance = new DatabaseInstance("defaultDatabaseInstance", DatabaseInstanceArgs.builder()
///             .project(defaultProject.project())
///             .region("us-central1")
///             .instanceId("rtdb-project-default-rtdb")
///             .type("DEFAULT_DATABASE")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(wait60Seconds)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:organizations:Project
///     properties:
///       projectId: rtdb-project
///       name: rtdb-project
///       orgId: '123456789'
///       deletionPolicy: DELETE
///       labels:
///         firebase: enabled
///   firebase:
///     type: gcp:projects:Service
///     properties:
///       project: ${default.projectId}
///       service: firebase.googleapis.com
///   defaultProject:
///     type: gcp:firebase:Project
///     name: default
///     properties:
///       project: ${default.projectId}
///     options:
///       dependsOn:
///         - ${firebase}
///   firebaseDatabase:
///     type: gcp:projects:Service
///     name: firebase_database
///     properties:
///       project: ${defaultProject.project}
///       service: firebasedatabase.googleapis.com
///   wait60Seconds:
///     type: time:Sleep
///     name: wait_60_seconds
///     properties:
///       createDuration: 60s
///     options:
///       dependsOn:
///         - ${firebaseDatabase}
///   defaultDatabaseInstance:
///     type: gcp:firebase:DatabaseInstance
///     name: default
///     properties:
///       project: ${defaultProject.project}
///       region: us-central1
///       instanceId: rtdb-project-default-rtdb
///       type: DEFAULT_DATABASE
///     options:
///       dependsOn:
///         - ${wait60Seconds}
/// ```
///
///
/// ## Import
///
/// Instance can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{region}}/instances/{{instance_id}}`
/// * `{{project}}/{{region}}/{{instance_id}}`
/// * `{{region}}/{{instance_id}}`
/// * `{{instance_id}}`
///
///
/// When using the `pulumi import` command, Instance can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:firebase/databaseInstance:DatabaseInstance default projects/{{project}}/locations/{{region}}/instances/{{instance_id}}
/// $ pulumi import gcp:firebase/databaseInstance:DatabaseInstance default {{project}}/{{region}}/{{instance_id}}
/// $ pulumi import gcp:firebase/databaseInstance:DatabaseInstance default {{region}}/{{instance_id}}
/// $ pulumi import gcp:firebase/databaseInstance:DatabaseInstance default {{instance_id}}
/// ```
class DatabaseInstance extends pulumi.CustomResource {
  /// The database URL in the form of https://{instance-id}.firebaseio.com for us-central1 instances
  /// or https://{instance-id}.{region}.firebasedatabase.app in other regions.
  late final pulumi.Output<String> databaseUrl;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// The intended database state. Possible values: ACTIVE, DISABLED.
  late final pulumi.Output<String?> desiredState;
  /// The globally unique identifier of the Firebase Realtime Database instance.
  /// Instance IDs cannot be reused after deletion.
  late final pulumi.Output<String> instanceId;
  /// The fully-qualified resource name of the Firebase Realtime Database, in
  /// the format: projects/PROJECT_NUMBER/locations/REGION_IDENTIFIER/instances/INSTANCE_ID
  /// PROJECT_NUMBER: The Firebase project's [`ProjectNumber`](https://firebase.google.com/docs/reference/firebase-management/rest/v1beta1/projects#FirebaseProject.FIELDS.project_number)
  /// Learn more about using project identifiers in Google's [AIP 2510 standard](https://google.aip.dev/cloud/2510).
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// A reference to the region where the Firebase Realtime database resides.
  /// Check all [available regions](https://firebase.google.com/docs/projects/locations#rtdb-locations)
  late final pulumi.Output<String> region;
  /// The current database state. Set desiredState to :DISABLED to disable the database and :ACTIVE to reenable the database
  late final pulumi.Output<String> state;
  /// The database type.
  /// Each project can create one default Firebase Realtime Database, which cannot be deleted once created.
  /// Creating user Databases is only available for projects on the Blaze plan.
  /// Projects can be upgraded using the Cloud Billing API https://cloud.google.com/billing/reference/rest/v1/projects/updateBillingInfo.
  /// Default value is `USER_DATABASE`.
  /// Possible values are: `DEFAULT_DATABASE`, `USER_DATABASE`.
  late final pulumi.Output<String?> type;

  /// Creates a new [DatabaseInstance].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DatabaseInstance]. {@macro pulumi_firebase_database_instance_database_instance_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DatabaseInstance(
    String name, {
    DatabaseInstanceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:firebase/databaseInstance:DatabaseInstance',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.35.1').merge(options),
        ) {
    databaseUrl = registerOutput<String>('databaseUrl');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    desiredState = registerOutput<String?>('desiredState');
    instanceId = registerOutput<String>('instanceId');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    region = registerOutput<String>('region');
    state = registerOutput<String>('state');
    type = registerOutput<String?>('type');
  }

  /// Gets an existing [DatabaseInstance] resource's state with the given [name] and [id].
  static DatabaseInstance get(
    String name,
    pulumi.Input<String> id, {
    DatabaseInstanceState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return DatabaseInstance._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  DatabaseInstance._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:firebase/databaseInstance:DatabaseInstance',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    databaseUrl = registerOutput<String>('databaseUrl');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    desiredState = registerOutput<String?>('desiredState');
    instanceId = registerOutput<String>('instanceId');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    region = registerOutput<String>('region');
    this.state = registerOutput<String>('state');
    type = registerOutput<String?>('type');
  }

  /// Creates a typed reference to an existing [DatabaseInstance] resource.
  DatabaseInstance.reference(String urn)
    : super(
        'gcp:firebase/databaseInstance:DatabaseInstance',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    databaseUrl = registerOutput<String>('databaseUrl');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    desiredState = registerOutput<String?>('desiredState');
    instanceId = registerOutput<String>('instanceId');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    region = registerOutput<String>('region');
    state = registerOutput<String>('state');
    type = registerOutput<String?>('type');
  }
}
