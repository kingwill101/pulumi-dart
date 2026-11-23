import 'package:pulumi/pulumi.dart' as pulumi;
import 'config_store_setting_args.dart';
import 'config_store_setting_state.dart';
import 'config_store_setting_value.dart';

/// A regional Dataflow Config Store setting on a project, folder, or organization.
///
///
/// To get more information about ConfigStoreSetting, see:
///
/// * [API documentation](https://cloud.google.com/dataflow/docs/reference/rest/v1b3/projects.locations.configStoreSettings)
/// * How-to Guides
/// * [Dataflow Config Store Settings](https://cloud.google.com/dataflow/docs/guides/config-store-settings)
///
///
/// ## Example Usage
///
/// ### Dataflow Config Store Setting Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = gcp.organizations.getProject({});
/// const example = new gcp.dataflow.ConfigStoreSetting("example", {
///     parent: project.then(project => `projects/${project.number}`),
///     location: "us-central1",
///     configStoreSettingId: "default_launcher_machine_type",
///     value: {
///         stringValue: "e2-standard-4",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project = gcp.organizations.get_project()
/// example = gcp.dataflow.ConfigStoreSetting("example",
///     parent=f"projects/{project.number}",
///     location="us-central1",
///     config_store_setting_id="default_launcher_machine_type",
///     value={
///         "string_value": "e2-standard-4",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var project = Gcp.Organizations.GetProject.Invoke();
///
///     var example = new Gcp.Dataflow.ConfigStoreSetting("example", new()
///     {
///         Parent = $"projects/{project.Apply(getProjectResult => getProjectResult.Number)}",
///         Location = "us-central1",
///         ConfigStoreSettingId = "default_launcher_machine_type",
///         Value = new Gcp.Dataflow.Inputs.ConfigStoreSettingValueArgs
///         {
///             StringValue = "e2-standard-4",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/dataflow"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = dataflow.NewConfigStoreSetting(ctx, "example", &dataflow.ConfigStoreSettingArgs{
/// 			Parent:               pulumi.Sprintf("projects/%v", project.Number),
/// 			Location:             pulumi.String("us-central1"),
/// 			ConfigStoreSettingId: pulumi.String("default_launcher_machine_type"),
/// 			Value: &dataflow.ConfigStoreSettingValueArgs{
/// 				StringValue: pulumi.String("e2-standard-4"),
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
/// terraform {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_organizations_project" "project" {
/// }
///
/// resource "gcp_dataflow_config_store_setting" "example" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   parent                  ="projects/${data.gcp_organizations_project.project.number}"
///   location                = "us-central1"
///   config_store_setting_id = "default_launcher_machine_type"
///   value = {
///     string_value = "e2-standard-4"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
/// import com.pulumi.gcp.dataflow.ConfigStoreSetting;
/// import com.pulumi.gcp.dataflow.ConfigStoreSettingArgs;
/// import com.pulumi.gcp.dataflow.inputs.ConfigStoreSettingValueArgs;
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
///         final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
///             .build());
///
///         var example = new ConfigStoreSetting("example", ConfigStoreSettingArgs.builder()
///             .parent(String.format("projects/%s", project.number()))
///             .location("us-central1")
///             .configStoreSettingId("default_launcher_machine_type")
///             .value(ConfigStoreSettingValueArgs.builder()
///                 .stringValue("e2-standard-4")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: gcp:dataflow:ConfigStoreSetting
///     properties:
///       parent: projects/${project.number}
///       location: us-central1
///       configStoreSettingId: default_launcher_machine_type
///       value:
///         stringValue: e2-standard-4
/// variables:
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
///
/// ## Import
///
/// ConfigStoreSetting can be imported using any of these accepted formats:
///
/// * `{{parent}}/locations/{{location}}/configStoreSettings/{{config_store_setting_id}}`
///
///
/// When using the `pulumi import` command, ConfigStoreSetting can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:dataflow/configStoreSetting:ConfigStoreSetting default {{parent}}/locations/{{location}}/configStoreSettings/{{config_store_setting_id}}
/// ```
class ConfigStoreSetting extends pulumi.CustomResource {
  /// The ID of the config store setting (e.g. `defaultLauncherMachineType`).
  late final pulumi.Output<String> configStoreSettingId;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// The Dataflow region for the setting (e.g. `us-central1`).
  late final pulumi.Output<String> location;
  /// The resource name of the setting.
  /// Format: `projects/{project_number}/locations/{location}/configStoreSettings/{config_store_setting_id}`
  /// or `folders/{folder_id}/locations/{location}/configStoreSettings/{config_store_setting_id}`
  /// or `organizations/{organization_id}/locations/{location}/configStoreSettings/{config_store_setting_id}`
  late final pulumi.Output<String> name;
  /// The parent resource in which to create the config store setting.
  /// Must be in one of the following formats:
  /// * `projects/{project_number}` (numeric project number is required)
  /// * `folders/{folder_id}`
  /// * `organizations/{organization_id}`
  late final pulumi.Output<String> parent;
  /// The configuration value of the setting.
  /// Structure is documented below.
  late final pulumi.Output<ConfigStoreSettingValue> value;

  /// Creates a new [ConfigStoreSetting].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ConfigStoreSetting]. {@macro pulumi_dataflow_config_store_setting_config_store_setting_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ConfigStoreSetting(
    String name, {
    ConfigStoreSettingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:dataflow/configStoreSetting:ConfigStoreSetting',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '10.5.0').merge(options),
        ) {
    configStoreSettingId = registerOutput<String>('configStoreSettingId');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    parent = registerOutput<String>('parent');
    value = registerOutput<ConfigStoreSettingValue>('value', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ConfigStoreSettingValue.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [ConfigStoreSetting] resource's state with the given [name] and [id].
  static ConfigStoreSetting get(
    String name,
    pulumi.Input<String> id, {
    ConfigStoreSettingState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ConfigStoreSetting._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ConfigStoreSetting._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:dataflow/configStoreSetting:ConfigStoreSetting',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    configStoreSettingId = registerOutput<String>('configStoreSettingId');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    parent = registerOutput<String>('parent');
    value = registerOutput<ConfigStoreSettingValue>('value', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ConfigStoreSettingValue.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [ConfigStoreSetting] resource.
  ConfigStoreSetting.reference(String urn)
    : super(
        'gcp:dataflow/configStoreSetting:ConfigStoreSetting',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    configStoreSettingId = registerOutput<String>('configStoreSettingId');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    parent = registerOutput<String>('parent');
    value = registerOutput<ConfigStoreSettingValue>('value', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ConfigStoreSettingValue.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
