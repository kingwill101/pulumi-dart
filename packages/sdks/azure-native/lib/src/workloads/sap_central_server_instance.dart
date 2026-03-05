import 'package:pulumi/pulumi.dart' as pulumi;
import 'enqueue_replication_server_properties_response.dart';
import 'enqueue_server_properties_response.dart';
import 'gateway_server_properties_response.dart';
import 'load_balancer_details_response.dart';
import 'message_server_properties_response.dart';
import 'sap_central_server_instance_args.dart';
import 'sapvirtual_instance_error_response.dart';
import 'system_data_response.dart';

/// Define the SAP Central Services Instance resource.
///
/// Uses Azure REST API version 2024-09-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create SAP Central Instances for HA System with Availability Set
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var sapCentralServerInstance = new AzureNative.Workloads.SapCentralServerInstance("sapCentralServerInstance", new()
///     {
///         CentralInstanceName = "centralServer",
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
/// 		_, err := workloads.NewSapCentralServerInstance(ctx, "sapCentralServerInstance", &workloads.SapCentralServerInstanceArgs{
/// 			CentralInstanceName:    pulumi.String("centralServer"),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.workloads.SapCentralServerInstance;
/// import com.pulumi.azurenative.workloads.SapCentralServerInstanceArgs;
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
///         var sapCentralServerInstance = new SapCentralServerInstance("sapCentralServerInstance", SapCentralServerInstanceArgs.builder()
///             .centralInstanceName("centralServer")
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
/// const sapCentralServerInstance = new azure_native.workloads.SapCentralServerInstance("sapCentralServerInstance", {
///     centralInstanceName: "centralServer",
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
/// sap_central_server_instance = azure_native.workloads.SapCentralServerInstance("sapCentralServerInstance",
///     central_instance_name="centralServer",
///     location="westcentralus",
///     resource_group_name="test-rg",
///     sap_virtual_instance_name="X00",
///     tags={})
///
/// ```
///
/// ```yaml
/// resources:
///   sapCentralServerInstance:
///     type: azure-native:workloads:SapCentralServerInstance
///     properties:
///       centralInstanceName: centralServer
///       location: westcentralus
///       resourceGroupName: test-rg
///       sapVirtualInstanceName: X00
///       tags: {}
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### SapCentralServerInstances_Create
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var sapCentralServerInstance = new AzureNative.Workloads.SapCentralServerInstance("sapCentralServerInstance", new()
///     {
///         CentralInstanceName = "centralServer",
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
/// 		_, err := workloads.NewSapCentralServerInstance(ctx, "sapCentralServerInstance", &workloads.SapCentralServerInstanceArgs{
/// 			CentralInstanceName:    pulumi.String("centralServer"),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.workloads.SapCentralServerInstance;
/// import com.pulumi.azurenative.workloads.SapCentralServerInstanceArgs;
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
///         var sapCentralServerInstance = new SapCentralServerInstance("sapCentralServerInstance", SapCentralServerInstanceArgs.builder()
///             .centralInstanceName("centralServer")
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
/// const sapCentralServerInstance = new azure_native.workloads.SapCentralServerInstance("sapCentralServerInstance", {
///     centralInstanceName: "centralServer",
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
/// sap_central_server_instance = azure_native.workloads.SapCentralServerInstance("sapCentralServerInstance",
///     central_instance_name="centralServer",
///     location="westcentralus",
///     resource_group_name="test-rg",
///     sap_virtual_instance_name="X00",
///     tags={})
///
/// ```
///
/// ```yaml
/// resources:
///   sapCentralServerInstance:
///     type: azure-native:workloads:SapCentralServerInstance
///     properties:
///       centralInstanceName: centralServer
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
/// $ pulumi import azure-native:workloads:SapCentralServerInstance centralServer /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Workloads/sapVirtualInstances/{sapVirtualInstanceName}/centralInstances/{centralInstanceName}
/// ```
class SapCentralServerInstance extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Defines the SAP Enqueue Replication Server (ERS) properties.
  late final pulumi.Output<EnqueueReplicationServerPropertiesResponse?> enqueueReplicationServerProperties;
  /// Defines the SAP Enqueue Server properties.
  late final pulumi.Output<EnqueueServerPropertiesResponse?> enqueueServerProperties;
  /// Defines the errors related to SAP Central Services Instance resource.
  late final pulumi.Output<SAPVirtualInstanceErrorResponse> errors;
  /// Defines the SAP Gateway Server properties.
  late final pulumi.Output<GatewayServerPropertiesResponse?> gatewayServerProperties;
  /// Defines the health of SAP Instances.
  late final pulumi.Output<String> health;
  /// The central services instance number.
  late final pulumi.Output<String> instanceNo;
  /// The central services instance Kernel Patch level.
  late final pulumi.Output<String> kernelPatch;
  /// The central services instance Kernel Version.
  late final pulumi.Output<String> kernelVersion;
  /// The Load Balancer details such as LoadBalancer ID attached to ASCS Virtual Machines
  late final pulumi.Output<LoadBalancerDetailsResponse> loadBalancerDetails;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// Defines the SAP message server properties.
  late final pulumi.Output<MessageServerPropertiesResponse?> messageServerProperties;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Defines the provisioning states.
  late final pulumi.Output<String> provisioningState;
  /// Defines the SAP Instance status.
  late final pulumi.Output<String> status;
  /// The central services instance subnet.
  late final pulumi.Output<String> subnet;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// The list of virtual machines corresponding to the Central Services instance.
  late final pulumi.Output<List<Map<String, dynamic>>> vmDetails;

  /// Creates a new [SapCentralServerInstance].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SapCentralServerInstance]. {@macro pulumi_workloads_sap_central_server_instance_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SapCentralServerInstance(
    String name, {
    SapCentralServerInstanceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:workloads:SapCentralServerInstance',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    enqueueReplicationServerProperties = registerOutput<EnqueueReplicationServerPropertiesResponse?>('enqueueReplicationServerProperties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EnqueueReplicationServerPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    enqueueServerProperties = registerOutput<EnqueueServerPropertiesResponse?>('enqueueServerProperties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EnqueueServerPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    errors = registerOutput<SAPVirtualInstanceErrorResponse>('errors', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SAPVirtualInstanceErrorResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    gatewayServerProperties = registerOutput<GatewayServerPropertiesResponse?>('gatewayServerProperties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GatewayServerPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    health = registerOutput<String>('health');
    instanceNo = registerOutput<String>('instanceNo');
    kernelPatch = registerOutput<String>('kernelPatch');
    kernelVersion = registerOutput<String>('kernelVersion');
    loadBalancerDetails = registerOutput<LoadBalancerDetailsResponse>('loadBalancerDetails', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LoadBalancerDetailsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    messageServerProperties = registerOutput<MessageServerPropertiesResponse?>('messageServerProperties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MessageServerPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    status = registerOutput<String>('status');
    subnet = registerOutput<String>('subnet');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
    vmDetails = registerOutput<List<Map<String, dynamic>>>('vmDetails');
  }
}
