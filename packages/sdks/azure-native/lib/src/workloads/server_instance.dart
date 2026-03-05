import 'package:pulumi/pulumi.dart' as pulumi;
import 'configuration_data_response.dart';
import 'excel_performance_data_response.dart';
import 'sapmigrate_error_response.dart';
import 'server_instance_args.dart';
import 'system_data_response.dart';

/// Define the Server Instance resource.
///
/// Uses Azure REST API version 2023-10-01-preview. In version 2.x of the Azure Native provider, it used API version 2023-10-01-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Creates the Server Instance resource.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var serverInstance = new AzureNative.Workloads.ServerInstance("serverInstance", new()
///     {
///         ResourceGroupName = "test-rg",
///         SapDiscoverySiteName = "SampleSite",
///         SapInstanceName = "MPP_MPP",
///         ServerInstanceName = "APP_SapServer1",
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
/// 		_, err := workloads.NewServerInstance(ctx, "serverInstance", &workloads.ServerInstanceArgs{
/// 			ResourceGroupName:    pulumi.String("test-rg"),
/// 			SapDiscoverySiteName: pulumi.String("SampleSite"),
/// 			SapInstanceName:      pulumi.String("MPP_MPP"),
/// 			ServerInstanceName:   pulumi.String("APP_SapServer1"),
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
/// import com.pulumi.azurenative.workloads.ServerInstance;
/// import com.pulumi.azurenative.workloads.ServerInstanceArgs;
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
///         var serverInstance = new ServerInstance("serverInstance", ServerInstanceArgs.builder()
///             .resourceGroupName("test-rg")
///             .sapDiscoverySiteName("SampleSite")
///             .sapInstanceName("MPP_MPP")
///             .serverInstanceName("APP_SapServer1")
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
/// const serverInstance = new azure_native.workloads.ServerInstance("serverInstance", {
///     resourceGroupName: "test-rg",
///     sapDiscoverySiteName: "SampleSite",
///     sapInstanceName: "MPP_MPP",
///     serverInstanceName: "APP_SapServer1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// server_instance = azure_native.workloads.ServerInstance("serverInstance",
///     resource_group_name="test-rg",
///     sap_discovery_site_name="SampleSite",
///     sap_instance_name="MPP_MPP",
///     server_instance_name="APP_SapServer1")
///
/// ```
///
/// ```yaml
/// resources:
///   serverInstance:
///     type: azure-native:workloads:ServerInstance
///     properties:
///       resourceGroupName: test-rg
///       sapDiscoverySiteName: SampleSite
///       sapInstanceName: MPP_MPP
///       serverInstanceName: APP_SapServer1
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
/// $ pulumi import azure-native:workloads:ServerInstance APP_SapServer1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Workloads/sapDiscoverySites/{sapDiscoverySiteName}/sapInstances/{sapInstanceName}/serverInstances/{serverInstanceName}
/// ```
class ServerInstance extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Configuration data for this server instance.
  late final pulumi.Output<ConfigurationDataResponse> configurationData;

  /// Defines the errors related to SAP Instance resource.
  late final pulumi.Output<SAPMigrateErrorResponse> errors;

  /// This is the Instance SID for ASCS/AP/DB instance.  An SAP system with HANA database for example could have a different SID for database Instance than that of ASCS instance.
  late final pulumi.Output<String> instanceSid;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// This is Operating System on which the host server is running.
  late final pulumi.Output<String> operatingSystem;

  /// Configuration data for this server instance.
  late final pulumi.Output<ExcelPerformanceDataResponse> performanceData;

  /// Defines the provisioning states.
  late final pulumi.Output<String> provisioningState;

  /// Defines the type SAP instance on this server instance.
  late final pulumi.Output<String> sapInstanceType;

  /// This is the SAP Application Component; e.g. SAP S/4HANA 2022, SAP ERP ENHANCE PACKAGE.
  late final pulumi.Output<String> sapProduct;

  /// Provide the product version of the SAP product.
  late final pulumi.Output<String> sapProductVersion;

  /// This is the Virtual Machine Name of the SAP system. Add all the virtual machines attached to an SAP system which you wish to migrate to Azure. Keeping this not equal to ID as for single tier all InstanceTypes would be on same server, leading to multiple resources with same servername.
  late final pulumi.Output<String> serverName;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [ServerInstance].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ServerInstance]. {@macro pulumi_workloads_server_instance_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ServerInstance(
    String name, {
    ServerInstanceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:workloads:ServerInstance',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    configurationData = registerOutput<ConfigurationDataResponse>(
      'configurationData',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ConfigurationDataResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    errors = registerOutput<SAPMigrateErrorResponse>(
      'errors',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SAPMigrateErrorResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    instanceSid = registerOutput<String>('instanceSid');
    this.name = registerOutput<String>('name');
    operatingSystem = registerOutput<String>('operatingSystem');
    performanceData = registerOutput<ExcelPerformanceDataResponse>(
      'performanceData',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ExcelPerformanceDataResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    provisioningState = registerOutput<String>('provisioningState');
    sapInstanceType = registerOutput<String>('sapInstanceType');
    sapProduct = registerOutput<String>('sapProduct');
    sapProductVersion = registerOutput<String>('sapProductVersion');
    serverName = registerOutput<String>('serverName');
    systemData = registerOutput<SystemDataResponse>(
      'systemData',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SystemDataResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    type = registerOutput<String>('type');
  }
}
