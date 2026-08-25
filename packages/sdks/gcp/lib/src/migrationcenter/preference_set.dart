import 'package:pulumi/pulumi.dart' as pulumi;
import 'preference_set_args.dart';
import 'preference_set_state.dart';
import 'preference_set_virtual_machine_preferences.dart';

/// Manages the PreferenceSet resource.
///
///
/// To get more information about PreferenceSet, see:
///
/// * [API documentation](https://cloud.google.com/migration-center/docs/reference/rest/v1)
/// * How-to Guides
/// * [Managing Migration Preferences](https://cloud.google.com/migration-center/docs/migration-preferences)
///
/// ## Example Usage
///
/// ### Preference Set Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.migrationcenter.PreferenceSet("default", {
///     location: "us-central1",
///     preferenceSetId: "preference-set-test",
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
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.migrationcenter.PreferenceSet("default",
///     location="us-central1",
///     preference_set_id="preference-set-test",
///     description="Terraform integration test description",
///     display_name="Terraform integration test display",
///     virtual_machine_preferences={
///         "vmware_engine_preferences": {
///             "cpu_overcommit_ratio": 1.5,
///         },
///         "sizing_optimization_strategy": "SIZING_OPTIMIZATION_STRATEGY_SAME_AS_SOURCE",
///         "target_product": "COMPUTE_MIGRATION_TARGET_PRODUCT_COMPUTE_ENGINE",
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
///     var @default = new Gcp.MigrationCenter.PreferenceSet("default", new()
///     {
///         Location = "us-central1",
///         PreferenceSetId = "preference-set-test",
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
/// 		_, err := migrationcenter.NewPreferenceSet(ctx, "default", &migrationcenter.PreferenceSetArgs{
/// 			Location:        pulumi.String("us-central1"),
/// 			PreferenceSetId: pulumi.String("preference-set-test"),
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
/// resource "gcp_migrationcenter_preferenceset" "default" {
///   location          = "us-central1"
///   preference_set_id = "preference-set-test"
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
///         var default_ = new PreferenceSet("default", PreferenceSetArgs.builder()
///             .location("us-central1")
///             .preferenceSetId("preference-set-test")
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
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:migrationcenter:PreferenceSet
///     properties:
///       location: us-central1
///       preferenceSetId: preference-set-test
///       description: Terraform integration test description
///       displayName: Terraform integration test display
///       virtualMachinePreferences:
///         vmwareEnginePreferences:
///           cpuOvercommitRatio: 1.5
///         sizingOptimizationStrategy: SIZING_OPTIMIZATION_STRATEGY_SAME_AS_SOURCE
///         targetProduct: COMPUTE_MIGRATION_TARGET_PRODUCT_COMPUTE_ENGINE
/// ```
///
/// ### Preference Set Full
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.migrationcenter.PreferenceSet("default", {
///     location: "us-central1",
///     preferenceSetId: "preference-set-test",
///     description: "Terraform integration test description",
///     displayName: "Terraform integration test display",
///     virtualMachinePreferences: {
///         vmwareEnginePreferences: {
///             cpuOvercommitRatio: 1.5,
///             storageDeduplicationCompressionRatio: 1.3,
///             commitmentPlan: "ON_DEMAND",
///         },
///         sizingOptimizationStrategy: "SIZING_OPTIMIZATION_STRATEGY_SAME_AS_SOURCE",
///         targetProduct: "COMPUTE_MIGRATION_TARGET_PRODUCT_COMPUTE_ENGINE",
///         commitmentPlan: "COMMITMENT_PLAN_ONE_YEAR",
///         regionPreferences: {
///             preferredRegions: ["us-central1"],
///         },
///         soleTenancyPreferences: {
///             commitmentPlan: "ON_DEMAND",
///             cpuOvercommitRatio: 1.2,
///             hostMaintenancePolicy: "HOST_MAINTENANCE_POLICY_DEFAULT",
///             nodeTypes: [{
///                 nodeName: "tf-test",
///             }],
///         },
///         computeEnginePreferences: {
///             licenseType: "LICENSE_TYPE_BRING_YOUR_OWN_LICENSE",
///             machinePreferences: {
///                 allowedMachineSeries: [{
///                     code: "C3",
///                 }],
///             },
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.migrationcenter.PreferenceSet("default",
///     location="us-central1",
///     preference_set_id="preference-set-test",
///     description="Terraform integration test description",
///     display_name="Terraform integration test display",
///     virtual_machine_preferences={
///         "vmware_engine_preferences": {
///             "cpu_overcommit_ratio": 1.5,
///             "storage_deduplication_compression_ratio": 1.3,
///             "commitment_plan": "ON_DEMAND",
///         },
///         "sizing_optimization_strategy": "SIZING_OPTIMIZATION_STRATEGY_SAME_AS_SOURCE",
///         "target_product": "COMPUTE_MIGRATION_TARGET_PRODUCT_COMPUTE_ENGINE",
///         "commitment_plan": "COMMITMENT_PLAN_ONE_YEAR",
///         "region_preferences": {
///             "preferred_regions": ["us-central1"],
///         },
///         "sole_tenancy_preferences": {
///             "commitment_plan": "ON_DEMAND",
///             "cpu_overcommit_ratio": 1.2,
///             "host_maintenance_policy": "HOST_MAINTENANCE_POLICY_DEFAULT",
///             "node_types": [{
///                 "node_name": "tf-test",
///             }],
///         },
///         "compute_engine_preferences": {
///             "license_type": "LICENSE_TYPE_BRING_YOUR_OWN_LICENSE",
///             "machine_preferences": {
///                 "allowed_machine_series": [{
///                     "code": "C3",
///                 }],
///             },
///         },
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
///     var @default = new Gcp.MigrationCenter.PreferenceSet("default", new()
///     {
///         Location = "us-central1",
///         PreferenceSetId = "preference-set-test",
///         Description = "Terraform integration test description",
///         DisplayName = "Terraform integration test display",
///         VirtualMachinePreferences = new Gcp.MigrationCenter.Inputs.PreferenceSetVirtualMachinePreferencesArgs
///         {
///             VmwareEnginePreferences = new Gcp.MigrationCenter.Inputs.PreferenceSetVirtualMachinePreferencesVmwareEnginePreferencesArgs
///             {
///                 CpuOvercommitRatio = 1.5,
///                 StorageDeduplicationCompressionRatio = 1.3,
///                 CommitmentPlan = "ON_DEMAND",
///             },
///             SizingOptimizationStrategy = "SIZING_OPTIMIZATION_STRATEGY_SAME_AS_SOURCE",
///             TargetProduct = "COMPUTE_MIGRATION_TARGET_PRODUCT_COMPUTE_ENGINE",
///             CommitmentPlan = "COMMITMENT_PLAN_ONE_YEAR",
///             RegionPreferences = new Gcp.MigrationCenter.Inputs.PreferenceSetVirtualMachinePreferencesRegionPreferencesArgs
///             {
///                 PreferredRegions = new[]
///                 {
///                     "us-central1",
///                 },
///             },
///             SoleTenancyPreferences = new Gcp.MigrationCenter.Inputs.PreferenceSetVirtualMachinePreferencesSoleTenancyPreferencesArgs
///             {
///                 CommitmentPlan = "ON_DEMAND",
///                 CpuOvercommitRatio = 1.2,
///                 HostMaintenancePolicy = "HOST_MAINTENANCE_POLICY_DEFAULT",
///                 NodeTypes = new[]
///                 {
///                     new Gcp.MigrationCenter.Inputs.PreferenceSetVirtualMachinePreferencesSoleTenancyPreferencesNodeTypeArgs
///                     {
///                         NodeName = "tf-test",
///                     },
///                 },
///             },
///             ComputeEnginePreferences = new Gcp.MigrationCenter.Inputs.PreferenceSetVirtualMachinePreferencesComputeEnginePreferencesArgs
///             {
///                 LicenseType = "LICENSE_TYPE_BRING_YOUR_OWN_LICENSE",
///                 MachinePreferences = new Gcp.MigrationCenter.Inputs.PreferenceSetVirtualMachinePreferencesComputeEnginePreferencesMachinePreferencesArgs
///                 {
///                     AllowedMachineSeries = new[]
///                     {
///                         new Gcp.MigrationCenter.Inputs.PreferenceSetVirtualMachinePreferencesComputeEnginePreferencesMachinePreferencesAllowedMachineSeriesArgs
///                         {
///                             Code = "C3",
///                         },
///                     },
///                 },
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/migrationcenter"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := migrationcenter.NewPreferenceSet(ctx, "default", &migrationcenter.PreferenceSetArgs{
/// 			Location:        pulumi.String("us-central1"),
/// 			PreferenceSetId: pulumi.String("preference-set-test"),
/// 			Description:     pulumi.String("Terraform integration test description"),
/// 			DisplayName:     pulumi.String("Terraform integration test display"),
/// 			VirtualMachinePreferences: &migrationcenter.PreferenceSetVirtualMachinePreferencesArgs{
/// 				VmwareEnginePreferences: &migrationcenter.PreferenceSetVirtualMachinePreferencesVmwareEnginePreferencesArgs{
/// 					CpuOvercommitRatio:                   pulumi.Float64(1.5),
/// 					StorageDeduplicationCompressionRatio: pulumi.Float64(1.3),
/// 					CommitmentPlan:                       pulumi.String("ON_DEMAND"),
/// 				},
/// 				SizingOptimizationStrategy: pulumi.String("SIZING_OPTIMIZATION_STRATEGY_SAME_AS_SOURCE"),
/// 				TargetProduct:              pulumi.String("COMPUTE_MIGRATION_TARGET_PRODUCT_COMPUTE_ENGINE"),
/// 				CommitmentPlan:             pulumi.String("COMMITMENT_PLAN_ONE_YEAR"),
/// 				RegionPreferences: &migrationcenter.PreferenceSetVirtualMachinePreferencesRegionPreferencesArgs{
/// 					PreferredRegions: pulumi.StringArray{
/// 						pulumi.String("us-central1"),
/// 					},
/// 				},
/// 				SoleTenancyPreferences: &migrationcenter.PreferenceSetVirtualMachinePreferencesSoleTenancyPreferencesArgs{
/// 					CommitmentPlan:        pulumi.String("ON_DEMAND"),
/// 					CpuOvercommitRatio:    pulumi.Float64(1.2),
/// 					HostMaintenancePolicy: pulumi.String("HOST_MAINTENANCE_POLICY_DEFAULT"),
/// 					NodeTypes: migrationcenter.PreferenceSetVirtualMachinePreferencesSoleTenancyPreferencesNodeTypeArray{
/// 						&migrationcenter.PreferenceSetVirtualMachinePreferencesSoleTenancyPreferencesNodeTypeArgs{
/// 							NodeName: pulumi.String("tf-test"),
/// 						},
/// 					},
/// 				},
/// 				ComputeEnginePreferences: &migrationcenter.PreferenceSetVirtualMachinePreferencesComputeEnginePreferencesArgs{
/// 					LicenseType: pulumi.String("LICENSE_TYPE_BRING_YOUR_OWN_LICENSE"),
/// 					MachinePreferences: &migrationcenter.PreferenceSetVirtualMachinePreferencesComputeEnginePreferencesMachinePreferencesArgs{
/// 						AllowedMachineSeries: migrationcenter.PreferenceSetVirtualMachinePreferencesComputeEnginePreferencesMachinePreferencesAllowedMachineSeriesArray{
/// 							&migrationcenter.PreferenceSetVirtualMachinePreferencesComputeEnginePreferencesMachinePreferencesAllowedMachineSeriesArgs{
/// 								Code: pulumi.String("C3"),
/// 							},
/// 						},
/// 					},
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
/// resource "gcp_migrationcenter_preferenceset" "default" {
///   location          = "us-central1"
///   preference_set_id = "preference-set-test"
///   description       = "Terraform integration test description"
///   display_name      = "Terraform integration test display"
///   virtual_machine_preferences = {
///     vmware_engine_preferences = {
///       cpu_overcommit_ratio                    = 1.5
///       storage_deduplication_compression_ratio = 1.3
///       commitment_plan                         = "ON_DEMAND"
///     }
///     sizing_optimization_strategy = "SIZING_OPTIMIZATION_STRATEGY_SAME_AS_SOURCE"
///     target_product               = "COMPUTE_MIGRATION_TARGET_PRODUCT_COMPUTE_ENGINE"
///     commitment_plan              = "COMMITMENT_PLAN_ONE_YEAR"
///     region_preferences = {
///       preferred_regions = ["us-central1"]
///     }
///     sole_tenancy_preferences = {
///       commitment_plan         = "ON_DEMAND"
///       cpu_overcommit_ratio    = 1.2
///       host_maintenance_policy = "HOST_MAINTENANCE_POLICY_DEFAULT"
///       node_types = [{
///         "nodeName" = "tf-test"
///       }]
///     }
///     compute_engine_preferences = {
///       license_type = "LICENSE_TYPE_BRING_YOUR_OWN_LICENSE"
///       machine_preferences = {
///         allowed_machine_series = [{
///           "code" = "C3"
///         }]
///       }
///     }
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
/// import com.pulumi.gcp.migrationcenter.inputs.PreferenceSetVirtualMachinePreferencesRegionPreferencesArgs;
/// import com.pulumi.gcp.migrationcenter.inputs.PreferenceSetVirtualMachinePreferencesSoleTenancyPreferencesArgs;
/// import com.pulumi.gcp.migrationcenter.inputs.PreferenceSetVirtualMachinePreferencesSoleTenancyPreferencesNodeTypeArgs;
/// import com.pulumi.gcp.migrationcenter.inputs.PreferenceSetVirtualMachinePreferencesComputeEnginePreferencesArgs;
/// import com.pulumi.gcp.migrationcenter.inputs.PreferenceSetVirtualMachinePreferencesComputeEnginePreferencesMachinePreferencesArgs;
/// import com.pulumi.gcp.migrationcenter.inputs.PreferenceSetVirtualMachinePreferencesComputeEnginePreferencesMachinePreferencesAllowedMachineSeriesArgs;
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
///         var default_ = new PreferenceSet("default", PreferenceSetArgs.builder()
///             .location("us-central1")
///             .preferenceSetId("preference-set-test")
///             .description("Terraform integration test description")
///             .displayName("Terraform integration test display")
///             .virtualMachinePreferences(PreferenceSetVirtualMachinePreferencesArgs.builder()
///                 .vmwareEnginePreferences(PreferenceSetVirtualMachinePreferencesVmwareEnginePreferencesArgs.builder()
///                     .cpuOvercommitRatio(1.5)
///                     .storageDeduplicationCompressionRatio(1.3)
///                     .commitmentPlan("ON_DEMAND")
///                     .build())
///                 .sizingOptimizationStrategy("SIZING_OPTIMIZATION_STRATEGY_SAME_AS_SOURCE")
///                 .targetProduct("COMPUTE_MIGRATION_TARGET_PRODUCT_COMPUTE_ENGINE")
///                 .commitmentPlan("COMMITMENT_PLAN_ONE_YEAR")
///                 .regionPreferences(PreferenceSetVirtualMachinePreferencesRegionPreferencesArgs.builder()
///                     .preferredRegions("us-central1")
///                     .build())
///                 .soleTenancyPreferences(PreferenceSetVirtualMachinePreferencesSoleTenancyPreferencesArgs.builder()
///                     .commitmentPlan("ON_DEMAND")
///                     .cpuOvercommitRatio(1.2)
///                     .hostMaintenancePolicy("HOST_MAINTENANCE_POLICY_DEFAULT")
///                     .nodeTypes(PreferenceSetVirtualMachinePreferencesSoleTenancyPreferencesNodeTypeArgs.builder()
///                         .nodeName("tf-test")
///                         .build())
///                     .build())
///                 .computeEnginePreferences(PreferenceSetVirtualMachinePreferencesComputeEnginePreferencesArgs.builder()
///                     .licenseType("LICENSE_TYPE_BRING_YOUR_OWN_LICENSE")
///                     .machinePreferences(PreferenceSetVirtualMachinePreferencesComputeEnginePreferencesMachinePreferencesArgs.builder()
///                         .allowedMachineSeries(PreferenceSetVirtualMachinePreferencesComputeEnginePreferencesMachinePreferencesAllowedMachineSeriesArgs.builder()
///                             .code("C3")
///                             .build())
///                         .build())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:migrationcenter:PreferenceSet
///     properties:
///       location: us-central1
///       preferenceSetId: preference-set-test
///       description: Terraform integration test description
///       displayName: Terraform integration test display
///       virtualMachinePreferences:
///         vmwareEnginePreferences:
///           cpuOvercommitRatio: 1.5
///           storageDeduplicationCompressionRatio: 1.3
///           commitmentPlan: ON_DEMAND
///         sizingOptimizationStrategy: SIZING_OPTIMIZATION_STRATEGY_SAME_AS_SOURCE
///         targetProduct: COMPUTE_MIGRATION_TARGET_PRODUCT_COMPUTE_ENGINE
///         commitmentPlan: COMMITMENT_PLAN_ONE_YEAR
///         regionPreferences:
///           preferredRegions:
///             - us-central1
///         soleTenancyPreferences:
///           commitmentPlan: ON_DEMAND
///           cpuOvercommitRatio: 1.2
///           hostMaintenancePolicy: HOST_MAINTENANCE_POLICY_DEFAULT
///           nodeTypes:
///             - nodeName: tf-test
///         computeEnginePreferences:
///           licenseType: LICENSE_TYPE_BRING_YOUR_OWN_LICENSE
///           machinePreferences:
///             allowedMachineSeries:
///               - code: C3
/// ```
///
/// ### Preference Set Compute Engine Preferences Disk Type
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.migrationcenter.PreferenceSet("default", {
///     location: "us-central1",
///     preferenceSetId: "preference-set-test",
///     description: "Terraform integration test description",
///     displayName: "Terraform integration test display",
///     virtualMachinePreferences: {
///         sizingOptimizationStrategy: "SIZING_OPTIMIZATION_STRATEGY_SAME_AS_SOURCE",
///         targetProduct: "COMPUTE_MIGRATION_TARGET_PRODUCT_COMPUTE_ENGINE",
///         computeEnginePreferences: {
///             licenseType: "LICENSE_TYPE_BRING_YOUR_OWN_LICENSE",
///             machinePreferences: {
///                 allowedMachineSeries: [{
///                     code: "C3",
///                 }],
///             },
///             persistentDiskType: "PERSISTENT_DISK_TYPE_SSD",
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.migrationcenter.PreferenceSet("default",
///     location="us-central1",
///     preference_set_id="preference-set-test",
///     description="Terraform integration test description",
///     display_name="Terraform integration test display",
///     virtual_machine_preferences={
///         "sizing_optimization_strategy": "SIZING_OPTIMIZATION_STRATEGY_SAME_AS_SOURCE",
///         "target_product": "COMPUTE_MIGRATION_TARGET_PRODUCT_COMPUTE_ENGINE",
///         "compute_engine_preferences": {
///             "license_type": "LICENSE_TYPE_BRING_YOUR_OWN_LICENSE",
///             "machine_preferences": {
///                 "allowed_machine_series": [{
///                     "code": "C3",
///                 }],
///             },
///             "persistent_disk_type": "PERSISTENT_DISK_TYPE_SSD",
///         },
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
///     var @default = new Gcp.MigrationCenter.PreferenceSet("default", new()
///     {
///         Location = "us-central1",
///         PreferenceSetId = "preference-set-test",
///         Description = "Terraform integration test description",
///         DisplayName = "Terraform integration test display",
///         VirtualMachinePreferences = new Gcp.MigrationCenter.Inputs.PreferenceSetVirtualMachinePreferencesArgs
///         {
///             SizingOptimizationStrategy = "SIZING_OPTIMIZATION_STRATEGY_SAME_AS_SOURCE",
///             TargetProduct = "COMPUTE_MIGRATION_TARGET_PRODUCT_COMPUTE_ENGINE",
///             ComputeEnginePreferences = new Gcp.MigrationCenter.Inputs.PreferenceSetVirtualMachinePreferencesComputeEnginePreferencesArgs
///             {
///                 LicenseType = "LICENSE_TYPE_BRING_YOUR_OWN_LICENSE",
///                 MachinePreferences = new Gcp.MigrationCenter.Inputs.PreferenceSetVirtualMachinePreferencesComputeEnginePreferencesMachinePreferencesArgs
///                 {
///                     AllowedMachineSeries = new[]
///                     {
///                         new Gcp.MigrationCenter.Inputs.PreferenceSetVirtualMachinePreferencesComputeEnginePreferencesMachinePreferencesAllowedMachineSeriesArgs
///                         {
///                             Code = "C3",
///                         },
///                     },
///                 },
///                 PersistentDiskType = "PERSISTENT_DISK_TYPE_SSD",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/migrationcenter"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := migrationcenter.NewPreferenceSet(ctx, "default", &migrationcenter.PreferenceSetArgs{
/// 			Location:        pulumi.String("us-central1"),
/// 			PreferenceSetId: pulumi.String("preference-set-test"),
/// 			Description:     pulumi.String("Terraform integration test description"),
/// 			DisplayName:     pulumi.String("Terraform integration test display"),
/// 			VirtualMachinePreferences: &migrationcenter.PreferenceSetVirtualMachinePreferencesArgs{
/// 				SizingOptimizationStrategy: pulumi.String("SIZING_OPTIMIZATION_STRATEGY_SAME_AS_SOURCE"),
/// 				TargetProduct:              pulumi.String("COMPUTE_MIGRATION_TARGET_PRODUCT_COMPUTE_ENGINE"),
/// 				ComputeEnginePreferences: &migrationcenter.PreferenceSetVirtualMachinePreferencesComputeEnginePreferencesArgs{
/// 					LicenseType: pulumi.String("LICENSE_TYPE_BRING_YOUR_OWN_LICENSE"),
/// 					MachinePreferences: &migrationcenter.PreferenceSetVirtualMachinePreferencesComputeEnginePreferencesMachinePreferencesArgs{
/// 						AllowedMachineSeries: migrationcenter.PreferenceSetVirtualMachinePreferencesComputeEnginePreferencesMachinePreferencesAllowedMachineSeriesArray{
/// 							&migrationcenter.PreferenceSetVirtualMachinePreferencesComputeEnginePreferencesMachinePreferencesAllowedMachineSeriesArgs{
/// 								Code: pulumi.String("C3"),
/// 							},
/// 						},
/// 					},
/// 					PersistentDiskType: pulumi.String("PERSISTENT_DISK_TYPE_SSD"),
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
/// resource "gcp_migrationcenter_preferenceset" "default" {
///   location          = "us-central1"
///   preference_set_id = "preference-set-test"
///   description       = "Terraform integration test description"
///   display_name      = "Terraform integration test display"
///   virtual_machine_preferences = {
///     sizing_optimization_strategy = "SIZING_OPTIMIZATION_STRATEGY_SAME_AS_SOURCE"
///     target_product               = "COMPUTE_MIGRATION_TARGET_PRODUCT_COMPUTE_ENGINE"
///     compute_engine_preferences = {
///       license_type = "LICENSE_TYPE_BRING_YOUR_OWN_LICENSE"
///       machine_preferences = {
///         allowed_machine_series = [{
///           "code" = "C3"
///         }]
///       }
///       persistent_disk_type = "PERSISTENT_DISK_TYPE_SSD"
///     }
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
/// import com.pulumi.gcp.migrationcenter.inputs.PreferenceSetVirtualMachinePreferencesComputeEnginePreferencesArgs;
/// import com.pulumi.gcp.migrationcenter.inputs.PreferenceSetVirtualMachinePreferencesComputeEnginePreferencesMachinePreferencesArgs;
/// import com.pulumi.gcp.migrationcenter.inputs.PreferenceSetVirtualMachinePreferencesComputeEnginePreferencesMachinePreferencesAllowedMachineSeriesArgs;
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
///         var default_ = new PreferenceSet("default", PreferenceSetArgs.builder()
///             .location("us-central1")
///             .preferenceSetId("preference-set-test")
///             .description("Terraform integration test description")
///             .displayName("Terraform integration test display")
///             .virtualMachinePreferences(PreferenceSetVirtualMachinePreferencesArgs.builder()
///                 .sizingOptimizationStrategy("SIZING_OPTIMIZATION_STRATEGY_SAME_AS_SOURCE")
///                 .targetProduct("COMPUTE_MIGRATION_TARGET_PRODUCT_COMPUTE_ENGINE")
///                 .computeEnginePreferences(PreferenceSetVirtualMachinePreferencesComputeEnginePreferencesArgs.builder()
///                     .licenseType("LICENSE_TYPE_BRING_YOUR_OWN_LICENSE")
///                     .machinePreferences(PreferenceSetVirtualMachinePreferencesComputeEnginePreferencesMachinePreferencesArgs.builder()
///                         .allowedMachineSeries(PreferenceSetVirtualMachinePreferencesComputeEnginePreferencesMachinePreferencesAllowedMachineSeriesArgs.builder()
///                             .code("C3")
///                             .build())
///                         .build())
///                     .persistentDiskType("PERSISTENT_DISK_TYPE_SSD")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:migrationcenter:PreferenceSet
///     properties:
///       location: us-central1
///       preferenceSetId: preference-set-test
///       description: Terraform integration test description
///       displayName: Terraform integration test display
///       virtualMachinePreferences:
///         sizingOptimizationStrategy: SIZING_OPTIMIZATION_STRATEGY_SAME_AS_SOURCE
///         targetProduct: COMPUTE_MIGRATION_TARGET_PRODUCT_COMPUTE_ENGINE
///         computeEnginePreferences:
///           licenseType: LICENSE_TYPE_BRING_YOUR_OWN_LICENSE
///           machinePreferences:
///             allowedMachineSeries:
///               - code: C3
///           persistentDiskType: PERSISTENT_DISK_TYPE_SSD
/// ```
///
///
/// ## Import
///
/// PreferenceSet can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/preferenceSets/{{preference_set_id}}`
/// * `{{project}}/{{location}}/{{preference_set_id}}`
/// * `{{location}}/{{preference_set_id}}`
///
///
/// When using the `pulumi import` command, PreferenceSet can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:migrationcenter/preferenceSet:PreferenceSet default projects/{{project}}/locations/{{location}}/preferenceSets/{{preference_set_id}}
/// $ pulumi import gcp:migrationcenter/preferenceSet:PreferenceSet default {{project}}/{{location}}/{{preference_set_id}}
/// $ pulumi import gcp:migrationcenter/preferenceSet:PreferenceSet default {{location}}/{{preference_set_id}}
/// ```
class PreferenceSet extends pulumi.CustomResource {
  /// Output only. The timestamp when the preference set was created.
  late final pulumi.Output<String> createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// A description of the preference set.
  late final pulumi.Output<String?> description;
  /// User-friendly display name. Maximum length is 63 characters.
  late final pulumi.Output<String?> displayName;
  /// Part of `parent`. See documentation of `projectsId`.
  late final pulumi.Output<String> location;
  /// Output only. Name of the preference set.
  late final pulumi.Output<String> name;
  /// Required. User specified ID for the preference set. It will become the last component of the preference set name. The ID must be unique within the project, must conform with RFC-1034, is restricted to lower-cased letters, and has a maximum length of 63 characters. The ID must match the regular expression `a-z?`.
  late final pulumi.Output<String> preferenceSetId;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// Output only. The timestamp when the preference set was last updated.
  late final pulumi.Output<String> updateTime;
  /// VirtualMachinePreferences enables you to create sets of assumptions, for example, a geographical location and pricing track, for your migrated virtual machines. The set of preferences influence recommendations for migrating virtual machine assets.
  /// Structure is documented below.
  late final pulumi.Output<PreferenceSetVirtualMachinePreferences?> virtualMachinePreferences;

  /// Creates a new [PreferenceSet].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PreferenceSet]. {@macro pulumi_migrationcenter_preference_set_preference_set_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PreferenceSet(
    String name, {
    PreferenceSetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:migrationcenter/preferenceSet:PreferenceSet',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.35.1').merge(options),
        ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String?>('displayName');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    preferenceSetId = registerOutput<String>('preferenceSetId');
    project = registerOutput<String>('project');
    updateTime = registerOutput<String>('updateTime');
    virtualMachinePreferences = registerOutput<PreferenceSetVirtualMachinePreferences?>('virtualMachinePreferences', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PreferenceSetVirtualMachinePreferences.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [PreferenceSet] resource's state with the given [name] and [id].
  static PreferenceSet get(
    String name,
    pulumi.Input<String> id, {
    PreferenceSetState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return PreferenceSet._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  PreferenceSet._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:migrationcenter/preferenceSet:PreferenceSet',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String?>('displayName');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    preferenceSetId = registerOutput<String>('preferenceSetId');
    project = registerOutput<String>('project');
    updateTime = registerOutput<String>('updateTime');
    virtualMachinePreferences = registerOutput<PreferenceSetVirtualMachinePreferences?>('virtualMachinePreferences', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PreferenceSetVirtualMachinePreferences.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [PreferenceSet] resource.
  PreferenceSet.reference(String urn)
    : super(
        'gcp:migrationcenter/preferenceSet:PreferenceSet',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String?>('displayName');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    preferenceSetId = registerOutput<String>('preferenceSetId');
    project = registerOutput<String>('project');
    updateTime = registerOutput<String>('updateTime');
    virtualMachinePreferences = registerOutput<PreferenceSetVirtualMachinePreferences?>('virtualMachinePreferences', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PreferenceSetVirtualMachinePreferences.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
