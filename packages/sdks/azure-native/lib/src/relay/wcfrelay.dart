import 'package:pulumi/pulumi.dart' as pulumi;
import 'system_data_response.dart';
import 'wcfrelay_args.dart';

/// Description of the WCF relay resource.
///
/// Uses Azure REST API version 2024-01-01. In version 2.x of the Azure Native provider, it used API version 2021-11-01.
///
/// Other available API versions: 2021-11-01, 2026-01-01, 2026-07-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native relay [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### RelayCreate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var wcfRelay = new AzureNative.Relay.WCFRelay("wcfRelay", new()
///     {
///         NamespaceName = "example-RelayNamespace-9953",
///         RelayName = "example-Relay-Wcf-1194",
///         RelayType = AzureNative.Relay.Relaytype.NetTcp,
///         RequiresClientAuthorization = true,
///         RequiresTransportSecurity = true,
///         ResourceGroupName = "resourcegroup",
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
/// 	relay "github.com/pulumi/pulumi-azure-native-sdk/relay/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := relay.NewWCFRelay(ctx, "wcfRelay", &relay.WCFRelayArgs{
/// 			NamespaceName:               pulumi.String("example-RelayNamespace-9953"),
/// 			RelayName:                   pulumi.String("example-Relay-Wcf-1194"),
/// 			RelayType:                   relay.RelaytypeNetTcp,
/// 			RequiresClientAuthorization: pulumi.Bool(true),
/// 			RequiresTransportSecurity:   pulumi.Bool(true),
/// 			ResourceGroupName:           pulumi.String("resourcegroup"),
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
/// resource "azure-native_relay_wcfrelay" "wcfRelay" {
///   namespace_name                = "example-RelayNamespace-9953"
///   relay_name                    = "example-Relay-Wcf-1194"
///   relay_type                    = "NetTcp"
///   requires_client_authorization = true
///   requires_transport_security   = true
///   resource_group_name           = "resourcegroup"
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
/// import com.pulumi.azurenative.relay.WCFRelay;
/// import com.pulumi.azurenative.relay.WCFRelayArgs;
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
///         var wcfRelay = new WCFRelay("wcfRelay", WCFRelayArgs.builder()
///             .namespaceName("example-RelayNamespace-9953")
///             .relayName("example-Relay-Wcf-1194")
///             .relayType("NetTcp")
///             .requiresClientAuthorization(true)
///             .requiresTransportSecurity(true)
///             .resourceGroupName("resourcegroup")
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
/// const wcfRelay = new azure_native.relay.WCFRelay("wcfRelay", {
///     namespaceName: "example-RelayNamespace-9953",
///     relayName: "example-Relay-Wcf-1194",
///     relayType: azure_native.relay.Relaytype.NetTcp,
///     requiresClientAuthorization: true,
///     requiresTransportSecurity: true,
///     resourceGroupName: "resourcegroup",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// wcf_relay = azure_native.relay.WCFRelay("wcfRelay",
///     namespace_name="example-RelayNamespace-9953",
///     relay_name="example-Relay-Wcf-1194",
///     relay_type=azure_native.relay.Relaytype.NET_TCP,
///     requires_client_authorization=True,
///     requires_transport_security=True,
///     resource_group_name="resourcegroup")
///
/// ```
///
/// ```yaml
/// resources:
///   wcfRelay:
///     type: azure-native:relay:WCFRelay
///     properties:
///       namespaceName: example-RelayNamespace-9953
///       relayName: example-Relay-Wcf-1194
///       relayType: NetTcp
///       requiresClientAuthorization: true
///       requiresTransportSecurity: true
///       resourceGroupName: resourcegroup
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
/// $ pulumi import azure-native:relay:WCFRelay example-Relay-Wcf-1194 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Relay/namespaces/{namespaceName}/wcfRelays/{relayName}
/// ```
class WCFRelay extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The time the WCF relay was created.
  late final pulumi.Output<String> createdAt;
  /// Returns true if the relay is dynamic; otherwise, false.
  late final pulumi.Output<bool> isDynamic;
  /// The number of listeners for this relay. Note that min :1 and max:25 are supported.
  late final pulumi.Output<int> listenerCount;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// WCF relay type.
  late final pulumi.Output<String?> relayType;
  /// Returns true if client authorization is needed for this relay; otherwise, false.
  late final pulumi.Output<bool?> requiresClientAuthorization;
  /// Returns true if transport security is needed for this relay; otherwise, false.
  late final pulumi.Output<bool?> requiresTransportSecurity;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// The time the namespace was updated.
  late final pulumi.Output<String> updatedAt;
  /// The usermetadata is a placeholder to store user-defined string data for the WCF Relay endpoint. For example, it can be used to store descriptive data, such as list of teams and their contact information. Also, user-defined configuration settings can be stored.
  late final pulumi.Output<String?> userMetadata;

  /// Creates a new [WCFRelay].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WCFRelay]. {@macro pulumi_relay_wcfrelay_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WCFRelay(
    String name, {
    WCFRelayArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:relay:WCFRelay',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    createdAt = registerOutput<String>('createdAt');
    isDynamic = registerOutput<bool>('isDynamic');
    listenerCount = registerOutput<int>('listenerCount');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    relayType = registerOutput<String?>('relayType');
    requiresClientAuthorization = registerOutput<bool?>('requiresClientAuthorization');
    requiresTransportSecurity = registerOutput<bool?>('requiresTransportSecurity');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
    updatedAt = registerOutput<String>('updatedAt');
    userMetadata = registerOutput<String?>('userMetadata');
  }
}
