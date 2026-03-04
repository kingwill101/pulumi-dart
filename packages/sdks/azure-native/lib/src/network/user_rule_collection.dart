import 'package:pulumi/pulumi.dart' as pulumi;
import 'system_data_response.dart';
import 'user_rule_collection_args.dart';

/// Defines the user rule collection.
///
/// Uses Azure REST API version 2022-04-01-preview. In version 2.x of the Azure Native provider, it used API version 2022-04-01-preview.
///
/// Other available API versions: 2021-02-01-preview, 2022-02-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or Update a User Rule Collection
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var userRuleCollection = new AzureNative.Network.UserRuleCollection("userRuleCollection", new()
///     {
///         AppliesToGroups = new[]
///         {
///             new AzureNative.Network.Inputs.NetworkManagerSecurityGroupItemArgs
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
/// 		_, err := network.NewUserRuleCollection(ctx, "userRuleCollection", &network.UserRuleCollectionArgs{
/// 			AppliesToGroups: network.NetworkManagerSecurityGroupItemArray{
/// 				&network.NetworkManagerSecurityGroupItemArgs{
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.network.UserRuleCollection;
/// import com.pulumi.azurenative.network.UserRuleCollectionArgs;
/// import com.pulumi.azurenative.network.inputs.NetworkManagerSecurityGroupItemArgs;
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
///         var userRuleCollection = new UserRuleCollection("userRuleCollection", UserRuleCollectionArgs.builder()
///             .appliesToGroups(NetworkManagerSecurityGroupItemArgs.builder()
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
/// const userRuleCollection = new azure_native.network.UserRuleCollection("userRuleCollection", {
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
/// user_rule_collection = azure_native.network.UserRuleCollection("userRuleCollection",
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
///   userRuleCollection:
///     type: azure-native:network:UserRuleCollection
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
/// $ pulumi import azure-native:network:UserRuleCollection myTestSecurityConfig /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/networkManagers/{networkManagerName}/securityUserConfigurations/{configurationName}/ruleCollections/{ruleCollectionName}
/// ```
class UserRuleCollection extends pulumi.CustomResource {
  /// Groups for configuration
  late final pulumi.Output<List<Map<String, dynamic>>> appliesToGroups;

  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// A description of the user rule collection.
  late final pulumi.Output<String?> description;

  /// A unique read-only string that changes whenever the resource is updated.
  late final pulumi.Output<String> etag;

  /// Resource name.
  late final pulumi.Output<String> name;

  /// The provisioning state of the resource.
  late final pulumi.Output<String> provisioningState;

  /// The system metadata related to this resource.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [UserRuleCollection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [UserRuleCollection]. {@macro pulumi_network_user_rule_collection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  UserRuleCollection(
    String name, {
    UserRuleCollectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:network:UserRuleCollection',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    appliesToGroups = registerOutput<List<Map<String, dynamic>>>(
      'appliesToGroups',
    );
    azureApiVersion = registerOutput<String>('azureApiVersion');
    description = registerOutput<String?>('description');
    etag = registerOutput<String>('etag');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData');
    type = registerOutput<String>('type');
  }
}
