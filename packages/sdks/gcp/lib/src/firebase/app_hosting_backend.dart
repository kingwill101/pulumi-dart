import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_hosting_backend_args.dart';
import 'app_hosting_backend_codebase.dart';
import 'app_hosting_backend_managed_resource.dart';
import 'app_hosting_backend_state.dart';

/// A Backend is the primary resource of App Hosting.
///
///
///
/// ## Example Usage
///
/// ### Firebase App Hosting Backend Minimal
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
/// const example = new gcp.firebase.AppHostingBackend("example", {
///     project: "my-project-name",
///     location: "us-central1",
///     backendId: "mini",
///     appId: "1:0000000000:web:674cde32020e16fbce9dbd",
///     servingLocality: "GLOBAL_ACCESS",
///     serviceAccount: serviceAccount.email,
/// }, {
///     dependsOn: [fah],
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
/// example = gcp.firebase.AppHostingBackend("example",
///     project="my-project-name",
///     location="us-central1",
///     backend_id="mini",
///     app_id="1:0000000000:web:674cde32020e16fbce9dbd",
///     serving_locality="GLOBAL_ACCESS",
///     service_account=service_account.email,
///     opts = pulumi.ResourceOptions(depends_on=[fah]))
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
///     var example = new Gcp.Firebase.AppHostingBackend("example", new()
///     {
///         Project = "my-project-name",
///         Location = "us-central1",
///         BackendId = "mini",
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
/// 		_, err = firebase.NewAppHostingBackend(ctx, "example", &firebase.AppHostingBackendArgs{
/// 			Project:         pulumi.String("my-project-name"),
/// 			Location:        pulumi.String("us-central1"),
/// 			BackendId:       pulumi.String("mini"),
/// 			AppId:           pulumi.String("1:0000000000:web:674cde32020e16fbce9dbd"),
/// 			ServingLocality: pulumi.String("GLOBAL_ACCESS"),
/// 			ServiceAccount:  serviceAccount.Email,
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			fah,
/// 		}))
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
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_firebase_apphostingbackend" "example" {
///   depends_on       = [gcp_projects_service.fah]
///   project          = "my-project-name"
///   location         = "us-central1"
///   backend_id       = "mini"
///   app_id           = "1:0000000000:web:674cde32020e16fbce9dbd"
///   serving_locality = "GLOBAL_ACCESS"
///   service_account  = gcp_serviceaccount_account.service_account.email
/// }
/// ### Include these blocks only once per project if you are starting from scratch ###
/// resource "gcp_serviceaccount_account" "service_account" {
///   project                      = "my-project-name"
///   account_id                   = "firebase-app-hosting-compute"
///   display_name                 = "Firebase App Hosting compute service account"
///   create_ignore_already_exists = true
/// }
/// resource "gcp_projects_iammember" "app_hosting_sa_runner" {
///   project = "my-project-name"
///   role    = "roles/firebaseapphosting.computeRunner"
///   member  = gcp_serviceaccount_account.service_account.member
/// }
/// resource "gcp_projects_service" "fah" {
///   project = "my-project-name"
///   service = "firebaseapphosting.googleapis.com"
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
/// import com.pulumi.gcp.projects.IAMMember;
/// import com.pulumi.gcp.projects.IAMMemberArgs;
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
///         var example = new AppHostingBackend("example", AppHostingBackendArgs.builder()
///             .project("my-project-name")
///             .location("us-central1")
///             .backendId("mini")
///             .appId("1:0000000000:web:674cde32020e16fbce9dbd")
///             .servingLocality("GLOBAL_ACCESS")
///             .serviceAccount(serviceAccount.email())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(fah)
///                 .build());
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
///     type: gcp:firebase:AppHostingBackend
///     properties:
///       project: my-project-name
///       location: us-central1
///       backendId: mini
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
/// ### Firebase App Hosting Backend Full
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
/// const example = new gcp.firebase.AppHostingBackend("example", {
///     project: "my-project-name",
///     location: "us-central1",
///     backendId: "full",
///     appId: "1:0000000000:web:674cde32020e16fbce9dbd",
///     displayName: "My Backend",
///     servingLocality: "GLOBAL_ACCESS",
///     serviceAccount: serviceAccount.email,
///     environment: "prod",
///     annotations: {
///         key: "value",
///     },
///     labels: {
///         key: "value",
///     },
/// }, {
///     dependsOn: [fah],
/// });
/// const appHostingSaDeveloperconnect = new gcp.projects.IAMMember("app_hosting_sa_developerconnect", {
///     project: "my-project-name",
///     role: "roles/developerconnect.readTokenAccessor",
///     member: serviceAccount.member,
/// });
/// const appHostingSaAdminsdk = new gcp.projects.IAMMember("app_hosting_sa_adminsdk", {
///     project: "my-project-name",
///     role: "roles/firebase.sdkAdminServiceAgent",
///     member: serviceAccount.member,
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
/// example = gcp.firebase.AppHostingBackend("example",
///     project="my-project-name",
///     location="us-central1",
///     backend_id="full",
///     app_id="1:0000000000:web:674cde32020e16fbce9dbd",
///     display_name="My Backend",
///     serving_locality="GLOBAL_ACCESS",
///     service_account=service_account.email,
///     environment="prod",
///     annotations={
///         "key": "value",
///     },
///     labels={
///         "key": "value",
///     },
///     opts = pulumi.ResourceOptions(depends_on=[fah]))
/// app_hosting_sa_developerconnect = gcp.projects.IAMMember("app_hosting_sa_developerconnect",
///     project="my-project-name",
///     role="roles/developerconnect.readTokenAccessor",
///     member=service_account.member)
/// app_hosting_sa_adminsdk = gcp.projects.IAMMember("app_hosting_sa_adminsdk",
///     project="my-project-name",
///     role="roles/firebase.sdkAdminServiceAgent",
///     member=service_account.member)
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
///     var example = new Gcp.Firebase.AppHostingBackend("example", new()
///     {
///         Project = "my-project-name",
///         Location = "us-central1",
///         BackendId = "full",
///         AppId = "1:0000000000:web:674cde32020e16fbce9dbd",
///         DisplayName = "My Backend",
///         ServingLocality = "GLOBAL_ACCESS",
///         ServiceAccount = serviceAccount.Email,
///         Environment = "prod",
///         Annotations =
///         {
///             { "key", "value" },
///         },
///         Labels =
///         {
///             { "key", "value" },
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             fah,
///         },
///     });
///
///     var appHostingSaDeveloperconnect = new Gcp.Projects.IAMMember("app_hosting_sa_developerconnect", new()
///     {
///         Project = "my-project-name",
///         Role = "roles/developerconnect.readTokenAccessor",
///         Member = serviceAccount.Member,
///     });
///
///     var appHostingSaAdminsdk = new Gcp.Projects.IAMMember("app_hosting_sa_adminsdk", new()
///     {
///         Project = "my-project-name",
///         Role = "roles/firebase.sdkAdminServiceAgent",
///         Member = serviceAccount.Member,
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
/// 		_, err = firebase.NewAppHostingBackend(ctx, "example", &firebase.AppHostingBackendArgs{
/// 			Project:         pulumi.String("my-project-name"),
/// 			Location:        pulumi.String("us-central1"),
/// 			BackendId:       pulumi.String("full"),
/// 			AppId:           pulumi.String("1:0000000000:web:674cde32020e16fbce9dbd"),
/// 			DisplayName:     pulumi.String("My Backend"),
/// 			ServingLocality: pulumi.String("GLOBAL_ACCESS"),
/// 			ServiceAccount:  serviceAccount.Email,
/// 			Environment:     pulumi.String("prod"),
/// 			Annotations: pulumi.StringMap{
/// 				"key": pulumi.String("value"),
/// 			},
/// 			Labels: pulumi.StringMap{
/// 				"key": pulumi.String("value"),
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			fah,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = projects.NewIAMMember(ctx, "app_hosting_sa_developerconnect", &projects.IAMMemberArgs{
/// 			Project: pulumi.String("my-project-name"),
/// 			Role:    pulumi.String("roles/developerconnect.readTokenAccessor"),
/// 			Member:  serviceAccount.Member,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = projects.NewIAMMember(ctx, "app_hosting_sa_adminsdk", &projects.IAMMemberArgs{
/// 			Project: pulumi.String("my-project-name"),
/// 			Role:    pulumi.String("roles/firebase.sdkAdminServiceAgent"),
/// 			Member:  serviceAccount.Member,
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
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_firebase_apphostingbackend" "example" {
///   depends_on       = [gcp_projects_service.fah]
///   project          = "my-project-name"
///   location         = "us-central1"
///   backend_id       = "full"
///   app_id           = "1:0000000000:web:674cde32020e16fbce9dbd"
///   display_name     = "My Backend"
///   serving_locality = "GLOBAL_ACCESS"
///   service_account  = gcp_serviceaccount_account.service_account.email
///   environment      = "prod"
///   annotations = {
///     "key" = "value"
///   }
///   labels = {
///     "key" = "value"
///   }
/// }
/// ### Include these blocks only once per project if you are starting from scratch ###
/// resource "gcp_serviceaccount_account" "service_account" {
///   project                      = "my-project-name"
///   account_id                   = "firebase-app-hosting-compute"
///   display_name                 = "Firebase App Hosting compute service account"
///   create_ignore_already_exists = true
/// }
/// resource "gcp_projects_iammember" "app_hosting_sa_developerconnect" {
///   project = "my-project-name"
///   role    = "roles/developerconnect.readTokenAccessor"
///   member  = gcp_serviceaccount_account.service_account.member
/// }
/// resource "gcp_projects_iammember" "app_hosting_sa_adminsdk" {
///   project = "my-project-name"
///   role    = "roles/firebase.sdkAdminServiceAgent"
///   member  = gcp_serviceaccount_account.service_account.member
/// }
/// resource "gcp_projects_iammember" "app_hosting_sa_runner" {
///   project = "my-project-name"
///   role    = "roles/firebaseapphosting.computeRunner"
///   member  = gcp_serviceaccount_account.service_account.member
/// }
/// resource "gcp_projects_service" "fah" {
///   project = "my-project-name"
///   service = "firebaseapphosting.googleapis.com"
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
/// import com.pulumi.gcp.projects.IAMMember;
/// import com.pulumi.gcp.projects.IAMMemberArgs;
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
///         var example = new AppHostingBackend("example", AppHostingBackendArgs.builder()
///             .project("my-project-name")
///             .location("us-central1")
///             .backendId("full")
///             .appId("1:0000000000:web:674cde32020e16fbce9dbd")
///             .displayName("My Backend")
///             .servingLocality("GLOBAL_ACCESS")
///             .serviceAccount(serviceAccount.email())
///             .environment("prod")
///             .annotations(Map.of("key", "value"))
///             .labels(Map.of("key", "value"))
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(fah)
///                 .build());
///
///         var appHostingSaDeveloperconnect = new IAMMember("appHostingSaDeveloperconnect", IAMMemberArgs.builder()
///             .project("my-project-name")
///             .role("roles/developerconnect.readTokenAccessor")
///             .member(serviceAccount.member())
///             .build());
///
///         var appHostingSaAdminsdk = new IAMMember("appHostingSaAdminsdk", IAMMemberArgs.builder()
///             .project("my-project-name")
///             .role("roles/firebase.sdkAdminServiceAgent")
///             .member(serviceAccount.member())
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
///     type: gcp:firebase:AppHostingBackend
///     properties:
///       project: my-project-name
///       location: us-central1
///       backendId: full
///       appId: 1:0000000000:web:674cde32020e16fbce9dbd
///       displayName: My Backend
///       servingLocality: GLOBAL_ACCESS
///       serviceAccount: ${serviceAccount.email}
///       environment: prod
///       annotations:
///         key: value
///       labels:
///         key: value
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
///   appHostingSaDeveloperconnect:
///     type: gcp:projects:IAMMember
///     name: app_hosting_sa_developerconnect
///     properties:
///       project: my-project-name
///       role: roles/developerconnect.readTokenAccessor
///       member: ${serviceAccount.member}
///   appHostingSaAdminsdk:
///     type: gcp:projects:IAMMember
///     name: app_hosting_sa_adminsdk
///     properties:
///       project: my-project-name
///       role: roles/firebase.sdkAdminServiceAgent
///       member: ${serviceAccount.member}
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
/// ### Firebase App Hosting Backend Github
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// //## Include these blocks only once per project if you are starting from scratch ###
/// const devconnect_p4sa = new gcp.projects.ServiceIdentity("devconnect-p4sa", {
///     project: "my-project-name",
///     service: "developerconnect.googleapis.com",
/// });
/// const devconnect_secret = new gcp.projects.IAMMember("devconnect-secret", {
///     project: "my-project-name",
///     role: "roles/secretmanager.admin",
///     member: devconnect_p4sa.member,
/// });
/// //##
/// //## Include these blocks only once per Github account ###
/// const my_connection = new gcp.developerconnect.Connection("my-connection", {
///     project: "my-project-name",
///     location: "us-central1",
///     connectionId: "tf-test-connection-new",
///     githubConfig: {
///         githubApp: "FIREBASE",
///     },
/// }, {
///     dependsOn: [devconnect_secret],
/// });
/// const my_repository = new gcp.developerconnect.GitRepositoryLink("my-repository", {
///     project: "my-project-name",
///     location: "us-central1",
///     gitRepositoryLinkId: "my-repo",
///     parentConnection: my_connection.connectionId,
///     cloneUri: "https://github.com/myuser/myrepo.git",
/// });
/// const example = new gcp.firebase.AppHostingBackend("example", {
///     project: "my-project-name",
///     location: "us-central1",
///     backendId: "my-backend-gh",
///     appId: "1:0000000000:web:674cde32020e16fbce9dbd",
///     displayName: "My Backend",
///     servingLocality: "GLOBAL_ACCESS",
///     serviceAccount: "firebase-app-hosting-compute@my-project-name.iam.gserviceaccount.com",
///     environment: "prod",
///     annotations: {
///         key: "value",
///     },
///     labels: {
///         key: "value",
///     },
///     codebase: {
///         repository: my_repository.name,
///         rootDirectory: "/",
///     },
/// });
/// export const nextSteps = my_connection.installationStates;
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// ### Include these blocks only once per project if you are starting from scratch ###
/// devconnect_p4sa = gcp.projects.ServiceIdentity("devconnect-p4sa",
///     project="my-project-name",
///     service="developerconnect.googleapis.com")
/// devconnect_secret = gcp.projects.IAMMember("devconnect-secret",
///     project="my-project-name",
///     role="roles/secretmanager.admin",
///     member=devconnect_p4sa.member)
/// ###
/// ### Include these blocks only once per Github account ###
/// my_connection = gcp.developerconnect.Connection("my-connection",
///     project="my-project-name",
///     location="us-central1",
///     connection_id="tf-test-connection-new",
///     github_config={
///         "github_app": "FIREBASE",
///     },
///     opts = pulumi.ResourceOptions(depends_on=[devconnect_secret]))
/// my_repository = gcp.developerconnect.GitRepositoryLink("my-repository",
///     project="my-project-name",
///     location="us-central1",
///     git_repository_link_id="my-repo",
///     parent_connection=my_connection.connection_id,
///     clone_uri="https://github.com/myuser/myrepo.git")
/// example = gcp.firebase.AppHostingBackend("example",
///     project="my-project-name",
///     location="us-central1",
///     backend_id="my-backend-gh",
///     app_id="1:0000000000:web:674cde32020e16fbce9dbd",
///     display_name="My Backend",
///     serving_locality="GLOBAL_ACCESS",
///     service_account="firebase-app-hosting-compute@my-project-name.iam.gserviceaccount.com",
///     environment="prod",
///     annotations={
///         "key": "value",
///     },
///     labels={
///         "key": "value",
///     },
///     codebase={
///         "repository": my_repository.name,
///         "root_directory": "/",
///     })
/// pulumi.export("nextSteps", my_connection.installation_states)
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
///     var devconnect_p4sa = new Gcp.Projects.ServiceIdentity("devconnect-p4sa", new()
///     {
///         Project = "my-project-name",
///         Service = "developerconnect.googleapis.com",
///     });
///
///     var devconnect_secret = new Gcp.Projects.IAMMember("devconnect-secret", new()
///     {
///         Project = "my-project-name",
///         Role = "roles/secretmanager.admin",
///         Member = devconnect_p4sa.Member,
///     });
///
///     //##
///     //## Include these blocks only once per Github account ###
///     var my_connection = new Gcp.DeveloperConnect.Connection("my-connection", new()
///     {
///         Project = "my-project-name",
///         Location = "us-central1",
///         ConnectionId = "tf-test-connection-new",
///         GithubConfig = new Gcp.DeveloperConnect.Inputs.ConnectionGithubConfigArgs
///         {
///             GithubApp = "FIREBASE",
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             devconnect_secret,
///         },
///     });
///
///     var my_repository = new Gcp.DeveloperConnect.GitRepositoryLink("my-repository", new()
///     {
///         Project = "my-project-name",
///         Location = "us-central1",
///         GitRepositoryLinkId = "my-repo",
///         ParentConnection = my_connection.ConnectionId,
///         CloneUri = "https://github.com/myuser/myrepo.git",
///     });
///
///     var example = new Gcp.Firebase.AppHostingBackend("example", new()
///     {
///         Project = "my-project-name",
///         Location = "us-central1",
///         BackendId = "my-backend-gh",
///         AppId = "1:0000000000:web:674cde32020e16fbce9dbd",
///         DisplayName = "My Backend",
///         ServingLocality = "GLOBAL_ACCESS",
///         ServiceAccount = "firebase-app-hosting-compute@my-project-name.iam.gserviceaccount.com",
///         Environment = "prod",
///         Annotations =
///         {
///             { "key", "value" },
///         },
///         Labels =
///         {
///             { "key", "value" },
///         },
///         Codebase = new Gcp.Firebase.Inputs.AppHostingBackendCodebaseArgs
///         {
///             Repository = my_repository.Name,
///             RootDirectory = "/",
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["nextSteps"] = my_connection.InstallationStates,
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/developerconnect"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/firebase"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/projects"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		// ## Include these blocks only once per project if you are starting from scratch ###
/// 		devconnect_p4sa, err := projects.NewServiceIdentity(ctx, "devconnect-p4sa", &projects.ServiceIdentityArgs{
/// 			Project: pulumi.String("my-project-name"),
/// 			Service: pulumi.String("developerconnect.googleapis.com"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		devconnect_secret, err := projects.NewIAMMember(ctx, "devconnect-secret", &projects.IAMMemberArgs{
/// 			Project: pulumi.String("my-project-name"),
/// 			Role:    pulumi.String("roles/secretmanager.admin"),
/// 			Member:  devconnect_p4sa.Member,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// ## Include these blocks only once per Github account ###
/// 		my_connection, err := developerconnect.NewConnection(ctx, "my-connection", &developerconnect.ConnectionArgs{
/// 			Project:      pulumi.String("my-project-name"),
/// 			Location:     pulumi.String("us-central1"),
/// 			ConnectionId: pulumi.String("tf-test-connection-new"),
/// 			GithubConfig: &developerconnect.ConnectionGithubConfigArgs{
/// 				GithubApp: pulumi.String("FIREBASE"),
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			devconnect_secret,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		my_repository, err := developerconnect.NewGitRepositoryLink(ctx, "my-repository", &developerconnect.GitRepositoryLinkArgs{
/// 			Project:             pulumi.String("my-project-name"),
/// 			Location:            pulumi.String("us-central1"),
/// 			GitRepositoryLinkId: pulumi.String("my-repo"),
/// 			ParentConnection:    my_connection.ConnectionId,
/// 			CloneUri:            pulumi.String("https://github.com/myuser/myrepo.git"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = firebase.NewAppHostingBackend(ctx, "example", &firebase.AppHostingBackendArgs{
/// 			Project:         pulumi.String("my-project-name"),
/// 			Location:        pulumi.String("us-central1"),
/// 			BackendId:       pulumi.String("my-backend-gh"),
/// 			AppId:           pulumi.String("1:0000000000:web:674cde32020e16fbce9dbd"),
/// 			DisplayName:     pulumi.String("My Backend"),
/// 			ServingLocality: pulumi.String("GLOBAL_ACCESS"),
/// 			ServiceAccount:  pulumi.String("firebase-app-hosting-compute@my-project-name.iam.gserviceaccount.com"),
/// 			Environment:     pulumi.String("prod"),
/// 			Annotations: pulumi.StringMap{
/// 				"key": pulumi.String("value"),
/// 			},
/// 			Labels: pulumi.StringMap{
/// 				"key": pulumi.String("value"),
/// 			},
/// 			Codebase: &firebase.AppHostingBackendCodebaseArgs{
/// 				Repository:    my_repository.Name,
/// 				RootDirectory: pulumi.String("/"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("nextSteps", my_connection.InstallationStates)
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
/// resource "gcp_firebase_apphostingbackend" "example" {
///   project          = "my-project-name"
///   location         = "us-central1"
///   backend_id       = "my-backend-gh"
///   app_id           = "1:0000000000:web:674cde32020e16fbce9dbd"
///   display_name     = "My Backend"
///   serving_locality = "GLOBAL_ACCESS"
///   service_account  = "firebase-app-hosting-compute@my-project-name.iam.gserviceaccount.com"
///   environment      = "prod"
///   annotations = {
///     "key" = "value"
///   }
///   labels = {
///     "key" = "value"
///   }
///   codebase = {
///     repository     = gcp_developerconnect_gitrepositorylink.my-repository.name
///     root_directory = "/"
///   }
/// }
/// resource "gcp_developerconnect_gitrepositorylink" "my-repository" {
///   project                = "my-project-name"
///   location               = "us-central1"
///   git_repository_link_id = "my-repo"
///   parent_connection      = gcp_developerconnect_connection.my-connection.connection_id
///   clone_uri              = "https://github.com/myuser/myrepo.git"
/// }
/// ### Include these blocks only once per project if you are starting from scratch ###
/// resource "gcp_projects_serviceidentity" "devconnect-p4sa" {
///   project = "my-project-name"
///   service = "developerconnect.googleapis.com"
/// }
/// resource "gcp_projects_iammember" "devconnect-secret" {
///   project = "my-project-name"
///   role    = "roles/secretmanager.admin"
///   member  = gcp_projects_serviceidentity.devconnect-p4sa.member
/// }
/// ###
/// ### Include these blocks only once per Github account ###
/// resource "gcp_developerconnect_connection" "my-connection" {
///   depends_on    = [gcp_projects_iammember.devconnect-secret]
///   project       = "my-project-name"
///   location      = "us-central1"
///   connection_id = "tf-test-connection-new"
///   github_config = {
///     github_app = "FIREBASE"
///   }
/// }
/// output "nextSteps" {
///   value = gcp_developerconnect_connection.my-connection.installation_states
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.projects.ServiceIdentity;
/// import com.pulumi.gcp.projects.ServiceIdentityArgs;
/// import com.pulumi.gcp.projects.IAMMember;
/// import com.pulumi.gcp.projects.IAMMemberArgs;
/// import com.pulumi.gcp.developerconnect.Connection;
/// import com.pulumi.gcp.developerconnect.ConnectionArgs;
/// import com.pulumi.gcp.developerconnect.inputs.ConnectionGithubConfigArgs;
/// import com.pulumi.gcp.developerconnect.GitRepositoryLink;
/// import com.pulumi.gcp.developerconnect.GitRepositoryLinkArgs;
/// import com.pulumi.gcp.firebase.AppHostingBackend;
/// import com.pulumi.gcp.firebase.AppHostingBackendArgs;
/// import com.pulumi.gcp.firebase.inputs.AppHostingBackendCodebaseArgs;
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
///         //## Include these blocks only once per project if you are starting from scratch ###
///         var devconnect_p4sa = new ServiceIdentity("devconnect-p4sa", ServiceIdentityArgs.builder()
///             .project("my-project-name")
///             .service("developerconnect.googleapis.com")
///             .build());
///
///         var devconnect_secret = new IAMMember("devconnect-secret", IAMMemberArgs.builder()
///             .project("my-project-name")
///             .role("roles/secretmanager.admin")
///             .member(devconnect_p4sa.member())
///             .build());
///
///         //##
///         //## Include these blocks only once per Github account ###
///         var my_connection = new Connection("my-connection", ConnectionArgs.builder()
///             .project("my-project-name")
///             .location("us-central1")
///             .connectionId("tf-test-connection-new")
///             .githubConfig(ConnectionGithubConfigArgs.builder()
///                 .githubApp("FIREBASE")
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(devconnect_secret)
///                 .build());
///
///         var my_repository = new GitRepositoryLink("my-repository", GitRepositoryLinkArgs.builder()
///             .project("my-project-name")
///             .location("us-central1")
///             .gitRepositoryLinkId("my-repo")
///             .parentConnection(my_connection.connectionId())
///             .cloneUri("https://github.com/myuser/myrepo.git")
///             .build());
///
///         var example = new AppHostingBackend("example", AppHostingBackendArgs.builder()
///             .project("my-project-name")
///             .location("us-central1")
///             .backendId("my-backend-gh")
///             .appId("1:0000000000:web:674cde32020e16fbce9dbd")
///             .displayName("My Backend")
///             .servingLocality("GLOBAL_ACCESS")
///             .serviceAccount("firebase-app-hosting-compute@my-project-name.iam.gserviceaccount.com")
///             .environment("prod")
///             .annotations(Map.of("key", "value"))
///             .labels(Map.of("key", "value"))
///             .codebase(AppHostingBackendCodebaseArgs.builder()
///                 .repository(my_repository.name())
///                 .rootDirectory("/")
///                 .build())
///             .build());
///
///         ctx.export("nextSteps", my_connection.installationStates());
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: gcp:firebase:AppHostingBackend
///     properties:
///       project: my-project-name
///       location: us-central1
///       backendId: my-backend-gh
///       appId: 1:0000000000:web:674cde32020e16fbce9dbd
///       displayName: My Backend
///       servingLocality: GLOBAL_ACCESS
///       serviceAccount: firebase-app-hosting-compute@my-project-name.iam.gserviceaccount.com
///       environment: prod
///       annotations:
///         key: value
///       labels:
///         key: value
///       codebase:
///         repository: ${["my-repository"].name}
///         rootDirectory: /
///   my-repository:
///     type: gcp:developerconnect:GitRepositoryLink
///     properties:
///       project: my-project-name
///       location: us-central1
///       gitRepositoryLinkId: my-repo
///       parentConnection: ${["my-connection"].connectionId}
///       cloneUri: https://github.com/myuser/myrepo.git
///   ### Include these blocks only once per project if you are starting from scratch ###
///   devconnect-p4sa:
///     type: gcp:projects:ServiceIdentity
///     properties:
///       project: my-project-name
///       service: developerconnect.googleapis.com
///   devconnect-secret: ###
///     type: gcp:projects:IAMMember
///     properties:
///       project: my-project-name
///       role: roles/secretmanager.admin
///       member: ${["devconnect-p4sa"].member}
///   ### Include these blocks only once per Github account ###
///   my-connection:
///     type: gcp:developerconnect:Connection
///     properties:
///       project: my-project-name
///       location: us-central1
///       connectionId: tf-test-connection-new
///       githubConfig:
///         githubApp: FIREBASE
///     options:
///       dependsOn:
///         - ${["devconnect-secret"]}
/// outputs:
///   nextSteps: ${["my-connection"].installationStates}
/// ```
///
///
/// ## Import
///
/// Backend can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/backends/{{backend_id}}`
/// * `{{project}}/{{location}}/{{backend_id}}`
/// * `{{location}}/{{backend_id}}`
///
///
/// When using the `pulumi import` command, Backend can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:firebase/appHostingBackend:AppHostingBackend default projects/{{project}}/locations/{{location}}/backends/{{backend_id}}
/// $ pulumi import gcp:firebase/appHostingBackend:AppHostingBackend default {{project}}/{{location}}/{{backend_id}}
/// $ pulumi import gcp:firebase/appHostingBackend:AppHostingBackend default {{location}}/{{backend_id}}
/// ```
class AppHostingBackend extends pulumi.CustomResource {
  /// Unstructured key value map that may be set by external tools to
  /// store and arbitrary metadata. They are not queryable and should be
  /// preserved when modifying objects.
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effectiveAnnotations` for all of the annotations present on the resource.
  late final pulumi.Output<Map<String, String>?> annotations;
  /// The [ID of a Web
  /// App](https://firebase.google.com/docs/reference/firebase-management/rest/v1beta1/projects.webApps#WebApp.FIELDS.app_id)
  /// associated with the backend.
  late final pulumi.Output<String> appId;
  /// Id of the backend. Also used as the service ID for Cloud Run, and as part
  /// of the default domain name.
  late final pulumi.Output<String> backendId;
  /// The connection to an external source repository to watch for event-driven
  /// updates to the backend.
  /// Structure is documented below.
  late final pulumi.Output<AppHostingBackendCodebase?> codebase;
  /// Time at which the backend was created.
  late final pulumi.Output<String> createTime;
  /// Time at which the backend was deleted.
  late final pulumi.Output<String> deleteTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// Human-readable name. 63 character limit.
  late final pulumi.Output<String?> displayName;
  /// All of annotations (key/value pairs) present on the resource in GCP, including the annotations configured through Terraform, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveAnnotations;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// The environment name of the backend, used to load environment variables
  /// from environment specific configuration.
  late final pulumi.Output<String?> environment;
  /// Server-computed checksum based on other values; may be sent
  /// on update or delete to ensure operation is done on expected resource.
  late final pulumi.Output<String> etag;
  /// Unstructured key value map that can be used to organize and categorize
  /// objects.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// The canonical IDs of a Google Cloud location such as "us-east1".
  late final pulumi.Output<String> location;
  /// A list of the resources managed by this backend.
  /// Structure is documented below.
  late final pulumi.Output<List<AppHostingBackendManagedResource>> managedResources;
  /// Identifier. The resource name of the backend.
  /// Format:
  /// `projects/{project}/locations/{locationId}/backends/{backendId}`.
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// The name of the service account used for Cloud Build and Cloud Run.
  /// Should have the role roles/firebaseapphosting.computeRunner
  /// or equivalent permissions.
  late final pulumi.Output<String> serviceAccount;
  /// Immutable. Specifies how App Hosting will serve the content for this backend. It will
  /// either be contained to a single region (REGIONAL_STRICT) or allowed to use
  /// App Hosting's global-replicated serving infrastructure (GLOBAL_ACCESS).
  /// Possible values are: `REGIONAL_STRICT`, `GLOBAL_ACCESS`.
  late final pulumi.Output<String> servingLocality;
  /// System-assigned, unique identifier.
  late final pulumi.Output<String> uid;
  /// Time at which the backend was last updated.
  late final pulumi.Output<String> updateTime;
  /// The primary URI to communicate with the backend.
  late final pulumi.Output<String> uri;

  /// Creates a new [AppHostingBackend].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AppHostingBackend]. {@macro pulumi_firebase_app_hosting_backend_app_hosting_backend_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AppHostingBackend(
    String name, {
    AppHostingBackendArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:firebase/appHostingBackend:AppHostingBackend',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.36.1').merge(options),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        ) {
    annotations = registerOutput<Map<String, String>?>('annotations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    appId = registerOutput<String>('appId');
    backendId = registerOutput<String>('backendId');
    codebase = registerOutput<AppHostingBackendCodebase?>('codebase', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AppHostingBackendCodebase.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createTime = registerOutput<String>('createTime');
    deleteTime = registerOutput<String>('deleteTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String?>('displayName');
    effectiveAnnotations = registerOutput<Map<String, String>>('effectiveAnnotations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    environment = registerOutput<String?>('environment');
    etag = registerOutput<String>('etag');
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String>('location');
    managedResources = registerOutput<List<AppHostingBackendManagedResource>>('managedResources', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AppHostingBackendManagedResource>(guardedValue, (value) => AppHostingBackendManagedResource.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    serviceAccount = registerOutput<String>('serviceAccount');
    servingLocality = registerOutput<String>('servingLocality');
    uid = registerOutput<String>('uid');
    updateTime = registerOutput<String>('updateTime');
    uri = registerOutput<String>('uri');
  }

  /// Gets an existing [AppHostingBackend] resource's state with the given [name] and [id].
  static AppHostingBackend get(
    String name,
    pulumi.Input<String> id, {
    AppHostingBackendState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return AppHostingBackend._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  AppHostingBackend._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:firebase/appHostingBackend:AppHostingBackend',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    annotations = registerOutput<Map<String, String>?>('annotations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    appId = registerOutput<String>('appId');
    backendId = registerOutput<String>('backendId');
    codebase = registerOutput<AppHostingBackendCodebase?>('codebase', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AppHostingBackendCodebase.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createTime = registerOutput<String>('createTime');
    deleteTime = registerOutput<String>('deleteTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String?>('displayName');
    effectiveAnnotations = registerOutput<Map<String, String>>('effectiveAnnotations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    environment = registerOutput<String?>('environment');
    etag = registerOutput<String>('etag');
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String>('location');
    managedResources = registerOutput<List<AppHostingBackendManagedResource>>('managedResources', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AppHostingBackendManagedResource>(guardedValue, (value) => AppHostingBackendManagedResource.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    serviceAccount = registerOutput<String>('serviceAccount');
    servingLocality = registerOutput<String>('servingLocality');
    uid = registerOutput<String>('uid');
    updateTime = registerOutput<String>('updateTime');
    uri = registerOutput<String>('uri');
  }

  /// Creates a typed reference to an existing [AppHostingBackend] resource.
  AppHostingBackend.reference(String urn)
    : super(
        'gcp:firebase/appHostingBackend:AppHostingBackend',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        isResourceReference: true,
      ) {
    annotations = registerOutput<Map<String, String>?>('annotations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    appId = registerOutput<String>('appId');
    backendId = registerOutput<String>('backendId');
    codebase = registerOutput<AppHostingBackendCodebase?>('codebase', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AppHostingBackendCodebase.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createTime = registerOutput<String>('createTime');
    deleteTime = registerOutput<String>('deleteTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String?>('displayName');
    effectiveAnnotations = registerOutput<Map<String, String>>('effectiveAnnotations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    environment = registerOutput<String?>('environment');
    etag = registerOutput<String>('etag');
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String>('location');
    managedResources = registerOutput<List<AppHostingBackendManagedResource>>('managedResources', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AppHostingBackendManagedResource>(guardedValue, (value) => AppHostingBackendManagedResource.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    serviceAccount = registerOutput<String>('serviceAccount');
    servingLocality = registerOutput<String>('servingLocality');
    uid = registerOutput<String>('uid');
    updateTime = registerOutput<String>('updateTime');
    uri = registerOutput<String>('uri');
  }
}
