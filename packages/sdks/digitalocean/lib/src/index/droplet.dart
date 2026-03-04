import 'package:pulumi/pulumi.dart' as pulumi;
import 'droplet_args.dart';
import 'droplet_backup_policy.dart';
import 'droplet_state.dart';

/// Provides a DigitalOcean Droplet resource. This can be used to create,
/// modify, and delete Droplets. Droplets also support
/// provisioning.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// // Create a new Web Droplet in the nyc2 region
/// const web = new digitalocean.Droplet("web", {
///     image: "ubuntu-20-04-x64",
///     name: "web-1",
///     region: digitalocean.Region.NYC2,
///     size: digitalocean.DropletSlug.DropletS1VCPU1GB,
///     backups: true,
///     backupPolicy: {
///         plan: "weekly",
///         weekday: "TUE",
///         hour: 8,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// # Create a new Web Droplet in the nyc2 region
/// web = digitalocean.Droplet("web",
///     image="ubuntu-20-04-x64",
///     name="web-1",
///     region=digitalocean.Region.NYC2,
///     size=digitalocean.DropletSlug.DROPLET_S1_VCPU1_GB,
///     backups=True,
///     backup_policy={
///         "plan": "weekly",
///         "weekday": "TUE",
///         "hour": 8,
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     // Create a new Web Droplet in the nyc2 region
///     var web = new DigitalOcean.Droplet("web", new()
///     {
///         Image = "ubuntu-20-04-x64",
///         Name = "web-1",
///         Region = DigitalOcean.Region.NYC2,
///         Size = DigitalOcean.DropletSlug.DropletS1VCPU1GB,
///         Backups = true,
///         BackupPolicy = new DigitalOcean.Inputs.DropletBackupPolicyArgs
///         {
///             Plan = "weekly",
///             Weekday = "TUE",
///             Hour = 8,
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
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		// Create a new Web Droplet in the nyc2 region
/// 		_, err := digitalocean.NewDroplet(ctx, "web", &digitalocean.DropletArgs{
/// 			Image:   pulumi.String("ubuntu-20-04-x64"),
/// 			Name:    pulumi.String("web-1"),
/// 			Region:  pulumi.String(digitalocean.RegionNYC2),
/// 			Size:    pulumi.String(digitalocean.DropletSlugDropletS1VCPU1GB),
/// 			Backups: pulumi.Bool(true),
/// 			BackupPolicy: &digitalocean.DropletBackupPolicyArgs{
/// 				Plan:    pulumi.String("weekly"),
/// 				Weekday: pulumi.String("TUE"),
/// 				Hour:    pulumi.Int(8),
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
/// import com.pulumi.digitalocean.Droplet;
/// import com.pulumi.digitalocean.DropletArgs;
/// import com.pulumi.digitalocean.inputs.DropletBackupPolicyArgs;
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
///         // Create a new Web Droplet in the nyc2 region
///         var web = new Droplet("web", DropletArgs.builder()
///             .image("ubuntu-20-04-x64")
///             .name("web-1")
///             .region("nyc2")
///             .size("s-1vcpu-1gb")
///             .backups(true)
///             .backupPolicy(DropletBackupPolicyArgs.builder()
///                 .plan("weekly")
///                 .weekday("TUE")
///                 .hour(8)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   # Create a new Web Droplet in the nyc2 region
///   web:
///     type: digitalocean:Droplet
///     properties:
///       image: ubuntu-20-04-x64
///       name: web-1
///       region: nyc2
///       size: s-1vcpu-1gb
///       backups: true
///       backupPolicy:
///         plan: weekly
///         weekday: TUE
///         hour: 8
/// ```
///
///
/// ## Import
///
/// Droplets can be imported using the Droplet `id`, e.g.
///
/// ```sh
/// $ pulumi import digitalocean:index/droplet:Droplet mydroplet 100823
/// ```
class Droplet extends pulumi.CustomResource {
  /// An object specifying the backup policy for the Droplet. If omitted and `backups` is `true`, the backup plan will default to daily.
  late final pulumi.Output<DropletBackupPolicy?> backupPolicy;

  /// Boolean controlling if backups are made. Defaults to
  /// false.
  late final pulumi.Output<bool?> backups;
  late final pulumi.Output<String> createdAt;

  /// The size of the instance's disk in GB
  late final pulumi.Output<int> disk;

  /// A boolean indicating whether to install the
  /// DigitalOcean agent used for providing access to the Droplet web console in
  /// the control panel. By default, the agent is installed on new Droplets but
  /// installation errors (i.e. OS not supported) are ignored. To prevent it from
  /// being installed, set to `false`. To make installation errors fatal, explicitly
  /// set it to `true`.
  late final pulumi.Output<bool?> dropletAgent;

  /// The uniform resource name of the Droplet
  late final pulumi.Output<String> dropletUrn;

  /// A boolean indicating whether the droplet
  /// should be gracefully shut down before it is deleted.
  ///
  /// &gt; **NOTE:** If you use `volume_ids` on a Droplet, Terraform will assume management over the full set volumes for the instance, and treat additional volumes as a drift. For this reason, `volume_ids` must not be mixed with external `digitalocean.VolumeAttachment` resources for a given instance.
  late final pulumi.Output<bool?> gracefulShutdown;

  /// The Droplet image ID or slug. This could be either image ID or droplet snapshot ID. You can find image IDs and slugs using the [DigitalOcean API](https://docs.digitalocean.com/reference/api/digitalocean/#tag/Images).
  late final pulumi.Output<String> image;

  /// The IPv4 address
  late final pulumi.Output<String> ipv4Address;

  /// The private networking IPv4 address
  late final pulumi.Output<String> ipv4AddressPrivate;

  /// Boolean controlling if IPv6 is enabled. Defaults to false.
  /// Once enabled for a Droplet, IPv6 can not be disabled. When enabling IPv6 on
  /// an existing Droplet, [additional OS-level configuration](https://docs.digitalocean.com/products/networking/ipv6/how-to/enable/#on-existing-droplets)
  /// is required.
  late final pulumi.Output<bool?> ipv6;

  /// The IPv6 address
  late final pulumi.Output<String> ipv6Address;

  /// Is the Droplet locked
  late final pulumi.Output<bool> locked;
  late final pulumi.Output<int> memory;

  /// Boolean controlling whether monitoring agent is installed.
  /// Defaults to false. If set to `true`, you can configure monitor alert policies
  /// [monitor alert resource](https://www.terraform.io/providers/digitalocean/digitalocean/latest/docs/resources/monitor_alert)
  late final pulumi.Output<bool?> monitoring;

  /// The Droplet name.
  late final pulumi.Output<String> name;

  /// Droplet hourly price
  late final pulumi.Output<double> priceHourly;

  /// Droplet monthly price
  late final pulumi.Output<double> priceMonthly;

  /// **Deprecated** Boolean controlling if private networking
  /// is enabled. This parameter has been deprecated. Use `vpc_uuid` instead to specify a VPC network for the Droplet. If no `vpc_uuid` is provided, the Droplet will be placed in your account's default VPC for the region.
  late final pulumi.Output<bool> privateNetworking;

  /// The region where the Droplet will be created.
  late final pulumi.Output<String> region;

  /// Boolean controlling whether to increase the disk
  /// size when resizing a Droplet. It defaults to `true`. When set to `false`,
  /// only the Droplet's RAM and CPU will be resized. **Increasing a Droplet's disk
  /// size is a permanent change**. Increasing only RAM and CPU is reversible.
  late final pulumi.Output<bool?> resizeDisk;

  /// The unique slug that identifies the type of Droplet. You may list the available slugs using the [DigitalOcean API](https://docs.digitalocean.com/reference/api/digitalocean/#tag/Sizes).
  late final pulumi.Output<String> size;

  /// A list of SSH key IDs or fingerprints to enable in
  /// the format `[12345, 123456]`. To retrieve this info, use the
  /// [DigitalOcean API](https://docs.digitalocean.com/reference/api/digitalocean/#tag/SSH-Keys)
  /// or CLI (`doctl compute ssh-key list`). Once a Droplet is created keys can not
  /// be added or removed via this provider. Modifying this field will prompt you
  /// to destroy and recreate the Droplet.
  late final pulumi.Output<List<String>?> sshKeys;

  /// The status of the Droplet
  late final pulumi.Output<String> status;

  /// A list of the tags to be applied to this Droplet.
  late final pulumi.Output<List<String>?> tags;

  /// A string of the desired User Data provided [during Droplet creation](https://docs.digitalocean.com/products/droplets/how-to/provide-user-data/). Changing this forces a new resource to be created.
  late final pulumi.Output<String?> userData;

  /// The number of the instance's virtual CPUs
  late final pulumi.Output<int> vcpus;

  /// A list of the IDs of each [block storage volume](https://www.terraform.io/providers/digitalocean/digitalocean/latest/docs/resources/volume) to be attached to the Droplet.
  late final pulumi.Output<List<String>> volumeIds;

  /// The ID of the VPC where the Droplet will be located.
  late final pulumi.Output<String> vpcUuid;

  /// Creates a new [Droplet].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Droplet]. {@macro pulumi_index_droplet_droplet_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Droplet(
    String name, {
    DropletArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'digitalocean:index/droplet:Droplet',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    backupPolicy = registerOutput<DropletBackupPolicy?>('backupPolicy');
    backups = registerOutput<bool?>('backups');
    createdAt = registerOutput<String>('createdAt');
    disk = registerOutput<int>('disk');
    dropletAgent = registerOutput<bool?>('dropletAgent');
    dropletUrn = registerOutput<String>('dropletUrn');
    gracefulShutdown = registerOutput<bool?>('gracefulShutdown');
    image = registerOutput<String>('image');
    ipv4Address = registerOutput<String>('ipv4Address');
    ipv4AddressPrivate = registerOutput<String>('ipv4AddressPrivate');
    ipv6 = registerOutput<bool?>('ipv6');
    ipv6Address = registerOutput<String>('ipv6Address');
    locked = registerOutput<bool>('locked');
    memory = registerOutput<int>('memory');
    monitoring = registerOutput<bool?>('monitoring');
    this.name = registerOutput<String>('name');
    priceHourly = registerOutput<double>('priceHourly');
    priceMonthly = registerOutput<double>('priceMonthly');
    privateNetworking = registerOutput<bool>('privateNetworking');
    region = registerOutput<String>('region');
    resizeDisk = registerOutput<bool?>('resizeDisk');
    size = registerOutput<String>('size');
    sshKeys = registerOutput<List<String>?>('sshKeys');
    status = registerOutput<String>('status');
    tags = registerOutput<List<String>?>('tags');
    userData = registerOutput<String?>('userData');
    vcpus = registerOutput<int>('vcpus');
    volumeIds = registerOutput<List<String>>('volumeIds');
    vpcUuid = registerOutput<String>('vpcUuid');
  }

  /// Gets an existing [Droplet] resource's state with the given [name] and [id].
  static Droplet get(
    String name,
    pulumi.Input<String> id, {
    DropletState? state,
  }) {
    return Droplet._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Droplet._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'digitalocean:index/droplet:Droplet',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    backupPolicy = registerOutput<DropletBackupPolicy?>('backupPolicy');
    backups = registerOutput<bool?>('backups');
    createdAt = registerOutput<String>('createdAt');
    disk = registerOutput<int>('disk');
    dropletAgent = registerOutput<bool?>('dropletAgent');
    dropletUrn = registerOutput<String>('dropletUrn');
    gracefulShutdown = registerOutput<bool?>('gracefulShutdown');
    image = registerOutput<String>('image');
    ipv4Address = registerOutput<String>('ipv4Address');
    ipv4AddressPrivate = registerOutput<String>('ipv4AddressPrivate');
    ipv6 = registerOutput<bool?>('ipv6');
    ipv6Address = registerOutput<String>('ipv6Address');
    locked = registerOutput<bool>('locked');
    memory = registerOutput<int>('memory');
    monitoring = registerOutput<bool?>('monitoring');
    this.name = registerOutput<String>('name');
    priceHourly = registerOutput<double>('priceHourly');
    priceMonthly = registerOutput<double>('priceMonthly');
    privateNetworking = registerOutput<bool>('privateNetworking');
    region = registerOutput<String>('region');
    resizeDisk = registerOutput<bool?>('resizeDisk');
    size = registerOutput<String>('size');
    sshKeys = registerOutput<List<String>?>('sshKeys');
    status = registerOutput<String>('status');
    tags = registerOutput<List<String>?>('tags');
    userData = registerOutput<String?>('userData');
    vcpus = registerOutput<int>('vcpus');
    volumeIds = registerOutput<List<String>>('volumeIds');
    vpcUuid = registerOutput<String>('vpcUuid');
  }
}
