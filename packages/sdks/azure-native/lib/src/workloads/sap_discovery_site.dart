import 'package:pulumi/pulumi.dart' as pulumi;
import 'extended_location_response.dart';
import 'sap_discovery_site_args.dart';
import 'sapmigrate_error_response.dart';
import 'system_data_response.dart';

/// Define the SAP Migration discovery site resource.
///
/// Uses Azure REST API version 2023-10-01-preview. In version 2.x of the Azure Native provider, it used API version 2023-10-01-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create resource for Import based input.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var sapDiscoverySite = new AzureNative.Workloads.SapDiscoverySite("sapDiscoverySite", new()
///     {
///         Location = "eastus",
///         MasterSiteId = "MasterSiteIdResourceId",
///         MigrateProjectId = "MigrateProjectId",
///         ResourceGroupName = "test-rg",
///         SapDiscoverySiteName = "SampleSite",
///         Tags =
///         {
///             { "property1", "value1" },
///             { "property2", "value2" },
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
/// 	workloads "github.com/pulumi/pulumi-azure-native-sdk/workloads/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := workloads.NewSapDiscoverySite(ctx, "sapDiscoverySite", &workloads.SapDiscoverySiteArgs{
/// 			Location:             pulumi.String("eastus"),
/// 			MasterSiteId:         pulumi.String("MasterSiteIdResourceId"),
/// 			MigrateProjectId:     pulumi.String("MigrateProjectId"),
/// 			ResourceGroupName:    pulumi.String("test-rg"),
/// 			SapDiscoverySiteName: pulumi.String("SampleSite"),
/// 			Tags: pulumi.StringMap{
/// 				"property1": pulumi.String("value1"),
/// 				"property2": pulumi.String("value2"),
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
/// resource "azure-native_workloads_sapdiscoverysite" "sapDiscoverySite" {
///   location                = "eastus"
///   master_site_id          = "MasterSiteIdResourceId"
///   migrate_project_id      = "MigrateProjectId"
///   resource_group_name     = "test-rg"
///   sap_discovery_site_name = "SampleSite"
///   tags = {
///     "property1" = "value1"
///     "property2" = "value2"
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
/// import com.pulumi.azurenative.workloads.SapDiscoverySite;
/// import com.pulumi.azurenative.workloads.SapDiscoverySiteArgs;
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
///         var sapDiscoverySite = new SapDiscoverySite("sapDiscoverySite", SapDiscoverySiteArgs.builder()
///             .location("eastus")
///             .masterSiteId("MasterSiteIdResourceId")
///             .migrateProjectId("MigrateProjectId")
///             .resourceGroupName("test-rg")
///             .sapDiscoverySiteName("SampleSite")
///             .tags(Map.ofEntries(
///                 Map.entry("property1", "value1"),
///                 Map.entry("property2", "value2")
///             ))
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
/// const sapDiscoverySite = new azure_native.workloads.SapDiscoverySite("sapDiscoverySite", {
///     location: "eastus",
///     masterSiteId: "MasterSiteIdResourceId",
///     migrateProjectId: "MigrateProjectId",
///     resourceGroupName: "test-rg",
///     sapDiscoverySiteName: "SampleSite",
///     tags: {
///         property1: "value1",
///         property2: "value2",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// sap_discovery_site = azure_native.workloads.SapDiscoverySite("sapDiscoverySite",
///     location="eastus",
///     master_site_id="MasterSiteIdResourceId",
///     migrate_project_id="MigrateProjectId",
///     resource_group_name="test-rg",
///     sap_discovery_site_name="SampleSite",
///     tags={
///         "property1": "value1",
///         "property2": "value2",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   sapDiscoverySite:
///     type: azure-native:workloads:SapDiscoverySite
///     properties:
///       location: eastus
///       masterSiteId: MasterSiteIdResourceId
///       migrateProjectId: MigrateProjectId
///       resourceGroupName: test-rg
///       sapDiscoverySiteName: SampleSite
///       tags:
///         property1: value1
///         property2: value2
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
/// $ pulumi import azure-native:workloads:SapDiscoverySite SampleSite /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Workloads/sapDiscoverySites/{sapDiscoverySiteName}
/// ```
class SapDiscoverySite extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Indicates any errors on the SAP Migration discovery site resource.
  late final pulumi.Output<SAPMigrateErrorResponse> errors;
  /// The extended location definition.
  late final pulumi.Output<ExtendedLocationResponse?> extendedLocation;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The master site ID from Azure Migrate.
  late final pulumi.Output<String?> masterSiteId;
  /// The migrate project ID from Azure Migrate.
  late final pulumi.Output<String?> migrateProjectId;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Defines the provisioning states.
  late final pulumi.Output<String> provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [SapDiscoverySite].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SapDiscoverySite]. {@macro pulumi_workloads_sap_discovery_site_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SapDiscoverySite(
    String name, {
    SapDiscoverySiteArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:workloads:SapDiscoverySite',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    errors = registerOutput<SAPMigrateErrorResponse>('errors', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SAPMigrateErrorResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    extendedLocation = registerOutput<ExtendedLocationResponse?>('extendedLocation', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ExtendedLocationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    masterSiteId = registerOutput<String?>('masterSiteId');
    migrateProjectId = registerOutput<String?>('migrateProjectId');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
