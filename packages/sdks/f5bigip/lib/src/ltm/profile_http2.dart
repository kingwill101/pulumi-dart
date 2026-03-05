import 'package:pulumi/pulumi.dart' as pulumi;
import 'profile_http2_args.dart';
import 'profile_http2_state.dart';

/// `f5bigip.ltm.ProfileHttp2` Configures a custom profile_http2 for use by health checks.
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
/// const nyhttp2 = new f5bigip.ltm.ProfileHttp2("nyhttp2", {
///     name: "/Common/test-profile-http2",
///     frameSize: 2021,
///     receiveWindow: 31,
///     writeSize: 16380,
///     headerTableSize: 4092,
///     includeContentLength: "enabled",
///     enforceTlsRequirements: "enabled",
///     insertHeader: "disabled",
///     concurrentStreamsPerConnection: 30,
///     connectionIdleTimeout: 100,
///     activationModes: ["always"],
/// });
/// //Child Profile which inherits parent http2 profile
/// const nyhttp2_child = new f5bigip.ltm.ProfileHttp2("nyhttp2-child", {
///     name: "/Common/test-profile-http2-child",
///     defaultsFrom: nyhttp2.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_f5bigip as f5bigip
///
/// nyhttp2 = f5bigip.ltm.ProfileHttp2("nyhttp2",
///     name="/Common/test-profile-http2",
///     frame_size=2021,
///     receive_window=31,
///     write_size=16380,
///     header_table_size=4092,
///     include_content_length="enabled",
///     enforce_tls_requirements="enabled",
///     insert_header="disabled",
///     concurrent_streams_per_connection=30,
///     connection_idle_timeout=100,
///     activation_modes=["always"])
/// #Child Profile which inherits parent http2 profile
/// nyhttp2_child = f5bigip.ltm.ProfileHttp2("nyhttp2-child",
///     name="/Common/test-profile-http2-child",
///     defaults_from=nyhttp2.name)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using F5BigIP = Pulumi.F5BigIP;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var nyhttp2 = new F5BigIP.Ltm.ProfileHttp2("nyhttp2", new()
///     {
///         Name = "/Common/test-profile-http2",
///         FrameSize = 2021,
///         ReceiveWindow = 31,
///         WriteSize = 16380,
///         HeaderTableSize = 4092,
///         IncludeContentLength = "enabled",
///         EnforceTlsRequirements = "enabled",
///         InsertHeader = "disabled",
///         ConcurrentStreamsPerConnection = 30,
///         ConnectionIdleTimeout = 100,
///         ActivationModes = new[]
///         {
///             "always",
///         },
///     });
///
///     //Child Profile which inherits parent http2 profile
///     var nyhttp2_child = new F5BigIP.Ltm.ProfileHttp2("nyhttp2-child", new()
///     {
///         Name = "/Common/test-profile-http2-child",
///         DefaultsFrom = nyhttp2.Name,
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
/// 		nyhttp2, err := ltm.NewProfileHttp2(ctx, "nyhttp2", &ltm.ProfileHttp2Args{
/// 			Name:                           pulumi.String("/Common/test-profile-http2"),
/// 			FrameSize:                      pulumi.Int(2021),
/// 			ReceiveWindow:                  pulumi.Int(31),
/// 			WriteSize:                      pulumi.Int(16380),
/// 			HeaderTableSize:                pulumi.Int(4092),
/// 			IncludeContentLength:           pulumi.String("enabled"),
/// 			EnforceTlsRequirements:         pulumi.String("enabled"),
/// 			InsertHeader:                   pulumi.String("disabled"),
/// 			ConcurrentStreamsPerConnection: pulumi.Int(30),
/// 			ConnectionIdleTimeout:          pulumi.Int(100),
/// 			ActivationModes: pulumi.StringArray{
/// 				pulumi.String("always"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Child Profile which inherits parent http2 profile
/// 		_, err = ltm.NewProfileHttp2(ctx, "nyhttp2-child", &ltm.ProfileHttp2Args{
/// 			Name:         pulumi.String("/Common/test-profile-http2-child"),
/// 			DefaultsFrom: nyhttp2.Name,
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
/// import com.pulumi.f5bigip.ltm.ProfileHttp2;
/// import com.pulumi.f5bigip.ltm.ProfileHttp2Args;
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
///         var nyhttp2 = new ProfileHttp2("nyhttp2", ProfileHttp2Args.builder()
///             .name("/Common/test-profile-http2")
///             .frameSize(2021)
///             .receiveWindow(31)
///             .writeSize(16380)
///             .headerTableSize(4092)
///             .includeContentLength("enabled")
///             .enforceTlsRequirements("enabled")
///             .insertHeader("disabled")
///             .concurrentStreamsPerConnection(30)
///             .connectionIdleTimeout(100)
///             .activationModes("always")
///             .build());
///
///         //Child Profile which inherits parent http2 profile
///         var nyhttp2_child = new ProfileHttp2("nyhttp2-child", ProfileHttp2Args.builder()
///             .name("/Common/test-profile-http2-child")
///             .defaultsFrom(nyhttp2.name())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   nyhttp2:
///     type: f5bigip:ltm:ProfileHttp2
///     properties:
///       name: /Common/test-profile-http2
///       frameSize: 2021
///       receiveWindow: 31
///       writeSize: 16380
///       headerTableSize: 4092
///       includeContentLength: enabled
///       enforceTlsRequirements: enabled
///       insertHeader: disabled
///       concurrentStreamsPerConnection: 30
///       connectionIdleTimeout: 100
///       activationModes:
///         - always
///   #Child Profile which inherits parent http2 profile
///   nyhttp2-child:
///     type: f5bigip:ltm:ProfileHttp2
///     properties:
///       name: /Common/test-profile-http2-child
///       defaultsFrom: ${nyhttp2.name}
/// ```
class ProfileHttp2 extends pulumi.CustomResource {
  /// This setting specifies the condition that will cause the BIG-IP system to handle an incoming connection as an HTTP/2 connection, Allowed values : `[“alpn”]` (or) `[“always”]`.
  late final pulumi.Output<List<String>> activationModes;
  /// Specifies how many concurrent requests are allowed to be outstanding on a single HTTP/2 connection.
  late final pulumi.Output<int> concurrentStreamsPerConnection;
  /// Specifies the number of seconds that a connection is idle before the connection is eligible for deletion.
  late final pulumi.Output<int> connectionIdleTimeout;
  /// Specifies the profile that you want to use as the parent profile. Your new profile inherits all settings and values from the parent profile specified.
  late final pulumi.Output<String> defaultsFrom;
  /// Enable or disable enforcement of TLS requirements,Allowed Values : `"enabled"/"disabled"` [Default:`"enabled"`].
  late final pulumi.Output<String> enforceTlsRequirements;
  /// The size of the data frames, in bytes, that the HTTP/2 protocol sends to the client. `Default: 2048`.
  late final pulumi.Output<int> frameSize;
  /// The size of the header table, in KB, for the HTTP headers that the HTTP/2 protocol compresses to save bandwidth.
  late final pulumi.Output<int> headerTableSize;
  /// Enable to include content-length in HTTP/2 headers,Default : disabled
  late final pulumi.Output<String> includeContentLength;
  /// This setting specifies whether the BIG-IP system should add an HTTP header to the HTTP request to show that the request was received over HTTP/2, Allowed Values : `"enabled"/"disabled"` [ Default: `"disabled"`].
  late final pulumi.Output<String> insertHeader;
  /// This setting specifies the name of the header that the BIG-IP system will add to the HTTP request when the Insert Header is enabled.
  late final pulumi.Output<String> insertHeaderName;
  /// Name of Profile should be full path.The full path is the combination of the `partition + profile name`,For example `/Common/test-http2-profile`.
  late final pulumi.Output<String> name;
  /// The flow-control size for upload streams, in KB. `Default: 32`.
  late final pulumi.Output<int> receiveWindow;
  /// The total size of combined data frames, in bytes, that the HTTP/2 protocol sends in a single write function. `Default: 16384`".
  late final pulumi.Output<int> writeSize;

  /// Creates a new [ProfileHttp2].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ProfileHttp2]. {@macro pulumi_ltm_profile_http2_profile_http2_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ProfileHttp2(
    String name, {
    ProfileHttp2Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'f5bigip:ltm/profileHttp2:ProfileHttp2',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    activationModes = registerOutput<List<String>>('activationModes');
    concurrentStreamsPerConnection = registerOutput<int>('concurrentStreamsPerConnection');
    connectionIdleTimeout = registerOutput<int>('connectionIdleTimeout');
    defaultsFrom = registerOutput<String>('defaultsFrom');
    enforceTlsRequirements = registerOutput<String>('enforceTlsRequirements');
    frameSize = registerOutput<int>('frameSize');
    headerTableSize = registerOutput<int>('headerTableSize');
    includeContentLength = registerOutput<String>('includeContentLength');
    insertHeader = registerOutput<String>('insertHeader');
    insertHeaderName = registerOutput<String>('insertHeaderName');
    this.name = registerOutput<String>('name');
    receiveWindow = registerOutput<int>('receiveWindow');
    writeSize = registerOutput<int>('writeSize');
  }

  /// Gets an existing [ProfileHttp2] resource's state with the given [name] and [id].
  static ProfileHttp2 get(
    String name,
    pulumi.Input<String> id, {
    ProfileHttp2State? state,
  }) {
    return ProfileHttp2._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ProfileHttp2._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'f5bigip:ltm/profileHttp2:ProfileHttp2',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    activationModes = registerOutput<List<String>>('activationModes');
    concurrentStreamsPerConnection = registerOutput<int>('concurrentStreamsPerConnection');
    connectionIdleTimeout = registerOutput<int>('connectionIdleTimeout');
    defaultsFrom = registerOutput<String>('defaultsFrom');
    enforceTlsRequirements = registerOutput<String>('enforceTlsRequirements');
    frameSize = registerOutput<int>('frameSize');
    headerTableSize = registerOutput<int>('headerTableSize');
    includeContentLength = registerOutput<String>('includeContentLength');
    insertHeader = registerOutput<String>('insertHeader');
    insertHeaderName = registerOutput<String>('insertHeaderName');
    this.name = registerOutput<String>('name');
    receiveWindow = registerOutput<int>('receiveWindow');
    writeSize = registerOutput<int>('writeSize');
  }
}
