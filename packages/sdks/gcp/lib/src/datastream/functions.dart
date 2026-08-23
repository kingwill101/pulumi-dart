import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_static_ips_args.dart';
import 'get_static_ips_result.dart';

/// Returns the list of IP addresses that Datastream connects from. For more information see
/// the [official documentation](https://cloud.google.com/datastream/docs/ip-allowlists-and-regions).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const datastreamIps = gcp.datastream.getStaticIps({
///     location: "us-west1",
///     project: "my-project",
/// });
/// export const ipList = datastreamIps.then(datastreamIps => datastreamIps.staticIps);
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// datastream_ips = gcp.datastream.get_static_ips(location="us-west1",
///     project="my-project")
/// pulumi.export("ipList", datastream_ips.static_ips)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var datastreamIps = Gcp.Datastream.GetStaticIps.Invoke(new()
///     {
///         Location = "us-west1",
///         Project = "my-project",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["ipList"] = datastreamIps.Apply(getStaticIpsResult => getStaticIpsResult.StaticIps),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/datastream"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		datastreamIps, err := datastream.GetStaticIps(ctx, &datastream.GetStaticIpsArgs{
/// 			Location: "us-west1",
/// 			Project:  pulumi.StringRef("my-project"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("ipList", datastreamIps.StaticIps)
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
/// data "gcp_datastream_getstaticips" "datastreamIps" {
///   location = "us-west1"
///   project  = "my-project"
/// }
///
/// output "ipList" {
///   value = data.gcp_datastream_getstaticips.datastreamIps.static_ips
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.datastream.DatastreamFunctions;
/// import com.pulumi.gcp.datastream.inputs.GetStaticIpsArgs;
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
///         final var datastreamIps = DatastreamFunctions.getStaticIps(GetStaticIpsArgs.builder()
///             .location("us-west1")
///             .project("my-project")
///             .build());
///
///         ctx.export("ipList", datastreamIps.staticIps());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   datastreamIps:
///     fn::invoke:
///       function: gcp:datastream:getStaticIps
///       arguments:
///         location: us-west1
///         project: my-project
/// outputs:
///   ipList: ${datastreamIps.staticIps}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_datastream_get_static_ips_get_static_ips_args_doc}
/// [options] Invoke options controlling this call.
Future<GetStaticIpsResult> getStaticIps(
  GetStaticIpsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:datastream/getStaticIps:getStaticIps',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetStaticIpsResult.fromMap(result);
}
