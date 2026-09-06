import 'package:pulumi/pulumi.dart' as pulumi;
import 'capacity_details_args.dart';
import 'capacity_sku_response.dart';
import 'dedicated_capacity_administrators_response.dart';
import 'system_data_response.dart';

/// Represents an instance of a Dedicated Capacity resource.
///
/// Uses Azure REST API version 2021-01-01. In version 2.x of the Azure Native provider, it used API version 2021-01-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create capacity
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var capacityDetails = new AzureNative.PowerBIDedicated.CapacityDetails("capacityDetails", new()
///     {
///         Administration = new AzureNative.PowerBIDedicated.Inputs.DedicatedCapacityAdministratorsArgs
///         {
///             Members = new[]
///             {
///                 "azsdktest@microsoft.com",
///                 "azsdktest2@microsoft.com",
///             },
///         },
///         DedicatedCapacityName = "azsdktest",
///         Location = "West US",
///         ResourceGroupName = "TestRG",
///         Sku = new AzureNative.PowerBIDedicated.Inputs.CapacitySkuArgs
///         {
///             Name = "A1",
///             Tier = AzureNative.PowerBIDedicated.CapacitySkuTier.PBIE_Azure,
///         },
///         Tags =
///         {
///             { "testKey", "testValue" },
///         },
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	powerbidedicated "github.com/pulumi/pulumi-azure-native-sdk/powerbidedicated/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := powerbidedicated.NewCapacityDetails(ctx, "capacityDetails", &powerbidedicated.CapacityDetailsArgs{
/// 			Administration: &powerbidedicated.DedicatedCapacityAdministratorsArgs{
/// 				Members: pulumi.StringArray{
/// 					pulumi.String("azsdktest@microsoft.com"),
/// 					pulumi.String("azsdktest2@microsoft.com"),
/// 				},
/// 			},
/// 			DedicatedCapacityName: pulumi.String("azsdktest"),
/// 			Location:              pulumi.String("West US"),
/// 			ResourceGroupName:     pulumi.String("TestRG"),
/// 			Sku: &powerbidedicated.CapacitySkuArgs{
/// 				Name: pulumi.String("A1"),
/// 				Tier: pulumi.String(powerbidedicated.CapacitySkuTier_PBIE_Azure),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"testKey": pulumi.String("testValue"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_powerbidedicated_capacitydetails" "capacityDetails" {
///   administration = {
///     members = ["azsdktest@microsoft.com", "azsdktest2@microsoft.com"]
///   }
///   dedicated_capacity_name = "azsdktest"
///   location                = "West US"
///   resource_group_name     = "TestRG"
///   sku = {
///     name = "A1"
///     tier = "PBIE_Azure"
///   }
///   tags = {
///     "testKey" = "testValue"
///   }
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.powerbidedicated.CapacityDetails;
/// import com.pulumi.azurenative.powerbidedicated.CapacityDetailsArgs;
/// import com.pulumi.azurenative.powerbidedicated.inputs.DedicatedCapacityAdministratorsArgs;
/// import com.pulumi.azurenative.powerbidedicated.inputs.CapacitySkuArgs;
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
///         var capacityDetails = new CapacityDetails("capacityDetails", CapacityDetailsArgs.builder()
///             .administration(DedicatedCapacityAdministratorsArgs.builder()
///                 .members(
///                     "azsdktest@microsoft.com",
///                     "azsdktest2@microsoft.com")
///                 .build())
///             .dedicatedCapacityName("azsdktest")
///             .location("West US")
///             .resourceGroupName("TestRG")
///             .sku(CapacitySkuArgs.builder()
///                 .name("A1")
///                 .tier("PBIE_Azure")
///                 .build())
///             .tags(Map.of("testKey", "testValue"))
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const capacityDetails = new azure_native.powerbidedicated.CapacityDetails("capacityDetails", {
///     administration: {
///         members: [
///             "azsdktest@microsoft.com",
///             "azsdktest2@microsoft.com",
///         ],
///     },
///     dedicatedCapacityName: "azsdktest",
///     location: "West US",
///     resourceGroupName: "TestRG",
///     sku: {
///         name: "A1",
///         tier: azure_native.powerbidedicated.CapacitySkuTier.PBIE_Azure,
///     },
///     tags: {
///         testKey: "testValue",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// capacity_details = azure_native.powerbidedicated.CapacityDetails("capacityDetails",
///     administration={
///         "members": [
///             "azsdktest@microsoft.com",
///             "azsdktest2@microsoft.com",
///         ],
///     },
///     dedicated_capacity_name="azsdktest",
///     location="West US",
///     resource_group_name="TestRG",
///     sku={
///         "name": "A1",
///         "tier": azure_native.powerbidedicated.CapacitySkuTier.PBI_E_AZURE,
///     },
///     tags={
///         "testKey": "testValue",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   capacityDetails:
///     type: azure-native:powerbidedicated:CapacityDetails
///     properties:
///       administration:
///         members:
///           - azsdktest@microsoft.com
///           - azsdktest2@microsoft.com
///       dedicatedCapacityName: azsdktest
///       location: West US
///       resourceGroupName: TestRG
///       sku:
///         name: A1
///         tier: PBIE_Azure
///       tags:
///         testKey: testValue
///
/// ```
///
/// {{% /example %}}
/// {{% /examples %}}
///
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:powerbidedicated:CapacityDetails azsdktest /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.PowerBIDedicated/capacities/{dedicatedCapacityName}
/// ```
class CapacityDetails extends pulumi.CustomResource {
  /// A collection of Dedicated capacity administrators
  late final pulumi.Output<DedicatedCapacityAdministratorsResponse?> administration;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Capacity name
  late final pulumi.Output<String> friendlyName;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// Specifies the generation of the Power BI Embedded capacity. If no value is specified, the default value 'Gen2' is used. [Learn More](https://docs.microsoft.com/power-bi/developer/embedded/power-bi-embedded-generation-2)
  late final pulumi.Output<String?> mode;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The current deployment state of PowerBI Dedicated resource. The provisioningState is to indicate states for resource provisioning.
  late final pulumi.Output<String> provisioningState;
  /// The SKU of the PowerBI Dedicated capacity resource.
  late final pulumi.Output<CapacitySkuResponse> sku;
  /// The current state of PowerBI Dedicated resource. The state is to indicate more states outside of resource provisioning.
  late final pulumi.Output<String> state;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Tenant ID for the capacity. Used for creating Pro Plus capacity.
  late final pulumi.Output<String> tenantId;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [CapacityDetails].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CapacityDetails]. {@macro pulumi_powerbidedicated_capacity_details_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CapacityDetails(
    String name, {
    CapacityDetailsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:powerbidedicated:CapacityDetails',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    administration = registerOutput<DedicatedCapacityAdministratorsResponse?>('administration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DedicatedCapacityAdministratorsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    azureApiVersion = registerOutput<String>('azureApiVersion');
    friendlyName = registerOutput<String>('friendlyName');
    location = registerOutput<String>('location');
    mode = registerOutput<String?>('mode');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    sku = registerOutput<CapacitySkuResponse>('sku', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CapacitySkuResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    state = registerOutput<String>('state');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tenantId = registerOutput<String>('tenantId');
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [CapacityDetails] resource.
  CapacityDetails.reference(String urn)
    : super(
        'azure-native:powerbidedicated:CapacityDetails',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    administration = registerOutput<DedicatedCapacityAdministratorsResponse?>('administration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DedicatedCapacityAdministratorsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    azureApiVersion = registerOutput<String>('azureApiVersion');
    friendlyName = registerOutput<String>('friendlyName');
    location = registerOutput<String>('location');
    mode = registerOutput<String?>('mode');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    sku = registerOutput<CapacitySkuResponse>('sku', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CapacitySkuResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    state = registerOutput<String>('state');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tenantId = registerOutput<String>('tenantId');
    type = registerOutput<String>('type');
  }
}
