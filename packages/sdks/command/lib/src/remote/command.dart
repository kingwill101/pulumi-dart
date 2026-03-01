import 'package:pulumi/pulumi.dart' as pulumi;
import 'command_args.dart';
import 'connection.dart';
import 'logging.dart';

/// A command to run on a remote host. The connection is established via ssh.
///
/// {{% examples %}}
///
/// ## Example Usage
///
/// {{% example %}}
///
/// ### A Basic Example
/// This program connects to a server and runs the `hostname` command. The output is then available via the `stdout` property.
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as command from "@pulumi/command";
///
/// const config = new pulumi.Config();
/// const server = config.require("server");
/// const userName = config.require("userName");
/// const privateKey = config.require("privateKey");
///
/// const hostnameCmd = new command.remote.Command("hostnameCmd", {
///     create: "hostname",
///     connection: {
///         host: server,
///         user: userName,
///         privateKey: privateKey,
///     },
/// });
/// export const hostname = hostnameCmd.stdout;
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_command as command
///
/// config = pulumi.Config()
/// server = config.require("server")
/// user_name = config.require("userName")
/// private_key = config.require("privateKey")
/// hostname_cmd = command.remote.Command("hostnameCmd",
///     create="hostname",
///     connection=command.remote.ConnectionArgs(
///         host=server,
///         user=user_name,
///         private_key=private_key,
///     ))
/// pulumi.export("hostname", hostname_cmd.stdout)
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-command/sdk/go/command/remote"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		server := cfg.Require("server")
/// 		userName := cfg.Require("userName")
/// 		privateKey := cfg.Require("privateKey")
/// 		hostnameCmd, err := remote.NewCommand(ctx, "hostnameCmd", &remote.CommandArgs{
/// 			Create: pulumi.String("hostname"),
/// 			Connection: &remote.ConnectionArgs{
/// 				Host:       pulumi.String(server),
/// 				User:       pulumi.String(userName),
/// 				PrivateKey: pulumi.String(privateKey),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("hostname", hostnameCmd.Stdout)
/// 		return nil
/// 	})
/// }
/// ```
///
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Command = Pulumi.Command;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var server = config.Require("server");
///     var userName = config.Require("userName");
///     var privateKey = config.Require("privateKey");
///     var hostnameCmd = new Command.Remote.Command("hostnameCmd", new()
///     {
///         Create = "hostname",
///         Connection = new Command.Remote.Inputs.ConnectionArgs
///         {
///             Host = server,
///             User = userName,
///             PrivateKey = privateKey,
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["hostname"] = hostnameCmd.Stdout,
///     };
/// });
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.command.remote.Command;
/// import com.pulumi.command.remote.CommandArgs;
/// import com.pulumi.command.remote.inputs.ConnectionArgs;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         final var config = ctx.config();
///         final var server = config.require("server");
///         final var userName = config.require("userName");
///         final var privateKey = config.require("privateKey");
///         var hostnameCmd = new Command("hostnameCmd", CommandArgs.builder()
///             .create("hostname")
///             .connection(ConnectionArgs.builder()
///                 .host(server)
///                 .user(userName)
///                 .privateKey(privateKey)
///                 .build())
///             .build());
///
///         ctx.export("hostname", hostnameCmd.stdout());
///     }
/// }
/// ```
///
/// ```yaml
/// outputs:
///   hostname: ${hostnameCmd.stdout}
///
/// config:
///   server:
///     type: string
///   userName:
///     type: string
///   privateKey:
///     type: string
///
/// resources:
///   hostnameCmd:
///     type: command:remote:Command
///     properties:
///       create: "hostname"
///       # The configuration of our SSH connection to the server.
///       connection:
///         host: ${server}
///         user: ${userName}
///         privateKey: ${privateKey}
/// ```
///
/// {{% /example %}}
///
/// {{% example %}}
///
/// ### Triggers
/// This example defines several trigger values of various kinds. Changes to any of them will cause `cmd` to be re-run.
///
/// {{% example %}}
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as command from "@pulumi/command";
/// import * as random from "@pulumi/random";
///
/// const str = "foo";
/// const fileAsset = new pulumi.asset.FileAsset("Pulumi.yaml");
/// const rand = new random.RandomString("rand", {length: 5});
/// const localFile = new command.local.Command("localFile", {
///     create: "touch foo.txt",
///     archivePaths: ["*.txt"],
/// });
/// const cmd = new command.remote.Command("cmd", {
///     connection: {
///         host: "insert host here",
///     },
///     create: "echo create > op.txt",
///     delete: "echo delete >> op.txt",
///     triggers: [
///         str,
///         rand.result,
///         fileAsset,
///         localFile.archive,
///     ],
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_command as command
/// import pulumi_random as random
///
/// foo = "foo"
/// file_asset_var = pulumi.FileAsset("Pulumi.yaml")
/// rand = random.RandomString("rand", length=5)
/// local_file = command.local.Command("localFile",
///     create="touch foo.txt",
///     archive_paths=["*.txt"])
///
/// cmd = command.remote.Command("cmd",
///     connection=command.remote.ConnectionArgs(
///         host="insert host here",
///     ),
///     create="echo create > op.txt",
///     delete="echo delete >> op.txt",
///     triggers=[
///         foo,
///         rand.result,
///         file_asset_var,
///         local_file.archive,
///     ])
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-command/sdk/go/command/local"
/// 	"github.com/pulumi/pulumi-command/sdk/go/command/remote"
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		str := pulumi.String("foo")
///
/// 		fileAsset := pulumi.NewFileAsset("Pulumi.yaml")
///
/// 		rand, err := random.NewRandomString(ctx, "rand", &random.RandomStringArgs{
/// 			Length: pulumi.Int(5),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
///
/// 		localFile, err := local.NewCommand(ctx, "localFile", &local.CommandArgs{
/// 			Create: pulumi.String("touch foo.txt"),
/// 			ArchivePaths: pulumi.StringArray{
/// 				pulumi.String("*.txt"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
///
/// 		_, err = remote.NewCommand(ctx, "cmd", &remote.CommandArgs{
/// 			Connection: &remote.ConnectionArgs{
/// 				Host: pulumi.String("insert host here"),
/// 			},
/// 			Create: pulumi.String("echo create > op.txt"),
/// 			Delete: pulumi.String("echo delete >> op.txt"),
/// 			Triggers: pulumi.Array{
/// 				str,
/// 				rand.Result,
/// 				fileAsset,
/// 				localFile.Archive,
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
///
/// ```csharp
/// using Pulumi;
/// using Command = Pulumi.Command;
/// using Random = Pulumi.Random;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var str = "foo";
///
///     var fileAssetVar = new FileAsset("Pulumi.yaml");
///
///     var rand = new Random.RandomString("rand", new()
///     {
///         Length = 5,
///     });
///
///     var localFile = new Command.Local.Command("localFile", new()
///     {
///         Create = "touch foo.txt",
///         ArchivePaths = new[]
///         {
///             "*.txt",
///         },
///     });
///
///     var cmd = new Command.Remote.Command("cmd", new()
///     {
///         Connection = new Command.Remote.Inputs.ConnectionArgs
///         {
///             Host = "insert host here",
///         },
///         Create = "echo create > op.txt",
///         Delete = "echo delete >> op.txt",
///         Triggers = new object[]
///         {
///             str,
///             rand.Result,
///             fileAssetVar,
///             localFile.Archive,
///         },
///     });
///
/// });
/// ```
///
/// ```java
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         final var fileAssetVar = new FileAsset("Pulumi.yaml");
///
///         var rand = new RandomString("rand", RandomStringArgs.builder()
///             .length(5)
///             .build());
///
///         var localFile = new Command("localFile", CommandArgs.builder()
///             .create("touch foo.txt")
///             .archivePaths("*.txt")
///             .build());
///
///         var cmd = new Command("cmd", CommandArgs.builder()
///             .connection(ConnectionArgs.builder()
///                 .host("insert host here")
///                 .build())
///             .create("echo create > op.txt")
///             .delete("echo delete >> op.txt")
///             .triggers(
///                 rand.result(),
///                 fileAssetVar,
///                 localFile.archive())
///             .build());
///
///     }
/// }
/// ```
///
/// ```yaml
/// config: {}
/// outputs: {}
///
/// resources:
///   rand:
///     type: random:index/randomString:RandomString
///     properties:
///       length: 5
///
///   localFile:
///     type: command:local:Command
///     properties:
///       create: touch foo.txt
///       archivePaths:
///         - "*.txt"
///
///   cmd:
///     type: command:remote:Command
///     properties:
///       connection:
///         host: "insert host here"
///       create: echo create > op.txt
///       delete: echo delete >> op.txt
///       triggers:
///         - ${rand.result}
///         - ${fileAsset}
///         - ${localFile.archive}
///
/// variables:
///   fileAsset:
///     fn::fileAsset: "Pulumi.yaml"
/// ```
///
/// {{% /example %}}
///
/// {{% /examples %}}
class Command extends pulumi.CustomResource {
  /// If the previous command's stdout and stderr (as generated by the prior create/update) is
  /// injected into the environment of the next run as PULUMI_COMMAND_STDOUT and PULUMI_COMMAND_STDERR.
  /// Defaults to true.
  late final pulumi.Output<bool?> addPreviousOutputInEnv;
  /// The parameters with which to connect to the remote host.
  late final pulumi.Output<Connection> connection;
  /// The command to run once on resource creation.
  ///
  /// If an `update` command isn't provided, then `create` will also be run when the resource's inputs are modified.
  ///
  /// Note that this command will not be executed if the resource has already been created and its inputs are unchanged.
  ///
  /// Use `local.runOutput` if you need to run a command on every execution of your program.
  late final pulumi.Output<String?> create;
  /// The command to run on resource delettion.
  ///
  /// The environment variables `PULUMI_COMMAND_STDOUT` and `PULUMI_COMMAND_STDERR` are set to the stdout and stderr properties of the Command resource from previous create or update steps.
  late final pulumi.Output<String?> delete;
  /// Additional environment variables available to the command's process.
  /// Note that this only works if the SSH server is configured to accept these variables via AcceptEnv.
  /// Alternatively, if a Bash-like shell runs the command on the remote host, you could prefix the command itself
  /// with the variables in the form 'VAR=value command'.
  late final pulumi.Output<Map<String, String>?> environment;
  /// If the command's stdout and stderr should be logged. This doesn't affect the capturing of
  /// stdout and stderr as outputs. If there might be secrets in the output, you can disable logging here and mark the
  /// outputs as secret via 'additionalSecretOutputs'. Defaults to logging both stdout and stderr.
  late final pulumi.Output<Logging?> logging;
  /// The standard error of the command's process
  late final pulumi.Output<String> stderr;
  /// Pass a string to the command's process as standard in
  late final pulumi.Output<String?> stdin;
  /// The standard output of the command's process
  late final pulumi.Output<String> stdout;
  /// The resource will be updated (or replaced) if any of these values change.
  ///
  /// The trigger values can be of any type.
  ///
  /// If the `update` command was provided the resource will be updated, otherwise it will be replaced using the `create` command.
  ///
  /// Please see the resource documentation for examples.
  late final pulumi.Output<List<dynamic>?> triggers;
  /// The command to run when the resource is updated.
  ///
  /// If empty, the create command will be executed instead.
  ///
  /// Note that this command will not run if the resource's inputs are unchanged.
  ///
  /// Use `local.runOutput` if you need to run a command on every execution of your program.
  ///
  /// The environment variables `PULUMI_COMMAND_STDOUT` and `PULUMI_COMMAND_STDERR` are set to the `stdout` and `stderr` properties of the Command resource from previous create or update steps.
  late final pulumi.Output<String?> update;

  /// Creates a new [Command].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Command]. {@macro pulumi_remote_command_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Command(
    String name, {
    CommandArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'command:remote:Command',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.addPreviousOutputInEnv = registerOutput<bool?>('addPreviousOutputInEnv');
    this.connection = registerOutput<Connection>('connection');
    this.create = registerOutput<String?>('create');
    this.delete = registerOutput<String?>('delete');
    this.environment = registerOutput<Map<String, String>?>('environment');
    this.logging = registerOutput<Logging?>('logging');
    this.stderr = registerOutput<String>('stderr');
    this.stdin = registerOutput<String?>('stdin');
    this.stdout = registerOutput<String>('stdout');
    this.triggers = registerOutput<List<dynamic>?>('triggers');
    this.update = registerOutput<String?>('update');
  }
}
