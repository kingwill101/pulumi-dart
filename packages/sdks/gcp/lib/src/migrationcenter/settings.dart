import 'package:pulumi/pulumi.dart' as pulumi;
import 'settings_args.dart';
import 'settings_state.dart';

/// Settings represents the global or regional settings configuration for a Migration Center project.
///
///
///
/// ## Example Usage
///
/// ### Migration Center Settings Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const defaultPreferenceSet = new gcp.migrationcenter.PreferenceSet("default", {
///     location: "us-central1",
///     preferenceSetId: "pref-set-test",
///     description: "Terraform integration test description",
///     displayName: "Terraform integration test display",
///     virtualMachinePreferences: {
///         vmwareEnginePreferences: {
///             cpuOvercommitRatio: 1.5,
///         },
///         sizingOptimizationStrategy: "SIZING_OPTIMIZATION_STRATEGY_SAME_AS_SOURCE",
///         targetProduct: "COMPUTE_MIGRATION_TARGET_PRODUCT_COMPUTE_ENGINE",
///     },
/// });
/// const _default = new gcp.migrationcenter.Settings("default", {
///     location: "us-central1",
///     disableCloudLogging: true,
///     preferenceSet: defaultPreferenceSet.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default_preference_set = gcp.migrationcenter.PreferenceSet("default",
///     location="us-central1",
///     preference_set_id="pref-set-test",
///     description="Terraform integration test description",
///     display_name="Terraform integration test display",
///     virtual_machine_preferences={
///         "vmware_engine_preferences": {
///             "cpu_overcommit_ratio": 1.5,
///         },
///         "sizing_optimization_strategy": "SIZING_OPTIMIZATION_STRATEGY_SAME_AS_SOURCE",
///         "target_product": "COMPUTE_MIGRATION_TARGET_PRODUCT_COMPUTE_ENGINE",
///     })
/// default = gcp.migrationcenter.Settings("default",
///     location="us-central1",
///     disable_cloud_logging=True,
///     preference_set=default_preference_set.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var defaultPreferenceSet = new Gcp.MigrationCenter.PreferenceSet("default", new()
///     {
///         Location = "us-central1",
///         PreferenceSetId = "pref-set-test",
///         Description = "Terraform integration test description",
///         DisplayName = "Terraform integration test display",
///         VirtualMachinePreferences = new Gcp.MigrationCenter.Inputs.PreferenceSetVirtualMachinePreferencesArgs
///         {
///             VmwareEnginePreferences = new Gcp.MigrationCenter.Inputs.PreferenceSetVirtualMachinePreferencesVmwareEnginePreferencesArgs
///             {
///                 CpuOvercommitRatio = 1.5,
///             },
///             SizingOptimizationStrategy = "SIZING_OPTIMIZATION_STRATEGY_SAME_AS_SOURCE",
///             TargetProduct = "COMPUTE_MIGRATION_TARGET_PRODUCT_COMPUTE_ENGINE",
///         },
///     });
///
///     var @default = new Gcp.MigrationCenter.Settings("default", new()
///     {
///         Location = "us-central1",
///         DisableCloudLogging = true,
///         PreferenceSet = defaultPreferenceSet.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/migrationcenter"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		defaultPreferenceSet, err := migrationcenter.NewPreferenceSet(ctx, "default", &migrationcenter.PreferenceSetArgs{
/// 			Location:        pulumi.String("us-central1"),
/// 			PreferenceSetId: pulumi.String("pref-set-test"),
/// 			Description:     pulumi.String("Terraform integration test description"),
/// 			DisplayName:     pulumi.String("Terraform integration test display"),
/// 			VirtualMachinePreferences: &migrationcenter.PreferenceSetVirtualMachinePreferencesArgs{
/// 				VmwareEnginePreferences: &migrationcenter.PreferenceSetVirtualMachinePreferencesVmwareEnginePreferencesArgs{
/// 					CpuOvercommitRatio: pulumi.Float64(1.5),
/// 				},
/// 				SizingOptimizationStrategy: pulumi.String("SIZING_OPTIMIZATION_STRATEGY_SAME_AS_SOURCE"),
/// 				TargetProduct:              pulumi.String("COMPUTE_MIGRATION_TARGET_PRODUCT_COMPUTE_ENGINE"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = migrationcenter.NewSettings(ctx, "default", &migrationcenter.SettingsArgs{
/// 			Location:            pulumi.String("us-central1"),
/// 			DisableCloudLogging: pulumi.Bool(true),
/// 			PreferenceSet:       defaultPreferenceSet.ID().ToIDOutput().ToStringOutput(),
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
/// resource "gcp_migrationcenter_settings" "default" {
///   location              = "us-central1"
///   disable_cloud_logging = true
///   preference_set        = gcp_migrationcenter_preferenceset.default.id
/// }
/// resource "gcp_migrationcenter_preferenceset" "default" {
///   location          = "us-central1"
///   preference_set_id = "pref-set-test"
///   description       = "Terraform integration test description"
///   display_name      = "Terraform integration test display"
///   virtual_machine_preferences = {
///     vmware_engine_preferences = {
///       cpu_overcommit_ratio = 1.5
///     }
///     sizing_optimization_strategy = "SIZING_OPTIMIZATION_STRATEGY_SAME_AS_SOURCE"
///     target_product               = "COMPUTE_MIGRATION_TARGET_PRODUCT_COMPUTE_ENGINE"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.migrationcenter.PreferenceSet;
/// import com.pulumi.gcp.migrationcenter.PreferenceSetArgs;
/// import com.pulumi.gcp.migrationcenter.inputs.PreferenceSetVirtualMachinePreferencesArgs;
/// import com.pulumi.gcp.migrationcenter.inputs.PreferenceSetVirtualMachinePreferencesVmwareEnginePreferencesArgs;
/// import com.pulumi.gcp.migrationcenter.Settings;
/// import com.pulumi.gcp.migrationcenter.SettingsArgs;
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
///         var defaultPreferenceSet = new PreferenceSet("defaultPreferenceSet", PreferenceSetArgs.builder()
///             .location("us-central1")
///             .preferenceSetId("pref-set-test")
///             .description("Terraform integration test description")
///             .displayName("Terraform integration test display")
///             .virtualMachinePreferences(PreferenceSetVirtualMachinePreferencesArgs.builder()
///                 .vmwareEnginePreferences(PreferenceSetVirtualMachinePreferencesVmwareEnginePreferencesArgs.builder()
///                     .cpuOvercommitRatio(1.5)
///                     .build())
///                 .sizingOptimizationStrategy("SIZING_OPTIMIZATION_STRATEGY_SAME_AS_SOURCE")
///                 .targetProduct("COMPUTE_MIGRATION_TARGET_PRODUCT_COMPUTE_ENGINE")
///                 .build())
///             .build());
///
///         var default_ = new Settings("default", SettingsArgs.builder()
///             .location("us-central1")
///             .disableCloudLogging(true)
///             .preferenceSet(defaultPreferenceSet.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:migrationcenter:Settings
///     properties:
///       location: us-central1
///       disableCloudLogging: true
///       preferenceSet: ${defaultPreferenceSet.id}
///   defaultPreferenceSet:
///     type: gcp:migrationcenter:PreferenceSet
///     name: default
///     properties:
///       location: us-central1
///       preferenceSetId: pref-set-test
///       description: Terraform integration test description
///       displayName: Terraform integration test display
///       virtualMachinePreferences:
///         vmwareEnginePreferences:
///           cpuOvercommitRatio: 1.5
///         sizingOptimizationStrategy: SIZING_OPTIMIZATION_STRATEGY_SAME_AS_SOURCE
///         targetProduct: COMPUTE_MIGRATION_TARGET_PRODUCT_COMPUTE_ENGINE
/// ```
///
///
/// ## Import
///
/// Settings can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/settings`
/// * `{{project}}/{{location}}`
/// * `{{location}}`
///
///
/// When using the `pulumi import` command, Settings can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:migrationcenter/settings:Settings default projects/{{project}}/locations/{{location}}/settings
/// $ pulumi import gcp:migrationcenter/settings:Settings default {{project}}/{{location}}
/// $ pulumi import gcp:migrationcenter/settings:Settings default {{location}}
/// ```
class Settings extends pulumi.CustomResource {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// Disable Cloud Logging for the Migration Center API.
  /// Users are billed for the logs.
  late final pulumi.Output<bool?> disableCloudLogging;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final pulumi.Output<String> location;
  /// The name of the resource.
  late final pulumi.Output<String> name;
  /// The preference set used by default for a project.
  late final pulumi.Output<String?> preferenceSet;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// Creates a new [Settings].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Settings]. {@macro pulumi_migrationcenter_settings_settings_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Settings(
    String name, {
    SettingsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:migrationcenter/settings:Settings',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.35.1').merge(options),
        ) {
    deletionPolicy = registerOutput<String>('deletionPolicy');
    disableCloudLogging = registerOutput<bool?>('disableCloudLogging');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    preferenceSet = registerOutput<String?>('preferenceSet');
    project = registerOutput<String>('project');
  }

  /// Gets an existing [Settings] resource's state with the given [name] and [id].
  static Settings get(
    String name,
    pulumi.Input<String> id, {
    SettingsState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Settings._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Settings._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:migrationcenter/settings:Settings',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    deletionPolicy = registerOutput<String>('deletionPolicy');
    disableCloudLogging = registerOutput<bool?>('disableCloudLogging');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    preferenceSet = registerOutput<String?>('preferenceSet');
    project = registerOutput<String>('project');
  }

  /// Creates a typed reference to an existing [Settings] resource.
  Settings.reference(String urn)
    : super(
        'gcp:migrationcenter/settings:Settings',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    deletionPolicy = registerOutput<String>('deletionPolicy');
    disableCloudLogging = registerOutput<bool?>('disableCloudLogging');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    preferenceSet = registerOutput<String?>('preferenceSet');
    project = registerOutput<String>('project');
  }
}
