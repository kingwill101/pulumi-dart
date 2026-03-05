import 'package:pulumi/pulumi.dart' as pulumi;
import 'load_balancer_details_response.dart';
import 'sap_application_server_instance_args.dart';
import 'sapvirtual_instance_error_response.dart';
import 'system_data_response.dart';

/// Define the SAP Application Server Instance resource.
///
/// Uses Azure REST API version 2024-09-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create SAP Application Server Instances for HA System with Availability Set
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var sapApplicationServerInstance = new AzureNative.Workloads.SapApplicationServerInstance("sapApplicationServerInstance", new()
///     {
///         ApplicationInstanceName = "app01",
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
/// 		_, err := workloads.NewSapApplicationServerInstance(ctx, "sapApplicationServerInstance", &workloads.SapApplicationServerInstanceArgs{
/// 			ApplicationInstanceName: pulumi.String("app01"),
/// 			Location:                pulumi.String("westcentralus"),
/// 			ResourceGroupName:       pulumi.String("test-rg"),
/// 			SapVirtualInstanceName:  pulumi.String("X00"),
/// 			Tags:                    pulumi.StringMap{},
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
/// import com.pulumi.azurenative.workloads.SapApplicationServerInstance;
/// import com.pulumi.azurenative.workloads.SapApplicationServerInstanceArgs;
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
///         var sapApplicationServerInstance = new SapApplicationServerInstance("sapApplicationServerInstance", SapApplicationServerInstanceArgs.builder()
///             .applicationInstanceName("app01")
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
/// const sapApplicationServerInstance = new azure_native.workloads.SapApplicationServerInstance("sapApplicationServerInstance", {
///     applicationInstanceName: "app01",
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
/// sap_application_server_instance = azure_native.workloads.SapApplicationServerInstance("sapApplicationServerInstance",
///     application_instance_name="app01",
///     location="westcentralus",
///     resource_group_name="test-rg",
///     sap_virtual_instance_name="X00",
///     tags={})
///
/// ```
///
/// ```yaml
/// resources:
///   sapApplicationServerInstance:
///     type: azure-native:workloads:SapApplicationServerInstance
///     properties:
///       applicationInstanceName: app01
///       location: westcentralus
///       resourceGroupName: test-rg
///       sapVirtualInstanceName: X00
///       tags: {}
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### SAPApplicationServerInstances_Create
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var sapApplicationServerInstance = new AzureNative.Workloads.SapApplicationServerInstance("sapApplicationServerInstance", new()
///     {
///         ApplicationInstanceName = "app01",
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
/// 		_, err := workloads.NewSapApplicationServerInstance(ctx, "sapApplicationServerInstance", &workloads.SapApplicationServerInstanceArgs{
/// 			ApplicationInstanceName: pulumi.String("app01"),
/// 			Location:                pulumi.String("westcentralus"),
/// 			ResourceGroupName:       pulumi.String("test-rg"),
/// 			SapVirtualInstanceName:  pulumi.String("X00"),
/// 			Tags:                    pulumi.StringMap{},
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
/// import com.pulumi.azurenative.workloads.SapApplicationServerInstance;
/// import com.pulumi.azurenative.workloads.SapApplicationServerInstanceArgs;
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
///         var sapApplicationServerInstance = new SapApplicationServerInstance("sapApplicationServerInstance", SapApplicationServerInstanceArgs.builder()
///             .applicationInstanceName("app01")
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
/// const sapApplicationServerInstance = new azure_native.workloads.SapApplicationServerInstance("sapApplicationServerInstance", {
///     applicationInstanceName: "app01",
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
/// sap_application_server_instance = azure_native.workloads.SapApplicationServerInstance("sapApplicationServerInstance",
///     application_instance_name="app01",
///     location="westcentralus",
///     resource_group_name="test-rg",
///     sap_virtual_instance_name="X00",
///     tags={})
///
/// ```
///
/// ```yaml
/// resources:
///   sapApplicationServerInstance:
///     type: azure-native:workloads:SapApplicationServerInstance
///     properties:
///       applicationInstanceName: app01
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
/// $ pulumi import azure-native:workloads:SapApplicationServerInstance app01 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Workloads/sapVirtualInstances/{sapVirtualInstanceName}/applicationInstances/{applicationInstanceName}
/// ```
class SapApplicationServerInstance extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Application server instance dispatcher status.
  late final pulumi.Output<String> dispatcherStatus;

  /// Defines the Application Instance errors.
  late final pulumi.Output<SAPVirtualInstanceErrorResponse> errors;

  /// Application server instance gateway Port.
  late final pulumi.Output<double> gatewayPort;

  /// Defines the health of SAP Instances.
  late final pulumi.Output<String> health;

  /// Application server instance SAP hostname.
  late final pulumi.Output<String> hostname;

  /// Application server instance ICM HTTP Port.
  late final pulumi.Output<double> icmHttpPort;

  /// Application server instance ICM HTTPS Port.
  late final pulumi.Output<double> icmHttpsPort;

  /// Application server Instance Number.
  late final pulumi.Output<String> instanceNo;

  /// Application server instance SAP IP Address.
  late final pulumi.Output<String> ipAddress;

  /// Application server instance SAP Kernel Patch level.
  late final pulumi.Output<String> kernelPatch;

  /// Application server instance SAP Kernel Version.
  late final pulumi.Output<String> kernelVersion;

  /// The Load Balancer details such as LoadBalancer ID attached to Application Server Virtual Machines
  late final pulumi.Output<LoadBalancerDetailsResponse> loadBalancerDetails;

  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// Defines the provisioning states.
  late final pulumi.Output<String> provisioningState;

  /// Defines the SAP Instance status.
  late final pulumi.Output<String> status;

  /// Application server Subnet.
  late final pulumi.Output<String> subnet;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// The list of virtual machines.
  late final pulumi.Output<List<Map<String, dynamic>>> vmDetails;

  /// Creates a new [SapApplicationServerInstance].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SapApplicationServerInstance]. {@macro pulumi_workloads_sap_application_server_instance_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SapApplicationServerInstance(
    String name, {
    SapApplicationServerInstanceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:workloads:SapApplicationServerInstance',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    dispatcherStatus = registerOutput<String>('dispatcherStatus');
    errors = registerOutput<SAPVirtualInstanceErrorResponse>(
      'errors',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SAPVirtualInstanceErrorResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    gatewayPort = registerOutput<double>('gatewayPort');
    health = registerOutput<String>('health');
    hostname = registerOutput<String>('hostname');
    icmHttpPort = registerOutput<double>('icmHttpPort');
    icmHttpsPort = registerOutput<double>('icmHttpsPort');
    instanceNo = registerOutput<String>('instanceNo');
    ipAddress = registerOutput<String>('ipAddress');
    kernelPatch = registerOutput<String>('kernelPatch');
    kernelVersion = registerOutput<String>('kernelVersion');
    loadBalancerDetails = registerOutput<LoadBalancerDetailsResponse>(
      'loadBalancerDetails',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return LoadBalancerDetailsResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    status = registerOutput<String>('status');
    subnet = registerOutput<String>('subnet');
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
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
    vmDetails = registerOutput<List<Map<String, dynamic>>>('vmDetails');
  }
}
