import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_vm_details_response.dart';
import 'load_balancer_details_response.dart';
import 'sap_database_instance_args.dart';
import 'sapvirtual_instance_error_response.dart';
import 'system_data_response.dart';

/// Define the Database resource.
///
/// Uses Azure REST API version 2024-09-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create SAP Database Instances for HA System with Availability Set
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var sapDatabaseInstance = new AzureNative.Workloads.SapDatabaseInstance("sapDatabaseInstance", new()
///     {
///         DatabaseInstanceName = "databaseServer",
///         Location = "westcentralus",
///         ResourceGroupName = "test-rg",
///         SapVirtualInstanceName = "X00",
///         Tags = null,
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
/// 		_, err := workloads.NewSapDatabaseInstance(ctx, "sapDatabaseInstance", &workloads.SapDatabaseInstanceArgs{
/// 			DatabaseInstanceName:   pulumi.String("databaseServer"),
/// 			Location:               pulumi.String("westcentralus"),
/// 			ResourceGroupName:      pulumi.String("test-rg"),
/// 			SapVirtualInstanceName: pulumi.String("X00"),
/// 			Tags:                   pulumi.StringMap{},
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
/// resource "azure-native_workloads_sapdatabaseinstance" "sapDatabaseInstance" {
///   database_instance_name    = "databaseServer"
///   location                  = "westcentralus"
///   resource_group_name       = "test-rg"
///   sap_virtual_instance_name = "X00"
///   tags                      = {}
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
/// import com.pulumi.azurenative.workloads.SapDatabaseInstance;
/// import com.pulumi.azurenative.workloads.SapDatabaseInstanceArgs;
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
///         var sapDatabaseInstance = new SapDatabaseInstance("sapDatabaseInstance", SapDatabaseInstanceArgs.builder()
///             .databaseInstanceName("databaseServer")
///             .location("westcentralus")
///             .resourceGroupName("test-rg")
///             .sapVirtualInstanceName("X00")
///             .tags(Map.ofEntries(
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
/// const sapDatabaseInstance = new azure_native.workloads.SapDatabaseInstance("sapDatabaseInstance", {
///     databaseInstanceName: "databaseServer",
///     location: "westcentralus",
///     resourceGroupName: "test-rg",
///     sapVirtualInstanceName: "X00",
///     tags: {},
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// sap_database_instance = azure_native.workloads.SapDatabaseInstance("sapDatabaseInstance",
///     database_instance_name="databaseServer",
///     location="westcentralus",
///     resource_group_name="test-rg",
///     sap_virtual_instance_name="X00",
///     tags={})
///
/// ```
///
/// ```yaml
/// resources:
///   sapDatabaseInstance:
///     type: azure-native:workloads:SapDatabaseInstance
///     properties:
///       databaseInstanceName: databaseServer
///       location: westcentralus
///       resourceGroupName: test-rg
///       sapVirtualInstanceName: X00
///       tags: {}
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### SAPDatabaseInstances_Create
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var sapDatabaseInstance = new AzureNative.Workloads.SapDatabaseInstance("sapDatabaseInstance", new()
///     {
///         DatabaseInstanceName = "databaseServer",
///         Location = "westcentralus",
///         ResourceGroupName = "test-rg",
///         SapVirtualInstanceName = "X00",
///         Tags = null,
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
/// 		_, err := workloads.NewSapDatabaseInstance(ctx, "sapDatabaseInstance", &workloads.SapDatabaseInstanceArgs{
/// 			DatabaseInstanceName:   pulumi.String("databaseServer"),
/// 			Location:               pulumi.String("westcentralus"),
/// 			ResourceGroupName:      pulumi.String("test-rg"),
/// 			SapVirtualInstanceName: pulumi.String("X00"),
/// 			Tags:                   pulumi.StringMap{},
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
/// resource "azure-native_workloads_sapdatabaseinstance" "sapDatabaseInstance" {
///   database_instance_name    = "databaseServer"
///   location                  = "westcentralus"
///   resource_group_name       = "test-rg"
///   sap_virtual_instance_name = "X00"
///   tags                      = {}
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
/// import com.pulumi.azurenative.workloads.SapDatabaseInstance;
/// import com.pulumi.azurenative.workloads.SapDatabaseInstanceArgs;
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
///         var sapDatabaseInstance = new SapDatabaseInstance("sapDatabaseInstance", SapDatabaseInstanceArgs.builder()
///             .databaseInstanceName("databaseServer")
///             .location("westcentralus")
///             .resourceGroupName("test-rg")
///             .sapVirtualInstanceName("X00")
///             .tags(Map.ofEntries(
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
/// const sapDatabaseInstance = new azure_native.workloads.SapDatabaseInstance("sapDatabaseInstance", {
///     databaseInstanceName: "databaseServer",
///     location: "westcentralus",
///     resourceGroupName: "test-rg",
///     sapVirtualInstanceName: "X00",
///     tags: {},
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// sap_database_instance = azure_native.workloads.SapDatabaseInstance("sapDatabaseInstance",
///     database_instance_name="databaseServer",
///     location="westcentralus",
///     resource_group_name="test-rg",
///     sap_virtual_instance_name="X00",
///     tags={})
///
/// ```
///
/// ```yaml
/// resources:
///   sapDatabaseInstance:
///     type: azure-native:workloads:SapDatabaseInstance
///     properties:
///       databaseInstanceName: databaseServer
///       location: westcentralus
///       resourceGroupName: test-rg
///       sapVirtualInstanceName: X00
///       tags: {}
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
/// $ pulumi import azure-native:workloads:SapDatabaseInstance databaseServer /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Workloads/sapVirtualInstances/{sapVirtualInstanceName}/databaseInstances/{databaseInstanceName}
/// ```
class SapDatabaseInstance extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Database SID name.
  late final pulumi.Output<String> databaseSid;
  /// Database type, that is if the DB is HANA, DB2, Oracle, SAP ASE, Max DB or MS SQL Server.
  late final pulumi.Output<String> databaseType;
  /// Defines the errors related to Database resource.
  late final pulumi.Output<SAPVirtualInstanceErrorResponse> errors;
  /// Database IP Address.
  late final pulumi.Output<String> ipAddress;
  /// The Load Balancer details such as LoadBalancer ID attached to Database Virtual Machines
  late final pulumi.Output<LoadBalancerDetailsResponse> loadBalancerDetails;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Defines the provisioning states.
  late final pulumi.Output<String> provisioningState;
  /// Defines the SAP Instance status.
  late final pulumi.Output<String> status;
  /// Database subnet.
  late final pulumi.Output<String> subnet;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// The list of virtual machines corresponding to the Database resource.
  late final pulumi.Output<List<DatabaseVmDetailsResponse>> vmDetails;

  /// Creates a new [SapDatabaseInstance].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SapDatabaseInstance]. {@macro pulumi_workloads_sap_database_instance_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SapDatabaseInstance(
    String name, {
    SapDatabaseInstanceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:workloads:SapDatabaseInstance',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    databaseSid = registerOutput<String>('databaseSid');
    databaseType = registerOutput<String>('databaseType');
    errors = registerOutput<SAPVirtualInstanceErrorResponse>('errors', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SAPVirtualInstanceErrorResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    ipAddress = registerOutput<String>('ipAddress');
    loadBalancerDetails = registerOutput<LoadBalancerDetailsResponse>('loadBalancerDetails', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LoadBalancerDetailsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    status = registerOutput<String>('status');
    subnet = registerOutput<String>('subnet');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
    vmDetails = registerOutput<List<DatabaseVmDetailsResponse>>('vmDetails', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<DatabaseVmDetailsResponse>(guardedValue, (value) => DatabaseVmDetailsResponse.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Creates a typed reference to an existing [SapDatabaseInstance] resource.
  SapDatabaseInstance.reference(String urn)
    : super(
        'azure-native:workloads:SapDatabaseInstance',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    databaseSid = registerOutput<String>('databaseSid');
    databaseType = registerOutput<String>('databaseType');
    errors = registerOutput<SAPVirtualInstanceErrorResponse>('errors', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SAPVirtualInstanceErrorResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    ipAddress = registerOutput<String>('ipAddress');
    loadBalancerDetails = registerOutput<LoadBalancerDetailsResponse>('loadBalancerDetails', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LoadBalancerDetailsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    status = registerOutput<String>('status');
    subnet = registerOutput<String>('subnet');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
    vmDetails = registerOutput<List<DatabaseVmDetailsResponse>>('vmDetails', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<DatabaseVmDetailsResponse>(guardedValue, (value) => DatabaseVmDetailsResponse.fromMap((value as Map).cast<String, dynamic>())); });
  }
}
