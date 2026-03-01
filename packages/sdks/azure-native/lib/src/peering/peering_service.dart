import 'package:pulumi/pulumi.dart' as pulumi;
import 'log_analytics_workspace_properties_response.dart';
import 'peering_service_args.dart';
import 'peering_service_sku_response.dart';

/// Peering Service
///
/// Uses Azure REST API version 2022-10-01. In version 2.x of the Azure Native provider, it used API version 2022-10-01.
///
/// Other available API versions: 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native peering [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create a  peering service
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var peeringService = new AzureNative.Peering.PeeringService("peeringService", new()
///     {
///         Location = "eastus",
///         PeeringServiceLocation = "state1",
///         PeeringServiceName = "peeringServiceName",
///         PeeringServiceProvider = "serviceProvider1",
///         ProviderBackupPeeringLocation = "peeringLocation2",
///         ProviderPrimaryPeeringLocation = "peeringLocation1",
///         ResourceGroupName = "rgName",
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
/// 	peering "github.com/pulumi/pulumi-azure-native-sdk/peering/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := peering.NewPeeringService(ctx, "peeringService", &peering.PeeringServiceArgs{
/// 			Location:                       pulumi.String("eastus"),
/// 			PeeringServiceLocation:         pulumi.String("state1"),
/// 			PeeringServiceName:             pulumi.String("peeringServiceName"),
/// 			PeeringServiceProvider:         pulumi.String("serviceProvider1"),
/// 			ProviderBackupPeeringLocation:  pulumi.String("peeringLocation2"),
/// 			ProviderPrimaryPeeringLocation: pulumi.String("peeringLocation1"),
/// 			ResourceGroupName:              pulumi.String("rgName"),
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
/// import com.pulumi.azurenative.peering.PeeringService;
/// import com.pulumi.azurenative.peering.PeeringServiceArgs;
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
///         var peeringService = new PeeringService("peeringService", PeeringServiceArgs.builder()
///             .location("eastus")
///             .peeringServiceLocation("state1")
///             .peeringServiceName("peeringServiceName")
///             .peeringServiceProvider("serviceProvider1")
///             .providerBackupPeeringLocation("peeringLocation2")
///             .providerPrimaryPeeringLocation("peeringLocation1")
///             .resourceGroupName("rgName")
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
/// const peeringService = new azure_native.peering.PeeringService("peeringService", {
///     location: "eastus",
///     peeringServiceLocation: "state1",
///     peeringServiceName: "peeringServiceName",
///     peeringServiceProvider: "serviceProvider1",
///     providerBackupPeeringLocation: "peeringLocation2",
///     providerPrimaryPeeringLocation: "peeringLocation1",
///     resourceGroupName: "rgName",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// peering_service = azure_native.peering.PeeringService("peeringService",
///     location="eastus",
///     peering_service_location="state1",
///     peering_service_name="peeringServiceName",
///     peering_service_provider="serviceProvider1",
///     provider_backup_peering_location="peeringLocation2",
///     provider_primary_peering_location="peeringLocation1",
///     resource_group_name="rgName")
///
/// ```
///
/// ```yaml
/// resources:
///   peeringService:
///     type: azure-native:peering:PeeringService
///     properties:
///       location: eastus
///       peeringServiceLocation: state1
///       peeringServiceName: peeringServiceName
///       peeringServiceProvider: serviceProvider1
///       providerBackupPeeringLocation: peeringLocation2
///       providerPrimaryPeeringLocation: peeringLocation1
///       resourceGroupName: rgName
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
/// $ pulumi import azure-native:peering:PeeringService peeringServiceName /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Peering/peeringServices/{peeringServiceName}
/// ```
class PeeringService extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The location of the resource.
  late final pulumi.Output<String> location;
  /// The Log Analytics Workspace Properties
  late final pulumi.Output<LogAnalyticsWorkspacePropertiesResponse?> logAnalyticsWorkspaceProperties;
  /// The name of the resource.
  late final pulumi.Output<String> name;
  /// The location (state/province) of the customer.
  late final pulumi.Output<String?> peeringServiceLocation;
  /// The name of the service provider.
  late final pulumi.Output<String?> peeringServiceProvider;
  /// The backup peering (Microsoft/service provider) location to be used for customer traffic.
  late final pulumi.Output<String?> providerBackupPeeringLocation;
  /// The primary peering (Microsoft/service provider) location to be used for customer traffic.
  late final pulumi.Output<String?> providerPrimaryPeeringLocation;
  /// The provisioning state of the resource.
  late final pulumi.Output<String> provisioningState;
  /// The SKU that defines the type of the peering service.
  late final pulumi.Output<PeeringServiceSkuResponse?> sku;
  /// The resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource.
  late final pulumi.Output<String> type;

  /// Creates a new [PeeringService].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PeeringService]. {@macro pulumi_peering_peering_service_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PeeringService(
    String name, {
    PeeringServiceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:peering:PeeringService',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.location = registerOutput<String>('location');
    this.logAnalyticsWorkspaceProperties = registerOutput<LogAnalyticsWorkspacePropertiesResponse?>('logAnalyticsWorkspaceProperties');
    this.name = registerOutput<String>('name');
    this.peeringServiceLocation = registerOutput<String?>('peeringServiceLocation');
    this.peeringServiceProvider = registerOutput<String?>('peeringServiceProvider');
    this.providerBackupPeeringLocation = registerOutput<String?>('providerBackupPeeringLocation');
    this.providerPrimaryPeeringLocation = registerOutput<String?>('providerPrimaryPeeringLocation');
    this.provisioningState = registerOutput<String>('provisioningState');
    this.sku = registerOutput<PeeringServiceSkuResponse?>('sku');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.type = registerOutput<String>('type');
  }
}
