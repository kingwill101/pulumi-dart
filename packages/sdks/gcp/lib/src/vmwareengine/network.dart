import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_args.dart';
import 'network_state.dart';
import 'network_vpc_network.dart';

/// Provides connectivity for VMware Engine private clouds.
///
///
/// To get more information about Network, see:
///
/// * [API documentation](https://cloud.google.com/vmware-engine/docs/reference/rest/v1/projects.locations.vmwareEngineNetworks)
///
/// ## Example Usage
///
/// ### Vmware Engine Network Standard
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const vmw_engine_network = new gcp.vmwareengine.Network("vmw-engine-network", {
///     name: "standard-nw",
///     location: "global",
///     type: "STANDARD",
///     description: "VMwareEngine standard network sample",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// vmw_engine_network = gcp.vmwareengine.Network("vmw-engine-network",
///     name="standard-nw",
///     location="global",
///     type="STANDARD",
///     description="VMwareEngine standard network sample")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var vmw_engine_network = new Gcp.VMwareEngine.Network("vmw-engine-network", new()
///     {
///         Name = "standard-nw",
///         Location = "global",
///         Type = "STANDARD",
///         Description = "VMwareEngine standard network sample",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/vmwareengine"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := vmwareengine.NewNetwork(ctx, "vmw-engine-network", &vmwareengine.NetworkArgs{
/// 			Name:        pulumi.String("standard-nw"),
/// 			Location:    pulumi.String("global"),
/// 			Type:        pulumi.String("STANDARD"),
/// 			Description: pulumi.String("VMwareEngine standard network sample"),
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
/// resource "gcp_vmwareengine_network" "vmw-engine-network" {
///   name        = "standard-nw"
///   location    = "global"
///   type        = "STANDARD"
///   description = "VMwareEngine standard network sample"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.vmwareengine.Network;
/// import com.pulumi.gcp.vmwareengine.NetworkArgs;
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
///         var vmw_engine_network = new Network("vmw-engine-network", NetworkArgs.builder()
///             .name("standard-nw")
///             .location("global")
///             .type("STANDARD")
///             .description("VMwareEngine standard network sample")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   vmw-engine-network:
///     type: gcp:vmwareengine:Network
///     properties:
///       name: standard-nw
///       location: global
///       type: STANDARD
///       description: VMwareEngine standard network sample
/// ```
///
/// ### Vmware Engine Network Legacy
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as time from "@pulumiverse/time";
///
/// // there can be only 1 Legacy network per region for a given project,
/// // so creating new project for isolation in CI.
/// const acceptanceProject = new gcp.organizations.Project("acceptance", {
///     name: "vmw-proj",
///     projectId: "vmw-proj",
///     orgId: "123456789",
///     billingAccount: "000000-0000000-0000000-000000",
///     deletionPolicy: "DELETE",
/// });
/// const wait60Seconds = new time.Sleep("wait_60_seconds", {createDuration: "60s"}, {
///     dependsOn: [acceptanceProject],
/// });
/// const acceptance = new gcp.projects.Service("acceptance", {
///     project: acceptanceProject.projectId,
///     service: "vmwareengine.googleapis.com",
/// }, {
///     dependsOn: [wait60Seconds],
/// });
/// const vmw_engine_network = new gcp.vmwareengine.Network("vmw-engine-network", {
///     project: acceptance.project,
///     name: "us-west1-default",
///     location: "us-west1",
///     type: "LEGACY",
///     description: "VMwareEngine legacy network sample",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumiverse_time as time
///
/// # there can be only 1 Legacy network per region for a given project,
/// # so creating new project for isolation in CI.
/// acceptance_project = gcp.organizations.Project("acceptance",
///     name="vmw-proj",
///     project_id="vmw-proj",
///     org_id="123456789",
///     billing_account="000000-0000000-0000000-000000",
///     deletion_policy="DELETE")
/// wait60_seconds = time.Sleep("wait_60_seconds", create_duration="60s",
/// opts = pulumi.ResourceOptions(depends_on=[acceptance_project]))
/// acceptance = gcp.projects.Service("acceptance",
///     project=acceptance_project.project_id,
///     service="vmwareengine.googleapis.com",
///     opts = pulumi.ResourceOptions(depends_on=[wait60_seconds]))
/// vmw_engine_network = gcp.vmwareengine.Network("vmw-engine-network",
///     project=acceptance.project,
///     name="us-west1-default",
///     location="us-west1",
///     type="LEGACY",
///     description="VMwareEngine legacy network sample")
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
///     // there can be only 1 Legacy network per region for a given project,
///     // so creating new project for isolation in CI.
///     var acceptanceProject = new Gcp.Organizations.Project("acceptance", new()
///     {
///         Name = "vmw-proj",
///         ProjectId = "vmw-proj",
///         OrgId = "123456789",
///         BillingAccount = "000000-0000000-0000000-000000",
///         DeletionPolicy = "DELETE",
///     });
///
///     var wait60Seconds = new Time.Sleep("wait_60_seconds", new()
///     {
///         CreateDuration = "60s",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             acceptanceProject,
///         },
///     });
///
///     var acceptance = new Gcp.Projects.Service("acceptance", new()
///     {
///         Project = acceptanceProject.ProjectId,
///         ServiceName = "vmwareengine.googleapis.com",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             wait60Seconds,
///         },
///     });
///
///     var vmw_engine_network = new Gcp.VMwareEngine.Network("vmw-engine-network", new()
///     {
///         Project = acceptance.Project,
///         Name = "us-west1-default",
///         Location = "us-west1",
///         Type = "LEGACY",
///         Description = "VMwareEngine legacy network sample",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/projects"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/vmwareengine"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumiverse/pulumi-time/sdk/go/time"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		// there can be only 1 Legacy network per region for a given project,
/// 		// so creating new project for isolation in CI.
/// 		acceptanceProject, err := organizations.NewProject(ctx, "acceptance", &organizations.ProjectArgs{
/// 			Name:           pulumi.String("vmw-proj"),
/// 			ProjectId:      pulumi.String("vmw-proj"),
/// 			OrgId:          pulumi.String("123456789"),
/// 			BillingAccount: pulumi.String("000000-0000000-0000000-000000"),
/// 			DeletionPolicy: pulumi.String("DELETE"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		wait60Seconds, err := time.NewSleep(ctx, "wait_60_seconds", &time.SleepArgs{
/// 			CreateDuration: pulumi.String("60s"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			acceptanceProject,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		acceptance, err := projects.NewService(ctx, "acceptance", &projects.ServiceArgs{
/// 			Project: acceptanceProject.ProjectId,
/// 			Service: pulumi.String("vmwareengine.googleapis.com"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			wait60Seconds,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = vmwareengine.NewNetwork(ctx, "vmw-engine-network", &vmwareengine.NetworkArgs{
/// 			Project:     acceptance.Project,
/// 			Name:        pulumi.String("us-west1-default"),
/// 			Location:    pulumi.String("us-west1"),
/// 			Type:        pulumi.String("LEGACY"),
/// 			Description: pulumi.String("VMwareEngine legacy network sample"),
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
///     time = {
///       source = "pulumi/time"
///     }
///   }
/// }
///
/// resource "gcp_vmwareengine_network" "vmw-engine-network" {
///   project     = gcp_projects_service.acceptance.project
///   name        = "us-west1-default"
///   location    = "us-west1"
///   type        = "LEGACY"
///   description = "VMwareEngine legacy network sample"
/// }
/// resource "gcp_projects_service" "acceptance" {
///   depends_on = [time_sleep.wait_60_seconds]
///   project    = gcp_organizations_project.acceptance.project_id
///   service    = "vmwareengine.googleapis.com"
/// }
/// # there can be only 1 Legacy network per region for a given project,
/// # so creating new project for isolation in CI.
/// resource "gcp_organizations_project" "acceptance" {
///   name            = "vmw-proj"
///   project_id      = "vmw-proj"
///   org_id          = "123456789"
///   billing_account = "000000-0000000-0000000-000000"
///   deletion_policy = "DELETE"
/// }
/// resource "time_sleep" "wait_60_seconds" {
///   depends_on      = [gcp_organizations_project.acceptance]
///   create_duration = "60s"
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
/// import com.pulumiverse.time.Sleep;
/// import com.pulumiverse.time.SleepArgs;
/// import com.pulumi.gcp.projects.Service;
/// import com.pulumi.gcp.projects.ServiceArgs;
/// import com.pulumi.gcp.vmwareengine.Network;
/// import com.pulumi.gcp.vmwareengine.NetworkArgs;
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
///         // there can be only 1 Legacy network per region for a given project,
///         // so creating new project for isolation in CI.
///         var acceptanceProject = new Project("acceptanceProject", ProjectArgs.builder()
///             .name("vmw-proj")
///             .projectId("vmw-proj")
///             .orgId("123456789")
///             .billingAccount("000000-0000000-0000000-000000")
///             .deletionPolicy("DELETE")
///             .build());
///
///         var wait60Seconds = new Sleep("wait60Seconds", SleepArgs.builder()
///             .createDuration("60s")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(acceptanceProject)
///                 .build());
///
///         var acceptance = new Service("acceptance", ServiceArgs.builder()
///             .project(acceptanceProject.projectId())
///             .service("vmwareengine.googleapis.com")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(wait60Seconds)
///                 .build());
///
///         var vmw_engine_network = new Network("vmw-engine-network", NetworkArgs.builder()
///             .project(acceptance.project())
///             .name("us-west1-default")
///             .location("us-west1")
///             .type("LEGACY")
///             .description("VMwareEngine legacy network sample")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   vmw-engine-network:
///     type: gcp:vmwareengine:Network
///     properties:
///       project: ${acceptance.project}
///       name: us-west1-default
///       location: us-west1
///       type: LEGACY
///       description: VMwareEngine legacy network sample
///   acceptance:
///     type: gcp:projects:Service
///     properties:
///       project: ${acceptanceProject.projectId}
///       service: vmwareengine.googleapis.com
///     options:
///       dependsOn:
///         - ${wait60Seconds}
///   # there can be only 1 Legacy network per region for a given project,
///   # so creating new project for isolation in CI.
///   acceptanceProject:
///     type: gcp:organizations:Project
///     name: acceptance
///     properties:
///       name: vmw-proj
///       projectId: vmw-proj
///       orgId: '123456789'
///       billingAccount: 000000-0000000-0000000-000000
///       deletionPolicy: DELETE
///   wait60Seconds:
///     type: time:Sleep
///     name: wait_60_seconds
///     properties:
///       createDuration: 60s
///     options:
///       dependsOn:
///         - ${acceptanceProject}
/// ```
///
///
/// ## Import
///
/// Network can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/vmwareEngineNetworks/{{name}}`
/// * `{{project}}/{{location}}/{{name}}`
/// * `{{location}}/{{name}}`
///
///
/// When using the `pulumi import` command, Network can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:vmwareengine/network:Network default projects/{{project}}/locations/{{location}}/vmwareEngineNetworks/{{name}}
/// $ pulumi import gcp:vmwareengine/network:Network default {{project}}/{{location}}/{{name}}
/// $ pulumi import gcp:vmwareengine/network:Network default {{location}}/{{name}}
/// ```
class Network extends pulumi.CustomResource {
  /// Creation time of this resource.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  /// Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  late final pulumi.Output<String> createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// User-provided description for this VMware Engine network.
  late final pulumi.Output<String?> description;
  /// Checksum that may be sent on update and delete requests to ensure that the user-provided value is up to date befor
  /// The server computes checksums based on the value of other fields in the request.
  late final pulumi.Output<String> etag;
  /// The location where the VMwareEngineNetwork should reside.
  late final pulumi.Output<String> location;
  /// The ID of the VMwareEngineNetwork.
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// State of the VMware Engine network.
  late final pulumi.Output<String> state;
  /// VMware Engine network type.
  /// Possible values are: `LEGACY`, `STANDARD`.
  late final pulumi.Output<String> type;
  /// System-generated unique identifier for the resource.
  late final pulumi.Output<String> uid;
  /// Last update time of this resource.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  /// Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  late final pulumi.Output<String> updateTime;
  /// VMware Engine service VPC networks that provide connectivity from a private cloud to customer projects,
  /// the internet, and other Google Cloud services.
  /// Structure is documented below.
  late final pulumi.Output<List<NetworkVpcNetwork>> vpcNetworks;

  /// Creates a new [Network].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Network]. {@macro pulumi_vmwareengine_network_network_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Network(
    String name, {
    NetworkArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:vmwareengine/network:Network',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.36.1').merge(options),
        ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    etag = registerOutput<String>('etag');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    state = registerOutput<String>('state');
    type = registerOutput<String>('type');
    uid = registerOutput<String>('uid');
    updateTime = registerOutput<String>('updateTime');
    vpcNetworks = registerOutput<List<NetworkVpcNetwork>>('vpcNetworks', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<NetworkVpcNetwork>(guardedValue, (value) => NetworkVpcNetwork.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Gets an existing [Network] resource's state with the given [name] and [id].
  static Network get(
    String name,
    pulumi.Input<String> id, {
    NetworkState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Network._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Network._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:vmwareengine/network:Network',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    etag = registerOutput<String>('etag');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    this.state = registerOutput<String>('state');
    type = registerOutput<String>('type');
    uid = registerOutput<String>('uid');
    updateTime = registerOutput<String>('updateTime');
    vpcNetworks = registerOutput<List<NetworkVpcNetwork>>('vpcNetworks', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<NetworkVpcNetwork>(guardedValue, (value) => NetworkVpcNetwork.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Creates a typed reference to an existing [Network] resource.
  Network.reference(String urn)
    : super(
        'gcp:vmwareengine/network:Network',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    etag = registerOutput<String>('etag');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    state = registerOutput<String>('state');
    type = registerOutput<String>('type');
    uid = registerOutput<String>('uid');
    updateTime = registerOutput<String>('updateTime');
    vpcNetworks = registerOutput<List<NetworkVpcNetwork>>('vpcNetworks', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<NetworkVpcNetwork>(guardedValue, (value) => NetworkVpcNetwork.fromMap((value as Map).cast<String, dynamic>())); });
  }
}
