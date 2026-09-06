import 'package:pulumi/pulumi.dart' as pulumi;
import 'interconnect_group_args.dart';
import 'subgroup_profile_response.dart';
import 'subgroup_response.dart';

/// An interconnect group resource.
///
/// Uses Azure REST API version 2025-07-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create interconnect group
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var interconnectGroup = new AzureNative.Network.InterconnectGroup("interconnectGroup", new()
///     {
///         InterconnectGroupName = "test-ig",
///         Location = "eastus",
///         ResourceGroupName = "rg1",
///         Scope = AzureNative.Network.InterconnectGroupScope.InfiniBand,
///         SubgroupProfile = new AzureNative.Network.Inputs.SubgroupProfileArgs
///         {
///             Scope = AzureNative.Network.SubgroupProfileScope.VerticalConnect,
///             Size = 18,
///             VmSize = "Standard_ND128isr_NDR_GB200_v6",
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
/// 		_, err := network.NewInterconnectGroup(ctx, "interconnectGroup", &network.InterconnectGroupArgs{
/// 			InterconnectGroupName: pulumi.String("test-ig"),
/// 			Location:              pulumi.String("eastus"),
/// 			ResourceGroupName:     pulumi.String("rg1"),
/// 			Scope:                 pulumi.String(network.InterconnectGroupScopeInfiniBand),
/// 			SubgroupProfile: &network.SubgroupProfileArgs{
/// 				Scope:  pulumi.String(network.SubgroupProfileScopeVerticalConnect),
/// 				Size:   pulumi.Int(18),
/// 				VmSize: pulumi.String("Standard_ND128isr_NDR_GB200_v6"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_network_interconnectgroup" "interconnectGroup" {
///   interconnect_group_name = "test-ig"
///   location                = "eastus"
///   resource_group_name     = "rg1"
///   scope                   = "InfiniBand"
///   subgroup_profile = {
///     scope   = "VerticalConnect"
///     size    = 18
///     vm_size = "Standard_ND128isr_NDR_GB200_v6"
///   }
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
/// import com.pulumi.azurenative.network.InterconnectGroup;
/// import com.pulumi.azurenative.network.InterconnectGroupArgs;
/// import com.pulumi.azurenative.network.inputs.SubgroupProfileArgs;
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
///         var interconnectGroup = new InterconnectGroup("interconnectGroup", InterconnectGroupArgs.builder()
///             .interconnectGroupName("test-ig")
///             .location("eastus")
///             .resourceGroupName("rg1")
///             .scope("InfiniBand")
///             .subgroupProfile(SubgroupProfileArgs.builder()
///                 .scope("VerticalConnect")
///                 .size(18)
///                 .vmSize("Standard_ND128isr_NDR_GB200_v6")
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
/// const interconnectGroup = new azure_native.network.InterconnectGroup("interconnectGroup", {
///     interconnectGroupName: "test-ig",
///     location: "eastus",
///     resourceGroupName: "rg1",
///     scope: azure_native.network.InterconnectGroupScope.InfiniBand,
///     subgroupProfile: {
///         scope: azure_native.network.SubgroupProfileScope.VerticalConnect,
///         size: 18,
///         vmSize: "Standard_ND128isr_NDR_GB200_v6",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// interconnect_group = azure_native.network.InterconnectGroup("interconnectGroup",
///     interconnect_group_name="test-ig",
///     location="eastus",
///     resource_group_name="rg1",
///     scope=azure_native.network.InterconnectGroupScope.INFINI_BAND,
///     subgroup_profile={
///         "scope": azure_native.network.SubgroupProfileScope.VERTICAL_CONNECT,
///         "size": 18,
///         "vm_size": "Standard_ND128isr_NDR_GB200_v6",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   interconnectGroup:
///     type: azure-native:network:InterconnectGroup
///     properties:
///       interconnectGroupName: test-ig
///       location: eastus
///       resourceGroupName: rg1
///       scope: InfiniBand
///       subgroupProfile:
///         scope: VerticalConnect
///         size: 18
///         vmSize: Standard_ND128isr_NDR_GB200_v6
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
/// $ pulumi import azure-native:network:InterconnectGroup test-ig /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/interconnectGroups/{interconnectGroupName}
/// ```
class InterconnectGroup extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// A unique read-only string that changes whenever the resource is updated.
  late final pulumi.Output<String> etag;
  /// Resource location.
  late final pulumi.Output<String?> location;
  /// Resource name.
  late final pulumi.Output<String> name;
  /// The provisioning state of the interconnect group resource.
  late final pulumi.Output<String> provisioningState;
  /// The resource GUID property of the interconnect group resource.
  late final pulumi.Output<String> resourceGuid;
  /// Scope of interconnect group resource.
  late final pulumi.Output<String?> scope;
  /// The subgroup profile of the interconnect group resource.
  late final pulumi.Output<SubgroupProfileResponse> subgroupProfile;
  /// A list of subgroups of the interconnect group.
  late final pulumi.Output<List<SubgroupResponse>> subgroups;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [InterconnectGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [InterconnectGroup]. {@macro pulumi_network_interconnect_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  InterconnectGroup(
    String name, {
    InterconnectGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:network:InterconnectGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    etag = registerOutput<String>('etag');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    resourceGuid = registerOutput<String>('resourceGuid');
    scope = registerOutput<String?>('scope');
    subgroupProfile = registerOutput<SubgroupProfileResponse>('subgroupProfile', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SubgroupProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    subgroups = registerOutput<List<SubgroupResponse>>('subgroups', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<SubgroupResponse>(guardedValue, (value) => SubgroupResponse.fromMap((value as Map).cast<String, dynamic>())); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [InterconnectGroup] resource.
  InterconnectGroup.reference(String urn)
    : super(
        'azure-native:network:InterconnectGroup',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    etag = registerOutput<String>('etag');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    resourceGuid = registerOutput<String>('resourceGuid');
    scope = registerOutput<String?>('scope');
    subgroupProfile = registerOutput<SubgroupProfileResponse>('subgroupProfile', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SubgroupProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    subgroups = registerOutput<List<SubgroupResponse>>('subgroups', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<SubgroupResponse>(guardedValue, (value) => SubgroupResponse.fromMap((value as Map).cast<String, dynamic>())); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }
}
