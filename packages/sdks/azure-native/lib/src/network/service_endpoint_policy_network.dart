import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_endpoint_policy_args.dart';

/// Service End point policy resource.
///
/// Uses Azure REST API version 2024-05-01. In version 2.x of the Azure Native provider, it used API version 2023-02-01.
///
/// Other available API versions: 2018-07-01, 2018-08-01, 2018-10-01, 2018-11-01, 2018-12-01, 2019-02-01, 2019-04-01, 2019-06-01, 2019-07-01, 2019-08-01, 2019-09-01, 2019-11-01, 2019-12-01, 2020-03-01, 2020-04-01, 2020-05-01, 2020-06-01, 2020-07-01, 2020-08-01, 2020-11-01, 2021-02-01, 2021-03-01, 2021-05-01, 2021-08-01, 2022-01-01, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create service endpoint policy
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var serviceEndpointPolicy = new AzureNative.Network.ServiceEndpointPolicy("serviceEndpointPolicy", new()
///     {
///         Location = "westus",
///         ResourceGroupName = "rg1",
///         ServiceEndpointPolicyName = "testPolicy",
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
/// 		_, err := network.NewServiceEndpointPolicy(ctx, "serviceEndpointPolicy", &network.ServiceEndpointPolicyArgs{
/// 			Location:                  pulumi.String("westus"),
/// 			ResourceGroupName:         pulumi.String("rg1"),
/// 			ServiceEndpointPolicyName: pulumi.String("testPolicy"),
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
/// import com.pulumi.azurenative.network.ServiceEndpointPolicy;
/// import com.pulumi.azurenative.network.ServiceEndpointPolicyArgs;
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
///         var serviceEndpointPolicy = new ServiceEndpointPolicy("serviceEndpointPolicy", ServiceEndpointPolicyArgs.builder()
///             .location("westus")
///             .resourceGroupName("rg1")
///             .serviceEndpointPolicyName("testPolicy")
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
/// const serviceEndpointPolicy = new azure_native.network.ServiceEndpointPolicy("serviceEndpointPolicy", {
///     location: "westus",
///     resourceGroupName: "rg1",
///     serviceEndpointPolicyName: "testPolicy",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// service_endpoint_policy = azure_native.network.ServiceEndpointPolicy("serviceEndpointPolicy",
///     location="westus",
///     resource_group_name="rg1",
///     service_endpoint_policy_name="testPolicy")
///
/// ```
///
/// ```yaml
/// resources:
///   serviceEndpointPolicy:
///     type: azure-native:network:ServiceEndpointPolicy
///     properties:
///       location: westus
///       resourceGroupName: rg1
///       serviceEndpointPolicyName: testPolicy
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create service endpoint policy with definition
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var serviceEndpointPolicy = new AzureNative.Network.ServiceEndpointPolicy("serviceEndpointPolicy", new()
///     {
///         Location = "westus",
///         ResourceGroupName = "rg1",
///         ServiceEndpointPolicyDefinitions = new[]
///         {
///             new AzureNative.Network.Inputs.ServiceEndpointPolicyDefinitionArgs
///             {
///                 Description = "Storage Service EndpointPolicy Definition",
///                 Name = "StorageServiceEndpointPolicyDefinition",
///                 Service = "Microsoft.Storage",
///                 ServiceResources = new[]
///                 {
///                     "/subscriptions/subid1",
///                     "/subscriptions/subid1/resourceGroups/storageRg",
///                     "/subscriptions/subid1/resourceGroups/storageRg/providers/Microsoft.Storage/storageAccounts/stAccount",
///                 },
///             },
///         },
///         ServiceEndpointPolicyName = "testPolicy",
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
/// 		_, err := network.NewServiceEndpointPolicy(ctx, "serviceEndpointPolicy", &network.ServiceEndpointPolicyArgs{
/// 			Location:          pulumi.String("westus"),
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			ServiceEndpointPolicyDefinitions: network.ServiceEndpointPolicyDefinitionTypeArray{
/// 				&network.ServiceEndpointPolicyDefinitionTypeArgs{
/// 					Description: pulumi.String("Storage Service EndpointPolicy Definition"),
/// 					Name:        pulumi.String("StorageServiceEndpointPolicyDefinition"),
/// 					Service:     pulumi.String("Microsoft.Storage"),
/// 					ServiceResources: pulumi.StringArray{
/// 						pulumi.String("/subscriptions/subid1"),
/// 						pulumi.String("/subscriptions/subid1/resourceGroups/storageRg"),
/// 						pulumi.String("/subscriptions/subid1/resourceGroups/storageRg/providers/Microsoft.Storage/storageAccounts/stAccount"),
/// 					},
/// 				},
/// 			},
/// 			ServiceEndpointPolicyName: pulumi.String("testPolicy"),
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
/// import com.pulumi.azurenative.network.ServiceEndpointPolicy;
/// import com.pulumi.azurenative.network.ServiceEndpointPolicyArgs;
/// import com.pulumi.azurenative.network.inputs.ServiceEndpointPolicyDefinitionArgs;
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
///         var serviceEndpointPolicy = new ServiceEndpointPolicy("serviceEndpointPolicy", ServiceEndpointPolicyArgs.builder()
///             .location("westus")
///             .resourceGroupName("rg1")
///             .serviceEndpointPolicyDefinitions(ServiceEndpointPolicyDefinitionArgs.builder()
///                 .description("Storage Service EndpointPolicy Definition")
///                 .name("StorageServiceEndpointPolicyDefinition")
///                 .service("Microsoft.Storage")
///                 .serviceResources(
///                     "/subscriptions/subid1",
///                     "/subscriptions/subid1/resourceGroups/storageRg",
///                     "/subscriptions/subid1/resourceGroups/storageRg/providers/Microsoft.Storage/storageAccounts/stAccount")
///                 .build())
///             .serviceEndpointPolicyName("testPolicy")
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
/// const serviceEndpointPolicy = new azure_native.network.ServiceEndpointPolicy("serviceEndpointPolicy", {
///     location: "westus",
///     resourceGroupName: "rg1",
///     serviceEndpointPolicyDefinitions: [{
///         description: "Storage Service EndpointPolicy Definition",
///         name: "StorageServiceEndpointPolicyDefinition",
///         service: "Microsoft.Storage",
///         serviceResources: [
///             "/subscriptions/subid1",
///             "/subscriptions/subid1/resourceGroups/storageRg",
///             "/subscriptions/subid1/resourceGroups/storageRg/providers/Microsoft.Storage/storageAccounts/stAccount",
///         ],
///     }],
///     serviceEndpointPolicyName: "testPolicy",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// service_endpoint_policy = azure_native.network.ServiceEndpointPolicy("serviceEndpointPolicy",
///     location="westus",
///     resource_group_name="rg1",
///     service_endpoint_policy_definitions=[{
///         "description": "Storage Service EndpointPolicy Definition",
///         "name": "StorageServiceEndpointPolicyDefinition",
///         "service": "Microsoft.Storage",
///         "service_resources": [
///             "/subscriptions/subid1",
///             "/subscriptions/subid1/resourceGroups/storageRg",
///             "/subscriptions/subid1/resourceGroups/storageRg/providers/Microsoft.Storage/storageAccounts/stAccount",
///         ],
///     }],
///     service_endpoint_policy_name="testPolicy")
///
/// ```
///
/// ```yaml
/// resources:
///   serviceEndpointPolicy:
///     type: azure-native:network:ServiceEndpointPolicy
///     properties:
///       location: westus
///       resourceGroupName: rg1
///       serviceEndpointPolicyDefinitions:
///         - description: Storage Service EndpointPolicy Definition
///           name: StorageServiceEndpointPolicyDefinition
///           service: Microsoft.Storage
///           serviceResources:
///             - /subscriptions/subid1
///             - /subscriptions/subid1/resourceGroups/storageRg
///             - /subscriptions/subid1/resourceGroups/storageRg/providers/Microsoft.Storage/storageAccounts/stAccount
///       serviceEndpointPolicyName: testPolicy
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
/// $ pulumi import azure-native:network:ServiceEndpointPolicy testnsg /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/serviceEndpointPolicies/{serviceEndpointPolicyName}
/// ```
class ServiceEndpointPolicyNetwork extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// A collection of contextual service endpoint policy.
  late final pulumi.Output<List<String>?> contextualServiceEndpointPolicies;
  /// A unique read-only string that changes whenever the resource is updated.
  late final pulumi.Output<String> etag;
  /// Kind of service endpoint policy. This is metadata used for the Azure portal experience.
  late final pulumi.Output<String> kind;
  /// Resource location.
  late final pulumi.Output<String?> location;
  /// Resource name.
  late final pulumi.Output<String> name;
  /// The provisioning state of the service endpoint policy resource.
  late final pulumi.Output<String> provisioningState;
  /// The resource GUID property of the service endpoint policy resource.
  late final pulumi.Output<String> resourceGuid;
  /// The alias indicating if the policy belongs to a service
  late final pulumi.Output<String?> serviceAlias;
  /// A collection of service endpoint policy definitions of the service endpoint policy.
  late final pulumi.Output<List<Map<String, dynamic>>?> serviceEndpointPolicyDefinitions;
  /// A collection of references to subnets.
  late final pulumi.Output<List<Map<String, dynamic>>> subnets;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [ServiceEndpointPolicyNetwork].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ServiceEndpointPolicyNetwork]. {@macro pulumi_network_service_endpoint_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ServiceEndpointPolicyNetwork(
    String name, {
    ServiceEndpointPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:network:ServiceEndpointPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    contextualServiceEndpointPolicies = registerOutput<List<String>?>('contextualServiceEndpointPolicies');
    etag = registerOutput<String>('etag');
    kind = registerOutput<String>('kind');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    resourceGuid = registerOutput<String>('resourceGuid');
    serviceAlias = registerOutput<String?>('serviceAlias');
    serviceEndpointPolicyDefinitions = registerOutput<List<Map<String, dynamic>>?>('serviceEndpointPolicyDefinitions');
    subnets = registerOutput<List<Map<String, dynamic>>>('subnets');
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
