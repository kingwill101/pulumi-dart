import 'package:pulumi/pulumi.dart' as pulumi;
import 'mute_config_args.dart';
import 'mute_config_state.dart';

/// Mute Findings is a volume management feature in Security Command Center
/// that lets you manually or programmatically hide irrelevant findings,
/// and create filters to automatically silence existing and future
/// findings based on criteria you specify.
///
///
/// To get more information about MuteConfig, see:
///
/// * [API documentation](https://cloud.google.com/security-command-center/docs/reference/rest/v1/organizations.muteConfigs)
///
/// ## Example Usage
///
/// ### Scc Mute Config
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.securitycenter.MuteConfig("default", {
///     muteConfigId: "my-config",
///     parent: "organizations/123456789",
///     filter: "category: \"OS_VULNERABILITY\"",
///     description: "My Mute Config",
///     type: "DYNAMIC",
///     expiryTime: "2215-02-03T15:01:23Z",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.securitycenter.MuteConfig("default",
///     mute_config_id="my-config",
///     parent="organizations/123456789",
///     filter="category: \"OS_VULNERABILITY\"",
///     description="My Mute Config",
///     type="DYNAMIC",
///     expiry_time="2215-02-03T15:01:23Z")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.SecurityCenter.MuteConfig("default", new()
///     {
///         MuteConfigId = "my-config",
///         Parent = "organizations/123456789",
///         Filter = "category: \"OS_VULNERABILITY\"",
///         Description = "My Mute Config",
///         Type = "DYNAMIC",
///         ExpiryTime = "2215-02-03T15:01:23Z",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/securitycenter"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := securitycenter.NewMuteConfig(ctx, "default", &securitycenter.MuteConfigArgs{
/// 			MuteConfigId: pulumi.String("my-config"),
/// 			Parent:       pulumi.String("organizations/123456789"),
/// 			Filter:       pulumi.String("category: \"OS_VULNERABILITY\""),
/// 			Description:  pulumi.String("My Mute Config"),
/// 			Type:         pulumi.String("DYNAMIC"),
/// 			ExpiryTime:   pulumi.String("2215-02-03T15:01:23Z"),
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
/// import com.pulumi.gcp.securitycenter.MuteConfig;
/// import com.pulumi.gcp.securitycenter.MuteConfigArgs;
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
///         var default_ = new MuteConfig("default", MuteConfigArgs.builder()
///             .muteConfigId("my-config")
///             .parent("organizations/123456789")
///             .filter("category: \"OS_VULNERABILITY\"")
///             .description("My Mute Config")
///             .type("DYNAMIC")
///             .expiryTime("2215-02-03T15:01:23Z")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:securitycenter:MuteConfig
///     properties:
///       muteConfigId: my-config
///       parent: organizations/123456789
///       filter: 'category: "OS_VULNERABILITY"'
///       description: My Mute Config
///       type: DYNAMIC
///       expiryTime: 2215-02-03T15:01:23Z
/// ```
///
///
/// ## Import
///
/// MuteConfig can be imported using any of these accepted formats:
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, MuteConfig can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:securitycenter/muteConfig:MuteConfig default {{name}}
/// ```
class MuteConfig extends pulumi.CustomResource {
  /// The time at which the mute config was created. This field is set by
  /// the server and will be ignored if provided on config creation.
  late final pulumi.Output<String> createTime;

  /// A description of the mute config.
  late final pulumi.Output<String?> description;

  /// Optional. The expiry of the mute config. Only applicable for dynamic configs.
  /// If the expiry is set, when the config expires, it is removed from all findings.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to
  /// nine fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  late final pulumi.Output<String?> expiryTime;

  /// An expression that defines the filter to apply across create/update
  /// events of findings. While creating a filter string, be mindful of
  /// the scope in which the mute configuration is being created. E.g.,
  /// If a filter contains project = X but is created under the
  /// project = Y scope, it might not match any findings.
  late final pulumi.Output<String> filter;

  /// Email address of the user who last edited the mute config. This
  /// field is set by the server and will be ignored if provided on
  /// config creation or update.
  late final pulumi.Output<String> mostRecentEditor;

  /// Unique identifier provided by the client within the parent scope.
  late final pulumi.Output<String> muteConfigId;

  /// Name of the mute config. Its format is
  /// organizations/{organization}/muteConfigs/{configId},
  /// folders/{folder}/muteConfigs/{configId},
  /// or projects/{project}/muteConfigs/{configId}
  late final pulumi.Output<String> name;

  /// Resource name of the new mute configs's parent. Its format is
  /// "organizations/[organization_id]", "folders/[folder_id]", or
  /// "projects/[project_id]".
  late final pulumi.Output<String> parent;

  /// The type of the mute config, which determines what type of mute state the config affects.
  /// Default value is `DYNAMIC`.
  /// Possible values are: `MUTE_CONFIG_TYPE_UNSPECIFIED`, `STATIC`, `DYNAMIC`.
  late final pulumi.Output<String?> type;

  /// Output only. The most recent time at which the mute config was
  /// updated. This field is set by the server and will be ignored if
  /// provided on config creation or update.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [MuteConfig].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MuteConfig]. {@macro pulumi_securitycenter_mute_config_mute_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MuteConfig(
    String name, {
    MuteConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:securitycenter/muteConfig:MuteConfig',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    createTime = registerOutput<String>('createTime');
    description = registerOutput<String?>('description');
    expiryTime = registerOutput<String?>('expiryTime');
    filter = registerOutput<String>('filter');
    mostRecentEditor = registerOutput<String>('mostRecentEditor');
    muteConfigId = registerOutput<String>('muteConfigId');
    this.name = registerOutput<String>('name');
    parent = registerOutput<String>('parent');
    type = registerOutput<String?>('type');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [MuteConfig] resource's state with the given [name] and [id].
  static MuteConfig get(
    String name,
    pulumi.Input<String> id, {
    MuteConfigState? state,
  }) {
    return MuteConfig._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  MuteConfig._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:securitycenter/muteConfig:MuteConfig',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    createTime = registerOutput<String>('createTime');
    description = registerOutput<String?>('description');
    expiryTime = registerOutput<String?>('expiryTime');
    filter = registerOutput<String>('filter');
    mostRecentEditor = registerOutput<String>('mostRecentEditor');
    muteConfigId = registerOutput<String>('muteConfigId');
    this.name = registerOutput<String>('name');
    parent = registerOutput<String>('parent');
    type = registerOutput<String?>('type');
    updateTime = registerOutput<String>('updateTime');
  }
}
