import 'package:pulumi/pulumi.dart' as pulumi;
import 'profile_fast_http_args.dart';
import 'profile_fast_http_state.dart';

/// `f5bigip.ltm.ProfileFastHttp` Configures a custom profile_fasthttp for use by health checks.
///
/// For resources should be named with their "full path". The full path is the combination of the partition + name of the resource. For example /Common/my-pool.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as f5bigip from "@pulumi/f5bigip";
///
/// const sjfasthttpprofile = new f5bigip.ltm.ProfileFastHttp("sjfasthttpprofile", {
///     name: "/Common/sjfasthttpprofile",
///     defaultsFrom: "/Common/fasthttp",
///     idleTimeout: 300,
///     connpoolidleTimeoutoverride: 0,
///     connpoolMaxreuse: 2,
///     connpoolMaxsize: 2048,
///     connpoolMinsize: 0,
///     connpoolReplenish: "enabled",
///     connpoolStep: 4,
///     forcehttp10response: "disabled",
///     maxheaderSize: 32768,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_f5bigip as f5bigip
///
/// sjfasthttpprofile = f5bigip.ltm.ProfileFastHttp("sjfasthttpprofile",
///     name="/Common/sjfasthttpprofile",
///     defaults_from="/Common/fasthttp",
///     idle_timeout=300,
///     connpoolidle_timeoutoverride=0,
///     connpool_maxreuse=2,
///     connpool_maxsize=2048,
///     connpool_minsize=0,
///     connpool_replenish="enabled",
///     connpool_step=4,
///     forcehttp10response="disabled",
///     maxheader_size=32768)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using F5BigIP = Pulumi.F5BigIP;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var sjfasthttpprofile = new F5BigIP.Ltm.ProfileFastHttp("sjfasthttpprofile", new()
///     {
///         Name = "/Common/sjfasthttpprofile",
///         DefaultsFrom = "/Common/fasthttp",
///         IdleTimeout = 300,
///         ConnpoolidleTimeoutoverride = 0,
///         ConnpoolMaxreuse = 2,
///         ConnpoolMaxsize = 2048,
///         ConnpoolMinsize = 0,
///         ConnpoolReplenish = "enabled",
///         ConnpoolStep = 4,
///         Forcehttp10response = "disabled",
///         MaxheaderSize = 32768,
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
/// 		_, err := ltm.NewProfileFastHttp(ctx, "sjfasthttpprofile", &ltm.ProfileFastHttpArgs{
/// 			Name:                        pulumi.String("/Common/sjfasthttpprofile"),
/// 			DefaultsFrom:                pulumi.String("/Common/fasthttp"),
/// 			IdleTimeout:                 pulumi.Int(300),
/// 			ConnpoolidleTimeoutoverride: pulumi.Int(0),
/// 			ConnpoolMaxreuse:            pulumi.Int(2),
/// 			ConnpoolMaxsize:             pulumi.Int(2048),
/// 			ConnpoolMinsize:             pulumi.Int(0),
/// 			ConnpoolReplenish:           pulumi.String("enabled"),
/// 			ConnpoolStep:                pulumi.Int(4),
/// 			Forcehttp10response:         pulumi.String("disabled"),
/// 			MaxheaderSize:               pulumi.Int(32768),
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
/// import com.pulumi.f5bigip.ltm.ProfileFastHttp;
/// import com.pulumi.f5bigip.ltm.ProfileFastHttpArgs;
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
///         var sjfasthttpprofile = new ProfileFastHttp("sjfasthttpprofile", ProfileFastHttpArgs.builder()
///             .name("/Common/sjfasthttpprofile")
///             .defaultsFrom("/Common/fasthttp")
///             .idleTimeout(300)
///             .connpoolidleTimeoutoverride(0)
///             .connpoolMaxreuse(2)
///             .connpoolMaxsize(2048)
///             .connpoolMinsize(0)
///             .connpoolReplenish("enabled")
///             .connpoolStep(4)
///             .forcehttp10response("disabled")
///             .maxheaderSize(32768)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   sjfasthttpprofile:
///     type: f5bigip:ltm:ProfileFastHttp
///     properties:
///       name: /Common/sjfasthttpprofile
///       defaultsFrom: /Common/fasthttp
///       idleTimeout: 300
///       connpoolidleTimeoutoverride: 0
///       connpoolMaxreuse: 2
///       connpoolMaxsize: 2048
///       connpoolMinsize: 0
///       connpoolReplenish: enabled
///       connpoolStep: 4
///       forcehttp10response: disabled
///       maxheaderSize: 32768
/// ```
class ProfileFastHttp extends pulumi.CustomResource {
  /// Specifies the maximum number of times that the system can re-use a current connection. The default value is 0 (zero).
  late final pulumi.Output<int> connpoolMaxreuse;
  /// Specifies the maximum number of connections to a load balancing pool. A setting of 0 specifies that a pool can accept an unlimited number of connections. The default value is 2048.
  late final pulumi.Output<int> connpoolMaxsize;
  /// Specifies the minimum number of connections to a load balancing pool. A setting of 0 specifies that there is no minimum. The default value is 10.
  late final pulumi.Output<int> connpoolMinsize;
  /// The default value is enabled. When this option is enabled, the system replenishes the number of connections to a load balancing pool to the number of connections that existed when the server closed the connection to the pool. When disabled, the system replenishes the connection that was closed by the server, only when there are fewer connections to the pool than the number of connections set in the connpool-min-size connections option. Also see the connpool-min-size option..
  late final pulumi.Output<String> connpoolReplenish;
  /// Specifies the increment in which the system makes additional connections available, when all available connections are in use. The default value is 4.
  late final pulumi.Output<int> connpoolStep;
  /// Specifies the number of seconds after which a server-side connection in a OneConnect pool is eligible for deletion, when the connection has no traffic.The value of this option overrides the idle-timeout value that you specify. The default value is 0 (zero) seconds, which disables the override setting.
  late final pulumi.Output<int> connpoolidleTimeoutoverride;
  /// Specifies the profile that you want to use as the parent profile. Your new profile inherits all settings and values from the parent profile specified.
  late final pulumi.Output<String?> defaultsFrom;
  /// Specifies whether to rewrite the HTTP version in the status line of the server to HTTP 1.0 to discourage the client from pipelining or chunking data. The default value is disabled.
  late final pulumi.Output<String> forcehttp10response;
  /// Specifies an idle timeout in seconds. This setting specifies the number of seconds that a connection is idle before the connection is eligible for deletion.When you specify an idle timeout for the Fast L4 profile, the value must be greater than the bigdb database variable Pva.Scrub time in msec for it to work properly.The default value is 300 seconds.
  late final pulumi.Output<int> idleTimeout;
  /// Specifies the maximum amount of HTTP header data that the system buffers before making a load balancing decision. The default setting is 32768.
  late final pulumi.Output<int> maxheaderSize;
  /// Name of the profile_fasthttp
  late final pulumi.Output<String> name;

  /// Creates a new [ProfileFastHttp].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ProfileFastHttp]. {@macro pulumi_ltm_profile_fast_http_profile_fast_http_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ProfileFastHttp(
    String name, {
    ProfileFastHttpArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'f5bigip:ltm/profileFastHttp:ProfileFastHttp',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.connpoolMaxreuse = registerOutput<int>('connpoolMaxreuse');
    this.connpoolMaxsize = registerOutput<int>('connpoolMaxsize');
    this.connpoolMinsize = registerOutput<int>('connpoolMinsize');
    this.connpoolReplenish = registerOutput<String>('connpoolReplenish');
    this.connpoolStep = registerOutput<int>('connpoolStep');
    this.connpoolidleTimeoutoverride = registerOutput<int>('connpoolidleTimeoutoverride');
    this.defaultsFrom = registerOutput<String?>('defaultsFrom');
    this.forcehttp10response = registerOutput<String>('forcehttp10response');
    this.idleTimeout = registerOutput<int>('idleTimeout');
    this.maxheaderSize = registerOutput<int>('maxheaderSize');
    this.name = registerOutput<String>('name');
  }

  /// Gets an existing [ProfileFastHttp] resource's state with the given [name] and [id].
  static ProfileFastHttp get(
    String name,
    pulumi.Input<String> id, {
    ProfileFastHttpState? state,
  }) {
    return ProfileFastHttp._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ProfileFastHttp._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'f5bigip:ltm/profileFastHttp:ProfileFastHttp',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.connpoolMaxreuse = registerOutput<int>('connpoolMaxreuse');
    this.connpoolMaxsize = registerOutput<int>('connpoolMaxsize');
    this.connpoolMinsize = registerOutput<int>('connpoolMinsize');
    this.connpoolReplenish = registerOutput<String>('connpoolReplenish');
    this.connpoolStep = registerOutput<int>('connpoolStep');
    this.connpoolidleTimeoutoverride = registerOutput<int>('connpoolidleTimeoutoverride');
    this.defaultsFrom = registerOutput<String?>('defaultsFrom');
    this.forcehttp10response = registerOutput<String>('forcehttp10response');
    this.idleTimeout = registerOutput<int>('idleTimeout');
    this.maxheaderSize = registerOutput<int>('maxheaderSize');
    this.name = registerOutput<String>('name');
  }
}
