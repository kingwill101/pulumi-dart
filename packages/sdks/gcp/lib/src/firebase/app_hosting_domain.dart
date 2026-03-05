import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_hosting_domain_args.dart';
import 'app_hosting_domain_serve.dart';
import 'app_hosting_domain_state.dart';

/// A domain name that is associated with a backend.
///
///
///
/// ## Example Usage
///
/// ### Firebase App Hosting Domain Minimal
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const serviceAccount = new gcp.serviceaccount.Account("service_account", {
///     project: "my-project-name",
///     accountId: "sa-id",
///     displayName: "Firebase App Hosting compute service account",
///     createIgnoreAlreadyExists: true,
/// });
/// const exampleAppHostingBackend = new gcp.firebase.AppHostingBackend("example", {
///     project: "my-project-name",
///     location: "us-central1",
///     backendId: "domain-mini",
///     appId: "1:0000000000:web:674cde32020e16fbce9dbd",
///     servingLocality: "GLOBAL_ACCESS",
///     serviceAccount: serviceAccount.email,
/// });
/// const example = new gcp.firebase.AppHostingDomain("example", {
///     project: exampleAppHostingBackend.project,
///     location: exampleAppHostingBackend.location,
///     backend: exampleAppHostingBackend.backendId,
///     domainId: "example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// service_account = gcp.serviceaccount.Account("service_account",
///     project="my-project-name",
///     account_id="sa-id",
///     display_name="Firebase App Hosting compute service account",
///     create_ignore_already_exists=True)
/// example_app_hosting_backend = gcp.firebase.AppHostingBackend("example",
///     project="my-project-name",
///     location="us-central1",
///     backend_id="domain-mini",
///     app_id="1:0000000000:web:674cde32020e16fbce9dbd",
///     serving_locality="GLOBAL_ACCESS",
///     service_account=service_account.email)
/// example = gcp.firebase.AppHostingDomain("example",
///     project=example_app_hosting_backend.project,
///     location=example_app_hosting_backend.location,
///     backend=example_app_hosting_backend.backend_id,
///     domain_id="example.com")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var serviceAccount = new Gcp.ServiceAccount.Account("service_account", new()
///     {
///         Project = "my-project-name",
///         AccountId = "sa-id",
///         DisplayName = "Firebase App Hosting compute service account",
///         CreateIgnoreAlreadyExists = true,
///     });
///
///     var exampleAppHostingBackend = new Gcp.Firebase.AppHostingBackend("example", new()
///     {
///         Project = "my-project-name",
///         Location = "us-central1",
///         BackendId = "domain-mini",
///         AppId = "1:0000000000:web:674cde32020e16fbce9dbd",
///         ServingLocality = "GLOBAL_ACCESS",
///         ServiceAccount = serviceAccount.Email,
///     });
///
///     var example = new Gcp.Firebase.AppHostingDomain("example", new()
///     {
///         Project = exampleAppHostingBackend.Project,
///         Location = exampleAppHostingBackend.Location,
///         Backend = exampleAppHostingBackend.BackendId,
///         DomainId = "example.com",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/firebase"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/serviceaccount"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		serviceAccount, err := serviceaccount.NewAccount(ctx, "service_account", &serviceaccount.AccountArgs{
/// 			Project:                   pulumi.String("my-project-name"),
/// 			AccountId:                 pulumi.String("sa-id"),
/// 			DisplayName:               pulumi.String("Firebase App Hosting compute service account"),
/// 			CreateIgnoreAlreadyExists: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAppHostingBackend, err := firebase.NewAppHostingBackend(ctx, "example", &firebase.AppHostingBackendArgs{
/// 			Project:         pulumi.String("my-project-name"),
/// 			Location:        pulumi.String("us-central1"),
/// 			BackendId:       pulumi.String("domain-mini"),
/// 			AppId:           pulumi.String("1:0000000000:web:674cde32020e16fbce9dbd"),
/// 			ServingLocality: pulumi.String("GLOBAL_ACCESS"),
/// 			ServiceAccount:  serviceAccount.Email,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = firebase.NewAppHostingDomain(ctx, "example", &firebase.AppHostingDomainArgs{
/// 			Project:  exampleAppHostingBackend.Project,
/// 			Location: exampleAppHostingBackend.Location,
/// 			Backend:  exampleAppHostingBackend.BackendId,
/// 			DomainId: pulumi.String("example.com"),
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
/// import com.pulumi.gcp.firebase.AppHostingBackend;
/// import com.pulumi.gcp.firebase.AppHostingBackendArgs;
/// import com.pulumi.gcp.firebase.AppHostingDomain;
/// import com.pulumi.gcp.firebase.AppHostingDomainArgs;
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
///         var serviceAccount = new Account("serviceAccount", AccountArgs.builder()
///             .project("my-project-name")
///             .accountId("sa-id")
///             .displayName("Firebase App Hosting compute service account")
///             .createIgnoreAlreadyExists(true)
///             .build());
///
///         var exampleAppHostingBackend = new AppHostingBackend("exampleAppHostingBackend", AppHostingBackendArgs.builder()
///             .project("my-project-name")
///             .location("us-central1")
///             .backendId("domain-mini")
///             .appId("1:0000000000:web:674cde32020e16fbce9dbd")
///             .servingLocality("GLOBAL_ACCESS")
///             .serviceAccount(serviceAccount.email())
///             .build());
///
///         var example = new AppHostingDomain("example", AppHostingDomainArgs.builder()
///             .project(exampleAppHostingBackend.project())
///             .location(exampleAppHostingBackend.location())
///             .backend(exampleAppHostingBackend.backendId())
///             .domainId("example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: gcp:firebase:AppHostingDomain
///     properties:
///       project: ${exampleAppHostingBackend.project}
///       location: ${exampleAppHostingBackend.location}
///       backend: ${exampleAppHostingBackend.backendId}
///       domainId: example.com
///   exampleAppHostingBackend:
///     type: gcp:firebase:AppHostingBackend
///     name: example
///     properties:
///       project: my-project-name
///       location: us-central1
///       backendId: domain-mini
///       appId: 1:0000000000:web:674cde32020e16fbce9dbd
///       servingLocality: GLOBAL_ACCESS
///       serviceAccount: ${serviceAccount.email}
///   serviceAccount:
///     type: gcp:serviceaccount:Account
///     name: service_account
///     properties:
///       project: my-project-name
///       accountId: sa-id
///       displayName: Firebase App Hosting compute service account
///       createIgnoreAlreadyExists: true
/// ```
///
/// ### Firebase App Hosting Domain Full
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const serviceAccount = new gcp.serviceaccount.Account("service_account", {
///     project: "my-project-name",
///     accountId: "sa-id",
///     displayName: "Firebase App Hosting compute service account",
///     createIgnoreAlreadyExists: true,
/// });
/// const exampleAppHostingBackend = new gcp.firebase.AppHostingBackend("example", {
///     project: "my-project-name",
///     location: "us-central1",
///     backendId: "domain-full",
///     appId: "1:0000000000:web:674cde32020e16fbce9dbd",
///     servingLocality: "GLOBAL_ACCESS",
///     serviceAccount: serviceAccount.email,
/// });
/// const example = new gcp.firebase.AppHostingDomain("example", {
///     project: exampleAppHostingBackend.project,
///     location: exampleAppHostingBackend.location,
///     backend: exampleAppHostingBackend.backendId,
///     domainId: "example.com",
///     serve: {
///         redirect: {
///             uri: "google.com",
///             status: "302",
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// service_account = gcp.serviceaccount.Account("service_account",
///     project="my-project-name",
///     account_id="sa-id",
///     display_name="Firebase App Hosting compute service account",
///     create_ignore_already_exists=True)
/// example_app_hosting_backend = gcp.firebase.AppHostingBackend("example",
///     project="my-project-name",
///     location="us-central1",
///     backend_id="domain-full",
///     app_id="1:0000000000:web:674cde32020e16fbce9dbd",
///     serving_locality="GLOBAL_ACCESS",
///     service_account=service_account.email)
/// example = gcp.firebase.AppHostingDomain("example",
///     project=example_app_hosting_backend.project,
///     location=example_app_hosting_backend.location,
///     backend=example_app_hosting_backend.backend_id,
///     domain_id="example.com",
///     serve={
///         "redirect": {
///             "uri": "google.com",
///             "status": "302",
///         },
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var serviceAccount = new Gcp.ServiceAccount.Account("service_account", new()
///     {
///         Project = "my-project-name",
///         AccountId = "sa-id",
///         DisplayName = "Firebase App Hosting compute service account",
///         CreateIgnoreAlreadyExists = true,
///     });
///
///     var exampleAppHostingBackend = new Gcp.Firebase.AppHostingBackend("example", new()
///     {
///         Project = "my-project-name",
///         Location = "us-central1",
///         BackendId = "domain-full",
///         AppId = "1:0000000000:web:674cde32020e16fbce9dbd",
///         ServingLocality = "GLOBAL_ACCESS",
///         ServiceAccount = serviceAccount.Email,
///     });
///
///     var example = new Gcp.Firebase.AppHostingDomain("example", new()
///     {
///         Project = exampleAppHostingBackend.Project,
///         Location = exampleAppHostingBackend.Location,
///         Backend = exampleAppHostingBackend.BackendId,
///         DomainId = "example.com",
///         Serve = new Gcp.Firebase.Inputs.AppHostingDomainServeArgs
///         {
///             Redirect = new Gcp.Firebase.Inputs.AppHostingDomainServeRedirectArgs
///             {
///                 Uri = "google.com",
///                 Status = "302",
///             },
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/serviceaccount"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		serviceAccount, err := serviceaccount.NewAccount(ctx, "service_account", &serviceaccount.AccountArgs{
/// 			Project:                   pulumi.String("my-project-name"),
/// 			AccountId:                 pulumi.String("sa-id"),
/// 			DisplayName:               pulumi.String("Firebase App Hosting compute service account"),
/// 			CreateIgnoreAlreadyExists: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAppHostingBackend, err := firebase.NewAppHostingBackend(ctx, "example", &firebase.AppHostingBackendArgs{
/// 			Project:         pulumi.String("my-project-name"),
/// 			Location:        pulumi.String("us-central1"),
/// 			BackendId:       pulumi.String("domain-full"),
/// 			AppId:           pulumi.String("1:0000000000:web:674cde32020e16fbce9dbd"),
/// 			ServingLocality: pulumi.String("GLOBAL_ACCESS"),
/// 			ServiceAccount:  serviceAccount.Email,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = firebase.NewAppHostingDomain(ctx, "example", &firebase.AppHostingDomainArgs{
/// 			Project:  exampleAppHostingBackend.Project,
/// 			Location: exampleAppHostingBackend.Location,
/// 			Backend:  exampleAppHostingBackend.BackendId,
/// 			DomainId: pulumi.String("example.com"),
/// 			Serve: &firebase.AppHostingDomainServeArgs{
/// 				Redirect: &firebase.AppHostingDomainServeRedirectArgs{
/// 					Uri:    pulumi.String("google.com"),
/// 					Status: pulumi.String("302"),
/// 				},
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
/// import com.pulumi.gcp.serviceaccount.Account;
/// import com.pulumi.gcp.serviceaccount.AccountArgs;
/// import com.pulumi.gcp.firebase.AppHostingBackend;
/// import com.pulumi.gcp.firebase.AppHostingBackendArgs;
/// import com.pulumi.gcp.firebase.AppHostingDomain;
/// import com.pulumi.gcp.firebase.AppHostingDomainArgs;
/// import com.pulumi.gcp.firebase.inputs.AppHostingDomainServeArgs;
/// import com.pulumi.gcp.firebase.inputs.AppHostingDomainServeRedirectArgs;
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
///         var serviceAccount = new Account("serviceAccount", AccountArgs.builder()
///             .project("my-project-name")
///             .accountId("sa-id")
///             .displayName("Firebase App Hosting compute service account")
///             .createIgnoreAlreadyExists(true)
///             .build());
///
///         var exampleAppHostingBackend = new AppHostingBackend("exampleAppHostingBackend", AppHostingBackendArgs.builder()
///             .project("my-project-name")
///             .location("us-central1")
///             .backendId("domain-full")
///             .appId("1:0000000000:web:674cde32020e16fbce9dbd")
///             .servingLocality("GLOBAL_ACCESS")
///             .serviceAccount(serviceAccount.email())
///             .build());
///
///         var example = new AppHostingDomain("example", AppHostingDomainArgs.builder()
///             .project(exampleAppHostingBackend.project())
///             .location(exampleAppHostingBackend.location())
///             .backend(exampleAppHostingBackend.backendId())
///             .domainId("example.com")
///             .serve(AppHostingDomainServeArgs.builder()
///                 .redirect(AppHostingDomainServeRedirectArgs.builder()
///                     .uri("google.com")
///                     .status("302")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: gcp:firebase:AppHostingDomain
///     properties:
///       project: ${exampleAppHostingBackend.project}
///       location: ${exampleAppHostingBackend.location}
///       backend: ${exampleAppHostingBackend.backendId}
///       domainId: example.com
///       serve:
///         redirect:
///           uri: google.com
///           status: '302'
///   exampleAppHostingBackend:
///     type: gcp:firebase:AppHostingBackend
///     name: example
///     properties:
///       project: my-project-name
///       location: us-central1
///       backendId: domain-full
///       appId: 1:0000000000:web:674cde32020e16fbce9dbd
///       servingLocality: GLOBAL_ACCESS
///       serviceAccount: ${serviceAccount.email}
///   serviceAccount:
///     type: gcp:serviceaccount:Account
///     name: service_account
///     properties:
///       project: my-project-name
///       accountId: sa-id
///       displayName: Firebase App Hosting compute service account
///       createIgnoreAlreadyExists: true
/// ```
///
///
/// ## Import
///
/// Domain can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/backends/{{backend}}/domains/{{domain_id}}`
///
/// * `{{project}}/{{location}}/{{backend}}/{{domain_id}}`
///
/// * `{{location}}/{{backend}}/{{domain_id}}`
///
/// When using the `pulumi import` command, Domain can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:firebase/appHostingDomain:AppHostingDomain default projects/{{project}}/locations/{{location}}/backends/{{backend}}/domains/{{domain_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:firebase/appHostingDomain:AppHostingDomain default {{project}}/{{location}}/{{backend}}/{{domain_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:firebase/appHostingDomain:AppHostingDomain default {{location}}/{{backend}}/{{domain_id}}
/// ```
class AppHostingDomain extends pulumi.CustomResource {
  /// The ID of the Backend that this Domain is associated with
  late final pulumi.Output<String> backend;
  /// Time at which the domain was created.
  late final pulumi.Output<String> createTime;
  /// The status of a custom domain's linkage to the Backend.
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>> customDomainStatuses;
  /// Time at which the domain was deleted.
  late final pulumi.Output<String> deleteTime;
  /// Id of the domain to create.
  /// Must be a valid domain name, such as "foo.com"
  late final pulumi.Output<String> domainId;
  /// Server-computed checksum based on other values; may be sent
  /// on update or delete to ensure operation is done on expected resource.
  late final pulumi.Output<String> etag;
  /// The location of the Backend that this Domain is associated with
  late final pulumi.Output<String> location;
  /// Identifier. The resource name of the domain, e.g.
  /// `projects/{project}/locations/{locationId}/backends/{backendId}/domains/{domainId}`
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// Time at which a soft-deleted domain will be purged, rendering in
  /// permanently deleted.
  late final pulumi.Output<String> purgeTime;
  /// The serving behavior of the domain. If specified, the domain will
  /// serve content other than its Backend's live content.
  /// Structure is documented below.
  late final pulumi.Output<AppHostingDomainServe?> serve;
  /// System-assigned, unique identifier.
  late final pulumi.Output<String> uid;
  /// Time at which the domain was last updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [AppHostingDomain].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AppHostingDomain]. {@macro pulumi_firebase_app_hosting_domain_app_hosting_domain_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AppHostingDomain(
    String name, {
    AppHostingDomainArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:firebase/appHostingDomain:AppHostingDomain',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    backend = registerOutput<String>('backend');
    createTime = registerOutput<String>('createTime');
    customDomainStatuses = registerOutput<List<Map<String, dynamic>>>('customDomainStatuses');
    deleteTime = registerOutput<String>('deleteTime');
    domainId = registerOutput<String>('domainId');
    etag = registerOutput<String>('etag');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    purgeTime = registerOutput<String>('purgeTime');
    serve = registerOutput<AppHostingDomainServe?>('serve', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AppHostingDomainServe.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    uid = registerOutput<String>('uid');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [AppHostingDomain] resource's state with the given [name] and [id].
  static AppHostingDomain get(
    String name,
    pulumi.Input<String> id, {
    AppHostingDomainState? state,
  }) {
    return AppHostingDomain._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AppHostingDomain._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:firebase/appHostingDomain:AppHostingDomain',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    backend = registerOutput<String>('backend');
    createTime = registerOutput<String>('createTime');
    customDomainStatuses = registerOutput<List<Map<String, dynamic>>>('customDomainStatuses');
    deleteTime = registerOutput<String>('deleteTime');
    domainId = registerOutput<String>('domainId');
    etag = registerOutput<String>('etag');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    purgeTime = registerOutput<String>('purgeTime');
    serve = registerOutput<AppHostingDomainServe?>('serve', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AppHostingDomainServe.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    uid = registerOutput<String>('uid');
    updateTime = registerOutput<String>('updateTime');
  }
}
