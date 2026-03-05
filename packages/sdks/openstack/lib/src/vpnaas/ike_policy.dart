import 'package:pulumi/pulumi.dart' as pulumi;
import 'ike_policy_args.dart';
import 'ike_policy_state.dart';

/// Manages a V2 Neutron IKE policy resource within OpenStack.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as openstack from "@pulumi/openstack";
///
/// const policy1 = new openstack.vpnaas.IkePolicy("policy_1", {name: "my_policy"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
///
/// policy1 = openstack.vpnaas.IkePolicy("policy_1", name="my_policy")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using OpenStack = Pulumi.OpenStack;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy1 = new OpenStack.VPNaaS.IkePolicy("policy_1", new()
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
/// 		_, err := vpnaas.NewIkePolicy(ctx, "policy_1", &vpnaas.IkePolicyArgs{
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
/// import com.pulumi.openstack.vpnaas.IkePolicy;
/// import com.pulumi.openstack.vpnaas.IkePolicyArgs;
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
///         var policy1 = new IkePolicy("policy1", IkePolicyArgs.builder()
///             .name("my_policy")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy1:
///     type: openstack:vpnaas:IkePolicy
///     name: policy_1
///     properties:
///       name: my_policy
/// ```
///
///
/// ## Import
///
/// Services can be imported using the `id`, e.g.
///
/// ```sh
/// $ pulumi import openstack:vpnaas/ikePolicy:IkePolicy policy_1 832cb7f3-59fe-40cf-8f64-8350ffc03272
/// ```
class IkePolicy extends pulumi.CustomResource {
  /// The authentication hash algorithm. Valid values are sha1, sha256, sha384, sha512,
  /// aes-xcbc, aes-cmac. Default is sha1.
  /// Changing this updates the algorithm of the existing policy.
  late final pulumi.Output<String?> authAlgorithm;
  /// The human-readable description for the policy.
  /// Changing this updates the description of the existing policy.
  late final pulumi.Output<String?> description;
  /// The encryption algorithm. Valid values are 3des, aes-128, aes-192, aes-256,
  /// aes-KKK-ctr, aes-KKK-ccm-II, aes-KKK-gcm-II (with KKK = 128/192/256 bits key size and II = 8/12/16 octets ICV).
  /// The default value is aes-128. Changing this updates the existing policy.
  late final pulumi.Output<String?> encryptionAlgorithm;
  /// The IKE version. A valid value is v1 or v2. Default is v1.
  /// Changing this updates the existing policy.
  late final pulumi.Output<String?> ikeVersion;
  /// The lifetime of the security association. Consists of Unit and Value.
  late final pulumi.Output<List<Map<String, dynamic>>> lifetimes;
  /// The name of the policy. Changing this updates the name of
  /// the existing policy.
  late final pulumi.Output<String> name;
  /// The perfect forward secrecy mode. Valid values are group2, group5 and group14 to group31.
  /// Default is group5. Changing this updates the existing policy.
  late final pulumi.Output<String?> pfs;
  /// The IKE mode. A valid value is main, which is the default.
  /// Changing this updates the existing policy.
  late final pulumi.Output<String?> phase1NegotiationMode;
  /// The region in which to obtain the V2 Networking client.
  /// A Networking client is needed to create a VPN service. If omitted, the
  /// `region` argument of the provider is used. Changing this creates a new
  /// service.
  late final pulumi.Output<String> region;
  /// The owner of the policy. Required if admin wants to
  /// create a service for another policy. Changing this creates a new policy.
  late final pulumi.Output<String> tenantId;
  /// Map of additional options.
  late final pulumi.Output<Map<String, String>?> valueSpecs;

  /// Creates a new [IkePolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [IkePolicy]. {@macro pulumi_vpnaas_ike_policy_ike_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  IkePolicy(
    String name, {
    IkePolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'openstack:vpnaas/ikePolicy:IkePolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    authAlgorithm = registerOutput<String?>('authAlgorithm');
    description = registerOutput<String?>('description');
    encryptionAlgorithm = registerOutput<String?>('encryptionAlgorithm');
    ikeVersion = registerOutput<String?>('ikeVersion');
    lifetimes = registerOutput<List<Map<String, dynamic>>>('lifetimes');
    this.name = registerOutput<String>('name');
    pfs = registerOutput<String?>('pfs');
    phase1NegotiationMode = registerOutput<String?>('phase1NegotiationMode');
    region = registerOutput<String>('region');
    tenantId = registerOutput<String>('tenantId');
    valueSpecs = registerOutput<Map<String, String>?>('valueSpecs');
  }

  /// Gets an existing [IkePolicy] resource's state with the given [name] and [id].
  static IkePolicy get(
    String name,
    pulumi.Input<String> id, {
    IkePolicyState? state,
  }) {
    return IkePolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  IkePolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'openstack:vpnaas/ikePolicy:IkePolicy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    authAlgorithm = registerOutput<String?>('authAlgorithm');
    description = registerOutput<String?>('description');
    encryptionAlgorithm = registerOutput<String?>('encryptionAlgorithm');
    ikeVersion = registerOutput<String?>('ikeVersion');
    lifetimes = registerOutput<List<Map<String, dynamic>>>('lifetimes');
    this.name = registerOutput<String>('name');
    pfs = registerOutput<String?>('pfs');
    phase1NegotiationMode = registerOutput<String?>('phase1NegotiationMode');
    region = registerOutput<String>('region');
    tenantId = registerOutput<String>('tenantId');
    valueSpecs = registerOutput<Map<String, String>?>('valueSpecs');
  }
}
