import 'package:pulumi/pulumi.dart' as pulumi;
import 'ssh_key_args.dart';
import 'ssh_key_state.dart';

/// Provides a Linode SSH Key resource.  This can be used to create, modify, and delete Linodes SSH Keys.  Managed SSH Keys allow instances to be created with a list of Linode usernames, whose SSH keys will be automatically applied to the root account's `~/.ssh/authorized_keys` file.
/// For more information, see the [Linode APIv4 docs](https://techdocs.akamai.com/linode-api/reference/get-ssh-keys).
///
/// **NOTE**: This does not generate a new ssh key, you must have an existing key generated and saved locally.
///
/// ## Example Usage
///
/// The following example shows how one might use this resource to configure a SSH Key for access to a Linode Instance.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
/// import * as std from "@pulumi/std";
///
/// const foo = new linode.SshKey("foo", {
///     label: "foo",
///     sshKey: std.file({
///         input: "~/.ssh/id_rsa.pub",
///     }).then(invoke => std.chomp({
///         input: invoke.result,
///     })).then(invoke => invoke.result),
/// });
/// const fooInstance = new linode.Instance("foo", {
///     image: "linode/ubuntu22.04",
///     label: "foo",
///     region: "us-east",
///     type: "g6-nanode-1",
///     authorizedKeys: [foo.sshKey],
///     rootPass: "...",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
/// import pulumi_std as std
///
/// foo = linode.SshKey("foo",
///     label="foo",
///     ssh_key=std.chomp(input=std.file(input="~/.ssh/id_rsa.pub").result).result)
/// foo_instance = linode.Instance("foo",
///     image="linode/ubuntu22.04",
///     label="foo",
///     region="us-east",
///     type="g6-nanode-1",
///     authorized_keys=[foo.ssh_key],
///     root_pass="...")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foo = new Linode.SshKey("foo", new()
///     {
///         Label = "foo",
///         SshKeyName = Std.File.Invoke(new()
///         {
///             Input = "~/.ssh/id_rsa.pub",
///         }).Apply(invoke => Std.Chomp.Invoke(new()
///         {
///             Input = invoke.Result,
///         })).Apply(invoke => invoke.Result),
///     });
///
///     var fooInstance = new Linode.Instance("foo", new()
///     {
///         Image = "linode/ubuntu22.04",
///         Label = "foo",
///         Region = "us-east",
///         Type = "g6-nanode-1",
///         AuthorizedKeys = new[]
///         {
///             foo.SshKeyName,
///         },
///         RootPass = "...",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-linode/sdk/v5/go/linode"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		invokeChomp, err := std.Chomp(ctx, &std.ChompArgs{
/// 			Input: std.File(ctx, &std.FileArgs{
/// 				Input: "~/.ssh/id_rsa.pub",
/// 			}, nil).Result,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		foo, err := linode.NewSshKey(ctx, "foo", &linode.SshKeyArgs{
/// 			Label:  pulumi.String("foo"),
/// 			SshKey: pulumi.String(invokeChomp.Result),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = linode.NewInstance(ctx, "foo", &linode.InstanceArgs{
/// 			Image:  pulumi.String("linode/ubuntu22.04"),
/// 			Label:  pulumi.String("foo"),
/// 			Region: pulumi.String("us-east"),
/// 			Type:   pulumi.String("g6-nanode-1"),
/// 			AuthorizedKeys: pulumi.StringArray{
/// 				foo.SshKey,
/// 			},
/// 			RootPass: pulumi.String("..."),
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
/// import com.pulumi.linode.SshKey;
/// import com.pulumi.linode.SshKeyArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.FileArgs;
/// import com.pulumi.std.inputs.ChompArgs;
/// import com.pulumi.linode.Instance;
/// import com.pulumi.linode.InstanceArgs;
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
///         var foo = new SshKey("foo", SshKeyArgs.builder()
///             .label("foo")
///             .sshKey(StdFunctions.chomp(ChompArgs.builder()
///                 .input(StdFunctions.file(FileArgs.builder()
///                     .input("~/.ssh/id_rsa.pub")
///                     .build()).result())
///                 .build()).result())
///             .build());
///
///         var fooInstance = new Instance("fooInstance", InstanceArgs.builder()
///             .image("linode/ubuntu22.04")
///             .label("foo")
///             .region("us-east")
///             .type("g6-nanode-1")
///             .authorizedKeys(foo.sshKey())
///             .rootPass("...")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foo:
///     type: linode:SshKey
///     properties:
///       label: foo
///       sshKey:
///         fn::invoke:
///           function: std:chomp
///           arguments:
///             input:
///               fn::invoke:
///                 function: std:file
///                 arguments:
///                   input: ~/.ssh/id_rsa.pub
///                 return: result
///           return: result
///   fooInstance:
///     type: linode:Instance
///     name: foo
///     properties:
///       image: linode/ubuntu22.04
///       label: foo
///       region: us-east
///       type: g6-nanode-1
///       authorizedKeys:
///         - ${foo.sshKey}
///       rootPass: '...'
/// ```
///
///
/// ## Import
///
/// Linodes SSH Keys can be imported using the Linode SSH Key `id`, e.g.
///
/// ```sh
/// $ pulumi import linode:index/sshKey:SshKey mysshkey 1234567
/// ```
class SshKey extends pulumi.CustomResource {
  /// The date this SSH Key was created.
  late final pulumi.Output<String> created;
  /// A label for the SSH Key.
  late final pulumi.Output<String> label;
  /// The public SSH Key, which is used to authenticate to the root user of the Linodes you deploy.
  late final pulumi.Output<String> sshKey;

  /// Creates a new [SshKey].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SshKey]. {@macro pulumi_index_ssh_key_ssh_key_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SshKey(
    String name, {
    SshKeyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'linode:index/sshKey:SshKey',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    created = registerOutput<String>('created');
    label = registerOutput<String>('label');
    sshKey = registerOutput<String>('sshKey');
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
          'linode:index/sshKey:SshKey',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    created = registerOutput<String>('created');
    label = registerOutput<String>('label');
    sshKey = registerOutput<String>('sshKey');
  }
}
