import 'package:pulumi/pulumi.dart' as pulumi;
import 'orchestrated_virtual_machine_scale_set_additional_capabilities.dart';
import 'orchestrated_virtual_machine_scale_set_args.dart';
import 'orchestrated_virtual_machine_scale_set_automatic_instance_repair.dart';
import 'orchestrated_virtual_machine_scale_set_boot_diagnostics.dart';
import 'orchestrated_virtual_machine_scale_set_identity.dart';
import 'orchestrated_virtual_machine_scale_set_os_disk.dart';
import 'orchestrated_virtual_machine_scale_set_os_profile.dart';
import 'orchestrated_virtual_machine_scale_set_plan.dart';
import 'orchestrated_virtual_machine_scale_set_priority_mix.dart';
import 'orchestrated_virtual_machine_scale_set_rolling_upgrade_policy.dart';
import 'orchestrated_virtual_machine_scale_set_sku_profile.dart';
import 'orchestrated_virtual_machine_scale_set_source_image_reference.dart';
import 'orchestrated_virtual_machine_scale_set_state.dart';
import 'orchestrated_virtual_machine_scale_set_termination_notification.dart';

/// Manages an Orchestrated Virtual Machine Scale Set in Flexible Orchestration Mode.
///
/// ## Disclaimers
///
/// &gt; **Note:** As of the **v2.86.0** (November 19, 2021) release of the provider this resource will only create Virtual Machine Scale Sets with the **Flexible** Orchestration Mode.
///
/// &gt; **Note:** All arguments including the administrator login and password will be stored in the raw state as plain-text. [Read more about sensitive data in state](https://www.terraform.io/docs/state/sensitive-data.html).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-resources",
///     location: "West Europe",
/// });
/// const exampleOrchestratedVirtualMachineScaleSet = new azure.compute.OrchestratedVirtualMachineScaleSet("example", {
///     name: "example-orchestrated-virtual-machine-scale-set",
///     location: example.location,
///     resourceGroupName: example.name,
///     platformFaultDomainCount: 1,
///     skuName: "Standard_B1ls",
///     zones: ["1"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_orchestrated_virtual_machine_scale_set = azure.compute.OrchestratedVirtualMachineScaleSet("example",
///     name="example-orchestrated-virtual-machine-scale-set",
///     location=example.location,
///     resource_group_name=example.name,
///     platform_fault_domain_count=1,
///     sku_name="Standard_B1ls",
///     zones=["1"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var exampleOrchestratedVirtualMachineScaleSet = new Azure.Compute.OrchestratedVirtualMachineScaleSet("example", new()
///     {
///         Name = "example-orchestrated-virtual-machine-scale-set",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         PlatformFaultDomainCount = 1,
///         SkuName = "Standard_B1ls",
///         Zones = new[]
///         {
///             "1",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/compute"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-resources"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewOrchestratedVirtualMachineScaleSet(ctx, "example", &compute.OrchestratedVirtualMachineScaleSetArgs{
/// 			Name:                     pulumi.String("example-orchestrated-virtual-machine-scale-set"),
/// 			Location:                 example.Location,
/// 			ResourceGroupName:        example.Name,
/// 			PlatformFaultDomainCount: pulumi.Int(1),
/// 			SkuName:                  pulumi.String("Standard_B1ls"),
/// 			Zones: pulumi.StringArray{
/// 				pulumi.String("1"),
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
///     azure = {
///       source = "pulumi/azure"
///     }
///   }
/// }
///
/// resource "azure_core_resourcegroup" "example" {
///   name     = "example-resources"
///   location = "West Europe"
/// }
/// resource "azure_compute_orchestratedvirtualmachinescaleset" "example" {
///   name                        = "example-orchestrated-virtual-machine-scale-set"
///   location                    = azure_core_resourcegroup.example.location
///   resource_group_name         = azure_core_resourcegroup.example.name
///   platform_fault_domain_count = 1
///   sku_name                    = "Standard_B1ls"
///   zones                       = ["1"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.compute.OrchestratedVirtualMachineScaleSet;
/// import com.pulumi.azure.compute.OrchestratedVirtualMachineScaleSetArgs;
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
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var exampleOrchestratedVirtualMachineScaleSet = new OrchestratedVirtualMachineScaleSet("exampleOrchestratedVirtualMachineScaleSet", OrchestratedVirtualMachineScaleSetArgs.builder()
///             .name("example-orchestrated-virtual-machine-scale-set")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .platformFaultDomainCount(1)
///             .skuName("Standard_B1ls")
///             .zones("1")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:core:ResourceGroup
///     properties:
///       name: example-resources
///       location: West Europe
///   exampleOrchestratedVirtualMachineScaleSet:
///     type: azure:compute:OrchestratedVirtualMachineScaleSet
///     name: example
///     properties:
///       name: example-orchestrated-virtual-machine-scale-set
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       platformFaultDomainCount: 1
///       skuName: Standard_B1ls
///       zones:
///         - '1'
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Compute` - 2024-11-01
///
/// ## Import
///
/// An Orchestrated Virtual Machine Scale Set can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:compute/orchestratedVirtualMachineScaleSet:OrchestratedVirtualMachineScaleSet example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resourceGroup1/providers/Microsoft.Compute/virtualMachineScaleSets/virtualMachineScaleSet1
/// ```
class OrchestratedVirtualMachineScaleSet extends pulumi.CustomResource {
  /// An `additionalCapabilities` block as defined below.
  late final pulumi.Output<OrchestratedVirtualMachineScaleSetAdditionalCapabilities?> additionalCapabilities;
  /// An `automaticInstanceRepair` block as defined below.
  ///
  /// &gt; **Note:** To enable the `automaticInstanceRepair`, the Orchestrated Virtual Machine Scale Set must have a valid [Application Health Extension](https://docs.microsoft.com/azure/virtual-machine-scale-sets/virtual-machine-scale-sets-health-extension).
  late final pulumi.Output<OrchestratedVirtualMachineScaleSetAutomaticInstanceRepair> automaticInstanceRepair;
  /// A `bootDiagnostics` block as defined below.
  late final pulumi.Output<OrchestratedVirtualMachineScaleSetBootDiagnostics?> bootDiagnostics;
  /// Specifies the ID of the Capacity Reservation Group which the Virtual Machine Scale Set should be allocated to. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** `capacityReservationGroupId` cannot be specified with `proximityPlacementGroupId`.
  ///
  /// &gt; **Note:** If `capacityReservationGroupId` is specified, `singlePlacementGroup` must be set to `false`.
  late final pulumi.Output<String?> capacityReservationGroupId;
  /// One or more `dataDisk` blocks as defined below.
  late final pulumi.Output<List<Map<String, dynamic>>?> dataDisks;
  /// Should disks attached to this Virtual Machine Scale Set be encrypted by enabling Encryption at Host?
  late final pulumi.Output<bool?> encryptionAtHostEnabled;
  /// The Policy which should be used by Spot Virtual Machines that are Evicted from the Scale Set. Possible values are `Deallocate` and `Delete`. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> evictionPolicy;
  /// Should extension operations be allowed on the Virtual Machine Scale Set? Possible values are `true` or `false`. Defaults to `true`. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** `extensionOperationsEnabled` may only be set to `false` if there are no extensions defined in the `extension` field.
  late final pulumi.Output<bool?> extensionOperationsEnabled;
  /// One or more `extension` blocks as defined below
  late final pulumi.Output<List<Map<String, dynamic>>> extensions;
  /// Specifies the time allotted for all extensions to start. The time duration should be between 15 minutes and 120 minutes (inclusive) and should be specified in ISO 8601 format. Defaults to `PT1H30M`.
  late final pulumi.Output<String?> extensionsTimeBudget;
  /// An `identity` block as defined below.
  late final pulumi.Output<OrchestratedVirtualMachineScaleSetIdentity?> identity;
  /// The number of Virtual Machines in the Virtual Machine Scale Set.
  late final pulumi.Output<int> instances;
  /// Specifies the type of on-premise license (also known as Azure Hybrid Use Benefit) which should be used for this Virtual Machine Scale Set. Possible values are `None`, `Windows_Client`, and `Windows_Server`.
  late final pulumi.Output<String?> licenseType;
  /// The Azure location where the Virtual Machine Scale Set should exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;
  /// The maximum price you're willing to pay for each Virtual Machine in this Scale Set, in US Dollars; which must be greater than the current spot price. If this bid price falls below the current spot price the Virtual Machines in the Scale Set will be evicted using the eviction_policy. Defaults to `-1`, which means that each Virtual Machine in the Scale Set should not be evicted for price reasons.
  late final pulumi.Output<double?> maxBidPrice;
  /// The name of the Virtual Machine Scale Set. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// Specifies the Microsoft.Network API version used when creating networking resources in the Network Interface Configurations for Virtual Machine Scale Set. Possible values are `2020-11-01` and `2022-11-01`. Defaults to `2020-11-01`.
  late final pulumi.Output<String?> networkApiVersion;
  /// One or more `networkInterface` blocks as defined below.
  late final pulumi.Output<List<Map<String, dynamic>>?> networkInterfaces;
  /// An `osDisk` block as defined below.
  late final pulumi.Output<OrchestratedVirtualMachineScaleSetOsDisk?> osDisk;
  /// An `osProfile` block as defined below.
  late final pulumi.Output<OrchestratedVirtualMachineScaleSetOsProfile?> osProfile;
  /// A `plan` block as defined below. Changing this forces a new resource to be created.
  late final pulumi.Output<OrchestratedVirtualMachineScaleSetPlan?> plan;
  /// Specifies the number of fault domains that are used by this Virtual Machine Scale Set. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** The number of Fault Domains varies depending on which Azure Region you're using. More information about update and fault domains and how they work can be found [here](https://learn.microsoft.com/en-us/azure/virtual-machines/availability-set-overview).
  late final pulumi.Output<int> platformFaultDomainCount;
  /// The Priority of this Virtual Machine Scale Set. Possible values are `Regular` and `Spot`. Defaults to `Regular`. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> priority;
  /// A `priorityMix` block as defined below.
  ///
  /// &gt; **Note:** `priorityMix` can only be specified when `priority` is set to `Spot`.
  late final pulumi.Output<OrchestratedVirtualMachineScaleSetPriorityMix?> priorityMix;
  /// The ID of the Proximity Placement Group which the Virtual Machine should be assigned to. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> proximityPlacementGroupId;
  /// The name of the Resource Group in which the Virtual Machine Scale Set should exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// A `rollingUpgradePolicy` block as defined below. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** `rollingUpgradePolicy` is required when `upgradeMode` is set to `Rolling`, cannot be specified when `upgradeMode` is set to `Manual`, and requires a valid application health extension when `upgradeMode` is set to `Rolling`.
  late final pulumi.Output<OrchestratedVirtualMachineScaleSetRollingUpgradePolicy?> rollingUpgradePolicy;
  /// Should this Virtual Machine Scale Set be limited to a Single Placement Group, which means the number of instances will be capped at 100 Virtual Machines. Possible values are `true` or `false`.
  ///
  /// &gt; **Note:** `singlePlacementGroup` behaves differently for Flexible orchestration Virtual Machine Scale Sets than it does for Uniform orchestration Virtual Machine Scale Sets. It is recommended that you do not define the `singlePlacementGroup` field in your configuration file as the service will determine what this value should be based off of the value contained within the `skuName` field of your configuration file. You may set the `singlePlacementGroup` field to `true`, however once you set it to `false` you will not be able to revert it back to `true`.
  late final pulumi.Output<bool> singlePlacementGroup;
  /// The name of the SKU to be used by this Virtual Machine Scale Set.
  ///
  /// &gt; **Note:** `skuName` can be set to any of the [General purpose](https://docs.microsoft.com/azure/virtual-machines/sizes-general), [Compute optimized](https://docs.microsoft.com/azure/virtual-machines/sizes-compute), [Memory optimized](https://docs.microsoft.com/azure/virtual-machines/sizes-memory), [Storage optimized](https://docs.microsoft.com/azure/virtual-machines/sizes-storage), [GPU optimized](https://docs.microsoft.com/azure/virtual-machines/sizes-gpu), [FPGA optimized](https://docs.microsoft.com/azure/virtual-machines/sizes-field-programmable-gate-arrays), [High performance](https://docs.microsoft.com/azure/virtual-machines/sizes-hpc), or [Previous generation](https://docs.microsoft.com/azure/virtual-machines/sizes-previous-gen) virtual machine SKUs.
  late final pulumi.Output<String?> skuName;
  /// A `skuProfile` block as defined below.
  ///
  /// &gt; **Note:** `skuProfile` can only be specified when `skuName` is set to `Mix`, and `skuProfile` must be configured when `skuName` is set to `Mix`.
  ///
  /// &gt; **Note:** The `skuProfile` feature may be subject to Azure service limitations for particular regions and VM size combinations. While `skuProfile` can be updated after deployment, it cannot be removed. Removing `skuProfile` from the configuration after deployment triggers the creation of a new resource. Additionally, modifying `skuProfile` settings may result in instance disruption, as changes to allocation strategies or VM sizes can require Azure to redistribute or recreate instances.
  late final pulumi.Output<OrchestratedVirtualMachineScaleSetSkuProfile?> skuProfile;
  /// The ID of an Image which each Virtual Machine in this Scale Set should be based on. Possible Image ID types include `Image ID`s, `Shared Image ID`s, `Shared Image Version ID`s, `Community Gallery Image ID`s, `Community Gallery Image Version ID`s, `Shared Gallery Image ID`s and `Shared Gallery Image Version ID`s.
  late final pulumi.Output<String?> sourceImageId;
  /// A `sourceImageReference` block as defined below.
  ///
  /// &gt; **Note:** `sourceImageId` and `sourceImageReference` are mutually exclusive and only one of them may be specified.
  late final pulumi.Output<OrchestratedVirtualMachineScaleSetSourceImageReference?> sourceImageReference;
  /// A mapping of tags which should be assigned to this Virtual Machine Scale Set.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A `terminationNotification` block as defined below.
  late final pulumi.Output<OrchestratedVirtualMachineScaleSetTerminationNotification> terminationNotification;
  /// The Unique ID for the Orchestrated Virtual Machine Scale Set.
  late final pulumi.Output<String> uniqueId;
  /// Specifies how upgrades (e.g. changing the Image/SKU) should be performed to Virtual Machine Instances. Possible values are `Automatic`, `Manual`, and `Rolling`. Defaults to `Manual`. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> upgradeMode;
  /// The Base64-Encoded User Data which should be used for this Virtual Machine Scale Set.
  late final pulumi.Output<String?> userDataBase64;
  /// Should the Virtual Machines in this Scale Set be strictly evenly distributed across Availability Zones? Defaults to `false`. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** This can only be set to `true` when one or more `zones` are configured.
  late final pulumi.Output<bool?> zoneBalance;
  /// Specifies a list of Availability Zones across which the Virtual Machine Scale Set will create instances.
  ///
  /// &gt; **Note:** Updating `zones` to remove an existing zone forces a new Virtual Machine Scale Set to be created.
  ///
  /// &gt; **Note:** Availability Zones are [only supported in several regions at this time](https://docs.microsoft.com/azure/availability-zones/az-overview).
  late final pulumi.Output<List<String>?> zones;

  /// Creates a new [OrchestratedVirtualMachineScaleSet].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [OrchestratedVirtualMachineScaleSet]. {@macro pulumi_compute_orchestrated_virtual_machine_scale_set_orchestrated_virtual_machine_scale_set_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  OrchestratedVirtualMachineScaleSet(
    String name, {
    OrchestratedVirtualMachineScaleSetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:compute/orchestratedVirtualMachineScaleSet:OrchestratedVirtualMachineScaleSet',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    additionalCapabilities = registerOutput<OrchestratedVirtualMachineScaleSetAdditionalCapabilities?>('additionalCapabilities', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return OrchestratedVirtualMachineScaleSetAdditionalCapabilities.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    automaticInstanceRepair = registerOutput<OrchestratedVirtualMachineScaleSetAutomaticInstanceRepair>('automaticInstanceRepair', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return OrchestratedVirtualMachineScaleSetAutomaticInstanceRepair.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    bootDiagnostics = registerOutput<OrchestratedVirtualMachineScaleSetBootDiagnostics?>('bootDiagnostics', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return OrchestratedVirtualMachineScaleSetBootDiagnostics.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    capacityReservationGroupId = registerOutput<String?>('capacityReservationGroupId');
    dataDisks = registerOutput<List<Map<String, dynamic>>?>('dataDisks');
    encryptionAtHostEnabled = registerOutput<bool?>('encryptionAtHostEnabled');
    evictionPolicy = registerOutput<String?>('evictionPolicy');
    extensionOperationsEnabled = registerOutput<bool?>('extensionOperationsEnabled');
    extensions = registerOutput<List<Map<String, dynamic>>>('extensions');
    extensionsTimeBudget = registerOutput<String?>('extensionsTimeBudget');
    identity = registerOutput<OrchestratedVirtualMachineScaleSetIdentity?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return OrchestratedVirtualMachineScaleSetIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    instances = registerOutput<int>('instances');
    licenseType = registerOutput<String?>('licenseType');
    location = registerOutput<String>('location');
    maxBidPrice = registerOutput<double?>('maxBidPrice');
    this.name = registerOutput<String>('name');
    networkApiVersion = registerOutput<String?>('networkApiVersion');
    networkInterfaces = registerOutput<List<Map<String, dynamic>>?>('networkInterfaces');
    osDisk = registerOutput<OrchestratedVirtualMachineScaleSetOsDisk?>('osDisk', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return OrchestratedVirtualMachineScaleSetOsDisk.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    osProfile = registerOutput<OrchestratedVirtualMachineScaleSetOsProfile?>('osProfile', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return OrchestratedVirtualMachineScaleSetOsProfile.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    plan = registerOutput<OrchestratedVirtualMachineScaleSetPlan?>('plan', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return OrchestratedVirtualMachineScaleSetPlan.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    platformFaultDomainCount = registerOutput<int>('platformFaultDomainCount');
    priority = registerOutput<String?>('priority');
    priorityMix = registerOutput<OrchestratedVirtualMachineScaleSetPriorityMix?>('priorityMix', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return OrchestratedVirtualMachineScaleSetPriorityMix.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    proximityPlacementGroupId = registerOutput<String?>('proximityPlacementGroupId');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    rollingUpgradePolicy = registerOutput<OrchestratedVirtualMachineScaleSetRollingUpgradePolicy?>('rollingUpgradePolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return OrchestratedVirtualMachineScaleSetRollingUpgradePolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    singlePlacementGroup = registerOutput<bool>('singlePlacementGroup');
    skuName = registerOutput<String?>('skuName');
    skuProfile = registerOutput<OrchestratedVirtualMachineScaleSetSkuProfile?>('skuProfile', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return OrchestratedVirtualMachineScaleSetSkuProfile.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    sourceImageId = registerOutput<String?>('sourceImageId');
    sourceImageReference = registerOutput<OrchestratedVirtualMachineScaleSetSourceImageReference?>('sourceImageReference', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return OrchestratedVirtualMachineScaleSetSourceImageReference.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    terminationNotification = registerOutput<OrchestratedVirtualMachineScaleSetTerminationNotification>('terminationNotification', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return OrchestratedVirtualMachineScaleSetTerminationNotification.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    uniqueId = registerOutput<String>('uniqueId');
    upgradeMode = registerOutput<String?>('upgradeMode');
    userDataBase64 = registerOutput<String?>('userDataBase64');
    zoneBalance = registerOutput<bool?>('zoneBalance');
    zones = registerOutput<List<String>?>('zones');
  }

  /// Gets an existing [OrchestratedVirtualMachineScaleSet] resource's state with the given [name] and [id].
  static OrchestratedVirtualMachineScaleSet get(
    String name,
    pulumi.Input<String> id, {
    OrchestratedVirtualMachineScaleSetState? state,
  }) {
    return OrchestratedVirtualMachineScaleSet._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  OrchestratedVirtualMachineScaleSet._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:compute/orchestratedVirtualMachineScaleSet:OrchestratedVirtualMachineScaleSet',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    additionalCapabilities = registerOutput<OrchestratedVirtualMachineScaleSetAdditionalCapabilities?>('additionalCapabilities', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return OrchestratedVirtualMachineScaleSetAdditionalCapabilities.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    automaticInstanceRepair = registerOutput<OrchestratedVirtualMachineScaleSetAutomaticInstanceRepair>('automaticInstanceRepair', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return OrchestratedVirtualMachineScaleSetAutomaticInstanceRepair.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    bootDiagnostics = registerOutput<OrchestratedVirtualMachineScaleSetBootDiagnostics?>('bootDiagnostics', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return OrchestratedVirtualMachineScaleSetBootDiagnostics.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    capacityReservationGroupId = registerOutput<String?>('capacityReservationGroupId');
    dataDisks = registerOutput<List<Map<String, dynamic>>?>('dataDisks');
    encryptionAtHostEnabled = registerOutput<bool?>('encryptionAtHostEnabled');
    evictionPolicy = registerOutput<String?>('evictionPolicy');
    extensionOperationsEnabled = registerOutput<bool?>('extensionOperationsEnabled');
    extensions = registerOutput<List<Map<String, dynamic>>>('extensions');
    extensionsTimeBudget = registerOutput<String?>('extensionsTimeBudget');
    identity = registerOutput<OrchestratedVirtualMachineScaleSetIdentity?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return OrchestratedVirtualMachineScaleSetIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    instances = registerOutput<int>('instances');
    licenseType = registerOutput<String?>('licenseType');
    location = registerOutput<String>('location');
    maxBidPrice = registerOutput<double?>('maxBidPrice');
    this.name = registerOutput<String>('name');
    networkApiVersion = registerOutput<String?>('networkApiVersion');
    networkInterfaces = registerOutput<List<Map<String, dynamic>>?>('networkInterfaces');
    osDisk = registerOutput<OrchestratedVirtualMachineScaleSetOsDisk?>('osDisk', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return OrchestratedVirtualMachineScaleSetOsDisk.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    osProfile = registerOutput<OrchestratedVirtualMachineScaleSetOsProfile?>('osProfile', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return OrchestratedVirtualMachineScaleSetOsProfile.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    plan = registerOutput<OrchestratedVirtualMachineScaleSetPlan?>('plan', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return OrchestratedVirtualMachineScaleSetPlan.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    platformFaultDomainCount = registerOutput<int>('platformFaultDomainCount');
    priority = registerOutput<String?>('priority');
    priorityMix = registerOutput<OrchestratedVirtualMachineScaleSetPriorityMix?>('priorityMix', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return OrchestratedVirtualMachineScaleSetPriorityMix.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    proximityPlacementGroupId = registerOutput<String?>('proximityPlacementGroupId');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    rollingUpgradePolicy = registerOutput<OrchestratedVirtualMachineScaleSetRollingUpgradePolicy?>('rollingUpgradePolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return OrchestratedVirtualMachineScaleSetRollingUpgradePolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    singlePlacementGroup = registerOutput<bool>('singlePlacementGroup');
    skuName = registerOutput<String?>('skuName');
    skuProfile = registerOutput<OrchestratedVirtualMachineScaleSetSkuProfile?>('skuProfile', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return OrchestratedVirtualMachineScaleSetSkuProfile.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    sourceImageId = registerOutput<String?>('sourceImageId');
    sourceImageReference = registerOutput<OrchestratedVirtualMachineScaleSetSourceImageReference?>('sourceImageReference', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return OrchestratedVirtualMachineScaleSetSourceImageReference.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    terminationNotification = registerOutput<OrchestratedVirtualMachineScaleSetTerminationNotification>('terminationNotification', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return OrchestratedVirtualMachineScaleSetTerminationNotification.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    uniqueId = registerOutput<String>('uniqueId');
    upgradeMode = registerOutput<String?>('upgradeMode');
    userDataBase64 = registerOutput<String?>('userDataBase64');
    zoneBalance = registerOutput<bool?>('zoneBalance');
    zones = registerOutput<List<String>?>('zones');
  }
}
