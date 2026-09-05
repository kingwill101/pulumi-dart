import 'package:pulumi/pulumi.dart' as pulumi;
import 'plugin_instance_action.dart';
import 'plugin_instance_args.dart';
import 'plugin_instance_auth_config.dart';
import 'plugin_instance_state.dart';

/// Description
///
///
///
/// ## Example Usage
///
/// ### Apihub Plugin Instance Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const apihubPluginInstanceBasic = new gcp.apihub.PluginInstance("apihub_plugin_instance_basic", {
///     location: "us-central1",
///     plugin: "existing-plugin-id",
///     pluginInstanceId: "test",
///     displayName: "Sample Plugin Instance Display Name",
///     disable: false,
///     actions: [{
///         actionId: "existing-action-id",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// apihub_plugin_instance_basic = gcp.apihub.PluginInstance("apihub_plugin_instance_basic",
///     location="us-central1",
///     plugin="existing-plugin-id",
///     plugin_instance_id="test",
///     display_name="Sample Plugin Instance Display Name",
///     disable=False,
///     actions=[{
///         "action_id": "existing-action-id",
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var apihubPluginInstanceBasic = new Gcp.ApiHub.PluginInstance("apihub_plugin_instance_basic", new()
///     {
///         Location = "us-central1",
///         Plugin = "existing-plugin-id",
///         PluginInstanceId = "test",
///         DisplayName = "Sample Plugin Instance Display Name",
///         Disable = false,
///         Actions = new[]
///         {
///             new Gcp.ApiHub.Inputs.PluginInstanceActionArgs
///             {
///                 ActionId = "existing-action-id",
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/apihub"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := apihub.NewPluginInstance(ctx, "apihub_plugin_instance_basic", &apihub.PluginInstanceArgs{
/// 			Location:         pulumi.String("us-central1"),
/// 			Plugin:           pulumi.String("existing-plugin-id"),
/// 			PluginInstanceId: pulumi.String("test"),
/// 			DisplayName:      pulumi.String("Sample Plugin Instance Display Name"),
/// 			Disable:          pulumi.Bool(false),
/// 			Actions: apihub.PluginInstanceActionArray{
/// 				&apihub.PluginInstanceActionArgs{
/// 					ActionId: pulumi.String("existing-action-id"),
/// 				},
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_apihub_plugininstance" "apihub_plugin_instance_basic" {
///   location           = "us-central1"
///   plugin             = "existing-plugin-id"
///   plugin_instance_id = "test"
///   display_name       = "Sample Plugin Instance Display Name"
///   disable            = false
///   actions {
///     action_id = "existing-action-id"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.apihub.PluginInstance;
/// import com.pulumi.gcp.apihub.PluginInstanceArgs;
/// import com.pulumi.gcp.apihub.inputs.PluginInstanceActionArgs;
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
///         var apihubPluginInstanceBasic = new PluginInstance("apihubPluginInstanceBasic", PluginInstanceArgs.builder()
///             .location("us-central1")
///             .plugin("existing-plugin-id")
///             .pluginInstanceId("test")
///             .displayName("Sample Plugin Instance Display Name")
///             .disable(false)
///             .actions(PluginInstanceActionArgs.builder()
///                 .actionId("existing-action-id")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   apihubPluginInstanceBasic:
///     type: gcp:apihub:PluginInstance
///     name: apihub_plugin_instance_basic
///     properties:
///       location: us-central1
///       plugin: existing-plugin-id
///       pluginInstanceId: test
///       displayName: Sample Plugin Instance Display Name
///       disable: false
///       actions:
///         - actionId: existing-action-id
/// ```
///
///
/// ## Import
///
/// PluginInstance can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/plugins/{{plugin}}/instances/{{plugin_instance_id}}`
/// * `{{project}}/{{location}}/{{plugin}}/{{plugin_instance_id}}`
/// * `{{location}}/{{plugin}}/{{plugin_instance_id}}`
///
///
/// When using the `pulumi import` command, PluginInstance can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:apihub/pluginInstance:PluginInstance default projects/{{project}}/locations/{{location}}/plugins/{{plugin}}/instances/{{plugin_instance_id}}
/// $ pulumi import gcp:apihub/pluginInstance:PluginInstance default {{project}}/{{location}}/{{plugin}}/{{plugin_instance_id}}
/// $ pulumi import gcp:apihub/pluginInstance:PluginInstance default {{location}}/{{plugin}}/{{plugin_instance_id}}
/// ```
class PluginInstance extends pulumi.CustomResource {
  /// The action status for the plugin instance.
  /// Structure is documented below.
  late final pulumi.Output<List<PluginInstanceAction>> actions;
  /// AuthConfig represents the authentication information.
  /// Structure is documented below.
  late final pulumi.Output<PluginInstanceAuthConfig?> authConfig;
  /// Timestamp indicating when the plugin instance was created.
  late final pulumi.Output<String> createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// The display name for this plugin instance. Max length is 255 characters.
  late final pulumi.Output<bool?> disable;
  /// The display name for this plugin instance. Max length is 255 characters.
  late final pulumi.Output<String> displayName;
  /// Error message describing the failure, if any, during Create, Delete or
  /// ApplyConfig operation corresponding to the plugin instance.This field will
  /// only be populated if the plugin instance is in the ERROR or FAILED state.
  late final pulumi.Output<String> errorMessage;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final pulumi.Output<String> location;
  /// Identifier. The unique name of the plugin instance resource.
  /// Format:
  /// `projects/{project}/locations/{location}/plugins/{plugin}/instances/{instance}`
  late final pulumi.Output<String> name;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final pulumi.Output<String> plugin;
  /// The ID to use for the plugin instance, which will become the final
  /// component of the plugin instance's resource name. This field is optional.
  /// * If provided, the same will be used. The service will throw an error if
  /// the specified id is already used by another plugin instance in the plugin
  /// resource.
  /// * If not provided, a system generated id will be used.
  /// This value should be 4-63 characters, and valid characters
  /// are /a-z[0-9]-_/.
  late final pulumi.Output<String> pluginInstanceId;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// Optional. The source project id of the plugin instance. This will be the id of runtime project in case of gcp based plugins and org id in case of non gcp based plugins. This field will be a required field for Google provided on-ramp plugins.
  late final pulumi.Output<String?> sourceProjectId;
  /// The current state of the plugin instance (e.g., enabled, disabled,
  /// provisioning).
  /// Possible values:
  /// STATE_UNSPECIFIED
  /// CREATING
  /// ACTIVE
  /// APPLYING_CONFIG
  /// ERROR
  /// FAILED
  /// DELETING
  late final pulumi.Output<String> state;
  /// Timestamp indicating when the plugin instance was last updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [PluginInstance].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PluginInstance]. {@macro pulumi_apihub_plugin_instance_plugin_instance_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PluginInstance(
    String name, {
    PluginInstanceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:apihub/pluginInstance:PluginInstance',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.36.1').merge(options),
        ) {
    actions = registerOutput<List<PluginInstanceAction>>('actions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<PluginInstanceAction>(guardedValue, (value) => PluginInstanceAction.fromMap((value as Map).cast<String, dynamic>())); });
    authConfig = registerOutput<PluginInstanceAuthConfig?>('authConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PluginInstanceAuthConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    disable = registerOutput<bool?>('disable');
    displayName = registerOutput<String>('displayName');
    errorMessage = registerOutput<String>('errorMessage');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    plugin = registerOutput<String>('plugin');
    pluginInstanceId = registerOutput<String>('pluginInstanceId');
    project = registerOutput<String>('project');
    sourceProjectId = registerOutput<String?>('sourceProjectId');
    state = registerOutput<String>('state');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [PluginInstance] resource's state with the given [name] and [id].
  static PluginInstance get(
    String name,
    pulumi.Input<String> id, {
    PluginInstanceState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return PluginInstance._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  PluginInstance._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:apihub/pluginInstance:PluginInstance',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    actions = registerOutput<List<PluginInstanceAction>>('actions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<PluginInstanceAction>(guardedValue, (value) => PluginInstanceAction.fromMap((value as Map).cast<String, dynamic>())); });
    authConfig = registerOutput<PluginInstanceAuthConfig?>('authConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PluginInstanceAuthConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    disable = registerOutput<bool?>('disable');
    displayName = registerOutput<String>('displayName');
    errorMessage = registerOutput<String>('errorMessage');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    plugin = registerOutput<String>('plugin');
    pluginInstanceId = registerOutput<String>('pluginInstanceId');
    project = registerOutput<String>('project');
    sourceProjectId = registerOutput<String?>('sourceProjectId');
    this.state = registerOutput<String>('state');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Creates a typed reference to an existing [PluginInstance] resource.
  PluginInstance.reference(String urn)
    : super(
        'gcp:apihub/pluginInstance:PluginInstance',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    actions = registerOutput<List<PluginInstanceAction>>('actions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<PluginInstanceAction>(guardedValue, (value) => PluginInstanceAction.fromMap((value as Map).cast<String, dynamic>())); });
    authConfig = registerOutput<PluginInstanceAuthConfig?>('authConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PluginInstanceAuthConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    disable = registerOutput<bool?>('disable');
    displayName = registerOutput<String>('displayName');
    errorMessage = registerOutput<String>('errorMessage');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    plugin = registerOutput<String>('plugin');
    pluginInstanceId = registerOutput<String>('pluginInstanceId');
    project = registerOutput<String>('project');
    sourceProjectId = registerOutput<String?>('sourceProjectId');
    state = registerOutput<String>('state');
    updateTime = registerOutput<String>('updateTime');
  }
}
