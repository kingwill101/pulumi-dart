import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_user_rule_collection_args.dart';
import 'system_data_response.dart';

/// Defines the security user rule collection.
///
/// Uses Azure REST API version 2024-05-01. In version 2.x of the Azure Native provider, it used API version 2024-03-01.
///
/// Other available API versions: 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or Update a Security User Rule Collection
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var securityUserRuleCollection = new AzureNative.Network.SecurityUserRuleCollection("securityUserRuleCollection", new()
///     {
///         AppliesToGroups = new[]
///         {
///             new AzureNative.Network.Inputs.SecurityUserGroupItemArgs
///             {
///                 NetworkGroupId = "/subscriptions/subId/resourceGroups/rg1/providers/Microsoft.Network/networkManagers/testNetworkManager/networkGroups/testGroup",
///             },
///         },
///         ConfigurationName = "myTestSecurityConfig",
///         Description = "A sample policy",
///         NetworkManagerName = "testNetworkManager",
///         ResourceGroupName = "rg1",
///         RuleCollectionName = "testRuleCollection",
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
/// 		_, err := network.NewSecurityUserRuleCollection(ctx, "securityUserRuleCollection", &network.SecurityUserRuleCollectionArgs{
/// 			AppliesToGroups: network.SecurityUserGroupItemArray{
/// 				&network.SecurityUserGroupItemArgs{
/// 					NetworkGroupId: pulumi.String("/subscriptions/subId/resourceGroups/rg1/providers/Microsoft.Network/networkManagers/testNetworkManager/networkGroups/testGroup"),
/// 				},
/// 			},
/// 			ConfigurationName:  pulumi.String("myTestSecurityConfig"),
/// 			Description:        pulumi.String("A sample policy"),
/// 			NetworkManagerName: pulumi.String("testNetworkManager"),
/// 			ResourceGroupName:  pulumi.String("rg1"),
/// 			RuleCollectionName: pulumi.String("testRuleCollection"),
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
/// resource "azure-native_network_securityuserrulecollection" "securityUserRuleCollection" {
///   applies_to_groups {
///     network_group_id = "/subscriptions/subId/resourceGroups/rg1/providers/Microsoft.Network/networkManagers/testNetworkManager/networkGroups/testGroup"
///   }
///   configuration_name   = "myTestSecurityConfig"
///   description          = "A sample policy"
///   network_manager_name = "testNetworkManager"
///   resource_group_name  = "rg1"
///   rule_collection_name = "testRuleCollection"
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
/// import com.pulumi.azurenative.network.SecurityUserRuleCollection;
/// import com.pulumi.azurenative.network.SecurityUserRuleCollectionArgs;
/// import com.pulumi.azurenative.network.inputs.SecurityUserGroupItemArgs;
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
///         var securityUserRuleCollection = new SecurityUserRuleCollection("securityUserRuleCollection", SecurityUserRuleCollectionArgs.builder()
///             .appliesToGroups(SecurityUserGroupItemArgs.builder()
///                 .networkGroupId("/subscriptions/subId/resourceGroups/rg1/providers/Microsoft.Network/networkManagers/testNetworkManager/networkGroups/testGroup")
///                 .build())
///             .configurationName("myTestSecurityConfig")
///             .description("A sample policy")
///             .networkManagerName("testNetworkManager")
///             .resourceGroupName("rg1")
///             .ruleCollectionName("testRuleCollection")
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
/// const securityUserRuleCollection = new azure_native.network.SecurityUserRuleCollection("securityUserRuleCollection", {
///     appliesToGroups: [{
///         networkGroupId: "/subscriptions/subId/resourceGroups/rg1/providers/Microsoft.Network/networkManagers/testNetworkManager/networkGroups/testGroup",
///     }],
///     configurationName: "myTestSecurityConfig",
///     description: "A sample policy",
///     networkManagerName: "testNetworkManager",
///     resourceGroupName: "rg1",
///     ruleCollectionName: "testRuleCollection",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// security_user_rule_collection = azure_native.network.SecurityUserRuleCollection("securityUserRuleCollection",
///     applies_to_groups=[{
///         "network_group_id": "/subscriptions/subId/resourceGroups/rg1/providers/Microsoft.Network/networkManagers/testNetworkManager/networkGroups/testGroup",
///     }],
///     configuration_name="myTestSecurityConfig",
///     description="A sample policy",
///     network_manager_name="testNetworkManager",
///     resource_group_name="rg1",
///     rule_collection_name="testRuleCollection")
///
/// ```
///
/// ```yaml
/// resources:
///   securityUserRuleCollection:
///     type: azure-native:network:SecurityUserRuleCollection
///     properties:
///       appliesToGroups:
///         - networkGroupId: /subscriptions/subId/resourceGroups/rg1/providers/Microsoft.Network/networkManagers/testNetworkManager/networkGroups/testGroup
///       configurationName: myTestSecurityConfig
///       description: A sample policy
///       networkManagerName: testNetworkManager
///       resourceGroupName: rg1
///       ruleCollectionName: testRuleCollection
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
/// $ pulumi import azure-native:network:SecurityUserRuleCollection myTestSecurityConfig /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/networkManagers/{networkManagerName}/securityUserConfigurations/{configurationName}/ruleCollections/{ruleCollectionName}
/// ```
class SecurityUserRuleCollection extends pulumi.CustomResource {
  /// Groups for configuration
  late final pulumi.Output<List<Map<String, dynamic>>> appliesToGroups;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// A description of the security user rule collection.
  late final pulumi.Output<String?> description;
  /// A unique read-only string that changes whenever the resource is updated.
  late final pulumi.Output<String> etag;
  /// Resource name.
  late final pulumi.Output<String> name;
  /// The provisioning state of the resource.
  late final pulumi.Output<String> provisioningState;
  /// Unique identifier for this resource.
  late final pulumi.Output<String> resourceGuid;
  /// The system metadata related to this resource.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [SecurityUserRuleCollection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SecurityUserRuleCollection]. {@macro pulumi_network_security_user_rule_collection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SecurityUserRuleCollection(
    String name, {
    SecurityUserRuleCollectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:network:SecurityUserRuleCollection',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    appliesToGroups = registerOutput<List<Map<String, dynamic>>>('appliesToGroups');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    description = registerOutput<String?>('description');
    etag = registerOutput<String>('etag');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    resourceGuid = registerOutput<String>('resourceGuid');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
