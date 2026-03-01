import 'package:pulumi/pulumi.dart' as pulumi;
import 'nsp_link_args.dart';

/// The network security perimeter link resource
///
/// Uses Azure REST API version 2023-08-01-preview. In version 2.x of the Azure Native provider, it used API version 2021-02-01-preview.
///
/// Other available API versions: 2021-02-01-preview, 2023-07-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### NspLinksPut
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var nspLink = new AzureNative.Network.NspLink("nspLink", new()
///     {
///         AutoApprovedRemotePerimeterResourceId = "/subscriptions/subId/resourceGroups/rg1/providers/Microsoft.Network/networkSecurityPerimeters/nsp2",
///         LinkName = "link1",
///         LocalInboundProfiles = new[]
///         {
///             "*",
///         },
///         NetworkSecurityPerimeterName = "nsp1",
///         RemoteInboundProfiles = new[]
///         {
///             "*",
///         },
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
/// 		_, err := network.NewNspLink(ctx, "nspLink", &network.NspLinkArgs{
/// 			AutoApprovedRemotePerimeterResourceId: pulumi.String("/subscriptions/subId/resourceGroups/rg1/providers/Microsoft.Network/networkSecurityPerimeters/nsp2"),
/// 			LinkName:                              pulumi.String("link1"),
/// 			LocalInboundProfiles: pulumi.StringArray{
/// 				pulumi.String("*"),
/// 			},
/// 			NetworkSecurityPerimeterName: pulumi.String("nsp1"),
/// 			RemoteInboundProfiles: pulumi.StringArray{
/// 				pulumi.String("*"),
/// 			},
/// 			ResourceGroupName: pulumi.String("rg1"),
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
/// import com.pulumi.azurenative.network.NspLink;
/// import com.pulumi.azurenative.network.NspLinkArgs;
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
///         var nspLink = new NspLink("nspLink", NspLinkArgs.builder()
///             .autoApprovedRemotePerimeterResourceId("/subscriptions/subId/resourceGroups/rg1/providers/Microsoft.Network/networkSecurityPerimeters/nsp2")
///             .linkName("link1")
///             .localInboundProfiles("*")
///             .networkSecurityPerimeterName("nsp1")
///             .remoteInboundProfiles("*")
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
/// const nspLink = new azure_native.network.NspLink("nspLink", {
///     autoApprovedRemotePerimeterResourceId: "/subscriptions/subId/resourceGroups/rg1/providers/Microsoft.Network/networkSecurityPerimeters/nsp2",
///     linkName: "link1",
///     localInboundProfiles: ["*"],
///     networkSecurityPerimeterName: "nsp1",
///     remoteInboundProfiles: ["*"],
///     resourceGroupName: "rg1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// nsp_link = azure_native.network.NspLink("nspLink",
///     auto_approved_remote_perimeter_resource_id="/subscriptions/subId/resourceGroups/rg1/providers/Microsoft.Network/networkSecurityPerimeters/nsp2",
///     link_name="link1",
///     local_inbound_profiles=["*"],
///     network_security_perimeter_name="nsp1",
///     remote_inbound_profiles=["*"],
///     resource_group_name="rg1")
///
/// ```
///
/// ```yaml
/// resources:
///   nspLink:
///     type: azure-native:network:NspLink
///     properties:
///       autoApprovedRemotePerimeterResourceId: /subscriptions/subId/resourceGroups/rg1/providers/Microsoft.Network/networkSecurityPerimeters/nsp2
///       linkName: link1
///       localInboundProfiles:
///         - '*'
///       networkSecurityPerimeterName: nsp1
///       remoteInboundProfiles:
///         - '*'
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
/// $ pulumi import azure-native:network:NspLink link1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/networkSecurityPerimeters/{networkSecurityPerimeterName}/links/{linkName}
/// ```
class NspLink extends pulumi.CustomResource {
  /// Perimeter ARM Id for the remote NSP with which the link gets created in Auto-approval mode. It should be used when the NSP admin have Microsoft.Network/networkSecurityPerimeters/linkPerimeter/action permission on the remote NSP resource.
  late final pulumi.Output<String?> autoApprovedRemotePerimeterResourceId;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// A message passed to the owner of the remote NSP link resource with this connection request. In case of Auto-approved flow, it is default to 'Auto Approved'. Restricted to 140 chars.
  late final pulumi.Output<String?> description;
  /// A unique read-only string that changes whenever the resource is updated.
  late final pulumi.Output<String> etag;
  /// Local Inbound profile names to which Inbound is allowed. Use ['*'] to allow inbound to all profiles.
  late final pulumi.Output<List<String>?> localInboundProfiles;
  /// Local Outbound profile names from which Outbound is allowed. In current version, it is readonly property and it's value is set to ['*'] to allow outbound from all profiles. In later version, user will be able to modify it.
  late final pulumi.Output<List<String>> localOutboundProfiles;
  /// Resource name.
  late final pulumi.Output<String> name;
  /// The provisioning state of the NSP Link resource.
  late final pulumi.Output<String> provisioningState;
  /// Remote Inbound profile names to which Inbound is allowed. Use ['*'] to allow inbound to all profiles. This property can only be updated in auto-approval mode.
  late final pulumi.Output<List<String>?> remoteInboundProfiles;
  /// Remote Outbound profile names from which Outbound is allowed. In current version, it is readonly property and it's value is set to ['*'] to allow outbound from all profiles. In later version, user will be able to modify it.
  late final pulumi.Output<List<String>> remoteOutboundProfiles;
  /// Remote NSP Guid with which the link gets created.
  late final pulumi.Output<String> remotePerimeterGuid;
  /// Remote NSP location with which the link gets created.
  late final pulumi.Output<String> remotePerimeterLocation;
  /// The NSP link state.
  late final pulumi.Output<String> status;
  /// Resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [NspLink].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NspLink]. {@macro pulumi_network_nsp_link_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NspLink(
    String name, {
    NspLinkArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:network:NspLink',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.autoApprovedRemotePerimeterResourceId = registerOutput<String?>('autoApprovedRemotePerimeterResourceId');
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.description = registerOutput<String?>('description');
    this.etag = registerOutput<String>('etag');
    this.localInboundProfiles = registerOutput<List<String>?>('localInboundProfiles');
    this.localOutboundProfiles = registerOutput<List<String>>('localOutboundProfiles');
    this.name = registerOutput<String>('name');
    this.provisioningState = registerOutput<String>('provisioningState');
    this.remoteInboundProfiles = registerOutput<List<String>?>('remoteInboundProfiles');
    this.remoteOutboundProfiles = registerOutput<List<String>>('remoteOutboundProfiles');
    this.remotePerimeterGuid = registerOutput<String>('remotePerimeterGuid');
    this.remotePerimeterLocation = registerOutput<String>('remotePerimeterLocation');
    this.status = registerOutput<String>('status');
    this.type = registerOutput<String>('type');
  }
}
