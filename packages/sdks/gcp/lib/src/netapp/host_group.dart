import 'package:pulumi/pulumi.dart' as pulumi;
import 'host_group_args.dart';
import 'host_group_state.dart';

/// Hostgroups define the hosts (aka initiators) that can access the specific Google Cloud Netapp Volumes.
/// Hostgroup is a regional resource and independent of the volumes or any other resource
///
///
/// To get more information about HostGroup, see:
///
/// * [API documentation](https://docs.cloud.google.com/netapp/volumes/docs/reference/rest/v1/projects.locations.hostGroups)
/// * How-to Guides
/// * [Documentation](https://docs.cloud.google.com/netapp/volumes/docs/configure-and-use/host-groups/overview)
///
/// ## Example Usage
///
/// ### Netapp Host Group
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const testHostGroup = new gcp.netapp.HostGroup("test_host_group", {
///     name: "test-host-group",
///     location: "us-central1",
///     osType: "LINUX",
///     type: "ISCSI_INITIATOR",
///     hosts: ["iqn.1994-05.com.redhat:8518f79d5366"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// test_host_group = gcp.netapp.HostGroup("test_host_group",
///     name="test-host-group",
///     location="us-central1",
///     os_type="LINUX",
///     type="ISCSI_INITIATOR",
///     hosts=["iqn.1994-05.com.redhat:8518f79d5366"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var testHostGroup = new Gcp.Netapp.HostGroup("test_host_group", new()
///     {
///         Name = "test-host-group",
///         Location = "us-central1",
///         OsType = "LINUX",
///         Type = "ISCSI_INITIATOR",
///         Hosts = new[]
///         {
///             "iqn.1994-05.com.redhat:8518f79d5366",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/netapp"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := netapp.NewHostGroup(ctx, "test_host_group", &netapp.HostGroupArgs{
/// 			Name:     pulumi.String("test-host-group"),
/// 			Location: pulumi.String("us-central1"),
/// 			OsType:   pulumi.String("LINUX"),
/// 			Type:     pulumi.String("ISCSI_INITIATOR"),
/// 			Hosts: pulumi.StringArray{
/// 				pulumi.String("iqn.1994-05.com.redhat:8518f79d5366"),
/// 			},
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
/// resource "gcp_netapp_hostgroup" "test_host_group" {
///   name     = "test-host-group"
///   location = "us-central1"
///   os_type  = "LINUX"
///   type     = "ISCSI_INITIATOR"
///   hosts    = ["iqn.1994-05.com.redhat:8518f79d5366"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.netapp.HostGroup;
/// import com.pulumi.gcp.netapp.HostGroupArgs;
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
///         var testHostGroup = new HostGroup("testHostGroup", HostGroupArgs.builder()
///             .name("test-host-group")
///             .location("us-central1")
///             .osType("LINUX")
///             .type("ISCSI_INITIATOR")
///             .hosts("iqn.1994-05.com.redhat:8518f79d5366")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   testHostGroup:
///     type: gcp:netapp:HostGroup
///     name: test_host_group
///     properties:
///       name: test-host-group
///       location: us-central1
///       osType: LINUX
///       type: ISCSI_INITIATOR
///       hosts:
///         - iqn.1994-05.com.redhat:8518f79d5366
/// ```
///
///
/// ## Import
///
/// HostGroup can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/hostGroups/{{name}}`
/// * `{{project}}/{{location}}/{{name}}`
/// * `{{location}}/{{name}}`
///
///
/// When using the `pulumi import` command, HostGroup can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:netapp/hostGroup:HostGroup default projects/{{project}}/locations/{{location}}/hostGroups/{{name}}
/// $ pulumi import gcp:netapp/hostGroup:HostGroup default {{project}}/{{location}}/{{name}}
/// $ pulumi import gcp:netapp/hostGroup:HostGroup default {{location}}/{{name}}
/// ```
class HostGroup extends pulumi.CustomResource {
  /// Create time of the host group. A timestamp in RFC3339 UTC "Zulu" format. Examples: "2023-06-22T09:13:01.617Z".
  late final pulumi.Output<String> createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// An optional description of this resource.
  late final pulumi.Output<String?> description;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// The list of hosts associated with the host group
  late final pulumi.Output<List<String>> hosts;
  /// Labels as key value pairs. Example: `{ "owner": "Bob", "department": "finance", "purpose": "testing" }`.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// Location (region) of the Host Group.
  late final pulumi.Output<String> location;
  /// The resource name of the Host Group. Needs to be unique per location.
  late final pulumi.Output<String> name;
  /// The OS type of the host group. It indicates the type of operating system
  /// used by all of the hosts in the HostGroup. All hosts in a HostGroup must be
  /// of the same OS type. This can be set only when creating a HostGroup.
  /// Possible values are: `LINUX`, `WINDOWS`, `ESXI`.
  late final pulumi.Output<String> osType;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// The state of the Host Group.
  late final pulumi.Output<String> state;
  /// Type of the host group.
  /// Possible values are: `ISCSI_INITIATOR`.
  late final pulumi.Output<String> type;

  /// Creates a new [HostGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [HostGroup]. {@macro pulumi_netapp_host_group_host_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  HostGroup(
    String name, {
    HostGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:netapp/hostGroup:HostGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    hosts = registerOutput<List<String>>('hosts');
    labels = registerOutput<Map<String, String>?>('labels');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    osType = registerOutput<String>('osType');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    state = registerOutput<String>('state');
    type = registerOutput<String>('type');
  }

  /// Gets an existing [HostGroup] resource's state with the given [name] and [id].
  static HostGroup get(
    String name,
    pulumi.Input<String> id, {
    HostGroupState? state,
  }) {
    return HostGroup._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  HostGroup._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:netapp/hostGroup:HostGroup',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    hosts = registerOutput<List<String>>('hosts');
    labels = registerOutput<Map<String, String>?>('labels');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    osType = registerOutput<String>('osType');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.state = registerOutput<String>('state');
    type = registerOutput<String>('type');
  }
}
