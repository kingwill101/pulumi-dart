import 'package:pulumi/pulumi.dart' as pulumi;
import 'sap_instance_args.dart';
import 'sapmigrate_error_response.dart';
import 'system_data_response.dart';

/// Define the SAP Instance resource.
///
/// Uses Azure REST API version 2023-10-01-preview. In version 2.x of the Azure Native provider, it used API version 2023-10-01-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Creates the SAP Instance resource.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var sapInstance = new AzureNative.Workloads.SapInstance("sapInstance", new()
///     {
///         Location = "eastus",
///         ResourceGroupName = "test-rg",
///         SapDiscoverySiteName = "SampleSite",
///         SapInstanceName = "MPP_MPP",
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
/// 		_, err := workloads.NewSapInstance(ctx, "sapInstance", &workloads.SapInstanceArgs{
/// 			Location:             pulumi.String("eastus"),
/// 			ResourceGroupName:    pulumi.String("test-rg"),
/// 			SapDiscoverySiteName: pulumi.String("SampleSite"),
/// 			SapInstanceName:      pulumi.String("MPP_MPP"),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.workloads.SapInstance;
/// import com.pulumi.azurenative.workloads.SapInstanceArgs;
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
///         var sapInstance = new SapInstance("sapInstance", SapInstanceArgs.builder()
///             .location("eastus")
///             .resourceGroupName("test-rg")
///             .sapDiscoverySiteName("SampleSite")
///             .sapInstanceName("MPP_MPP")
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
/// const sapInstance = new azure_native.workloads.SapInstance("sapInstance", {
///     location: "eastus",
///     resourceGroupName: "test-rg",
///     sapDiscoverySiteName: "SampleSite",
///     sapInstanceName: "MPP_MPP",
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
/// sap_instance = azure_native.workloads.SapInstance("sapInstance",
///     location="eastus",
///     resource_group_name="test-rg",
///     sap_discovery_site_name="SampleSite",
///     sap_instance_name="MPP_MPP",
///     tags={
///         "property1": "value1",
///         "property2": "value2",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   sapInstance:
///     type: azure-native:workloads:SapInstance
///     properties:
///       location: eastus
///       resourceGroupName: test-rg
///       sapDiscoverySiteName: SampleSite
///       sapInstanceName: MPP_MPP
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
/// $ pulumi import azure-native:workloads:SapInstance MPP_MPP /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Workloads/sapDiscoverySites/{sapDiscoverySiteName}/sapInstances/{sapInstanceName}
/// ```
class SapInstance extends pulumi.CustomResource {
  /// Enter a business function/department identifier to group multiple SIDs.
  late final pulumi.Output<String> application;

  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The Environment; PRD, QA, DEV, etc to which SAP system belongs to. Select from the list of available dropdown values.
  late final pulumi.Output<String> environment;

  /// Defines the errors related to SAP Instance resource.
  late final pulumi.Output<SAPMigrateErrorResponse> errors;

  /// This is the SID of the production system in a landscape.  An SAP system could itself be a production SID or a part of a landscape with a different Production SID. This field can be used to relate non-prod SIDs, other components, SID (WEBDISP) to the prod SID. Enter the value of Production SID.
  late final pulumi.Output<String> landscapeSid;

  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// Defines the provisioning states.
  late final pulumi.Output<String> provisioningState;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// This is the SID of SAP System. Keeping this not equal to ID as different landscapes can have repeated System SID IDs.
  late final pulumi.Output<String> systemSid;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [SapInstance].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SapInstance]. {@macro pulumi_workloads_sap_instance_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SapInstance(
    String name, {
    SapInstanceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:workloads:SapInstance',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    application = registerOutput<String>('application');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    environment = registerOutput<String>('environment');
    errors = registerOutput<SAPMigrateErrorResponse>('errors');
    landscapeSid = registerOutput<String>('landscapeSid');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData');
    systemSid = registerOutput<String>('systemSid');
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
