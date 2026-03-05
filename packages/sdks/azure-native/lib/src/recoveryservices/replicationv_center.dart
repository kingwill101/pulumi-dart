import 'package:pulumi/pulumi.dart' as pulumi;
import 'replicationv_center_args.dart';
import 'vcenter_properties_response.dart';

/// vCenter definition.
///
/// Uses Azure REST API version 2024-10-01. In version 2.x of the Azure Native provider, it used API version 2023-04-01.
///
/// Other available API versions: 2023-02-01, 2023-04-01, 2023-06-01, 2023-08-01, 2024-01-01, 2024-02-01, 2024-04-01, 2025-01-01, 2025-02-01, 2025-08-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native recoveryservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Add vCenter.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var replicationvCenter = new AzureNative.RecoveryServices.ReplicationvCenter("replicationvCenter", new()
///     {
///         FabricName = "MadhaviFabric",
///         Properties = new AzureNative.RecoveryServices.Inputs.AddVCenterRequestPropertiesArgs
///         {
///             FriendlyName = "esx-78",
///             IpAddress = "inmtest78",
///             Port = "443",
///             ProcessServerId = "5A720CAB-39CB-F445-BD1662B0B33164B5",
///             RunAsAccountId = "2",
///         },
///         ResourceGroupName = "MadhaviVRG",
///         ResourceName = "MadhaviVault",
///         VcenterName = "esx-78",
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
/// 	recoveryservices "github.com/pulumi/pulumi-azure-native-sdk/recoveryservices/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := recoveryservices.NewReplicationvCenter(ctx, "replicationvCenter", &recoveryservices.ReplicationvCenterArgs{
/// 			FabricName: pulumi.String("MadhaviFabric"),
/// 			Properties: &recoveryservices.AddVCenterRequestPropertiesArgs{
/// 				FriendlyName:    pulumi.String("esx-78"),
/// 				IpAddress:       pulumi.String("inmtest78"),
/// 				Port:            pulumi.String("443"),
/// 				ProcessServerId: pulumi.String("5A720CAB-39CB-F445-BD1662B0B33164B5"),
/// 				RunAsAccountId:  pulumi.String("2"),
/// 			},
/// 			ResourceGroupName: pulumi.String("MadhaviVRG"),
/// 			ResourceName:      pulumi.String("MadhaviVault"),
/// 			VcenterName:       pulumi.String("esx-78"),
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
/// import com.pulumi.azurenative.recoveryservices.ReplicationvCenter;
/// import com.pulumi.azurenative.recoveryservices.ReplicationvCenterArgs;
/// import com.pulumi.azurenative.recoveryservices.inputs.AddVCenterRequestPropertiesArgs;
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
///         var replicationvCenter = new ReplicationvCenter("replicationvCenter", ReplicationvCenterArgs.builder()
///             .fabricName("MadhaviFabric")
///             .properties(AddVCenterRequestPropertiesArgs.builder()
///                 .friendlyName("esx-78")
///                 .ipAddress("inmtest78")
///                 .port("443")
///                 .processServerId("5A720CAB-39CB-F445-BD1662B0B33164B5")
///                 .runAsAccountId("2")
///                 .build())
///             .resourceGroupName("MadhaviVRG")
///             .resourceName("MadhaviVault")
///             .vcenterName("esx-78")
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
/// const replicationvCenter = new azure_native.recoveryservices.ReplicationvCenter("replicationvCenter", {
///     fabricName: "MadhaviFabric",
///     properties: {
///         friendlyName: "esx-78",
///         ipAddress: "inmtest78",
///         port: "443",
///         processServerId: "5A720CAB-39CB-F445-BD1662B0B33164B5",
///         runAsAccountId: "2",
///     },
///     resourceGroupName: "MadhaviVRG",
///     resourceName: "MadhaviVault",
///     vcenterName: "esx-78",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// replicationv_center = azure_native.recoveryservices.ReplicationvCenter("replicationvCenter",
///     fabric_name="MadhaviFabric",
///     properties={
///         "friendly_name": "esx-78",
///         "ip_address": "inmtest78",
///         "port": "443",
///         "process_server_id": "5A720CAB-39CB-F445-BD1662B0B33164B5",
///         "run_as_account_id": "2",
///     },
///     resource_group_name="MadhaviVRG",
///     resource_name_="MadhaviVault",
///     vcenter_name="esx-78")
///
/// ```
///
/// ```yaml
/// resources:
///   replicationvCenter:
///     type: azure-native:recoveryservices:ReplicationvCenter
///     properties:
///       fabricName: MadhaviFabric
///       properties:
///         friendlyName: esx-78
///         ipAddress: inmtest78
///         port: '443'
///         processServerId: 5A720CAB-39CB-F445-BD1662B0B33164B5
///         runAsAccountId: '2'
///       resourceGroupName: MadhaviVRG
///       resourceName: MadhaviVault
///       vcenterName: esx-78
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
/// $ pulumi import azure-native:recoveryservices:ReplicationvCenter esx-78 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.RecoveryServices/vaults/{resourceName}/replicationFabrics/{fabricName}/replicationvCenters/{vcenterName}
/// ```
class ReplicationvCenter extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Resource Location
  late final pulumi.Output<String?> location;
  /// Resource Name
  late final pulumi.Output<String> name;
  /// VCenter related data.
  late final pulumi.Output<VCenterPropertiesResponse> properties;
  /// Resource Type
  late final pulumi.Output<String> type;

  /// Creates a new [ReplicationvCenter].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ReplicationvCenter]. {@macro pulumi_recoveryservices_replicationv_center_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ReplicationvCenter(
    String name, {
    ReplicationvCenterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:recoveryservices:ReplicationvCenter',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<VCenterPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VCenterPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
