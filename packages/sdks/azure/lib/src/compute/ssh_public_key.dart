import 'package:pulumi/pulumi.dart' as pulumi;
import 'ssh_public_key_args.dart';
import 'ssh_public_key_state.dart';

/// Manages a SSH Public Key.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
/// import * as std from "@pulumi/std";
///
/// const example = new azure.compute.SshPublicKey("example", {
///     name: "example",
///     resourceGroupName: "example",
///     location: "West Europe",
///     publicKey: std.file({
///         input: "~/.ssh/id_rsa.pub",
///     }).then(invoke => invoke.result),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
/// import pulumi_std as std
///
/// example = azure.compute.SshPublicKey("example",
///     name="example",
///     resource_group_name="example",
///     location="West Europe",
///     public_key=std.file(input="~/.ssh/id_rsa.pub").result)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Azure.Compute.SshPublicKey("example", new()
///     {
///         Name = "example",
///         ResourceGroupName = "example",
///         Location = "West Europe",
///         PublicKey = Std.File.Invoke(new()
///         {
///             Input = "~/.ssh/id_rsa.pub",
///         }).Apply(invoke => invoke.Result),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/compute"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		invokeFile, err := std.File(ctx, &std.FileArgs{
/// 			Input: "~/.ssh/id_rsa.pub",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewSshPublicKey(ctx, "example", &compute.SshPublicKeyArgs{
/// 			Name:              pulumi.String("example"),
/// 			ResourceGroupName: pulumi.String("example"),
/// 			Location:          pulumi.String("West Europe"),
/// 			PublicKey:         pulumi.String(invokeFile.Result),
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
/// import com.pulumi.azure.compute.SshPublicKey;
/// import com.pulumi.azure.compute.SshPublicKeyArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.FileArgs;
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
///         var example = new SshPublicKey("example", SshPublicKeyArgs.builder()
///             .name("example")
///             .resourceGroupName("example")
///             .location("West Europe")
///             .publicKey(StdFunctions.file(FileArgs.builder()
///                 .input("~/.ssh/id_rsa.pub")
///                 .build()).result())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:compute:SshPublicKey
///     properties:
///       name: example
///       resourceGroupName: example
///       location: West Europe
///       publicKey:
///         fn::invoke:
///           function: std:file
///           arguments:
///             input: ~/.ssh/id_rsa.pub
///           return: result
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Compute` - 2024-03-01
///
/// ## Import
///
/// SSH Public Keys can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:compute/sshPublicKey:SshPublicKey example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.Compute/sshPublicKeys/mySshPublicKeyName1
/// ```
class SshPublicKey extends pulumi.CustomResource {
  /// The Azure Region where the SSH Public Key should exist. Changing this forces a new SSH Public Key to be created.
  late final pulumi.Output<String> location;

  /// The name which should be used for this SSH Public Key. Changing this forces a new SSH Public Key to be created.
  late final pulumi.Output<String> name;

  /// SSH public key used to authenticate to a virtual machine through ssh. the provided public key needs to be at least 2048-bit and in ssh-rsa format.
  late final pulumi.Output<String> publicKey;

  /// The name of the Resource Group where the SSH Public Key should exist. Changing this forces a new SSH Public Key to be created.
  late final pulumi.Output<String> resourceGroupName;

  /// A mapping of tags which should be assigned to the SSH Public Key.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [SshPublicKey].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SshPublicKey]. {@macro pulumi_compute_ssh_public_key_ssh_public_key_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SshPublicKey(
    String name, {
    SshPublicKeyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:compute/sshPublicKey:SshPublicKey',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    publicKey = registerOutput<String>('publicKey');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    tags = registerOutput<Map<String, String>?>('tags');
  }

  /// Gets an existing [SshPublicKey] resource's state with the given [name] and [id].
  static SshPublicKey get(
    String name,
    pulumi.Input<String> id, {
    SshPublicKeyState? state,
  }) {
    return SshPublicKey._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  SshPublicKey._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:compute/sshPublicKey:SshPublicKey',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    publicKey = registerOutput<String>('publicKey');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    tags = registerOutput<Map<String, String>?>('tags');
  }
}
