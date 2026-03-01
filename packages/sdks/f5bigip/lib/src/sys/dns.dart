import 'package:pulumi/pulumi.dart' as pulumi;
import 'dns_args.dart';
import 'dns_state.dart';

/// `f5bigip.sys.Dns` Configures DNS Name server on F5 BIG-IP
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as f5bigip from "@pulumi/f5bigip";
///
/// const dns1 = new f5bigip.sys.Dns("dns1", {
///     description: "/Common/DNS1",
///     nameServers: ["1.1.1.1"],
///     searches: ["f5.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_f5bigip as f5bigip
///
/// dns1 = f5bigip.sys.Dns("dns1",
///     description="/Common/DNS1",
///     name_servers=["1.1.1.1"],
///     searches=["f5.com"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using F5BigIP = Pulumi.F5BigIP;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var dns1 = new F5BigIP.Sys.Dns("dns1", new()
///     {
///         Description = "/Common/DNS1",
///         NameServers = new[]
///         {
///             "1.1.1.1",
///         },
///         Searches = new[]
///         {
///             "f5.com",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-f5bigip/sdk/v3/go/f5bigip/sys"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := sys.NewDns(ctx, "dns1", &sys.DnsArgs{
/// 			Description: pulumi.String("/Common/DNS1"),
/// 			NameServers: pulumi.StringArray{
/// 				pulumi.String("1.1.1.1"),
/// 			},
/// 			Searches: pulumi.StringArray{
/// 				pulumi.String("f5.com"),
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
/// import com.pulumi.f5bigip.sys.Dns;
/// import com.pulumi.f5bigip.sys.DnsArgs;
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
///         var dns1 = new Dns("dns1", DnsArgs.builder()
///             .description("/Common/DNS1")
///             .nameServers("1.1.1.1")
///             .searches("f5.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   dns1:
///     type: f5bigip:sys:Dns
///     properties:
///       description: /Common/DNS1
///       nameServers:
///         - 1.1.1.1
///       searches:
///         - f5.com
/// ```
class Dns extends pulumi.CustomResource {
  /// Provide description for your DNS server
  late final pulumi.Output<String> description;
  /// Specifies the name servers that the system uses to validate DNS lookups, and resolve host names.
  late final pulumi.Output<List<String>> nameServers;
  /// Configures the number of dots needed in a name before an initial absolute query will be made.
  late final pulumi.Output<int> numberOfDots;
  /// Specifies the domains that the system searches for local domain lookups, to resolve local host names.
  late final pulumi.Output<List<String>?> searches;

  /// Creates a new [Dns].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Dns]. {@macro pulumi_sys_dns_dns_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Dns(
    String name, {
    DnsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'f5bigip:sys/dns:Dns',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.description = registerOutput<String>('description');
    this.nameServers = registerOutput<List<String>>('nameServers');
    this.numberOfDots = registerOutput<int>('numberOfDots');
    this.searches = registerOutput<List<String>?>('searches');
  }

  /// Gets an existing [Dns] resource's state with the given [name] and [id].
  static Dns get(
    String name,
    pulumi.Input<String> id, {
    DnsState? state,
  }) {
    return Dns._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Dns._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'f5bigip:sys/dns:Dns',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.description = registerOutput<String>('description');
    this.nameServers = registerOutput<List<String>>('nameServers');
    this.numberOfDots = registerOutput<int>('numberOfDots');
    this.searches = registerOutput<List<String>?>('searches');
  }
}
