import 'package:pulumi/pulumi.dart' as pulumi;
import 'keypair_args.dart';
import 'keypair_state.dart';

/// ## Example Usage
///
/// ### Import an Existing Public Key
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as openstack from "@pulumi/openstack";
///
/// const test_keypair = new openstack.compute.Keypair("test-keypair", {
///     name: "my-keypair",
///     publicKey: "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDAjpC1hwiOCCmKEWxJ4qzTTsJbKzndLotBCz5PcwtUnflmU+gHJtWMZKpuEGVi29h0A/+ydKek1O18k10Ff+4tyFjiHDQAnOfgWf7+b1yK+qDip3X1C0UPMbwHlTfSGWLGZqd9LvEFx9k3h/M+VtMvwR1lJ9LUyTAImnNjWG7TaIPmui30HvM2UiFEmqkr4ijq45MyX2+fLIePLRIF61p4whjHAQYufqyno3BS48icQb4p6iVEZPo4AE2o9oIyQvj2mx4dk5Y8CgSETOZTYDOR3rU2fZTRDRgPJDH9FWvQjF5tA0p3d9CoWWd2s6GKKbfoUIi8R/Db1BSPJwkqB",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
///
/// test_keypair = openstack.compute.Keypair("test-keypair",
///     name="my-keypair",
///     public_key="ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDAjpC1hwiOCCmKEWxJ4qzTTsJbKzndLotBCz5PcwtUnflmU+gHJtWMZKpuEGVi29h0A/+ydKek1O18k10Ff+4tyFjiHDQAnOfgWf7+b1yK+qDip3X1C0UPMbwHlTfSGWLGZqd9LvEFx9k3h/M+VtMvwR1lJ9LUyTAImnNjWG7TaIPmui30HvM2UiFEmqkr4ijq45MyX2+fLIePLRIF61p4whjHAQYufqyno3BS48icQb4p6iVEZPo4AE2o9oIyQvj2mx4dk5Y8CgSETOZTYDOR3rU2fZTRDRgPJDH9FWvQjF5tA0p3d9CoWWd2s6GKKbfoUIi8R/Db1BSPJwkqB")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using OpenStack = Pulumi.OpenStack;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test_keypair = new OpenStack.Compute.Keypair("test-keypair", new()
///     {
///         Name = "my-keypair",
///         PublicKey = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDAjpC1hwiOCCmKEWxJ4qzTTsJbKzndLotBCz5PcwtUnflmU+gHJtWMZKpuEGVi29h0A/+ydKek1O18k10Ff+4tyFjiHDQAnOfgWf7+b1yK+qDip3X1C0UPMbwHlTfSGWLGZqd9LvEFx9k3h/M+VtMvwR1lJ9LUyTAImnNjWG7TaIPmui30HvM2UiFEmqkr4ijq45MyX2+fLIePLRIF61p4whjHAQYufqyno3BS48icQb4p6iVEZPo4AE2o9oIyQvj2mx4dk5Y8CgSETOZTYDOR3rU2fZTRDRgPJDH9FWvQjF5tA0p3d9CoWWd2s6GKKbfoUIi8R/Db1BSPJwkqB",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-openstack/sdk/v5/go/openstack/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewKeypair(ctx, "test-keypair", &compute.KeypairArgs{
/// 			Name:      pulumi.String("my-keypair"),
/// 			PublicKey: pulumi.String("ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDAjpC1hwiOCCmKEWxJ4qzTTsJbKzndLotBCz5PcwtUnflmU+gHJtWMZKpuEGVi29h0A/+ydKek1O18k10Ff+4tyFjiHDQAnOfgWf7+b1yK+qDip3X1C0UPMbwHlTfSGWLGZqd9LvEFx9k3h/M+VtMvwR1lJ9LUyTAImnNjWG7TaIPmui30HvM2UiFEmqkr4ijq45MyX2+fLIePLRIF61p4whjHAQYufqyno3BS48icQb4p6iVEZPo4AE2o9oIyQvj2mx4dk5Y8CgSETOZTYDOR3rU2fZTRDRgPJDH9FWvQjF5tA0p3d9CoWWd2s6GKKbfoUIi8R/Db1BSPJwkqB"),
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
/// import com.pulumi.openstack.compute.Keypair;
/// import com.pulumi.openstack.compute.KeypairArgs;
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
///         var test_keypair = new Keypair("test-keypair", KeypairArgs.builder()
///             .name("my-keypair")
///             .publicKey("ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDAjpC1hwiOCCmKEWxJ4qzTTsJbKzndLotBCz5PcwtUnflmU+gHJtWMZKpuEGVi29h0A/+ydKek1O18k10Ff+4tyFjiHDQAnOfgWf7+b1yK+qDip3X1C0UPMbwHlTfSGWLGZqd9LvEFx9k3h/M+VtMvwR1lJ9LUyTAImnNjWG7TaIPmui30HvM2UiFEmqkr4ijq45MyX2+fLIePLRIF61p4whjHAQYufqyno3BS48icQb4p6iVEZPo4AE2o9oIyQvj2mx4dk5Y8CgSETOZTYDOR3rU2fZTRDRgPJDH9FWvQjF5tA0p3d9CoWWd2s6GKKbfoUIi8R/Db1BSPJwkqB")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test-keypair:
///     type: openstack:compute:Keypair
///     properties:
///       name: my-keypair
///       publicKey: ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDAjpC1hwiOCCmKEWxJ4qzTTsJbKzndLotBCz5PcwtUnflmU+gHJtWMZKpuEGVi29h0A/+ydKek1O18k10Ff+4tyFjiHDQAnOfgWf7+b1yK+qDip3X1C0UPMbwHlTfSGWLGZqd9LvEFx9k3h/M+VtMvwR1lJ9LUyTAImnNjWG7TaIPmui30HvM2UiFEmqkr4ijq45MyX2+fLIePLRIF61p4whjHAQYufqyno3BS48icQb4p6iVEZPo4AE2o9oIyQvj2mx4dk5Y8CgSETOZTYDOR3rU2fZTRDRgPJDH9FWvQjF5tA0p3d9CoWWd2s6GKKbfoUIi8R/Db1BSPJwkqB
/// ```
///
///
/// ### Generate a Public/Private Key Pair
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as openstack from "@pulumi/openstack";
///
/// const test_keypair = new openstack.compute.Keypair("test-keypair", {name: "my-keypair"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
///
/// test_keypair = openstack.compute.Keypair("test-keypair", name="my-keypair")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using OpenStack = Pulumi.OpenStack;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test_keypair = new OpenStack.Compute.Keypair("test-keypair", new()
///     {
///         Name = "my-keypair",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-openstack/sdk/v5/go/openstack/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewKeypair(ctx, "test-keypair", &compute.KeypairArgs{
/// 			Name: pulumi.String("my-keypair"),
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
/// import com.pulumi.openstack.compute.Keypair;
/// import com.pulumi.openstack.compute.KeypairArgs;
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
///         var test_keypair = new Keypair("test-keypair", KeypairArgs.builder()
///             .name("my-keypair")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test-keypair:
///     type: openstack:compute:Keypair
///     properties:
///       name: my-keypair
/// ```
///
///
/// ## Import
///
/// Keypairs can be imported using the `name`, e.g.
///
/// ```sh
/// $ pulumi import openstack:compute/keypair:Keypair my-keypair test-keypair
/// ```
class Keypair extends pulumi.CustomResource {
  /// The fingerprint of the public key.
  late final pulumi.Output<String> fingerprint;

  /// A unique name for the keypair. Changing this creates a new
  /// keypair.
  late final pulumi.Output<String> name;

  /// The generated private key when no public key is specified.
  late final pulumi.Output<String> privateKey;

  /// A pregenerated OpenSSH-formatted public key.
  /// Changing this creates a new keypair. If a public key is not specified, then
  /// a public/private key pair will be automatically generated. If a pair is
  /// created, then destroying this resource means you will lose access to that
  /// keypair forever.
  late final pulumi.Output<String> publicKey;

  /// The region in which to obtain the V2 Compute client.
  /// Keypairs are associated with accounts, but a Compute client is needed to
  /// create one. If omitted, the `region` argument of the provider is used.
  /// Changing this creates a new keypair.
  late final pulumi.Output<String> region;

  /// This allows administrative users to operate key-pairs
  /// of specified user ID. For this feature your need to have openstack microversion
  /// 2.10 (Liberty) or later.
  late final pulumi.Output<String> userId;

  /// Map of additional options.
  late final pulumi.Output<Map<String, String>?> valueSpecs;

  /// Creates a new [Keypair].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Keypair]. {@macro pulumi_compute_keypair_keypair_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Keypair(
    String name, {
    KeypairArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'openstack:compute/keypair:Keypair',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    fingerprint = registerOutput<String>('fingerprint');
    this.name = registerOutput<String>('name');
    privateKey = registerOutput<String>('privateKey');
    publicKey = registerOutput<String>('publicKey');
    region = registerOutput<String>('region');
    userId = registerOutput<String>('userId');
    valueSpecs = registerOutput<Map<String, String>?>('valueSpecs');
  }

  /// Gets an existing [Keypair] resource's state with the given [name] and [id].
  static Keypair get(
    String name,
    pulumi.Input<String> id, {
    KeypairState? state,
  }) {
    return Keypair._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Keypair._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'openstack:compute/keypair:Keypair',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    fingerprint = registerOutput<String>('fingerprint');
    this.name = registerOutput<String>('name');
    privateKey = registerOutput<String>('privateKey');
    publicKey = registerOutput<String>('publicKey');
    region = registerOutput<String>('region');
    userId = registerOutput<String>('userId');
    valueSpecs = registerOutput<Map<String, String>?>('valueSpecs');
  }
}
