import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpc_args.dart';
import 'vpc_state.dart';

/// Manages a Linode VPC.
/// For more information, see the [Linode APIv4 docs](https://techdocs.akamai.com/linode-api/reference/post-vpc).
///
/// Please refer to linode.VpcSubnet to manage the subnets under a Linode VPC.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const test = new linode.Vpc("test", {
///     label: "test-vpc",
///     region: "us-iad",
///     description: "My first VPC.",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// test = linode.Vpc("test",
///     label="test-vpc",
///     region="us-iad",
///     description="My first VPC.")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = new Linode.Vpc("test", new()
///     {
///         Label = "test-vpc",
///         Region = "us-iad",
///         Description = "My first VPC.",
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
/// 		_, err := linode.NewVpc(ctx, "test", &linode.VpcArgs{
/// 			Label:       pulumi.String("test-vpc"),
/// 			Region:      pulumi.String("us-iad"),
/// 			Description: pulumi.String("My first VPC."),
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
/// import com.pulumi.linode.Vpc;
/// import com.pulumi.linode.VpcArgs;
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
///         var test = new Vpc("test", VpcArgs.builder()
///             .label("test-vpc")
///             .region("us-iad")
///             .description("My first VPC.")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test:
///     type: linode:Vpc
///     properties:
///       label: test-vpc
///       region: us-iad
///       description: My first VPC.
/// ```
///
///
/// Create a VPC with a `/52` IPv6 range prefix:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// // NOTE: IPv6 VPCs may not currently be available to all users.
/// const test = new linode.Vpc("test", {
///     label: "test-vpc",
///     region: "us-iad",
///     ipv6s: [{
///         range: "/52",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// # NOTE: IPv6 VPCs may not currently be available to all users.
/// test = linode.Vpc("test",
///     label="test-vpc",
///     region="us-iad",
///     ipv6s=[{
///         "range": "/52",
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     // NOTE: IPv6 VPCs may not currently be available to all users.
///     var test = new Linode.Vpc("test", new()
///     {
///         Label = "test-vpc",
///         Region = "us-iad",
///         Ipv6s = new[]
///         {
///             new Linode.Inputs.VpcIpv6Args
///             {
///                 Range = "/52",
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
/// 		// NOTE: IPv6 VPCs may not currently be available to all users.
/// 		_, err := linode.NewVpc(ctx, "test", &linode.VpcArgs{
/// 			Label:  pulumi.String("test-vpc"),
/// 			Region: pulumi.String("us-iad"),
/// 			Ipv6s: linode.VpcIpv6Array{
/// 				&linode.VpcIpv6Args{
/// 					Range: pulumi.String("/52"),
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
/// import com.pulumi.linode.Vpc;
/// import com.pulumi.linode.VpcArgs;
/// import com.pulumi.linode.inputs.VpcIpv6Args;
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
///         // NOTE: IPv6 VPCs may not currently be available to all users.
///         var test = new Vpc("test", VpcArgs.builder()
///             .label("test-vpc")
///             .region("us-iad")
///             .ipv6s(VpcIpv6Args.builder()
///                 .range("/52")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   # NOTE: IPv6 VPCs may not currently be available to all users.
///   test:
///     type: linode:Vpc
///     properties:
///       label: test-vpc
///       region: us-iad
///       ipv6s:
///         - range: /52
/// ```
///
///
/// ## IPv6
///
/// &gt; **Limited Availability** IPv6 VPCs may not currently be available to all users.
///
/// Configures a single IPv6 range under this VPC.
///
/// * `range` - (Optional) An existing IPv6 prefix owned by the current account or a forward slash (/) followed by a valid prefix length. If unspecified, a range with the default prefix will be allocated for this VPC.
///
/// * `allocation_class` - (Optional) Indicates the labeled IPv6 Inventory that the VPC Prefix should be allocated from.
///
/// * `allocated_range` - (Read-Only) The value of range computed by the API. This is necessary when needing to access the range for an implicit allocation.
class Vpc extends pulumi.CustomResource {
  /// The date and time when the VPC was created.
  late final pulumi.Output<String> created;

  /// The user-defined description of this VPC.
  ///
  /// * `ipv6` - (Optional) A list of IPv6 allocations under this VPC.
  late final pulumi.Output<String> description;

  /// The IPv6 configuration of this VPC.
  late final pulumi.Output<List<Map<String, dynamic>>?> ipv6s;

  /// The label of the VPC. This field can only contain ASCII letters, digits and dashes.
  late final pulumi.Output<String> label;

  /// The region of the VPC.
  late final pulumi.Output<String> region;

  /// The date and time when the VPC was last updated.
  late final pulumi.Output<String> updated;

  /// Creates a new [Vpc].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Vpc]. {@macro pulumi_index_vpc_vpc_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Vpc(String name, {VpcArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'linode:index/vpc:Vpc',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    created = registerOutput<String>('created');
    description = registerOutput<String>('description');
    ipv6s = registerOutput<List<Map<String, dynamic>>?>('ipv6s');
    label = registerOutput<String>('label');
    region = registerOutput<String>('region');
    updated = registerOutput<String>('updated');
  }

  /// Gets an existing [Vpc] resource's state with the given [name] and [id].
  static Vpc get(String name, pulumi.Input<String> id, {VpcState? state}) {
    return Vpc._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Vpc._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'linode:index/vpc:Vpc',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    created = registerOutput<String>('created');
    description = registerOutput<String>('description');
    ipv6s = registerOutput<List<Map<String, dynamic>>?>('ipv6s');
    label = registerOutput<String>('label');
    region = registerOutput<String>('region');
    updated = registerOutput<String>('updated');
  }
}
