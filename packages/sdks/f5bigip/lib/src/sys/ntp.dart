import 'package:pulumi/pulumi.dart' as pulumi;
import 'ntp_args.dart';
import 'ntp_state.dart';

/// `f5bigip.sys.Ntp` resource is helpful when configuring NTP server on the BIG-IP.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as f5bigip from "@pulumi/f5bigip";
///
/// const ntp1 = new f5bigip.sys.Ntp("ntp1", {
///     description: "/Common/NTP1",
///     servers: ["time.facebook.com"],
///     timezone: "America/Los_Angeles",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_f5bigip as f5bigip
///
/// ntp1 = f5bigip.sys.Ntp("ntp1",
///     description="/Common/NTP1",
///     servers=["time.facebook.com"],
///     timezone="America/Los_Angeles")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using F5BigIP = Pulumi.F5BigIP;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ntp1 = new F5BigIP.Sys.Ntp("ntp1", new()
///     {
///         Description = "/Common/NTP1",
///         Servers = new[]
///         {
///             "time.facebook.com",
///         },
///         Timezone = "America/Los_Angeles",
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
/// 		_, err := sys.NewNtp(ctx, "ntp1", &sys.NtpArgs{
/// 			Description: pulumi.String("/Common/NTP1"),
/// 			Servers: pulumi.StringArray{
/// 				pulumi.String("time.facebook.com"),
/// 			},
/// 			Timezone: pulumi.String("America/Los_Angeles"),
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
/// import com.pulumi.f5bigip.sys.Ntp;
/// import com.pulumi.f5bigip.sys.NtpArgs;
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
///         var ntp1 = new Ntp("ntp1", NtpArgs.builder()
///             .description("/Common/NTP1")
///             .servers("time.facebook.com")
///             .timezone("America/Los_Angeles")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   ntp1:
///     type: f5bigip:sys:Ntp
///     properties:
///       description: /Common/NTP1
///       servers:
///         - time.facebook.com
///       timezone: America/Los_Angeles
/// ```
class Ntp extends pulumi.CustomResource {
  /// User defined description.
  late final pulumi.Output<String> description;
  /// Specifies the time servers that the system uses to update the system time.
  late final pulumi.Output<List<String>> servers;
  /// Specifies the time zone that you want to use for the system time.
  late final pulumi.Output<String?> timezone;

  /// Creates a new [Ntp].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Ntp]. {@macro pulumi_sys_ntp_ntp_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Ntp(
    String name, {
    NtpArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'f5bigip:sys/ntp:Ntp',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.description = registerOutput<String>('description');
    this.servers = registerOutput<List<String>>('servers');
    this.timezone = registerOutput<String?>('timezone');
  }

  /// Gets an existing [Ntp] resource's state with the given [name] and [id].
  static Ntp get(
    String name,
    pulumi.Input<String> id, {
    NtpState? state,
  }) {
    return Ntp._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Ntp._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'f5bigip:sys/ntp:Ntp',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.description = registerOutput<String>('description');
    this.servers = registerOutput<List<String>>('servers');
    this.timezone = registerOutput<String?>('timezone');
  }
}
