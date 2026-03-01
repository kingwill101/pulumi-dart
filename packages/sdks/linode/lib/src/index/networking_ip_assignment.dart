import 'package:pulumi/pulumi.dart' as pulumi;
import 'networking_ip_assignment_args.dart';
import 'networking_ip_assignment_assignment.dart';
import 'networking_ip_assignment_state.dart';

/// Manages the assignment of multiple IPv4 addresses and/or IPv6 ranges to multiple Linodes in a specified region.
///
/// For more information, see the corresponding [API documentation](https://techdocs.akamai.com/linode-api/reference/post-assign-ips).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const foobar = new linode.NetworkingIpAssignment("foobar", {
///     region: "us-mia",
///     assignments: [
///         {
///             address: reservedIp1.address,
///             linodeId: terraform_web1.id,
///         },
///         {
///             address: reservedIp2.address,
///             linodeId: terraform_web2.id,
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// foobar = linode.NetworkingIpAssignment("foobar",
///     region="us-mia",
///     assignments=[
///         {
///             "address": reserved_ip1["address"],
///             "linode_id": terraform_web1["id"],
///         },
///         {
///             "address": reserved_ip2["address"],
///             "linode_id": terraform_web2["id"],
///         },
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foobar = new Linode.NetworkingIpAssignment("foobar", new()
///     {
///         Region = "us-mia",
///         Assignments = new[]
///         {
///             new Linode.Inputs.NetworkingIpAssignmentAssignmentArgs
///             {
///                 Address = reservedIp1.Address,
///                 LinodeId = terraform_web1.Id,
///             },
///             new Linode.Inputs.NetworkingIpAssignmentAssignmentArgs
///             {
///                 Address = reservedIp2.Address,
///                 LinodeId = terraform_web2.Id,
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
/// 	"github.com/pulumi/pulumi-linode/sdk/v5/go/linode"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := linode.NewNetworkingIpAssignment(ctx, "foobar", &linode.NetworkingIpAssignmentArgs{
/// 			Region: pulumi.String("us-mia"),
/// 			Assignments: linode.NetworkingIpAssignmentAssignmentArray{
/// 				&linode.NetworkingIpAssignmentAssignmentArgs{
/// 					Address:  pulumi.Any(reservedIp1.Address),
/// 					LinodeId: pulumi.Any(terraform_web1.Id),
/// 				},
/// 				&linode.NetworkingIpAssignmentAssignmentArgs{
/// 					Address:  pulumi.Any(reservedIp2.Address),
/// 					LinodeId: pulumi.Any(terraform_web2.Id),
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
/// import com.pulumi.linode.NetworkingIpAssignment;
/// import com.pulumi.linode.NetworkingIpAssignmentArgs;
/// import com.pulumi.linode.inputs.NetworkingIpAssignmentAssignmentArgs;
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
///         var foobar = new NetworkingIpAssignment("foobar", NetworkingIpAssignmentArgs.builder()
///             .region("us-mia")
///             .assignments(
///                 NetworkingIpAssignmentAssignmentArgs.builder()
///                     .address(reservedIp1.address())
///                     .linodeId(terraform_web1.id())
///                     .build(),
///                 NetworkingIpAssignmentAssignmentArgs.builder()
///                     .address(reservedIp2.address())
///                     .linodeId(terraform_web2.id())
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foobar:
///     type: linode:NetworkingIpAssignment
///     properties:
///       region: us-mia
///       assignments:
///         - address: ${reservedIp1.address}
///           linodeId: ${["terraform-web1"].id}
///         - address: ${reservedIp2.address}
///           linodeId: ${["terraform-web2"].id}
/// ```
///
///
/// ## Import
///
/// Network IP assignments cannot be imported.
class NetworkingIpAssignment extends pulumi.CustomResource {
  /// A list of IP/Linode assignments to apply.
  late final pulumi.Output<List<NetworkingIpAssignmentAssignment>?> assignments;
  /// The region where the IP addresses will be assigned.
  late final pulumi.Output<String> region;

  /// Creates a new [NetworkingIpAssignment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NetworkingIpAssignment]. {@macro pulumi_index_networking_ip_assignment_networking_ip_assignment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NetworkingIpAssignment(
    String name, {
    NetworkingIpAssignmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'linode:index/networkingIpAssignment:NetworkingIpAssignment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.assignments = registerOutput<List<NetworkingIpAssignmentAssignment>?>('assignments');
    this.region = registerOutput<String>('region');
  }

  /// Gets an existing [NetworkingIpAssignment] resource's state with the given [name] and [id].
  static NetworkingIpAssignment get(
    String name,
    pulumi.Input<String> id, {
    NetworkingIpAssignmentState? state,
  }) {
    return NetworkingIpAssignment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  NetworkingIpAssignment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'linode:index/networkingIpAssignment:NetworkingIpAssignment',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.assignments = registerOutput<List<NetworkingIpAssignmentAssignment>?>('assignments');
    this.region = registerOutput<String>('region');
  }
}
