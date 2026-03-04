import 'package:pulumi/pulumi.dart' as pulumi;
import 'droplet_autoscale_args.dart';
import 'droplet_autoscale_config.dart';
import 'droplet_autoscale_droplet_template.dart';
import 'droplet_autoscale_state.dart';

/// Provides a DigitalOcean Droplet Autoscale resource. This can be used to create, modify,
/// read and delete Droplet Autoscale pools.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
/// import * as std from "@pulumi/std";
///
/// const my_ssh_key = new digitalocean.SshKey("my-ssh-key", {
///     name: "terraform-example",
///     publicKey: std.file({
///         input: "/Users/terraform/.ssh/id_rsa.pub",
///     }).then(invoke => invoke.result),
/// });
/// const my_tag = new digitalocean.Tag("my-tag", {name: "terraform-example"});
/// const my_autoscale_pool = new digitalocean.DropletAutoscale("my-autoscale-pool", {
///     name: "terraform-example",
///     config: {
///         minInstances: 10,
///         maxInstances: 50,
///         targetCpuUtilization: 0.5,
///         targetMemoryUtilization: 0.5,
///         cooldownMinutes: 5,
///     },
///     dropletTemplate: {
///         size: "c-2",
///         region: "nyc3",
///         image: "ubuntu-24-04-x64",
///         tags: [my_tag.id],
///         sshKeys: [my_ssh_key.id],
///         withDropletAgent: true,
///         ipv6: true,
///         userData: `
/// #cloud-config
/// runcmd:
/// - apt-get update
/// - apt-get install -y stress-ng
/// `,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
/// import pulumi_std as std
///
/// my_ssh_key = digitalocean.SshKey("my-ssh-key",
///     name="terraform-example",
///     public_key=std.file(input="/Users/terraform/.ssh/id_rsa.pub").result)
/// my_tag = digitalocean.Tag("my-tag", name="terraform-example")
/// my_autoscale_pool = digitalocean.DropletAutoscale("my-autoscale-pool",
///     name="terraform-example",
///     config={
///         "min_instances": 10,
///         "max_instances": 50,
///         "target_cpu_utilization": 0.5,
///         "target_memory_utilization": 0.5,
///         "cooldown_minutes": 5,
///     },
///     droplet_template={
///         "size": "c-2",
///         "region": "nyc3",
///         "image": "ubuntu-24-04-x64",
///         "tags": [my_tag.id],
///         "ssh_keys": [my_ssh_key.id],
///         "with_droplet_agent": True,
///         "ipv6": True,
///         "user_data": """
/// #cloud-config
/// runcmd:
/// - apt-get update
/// - apt-get install -y stress-ng
/// """,
///     })
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
///     var my_ssh_key = new DigitalOcean.SshKey("my-ssh-key", new()
///     {
///         Name = "terraform-example",
///         PublicKey = Std.File.Invoke(new()
///         {
///             Input = "/Users/terraform/.ssh/id_rsa.pub",
///         }).Apply(invoke => invoke.Result),
///     });
///
///     var my_tag = new DigitalOcean.Tag("my-tag", new()
///     {
///         Name = "terraform-example",
///     });
///
///     var my_autoscale_pool = new DigitalOcean.DropletAutoscale("my-autoscale-pool", new()
///     {
///         Name = "terraform-example",
///         Config = new DigitalOcean.Inputs.DropletAutoscaleConfigArgs
///         {
///             MinInstances = 10,
///             MaxInstances = 50,
///             TargetCpuUtilization = 0.5,
///             TargetMemoryUtilization = 0.5,
///             CooldownMinutes = 5,
///         },
///         DropletTemplate = new DigitalOcean.Inputs.DropletAutoscaleDropletTemplateArgs
///         {
///             Size = "c-2",
///             Region = "nyc3",
///             Image = "ubuntu-24-04-x64",
///             Tags = new[]
///             {
///                 my_tag.Id,
///             },
///             SshKeys = new[]
///             {
///                 my_ssh_key.Id,
///             },
///             WithDropletAgent = true,
///             Ipv6 = true,
///             UserData = @"
/// #cloud-config
/// runcmd:
/// - apt-get update
/// - apt-get install -y stress-ng
/// ",
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
/// 		my_ssh_key, err := digitalocean.NewSshKey(ctx, "my-ssh-key", &digitalocean.SshKeyArgs{
/// 			Name:      pulumi.String("terraform-example"),
/// 			PublicKey: pulumi.String(invokeFile.Result),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		my_tag, err := digitalocean.NewTag(ctx, "my-tag", &digitalocean.TagArgs{
/// 			Name: pulumi.String("terraform-example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = digitalocean.NewDropletAutoscale(ctx, "my-autoscale-pool", &digitalocean.DropletAutoscaleArgs{
/// 			Name: pulumi.String("terraform-example"),
/// 			Config: &digitalocean.DropletAutoscaleConfigArgs{
/// 				MinInstances:            pulumi.Int(10),
/// 				MaxInstances:            pulumi.Int(50),
/// 				TargetCpuUtilization:    pulumi.Float64(0.5),
/// 				TargetMemoryUtilization: pulumi.Float64(0.5),
/// 				CooldownMinutes:         pulumi.Int(5),
/// 			},
/// 			DropletTemplate: &digitalocean.DropletAutoscaleDropletTemplateArgs{
/// 				Size:   pulumi.String("c-2"),
/// 				Region: pulumi.String("nyc3"),
/// 				Image:  pulumi.String("ubuntu-24-04-x64"),
/// 				Tags: pulumi.StringArray{
/// 					my_tag.ID(),
/// 				},
/// 				SshKeys: pulumi.StringArray{
/// 					my_ssh_key.ID(),
/// 				},
/// 				WithDropletAgent: pulumi.Bool(true),
/// 				Ipv6:             pulumi.Bool(true),
/// 				UserData: pulumi.String(`
/// #cloud-config
/// runcmd:
/// - apt-get update
/// - apt-get install -y stress-ng
/// `),
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
/// import com.pulumi.digitalocean.Tag;
/// import com.pulumi.digitalocean.TagArgs;
/// import com.pulumi.digitalocean.DropletAutoscale;
/// import com.pulumi.digitalocean.DropletAutoscaleArgs;
/// import com.pulumi.digitalocean.inputs.DropletAutoscaleConfigArgs;
/// import com.pulumi.digitalocean.inputs.DropletAutoscaleDropletTemplateArgs;
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
///         var my_ssh_key = new SshKey("my-ssh-key", SshKeyArgs.builder()
///             .name("terraform-example")
///             .publicKey(StdFunctions.file(FileArgs.builder()
///                 .input("/Users/terraform/.ssh/id_rsa.pub")
///                 .build()).result())
///             .build());
///
///         var my_tag = new Tag("my-tag", TagArgs.builder()
///             .name("terraform-example")
///             .build());
///
///         var my_autoscale_pool = new DropletAutoscale("my-autoscale-pool", DropletAutoscaleArgs.builder()
///             .name("terraform-example")
///             .config(DropletAutoscaleConfigArgs.builder()
///                 .minInstances(10)
///                 .maxInstances(50)
///                 .targetCpuUtilization(0.5)
///                 .targetMemoryUtilization(0.5)
///                 .cooldownMinutes(5)
///                 .build())
///             .dropletTemplate(DropletAutoscaleDropletTemplateArgs.builder()
///                 .size("c-2")
///                 .region("nyc3")
///                 .image("ubuntu-24-04-x64")
///                 .tags(my_tag.id())
///                 .sshKeys(my_ssh_key.id())
///                 .withDropletAgent(true)
///                 .ipv6(true)
///                 .userData("""
///
/// #cloud-config
/// runcmd:
/// - apt-get update
/// - apt-get install -y stress-ng
///                 """)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   my-ssh-key:
///     type: digitalocean:SshKey
///     properties:
///       name: terraform-example
///       publicKey:
///         fn::invoke:
///           function: std:file
///           arguments:
///             input: /Users/terraform/.ssh/id_rsa.pub
///           return: result
///   my-tag:
///     type: digitalocean:Tag
///     properties:
///       name: terraform-example
///   my-autoscale-pool:
///     type: digitalocean:DropletAutoscale
///     properties:
///       name: terraform-example
///       config:
///         minInstances: 10
///         maxInstances: 50
///         targetCpuUtilization: 0.5
///         targetMemoryUtilization: 0.5
///         cooldownMinutes: 5
///       dropletTemplate:
///         size: c-2
///         region: nyc3
///         image: ubuntu-24-04-x64
///         tags:
///           - ${["my-tag"].id}
///         sshKeys:
///           - ${["my-ssh-key"].id}
///         withDropletAgent: true
///         ipv6: true
///         userData: |2
///           #cloud-config
///           runcmd:
///           - apt-get update
///           - apt-get install -y stress-ng
/// ```
///
///
/// ## Import
///
/// Droplet Autoscale pools can be imported using their `id`, e.g.
///
/// ```sh
/// $ pulumi import digitalocean:index/dropletAutoscale:DropletAutoscale my-autoscale-pool 38e66834-d741-47ec-88e7-c70cbdcz0445
/// ```
class DropletAutoscale extends pulumi.CustomResource {
  /// The configuration parameters for Droplet Autoscale pool, the supported arguments are
  /// documented below.
  late final pulumi.Output<DropletAutoscaleConfig> config;

  /// Created at timestamp for the Droplet Autoscale pool.
  late final pulumi.Output<String> createdAt;

  /// The current average resource utilization of the Droplet Autoscale pool, this attribute further
  /// embeds `memory` and `cpu` attributes to respectively report utilization data.
  late final pulumi.Output<List<Map<String, dynamic>>> currentUtilizations;

  /// The droplet template parameters for Droplet Autoscale pool, the supported arguments
  /// are documented below.
  late final pulumi.Output<DropletAutoscaleDropletTemplate> dropletTemplate;

  /// The name of the Droplet Autoscale pool.
  late final pulumi.Output<String> name;

  /// Droplet Autoscale pool health status; this reflects if the pool is currently healthy and ready to accept
  /// traffic, or in an error state and needs user intervention.
  late final pulumi.Output<String> status;

  /// Updated at timestamp for the Droplet Autoscale pool.
  late final pulumi.Output<String> updatedAt;

  /// Creates a new [DropletAutoscale].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DropletAutoscale]. {@macro pulumi_index_droplet_autoscale_droplet_autoscale_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DropletAutoscale(
    String name, {
    DropletAutoscaleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'digitalocean:index/dropletAutoscale:DropletAutoscale',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    config = registerOutput<DropletAutoscaleConfig>('config');
    createdAt = registerOutput<String>('createdAt');
    currentUtilizations = registerOutput<List<Map<String, dynamic>>>(
      'currentUtilizations',
    );
    dropletTemplate = registerOutput<DropletAutoscaleDropletTemplate>(
      'dropletTemplate',
    );
    this.name = registerOutput<String>('name');
    status = registerOutput<String>('status');
    updatedAt = registerOutput<String>('updatedAt');
  }

  /// Gets an existing [DropletAutoscale] resource's state with the given [name] and [id].
  static DropletAutoscale get(
    String name,
    pulumi.Input<String> id, {
    DropletAutoscaleState? state,
  }) {
    return DropletAutoscale._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  DropletAutoscale._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'digitalocean:index/dropletAutoscale:DropletAutoscale',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    config = registerOutput<DropletAutoscaleConfig>('config');
    createdAt = registerOutput<String>('createdAt');
    currentUtilizations = registerOutput<List<Map<String, dynamic>>>(
      'currentUtilizations',
    );
    dropletTemplate = registerOutput<DropletAutoscaleDropletTemplate>(
      'dropletTemplate',
    );
    this.name = registerOutput<String>('name');
    status = registerOutput<String>('status');
    updatedAt = registerOutput<String>('updatedAt');
  }
}
