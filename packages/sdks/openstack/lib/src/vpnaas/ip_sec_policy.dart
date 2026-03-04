import 'package:pulumi/pulumi.dart' as pulumi;
import 'ip_sec_policy_args.dart';
import 'ip_sec_policy_state.dart';

/// Manages a V2 Neutron IPSec policy resource within OpenStack.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as openstack from "@pulumi/openstack";
///
/// const policy1 = new openstack.vpnaas.IpSecPolicy("policy_1", {name: "my_policy"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
///
/// policy1 = openstack.vpnaas.IpSecPolicy("policy_1", name="my_policy")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using OpenStack = Pulumi.OpenStack;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy1 = new OpenStack.VPNaaS.IpSecPolicy("policy_1", new()
///     {
///         Name = "my_policy",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-openstack/sdk/v5/go/openstack/vpnaas"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := vpnaas.NewIpSecPolicy(ctx, "policy_1", &vpnaas.IpSecPolicyArgs{
/// 			Name: pulumi.String("my_policy"),
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
/// import com.pulumi.openstack.vpnaas.IpSecPolicy;
/// import com.pulumi.openstack.vpnaas.IpSecPolicyArgs;
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
///         var policy1 = new IpSecPolicy("policy1", IpSecPolicyArgs.builder()
///             .name("my_policy")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy1:
///     type: openstack:vpnaas:IpSecPolicy
///     name: policy_1
///     properties:
///       name: my_policy
/// ```
///
///
/// ## Import
///
/// Policies can be imported using the `id`, e.g.
///
/// ```sh
/// $ pulumi import openstack:vpnaas/ipSecPolicy:IpSecPolicy policy_1 832cb7f3-59fe-40cf-8f64-8350ffc03272
/// ```
class IpSecPolicy extends pulumi.CustomResource {
  /// The authentication hash algorithm. Valid values are sha1, sha256, sha384, sha512,
  /// aes-xcbc, aes-cmac. Default is sha1.
  /// Changing this updates the algorithm of the existing policy.
  late final pulumi.Output<String> authAlgorithm;

  /// The human-readable description for the policy.
  /// Changing this updates the description of the existing policy.
  late final pulumi.Output<String?> description;

  /// The encapsulation mode. Valid values are tunnel and transport. Default is tunnel.
  /// Changing this updates the existing policy.
  late final pulumi.Output<String> encapsulationMode;

  /// The encryption algorithm. Valid values are 3des, aes-128, aes-192, aes-256,
  /// aes-KKK-ctr, aes-KKK-ccm-II, aes-KKK-gcm-II (with KKK = 128/192/256 bits key size and II = 8/12/16 octets ICV).
  /// The default value is aes-128. Changing this updates the existing policy.
  late final pulumi.Output<String> encryptionAlgorithm;

  /// The lifetime of the security association. Consists of Unit and Value.
  late final pulumi.Output<List<Map<String, dynamic>>> lifetimes;

  /// The name of the policy. Changing this updates the name of
  /// the existing policy.
  late final pulumi.Output<String> name;

  /// The perfect forward secrecy mode. Valid values are group2, group5 and group14 to group31.
  /// Default is group5. Changing this updates the existing policy.
  late final pulumi.Output<String> pfs;

  /// The region in which to obtain the V2 Networking client.
  /// A Networking client is needed to create an IPSec policy. If omitted, the
  /// `region` argument of the provider is used. Changing this creates a new
  /// policy.
  late final pulumi.Output<String> region;

  /// The owner of the policy. Required if admin wants to
  /// create a policy for another project. Changing this creates a new policy.
  late final pulumi.Output<String> tenantId;

  /// The transform protocol. Valid values are esp, ah and ah-esp.
  /// Changing this updates the existing policy. Default is ESP.
  late final pulumi.Output<String> transformProtocol;

  /// Map of additional options.
  late final pulumi.Output<Map<String, String>?> valueSpecs;

  /// Creates a new [IpSecPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [IpSecPolicy]. {@macro pulumi_vpnaas_ip_sec_policy_ip_sec_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  IpSecPolicy(
    String name, {
    IpSecPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'openstack:vpnaas/ipSecPolicy:IpSecPolicy',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    authAlgorithm = registerOutput<String>('authAlgorithm');
    description = registerOutput<String?>('description');
    encapsulationMode = registerOutput<String>('encapsulationMode');
    encryptionAlgorithm = registerOutput<String>('encryptionAlgorithm');
    lifetimes = registerOutput<List<Map<String, dynamic>>>('lifetimes');
    this.name = registerOutput<String>('name');
    pfs = registerOutput<String>('pfs');
    region = registerOutput<String>('region');
    tenantId = registerOutput<String>('tenantId');
    transformProtocol = registerOutput<String>('transformProtocol');
    valueSpecs = registerOutput<Map<String, String>?>('valueSpecs');
  }

  /// Gets an existing [IpSecPolicy] resource's state with the given [name] and [id].
  static IpSecPolicy get(
    String name,
    pulumi.Input<String> id, {
    IpSecPolicyState? state,
  }) {
    return IpSecPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  IpSecPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'openstack:vpnaas/ipSecPolicy:IpSecPolicy',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    authAlgorithm = registerOutput<String>('authAlgorithm');
    description = registerOutput<String?>('description');
    encapsulationMode = registerOutput<String>('encapsulationMode');
    encryptionAlgorithm = registerOutput<String>('encryptionAlgorithm');
    lifetimes = registerOutput<List<Map<String, dynamic>>>('lifetimes');
    this.name = registerOutput<String>('name');
    pfs = registerOutput<String>('pfs');
    region = registerOutput<String>('region');
    tenantId = registerOutput<String>('tenantId');
    transformProtocol = registerOutput<String>('transformProtocol');
    valueSpecs = registerOutput<Map<String, String>?>('valueSpecs');
  }
}
