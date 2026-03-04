import 'package:pulumi/pulumi.dart' as pulumi;
import 'storage_box_subaccount_access_settings.dart';
import 'storage_box_subaccount_args.dart';
import 'storage_box_subaccount_state.dart';

/// Provides a Hetzner Storage Box Subaccount resource.
///
/// See the [Storage Box Subaccounts API documentation](https://docs.hetzner.cloud/reference/hetzner#storage-box-subaccounts) for more details.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as hcloud from "@pulumi/hcloud";
///
/// const config = new pulumi.Config();
/// const teamBadgerPassword = config.require("teamBadgerPassword");
/// const main = new hcloud.StorageBox("main", {});
/// const teamBadger = new hcloud.StorageBoxSubaccount("team_badger", {
///     storageBoxId: main.id,
///     name: "badger",
///     homeDirectory: "teams/badger/",
///     password: teamBadgerPassword,
///     accessSettings: {
///         reachableExternally: true,
///         sambaEnabled: true,
///     },
///     description: "Primary account for the Badger team to upload files.",
///     labels: {
///         env: "production",
///         team: "badger",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_hcloud as hcloud
///
/// config = pulumi.Config()
/// team_badger_password = config.require("teamBadgerPassword")
/// main = hcloud.StorageBox("main")
/// team_badger = hcloud.StorageBoxSubaccount("team_badger",
///     storage_box_id=main.id,
///     name="badger",
///     home_directory="teams/badger/",
///     password=team_badger_password,
///     access_settings={
///         "reachable_externally": True,
///         "samba_enabled": True,
///     },
///     description="Primary account for the Badger team to upload files.",
///     labels={
///         "env": "production",
///         "team": "badger",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using HCloud = Pulumi.HCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var teamBadgerPassword = config.Require("teamBadgerPassword");
///     var main = new HCloud.StorageBox("main");
///
///     var teamBadger = new HCloud.StorageBoxSubaccount("team_badger", new()
///     {
///         StorageBoxId = main.Id,
///         Name = "badger",
///         HomeDirectory = "teams/badger/",
///         Password = teamBadgerPassword,
///         AccessSettings = new HCloud.Inputs.StorageBoxSubaccountAccessSettingsArgs
///         {
///             ReachableExternally = true,
///             SambaEnabled = true,
///         },
///         Description = "Primary account for the Badger team to upload files.",
///         Labels =
///         {
///             { "env", "production" },
///             { "team", "badger" },
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
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		teamBadgerPassword := cfg.Require("teamBadgerPassword")
/// 		main, err := hcloud.NewStorageBox(ctx, "main", nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = hcloud.NewStorageBoxSubaccount(ctx, "team_badger", &hcloud.StorageBoxSubaccountArgs{
/// 			StorageBoxId:  main.ID(),
/// 			Name:          pulumi.String("badger"),
/// 			HomeDirectory: pulumi.String("teams/badger/"),
/// 			Password:      pulumi.String(teamBadgerPassword),
/// 			AccessSettings: &hcloud.StorageBoxSubaccountAccessSettingsArgs{
/// 				ReachableExternally: pulumi.Bool(true),
/// 				SambaEnabled:        pulumi.Bool(true),
/// 			},
/// 			Description: pulumi.String("Primary account for the Badger team to upload files."),
/// 			Labels: pulumi.StringMap{
/// 				"env":  pulumi.String("production"),
/// 				"team": pulumi.String("badger"),
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
/// import com.pulumi.hcloud.StorageBox;
/// import com.pulumi.hcloud.StorageBoxSubaccount;
/// import com.pulumi.hcloud.StorageBoxSubaccountArgs;
/// import com.pulumi.hcloud.inputs.StorageBoxSubaccountAccessSettingsArgs;
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
///         final var config = ctx.config();
///         final var teamBadgerPassword = config.get("teamBadgerPassword");
///         var main = new StorageBox("main");
///
///         var teamBadger = new StorageBoxSubaccount("teamBadger", StorageBoxSubaccountArgs.builder()
///             .storageBoxId(main.id())
///             .name("badger")
///             .homeDirectory("teams/badger/")
///             .password(teamBadgerPassword)
///             .accessSettings(StorageBoxSubaccountAccessSettingsArgs.builder()
///                 .reachableExternally(true)
///                 .sambaEnabled(true)
///                 .build())
///             .description("Primary account for the Badger team to upload files.")
///             .labels(Map.ofEntries(
///                 Map.entry("env", "production"),
///                 Map.entry("team", "badger")
///             ))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   teamBadgerPassword:
///     type: string
/// resources:
///   main:
///     type: hcloud:StorageBox
///   teamBadger:
///     type: hcloud:StorageBoxSubaccount
///     name: team_badger
///     properties:
///       storageBoxId: ${main.id}
///       name: badger
///       homeDirectory: teams/badger/
///       password: ${teamBadgerPassword}
///       accessSettings:
///         reachableExternally: true
///         sambaEnabled: true
///       description: Primary account for the Badger team to upload files.
///       labels:
///         env: production
///         team: badger
/// ```
///
///
/// ## Import
///
/// The `pulumi import` command can be used, for example:
///
/// ```sh
/// $ pulumi import hcloud:index/storageBoxSubaccount:StorageBoxSubaccount example "$STORAGE_BOX_ID/$STORAGE_BOX_SUBACCOUNT_ID"
/// ```
class StorageBoxSubaccount extends pulumi.CustomResource {
  /// Access settings for the Subaccount.
  late final pulumi.Output<StorageBoxSubaccountAccessSettings> accessSettings;

  /// A description of the Storage Box Subaccount.
  late final pulumi.Output<String> description;

  /// Home directory of the Storage Box Subaccount. The directory will be created if it doesn't exist yet. Must not include a leading slash (`/`).
  late final pulumi.Output<String> homeDirectory;

  /// User-defined [labels](https://docs.hetzner.cloud/reference/cloud#labels) (key-value pairs) for the resource.
  late final pulumi.Output<Map<String, String>> labels;

  /// Name of the Storage Box Subaccount.
  late final pulumi.Output<String> name;

  /// Password of the Storage Box. For more details, see the [Storage Boxes password policy](https://docs.hetzner.cloud/reference/hetzner#storage-boxes-password-policy).
  late final pulumi.Output<String> password;

  /// FQDN of the Storage Box Subaccount.
  late final pulumi.Output<String> server;

  /// ID of the Storage Box.
  late final pulumi.Output<int> storageBoxId;

  /// Username of the Storage Box Subaccount.
  late final pulumi.Output<String> username;

  /// Creates a new [StorageBoxSubaccount].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [StorageBoxSubaccount]. {@macro pulumi_index_storage_box_subaccount_storage_box_subaccount_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  StorageBoxSubaccount(
    String name, {
    StorageBoxSubaccountArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'hcloud:index/storageBoxSubaccount:StorageBoxSubaccount',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    accessSettings = registerOutput<StorageBoxSubaccountAccessSettings>(
      'accessSettings',
    );
    description = registerOutput<String>('description');
    homeDirectory = registerOutput<String>('homeDirectory');
    labels = registerOutput<Map<String, String>>('labels');
    this.name = registerOutput<String>('name');
    password = registerOutput<String>('password');
    server = registerOutput<String>('server');
    storageBoxId = registerOutput<int>('storageBoxId');
    username = registerOutput<String>('username');
  }

  /// Gets an existing [StorageBoxSubaccount] resource's state with the given [name] and [id].
  static StorageBoxSubaccount get(
    String name,
    pulumi.Input<String> id, {
    StorageBoxSubaccountState? state,
  }) {
    return StorageBoxSubaccount._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  StorageBoxSubaccount._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'hcloud:index/storageBoxSubaccount:StorageBoxSubaccount',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    accessSettings = registerOutput<StorageBoxSubaccountAccessSettings>(
      'accessSettings',
    );
    description = registerOutput<String>('description');
    homeDirectory = registerOutput<String>('homeDirectory');
    labels = registerOutput<Map<String, String>>('labels');
    this.name = registerOutput<String>('name');
    password = registerOutput<String>('password');
    server = registerOutput<String>('server');
    storageBoxId = registerOutput<int>('storageBoxId');
    username = registerOutput<String>('username');
  }
}
