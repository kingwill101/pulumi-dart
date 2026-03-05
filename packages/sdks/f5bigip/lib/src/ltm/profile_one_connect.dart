import 'package:pulumi/pulumi.dart' as pulumi;
import 'profile_one_connect_args.dart';
import 'profile_one_connect_state.dart';

/// `f5bigip.ltm.ProfileOneConnect` Configures a custom profile_oneconnect for use by health checks.
///
/// Resources should be named with their "full path". The full path is the combination of the partition + name (example: /Common/my-pool ) or  partition + directory + name of the resource  (example: /Common/test/my-pool )
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as f5bigip from "@pulumi/f5bigip";
///
/// const test_oneconnect = new f5bigip.ltm.ProfileOneConnect("test-oneconnect", {name: "/Common/test-oneconnect"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_f5bigip as f5bigip
///
/// test_oneconnect = f5bigip.ltm.ProfileOneConnect("test-oneconnect", name="/Common/test-oneconnect")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using F5BigIP = Pulumi.F5BigIP;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test_oneconnect = new F5BigIP.Ltm.ProfileOneConnect("test-oneconnect", new()
///     {
///         Name = "/Common/test-oneconnect",
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
/// 		_, err := ltm.NewProfileOneConnect(ctx, "test-oneconnect", &ltm.ProfileOneConnectArgs{
/// 			Name: pulumi.String("/Common/test-oneconnect"),
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
/// import com.pulumi.f5bigip.ltm.ProfileOneConnect;
/// import com.pulumi.f5bigip.ltm.ProfileOneConnectArgs;
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
///         var test_oneconnect = new ProfileOneConnect("test-oneconnect", ProfileOneConnectArgs.builder()
///             .name("/Common/test-oneconnect")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test-oneconnect:
///     type: f5bigip:ltm:ProfileOneConnect
///     properties:
///       name: /Common/test-oneconnect
/// ```
///
///
/// ## Import
///
/// BIG-IP LTM oneconnect profiles can be imported using the `name` , e.g.
///
/// ```sh
/// $ pulumi import f5bigip:ltm/profileOneConnect:ProfileOneConnect test-oneconnect /Common/test-oneconnect
/// ```
class ProfileOneConnect extends pulumi.CustomResource {
  /// Specifies the profile that you want to use as the parent profile. Your new profile inherits all settings and values from the parent profile specified.
  late final pulumi.Output<String> defaultsFrom;
  /// Specifies the number of seconds that a connection is idle before the connection flow is eligible for deletion. Possible values are `disabled`, `indefinite`, or a numeric value that you specify. The default value is `disabled`
  late final pulumi.Output<String> idleTimeoutOverride;
  /// Controls how connection limits are enforced in conjunction with OneConnect. The default is `None`. Supported Values: `[None,idle,strict]`
  late final pulumi.Output<String> limitType;
  /// Specifies the maximum age in number of seconds allowed for a connection in the connection reuse pool. For any connection with an age higher than this value, the system removes that connection from the reuse pool. The default value is `86400`.
  late final pulumi.Output<int> maxAge;
  /// Specifies the maximum number of times that a server-side connection can be reused. The default value is `1000`.
  late final pulumi.Output<int> maxReuse;
  /// Specifies the maximum number of connections that the system holds in the connection reuse pool. If the pool is already full, then the server-side connection closes after the response is completed. The default value is `10000`.
  late final pulumi.Output<int> maxSize;
  /// Name of Profile should be full path.The full path is the combination of the `partition + profile_name`,For example `/Common/test-oneconnect-profile`.
  late final pulumi.Output<String> name;
  /// Displays the administrative partition within which this profile resides
  late final pulumi.Output<String> partition;
  /// Specify if you want to share the pool, default value is `disabled`.
  late final pulumi.Output<String> sharePools;
  /// Specifies a source IP mask. The default value is `0.0.0.0`. The system applies the value of this option to the source address to determine its eligibility for reuse. A mask of 0.0.0.0 causes the system to share reused connections across all clients. A host mask (all 1's in binary), causes the system to share only those reused connections originating from the same client IP address.
  late final pulumi.Output<String> sourceMask;

  /// Creates a new [ProfileOneConnect].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ProfileOneConnect]. {@macro pulumi_ltm_profile_one_connect_profile_one_connect_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ProfileOneConnect(
    String name, {
    ProfileOneConnectArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'f5bigip:ltm/profileOneConnect:ProfileOneConnect',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    defaultsFrom = registerOutput<String>('defaultsFrom');
    idleTimeoutOverride = registerOutput<String>('idleTimeoutOverride');
    limitType = registerOutput<String>('limitType');
    maxAge = registerOutput<int>('maxAge');
    maxReuse = registerOutput<int>('maxReuse');
    maxSize = registerOutput<int>('maxSize');
    this.name = registerOutput<String>('name');
    partition = registerOutput<String>('partition');
    sharePools = registerOutput<String>('sharePools');
    sourceMask = registerOutput<String>('sourceMask');
  }

  /// Gets an existing [ProfileOneConnect] resource's state with the given [name] and [id].
  static ProfileOneConnect get(
    String name,
    pulumi.Input<String> id, {
    ProfileOneConnectState? state,
  }) {
    return ProfileOneConnect._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ProfileOneConnect._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'f5bigip:ltm/profileOneConnect:ProfileOneConnect',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    defaultsFrom = registerOutput<String>('defaultsFrom');
    idleTimeoutOverride = registerOutput<String>('idleTimeoutOverride');
    limitType = registerOutput<String>('limitType');
    maxAge = registerOutput<int>('maxAge');
    maxReuse = registerOutput<int>('maxReuse');
    maxSize = registerOutput<int>('maxSize');
    this.name = registerOutput<String>('name');
    partition = registerOutput<String>('partition');
    sharePools = registerOutput<String>('sharePools');
    sourceMask = registerOutput<String>('sourceMask');
  }
}
