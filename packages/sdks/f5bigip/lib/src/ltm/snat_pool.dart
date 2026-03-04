import 'package:pulumi/pulumi.dart' as pulumi;
import 'snat_pool_args.dart';
import 'snat_pool_state.dart';

/// `f5bigip.ltm.SnatPool` Collections of SNAT translation addresses
///
/// Resource should be named with their "full path". The full path is the combination of the partition + name of the resource, for example /Common/my-snatpool.
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as f5bigip from "@pulumi/f5bigip";
///
/// const snatpoolSanjose = new f5bigip.ltm.SnatPool("snatpool_sanjose", {
///     name: "/Common/snatpool_sanjose",
///     members: [
///         "191.1.1.1",
///         "194.2.2.2",
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_f5bigip as f5bigip
///
/// snatpool_sanjose = f5bigip.ltm.SnatPool("snatpool_sanjose",
///     name="/Common/snatpool_sanjose",
///     members=[
///         "191.1.1.1",
///         "194.2.2.2",
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using F5BigIP = Pulumi.F5BigIP;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var snatpoolSanjose = new F5BigIP.Ltm.SnatPool("snatpool_sanjose", new()
///     {
///         Name = "/Common/snatpool_sanjose",
///         Members = new[]
///         {
///             "191.1.1.1",
///             "194.2.2.2",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-f5bigip/sdk/v3/go/f5bigip/ltm"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ltm.NewSnatPool(ctx, "snatpool_sanjose", &ltm.SnatPoolArgs{
/// 			Name: pulumi.String("/Common/snatpool_sanjose"),
/// 			Members: pulumi.StringArray{
/// 				pulumi.String("191.1.1.1"),
/// 				pulumi.String("194.2.2.2"),
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
/// import com.pulumi.f5bigip.ltm.SnatPool;
/// import com.pulumi.f5bigip.ltm.SnatPoolArgs;
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
///         var snatpoolSanjose = new SnatPool("snatpoolSanjose", SnatPoolArgs.builder()
///             .name("/Common/snatpool_sanjose")
///             .members(
///                 "191.1.1.1",
///                 "194.2.2.2")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   snatpoolSanjose:
///     type: f5bigip:ltm:SnatPool
///     name: snatpool_sanjose
///     properties:
///       name: /Common/snatpool_sanjose
///       members:
///         - 191.1.1.1
///         - 194.2.2.2
/// ```
class SnatPool extends pulumi.CustomResource {
  /// Specifies a translation address to add to or delete from a SNAT pool (at least one address is required)
  late final pulumi.Output<List<String>> members;

  /// Name of the snatpool
  late final pulumi.Output<String> name;

  /// Creates a new [SnatPool].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SnatPool]. {@macro pulumi_ltm_snat_pool_snat_pool_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SnatPool(
    String name, {
    SnatPoolArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'f5bigip:ltm/snatPool:SnatPool',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    members = registerOutput<List<String>>('members');
    this.name = registerOutput<String>('name');
  }

  /// Gets an existing [SnatPool] resource's state with the given [name] and [id].
  static SnatPool get(
    String name,
    pulumi.Input<String> id, {
    SnatPoolState? state,
  }) {
    return SnatPool._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  SnatPool._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'f5bigip:ltm/snatPool:SnatPool',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    members = registerOutput<List<String>>('members');
    this.name = registerOutput<String>('name');
  }
}
