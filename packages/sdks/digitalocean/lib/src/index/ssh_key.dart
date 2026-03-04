import 'package:pulumi/pulumi.dart' as pulumi;
import 'ssh_key_args.dart';
import 'ssh_key_state.dart';

/// Provides a DigitalOcean SSH key resource to allow you to manage SSH
/// keys for Droplet access. Keys created with this resource
/// can be referenced in your Droplet configuration via their ID or
/// fingerprint.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
/// import * as std from "@pulumi/std";
///
/// // Create a new SSH key
/// const _default = new digitalocean.SshKey("default", {
///     name: "Terraform Example",
///     publicKey: std.file({
///         input: "/Users/terraform/.ssh/id_rsa.pub",
///     }).then(invoke => invoke.result),
/// });
/// // Create a new Droplet using the SSH key
/// const web = new digitalocean.Droplet("web", {
///     image: "ubuntu-18-04-x64",
///     name: "web-1",
///     region: digitalocean.Region.NYC3,
///     size: digitalocean.DropletSlug.DropletS1VCPU1GB,
///     sshKeys: [_default.fingerprint],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
/// import pulumi_std as std
///
/// # Create a new SSH key
/// default = digitalocean.SshKey("default",
///     name="Terraform Example",
///     public_key=std.file(input="/Users/terraform/.ssh/id_rsa.pub").result)
/// # Create a new Droplet using the SSH key
/// web = digitalocean.Droplet("web",
///     image="ubuntu-18-04-x64",
///     name="web-1",
///     region=digitalocean.Region.NYC3,
///     size=digitalocean.DropletSlug.DROPLET_S1_VCPU1_GB,
///     ssh_keys=[default.fingerprint])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     // Create a new SSH key
///     var @default = new DigitalOcean.SshKey("default", new()
///     {
///         Name = "Terraform Example",
///         PublicKey = Std.File.Invoke(new()
///         {
///             Input = "/Users/terraform/.ssh/id_rsa.pub",
///         }).Apply(invoke => invoke.Result),
///     });
///
///     // Create a new Droplet using the SSH key
///     var web = new DigitalOcean.Droplet("web", new()
///     {
///         Image = "ubuntu-18-04-x64",
///         Name = "web-1",
///         Region = DigitalOcean.Region.NYC3,
///         Size = DigitalOcean.DropletSlug.DropletS1VCPU1GB,
///         SshKeys = new[]
///         {
///             @default.Fingerprint,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-digitalocean/sdk/v4/go/digitalocean"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		invokeFile, err := std.File(ctx, &std.FileArgs{
/// 			Input: "/Users/terraform/.ssh/id_rsa.pub",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Create a new SSH key
/// 		_default, err := digitalocean.NewSshKey(ctx, "default", &digitalocean.SshKeyArgs{
/// 			Name:      pulumi.String("Terraform Example"),
/// 			PublicKey: pulumi.String(invokeFile.Result),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Create a new Droplet using the SSH key
/// 		_, err = digitalocean.NewDroplet(ctx, "web", &digitalocean.DropletArgs{
/// 			Image:  pulumi.String("ubuntu-18-04-x64"),
/// 			Name:   pulumi.String("web-1"),
/// 			Region: pulumi.String(digitalocean.RegionNYC3),
/// 			Size:   pulumi.String(digitalocean.DropletSlugDropletS1VCPU1GB),
/// 			SshKeys: pulumi.StringArray{
/// 				_default.Fingerprint,
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
/// import com.pulumi.digitalocean.SshKey;
/// import com.pulumi.digitalocean.SshKeyArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.FileArgs;
/// import com.pulumi.digitalocean.Droplet;
/// import com.pulumi.digitalocean.DropletArgs;
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
///         // Create a new SSH key
///         var default_ = new SshKey("default", SshKeyArgs.builder()
///             .name("Terraform Example")
///             .publicKey(StdFunctions.file(FileArgs.builder()
///                 .input("/Users/terraform/.ssh/id_rsa.pub")
///                 .build()).result())
///             .build());
///
///         // Create a new Droplet using the SSH key
///         var web = new Droplet("web", DropletArgs.builder()
///             .image("ubuntu-18-04-x64")
///             .name("web-1")
///             .region("nyc3")
///             .size("s-1vcpu-1gb")
///             .sshKeys(default_.fingerprint())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   # Create a new SSH key
///   default:
///     type: digitalocean:SshKey
///     properties:
///       name: Terraform Example
///       publicKey:
///         fn::invoke:
///           function: std:file
///           arguments:
///             input: /Users/terraform/.ssh/id_rsa.pub
///           return: result
///   # Create a new Droplet using the SSH key
///   web:
///     type: digitalocean:Droplet
///     properties:
///       image: ubuntu-18-04-x64
///       name: web-1
///       region: nyc3
///       size: s-1vcpu-1gb
///       sshKeys:
///         - ${default.fingerprint}
/// ```
///
///
/// ## Import
///
/// SSH Keys can be imported using the `ssh key id`, e.g.
///
/// ```sh
/// $ pulumi import digitalocean:index/sshKey:SshKey mykey 263654
/// ```
class SshKey extends pulumi.CustomResource {
  /// The fingerprint of the SSH key
  late final pulumi.Output<String> fingerprint;

  /// The name of the SSH key for identification
  late final pulumi.Output<String> name;

  /// The public key. If this is a file, it
  /// can be read using the file interpolation function
  late final pulumi.Output<String> publicKey;

  /// Creates a new [SshKey].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SshKey]. {@macro pulumi_index_ssh_key_ssh_key_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SshKey(String name, {SshKeyArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'digitalocean:index/sshKey:SshKey',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    fingerprint = registerOutput<String>('fingerprint');
    this.name = registerOutput<String>('name');
    publicKey = registerOutput<String>('publicKey');
  }

  /// Gets an existing [SshKey] resource's state with the given [name] and [id].
  static SshKey get(
    String name,
    pulumi.Input<String> id, {
    SshKeyState? state,
  }) {
    return SshKey._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  SshKey._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'digitalocean:index/sshKey:SshKey',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    fingerprint = registerOutput<String>('fingerprint');
    this.name = registerOutput<String>('name');
    publicKey = registerOutput<String>('publicKey');
  }
}
