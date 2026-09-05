import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_args.dart';
import 'service_state.dart';

/// Allows management of a single API service for a Google Cloud project.
///
/// For a list of services available, visit the [API library page](https://console.cloud.google.com/apis/library)
/// or run `gcloud services list --available`.
///
/// This resource requires the [Service Usage API](https://console.cloud.google.com/apis/library/serviceusage.googleapis.com)
/// to use.
///
/// To get more information about `gcp.projects.Service`, see:
///
/// * [API documentation](https://cloud.google.com/service-usage/docs/reference/rest/v1/services)
/// * How-to Guides
/// * [Enabling and Disabling Services](https://cloud.google.com/service-usage/docs/enable-disable)
/// * Terraform guidance
/// * [User Guide - gcp.projects.Service](https://www.terraform.io/docs/providers/google/guides/google_project_service.html)
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = new gcp.projects.Service("project", {
///     project: "your-project-id",
///     service: "iam.googleapis.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project = gcp.projects.Service("project",
///     project="your-project-id",
///     service="iam.googleapis.com")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var project = new Gcp.Projects.Service("project", new()
///     {
///         Project = "your-project-id",
///         ServiceName = "iam.googleapis.com",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/projects"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := projects.NewService(ctx, "project", &projects.ServiceArgs{
/// 			Project: pulumi.String("your-project-id"),
/// 			Service: pulumi.String("iam.googleapis.com"),
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
/// resource "gcp_projects_service" "project" {
///   project = "your-project-id"
///   service = "iam.googleapis.com"
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
///         var project = new Service("project", ServiceArgs.builder()
///             .project("your-project-id")
///             .service("iam.googleapis.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   project:
///     type: gcp:projects:Service
///     properties:
///       project: your-project-id
///       service: iam.googleapis.com
/// ```
///
///
/// ## Import
///
/// Project services can be imported using the `projectId` and `service`, e.g.
///
/// * `{{project_id}}/{{service}}`
///
///
/// When using the `pulumi import` command, project services can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:projects/service:Service default {{project_id}}/{{service}}
/// ```
///
/// Note that unlike other resources that fail if they already exist,
/// `pulumi up` can be successfully used to verify already enabled services.
/// This means that when importing existing resources into Terraform, you can either
/// import the `gcp.projects.Service` resources or treat them as new
/// infrastructure and run `pulumi up` to add them to state.
class Service extends pulumi.CustomResource {
  /// Beta
  /// If `true`, the usage of the service to be disabled will be checked and an error
  /// will be returned if the service to be disabled has usage in last 30 days.
  late final pulumi.Output<bool?> checkIfServiceHasUsageOnDestroy;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to "DELETE".
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  /// If `disableOnDestroy` is set to `false`, the service will still be enabled when the
  /// Terraform resource is destroyed even if the `deletionPolicy` field is set to "DELETE".
  late final pulumi.Output<String> deletionPolicy;
  /// If `true`, services that are enabled
  /// and which depend on this service should also be disabled when this service is
  /// destroyed. If `false` or unset, an error will be generated if any enabled
  /// services depend on this service when destroying it.
  late final pulumi.Output<bool?> disableDependentServices;
  /// If `true`, disable the service when the
  /// Terraform resource is destroyed. If `false` or unset, the service will be left enabled when
  /// the Terraform resource is destroyed. It should generally only
  /// be `true` in configurations that manage the `gcp.organizations.Project` resource itself.
  late final pulumi.Output<bool?> disableOnDestroy;
  /// The project ID. If not provided, the provider project
  /// is used.
  late final pulumi.Output<String> project;
  /// The service to enable.
  late final pulumi.Output<String> service;

  /// Creates a new [Service].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Service]. {@macro pulumi_projects_service_service_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Service(
    String name, {
    ServiceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:projects/service:Service',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.36.1').merge(options),
        ) {
    checkIfServiceHasUsageOnDestroy = registerOutput<bool?>('checkIfServiceHasUsageOnDestroy');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    disableDependentServices = registerOutput<bool?>('disableDependentServices');
    disableOnDestroy = registerOutput<bool?>('disableOnDestroy');
    project = registerOutput<String>('project');
    service = registerOutput<String>('service');
  }

  /// Gets an existing [Service] resource's state with the given [name] and [id].
  static Service get(
    String name,
    pulumi.Input<String> id, {
    ServiceState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Service._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Service._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:projects/service:Service',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    checkIfServiceHasUsageOnDestroy = registerOutput<bool?>('checkIfServiceHasUsageOnDestroy');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    disableDependentServices = registerOutput<bool?>('disableDependentServices');
    disableOnDestroy = registerOutput<bool?>('disableOnDestroy');
    project = registerOutput<String>('project');
    service = registerOutput<String>('service');
  }

  /// Creates a typed reference to an existing [Service] resource.
  Service.reference(String urn)
    : super(
        'gcp:projects/service:Service',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    checkIfServiceHasUsageOnDestroy = registerOutput<bool?>('checkIfServiceHasUsageOnDestroy');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    disableDependentServices = registerOutput<bool?>('disableDependentServices');
    disableOnDestroy = registerOutput<bool?>('disableOnDestroy');
    project = registerOutput<String>('project');
    service = registerOutput<String>('service');
  }
}
