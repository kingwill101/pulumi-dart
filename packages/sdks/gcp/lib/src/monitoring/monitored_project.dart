import 'package:pulumi/pulumi.dart' as pulumi;
import 'monitored_project_args.dart';
import 'monitored_project_state.dart';

/// A [project being monitored](https://cloud.google.com/monitoring/settings/multiple-projects#create-multi) by a Metrics Scope.
///
///
/// To get more information about MonitoredProject, see:
///
/// * [API documentation](https://cloud.google.com/monitoring/api/ref_v3/rest/v1/locations.global.metricsScopes.projects)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/monitoring/settings/manage-api)
///
/// ## Example Usage
///
/// ### Monitoring Monitored Project Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const basic = new gcp.organizations.Project("basic", {
///     projectId: "m-id",
///     name: "m-id-display",
///     orgId: "123456789",
///     deletionPolicy: "DELETE",
/// });
/// const primary = new gcp.monitoring.MonitoredProject("primary", {
///     metricsScope: "my-project-name",
///     name: basic.projectId,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// basic = gcp.organizations.Project("basic",
///     project_id="m-id",
///     name="m-id-display",
///     org_id="123456789",
///     deletion_policy="DELETE")
/// primary = gcp.monitoring.MonitoredProject("primary",
///     metrics_scope="my-project-name",
///     name=basic.project_id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var basic = new Gcp.Organizations.Project("basic", new()
///     {
///         ProjectId = "m-id",
///         Name = "m-id-display",
///         OrgId = "123456789",
///         DeletionPolicy = "DELETE",
///     });
///
///     var primary = new Gcp.Monitoring.MonitoredProject("primary", new()
///     {
///         MetricsScope = "my-project-name",
///         Name = basic.ProjectId,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/monitoring"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		basic, err := organizations.NewProject(ctx, "basic", &organizations.ProjectArgs{
/// 			ProjectId:      pulumi.String("m-id"),
/// 			Name:           pulumi.String("m-id-display"),
/// 			OrgId:          pulumi.String("123456789"),
/// 			DeletionPolicy: pulumi.String("DELETE"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = monitoring.NewMonitoredProject(ctx, "primary", &monitoring.MonitoredProjectArgs{
/// 			MetricsScope: pulumi.String("my-project-name"),
/// 			Name:         basic.ProjectId,
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
/// resource "gcp_monitoring_monitoredproject" "primary" {
///   metrics_scope = "my-project-name"
///   name          = gcp_organizations_project.basic.project_id
/// }
/// resource "gcp_organizations_project" "basic" {
///   project_id      = "m-id"
///   name            = "m-id-display"
///   org_id          = "123456789"
///   deletion_policy = "DELETE"
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
/// import com.pulumi.gcp.monitoring.MonitoredProject;
/// import com.pulumi.gcp.monitoring.MonitoredProjectArgs;
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
///         var basic = new Project("basic", ProjectArgs.builder()
///             .projectId("m-id")
///             .name("m-id-display")
///             .orgId("123456789")
///             .deletionPolicy("DELETE")
///             .build());
///
///         var primary = new MonitoredProject("primary", MonitoredProjectArgs.builder()
///             .metricsScope("my-project-name")
///             .name(basic.projectId())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   primary:
///     type: gcp:monitoring:MonitoredProject
///     properties:
///       metricsScope: my-project-name
///       name: ${basic.projectId}
///   basic:
///     type: gcp:organizations:Project
///     properties:
///       projectId: m-id
///       name: m-id-display
///       orgId: '123456789'
///       deletionPolicy: DELETE
/// ```
///
///
/// ## Import
///
/// MonitoredProject can be imported using any of these accepted formats:
///
/// * `v1/locations/global/metricsScopes/{{name}}`
/// * `{{name}}`
///
///
/// When using the `pulumi import` command, MonitoredProject can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:monitoring/monitoredProject:MonitoredProject default v1/locations/global/metricsScopes/{{name}}
/// $ pulumi import gcp:monitoring/monitoredProject:MonitoredProject default {{name}}
/// ```
class MonitoredProject extends pulumi.CustomResource {
  /// Output only. The time when this `MonitoredProject` was created.
  late final pulumi.Output<String> createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// Required. The resource name of the existing Metrics Scope that will monitor this project. Example: locations/global/metricsScopes/{SCOPING_PROJECT_ID_OR_NUMBER}
  late final pulumi.Output<String> metricsScope;
  /// Immutable. The resource name of the `MonitoredProject`. On input, the resource name includes the scoping project ID and monitored project ID. On output, it contains the equivalent project numbers. Example: `locations/global/metricsScopes/{SCOPING_PROJECT_ID_OR_NUMBER}/projects/{MONITORED_PROJECT_ID_OR_NUMBER}`
  late final pulumi.Output<String> name;

  /// Creates a new [MonitoredProject].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MonitoredProject]. {@macro pulumi_monitoring_monitored_project_monitored_project_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MonitoredProject(
    String name, {
    MonitoredProjectArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:monitoring/monitoredProject:MonitoredProject',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.35.1').merge(options),
        ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    metricsScope = registerOutput<String>('metricsScope');
    this.name = registerOutput<String>('name');
  }

  /// Gets an existing [MonitoredProject] resource's state with the given [name] and [id].
  static MonitoredProject get(
    String name,
    pulumi.Input<String> id, {
    MonitoredProjectState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return MonitoredProject._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  MonitoredProject._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:monitoring/monitoredProject:MonitoredProject',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    metricsScope = registerOutput<String>('metricsScope');
    this.name = registerOutput<String>('name');
  }

  /// Creates a typed reference to an existing [MonitoredProject] resource.
  MonitoredProject.reference(String urn)
    : super(
        'gcp:monitoring/monitoredProject:MonitoredProject',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    metricsScope = registerOutput<String>('metricsScope');
    this.name = registerOutput<String>('name');
  }
}
