import 'package:pulumi/pulumi.dart' as pulumi;
import 'profile_tcp_args.dart';
import 'profile_tcp_state.dart';

/// `f5bigip.ltm.ProfileTcp` Configures a custom TCP LTM Profile for use by health checks.
///
/// Resources should be named with their `full path`. The full path is the combination of the `partition + name` (example: /Common/my-pool ) or  `partition + directory + name` of the resource  (example: /Common/test/my-pool )
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as f5bigip from "@pulumi/f5bigip";
///
/// const sanjose_tcp_lan_profile = new f5bigip.ltm.ProfileTcp("sanjose-tcp-lan-profile", {
///     name: "/Common/sanjose-tcp-lan-profile",
///     idleTimeout: 200,
///     closeWaitTimeout: 5,
///     finwait2timeout: 5,
///     finwaitTimeout: 300,
///     keepaliveInterval: 1700,
///     deferredAccept: "enabled",
///     fastOpen: "enabled",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_f5bigip as f5bigip
///
/// sanjose_tcp_lan_profile = f5bigip.ltm.ProfileTcp("sanjose-tcp-lan-profile",
///     name="/Common/sanjose-tcp-lan-profile",
///     idle_timeout=200,
///     close_wait_timeout=5,
///     finwait2timeout=5,
///     finwait_timeout=300,
///     keepalive_interval=1700,
///     deferred_accept="enabled",
///     fast_open="enabled")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using F5BigIP = Pulumi.F5BigIP;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var sanjose_tcp_lan_profile = new F5BigIP.Ltm.ProfileTcp("sanjose-tcp-lan-profile", new()
///     {
///         Name = "/Common/sanjose-tcp-lan-profile",
///         IdleTimeout = 200,
///         CloseWaitTimeout = 5,
///         Finwait2timeout = 5,
///         FinwaitTimeout = 300,
///         KeepaliveInterval = 1700,
///         DeferredAccept = "enabled",
///         FastOpen = "enabled",
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
/// 		_, err := ltm.NewProfileTcp(ctx, "sanjose-tcp-lan-profile", &ltm.ProfileTcpArgs{
/// 			Name:              pulumi.String("/Common/sanjose-tcp-lan-profile"),
/// 			IdleTimeout:       pulumi.Int(200),
/// 			CloseWaitTimeout:  pulumi.Int(5),
/// 			Finwait2timeout:   pulumi.Int(5),
/// 			FinwaitTimeout:    pulumi.Int(300),
/// 			KeepaliveInterval: pulumi.Int(1700),
/// 			DeferredAccept:    pulumi.String("enabled"),
/// 			FastOpen:          pulumi.String("enabled"),
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
/// import com.pulumi.f5bigip.ltm.ProfileTcp;
/// import com.pulumi.f5bigip.ltm.ProfileTcpArgs;
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
///         var sanjose_tcp_lan_profile = new ProfileTcp("sanjose-tcp-lan-profile", ProfileTcpArgs.builder()
///             .name("/Common/sanjose-tcp-lan-profile")
///             .idleTimeout(200)
///             .closeWaitTimeout(5)
///             .finwait2timeout(5)
///             .finwaitTimeout(300)
///             .keepaliveInterval(1700)
///             .deferredAccept("enabled")
///             .fastOpen("enabled")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   sanjose-tcp-lan-profile:
///     type: f5bigip:ltm:ProfileTcp
///     properties:
///       name: /Common/sanjose-tcp-lan-profile
///       idleTimeout: 200
///       closeWaitTimeout: 5
///       finwait2timeout: 5
///       finwaitTimeout: 300
///       keepaliveInterval: 1700
///       deferredAccept: enabled
///       fastOpen: enabled
/// ```
///
///
/// ## Importing
///
/// An existing tcp profile can be imported into this resource by supplying tcp profile Name in `full path` as `id`.
/// An example is below:
/// ```sh
/// $ terraform import bigip_ltm_profile_tcp.tcp-lan-profile-import /Common/test-tcp-lan-profile
/// ```
class ProfileTcp extends pulumi.CustomResource {
  /// Specifies the number of seconds that a connection remains in a LAST-ACK state before quitting. A value of 0 represents a term of forever (or until the maxrtx of the FIN state). The default value is 5 seconds.
  late final pulumi.Output<int> closeWaitTimeout;
  /// Specifies the algorithm to use to share network resources among competing users to reduce congestion. The default is High Speed.
  late final pulumi.Output<String?> congestionControl;
  /// Specifies the profile that you want to use as the parent profile. Your new profile inherits all settings and values from the parent profile specified.
  late final pulumi.Output<String> defaultsFrom;
  /// Specifies, when enabled, that the system defers allocation of the connection chain context until the client response is received. This option is useful for dealing with 3-way handshake DOS attacks. The default value is disabled.
  late final pulumi.Output<String> deferredAccept;
  /// Specifies, when checked (enabled), that the system can send fewer than one ACK (acknowledgment) segment per data segment received. By default, this setting is enabled.
  late final pulumi.Output<String?> delayedAcks;
  /// Enabling this setting allows TCP to assume a packet is lost after fewer than the standard number of duplicate ACKs, if there is no way to send new data and generate more duplicate ACKs.
  late final pulumi.Output<String?> earlyRetransmit;
  /// When enabled, permits TCP Fast Open, allowing properly equipped TCP clients to send data with the SYN packet. Default is `enabled`. If `fast_open` set to `enabled`, argument `verified_accept` can't be set to `enabled`.
  late final pulumi.Output<String> fastOpen;
  /// Specifies the number of seconds that a connection is in the FIN-WAIT-2 state before quitting. The default value is 300 seconds. A value of 0 (zero) represents a term of forever (or until the maxrtx of the FIN state).
  late final pulumi.Output<int> finwait2timeout;
  /// Specifies the number of seconds that a connection is in the FIN-WAIT-1 or closing state before quitting. The default value is 5 seconds. A value of 0 (zero) represents a term of forever (or until the maxrtx of the FIN state). You can also specify immediate or indefinite.
  late final pulumi.Output<int> finwaitTimeout;
  /// Specifies the number of seconds that a connection is idle before the connection is eligible for deletion. The default value is 300 seconds.
  late final pulumi.Output<int> idleTimeout;
  /// Specifies the initial congestion window size for connections to this destination. Actual window size is this value multiplied by the MSS (Maximum Segment Size) for the same connection. The default is 10. Valid values range from 0 to 64.
  late final pulumi.Output<int?> initialCongestionWindowsize;
  /// Specifies the keep alive probe interval, in seconds. The default value is 1800 seconds.
  late final pulumi.Output<int> keepaliveInterval;
  /// Specifies whether the system applies Nagle's algorithm to reduce the number of short segments on the network.If you select Auto, the system determines whether to use Nagle's algorithm based on network conditions. By default, this setting is disabled.
  late final pulumi.Output<String?> nagle;
  /// Name of the LTM TCP Profile,name should be `full path`. The full path is the combination of the `partition + name` (example: /Common/my-pool ) or  `partition + directory + name` of the resource  (example: /Common/test/my-pool )
  late final pulumi.Output<String> name;
  /// name of partition
  late final pulumi.Output<String?> partition;
  /// Specifies the proxy buffer level, in bytes, at which the receive window is closed.
  late final pulumi.Output<int?> proxybufferHigh;
  /// Specifies the maximum advertised RECEIVE window size. This value represents the maximum number of bytes to which the RECEIVE window can scale. The default is 65535 bytes.
  late final pulumi.Output<int?> receiveWindowsize;
  /// Specifies the SEND window size. The default is 131072 bytes.
  late final pulumi.Output<int?> sendBuffersize;
  /// Enabling this setting allows TCP to send a probe segment to trigger fast recovery instead of recovering a loss via a retransmission timeout,By default, this setting is enabled.
  late final pulumi.Output<String?> taillossProbe;
  /// Using this setting enabled, the system can recycle a wait-state connection immediately upon receipt of a new connection request instead of having to wait until the connection times out of the wait state. By default, this setting is enabled.
  late final pulumi.Output<String?> timewaitRecycle;
  /// Specifies, when checked (enabled), that the system can actually communicate with the server before establishing a client connection. To determine this, the system sends the server a SYN packet before responding to the client's SYN with a SYN-ACK. When unchecked, the system accepts the client connection before selecting a server to talk to. By default, this setting is `disabled`.
  late final pulumi.Output<String?> verifiedAccept;
  /// Specifies the timeout in milliseconds for terminating a connection with an effective zero length TCP transmit window.
  late final pulumi.Output<int?> zerowindowTimeout;

  /// Creates a new [ProfileTcp].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ProfileTcp]. {@macro pulumi_ltm_profile_tcp_profile_tcp_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ProfileTcp(
    String name, {
    ProfileTcpArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'f5bigip:ltm/profileTcp:ProfileTcp',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    closeWaitTimeout = registerOutput<int>('closeWaitTimeout');
    congestionControl = registerOutput<String?>('congestionControl');
    defaultsFrom = registerOutput<String>('defaultsFrom');
    deferredAccept = registerOutput<String>('deferredAccept');
    delayedAcks = registerOutput<String?>('delayedAcks');
    earlyRetransmit = registerOutput<String?>('earlyRetransmit');
    fastOpen = registerOutput<String>('fastOpen');
    finwait2timeout = registerOutput<int>('finwait2timeout');
    finwaitTimeout = registerOutput<int>('finwaitTimeout');
    idleTimeout = registerOutput<int>('idleTimeout');
    initialCongestionWindowsize = registerOutput<int?>('initialCongestionWindowsize');
    keepaliveInterval = registerOutput<int>('keepaliveInterval');
    nagle = registerOutput<String?>('nagle');
    this.name = registerOutput<String>('name');
    partition = registerOutput<String?>('partition');
    proxybufferHigh = registerOutput<int?>('proxybufferHigh');
    receiveWindowsize = registerOutput<int?>('receiveWindowsize');
    sendBuffersize = registerOutput<int?>('sendBuffersize');
    taillossProbe = registerOutput<String?>('taillossProbe');
    timewaitRecycle = registerOutput<String?>('timewaitRecycle');
    verifiedAccept = registerOutput<String?>('verifiedAccept');
    zerowindowTimeout = registerOutput<int?>('zerowindowTimeout');
  }

  /// Gets an existing [ProfileTcp] resource's state with the given [name] and [id].
  static ProfileTcp get(
    String name,
    pulumi.Input<String> id, {
    ProfileTcpState? state,
  }) {
    return ProfileTcp._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ProfileTcp._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'f5bigip:ltm/profileTcp:ProfileTcp',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    closeWaitTimeout = registerOutput<int>('closeWaitTimeout');
    congestionControl = registerOutput<String?>('congestionControl');
    defaultsFrom = registerOutput<String>('defaultsFrom');
    deferredAccept = registerOutput<String>('deferredAccept');
    delayedAcks = registerOutput<String?>('delayedAcks');
    earlyRetransmit = registerOutput<String?>('earlyRetransmit');
    fastOpen = registerOutput<String>('fastOpen');
    finwait2timeout = registerOutput<int>('finwait2timeout');
    finwaitTimeout = registerOutput<int>('finwaitTimeout');
    idleTimeout = registerOutput<int>('idleTimeout');
    initialCongestionWindowsize = registerOutput<int?>('initialCongestionWindowsize');
    keepaliveInterval = registerOutput<int>('keepaliveInterval');
    nagle = registerOutput<String?>('nagle');
    this.name = registerOutput<String>('name');
    partition = registerOutput<String?>('partition');
    proxybufferHigh = registerOutput<int?>('proxybufferHigh');
    receiveWindowsize = registerOutput<int?>('receiveWindowsize');
    sendBuffersize = registerOutput<int?>('sendBuffersize');
    taillossProbe = registerOutput<String?>('taillossProbe');
    timewaitRecycle = registerOutput<String?>('timewaitRecycle');
    verifiedAccept = registerOutput<String?>('verifiedAccept');
    zerowindowTimeout = registerOutput<int?>('zerowindowTimeout');
  }
}
