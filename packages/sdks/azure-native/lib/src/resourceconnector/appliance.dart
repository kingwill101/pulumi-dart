import 'package:pulumi/pulumi.dart' as pulumi;
import 'appliance_args.dart';
import 'appliance_properties_infrastructure_config_response.dart';
import 'identity_response.dart';
import 'system_data_response.dart';

/// Appliances definition.
///
/// Uses Azure REST API version 2022-10-27. In version 2.x of the Azure Native provider, it used API version 2022-10-27.
///
/// Other available API versions: 2022-04-15-preview, 2025-03-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native resourceconnector [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create/Update Appliance
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var appliance = new AzureNative.ResourceConnector.Appliance("appliance", new()
///     {
///         Distro = AzureNative.ResourceConnector.Distro.AKSEdge,
///         InfrastructureConfig = new AzureNative.ResourceConnector.Inputs.AppliancePropertiesInfrastructureConfigArgs
///         {
///             Provider = AzureNative.ResourceConnector.Provider.VMWare,
///         },
///         Location = "West US",
///         ResourceGroupName = "testresourcegroup",
///         ResourceName = "appliance01",
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
/// 	resourceconnector "github.com/pulumi/pulumi-azure-native-sdk/resourceconnector/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := resourceconnector.NewAppliance(ctx, "appliance", &resourceconnector.ApplianceArgs{
/// 			Distro: pulumi.String(resourceconnector.DistroAKSEdge),
/// 			InfrastructureConfig: &resourceconnector.AppliancePropertiesInfrastructureConfigArgs{
/// 				Provider: pulumi.String(resourceconnector.ProviderVMWare),
/// 			},
/// 			Location:          pulumi.String("West US"),
/// 			ResourceGroupName: pulumi.String("testresourcegroup"),
/// 			ResourceName:      pulumi.String("appliance01"),
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
/// import com.pulumi.azurenative.resourceconnector.Appliance;
/// import com.pulumi.azurenative.resourceconnector.ApplianceArgs;
/// import com.pulumi.azurenative.resourceconnector.inputs.AppliancePropertiesInfrastructureConfigArgs;
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
///         var appliance = new Appliance("appliance", ApplianceArgs.builder()
///             .distro("AKSEdge")
///             .infrastructureConfig(AppliancePropertiesInfrastructureConfigArgs.builder()
///                 .provider("VMWare")
///                 .build())
///             .location("West US")
///             .resourceGroupName("testresourcegroup")
///             .resourceName("appliance01")
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
/// const appliance = new azure_native.resourceconnector.Appliance("appliance", {
///     distro: azure_native.resourceconnector.Distro.AKSEdge,
///     infrastructureConfig: {
///         provider: azure_native.resourceconnector.Provider.VMWare,
///     },
///     location: "West US",
///     resourceGroupName: "testresourcegroup",
///     resourceName: "appliance01",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// appliance = azure_native.resourceconnector.Appliance("appliance",
///     distro=azure_native.resourceconnector.Distro.AKS_EDGE,
///     infrastructure_config={
///         "provider": azure_native.resourceconnector.Provider.VM_WARE,
///     },
///     location="West US",
///     resource_group_name="testresourcegroup",
///     resource_name_="appliance01")
///
/// ```
///
/// ```yaml
/// resources:
///   appliance:
///     type: azure-native:resourceconnector:Appliance
///     properties:
///       distro: AKSEdge
///       infrastructureConfig:
///         provider: VMWare
///       location: West US
///       resourceGroupName: testresourcegroup
///       resourceName: appliance01
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
/// $ pulumi import azure-native:resourceconnector:Appliance appliance01 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ResourceConnector/appliances/{resourceName}
/// ```
class Appliance extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Represents a supported Fabric/Infra. (AKSEdge etc...).
  late final pulumi.Output<String?> distro;
  /// Identity for the resource.
  late final pulumi.Output<IdentityResponse?> identity;
  /// Contains infrastructure information about the Appliance
  late final pulumi.Output<AppliancePropertiesInfrastructureConfigResponse?> infrastructureConfig;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The current deployment or provisioning state, which only appears in the response.
  late final pulumi.Output<String> provisioningState;
  /// Certificates pair used to download MSI certificate from HIS. Can only be set once.
  late final pulumi.Output<String?> publicKey;
  /// Appliance’s health and state of connection to on-prem. This list of values is not exhaustive.
  late final pulumi.Output<String> status;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// Version of the Appliance
  late final pulumi.Output<String?> version;

  /// Creates a new [Appliance].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Appliance]. {@macro pulumi_resourceconnector_appliance_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Appliance(
    String name, {
    ApplianceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:resourceconnector:Appliance',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    distro = registerOutput<String?>('distro');
    identity = registerOutput<IdentityResponse?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    infrastructureConfig = registerOutput<AppliancePropertiesInfrastructureConfigResponse?>('infrastructureConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AppliancePropertiesInfrastructureConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    publicKey = registerOutput<String?>('publicKey');
    status = registerOutput<String>('status');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
    version = registerOutput<String?>('version');
  }
}
