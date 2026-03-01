import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_endpoint_connections_for_edmargs.dart';
import 'private_endpoint_response.dart';
import 'private_link_service_connection_state_response.dart';
import 'system_data_response.dart';

/// The Private Endpoint Connection resource.
///
/// Uses Azure REST API version 2021-03-08. In version 2.x of the Azure Native provider, it used API version 2021-03-08.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### PrivateEndpointConnection_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var privateEndpointConnectionsForEDM = new AzureNative.SecurityAndCompliance.PrivateEndpointConnectionsForEDM("privateEndpointConnectionsForEDM", new()
///     {
///         PrivateEndpointConnectionName = "myConnection",
///         PrivateLinkServiceConnectionState = new AzureNative.SecurityAndCompliance.Inputs.PrivateLinkServiceConnectionStateArgs
///         {
///             Description = "Auto-Approved",
///             Status = AzureNative.SecurityAndCompliance.PrivateEndpointServiceConnectionStatus.Approved,
///         },
///         ResourceGroupName = "rgname",
///         ResourceName = "service1",
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
/// 	securityandcompliance "github.com/pulumi/pulumi-azure-native-sdk/securityandcompliance/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := securityandcompliance.NewPrivateEndpointConnectionsForEDM(ctx, "privateEndpointConnectionsForEDM", &securityandcompliance.PrivateEndpointConnectionsForEDMArgs{
/// 			PrivateEndpointConnectionName: pulumi.String("myConnection"),
/// 			PrivateLinkServiceConnectionState: &securityandcompliance.PrivateLinkServiceConnectionStateArgs{
/// 				Description: pulumi.String("Auto-Approved"),
/// 				Status:      pulumi.String(securityandcompliance.PrivateEndpointServiceConnectionStatusApproved),
/// 			},
/// 			ResourceGroupName: pulumi.String("rgname"),
/// 			ResourceName:      pulumi.String("service1"),
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
/// import com.pulumi.azurenative.securityandcompliance.PrivateEndpointConnectionsForEDM;
/// import com.pulumi.azurenative.securityandcompliance.PrivateEndpointConnectionsForEDMArgs;
/// import com.pulumi.azurenative.securityandcompliance.inputs.PrivateLinkServiceConnectionStateArgs;
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
///         var privateEndpointConnectionsForEDM = new PrivateEndpointConnectionsForEDM("privateEndpointConnectionsForEDM", PrivateEndpointConnectionsForEDMArgs.builder()
///             .privateEndpointConnectionName("myConnection")
///             .privateLinkServiceConnectionState(PrivateLinkServiceConnectionStateArgs.builder()
///                 .description("Auto-Approved")
///                 .status("Approved")
///                 .build())
///             .resourceGroupName("rgname")
///             .resourceName("service1")
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
/// const privateEndpointConnectionsForEDM = new azure_native.securityandcompliance.PrivateEndpointConnectionsForEDM("privateEndpointConnectionsForEDM", {
///     privateEndpointConnectionName: "myConnection",
///     privateLinkServiceConnectionState: {
///         description: "Auto-Approved",
///         status: azure_native.securityandcompliance.PrivateEndpointServiceConnectionStatus.Approved,
///     },
///     resourceGroupName: "rgname",
///     resourceName: "service1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// private_endpoint_connections_for_edm = azure_native.securityandcompliance.PrivateEndpointConnectionsForEDM("privateEndpointConnectionsForEDM",
///     private_endpoint_connection_name="myConnection",
///     private_link_service_connection_state={
///         "description": "Auto-Approved",
///         "status": azure_native.securityandcompliance.PrivateEndpointServiceConnectionStatus.APPROVED,
///     },
///     resource_group_name="rgname",
///     resource_name_="service1")
///
/// ```
///
/// ```yaml
/// resources:
///   privateEndpointConnectionsForEDM:
///     type: azure-native:securityandcompliance:PrivateEndpointConnectionsForEDM
///     properties:
///       privateEndpointConnectionName: myConnection
///       privateLinkServiceConnectionState:
///         description: Auto-Approved
///         status: Approved
///       resourceGroupName: rgname
///       resourceName: service1
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
/// $ pulumi import azure-native:securityandcompliance:PrivateEndpointConnectionsForEDM myConnection /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.SecurityAndCompliance/privateLinkServicesForEDMUpload/{resourceName}/privateEndpointConnections/{privateEndpointConnectionName}
/// ```
class PrivateEndpointConnectionsForEDM extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource of private end point.
  late final pulumi.Output<PrivateEndpointResponse?> privateEndpoint;
  /// A collection of information about the state of the connection between service consumer and provider.
  late final pulumi.Output<PrivateLinkServiceConnectionStateResponse> privateLinkServiceConnectionState;
  /// The provisioning state of the private endpoint connection resource.
  late final pulumi.Output<String> provisioningState;
  /// Required property for system data
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [PrivateEndpointConnectionsForEDM].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PrivateEndpointConnectionsForEDM]. {@macro pulumi_securityandcompliance_private_endpoint_connections_for_edmargs_doc}
  /// [options] Resource options controlling this resource's behavior.
  PrivateEndpointConnectionsForEDM(
    String name, {
    PrivateEndpointConnectionsForEDMArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:securityandcompliance:PrivateEndpointConnectionsForEDM',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    this.privateEndpoint = registerOutput<PrivateEndpointResponse?>('privateEndpoint');
    this.privateLinkServiceConnectionState = registerOutput<PrivateLinkServiceConnectionStateResponse>('privateLinkServiceConnectionState');
    this.provisioningState = registerOutput<String>('provisioningState');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.type = registerOutput<String>('type');
  }
}
