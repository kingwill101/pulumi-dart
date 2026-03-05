import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_partner_provider_args.dart';
import 'sub_resource_response.dart';

/// Security Partner Provider resource.
///
/// Uses Azure REST API version 2024-05-01. In version 2.x of the Azure Native provider, it used API version 2023-02-01.
///
/// Other available API versions: 2020-03-01, 2020-04-01, 2020-05-01, 2020-06-01, 2020-07-01, 2020-08-01, 2020-11-01, 2021-02-01, 2021-03-01, 2021-05-01, 2021-08-01, 2022-01-01, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create Security Partner Provider
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var securityPartnerProvider = new AzureNative.Network.SecurityPartnerProvider("securityPartnerProvider", new()
///     {
///         Location = "West US",
///         ResourceGroupName = "rg1",
///         SecurityPartnerProviderName = "securityPartnerProvider",
///         SecurityProviderName = AzureNative.Network.SecurityProviderName.ZScaler,
///         Tags =
///         {
///             { "key1", "value1" },
///         },
///         VirtualHub = new AzureNative.Network.Inputs.SubResourceArgs
///         {
///             Id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualHubs/hub1",
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
/// 	network "github.com/pulumi/pulumi-azure-native-sdk/network/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := network.NewSecurityPartnerProvider(ctx, "securityPartnerProvider", &network.SecurityPartnerProviderArgs{
/// 			Location:                    pulumi.String("West US"),
/// 			ResourceGroupName:           pulumi.String("rg1"),
/// 			SecurityPartnerProviderName: pulumi.String("securityPartnerProvider"),
/// 			SecurityProviderName:        pulumi.String(network.SecurityProviderNameZScaler),
/// 			Tags: pulumi.StringMap{
/// 				"key1": pulumi.String("value1"),
/// 			},
/// 			VirtualHub: &network.SubResourceArgs{
/// 				Id: pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualHubs/hub1"),
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
/// import com.pulumi.azurenative.network.SecurityPartnerProvider;
/// import com.pulumi.azurenative.network.SecurityPartnerProviderArgs;
/// import com.pulumi.azurenative.network.inputs.SubResourceArgs;
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
///         var securityPartnerProvider = new SecurityPartnerProvider("securityPartnerProvider", SecurityPartnerProviderArgs.builder()
///             .location("West US")
///             .resourceGroupName("rg1")
///             .securityPartnerProviderName("securityPartnerProvider")
///             .securityProviderName("ZScaler")
///             .tags(Map.of("key1", "value1"))
///             .virtualHub(SubResourceArgs.builder()
///                 .id("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualHubs/hub1")
///                 .build())
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
/// const securityPartnerProvider = new azure_native.network.SecurityPartnerProvider("securityPartnerProvider", {
///     location: "West US",
///     resourceGroupName: "rg1",
///     securityPartnerProviderName: "securityPartnerProvider",
///     securityProviderName: azure_native.network.SecurityProviderName.ZScaler,
///     tags: {
///         key1: "value1",
///     },
///     virtualHub: {
///         id: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualHubs/hub1",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// security_partner_provider = azure_native.network.SecurityPartnerProvider("securityPartnerProvider",
///     location="West US",
///     resource_group_name="rg1",
///     security_partner_provider_name="securityPartnerProvider",
///     security_provider_name=azure_native.network.SecurityProviderName.Z_SCALER,
///     tags={
///         "key1": "value1",
///     },
///     virtual_hub={
///         "id": "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualHubs/hub1",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   securityPartnerProvider:
///     type: azure-native:network:SecurityPartnerProvider
///     properties:
///       location: West US
///       resourceGroupName: rg1
///       securityPartnerProviderName: securityPartnerProvider
///       securityProviderName: ZScaler
///       tags:
///         key1: value1
///       virtualHub:
///         id: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualHubs/hub1
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
/// $ pulumi import azure-native:network:SecurityPartnerProvider securityPartnerProvider /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/securityPartnerProviders/{securityPartnerProviderName}
/// ```
class SecurityPartnerProvider extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The connection status with the Security Partner Provider.
  late final pulumi.Output<String> connectionStatus;

  /// A unique read-only string that changes whenever the resource is updated.
  late final pulumi.Output<String> etag;

  /// Resource location.
  late final pulumi.Output<String?> location;

  /// Resource name.
  late final pulumi.Output<String> name;

  /// The provisioning state of the Security Partner Provider resource.
  late final pulumi.Output<String> provisioningState;

  /// The security provider name.
  late final pulumi.Output<String?> securityProviderName;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Resource type.
  late final pulumi.Output<String> type;

  /// The virtualHub to which the Security Partner Provider belongs.
  late final pulumi.Output<SubResourceResponse?> virtualHub;

  /// Creates a new [SecurityPartnerProvider].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SecurityPartnerProvider]. {@macro pulumi_network_security_partner_provider_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SecurityPartnerProvider(
    String name, {
    SecurityPartnerProviderArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:network:SecurityPartnerProvider',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    connectionStatus = registerOutput<String>('connectionStatus');
    etag = registerOutput<String>('etag');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    securityProviderName = registerOutput<String?>('securityProviderName');
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
    virtualHub = registerOutput<SubResourceResponse?>(
      'virtualHub',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SubResourceResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
  }
}
