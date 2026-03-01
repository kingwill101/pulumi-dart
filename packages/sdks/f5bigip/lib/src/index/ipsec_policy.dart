import 'package:pulumi/pulumi.dart' as pulumi;
import 'ipsec_policy_args.dart';
import 'ipsec_policy_state.dart';

/// `f5bigip.IpsecPolicy` Manage IPSec policies on a BIG-IP
///
/// Resources should be named with their "full path". The full path is the combination of the partition + name (example: /Common/test-policy)
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as f5bigip from "@pulumi/f5bigip";
///
/// const test_policy = new f5bigip.IpsecPolicy("test-policy", {
///     name: "/Common/test-policy",
///     description: "created by terraform provider",
///     protocol: "esp",
///     mode: "tunnel",
///     tunnelLocalAddress: "192.168.1.1",
///     tunnelRemoteAddress: "10.10.1.1",
///     authAlgorithm: "sha1",
///     encryptAlgorithm: "3des",
///     lifetime: 3,
///     ipcomp: "deflate",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_f5bigip as f5bigip
///
/// test_policy = f5bigip.IpsecPolicy("test-policy",
///     name="/Common/test-policy",
///     description="created by terraform provider",
///     protocol="esp",
///     mode="tunnel",
///     tunnel_local_address="192.168.1.1",
///     tunnel_remote_address="10.10.1.1",
///     auth_algorithm="sha1",
///     encrypt_algorithm="3des",
///     lifetime=3,
///     ipcomp="deflate")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using F5BigIP = Pulumi.F5BigIP;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test_policy = new F5BigIP.IpsecPolicy("test-policy", new()
///     {
///         Name = "/Common/test-policy",
///         Description = "created by terraform provider",
///         Protocol = "esp",
///         Mode = "tunnel",
///         TunnelLocalAddress = "192.168.1.1",
///         TunnelRemoteAddress = "10.10.1.1",
///         AuthAlgorithm = "sha1",
///         EncryptAlgorithm = "3des",
///         Lifetime = 3,
///         Ipcomp = "deflate",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-f5bigip/sdk/v3/go/f5bigip"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := f5bigip.NewIpsecPolicy(ctx, "test-policy", &f5bigip.IpsecPolicyArgs{
/// 			Name:                pulumi.String("/Common/test-policy"),
/// 			Description:         pulumi.String("created by terraform provider"),
/// 			Protocol:            pulumi.String("esp"),
/// 			Mode:                pulumi.String("tunnel"),
/// 			TunnelLocalAddress:  pulumi.String("192.168.1.1"),
/// 			TunnelRemoteAddress: pulumi.String("10.10.1.1"),
/// 			AuthAlgorithm:       pulumi.String("sha1"),
/// 			EncryptAlgorithm:    pulumi.String("3des"),
/// 			Lifetime:            pulumi.Int(3),
/// 			Ipcomp:              pulumi.String("deflate"),
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
/// import com.pulumi.f5bigip.IpsecPolicy;
/// import com.pulumi.f5bigip.IpsecPolicyArgs;
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
///         var test_policy = new IpsecPolicy("test-policy", IpsecPolicyArgs.builder()
///             .name("/Common/test-policy")
///             .description("created by terraform provider")
///             .protocol("esp")
///             .mode("tunnel")
///             .tunnelLocalAddress("192.168.1.1")
///             .tunnelRemoteAddress("10.10.1.1")
///             .authAlgorithm("sha1")
///             .encryptAlgorithm("3des")
///             .lifetime(3)
///             .ipcomp("deflate")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test-policy:
///     type: f5bigip:IpsecPolicy
///     properties:
///       name: /Common/test-policy
///       description: created by terraform provider
///       protocol: esp
///       mode: tunnel
///       tunnelLocalAddress: 192.168.1.1
///       tunnelRemoteAddress: 10.10.1.1
///       authAlgorithm: sha1
///       encryptAlgorithm: 3des
///       lifetime: 3
///       ipcomp: deflate
/// ```
class IpsecPolicy extends pulumi.CustomResource {
  /// Specifies the algorithm to use for IKE authentication. Valid choices are: `sha1, sha256, sha384, sha512, aes-gcm128,
  /// aes-gcm192, aes-gcm256, aes-gmac128, aes-gmac192, aes-gmac256`
  late final pulumi.Output<String> authAlgorithm;
  /// Description of the IPSec policy.
  late final pulumi.Output<String> description;
  /// Specifies the algorithm to use for IKE encryption. Valid choices are: `null, 3des, aes128, aes192, aes256, aes-gmac256,
  /// aes-gmac192, aes-gmac128, aes-gcm256, aes-gcm192, aes-gcm256, aes-gcm128`
  late final pulumi.Output<String> encryptAlgorithm;
  /// Specifies whether to use IPComp encapsulation. Valid choices are: `none", null", deflate`
  late final pulumi.Output<String> ipcomp;
  /// Specifies the length of time before the IKE security association expires, in kilobytes.
  late final pulumi.Output<int> kbLifetime;
  /// Specifies the length of time before the IKE security association expires, in minutes.
  late final pulumi.Output<int> lifetime;
  /// Specifies the processing mode. Valid choices are: `transport, interface, isession, tunnel`
  late final pulumi.Output<String> mode;
  /// Name of the IPSec policy,it should be "full path".The full path is the combination of the partition + name of the IPSec policy.(For example `/Common/test-policy`)
  late final pulumi.Output<String> name;
  /// Specifies the Diffie-Hellman group to use for IKE Phase 2 negotiation. Valid choices are: `none, modp768, modp1024, modp1536, modp2048, modp3072,
  /// modp4096, modp6144, modp8192`
  late final pulumi.Output<String> perfectForwardSecrecy;
  /// Specifies the IPsec protocol. Valid choices are: `ah, esp`
  late final pulumi.Output<String> protocol;
  /// Specifies the local endpoint IP address of the IPsec tunnel. This parameter is only valid when mode is tunnel.
  late final pulumi.Output<String> tunnelLocalAddress;
  /// Specifies the remote endpoint IP address of the IPsec tunnel. This parameter is only valid when mode is tunnel.
  late final pulumi.Output<String> tunnelRemoteAddress;

  /// Creates a new [IpsecPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [IpsecPolicy]. {@macro pulumi_index_ipsec_policy_ipsec_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  IpsecPolicy(
    String name, {
    IpsecPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'f5bigip:index/ipsecPolicy:IpsecPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.authAlgorithm = registerOutput<String>('authAlgorithm');
    this.description = registerOutput<String>('description');
    this.encryptAlgorithm = registerOutput<String>('encryptAlgorithm');
    this.ipcomp = registerOutput<String>('ipcomp');
    this.kbLifetime = registerOutput<int>('kbLifetime');
    this.lifetime = registerOutput<int>('lifetime');
    this.mode = registerOutput<String>('mode');
    this.name = registerOutput<String>('name');
    this.perfectForwardSecrecy = registerOutput<String>('perfectForwardSecrecy');
    this.protocol = registerOutput<String>('protocol');
    this.tunnelLocalAddress = registerOutput<String>('tunnelLocalAddress');
    this.tunnelRemoteAddress = registerOutput<String>('tunnelRemoteAddress');
  }

  /// Gets an existing [IpsecPolicy] resource's state with the given [name] and [id].
  static IpsecPolicy get(
    String name,
    pulumi.Input<String> id, {
    IpsecPolicyState? state,
  }) {
    return IpsecPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  IpsecPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'f5bigip:index/ipsecPolicy:IpsecPolicy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.authAlgorithm = registerOutput<String>('authAlgorithm');
    this.description = registerOutput<String>('description');
    this.encryptAlgorithm = registerOutput<String>('encryptAlgorithm');
    this.ipcomp = registerOutput<String>('ipcomp');
    this.kbLifetime = registerOutput<int>('kbLifetime');
    this.lifetime = registerOutput<int>('lifetime');
    this.mode = registerOutput<String>('mode');
    this.name = registerOutput<String>('name');
    this.perfectForwardSecrecy = registerOutput<String>('perfectForwardSecrecy');
    this.protocol = registerOutput<String>('protocol');
    this.tunnelLocalAddress = registerOutput<String>('tunnelLocalAddress');
    this.tunnelRemoteAddress = registerOutput<String>('tunnelRemoteAddress');
  }
}
