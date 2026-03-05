import 'package:pulumi/pulumi.dart' as pulumi;
import 'office365_policy_properties_response.dart';
import 'virtual_appliance_site_args.dart';

/// Virtual Appliance Site resource.
///
/// Uses Azure REST API version 2024-05-01. In version 2.x of the Azure Native provider, it used API version 2023-02-01.
///
/// Other available API versions: 2020-05-01, 2020-06-01, 2020-07-01, 2020-08-01, 2020-11-01, 2021-02-01, 2021-03-01, 2021-05-01, 2021-08-01, 2022-01-01, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create Network Virtual Appliance Site
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var virtualApplianceSite = new AzureNative.Network.VirtualApplianceSite("virtualApplianceSite", new()
///     {
///         AddressPrefix = "192.168.1.0/24",
///         NetworkVirtualApplianceName = "nva",
///         O365Policy = new AzureNative.Network.Inputs.Office365PolicyPropertiesArgs
///         {
///             BreakOutCategories = new AzureNative.Network.Inputs.BreakOutCategoryPoliciesArgs
///             {
///                 Allow = true,
///                 Default = true,
///                 Optimize = true,
///             },
///         },
///         ResourceGroupName = "rg1",
///         SiteName = "site1",
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
/// 		_, err := network.NewVirtualApplianceSite(ctx, "virtualApplianceSite", &network.VirtualApplianceSiteArgs{
/// 			AddressPrefix:               pulumi.String("192.168.1.0/24"),
/// 			NetworkVirtualApplianceName: pulumi.String("nva"),
/// 			O365Policy: &network.Office365PolicyPropertiesArgs{
/// 				BreakOutCategories: &network.BreakOutCategoryPoliciesArgs{
/// 					Allow:    pulumi.Bool(true),
/// 					Default:  pulumi.Bool(true),
/// 					Optimize: pulumi.Bool(true),
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			SiteName:          pulumi.String("site1"),
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
/// import com.pulumi.azurenative.network.VirtualApplianceSite;
/// import com.pulumi.azurenative.network.VirtualApplianceSiteArgs;
/// import com.pulumi.azurenative.network.inputs.Office365PolicyPropertiesArgs;
/// import com.pulumi.azurenative.network.inputs.BreakOutCategoryPoliciesArgs;
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
///         var virtualApplianceSite = new VirtualApplianceSite("virtualApplianceSite", VirtualApplianceSiteArgs.builder()
///             .addressPrefix("192.168.1.0/24")
///             .networkVirtualApplianceName("nva")
///             .o365Policy(Office365PolicyPropertiesArgs.builder()
///                 .breakOutCategories(BreakOutCategoryPoliciesArgs.builder()
///                     .allow(true)
///                     .default_(true)
///                     .optimize(true)
///                     .build())
///                 .build())
///             .resourceGroupName("rg1")
///             .siteName("site1")
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
/// const virtualApplianceSite = new azure_native.network.VirtualApplianceSite("virtualApplianceSite", {
///     addressPrefix: "192.168.1.0/24",
///     networkVirtualApplianceName: "nva",
///     o365Policy: {
///         breakOutCategories: {
///             allow: true,
///             "default": true,
///             optimize: true,
///         },
///     },
///     resourceGroupName: "rg1",
///     siteName: "site1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// virtual_appliance_site = azure_native.network.VirtualApplianceSite("virtualApplianceSite",
///     address_prefix="192.168.1.0/24",
///     network_virtual_appliance_name="nva",
///     o365_policy={
///         "break_out_categories": {
///             "allow": True,
///             "default": True,
///             "optimize": True,
///         },
///     },
///     resource_group_name="rg1",
///     site_name="site1")
///
/// ```
///
/// ```yaml
/// resources:
///   virtualApplianceSite:
///     type: azure-native:network:VirtualApplianceSite
///     properties:
///       addressPrefix: 192.168.1.0/24
///       networkVirtualApplianceName: nva
///       o365Policy:
///         breakOutCategories:
///           allow: true
///           default: true
///           optimize: true
///       resourceGroupName: rg1
///       siteName: site1
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
/// $ pulumi import azure-native:network:VirtualApplianceSite site1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/networkVirtualAppliances/{networkVirtualApplianceName}/virtualApplianceSites/{siteName}
/// ```
class VirtualApplianceSite extends pulumi.CustomResource {
  /// Address Prefix.
  late final pulumi.Output<String?> addressPrefix;

  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// A unique read-only string that changes whenever the resource is updated.
  late final pulumi.Output<String> etag;

  /// Name of the virtual appliance site.
  late final pulumi.Output<String?> name;

  /// Office 365 Policy.
  late final pulumi.Output<Office365PolicyPropertiesResponse?> o365Policy;

  /// The provisioning state of the resource.
  late final pulumi.Output<String> provisioningState;

  /// Site type.
  late final pulumi.Output<String> type;

  /// Creates a new [VirtualApplianceSite].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VirtualApplianceSite]. {@macro pulumi_network_virtual_appliance_site_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VirtualApplianceSite(
    String name, {
    VirtualApplianceSiteArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:network:VirtualApplianceSite',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    addressPrefix = registerOutput<String?>('addressPrefix');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    etag = registerOutput<String>('etag');
    this.name = registerOutput<String?>('name');
    o365Policy = registerOutput<Office365PolicyPropertiesResponse?>(
      'o365Policy',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return Office365PolicyPropertiesResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    provisioningState = registerOutput<String>('provisioningState');
    type = registerOutput<String>('type');
  }
}
