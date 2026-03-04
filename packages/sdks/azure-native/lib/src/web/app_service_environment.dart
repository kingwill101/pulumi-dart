import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_service_environment_args.dart';
import 'ase_v3_networking_configuration_response.dart';
import 'custom_dns_suffix_configuration_response.dart';
import 'virtual_network_profile_response.dart';

/// App Service Environment ARM resource.
///
/// Uses Azure REST API version 2024-04-01. In version 2.x of the Azure Native provider, it used API version 2022-09-01.
///
/// Other available API versions: 2016-09-01, 2018-02-01, 2019-08-01, 2020-06-01, 2020-09-01, 2020-10-01, 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-11-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or update an App Service Environment.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var appServiceEnvironment = new AzureNative.Web.AppServiceEnvironment("appServiceEnvironment", new()
///     {
///         Kind = "Asev3",
///         Location = "South Central US",
///         Name = "test-ase",
///         ResourceGroupName = "test-rg",
///         VirtualNetwork = new AzureNative.Web.Inputs.VirtualNetworkProfileArgs
///         {
///             Id = "/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/test-rg/providers/Microsoft.Network/virtualNetworks/test-vnet/subnets/delegated",
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
/// 	web "github.com/pulumi/pulumi-azure-native-sdk/web/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := web.NewAppServiceEnvironment(ctx, "appServiceEnvironment", &web.AppServiceEnvironmentArgs{
/// 			Kind:              pulumi.String("Asev3"),
/// 			Location:          pulumi.String("South Central US"),
/// 			Name:              pulumi.String("test-ase"),
/// 			ResourceGroupName: pulumi.String("test-rg"),
/// 			VirtualNetwork: &web.VirtualNetworkProfileArgs{
/// 				Id: pulumi.String("/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/test-rg/providers/Microsoft.Network/virtualNetworks/test-vnet/subnets/delegated"),
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
/// import com.pulumi.azurenative.web.AppServiceEnvironment;
/// import com.pulumi.azurenative.web.AppServiceEnvironmentArgs;
/// import com.pulumi.azurenative.web.inputs.VirtualNetworkProfileArgs;
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
///         var appServiceEnvironment = new AppServiceEnvironment("appServiceEnvironment", AppServiceEnvironmentArgs.builder()
///             .kind("Asev3")
///             .location("South Central US")
///             .name("test-ase")
///             .resourceGroupName("test-rg")
///             .virtualNetwork(VirtualNetworkProfileArgs.builder()
///                 .id("/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/test-rg/providers/Microsoft.Network/virtualNetworks/test-vnet/subnets/delegated")
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
/// const appServiceEnvironment = new azure_native.web.AppServiceEnvironment("appServiceEnvironment", {
///     kind: "Asev3",
///     location: "South Central US",
///     name: "test-ase",
///     resourceGroupName: "test-rg",
///     virtualNetwork: {
///         id: "/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/test-rg/providers/Microsoft.Network/virtualNetworks/test-vnet/subnets/delegated",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// app_service_environment = azure_native.web.AppServiceEnvironment("appServiceEnvironment",
///     kind="Asev3",
///     location="South Central US",
///     name="test-ase",
///     resource_group_name="test-rg",
///     virtual_network={
///         "id": "/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/test-rg/providers/Microsoft.Network/virtualNetworks/test-vnet/subnets/delegated",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   appServiceEnvironment:
///     type: azure-native:web:AppServiceEnvironment
///     properties:
///       kind: Asev3
///       location: South Central US
///       name: test-ase
///       resourceGroupName: test-rg
///       virtualNetwork:
///         id: /subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/test-rg/providers/Microsoft.Network/virtualNetworks/test-vnet/subnets/delegated
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
/// $ pulumi import azure-native:web:AppServiceEnvironment test-ase /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Web/hostingEnvironments/{name}
/// ```
class AppServiceEnvironment extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Custom settings for changing the behavior of the App Service Environment.
  late final pulumi.Output<List<Map<String, dynamic>>?> clusterSettings;

  /// Full view of the custom domain suffix configuration for ASEv3.
  late final pulumi.Output<CustomDnsSuffixConfigurationResponse?>
  customDnsSuffixConfiguration;

  /// Dedicated Host Count
  late final pulumi.Output<int?> dedicatedHostCount;

  /// DNS suffix of the App Service Environment.
  late final pulumi.Output<String?> dnsSuffix;

  /// Scale factor for front-ends.
  late final pulumi.Output<int?> frontEndScaleFactor;

  /// Flag that displays whether an ASE has linux workers or not
  late final pulumi.Output<bool> hasLinuxWorkers;

  /// Specifies which endpoints to serve internally in the Virtual Network for the App Service Environment.
  late final pulumi.Output<String?> internalLoadBalancingMode;

  /// Number of IP SSL addresses reserved for the App Service Environment.
  late final pulumi.Output<int?> ipsslAddressCount;

  /// Kind of resource. If the resource is an app, you can refer to https://github.com/Azure/app-service-linux-docs/blob/master/Things_You_Should_Know/kind_property.md#app-service-resource-kind-reference for details supported values for kind.
  late final pulumi.Output<String?> kind;

  /// Resource Location.
  late final pulumi.Output<String> location;

  /// Maximum number of VMs in the App Service Environment.
  late final pulumi.Output<int> maximumNumberOfMachines;

  /// Number of front-end instances.
  late final pulumi.Output<int> multiRoleCount;

  /// Front-end VM size, e.g. "Medium", "Large".
  late final pulumi.Output<String?> multiSize;

  /// Resource Name.
  late final pulumi.Output<String> name;

  /// Full view of networking configuration for an ASE.
  late final pulumi.Output<AseV3NetworkingConfigurationResponse?>
  networkingConfiguration;

  /// Provisioning state of the App Service Environment.
  late final pulumi.Output<String> provisioningState;

  /// Current status of the App Service Environment.
  late final pulumi.Output<String> status;

  /// &lt;code&gt;true&lt;/code&gt; if the App Service Environment is suspended; otherwise, &lt;code&gt;false&lt;/code&gt;. The environment can be suspended, e.g. when the management endpoint is no longer available
  /// (most likely because NSG blocked the incoming traffic).
  late final pulumi.Output<bool> suspended;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Resource type.
  late final pulumi.Output<String> type;

  /// Whether an upgrade is available for this App Service Environment.
  late final pulumi.Output<String> upgradeAvailability;

  /// Upgrade Preference
  late final pulumi.Output<String?> upgradePreference;

  /// User added ip ranges to whitelist on ASE db
  late final pulumi.Output<List<String>?> userWhitelistedIpRanges;

  /// Description of the Virtual Network.
  late final pulumi.Output<VirtualNetworkProfileResponse> virtualNetwork;

  /// Whether or not this App Service Environment is zone-redundant.
  late final pulumi.Output<bool?> zoneRedundant;

  /// Creates a new [AppServiceEnvironment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AppServiceEnvironment]. {@macro pulumi_web_app_service_environment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AppServiceEnvironment(
    String name, {
    AppServiceEnvironmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:web:AppServiceEnvironment',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    clusterSettings = registerOutput<List<Map<String, dynamic>>?>(
      'clusterSettings',
    );
    customDnsSuffixConfiguration =
        registerOutput<CustomDnsSuffixConfigurationResponse?>(
          'customDnsSuffixConfiguration',
        );
    dedicatedHostCount = registerOutput<int?>('dedicatedHostCount');
    dnsSuffix = registerOutput<String?>('dnsSuffix');
    frontEndScaleFactor = registerOutput<int?>('frontEndScaleFactor');
    hasLinuxWorkers = registerOutput<bool>('hasLinuxWorkers');
    internalLoadBalancingMode = registerOutput<String?>(
      'internalLoadBalancingMode',
    );
    ipsslAddressCount = registerOutput<int?>('ipsslAddressCount');
    kind = registerOutput<String?>('kind');
    location = registerOutput<String>('location');
    maximumNumberOfMachines = registerOutput<int>('maximumNumberOfMachines');
    multiRoleCount = registerOutput<int>('multiRoleCount');
    multiSize = registerOutput<String?>('multiSize');
    this.name = registerOutput<String>('name');
    networkingConfiguration =
        registerOutput<AseV3NetworkingConfigurationResponse?>(
          'networkingConfiguration',
        );
    provisioningState = registerOutput<String>('provisioningState');
    status = registerOutput<String>('status');
    suspended = registerOutput<bool>('suspended');
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
    upgradeAvailability = registerOutput<String>('upgradeAvailability');
    upgradePreference = registerOutput<String?>('upgradePreference');
    userWhitelistedIpRanges = registerOutput<List<String>?>(
      'userWhitelistedIpRanges',
    );
    virtualNetwork = registerOutput<VirtualNetworkProfileResponse>(
      'virtualNetwork',
    );
    zoneRedundant = registerOutput<bool?>('zoneRedundant');
  }
}
