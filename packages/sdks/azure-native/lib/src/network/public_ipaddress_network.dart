import 'package:pulumi/pulumi.dart' as pulumi;
import 'ddos_settings_response.dart';
import 'extended_location_response.dart';
import 'ipconfiguration_response.dart';
import 'nat_gateway_response.dart';
import 'public_ipaddress_args.dart';
import 'public_ipaddress_dns_settings_response.dart';
import 'public_ipaddress_response.dart';
import 'public_ipaddress_sku_response.dart';
import 'sub_resource_response.dart';

/// Public IP address resource.
///
/// Uses Azure REST API version 2024-05-01. In version 2.x of the Azure Native provider, it used API version 2023-02-01.
///
/// Other available API versions: 2018-06-01, 2018-07-01, 2018-08-01, 2018-10-01, 2018-11-01, 2018-12-01, 2019-02-01, 2019-04-01, 2019-06-01, 2019-07-01, 2019-08-01, 2019-09-01, 2019-11-01, 2019-12-01, 2020-03-01, 2020-04-01, 2020-05-01, 2020-06-01, 2020-07-01, 2020-08-01, 2020-11-01, 2021-02-01, 2021-03-01, 2021-05-01, 2021-08-01, 2022-01-01, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create public IP address DNS
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var publicIPAddress = new AzureNative.Network.PublicIPAddress("publicIPAddress", new()
///     {
///         DnsSettings = new AzureNative.Network.Inputs.PublicIPAddressDnsSettingsArgs
///         {
///             DomainNameLabel = "dnslbl",
///         },
///         Location = "eastus",
///         PublicIpAddressName = "test-ip",
///         ResourceGroupName = "rg1",
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
/// 		_, err := network.NewPublicIPAddress(ctx, "publicIPAddress", &network.PublicIPAddressArgs{
/// 			DnsSettings: &network.PublicIPAddressDnsSettingsArgs{
/// 				DomainNameLabel: pulumi.String("dnslbl"),
/// 			},
/// 			Location:            pulumi.String("eastus"),
/// 			PublicIpAddressName: pulumi.String("test-ip"),
/// 			ResourceGroupName:   pulumi.String("rg1"),
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
/// import com.pulumi.azurenative.network.PublicIPAddress;
/// import com.pulumi.azurenative.network.PublicIPAddressArgs;
/// import com.pulumi.azurenative.network.inputs.PublicIPAddressDnsSettingsArgs;
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
///         var publicIPAddress = new PublicIPAddress("publicIPAddress", PublicIPAddressArgs.builder()
///             .dnsSettings(PublicIPAddressDnsSettingsArgs.builder()
///                 .domainNameLabel("dnslbl")
///                 .build())
///             .location("eastus")
///             .publicIpAddressName("test-ip")
///             .resourceGroupName("rg1")
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
/// const publicIPAddress = new azure_native.network.PublicIPAddress("publicIPAddress", {
///     dnsSettings: {
///         domainNameLabel: "dnslbl",
///     },
///     location: "eastus",
///     publicIpAddressName: "test-ip",
///     resourceGroupName: "rg1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// public_ip_address = azure_native.network.PublicIPAddress("publicIPAddress",
///     dns_settings={
///         "domain_name_label": "dnslbl",
///     },
///     location="eastus",
///     public_ip_address_name="test-ip",
///     resource_group_name="rg1")
///
/// ```
///
/// ```yaml
/// resources:
///   publicIPAddress:
///     type: azure-native:network:PublicIPAddress
///     properties:
///       dnsSettings:
///         domainNameLabel: dnslbl
///       location: eastus
///       publicIpAddressName: test-ip
///       resourceGroupName: rg1
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create public IP address DNS with Domain Name Label Scope
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var publicIPAddress = new AzureNative.Network.PublicIPAddress("publicIPAddress", new()
///     {
///         DnsSettings = new AzureNative.Network.Inputs.PublicIPAddressDnsSettingsArgs
///         {
///             DomainNameLabel = "dnslbl",
///             DomainNameLabelScope = AzureNative.Network.PublicIpAddressDnsSettingsDomainNameLabelScope.TenantReuse,
///         },
///         Location = "eastus",
///         PublicIpAddressName = "test-ip",
///         ResourceGroupName = "rg1",
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
/// 		_, err := network.NewPublicIPAddress(ctx, "publicIPAddress", &network.PublicIPAddressArgs{
/// 			DnsSettings: &network.PublicIPAddressDnsSettingsArgs{
/// 				DomainNameLabel:      pulumi.String("dnslbl"),
/// 				DomainNameLabelScope: network.PublicIpAddressDnsSettingsDomainNameLabelScopeTenantReuse,
/// 			},
/// 			Location:            pulumi.String("eastus"),
/// 			PublicIpAddressName: pulumi.String("test-ip"),
/// 			ResourceGroupName:   pulumi.String("rg1"),
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
/// import com.pulumi.azurenative.network.PublicIPAddress;
/// import com.pulumi.azurenative.network.PublicIPAddressArgs;
/// import com.pulumi.azurenative.network.inputs.PublicIPAddressDnsSettingsArgs;
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
///         var publicIPAddress = new PublicIPAddress("publicIPAddress", PublicIPAddressArgs.builder()
///             .dnsSettings(PublicIPAddressDnsSettingsArgs.builder()
///                 .domainNameLabel("dnslbl")
///                 .domainNameLabelScope("TenantReuse")
///                 .build())
///             .location("eastus")
///             .publicIpAddressName("test-ip")
///             .resourceGroupName("rg1")
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
/// const publicIPAddress = new azure_native.network.PublicIPAddress("publicIPAddress", {
///     dnsSettings: {
///         domainNameLabel: "dnslbl",
///         domainNameLabelScope: azure_native.network.PublicIpAddressDnsSettingsDomainNameLabelScope.TenantReuse,
///     },
///     location: "eastus",
///     publicIpAddressName: "test-ip",
///     resourceGroupName: "rg1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// public_ip_address = azure_native.network.PublicIPAddress("publicIPAddress",
///     dns_settings={
///         "domain_name_label": "dnslbl",
///         "domain_name_label_scope": azure_native.network.PublicIpAddressDnsSettingsDomainNameLabelScope.TENANT_REUSE,
///     },
///     location="eastus",
///     public_ip_address_name="test-ip",
///     resource_group_name="rg1")
///
/// ```
///
/// ```yaml
/// resources:
///   publicIPAddress:
///     type: azure-native:network:PublicIPAddress
///     properties:
///       dnsSettings:
///         domainNameLabel: dnslbl
///         domainNameLabelScope: TenantReuse
///       location: eastus
///       publicIpAddressName: test-ip
///       resourceGroupName: rg1
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create public IP address allocation method
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var publicIPAddress = new AzureNative.Network.PublicIPAddress("publicIPAddress", new()
///     {
///         IdleTimeoutInMinutes = 10,
///         Location = "eastus",
///         PublicIPAddressVersion = AzureNative.Network.IPVersion.IPv4,
///         PublicIPAllocationMethod = AzureNative.Network.IPAllocationMethod.Static,
///         PublicIpAddressName = "test-ip",
///         ResourceGroupName = "rg1",
///         Sku = new AzureNative.Network.Inputs.PublicIPAddressSkuArgs
///         {
///             Name = AzureNative.Network.PublicIPAddressSkuName.Standard,
///             Tier = AzureNative.Network.PublicIPAddressSkuTier.Global,
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
/// 		_, err := network.NewPublicIPAddress(ctx, "publicIPAddress", &network.PublicIPAddressArgs{
/// 			IdleTimeoutInMinutes:     pulumi.Int(10),
/// 			Location:                 pulumi.String("eastus"),
/// 			PublicIPAddressVersion:   pulumi.String(network.IPVersionIPv4),
/// 			PublicIPAllocationMethod: pulumi.String(network.IPAllocationMethodStatic),
/// 			PublicIpAddressName:      pulumi.String("test-ip"),
/// 			ResourceGroupName:        pulumi.String("rg1"),
/// 			Sku: &network.PublicIPAddressSkuArgs{
/// 				Name: pulumi.String(network.PublicIPAddressSkuNameStandard),
/// 				Tier: pulumi.String(network.PublicIPAddressSkuTierGlobal),
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
/// import com.pulumi.azurenative.network.PublicIPAddress;
/// import com.pulumi.azurenative.network.PublicIPAddressArgs;
/// import com.pulumi.azurenative.network.inputs.PublicIPAddressSkuArgs;
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
///         var publicIPAddress = new PublicIPAddress("publicIPAddress", PublicIPAddressArgs.builder()
///             .idleTimeoutInMinutes(10)
///             .location("eastus")
///             .publicIPAddressVersion("IPv4")
///             .publicIPAllocationMethod("Static")
///             .publicIpAddressName("test-ip")
///             .resourceGroupName("rg1")
///             .sku(PublicIPAddressSkuArgs.builder()
///                 .name("Standard")
///                 .tier("Global")
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
/// const publicIPAddress = new azure_native.network.PublicIPAddress("publicIPAddress", {
///     idleTimeoutInMinutes: 10,
///     location: "eastus",
///     publicIPAddressVersion: azure_native.network.IPVersion.IPv4,
///     publicIPAllocationMethod: azure_native.network.IPAllocationMethod.Static,
///     publicIpAddressName: "test-ip",
///     resourceGroupName: "rg1",
///     sku: {
///         name: azure_native.network.PublicIPAddressSkuName.Standard,
///         tier: azure_native.network.PublicIPAddressSkuTier.Global,
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// public_ip_address = azure_native.network.PublicIPAddress("publicIPAddress",
///     idle_timeout_in_minutes=10,
///     location="eastus",
///     public_ip_address_version=azure_native.network.IPVersion.I_PV4,
///     public_ip_allocation_method=azure_native.network.IPAllocationMethod.STATIC,
///     public_ip_address_name="test-ip",
///     resource_group_name="rg1",
///     sku={
///         "name": azure_native.network.PublicIPAddressSkuName.STANDARD,
///         "tier": azure_native.network.PublicIPAddressSkuTier.GLOBAL_,
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   publicIPAddress:
///     type: azure-native:network:PublicIPAddress
///     properties:
///       idleTimeoutInMinutes: 10
///       location: eastus
///       publicIPAddressVersion: IPv4
///       publicIPAllocationMethod: Static
///       publicIpAddressName: test-ip
///       resourceGroupName: rg1
///       sku:
///         name: Standard
///         tier: Global
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create public IP address defaults
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var publicIPAddress = new AzureNative.Network.PublicIPAddress("publicIPAddress", new()
///     {
///         Location = "eastus",
///         PublicIpAddressName = "test-ip",
///         ResourceGroupName = "rg1",
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
/// 		_, err := network.NewPublicIPAddress(ctx, "publicIPAddress", &network.PublicIPAddressArgs{
/// 			Location:            pulumi.String("eastus"),
/// 			PublicIpAddressName: pulumi.String("test-ip"),
/// 			ResourceGroupName:   pulumi.String("rg1"),
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
/// import com.pulumi.azurenative.network.PublicIPAddress;
/// import com.pulumi.azurenative.network.PublicIPAddressArgs;
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
///         var publicIPAddress = new PublicIPAddress("publicIPAddress", PublicIPAddressArgs.builder()
///             .location("eastus")
///             .publicIpAddressName("test-ip")
///             .resourceGroupName("rg1")
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
/// const publicIPAddress = new azure_native.network.PublicIPAddress("publicIPAddress", {
///     location: "eastus",
///     publicIpAddressName: "test-ip",
///     resourceGroupName: "rg1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// public_ip_address = azure_native.network.PublicIPAddress("publicIPAddress",
///     location="eastus",
///     public_ip_address_name="test-ip",
///     resource_group_name="rg1")
///
/// ```
///
/// ```yaml
/// resources:
///   publicIPAddress:
///     type: azure-native:network:PublicIPAddress
///     properties:
///       location: eastus
///       publicIpAddressName: test-ip
///       resourceGroupName: rg1
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
/// $ pulumi import azure-native:network:PublicIPAddress testDNS-ip /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/publicIPAddresses/{publicIpAddressName}
/// ```
class PublicIPAddressNetwork extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The DDoS protection custom policy associated with the public IP address.
  late final pulumi.Output<DdosSettingsResponse?> ddosSettings;

  /// Specify what happens to the public IP address when the VM using it is deleted
  late final pulumi.Output<String?> deleteOption;

  /// The FQDN of the DNS record associated with the public IP address.
  late final pulumi.Output<PublicIPAddressDnsSettingsResponse?> dnsSettings;

  /// A unique read-only string that changes whenever the resource is updated.
  late final pulumi.Output<String> etag;

  /// The extended location of the public ip address.
  late final pulumi.Output<ExtendedLocationResponse?> extendedLocation;

  /// The idle timeout of the public IP address.
  late final pulumi.Output<int?> idleTimeoutInMinutes;

  /// The IP address associated with the public IP address resource.
  late final pulumi.Output<String?> ipAddress;

  /// The IP configuration associated with the public IP address.
  late final pulumi.Output<IPConfigurationResponse> ipConfiguration;

  /// The list of tags associated with the public IP address.
  late final pulumi.Output<List<Map<String, dynamic>>?> ipTags;

  /// The linked public IP address of the public IP address resource.
  late final pulumi.Output<PublicIPAddressResponse?> linkedPublicIPAddress;

  /// Resource location.
  late final pulumi.Output<String?> location;

  /// Migration phase of Public IP Address.
  late final pulumi.Output<String?> migrationPhase;

  /// Resource name.
  late final pulumi.Output<String> name;

  /// The NatGateway for the Public IP address.
  late final pulumi.Output<NatGatewayResponse?> natGateway;

  /// The provisioning state of the public IP address resource.
  late final pulumi.Output<String> provisioningState;

  /// The public IP address version.
  late final pulumi.Output<String?> publicIPAddressVersion;

  /// The public IP address allocation method.
  late final pulumi.Output<String?> publicIPAllocationMethod;

  /// The Public IP Prefix this Public IP Address should be allocated from.
  late final pulumi.Output<SubResourceResponse?> publicIPPrefix;

  /// The resource GUID property of the public IP address resource.
  late final pulumi.Output<String> resourceGuid;

  /// The service public IP address of the public IP address resource.
  late final pulumi.Output<PublicIPAddressResponse?> servicePublicIPAddress;

  /// The public IP address SKU.
  late final pulumi.Output<PublicIPAddressSkuResponse?> sku;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Resource type.
  late final pulumi.Output<String> type;

  /// A list of availability zones denoting the IP allocated for the resource needs to come from.
  late final pulumi.Output<List<String>?> zones;

  /// Creates a new [PublicIPAddressNetwork].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PublicIPAddressNetwork]. {@macro pulumi_network_public_ipaddress_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PublicIPAddressNetwork(
    String name, {
    PublicIPAddressArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:network:PublicIPAddress',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    ddosSettings = registerOutput<DdosSettingsResponse?>('ddosSettings');
    deleteOption = registerOutput<String?>('deleteOption');
    dnsSettings = registerOutput<PublicIPAddressDnsSettingsResponse?>(
      'dnsSettings',
    );
    etag = registerOutput<String>('etag');
    extendedLocation = registerOutput<ExtendedLocationResponse?>(
      'extendedLocation',
    );
    idleTimeoutInMinutes = registerOutput<int?>('idleTimeoutInMinutes');
    ipAddress = registerOutput<String?>('ipAddress');
    ipConfiguration = registerOutput<IPConfigurationResponse>(
      'ipConfiguration',
    );
    ipTags = registerOutput<List<Map<String, dynamic>>?>('ipTags');
    linkedPublicIPAddress = registerOutput<PublicIPAddressResponse?>(
      'linkedPublicIPAddress',
    );
    location = registerOutput<String?>('location');
    migrationPhase = registerOutput<String?>('migrationPhase');
    this.name = registerOutput<String>('name');
    natGateway = registerOutput<NatGatewayResponse?>('natGateway');
    provisioningState = registerOutput<String>('provisioningState');
    publicIPAddressVersion = registerOutput<String?>('publicIPAddressVersion');
    publicIPAllocationMethod = registerOutput<String?>(
      'publicIPAllocationMethod',
    );
    publicIPPrefix = registerOutput<SubResourceResponse?>('publicIPPrefix');
    resourceGuid = registerOutput<String>('resourceGuid');
    servicePublicIPAddress = registerOutput<PublicIPAddressResponse?>(
      'servicePublicIPAddress',
    );
    sku = registerOutput<PublicIPAddressSkuResponse?>('sku');
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
    zones = registerOutput<List<String>?>('zones');
  }
}
