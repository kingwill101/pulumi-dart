import 'package:pulumi/pulumi.dart' as pulumi;
import 'tunnel_dest_group_args.dart';
import 'tunnel_dest_group_state.dart';

/// Tunnel destination groups represent resources that have the same tunnel access restrictions.
///
///
/// To get more information about TunnelDestGroup, see:
///
/// * [API documentation](https://cloud.google.com/iap/docs/reference/rest/v1/projects.iap_tunnel.locations.destGroups)
/// * How-to Guides
/// * [Set up IAP TCP forwarding with an IP address or hostname in a Google Cloud or non-Google Cloud environment](https://cloud.google.com/iap/docs/tcp-by-host)
///
/// ## Example Usage
///
/// ### Iap Destgroup
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const destGroup = new gcp.iap.TunnelDestGroup("dest_group", {
///     region: "us-central1",
///     groupName: "testgroup_34534",
///     cidrs: [
///         "10.1.0.0/16",
///         "192.168.10.0/24",
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// dest_group = gcp.iap.TunnelDestGroup("dest_group",
///     region="us-central1",
///     group_name="testgroup_34534",
///     cidrs=[
///         "10.1.0.0/16",
///         "192.168.10.0/24",
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var destGroup = new Gcp.Iap.TunnelDestGroup("dest_group", new()
///     {
///         Region = "us-central1",
///         GroupName = "testgroup_34534",
///         Cidrs = new[]
///         {
///             "10.1.0.0/16",
///             "192.168.10.0/24",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/iap"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := iap.NewTunnelDestGroup(ctx, "dest_group", &iap.TunnelDestGroupArgs{
/// 			Region:    pulumi.String("us-central1"),
/// 			GroupName: pulumi.String("testgroup_34534"),
/// 			Cidrs: pulumi.StringArray{
/// 				pulumi.String("10.1.0.0/16"),
/// 				pulumi.String("192.168.10.0/24"),
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
/// resource "gcp_iap_tunneldestgroup" "dest_group" {
///   region     = "us-central1"
///   group_name = "testgroup_34534"
///   cidrs      = ["10.1.0.0/16", "192.168.10.0/24"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.iap.TunnelDestGroup;
/// import com.pulumi.gcp.iap.TunnelDestGroupArgs;
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
///         var destGroup = new TunnelDestGroup("destGroup", TunnelDestGroupArgs.builder()
///             .region("us-central1")
///             .groupName("testgroup_34534")
///             .cidrs(
///                 "10.1.0.0/16",
///                 "192.168.10.0/24")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   destGroup:
///     type: gcp:iap:TunnelDestGroup
///     name: dest_group
///     properties:
///       region: us-central1
///       groupName: testgroup_34534
///       cidrs:
///         - 10.1.0.0/16
///         - 192.168.10.0/24
/// ```
///
///
/// ## Import
///
/// TunnelDestGroup can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/iap_tunnel/locations/{{region}}/destGroups/{{group_name}}`
/// * `{{project}}/iap_tunnel/locations/{{region}}/destGroups/{{group_name}}`
/// * `{{project}}/{{region}}/{{group_name}}`
/// * `{{region}}/destGroups/{{group_name}}`
/// * `{{region}}/{{group_name}}`
/// * `{{group_name}}`
///
///
/// When using the `pulumi import` command, TunnelDestGroup can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:iap/tunnelDestGroup:TunnelDestGroup default projects/{{project}}/iap_tunnel/locations/{{region}}/destGroups/{{group_name}}
/// $ pulumi import gcp:iap/tunnelDestGroup:TunnelDestGroup default {{project}}/iap_tunnel/locations/{{region}}/destGroups/{{group_name}}
/// $ pulumi import gcp:iap/tunnelDestGroup:TunnelDestGroup default {{project}}/{{region}}/{{group_name}}
/// $ pulumi import gcp:iap/tunnelDestGroup:TunnelDestGroup default {{region}}/destGroups/{{group_name}}
/// $ pulumi import gcp:iap/tunnelDestGroup:TunnelDestGroup default {{region}}/{{group_name}}
/// $ pulumi import gcp:iap/tunnelDestGroup:TunnelDestGroup default {{group_name}}
/// ```
class TunnelDestGroup extends pulumi.CustomResource {
  /// List of CIDRs that this group applies to.
  late final pulumi.Output<List<String>?> cidrs;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// List of FQDNs that this group applies to.
  late final pulumi.Output<List<String>?> fqdns;
  /// Unique tunnel destination group name.
  late final pulumi.Output<String> groupName;
  /// Full resource name.
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The region of the tunnel group. Must be the same as the network resources in the group.
  late final pulumi.Output<String> region;

  /// Creates a new [TunnelDestGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TunnelDestGroup]. {@macro pulumi_iap_tunnel_dest_group_tunnel_dest_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TunnelDestGroup(
    String name, {
    TunnelDestGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:iap/tunnelDestGroup:TunnelDestGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    cidrs = registerOutput<List<String>?>('cidrs');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    fqdns = registerOutput<List<String>?>('fqdns');
    groupName = registerOutput<String>('groupName');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    region = registerOutput<String>('region');
  }

  /// Gets an existing [TunnelDestGroup] resource's state with the given [name] and [id].
  static TunnelDestGroup get(
    String name,
    pulumi.Input<String> id, {
    TunnelDestGroupState? state,
  }) {
    return TunnelDestGroup._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  TunnelDestGroup._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:iap/tunnelDestGroup:TunnelDestGroup',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    cidrs = registerOutput<List<String>?>('cidrs');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    fqdns = registerOutput<List<String>?>('fqdns');
    groupName = registerOutput<String>('groupName');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    region = registerOutput<String>('region');
  }
}
