import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_hosting_traffic_args.dart';
import 'app_hosting_traffic_current.dart';
import 'app_hosting_traffic_rollout_policy.dart';
import 'app_hosting_traffic_state.dart';
import 'app_hosting_traffic_target.dart';

/// Controls traffic configuration for a backend.
///
///
///
/// ## Example Usage
///
/// ### Firebase App Hosting Traffic Target
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// //## Include these blocks only once per project if you are starting from scratch ###
/// const serviceAccount = new gcp.serviceaccount.Account("service_account", {
///     project: "my-project-name",
///     accountId: "firebase-app-hosting-compute",
///     displayName: "Firebase App Hosting compute service account",
///     createIgnoreAlreadyExists: true,
/// });
/// const fah = new gcp.projects.Service("fah", {
///     project: "my-project-name",
///     service: "firebaseapphosting.googleapis.com",
/// });
/// const exampleAppHostingBackend = new gcp.firebase.AppHostingBackend("example", {
///     project: "my-project-name",
///     location: "asia-east1",
///     backendId: "traffic-tg",
///     appId: "1:0000000000:web:674cde32020e16fbce9dbd",
///     servingLocality: "GLOBAL_ACCESS",
///     serviceAccount: serviceAccount.email,
/// }, {
///     dependsOn: [fah],
/// });
/// const exampleAppHostingBuild = new gcp.firebase.AppHostingBuild("example", {
///     project: exampleAppHostingBackend.project,
///     location: exampleAppHostingBackend.location,
///     backend: exampleAppHostingBackend.backendId,
///     buildId: "target-build",
///     source: {
///         container: {
///             image: "us-docker.pkg.dev/cloudrun/container/hello",
///         },
///     },
/// });
/// const example = new gcp.firebase.AppHostingTraffic("example", {
///     project: exampleAppHostingBackend.project,
///     location: exampleAppHostingBackend.location,
///     backend: exampleAppHostingBackend.backendId,
///     target: {
///         splits: [{
///             build: exampleAppHostingBuild.name,
///             percent: 100,
///         }],
///     },
/// });
/// const appHostingSaRunner = new gcp.projects.IAMMember("app_hosting_sa_runner", {
///     project: "my-project-name",
///     role: "roles/firebaseapphosting.computeRunner",
///     member: serviceAccount.member,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// ### Include these blocks only once per project if you are starting from scratch ###
/// service_account = gcp.serviceaccount.Account("service_account",
///     project="my-project-name",
///     account_id="firebase-app-hosting-compute",
///     display_name="Firebase App Hosting compute service account",
///     create_ignore_already_exists=True)
/// fah = gcp.projects.Service("fah",
///     project="my-project-name",
///     service="firebaseapphosting.googleapis.com")
/// example_app_hosting_backend = gcp.firebase.AppHostingBackend("example",
///     project="my-project-name",
///     location="asia-east1",
///     backend_id="traffic-tg",
///     app_id="1:0000000000:web:674cde32020e16fbce9dbd",
///     serving_locality="GLOBAL_ACCESS",
///     service_account=service_account.email,
///     opts = pulumi.ResourceOptions(depends_on=[fah]))
/// example_app_hosting_build = gcp.firebase.AppHostingBuild("example",
///     project=example_app_hosting_backend.project,
///     location=example_app_hosting_backend.location,
///     backend=example_app_hosting_backend.backend_id,
///     build_id="target-build",
///     source={
///         "container": {
///             "image": "us-docker.pkg.dev/cloudrun/container/hello",
///         },
///     })
/// example = gcp.firebase.AppHostingTraffic("example",
///     project=example_app_hosting_backend.project,
///     location=example_app_hosting_backend.location,
///     backend=example_app_hosting_backend.backend_id,
///     target={
///         "splits": [{
///             "build": example_app_hosting_build.name,
///             "percent": 100,
///         }],
///     })
/// app_hosting_sa_runner = gcp.projects.IAMMember("app_hosting_sa_runner",
///     project="my-project-name",
///     role="roles/firebaseapphosting.computeRunner",
///     member=service_account.member)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     //## Include these blocks only once per project if you are starting from scratch ###
///     var serviceAccount = new Gcp.ServiceAccount.Account("service_account", new()
///     {
///         Project = "my-project-name",
///         AccountId = "firebase-app-hosting-compute",
///         DisplayName = "Firebase App Hosting compute service account",
///         CreateIgnoreAlreadyExists = true,
///     });
///
///     var fah = new Gcp.Projects.Service("fah", new()
///     {
///         Project = "my-project-name",
///         ServiceName = "firebaseapphosting.googleapis.com",
///     });
///
///     var exampleAppHostingBackend = new Gcp.Firebase.AppHostingBackend("example", new()
///     {
///         Project = "my-project-name",
///         Location = "asia-east1",
///         BackendId = "traffic-tg",
///         AppId = "1:0000000000:web:674cde32020e16fbce9dbd",
///         ServingLocality = "GLOBAL_ACCESS",
///         ServiceAccount = serviceAccount.Email,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             fah,
///         },
///     });
///
///     var exampleAppHostingBuild = new Gcp.Firebase.AppHostingBuild("example", new()
///     {
///         Project = exampleAppHostingBackend.Project,
///         Location = exampleAppHostingBackend.Location,
///         Backend = exampleAppHostingBackend.BackendId,
///         BuildId = "target-build",
///         Source = new Gcp.Firebase.Inputs.AppHostingBuildSourceArgs
///         {
///             Container = new Gcp.Firebase.Inputs.AppHostingBuildSourceContainerArgs
///             {
///                 Image = "us-docker.pkg.dev/cloudrun/container/hello",
///             },
///         },
///     });
///
///     var example = new Gcp.Firebase.AppHostingTraffic("example", new()
///     {
///         Project = exampleAppHostingBackend.Project,
///         Location = exampleAppHostingBackend.Location,
///         Backend = exampleAppHostingBackend.BackendId,
///         Target = new Gcp.Firebase.Inputs.AppHostingTrafficTargetArgs
///         {
///             Splits = new[]
///             {
///                 new Gcp.Firebase.Inputs.AppHostingTrafficTargetSplitArgs
///                 {
///                     Build = exampleAppHostingBuild.Name,
///                     Percent = 100,
///                 },
///             },
///         },
///     });
///
///     var appHostingSaRunner = new Gcp.Projects.IAMMember("app_hosting_sa_runner", new()
///     {
///         Project = "my-project-name",
///         Role = "roles/firebaseapphosting.computeRunner",
///         Member = serviceAccount.Member,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/serviceaccount"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		// ## Include these blocks only once per project if you are starting from scratch ###
/// 		serviceAccount, err := serviceaccount.NewAccount(ctx, "service_account", &serviceaccount.AccountArgs{
/// 			Project:                   pulumi.String("my-project-name"),
/// 			AccountId:                 pulumi.String("firebase-app-hosting-compute"),
/// 			DisplayName:               pulumi.String("Firebase App Hosting compute service account"),
/// 			CreateIgnoreAlreadyExists: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		fah, err := projects.NewService(ctx, "fah", &projects.ServiceArgs{
/// 			Project: pulumi.String("my-project-name"),
/// 			Service: pulumi.String("firebaseapphosting.googleapis.com"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAppHostingBackend, err := firebase.NewAppHostingBackend(ctx, "example", &firebase.AppHostingBackendArgs{
/// 			Project:         pulumi.String("my-project-name"),
/// 			Location:        pulumi.String("asia-east1"),
/// 			BackendId:       pulumi.String("traffic-tg"),
/// 			AppId:           pulumi.String("1:0000000000:web:674cde32020e16fbce9dbd"),
/// 			ServingLocality: pulumi.String("GLOBAL_ACCESS"),
/// 			ServiceAccount:  serviceAccount.Email,
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			fah,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAppHostingBuild, err := firebase.NewAppHostingBuild(ctx, "example", &firebase.AppHostingBuildArgs{
/// 			Project:  exampleAppHostingBackend.Project,
/// 			Location: exampleAppHostingBackend.Location,
/// 			Backend:  exampleAppHostingBackend.BackendId,
/// 			BuildId:  pulumi.String("target-build"),
/// 			Source: &firebase.AppHostingBuildSourceArgs{
/// 				Container: &firebase.AppHostingBuildSourceContainerArgs{
/// 					Image: pulumi.String("us-docker.pkg.dev/cloudrun/container/hello"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = firebase.NewAppHostingTraffic(ctx, "example", &firebase.AppHostingTrafficArgs{
/// 			Project:  exampleAppHostingBackend.Project,
/// 			Location: exampleAppHostingBackend.Location,
/// 			Backend:  exampleAppHostingBackend.BackendId,
/// 			Target: &firebase.AppHostingTrafficTargetArgs{
/// 				Splits: firebase.AppHostingTrafficTargetSplitArray{
/// 					&firebase.AppHostingTrafficTargetSplitArgs{
/// 						Build:   exampleAppHostingBuild.Name,
/// 						Percent: pulumi.Int(100),
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = projects.NewIAMMember(ctx, "app_hosting_sa_runner", &projects.IAMMemberArgs{
/// 			Project: pulumi.String("my-project-name"),
/// 			Role:    pulumi.String("roles/firebaseapphosting.computeRunner"),
/// 			Member:  serviceAccount.Member,
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
/// import com.pulumi.gcp.serviceaccount.Account;
/// import com.pulumi.gcp.serviceaccount.AccountArgs;
/// import com.pulumi.gcp.projects.Service;
/// import com.pulumi.gcp.projects.ServiceArgs;
/// import com.pulumi.gcp.firebase.AppHostingBackend;
/// import com.pulumi.gcp.firebase.AppHostingBackendArgs;
/// import com.pulumi.gcp.firebase.AppHostingBuild;
/// import com.pulumi.gcp.firebase.AppHostingBuildArgs;
/// import com.pulumi.gcp.firebase.inputs.AppHostingBuildSourceArgs;
/// import com.pulumi.gcp.firebase.inputs.AppHostingBuildSourceContainerArgs;
/// import com.pulumi.gcp.firebase.AppHostingTraffic;
/// import com.pulumi.gcp.firebase.AppHostingTrafficArgs;
/// import com.pulumi.gcp.firebase.inputs.AppHostingTrafficTargetArgs;
/// import com.pulumi.gcp.projects.IAMMember;
/// import com.pulumi.gcp.projects.IAMMemberArgs;
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
///         //## Include these blocks only once per project if you are starting from scratch ###
///         var serviceAccount = new Account("serviceAccount", AccountArgs.builder()
///             .project("my-project-name")
///             .accountId("firebase-app-hosting-compute")
///             .displayName("Firebase App Hosting compute service account")
///             .createIgnoreAlreadyExists(true)
///             .build());
///
///         var fah = new Service("fah", ServiceArgs.builder()
///             .project("my-project-name")
///             .service("firebaseapphosting.googleapis.com")
///             .build());
///
///         var exampleAppHostingBackend = new AppHostingBackend("exampleAppHostingBackend", AppHostingBackendArgs.builder()
///             .project("my-project-name")
///             .location("asia-east1")
///             .backendId("traffic-tg")
///             .appId("1:0000000000:web:674cde32020e16fbce9dbd")
///             .servingLocality("GLOBAL_ACCESS")
///             .serviceAccount(serviceAccount.email())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(fah)
///                 .build());
///
///         var exampleAppHostingBuild = new AppHostingBuild("exampleAppHostingBuild", AppHostingBuildArgs.builder()
///             .project(exampleAppHostingBackend.project())
///             .location(exampleAppHostingBackend.location())
///             .backend(exampleAppHostingBackend.backendId())
///             .buildId("target-build")
///             .source(AppHostingBuildSourceArgs.builder()
///                 .container(AppHostingBuildSourceContainerArgs.builder()
///                     .image("us-docker.pkg.dev/cloudrun/container/hello")
///                     .build())
///                 .build())
///             .build());
///
///         var example = new AppHostingTraffic("example", AppHostingTrafficArgs.builder()
///             .project(exampleAppHostingBackend.project())
///             .location(exampleAppHostingBackend.location())
///             .backend(exampleAppHostingBackend.backendId())
///             .target(AppHostingTrafficTargetArgs.builder()
///                 .splits(AppHostingTrafficTargetSplitArgs.builder()
///                     .build(exampleAppHostingBuild.name())
///                     .percent(100)
///                     .build())
///                 .build())
///             .build());
///
///         var appHostingSaRunner = new IAMMember("appHostingSaRunner", IAMMemberArgs.builder()
///             .project("my-project-name")
///             .role("roles/firebaseapphosting.computeRunner")
///             .member(serviceAccount.member())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: gcp:firebase:AppHostingTraffic
///     properties:
///       project: ${exampleAppHostingBackend.project}
///       location: ${exampleAppHostingBackend.location}
///       backend: ${exampleAppHostingBackend.backendId}
///       target:
///         splits:
///           - build: ${exampleAppHostingBuild.name}
///             percent: 100
///   exampleAppHostingBuild:
///     type: gcp:firebase:AppHostingBuild
///     name: example
///     properties:
///       project: ${exampleAppHostingBackend.project}
///       location: ${exampleAppHostingBackend.location}
///       backend: ${exampleAppHostingBackend.backendId}
///       buildId: target-build
///       source:
///         container:
///           image: us-docker.pkg.dev/cloudrun/container/hello
///   exampleAppHostingBackend:
///     type: gcp:firebase:AppHostingBackend
///     name: example
///     properties:
///       project: my-project-name
///       location: asia-east1
///       backendId: traffic-tg
///       appId: 1:0000000000:web:674cde32020e16fbce9dbd
///       servingLocality: GLOBAL_ACCESS
///       serviceAccount: ${serviceAccount.email}
///     options:
///       dependsOn:
///         - ${fah}
///   ### Include these blocks only once per project if you are starting from scratch ###
///   serviceAccount:
///     type: gcp:serviceaccount:Account
///     name: service_account
///     properties:
///       project: my-project-name
///       accountId: firebase-app-hosting-compute
///       displayName: Firebase App Hosting compute service account
///       createIgnoreAlreadyExists: true
///   appHostingSaRunner:
///     type: gcp:projects:IAMMember
///     name: app_hosting_sa_runner
///     properties:
///       project: my-project-name
///       role: roles/firebaseapphosting.computeRunner
///       member: ${serviceAccount.member}
///   fah:
///     type: gcp:projects:Service
///     properties:
///       project: my-project-name
///       service: firebaseapphosting.googleapis.com
/// ```
///
/// ### Firebase App Hosting Traffic Rollout Policy
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// //## Include these blocks only once per project if you are starting from scratch ###
/// const serviceAccount = new gcp.serviceaccount.Account("service_account", {
///     project: "my-project-name",
///     accountId: "firebase-app-hosting-compute",
///     displayName: "Firebase App Hosting compute service account",
///     createIgnoreAlreadyExists: true,
/// });
/// const fah = new gcp.projects.Service("fah", {
///     project: "my-project-name",
///     service: "firebaseapphosting.googleapis.com",
/// });
/// const exampleAppHostingBackend = new gcp.firebase.AppHostingBackend("example", {
///     project: "my-project-name",
///     location: "asia-east1",
///     backendId: "traffic-rp",
///     appId: "1:0000000000:web:674cde32020e16fbce9dbd",
///     servingLocality: "GLOBAL_ACCESS",
///     serviceAccount: serviceAccount.email,
/// }, {
///     dependsOn: [fah],
/// });
/// const example = new gcp.firebase.AppHostingTraffic("example", {
///     project: exampleAppHostingBackend.project,
///     location: exampleAppHostingBackend.location,
///     backend: exampleAppHostingBackend.backendId,
///     rolloutPolicy: {
///         codebaseBranch: "main",
///     },
/// });
/// const appHostingSaRunner = new gcp.projects.IAMMember("app_hosting_sa_runner", {
///     project: "my-project-name",
///     role: "roles/firebaseapphosting.computeRunner",
///     member: serviceAccount.member,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// ### Include these blocks only once per project if you are starting from scratch ###
/// service_account = gcp.serviceaccount.Account("service_account",
///     project="my-project-name",
///     account_id="firebase-app-hosting-compute",
///     display_name="Firebase App Hosting compute service account",
///     create_ignore_already_exists=True)
/// fah = gcp.projects.Service("fah",
///     project="my-project-name",
///     service="firebaseapphosting.googleapis.com")
/// example_app_hosting_backend = gcp.firebase.AppHostingBackend("example",
///     project="my-project-name",
///     location="asia-east1",
///     backend_id="traffic-rp",
///     app_id="1:0000000000:web:674cde32020e16fbce9dbd",
///     serving_locality="GLOBAL_ACCESS",
///     service_account=service_account.email,
///     opts = pulumi.ResourceOptions(depends_on=[fah]))
/// example = gcp.firebase.AppHostingTraffic("example",
///     project=example_app_hosting_backend.project,
///     location=example_app_hosting_backend.location,
///     backend=example_app_hosting_backend.backend_id,
///     rollout_policy={
///         "codebase_branch": "main",
///     })
/// app_hosting_sa_runner = gcp.projects.IAMMember("app_hosting_sa_runner",
///     project="my-project-name",
///     role="roles/firebaseapphosting.computeRunner",
///     member=service_account.member)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     //## Include these blocks only once per project if you are starting from scratch ###
///     var serviceAccount = new Gcp.ServiceAccount.Account("service_account", new()
///     {
///         Project = "my-project-name",
///         AccountId = "firebase-app-hosting-compute",
///         DisplayName = "Firebase App Hosting compute service account",
///         CreateIgnoreAlreadyExists = true,
///     });
///
///     var fah = new Gcp.Projects.Service("fah", new()
///     {
///         Project = "my-project-name",
///         ServiceName = "firebaseapphosting.googleapis.com",
///     });
///
///     var exampleAppHostingBackend = new Gcp.Firebase.AppHostingBackend("example", new()
///     {
///         Project = "my-project-name",
///         Location = "asia-east1",
///         BackendId = "traffic-rp",
///         AppId = "1:0000000000:web:674cde32020e16fbce9dbd",
///         ServingLocality = "GLOBAL_ACCESS",
///         ServiceAccount = serviceAccount.Email,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             fah,
///         },
///     });
///
///     var example = new Gcp.Firebase.AppHostingTraffic("example", new()
///     {
///         Project = exampleAppHostingBackend.Project,
///         Location = exampleAppHostingBackend.Location,
///         Backend = exampleAppHostingBackend.BackendId,
///         RolloutPolicy = new Gcp.Firebase.Inputs.AppHostingTrafficRolloutPolicyArgs
///         {
///             CodebaseBranch = "main",
///         },
///     });
///
///     var appHostingSaRunner = new Gcp.Projects.IAMMember("app_hosting_sa_runner", new()
///     {
///         Project = "my-project-name",
///         Role = "roles/firebaseapphosting.computeRunner",
///         Member = serviceAccount.Member,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/serviceaccount"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		// ## Include these blocks only once per project if you are starting from scratch ###
/// 		serviceAccount, err := serviceaccount.NewAccount(ctx, "service_account", &serviceaccount.AccountArgs{
/// 			Project:                   pulumi.String("my-project-name"),
/// 			AccountId:                 pulumi.String("firebase-app-hosting-compute"),
/// 			DisplayName:               pulumi.String("Firebase App Hosting compute service account"),
/// 			CreateIgnoreAlreadyExists: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		fah, err := projects.NewService(ctx, "fah", &projects.ServiceArgs{
/// 			Project: pulumi.String("my-project-name"),
/// 			Service: pulumi.String("firebaseapphosting.googleapis.com"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAppHostingBackend, err := firebase.NewAppHostingBackend(ctx, "example", &firebase.AppHostingBackendArgs{
/// 			Project:         pulumi.String("my-project-name"),
/// 			Location:        pulumi.String("asia-east1"),
/// 			BackendId:       pulumi.String("traffic-rp"),
/// 			AppId:           pulumi.String("1:0000000000:web:674cde32020e16fbce9dbd"),
/// 			ServingLocality: pulumi.String("GLOBAL_ACCESS"),
/// 			ServiceAccount:  serviceAccount.Email,
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			fah,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = firebase.NewAppHostingTraffic(ctx, "example", &firebase.AppHostingTrafficArgs{
/// 			Project:  exampleAppHostingBackend.Project,
/// 			Location: exampleAppHostingBackend.Location,
/// 			Backend:  exampleAppHostingBackend.BackendId,
/// 			RolloutPolicy: &firebase.AppHostingTrafficRolloutPolicyArgs{
/// 				CodebaseBranch: pulumi.String("main"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = projects.NewIAMMember(ctx, "app_hosting_sa_runner", &projects.IAMMemberArgs{
/// 			Project: pulumi.String("my-project-name"),
/// 			Role:    pulumi.String("roles/firebaseapphosting.computeRunner"),
/// 			Member:  serviceAccount.Member,
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
/// import com.pulumi.gcp.serviceaccount.Account;
/// import com.pulumi.gcp.serviceaccount.AccountArgs;
/// import com.pulumi.gcp.projects.Service;
/// import com.pulumi.gcp.projects.ServiceArgs;
/// import com.pulumi.gcp.firebase.AppHostingBackend;
/// import com.pulumi.gcp.firebase.AppHostingBackendArgs;
/// import com.pulumi.gcp.firebase.AppHostingTraffic;
/// import com.pulumi.gcp.firebase.AppHostingTrafficArgs;
/// import com.pulumi.gcp.firebase.inputs.AppHostingTrafficRolloutPolicyArgs;
/// import com.pulumi.gcp.projects.IAMMember;
/// import com.pulumi.gcp.projects.IAMMemberArgs;
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
///         //## Include these blocks only once per project if you are starting from scratch ###
///         var serviceAccount = new Account("serviceAccount", AccountArgs.builder()
///             .project("my-project-name")
///             .accountId("firebase-app-hosting-compute")
///             .displayName("Firebase App Hosting compute service account")
///             .createIgnoreAlreadyExists(true)
///             .build());
///
///         var fah = new Service("fah", ServiceArgs.builder()
///             .project("my-project-name")
///             .service("firebaseapphosting.googleapis.com")
///             .build());
///
///         var exampleAppHostingBackend = new AppHostingBackend("exampleAppHostingBackend", AppHostingBackendArgs.builder()
///             .project("my-project-name")
///             .location("asia-east1")
///             .backendId("traffic-rp")
///             .appId("1:0000000000:web:674cde32020e16fbce9dbd")
///             .servingLocality("GLOBAL_ACCESS")
///             .serviceAccount(serviceAccount.email())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(fah)
///                 .build());
///
///         var example = new AppHostingTraffic("example", AppHostingTrafficArgs.builder()
///             .project(exampleAppHostingBackend.project())
///             .location(exampleAppHostingBackend.location())
///             .backend(exampleAppHostingBackend.backendId())
///             .rolloutPolicy(AppHostingTrafficRolloutPolicyArgs.builder()
///                 .codebaseBranch("main")
///                 .build())
///             .build());
///
///         var appHostingSaRunner = new IAMMember("appHostingSaRunner", IAMMemberArgs.builder()
///             .project("my-project-name")
///             .role("roles/firebaseapphosting.computeRunner")
///             .member(serviceAccount.member())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: gcp:firebase:AppHostingTraffic
///     properties:
///       project: ${exampleAppHostingBackend.project}
///       location: ${exampleAppHostingBackend.location}
///       backend: ${exampleAppHostingBackend.backendId}
///       rolloutPolicy:
///         codebaseBranch: main
///   exampleAppHostingBackend:
///     type: gcp:firebase:AppHostingBackend
///     name: example
///     properties:
///       project: my-project-name
///       location: asia-east1
///       backendId: traffic-rp
///       appId: 1:0000000000:web:674cde32020e16fbce9dbd
///       servingLocality: GLOBAL_ACCESS
///       serviceAccount: ${serviceAccount.email}
///     options:
///       dependsOn:
///         - ${fah}
///   ### Include these blocks only once per project if you are starting from scratch ###
///   serviceAccount:
///     type: gcp:serviceaccount:Account
///     name: service_account
///     properties:
///       project: my-project-name
///       accountId: firebase-app-hosting-compute
///       displayName: Firebase App Hosting compute service account
///       createIgnoreAlreadyExists: true
///   appHostingSaRunner:
///     type: gcp:projects:IAMMember
///     name: app_hosting_sa_runner
///     properties:
///       project: my-project-name
///       role: roles/firebaseapphosting.computeRunner
///       member: ${serviceAccount.member}
///   fah:
///     type: gcp:projects:Service
///     properties:
///       project: my-project-name
///       service: firebaseapphosting.googleapis.com
/// ```
///
/// ### Firebase App Hosting Traffic Rollout Policy Disabled
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// //## Include these blocks only once per project if you are starting from scratch ###
/// const serviceAccount = new gcp.serviceaccount.Account("service_account", {
///     project: "my-project-name",
///     accountId: "firebase-app-hosting-compute",
///     displayName: "Firebase App Hosting compute service account",
///     createIgnoreAlreadyExists: true,
/// });
/// const fah = new gcp.projects.Service("fah", {
///     project: "my-project-name",
///     service: "firebaseapphosting.googleapis.com",
/// });
/// const exampleAppHostingBackend = new gcp.firebase.AppHostingBackend("example", {
///     project: "my-project-name",
///     location: "asia-east1",
///     backendId: "traffic-rpd",
///     appId: "1:0000000000:web:674cde32020e16fbce9dbd",
///     servingLocality: "GLOBAL_ACCESS",
///     serviceAccount: serviceAccount.email,
/// }, {
///     dependsOn: [fah],
/// });
/// const example = new gcp.firebase.AppHostingTraffic("example", {
///     project: exampleAppHostingBackend.project,
///     location: exampleAppHostingBackend.location,
///     backend: exampleAppHostingBackend.backendId,
///     rolloutPolicy: {
///         disabled: true,
///         codebaseBranch: "main",
///     },
/// });
/// const appHostingSaRunner = new gcp.projects.IAMMember("app_hosting_sa_runner", {
///     project: "my-project-name",
///     role: "roles/firebaseapphosting.computeRunner",
///     member: serviceAccount.member,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// ### Include these blocks only once per project if you are starting from scratch ###
/// service_account = gcp.serviceaccount.Account("service_account",
///     project="my-project-name",
///     account_id="firebase-app-hosting-compute",
///     display_name="Firebase App Hosting compute service account",
///     create_ignore_already_exists=True)
/// fah = gcp.projects.Service("fah",
///     project="my-project-name",
///     service="firebaseapphosting.googleapis.com")
/// example_app_hosting_backend = gcp.firebase.AppHostingBackend("example",
///     project="my-project-name",
///     location="asia-east1",
///     backend_id="traffic-rpd",
///     app_id="1:0000000000:web:674cde32020e16fbce9dbd",
///     serving_locality="GLOBAL_ACCESS",
///     service_account=service_account.email,
///     opts = pulumi.ResourceOptions(depends_on=[fah]))
/// example = gcp.firebase.AppHostingTraffic("example",
///     project=example_app_hosting_backend.project,
///     location=example_app_hosting_backend.location,
///     backend=example_app_hosting_backend.backend_id,
///     rollout_policy={
///         "disabled": True,
///         "codebase_branch": "main",
///     })
/// app_hosting_sa_runner = gcp.projects.IAMMember("app_hosting_sa_runner",
///     project="my-project-name",
///     role="roles/firebaseapphosting.computeRunner",
///     member=service_account.member)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     //## Include these blocks only once per project if you are starting from scratch ###
///     var serviceAccount = new Gcp.ServiceAccount.Account("service_account", new()
///     {
///         Project = "my-project-name",
///         AccountId = "firebase-app-hosting-compute",
///         DisplayName = "Firebase App Hosting compute service account",
///         CreateIgnoreAlreadyExists = true,
///     });
///
///     var fah = new Gcp.Projects.Service("fah", new()
///     {
///         Project = "my-project-name",
///         ServiceName = "firebaseapphosting.googleapis.com",
///     });
///
///     var exampleAppHostingBackend = new Gcp.Firebase.AppHostingBackend("example", new()
///     {
///         Project = "my-project-name",
///         Location = "asia-east1",
///         BackendId = "traffic-rpd",
///         AppId = "1:0000000000:web:674cde32020e16fbce9dbd",
///         ServingLocality = "GLOBAL_ACCESS",
///         ServiceAccount = serviceAccount.Email,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             fah,
///         },
///     });
///
///     var example = new Gcp.Firebase.AppHostingTraffic("example", new()
///     {
///         Project = exampleAppHostingBackend.Project,
///         Location = exampleAppHostingBackend.Location,
///         Backend = exampleAppHostingBackend.BackendId,
///         RolloutPolicy = new Gcp.Firebase.Inputs.AppHostingTrafficRolloutPolicyArgs
///         {
///             Disabled = true,
///             CodebaseBranch = "main",
///         },
///     });
///
///     var appHostingSaRunner = new Gcp.Projects.IAMMember("app_hosting_sa_runner", new()
///     {
///         Project = "my-project-name",
///         Role = "roles/firebaseapphosting.computeRunner",
///         Member = serviceAccount.Member,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/serviceaccount"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		// ## Include these blocks only once per project if you are starting from scratch ###
/// 		serviceAccount, err := serviceaccount.NewAccount(ctx, "service_account", &serviceaccount.AccountArgs{
/// 			Project:                   pulumi.String("my-project-name"),
/// 			AccountId:                 pulumi.String("firebase-app-hosting-compute"),
/// 			DisplayName:               pulumi.String("Firebase App Hosting compute service account"),
/// 			CreateIgnoreAlreadyExists: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		fah, err := projects.NewService(ctx, "fah", &projects.ServiceArgs{
/// 			Project: pulumi.String("my-project-name"),
/// 			Service: pulumi.String("firebaseapphosting.googleapis.com"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAppHostingBackend, err := firebase.NewAppHostingBackend(ctx, "example", &firebase.AppHostingBackendArgs{
/// 			Project:         pulumi.String("my-project-name"),
/// 			Location:        pulumi.String("asia-east1"),
/// 			BackendId:       pulumi.String("traffic-rpd"),
/// 			AppId:           pulumi.String("1:0000000000:web:674cde32020e16fbce9dbd"),
/// 			ServingLocality: pulumi.String("GLOBAL_ACCESS"),
/// 			ServiceAccount:  serviceAccount.Email,
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			fah,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = firebase.NewAppHostingTraffic(ctx, "example", &firebase.AppHostingTrafficArgs{
/// 			Project:  exampleAppHostingBackend.Project,
/// 			Location: exampleAppHostingBackend.Location,
/// 			Backend:  exampleAppHostingBackend.BackendId,
/// 			RolloutPolicy: &firebase.AppHostingTrafficRolloutPolicyArgs{
/// 				Disabled:       pulumi.Bool(true),
/// 				CodebaseBranch: pulumi.String("main"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = projects.NewIAMMember(ctx, "app_hosting_sa_runner", &projects.IAMMemberArgs{
/// 			Project: pulumi.String("my-project-name"),
/// 			Role:    pulumi.String("roles/firebaseapphosting.computeRunner"),
/// 			Member:  serviceAccount.Member,
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
/// import com.pulumi.gcp.serviceaccount.Account;
/// import com.pulumi.gcp.serviceaccount.AccountArgs;
/// import com.pulumi.gcp.projects.Service;
/// import com.pulumi.gcp.projects.ServiceArgs;
/// import com.pulumi.gcp.firebase.AppHostingBackend;
/// import com.pulumi.gcp.firebase.AppHostingBackendArgs;
/// import com.pulumi.gcp.firebase.AppHostingTraffic;
/// import com.pulumi.gcp.firebase.AppHostingTrafficArgs;
/// import com.pulumi.gcp.firebase.inputs.AppHostingTrafficRolloutPolicyArgs;
/// import com.pulumi.gcp.projects.IAMMember;
/// import com.pulumi.gcp.projects.IAMMemberArgs;
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
///         //## Include these blocks only once per project if you are starting from scratch ###
///         var serviceAccount = new Account("serviceAccount", AccountArgs.builder()
///             .project("my-project-name")
///             .accountId("firebase-app-hosting-compute")
///             .displayName("Firebase App Hosting compute service account")
///             .createIgnoreAlreadyExists(true)
///             .build());
///
///         var fah = new Service("fah", ServiceArgs.builder()
///             .project("my-project-name")
///             .service("firebaseapphosting.googleapis.com")
///             .build());
///
///         var exampleAppHostingBackend = new AppHostingBackend("exampleAppHostingBackend", AppHostingBackendArgs.builder()
///             .project("my-project-name")
///             .location("asia-east1")
///             .backendId("traffic-rpd")
///             .appId("1:0000000000:web:674cde32020e16fbce9dbd")
///             .servingLocality("GLOBAL_ACCESS")
///             .serviceAccount(serviceAccount.email())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(fah)
///                 .build());
///
///         var example = new AppHostingTraffic("example", AppHostingTrafficArgs.builder()
///             .project(exampleAppHostingBackend.project())
///             .location(exampleAppHostingBackend.location())
///             .backend(exampleAppHostingBackend.backendId())
///             .rolloutPolicy(AppHostingTrafficRolloutPolicyArgs.builder()
///                 .disabled(true)
///                 .codebaseBranch("main")
///                 .build())
///             .build());
///
///         var appHostingSaRunner = new IAMMember("appHostingSaRunner", IAMMemberArgs.builder()
///             .project("my-project-name")
///             .role("roles/firebaseapphosting.computeRunner")
///             .member(serviceAccount.member())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: gcp:firebase:AppHostingTraffic
///     properties:
///       project: ${exampleAppHostingBackend.project}
///       location: ${exampleAppHostingBackend.location}
///       backend: ${exampleAppHostingBackend.backendId}
///       rolloutPolicy:
///         disabled: true
///         codebaseBranch: main
///   exampleAppHostingBackend:
///     type: gcp:firebase:AppHostingBackend
///     name: example
///     properties:
///       project: my-project-name
///       location: asia-east1
///       backendId: traffic-rpd
///       appId: 1:0000000000:web:674cde32020e16fbce9dbd
///       servingLocality: GLOBAL_ACCESS
///       serviceAccount: ${serviceAccount.email}
///     options:
///       dependsOn:
///         - ${fah}
///   ### Include these blocks only once per project if you are starting from scratch ###
///   serviceAccount:
///     type: gcp:serviceaccount:Account
///     name: service_account
///     properties:
///       project: my-project-name
///       accountId: firebase-app-hosting-compute
///       displayName: Firebase App Hosting compute service account
///       createIgnoreAlreadyExists: true
///   appHostingSaRunner:
///     type: gcp:projects:IAMMember
///     name: app_hosting_sa_runner
///     properties:
///       project: my-project-name
///       role: roles/firebaseapphosting.computeRunner
///       member: ${serviceAccount.member}
///   fah:
///     type: gcp:projects:Service
///     properties:
///       project: my-project-name
///       service: firebaseapphosting.googleapis.com
/// ```
///
///
/// ## Import
///
/// Traffic can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/backends/{{backend}}/traffic`
///
/// * `{{project}}/{{location}}/{{backend}}`
///
/// * `{{location}}/{{backend}}`
///
/// When using the `pulumi import` command, Traffic can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:firebase/appHostingTraffic:AppHostingTraffic default projects/{{project}}/locations/{{location}}/backends/{{backend}}/traffic
/// ```
///
/// ```sh
/// $ pulumi import gcp:firebase/appHostingTraffic:AppHostingTraffic default {{project}}/{{location}}/{{backend}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:firebase/appHostingTraffic:AppHostingTraffic default {{location}}/{{backend}}
/// ```
class AppHostingTraffic extends pulumi.CustomResource {
  /// Id of the backend that this Traffic config applies to
  late final pulumi.Output<String> backend;
  /// Time at which the backend was created.
  late final pulumi.Output<String> createTime;
  /// Current state of traffic allocation for the backend.
  /// When setting `target`, this field may differ for some time until the desired state is reached.
  /// Structure is documented below.
  late final pulumi.Output<List<AppHostingTrafficCurrent>> currents;
  /// Time at which the backend was deleted.
  late final pulumi.Output<String> deleteTime;
  /// Server-computed checksum based on other values; may be sent
  /// on update or delete to ensure operation is done on expected resource.
  late final pulumi.Output<String> etag;
  /// The location the Backend that this Traffic config applies to
  late final pulumi.Output<String> location;
  /// Identifier. The resource name of the backend traffic config
  /// Format:
  /// `projects/{project}/locations/{locationId}/backends/{backendId}/traffic`.
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The policy for how builds and rollouts are triggered and rolled out.
  /// Structure is documented below.
  late final pulumi.Output<AppHostingTrafficRolloutPolicy?> rolloutPolicy;
  /// Set to manually control the desired traffic for the backend. This will
  /// cause current to eventually match this value. The percentages must add
  /// up to 100.
  /// Structure is documented below.
  late final pulumi.Output<AppHostingTrafficTarget?> target;
  /// System-assigned, unique identifier.
  late final pulumi.Output<String> uid;
  /// Time at which the backend was last updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [AppHostingTraffic].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AppHostingTraffic]. {@macro pulumi_firebase_app_hosting_traffic_app_hosting_traffic_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AppHostingTraffic(
    String name, {
    AppHostingTrafficArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:firebase/appHostingTraffic:AppHostingTraffic',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.backend = registerOutput<String>('backend');
    this.createTime = registerOutput<String>('createTime');
    this.currents = registerOutput<List<AppHostingTrafficCurrent>>('currents');
    this.deleteTime = registerOutput<String>('deleteTime');
    this.etag = registerOutput<String>('etag');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.rolloutPolicy = registerOutput<AppHostingTrafficRolloutPolicy?>('rolloutPolicy');
    this.target = registerOutput<AppHostingTrafficTarget?>('target');
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [AppHostingTraffic] resource's state with the given [name] and [id].
  static AppHostingTraffic get(
    String name,
    pulumi.Input<String> id, {
    AppHostingTrafficState? state,
  }) {
    return AppHostingTraffic._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AppHostingTraffic._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:firebase/appHostingTraffic:AppHostingTraffic',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.backend = registerOutput<String>('backend');
    this.createTime = registerOutput<String>('createTime');
    this.currents = registerOutput<List<AppHostingTrafficCurrent>>('currents');
    this.deleteTime = registerOutput<String>('deleteTime');
    this.etag = registerOutput<String>('etag');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.rolloutPolicy = registerOutput<AppHostingTrafficRolloutPolicy?>('rolloutPolicy');
    this.target = registerOutput<AppHostingTrafficTarget?>('target');
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
