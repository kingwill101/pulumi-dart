import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_mapping_properties_response.dart';
import 'replication_network_mapping_args.dart';

/// Network Mapping model. Ideally it should have been possible to inherit this class from prev version in InheritedModels as long as there is no difference in structure or method signature. Since there were no base Models for certain fields and methods viz NetworkMappingProperties and Load with required return type, the class has been introduced in its entirety with references to base models to facilitate extensions in subsequent versions.
///
/// Uses Azure REST API version 2024-10-01. In version 2.x of the Azure Native provider, it used API version 2023-04-01.
///
/// Other available API versions: 2023-02-01, 2023-04-01, 2023-06-01, 2023-08-01, 2024-01-01, 2024-02-01, 2024-04-01, 2025-01-01, 2025-02-01, 2025-08-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native recoveryservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Creates network mapping.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var replicationNetworkMapping = new AzureNative.RecoveryServices.ReplicationNetworkMapping("replicationNetworkMapping", new()
///     {
///         FabricName = "b0cef6e9a4437b81803d0b55ada4f700ab66caae59c35d62723a1589c0cd13ac",
///         NetworkMappingName = "corpe2amap",
///         NetworkName = "e2267b5c-2650-49bd-ab3f-d66aae694c06",
///         Properties = new AzureNative.RecoveryServices.Inputs.CreateNetworkMappingInputPropertiesArgs
///         {
///             FabricSpecificDetails = new AzureNative.RecoveryServices.Inputs.VmmToAzureCreateNetworkMappingInputArgs
///             {
///                 InstanceType = "VmmToAzure",
///             },
///             RecoveryFabricName = "Microsoft Azure",
///             RecoveryNetworkId = "/subscriptions/c183865e-6077-46f2-a3b1-deb0f4f4650a/resourceGroups/siterecoveryProd1/providers/Microsoft.Network/virtualNetworks/vnetavrai",
///         },
///         ResourceGroupName = "srcBvte2a14C27",
///         ResourceName = "srce2avaultbvtaC27",
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
/// 		_, err := recoveryservices.NewReplicationNetworkMapping(ctx, "replicationNetworkMapping", &recoveryservices.ReplicationNetworkMappingArgs{
/// 			FabricName:         pulumi.String("b0cef6e9a4437b81803d0b55ada4f700ab66caae59c35d62723a1589c0cd13ac"),
/// 			NetworkMappingName: pulumi.String("corpe2amap"),
/// 			NetworkName:        pulumi.String("e2267b5c-2650-49bd-ab3f-d66aae694c06"),
/// 			Properties: &recoveryservices.CreateNetworkMappingInputPropertiesArgs{
/// 				FabricSpecificDetails: recoveryservices.VmmToAzureCreateNetworkMappingInput{
/// 					InstanceType: "VmmToAzure",
/// 				},
/// 				RecoveryFabricName: pulumi.String("Microsoft Azure"),
/// 				RecoveryNetworkId:  pulumi.String("/subscriptions/c183865e-6077-46f2-a3b1-deb0f4f4650a/resourceGroups/siterecoveryProd1/providers/Microsoft.Network/virtualNetworks/vnetavrai"),
/// 			},
/// 			ResourceGroupName: pulumi.String("srcBvte2a14C27"),
/// 			ResourceName:      pulumi.String("srce2avaultbvtaC27"),
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
/// import com.pulumi.azurenative.recoveryservices.ReplicationNetworkMapping;
/// import com.pulumi.azurenative.recoveryservices.ReplicationNetworkMappingArgs;
/// import com.pulumi.azurenative.recoveryservices.inputs.CreateNetworkMappingInputPropertiesArgs;
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
///         var replicationNetworkMapping = new ReplicationNetworkMapping("replicationNetworkMapping", ReplicationNetworkMappingArgs.builder()
///             .fabricName("b0cef6e9a4437b81803d0b55ada4f700ab66caae59c35d62723a1589c0cd13ac")
///             .networkMappingName("corpe2amap")
///             .networkName("e2267b5c-2650-49bd-ab3f-d66aae694c06")
///             .properties(CreateNetworkMappingInputPropertiesArgs.builder()
///                 .fabricSpecificDetails(VmmToAzureCreateNetworkMappingInputArgs.builder()
///                     .instanceType("VmmToAzure")
///                     .build())
///                 .recoveryFabricName("Microsoft Azure")
///                 .recoveryNetworkId("/subscriptions/c183865e-6077-46f2-a3b1-deb0f4f4650a/resourceGroups/siterecoveryProd1/providers/Microsoft.Network/virtualNetworks/vnetavrai")
///                 .build())
///             .resourceGroupName("srcBvte2a14C27")
///             .resourceName("srce2avaultbvtaC27")
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
/// const replicationNetworkMapping = new azure_native.recoveryservices.ReplicationNetworkMapping("replicationNetworkMapping", {
///     fabricName: "b0cef6e9a4437b81803d0b55ada4f700ab66caae59c35d62723a1589c0cd13ac",
///     networkMappingName: "corpe2amap",
///     networkName: "e2267b5c-2650-49bd-ab3f-d66aae694c06",
///     properties: {
///         fabricSpecificDetails: {
///             instanceType: "VmmToAzure",
///         },
///         recoveryFabricName: "Microsoft Azure",
///         recoveryNetworkId: "/subscriptions/c183865e-6077-46f2-a3b1-deb0f4f4650a/resourceGroups/siterecoveryProd1/providers/Microsoft.Network/virtualNetworks/vnetavrai",
///     },
///     resourceGroupName: "srcBvte2a14C27",
///     resourceName: "srce2avaultbvtaC27",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// replication_network_mapping = azure_native.recoveryservices.ReplicationNetworkMapping("replicationNetworkMapping",
///     fabric_name="b0cef6e9a4437b81803d0b55ada4f700ab66caae59c35d62723a1589c0cd13ac",
///     network_mapping_name="corpe2amap",
///     network_name="e2267b5c-2650-49bd-ab3f-d66aae694c06",
///     properties={
///         "fabric_specific_details": {
///             "instance_type": "VmmToAzure",
///         },
///         "recovery_fabric_name": "Microsoft Azure",
///         "recovery_network_id": "/subscriptions/c183865e-6077-46f2-a3b1-deb0f4f4650a/resourceGroups/siterecoveryProd1/providers/Microsoft.Network/virtualNetworks/vnetavrai",
///     },
///     resource_group_name="srcBvte2a14C27",
///     resource_name_="srce2avaultbvtaC27")
///
/// ```
///
/// ```yaml
/// resources:
///   replicationNetworkMapping:
///     type: azure-native:recoveryservices:ReplicationNetworkMapping
///     properties:
///       fabricName: b0cef6e9a4437b81803d0b55ada4f700ab66caae59c35d62723a1589c0cd13ac
///       networkMappingName: corpe2amap
///       networkName: e2267b5c-2650-49bd-ab3f-d66aae694c06
///       properties:
///         fabricSpecificDetails:
///           instanceType: VmmToAzure
///         recoveryFabricName: Microsoft Azure
///         recoveryNetworkId: /subscriptions/c183865e-6077-46f2-a3b1-deb0f4f4650a/resourceGroups/siterecoveryProd1/providers/Microsoft.Network/virtualNetworks/vnetavrai
///       resourceGroupName: srcBvte2a14C27
///       resourceName: srce2avaultbvtaC27
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
/// $ pulumi import azure-native:recoveryservices:ReplicationNetworkMapping corpe2amap /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.RecoveryServices/vaults/{resourceName}/replicationFabrics/{fabricName}/replicationNetworks/{networkName}/replicationNetworkMappings/{networkMappingName}
/// ```
class ReplicationNetworkMapping extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Resource Location
  late final pulumi.Output<String?> location;
  /// Resource Name
  late final pulumi.Output<String> name;
  /// The Network Mapping Properties.
  late final pulumi.Output<NetworkMappingPropertiesResponse> properties;
  /// Resource Type
  late final pulumi.Output<String> type;

  /// Creates a new [ReplicationNetworkMapping].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ReplicationNetworkMapping]. {@macro pulumi_recoveryservices_replication_network_mapping_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ReplicationNetworkMapping(
    String name, {
    ReplicationNetworkMappingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:recoveryservices:ReplicationNetworkMapping',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    this.properties = registerOutput<NetworkMappingPropertiesResponse>('properties');
    this.type = registerOutput<String>('type');
  }
}
