import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2_project_mute_config_args.dart';
import 'v2_project_mute_config_state.dart';

/// Mute Findings is a volume management feature in Security Command Center
/// that lets you manually or programmatically hide irrelevant findings,
/// and create filters to automatically silence existing and future
/// findings based on criteria you specify.
///
///
/// To get more information about ProjectMuteConfig, see:
///
/// * [API documentation](https://cloud.google.com/security-command-center/docs/reference/rest/v2/projects.muteConfigs)
///
/// ## Example Usage
///
/// ### Scc V2 Project Mute Config Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.securitycenter.V2ProjectMuteConfig("default", {
///     muteConfigId: "my-config",
///     project: "my-project-name",
///     location: "global",
///     description: "My custom Cloud Security Command Center Finding Project mute Configuration",
///     filter: "severity = \"HIGH\"",
///     type: "STATIC",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.securitycenter.V2ProjectMuteConfig("default",
///     mute_config_id="my-config",
///     project="my-project-name",
///     location="global",
///     description="My custom Cloud Security Command Center Finding Project mute Configuration",
///     filter="severity = \"HIGH\"",
///     type="STATIC")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.SecurityCenter.V2ProjectMuteConfig("default", new()
///     {
///         MuteConfigId = "my-config",
///         Project = "my-project-name",
///         Location = "global",
///         Description = "My custom Cloud Security Command Center Finding Project mute Configuration",
///         Filter = "severity = \"HIGH\"",
///         Type = "STATIC",
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
/// 		_, err := securitycenter.NewV2ProjectMuteConfig(ctx, "default", &securitycenter.V2ProjectMuteConfigArgs{
/// 			MuteConfigId: pulumi.String("my-config"),
/// 			Project:      pulumi.String("my-project-name"),
/// 			Location:     pulumi.String("global"),
/// 			Description:  pulumi.String("My custom Cloud Security Command Center Finding Project mute Configuration"),
/// 			Filter:       pulumi.String("severity = \"HIGH\""),
/// 			Type:         pulumi.String("STATIC"),
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_securitycenter_v2projectmuteconfig" "default" {
///   mute_config_id = "my-config"
///   project        = "my-project-name"
///   location       = "global"
///   description    = "My custom Cloud Security Command Center Finding Project mute Configuration"
///   filter         = "severity = \"HIGH\""
///   type           = "STATIC"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.securitycenter.V2ProjectMuteConfig;
/// import com.pulumi.gcp.securitycenter.V2ProjectMuteConfigArgs;
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
///         var default_ = new V2ProjectMuteConfig("default", V2ProjectMuteConfigArgs.builder()
///             .muteConfigId("my-config")
///             .project("my-project-name")
///             .location("global")
///             .description("My custom Cloud Security Command Center Finding Project mute Configuration")
///             .filter("severity = \"HIGH\"")
///             .type("STATIC")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:securitycenter:V2ProjectMuteConfig
///     properties:
///       muteConfigId: my-config
///       project: my-project-name
///       location: global
///       description: My custom Cloud Security Command Center Finding Project mute Configuration
///       filter: severity = "HIGH"
///       type: STATIC
/// ```
///
///
/// ## Import
///
/// ProjectMuteConfig can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/muteConfigs/{{mute_config_id}}`
/// * `{{project}}/{{location}}/{{mute_config_id}}`
/// * `{{location}}/{{mute_config_id}}`
///
///
/// When using the `pulumi import` command, ProjectMuteConfig can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:securitycenter/v2ProjectMuteConfig:V2ProjectMuteConfig default projects/{{project}}/locations/{{location}}/muteConfigs/{{mute_config_id}}
/// $ pulumi import gcp:securitycenter/v2ProjectMuteConfig:V2ProjectMuteConfig default {{project}}/{{location}}/{{mute_config_id}}
/// $ pulumi import gcp:securitycenter/v2ProjectMuteConfig:V2ProjectMuteConfig default {{location}}/{{mute_config_id}}
/// ```
class V2ProjectMuteConfig extends pulumi.CustomResource {
  /// The time at which the mute config was created. This field is set by
  /// the server and will be ignored if provided on config creation.
  late final pulumi.Output<String> createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// A description of the mute config.
  late final pulumi.Output<String?> description;
  /// An expression that defines the filter to apply across create/update
  /// events of findings. While creating a filter string, be mindful of
  /// the scope in which the mute configuration is being created. E.g.,
  /// If a filter contains project = X but is created under the
  /// project = Y scope, it might not match any findings.
  late final pulumi.Output<String> filter;
  /// location Id is provided by project. If not provided, Use global as default.
  late final pulumi.Output<String?> location;
  /// Email address of the user who last edited the mute config. This
  /// field is set by the server and will be ignored if provided on
  /// config creation or update.
  late final pulumi.Output<String> mostRecentEditor;
  /// Unique identifier provided by the client within the parent scope.
  late final pulumi.Output<String> muteConfigId;
  /// Name of the mute config. Its format is
  /// projects/{project}/locations/global/muteConfigs/{configId},
  /// folders/{folder}/locations/global/muteConfigs/{configId},
  /// or organizations/{organization}/locations/global/muteConfigs/{configId}
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The type of the mute config.
  late final pulumi.Output<String> type;
  /// Output only. The most recent time at which the mute config was
  /// updated. This field is set by the server and will be ignored if
  /// provided on config creation or update.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [V2ProjectMuteConfig].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [V2ProjectMuteConfig]. {@macro pulumi_securitycenter_v2_project_mute_config_v2_project_mute_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  V2ProjectMuteConfig(
    String name, {
    V2ProjectMuteConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:securitycenter/v2ProjectMuteConfig:V2ProjectMuteConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    filter = registerOutput<String>('filter');
    location = registerOutput<String?>('location');
    mostRecentEditor = registerOutput<String>('mostRecentEditor');
    muteConfigId = registerOutput<String>('muteConfigId');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    type = registerOutput<String>('type');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [V2ProjectMuteConfig] resource's state with the given [name] and [id].
  static V2ProjectMuteConfig get(
    String name,
    pulumi.Input<String> id, {
    V2ProjectMuteConfigState? state,
  }) {
    return V2ProjectMuteConfig._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  V2ProjectMuteConfig._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:securitycenter/v2ProjectMuteConfig:V2ProjectMuteConfig',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    filter = registerOutput<String>('filter');
    location = registerOutput<String?>('location');
    mostRecentEditor = registerOutput<String>('mostRecentEditor');
    muteConfigId = registerOutput<String>('muteConfigId');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    type = registerOutput<String>('type');
    updateTime = registerOutput<String>('updateTime');
  }
}
