import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_check_resource_policy_args.dart';
import 'app_check_resource_policy_state.dart';

/// App Check enforcement policy for a specific resource of a Google service supported by App Check. Note that this policy will override the service-level configuration.
///
///
/// To get more information about ResourcePolicy, see:
///
/// * [API documentation](https://firebase.google.com/docs/reference/appcheck/rest/v1/projects.services.resourcePolicies)
/// * How-to Guides
/// * [Official Documentation](https://firebase.google.com/docs/app-check)
///
/// ## Example Usage
///
/// ### Firebase App Check Resource Policy Oauth2 Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const firebaseappcheck = new gcp.projects.Service("firebaseappcheck", {
///     project: "my-project-name",
///     service: "firebaseappcheck.googleapis.com",
/// });
/// const _default = new gcp.firebase.AppCheckResourcePolicy("default", {
///     project: "my-project-name",
///     serviceId: "oauth2.googleapis.com",
///     targetResource: "//oauth2.googleapis.com/projects/my-project-name/oauthClients/example-client-id",
///     enforcementMode: "UNENFORCED",
/// }, {
///     dependsOn: [firebaseappcheck],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// firebaseappcheck = gcp.projects.Service("firebaseappcheck",
///     project="my-project-name",
///     service="firebaseappcheck.googleapis.com")
/// default = gcp.firebase.AppCheckResourcePolicy("default",
///     project="my-project-name",
///     service_id="oauth2.googleapis.com",
///     target_resource="//oauth2.googleapis.com/projects/my-project-name/oauthClients/example-client-id",
///     enforcement_mode="UNENFORCED",
///     opts = pulumi.ResourceOptions(depends_on=[firebaseappcheck]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var firebaseappcheck = new Gcp.Projects.Service("firebaseappcheck", new()
///     {
///         Project = "my-project-name",
///         ServiceName = "firebaseappcheck.googleapis.com",
///     });
///
///     var @default = new Gcp.Firebase.AppCheckResourcePolicy("default", new()
///     {
///         Project = "my-project-name",
///         ServiceId = "oauth2.googleapis.com",
///         TargetResource = "//oauth2.googleapis.com/projects/my-project-name/oauthClients/example-client-id",
///         EnforcementMode = "UNENFORCED",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             firebaseappcheck,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/projects"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		firebaseappcheck, err := projects.NewService(ctx, "firebaseappcheck", &projects.ServiceArgs{
/// 			Project: pulumi.String("my-project-name"),
/// 			Service: pulumi.String("firebaseappcheck.googleapis.com"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = firebase.NewAppCheckResourcePolicy(ctx, "default", &firebase.AppCheckResourcePolicyArgs{
/// 			Project:         pulumi.String("my-project-name"),
/// 			ServiceId:       pulumi.String("oauth2.googleapis.com"),
/// 			TargetResource:  pulumi.String("//oauth2.googleapis.com/projects/my-project-name/oauthClients/example-client-id"),
/// 			EnforcementMode: pulumi.String("UNENFORCED"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			firebaseappcheck,
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
///   }
/// }
///
/// resource "gcp_projects_service" "firebaseappcheck" {
///   project = "my-project-name"
///   service = "firebaseappcheck.googleapis.com"
/// }
/// resource "gcp_firebase_appcheckresourcepolicy" "default" {
///   depends_on       = [gcp_projects_service.firebaseappcheck]
///   project          = "my-project-name"
///   service_id       = "oauth2.googleapis.com"
///   target_resource  = "//oauth2.googleapis.com/projects/my-project-name/oauthClients/example-client-id"
///   enforcement_mode = "UNENFORCED"
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
/// import com.pulumi.gcp.firebase.AppCheckResourcePolicy;
/// import com.pulumi.gcp.firebase.AppCheckResourcePolicyArgs;
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
///         var firebaseappcheck = new Service("firebaseappcheck", ServiceArgs.builder()
///             .project("my-project-name")
///             .service("firebaseappcheck.googleapis.com")
///             .build());
///
///         var default_ = new AppCheckResourcePolicy("default", AppCheckResourcePolicyArgs.builder()
///             .project("my-project-name")
///             .serviceId("oauth2.googleapis.com")
///             .targetResource("//oauth2.googleapis.com/projects/my-project-name/oauthClients/example-client-id")
///             .enforcementMode("UNENFORCED")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(firebaseappcheck)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   firebaseappcheck:
///     type: gcp:projects:Service
///     properties:
///       project: my-project-name
///       service: firebaseappcheck.googleapis.com
///   default:
///     type: gcp:firebase:AppCheckResourcePolicy
///     properties:
///       project: my-project-name
///       serviceId: oauth2.googleapis.com
///       targetResource: //oauth2.googleapis.com/projects/my-project-name/oauthClients/example-client-id
///       enforcementMode: UNENFORCED
///     options:
///       dependsOn:
///         - ${firebaseappcheck}
/// ```
///
///
/// ## Import
///
/// ResourcePolicy can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/services/{{service_id}}/resourcePolicies/{{resource_policy_id}}`
/// * `{{project}}/{{service_id}}/{{resource_policy_id}}`
/// * `{{service_id}}/{{resource_policy_id}}`
///
///
/// When using the `pulumi import` command, ResourcePolicy can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:firebase/appCheckResourcePolicy:AppCheckResourcePolicy default projects/{{project}}/services/{{service_id}}/resourcePolicies/{{resource_policy_id}}
/// $ pulumi import gcp:firebase/appCheckResourcePolicy:AppCheckResourcePolicy default {{project}}/{{service_id}}/{{resource_policy_id}}
/// $ pulumi import gcp:firebase/appCheckResourcePolicy:AppCheckResourcePolicy default {{service_id}}/{{resource_policy_id}}
/// ```
class AppCheckResourcePolicy extends pulumi.CustomResource {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// The App Check enforcement mode for a service supported by App Check. This will override the EnforcementMode setting on the service.
  /// Valid values are:
  /// (Unset)
  /// Firebase App Check is not enforced for the service, nor are App Check metrics collected.
  /// Though the service is not protected by App Check in this mode, other applicable protections,
  /// such as user authorization, are still enforced. An unconfigured service is in this mode by default.
  /// This is equivalent to OFF in the REST API. Deleting the Terraform resource will also switch the
  /// enforcement to OFF for this service.
  /// UNENFORCED
  /// Firebase App Check is not enforced for the service. App Check metrics are collected to help you
  /// decide when to turn on enforcement for the service. Though the service is not protected by App Check
  /// in this mode, other applicable protections, such as user authorization, are still enforced.
  /// ENFORCED
  /// Firebase App Check is enforced for the service. The service will reject any request that attempts to
  /// access your project's resources if it does not have valid App Check token attached, with some exceptions
  /// depending on the service; for example, some services will still allow requests bearing the developer's
  /// privileged service account credentials without an App Check token. App Check metrics continue to be
  /// collected to help you detect issues with your App Check integration and monitor the composition of your
  /// callers. While the service is protected by App Check, other applicable protections, such as user
  /// authorization, continue to be enforced at the same time.
  /// Use caution when choosing to enforce App Check on a Firebase service. If your users have not updated
  /// to an App Check capable version of your app, their apps will no longer be able to use your Firebase
  /// services that are enforcing App Check. App Check metrics can help you decide whether to enforce App
  /// Check on your Firebase services.
  /// If your app has not launched yet, you should enable enforcement immediately, since there are no outdated
  /// clients in use.
  /// Possible values are: `UNENFORCED`, `ENFORCED`.
  late final pulumi.Output<String?> enforcementMode;
  /// This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  late final pulumi.Output<String> etag;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The server-generated UID for the Resource Policy.
  late final pulumi.Output<String> resourcePolicyId;
  /// The identifier of the service to configure a Resource Policy for.
  /// Currently, the following service IDs are supported:
  /// * `oauth2.googleapis.com` (Google Identity for iOS)
  late final pulumi.Output<String> serviceId;
  /// Service specific name of the resource object to which this policy applies, in the format:
  /// * iOS OAuth clients (Google Identity for iOS):
  /// `//oauth2.googleapis.com/projects/{project_number}/oauthClients/{oauthClientId}`
  late final pulumi.Output<String> targetResource;
  /// Output only. Timestamp when this resource policy configuration object was most recently updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [AppCheckResourcePolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AppCheckResourcePolicy]. {@macro pulumi_firebase_app_check_resource_policy_app_check_resource_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AppCheckResourcePolicy(
    String name, {
    AppCheckResourcePolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:firebase/appCheckResourcePolicy:AppCheckResourcePolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.36.1').merge(options),
        ) {
    deletionPolicy = registerOutput<String>('deletionPolicy');
    enforcementMode = registerOutput<String?>('enforcementMode');
    etag = registerOutput<String>('etag');
    project = registerOutput<String>('project');
    resourcePolicyId = registerOutput<String>('resourcePolicyId');
    serviceId = registerOutput<String>('serviceId');
    targetResource = registerOutput<String>('targetResource');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [AppCheckResourcePolicy] resource's state with the given [name] and [id].
  static AppCheckResourcePolicy get(
    String name,
    pulumi.Input<String> id, {
    AppCheckResourcePolicyState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return AppCheckResourcePolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  AppCheckResourcePolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:firebase/appCheckResourcePolicy:AppCheckResourcePolicy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    deletionPolicy = registerOutput<String>('deletionPolicy');
    enforcementMode = registerOutput<String?>('enforcementMode');
    etag = registerOutput<String>('etag');
    project = registerOutput<String>('project');
    resourcePolicyId = registerOutput<String>('resourcePolicyId');
    serviceId = registerOutput<String>('serviceId');
    targetResource = registerOutput<String>('targetResource');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Creates a typed reference to an existing [AppCheckResourcePolicy] resource.
  AppCheckResourcePolicy.reference(String urn)
    : super(
        'gcp:firebase/appCheckResourcePolicy:AppCheckResourcePolicy',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    deletionPolicy = registerOutput<String>('deletionPolicy');
    enforcementMode = registerOutput<String?>('enforcementMode');
    etag = registerOutput<String>('etag');
    project = registerOutput<String>('project');
    resourcePolicyId = registerOutput<String>('resourcePolicyId');
    serviceId = registerOutput<String>('serviceId');
    targetResource = registerOutput<String>('targetResource');
    updateTime = registerOutput<String>('updateTime');
  }
}
