import 'package:pulumi/pulumi.dart' as pulumi;
import 'storage_box_access_settings.dart';
import 'storage_box_args.dart';
import 'storage_box_snapshot_plan.dart';
import 'storage_box_state.dart';

/// Provides a Hetzner Storage Box resource.
///
/// See the [Storage Box API documentation](https://docs.hetzner.cloud/reference/hetzner#storage-boxes) for more details.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as hcloud from "@pulumi/hcloud";
/// import * as std from "@pulumi/std";
///
/// const backups = new hcloud.StorageBox("backups", {
///     name: "backups",
///     storageBoxType: "bx21",
///     location: "hel1",
///     password: storageBoxPassword,
///     labels: {
///         foo: "bar",
///     },
///     accessSettings: {
///         reachableExternally: true,
///         sambaEnabled: true,
///         sshEnabled: true,
///         webdavEnabled: true,
///         zfsEnabled: true,
///     },
///     snapshotPlan: {
///         maxSnapshots: 10,
///         minute: 16,
///         hour: 18,
///         dayOfWeek: 3,
///     },
///     deleteProtection: true,
/// });
/// const sshKey = new hcloud.StorageBox("ssh_key", {
///     name: "backups",
///     storageBoxType: "bx21",
///     location: "hel1",
///     password: storageBoxPassword,
///     sshKeys: [
///         myKey.publicKey,
///         std.file({
///             input: "~/.ssh/id_ed25519.pub",
///         }).then(invoke => invoke.result),
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_hcloud as hcloud
/// import pulumi_std as std
///
/// backups = hcloud.StorageBox("backups",
///     name="backups",
///     storage_box_type="bx21",
///     location="hel1",
///     password=storage_box_password,
///     labels={
///         "foo": "bar",
///     },
///     access_settings={
///         "reachable_externally": True,
///         "samba_enabled": True,
///         "ssh_enabled": True,
///         "webdav_enabled": True,
///         "zfs_enabled": True,
///     },
///     snapshot_plan={
///         "max_snapshots": 10,
///         "minute": 16,
///         "hour": 18,
///         "day_of_week": 3,
///     },
///     delete_protection=True)
/// ssh_key = hcloud.StorageBox("ssh_key",
///     name="backups",
///     storage_box_type="bx21",
///     location="hel1",
///     password=storage_box_password,
///     ssh_keys=[
///         my_key["publicKey"],
///         std.file(input="~/.ssh/id_ed25519.pub").result,
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using HCloud = Pulumi.HCloud;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var backups = new HCloud.StorageBox("backups", new()
///     {
///         Name = "backups",
///         StorageBoxType = "bx21",
///         Location = "hel1",
///         Password = storageBoxPassword,
///         Labels =
///         {
///             { "foo", "bar" },
///         },
///         AccessSettings = new HCloud.Inputs.StorageBoxAccessSettingsArgs
///         {
///             ReachableExternally = true,
///             SambaEnabled = true,
///             SshEnabled = true,
///             WebdavEnabled = true,
///             ZfsEnabled = true,
///         },
///         SnapshotPlan = new HCloud.Inputs.StorageBoxSnapshotPlanArgs
///         {
///             MaxSnapshots = 10,
///             Minute = 16,
///             Hour = 18,
///             DayOfWeek = 3,
///         },
///         DeleteProtection = true,
///     });
///
///     var sshKey = new HCloud.StorageBox("ssh_key", new()
///     {
///         Name = "backups",
///         StorageBoxType = "bx21",
///         Location = "hel1",
///         Password = storageBoxPassword,
///         SshKeys = new[]
///         {
///             myKey.PublicKey,
///             Std.File.Invoke(new()
///             {
///                 Input = "~/.ssh/id_ed25519.pub",
///             }).Apply(invoke => invoke.Result),
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-hcloud/sdk/go/hcloud"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := hcloud.NewStorageBox(ctx, "backups", &hcloud.StorageBoxArgs{
/// 			Name:           pulumi.String("backups"),
/// 			StorageBoxType: pulumi.String("bx21"),
/// 			Location:       pulumi.String("hel1"),
/// 			Password:       pulumi.Any(storageBoxPassword),
/// 			Labels: pulumi.StringMap{
/// 				"foo": pulumi.String("bar"),
/// 			},
/// 			AccessSettings: &hcloud.StorageBoxAccessSettingsArgs{
/// 				ReachableExternally: pulumi.Bool(true),
/// 				SambaEnabled:        pulumi.Bool(true),
/// 				SshEnabled:          pulumi.Bool(true),
/// 				WebdavEnabled:       pulumi.Bool(true),
/// 				ZfsEnabled:          pulumi.Bool(true),
/// 			},
/// 			SnapshotPlan: &hcloud.StorageBoxSnapshotPlanArgs{
/// 				MaxSnapshots: pulumi.Int(10),
/// 				Minute:       pulumi.Int(16),
/// 				Hour:         pulumi.Int(18),
/// 				DayOfWeek:    pulumi.Int(3),
/// 			},
/// 			DeleteProtection: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeFile, err := std.File(ctx, &std.FileArgs{
/// 			Input: "~/.ssh/id_ed25519.pub",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = hcloud.NewStorageBox(ctx, "ssh_key", &hcloud.StorageBoxArgs{
/// 			Name:           pulumi.String("backups"),
/// 			StorageBoxType: pulumi.String("bx21"),
/// 			Location:       pulumi.String("hel1"),
/// 			Password:       pulumi.Any(storageBoxPassword),
/// 			SshKeys: pulumi.StringArray{
/// 				myKey.PublicKey,
/// 				pulumi.String(invokeFile.Result),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     hcloud = {
///       source = "pulumi/hcloud"
///     }
///     std = {
///       source = "pulumi/std"
///     }
///   }
/// }
///
/// resource "hcloud_storagebox" "backups" {
///   name             = "backups"
///   storage_box_type = "bx21"
///   location         = "hel1"
///   password         = storageBoxPassword
///   labels = {
///     "foo" = "bar"
///   }
///   access_settings = {
///     reachable_externally = true
///     samba_enabled        = true
///     ssh_enabled          = true
///     webdav_enabled       = true
///     zfs_enabled          = true
///   }
///   snapshot_plan = {
///     max_snapshots = 10
///     minute        = 16
///     hour          = 18
///     day_of_week   = 3
///   }
///   delete_protection = true
/// }
/// resource "hcloud_storagebox" "ssh_key" {
///   name             = "backups"
///   storage_box_type = "bx21"
///   location         = "hel1"
///   password         = storageBoxPassword
///   ssh_keys         = [myKey.publicKey, file("~/.ssh/id_ed25519.pub")]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.hcloud.StorageBox;
/// import com.pulumi.hcloud.StorageBoxArgs;
/// import com.pulumi.hcloud.inputs.StorageBoxAccessSettingsArgs;
/// import com.pulumi.hcloud.inputs.StorageBoxSnapshotPlanArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.FileArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var backups = new StorageBox("backups", StorageBoxArgs.builder()
///             .name("backups")
///             .storageBoxType("bx21")
///             .location("hel1")
///             .password(storageBoxPassword)
///             .labels(Map.of("foo", "bar"))
///             .accessSettings(StorageBoxAccessSettingsArgs.builder()
///                 .reachableExternally(true)
///                 .sambaEnabled(true)
///                 .sshEnabled(true)
///                 .webdavEnabled(true)
///                 .zfsEnabled(true)
///                 .build())
///             .snapshotPlan(StorageBoxSnapshotPlanArgs.builder()
///                 .maxSnapshots(10)
///                 .minute(16)
///                 .hour(18)
///                 .dayOfWeek(3)
///                 .build())
///             .deleteProtection(true)
///             .build());
///
///         var sshKey = new StorageBox("sshKey", StorageBoxArgs.builder()
///             .name("backups")
///             .storageBoxType("bx21")
///             .location("hel1")
///             .password(storageBoxPassword)
///             .sshKeys(
///                 myKey.publicKey(),
///                 StdFunctions.file(FileArgs.builder()
///                     .input("~/.ssh/id_ed25519.pub")
///                     .build()).result())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   backups:
///     type: hcloud:StorageBox
///     properties:
///       name: backups
///       storageBoxType: bx21
///       location: hel1
///       password: ${storageBoxPassword}
///       labels:
///         foo: bar
///       accessSettings:
///         reachableExternally: true
///         sambaEnabled: true
///         sshEnabled: true
///         webdavEnabled: true
///         zfsEnabled: true
///       snapshotPlan:
///         maxSnapshots: 10
///         minute: 16
///         hour: 18
///         dayOfWeek: 3
///       deleteProtection: true
///   sshKey:
///     type: hcloud:StorageBox
///     name: ssh_key
///     properties:
///       name: backups
///       storageBoxType: bx21
///       location: hel1
///       password: ${storageBoxPassword}
///       sshKeys:
///         - ${myKey.publicKey}
///         - fn::invoke:
///             function: std:file
///             arguments:
///               input: ~/.ssh/id_ed25519.pub
///             return: result
/// ```
///
///
/// ## Import
///
/// The `pulumi import` command can be used, for example:
///
/// ```sh
/// $ pulumi import hcloud:index/storageBox:StorageBox example "$STORAGE_BOX_ID"
/// ```
class StorageBox extends pulumi.CustomResource {
  /// Access settings of the Storage Box.
  late final pulumi.Output<StorageBoxAccessSettings> accessSettings;
  /// Prevent the Storage Box from being accidentally deleted outside of Terraform.
  late final pulumi.Output<bool> deleteProtection;
  /// User-defined [labels](https://docs.hetzner.cloud/reference/cloud#labels) (key-value pairs) for the resource.
  late final pulumi.Output<Map<String, String>> labels;
  /// Name of the Location.
  late final pulumi.Output<String> location;
  /// Name of the Storage Box.
  late final pulumi.Output<String> name;
  /// Password of the Storage Box. For more details, see the [Storage Boxes password policy](https://docs.hetzner.cloud/reference/hetzner#storage-boxes-password-policy).
  late final pulumi.Output<String> password;
  /// FQDN of the Storage Box.
  late final pulumi.Output<String> server;
  /// Details of the active snapshot plan.
  late final pulumi.Output<StorageBoxSnapshotPlan?> snapshotPlan;
  /// SSH public keys in OpenSSH format to inject into the Storage Box. It is not possible to update the SSH Keys through the API, so changing this attribute forces a replace of the Storage Box.
  late final pulumi.Output<List<String>> sshKeys;
  /// Name of the Storage Box Type.
  late final pulumi.Output<String> storageBoxType;
  /// Host system of the Storage Box.
  late final pulumi.Output<String> system;
  /// Primary username of the Storage Box.
  late final pulumi.Output<String> username;

  /// Creates a new [StorageBox].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [StorageBox]. {@macro pulumi_index_storage_box_storage_box_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  StorageBox(
    String name, {
    StorageBoxArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'hcloud:index/storageBox:StorageBox',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accessSettings = registerOutput<StorageBoxAccessSettings>('accessSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StorageBoxAccessSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    deleteProtection = registerOutput<bool>('deleteProtection');
    labels = registerOutput<Map<String, String>>('labels');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    password = registerOutput<String>('password');
    server = registerOutput<String>('server');
    snapshotPlan = registerOutput<StorageBoxSnapshotPlan?>('snapshotPlan', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StorageBoxSnapshotPlan.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    sshKeys = registerOutput<List<String>>('sshKeys');
    storageBoxType = registerOutput<String>('storageBoxType');
    system = registerOutput<String>('system');
    username = registerOutput<String>('username');
  }

  /// Gets an existing [StorageBox] resource's state with the given [name] and [id].
  static StorageBox get(
    String name,
    pulumi.Input<String> id, {
    StorageBoxState? state,
  }) {
    return StorageBox._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  StorageBox._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'hcloud:index/storageBox:StorageBox',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accessSettings = registerOutput<StorageBoxAccessSettings>('accessSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StorageBoxAccessSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    deleteProtection = registerOutput<bool>('deleteProtection');
    labels = registerOutput<Map<String, String>>('labels');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    password = registerOutput<String>('password');
    server = registerOutput<String>('server');
    snapshotPlan = registerOutput<StorageBoxSnapshotPlan?>('snapshotPlan', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StorageBoxSnapshotPlan.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    sshKeys = registerOutput<List<String>>('sshKeys');
    storageBoxType = registerOutput<String>('storageBoxType');
    system = registerOutput<String>('system');
    username = registerOutput<String>('username');
  }
}
