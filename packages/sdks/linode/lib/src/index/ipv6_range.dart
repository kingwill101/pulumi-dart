import 'package:pulumi/pulumi.dart' as pulumi;
import 'ipv6_range_args.dart';
import 'ipv6_range_state.dart';

/// Manages a Linode IPv6 range.
/// For more information, see the [Linode APIv4 docs](https://techdocs.akamai.com/linode-api/reference/post-ipv6-range).
///
/// &gt; **NOTICE:** We highly recommend that users do not remove an IPv6 range created by this Terraform resource outside of Terraform. This is because if a user manually removes an IPv6 range created by Terraform, and then assigns some IPv6 ranges to other linodes outside of Terraform, there is a chance that the same IPv6 range can be assigned to another linode, even though the new range is randomly selected. This will result in the newly assigned IPv6 range being managed by this Terraform resource. In this case, the user should manually taint this resource.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const foobar = new linode.Instance("foobar", {
///     label: "my-linode",
///     image: "linode/alpine3.19",
///     type: "g6-nanode-1",
///     region: "us-southeast",
/// });
/// const foobarIpv6Range = new linode.Ipv6Range("foobar", {
///     linodeId: foobar.id,
///     prefixLength: 64,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// foobar = linode.Instance("foobar",
///     label="my-linode",
///     image="linode/alpine3.19",
///     type="g6-nanode-1",
///     region="us-southeast")
/// foobar_ipv6_range = linode.Ipv6Range("foobar",
///     linode_id=foobar.id,
///     prefix_length=64)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foobar = new Linode.Instance("foobar", new()
///     {
///         Label = "my-linode",
///         Image = "linode/alpine3.19",
///         Type = "g6-nanode-1",
///         Region = "us-southeast",
///     });
///
///     var foobarIpv6Range = new Linode.Ipv6Range("foobar", new()
///     {
///         LinodeId = foobar.Id,
///         PrefixLength = 64,
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
/// 		foobar, err := linode.NewInstance(ctx, "foobar", &linode.InstanceArgs{
/// 			Label:  pulumi.String("my-linode"),
/// 			Image:  pulumi.String("linode/alpine3.19"),
/// 			Type:   pulumi.String("g6-nanode-1"),
/// 			Region: pulumi.String("us-southeast"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = linode.NewIpv6Range(ctx, "foobar", &linode.Ipv6RangeArgs{
/// 			LinodeId:     foobar.ID(),
/// 			PrefixLength: pulumi.Int(64),
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
/// import com.pulumi.linode.Instance;
/// import com.pulumi.linode.InstanceArgs;
/// import com.pulumi.linode.Ipv6Range;
/// import com.pulumi.linode.Ipv6RangeArgs;
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
///         var foobar = new Instance("foobar", InstanceArgs.builder()
///             .label("my-linode")
///             .image("linode/alpine3.19")
///             .type("g6-nanode-1")
///             .region("us-southeast")
///             .build());
///
///         var foobarIpv6Range = new Ipv6Range("foobarIpv6Range", Ipv6RangeArgs.builder()
///             .linodeId(foobar.id())
///             .prefixLength(64)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foobar:
///     type: linode:Instance
///     properties:
///       label: my-linode
///       image: linode/alpine3.19
///       type: g6-nanode-1
///       region: us-southeast
///   foobarIpv6Range:
///     type: linode:Ipv6Range
///     name: foobar
///     properties:
///       linodeId: ${foobar.id}
///       prefixLength: 64
/// ```
class Ipv6Range extends pulumi.CustomResource {
  /// Whether this IPv6 range is shared.
  late final pulumi.Output<bool> isBgp;

  /// The ID of the Linode to assign this range to. This field may be updated to reassign the IPv6 range.
  late final pulumi.Output<int?> linodeId;

  /// A list of Linodes targeted by this IPv6 range. Includes Linodes with IP sharing.
  late final pulumi.Output<List<int>> linodes;

  /// The prefix length of the IPv6 range.
  late final pulumi.Output<int> prefixLength;

  /// The IPv6 range of addresses in this pool.
  late final pulumi.Output<String> range;

  /// The region for this range of IPv6 addresses.
  late final pulumi.Output<String> region;

  /// The IPv6 SLAAC address to assign this range to.
  late final pulumi.Output<String> routeTarget;

  /// Creates a new [Ipv6Range].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Ipv6Range]. {@macro pulumi_index_ipv6_range_ipv6_range_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Ipv6Range(
    String name, {
    Ipv6RangeArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'linode:index/ipv6Range:Ipv6Range',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    isBgp = registerOutput<bool>('isBgp');
    linodeId = registerOutput<int?>('linodeId');
    linodes = registerOutput<List<int>>('linodes');
    prefixLength = registerOutput<int>('prefixLength');
    range = registerOutput<String>('range');
    region = registerOutput<String>('region');
    routeTarget = registerOutput<String>('routeTarget');
  }

  /// Gets an existing [Ipv6Range] resource's state with the given [name] and [id].
  static Ipv6Range get(
    String name,
    pulumi.Input<String> id, {
    Ipv6RangeState? state,
  }) {
    return Ipv6Range._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Ipv6Range._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'linode:index/ipv6Range:Ipv6Range',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    isBgp = registerOutput<bool>('isBgp');
    linodeId = registerOutput<int?>('linodeId');
    linodes = registerOutput<List<int>>('linodes');
    prefixLength = registerOutput<int>('prefixLength');
    range = registerOutput<String>('range');
    region = registerOutput<String>('region');
    routeTarget = registerOutput<String>('routeTarget');
  }
}
