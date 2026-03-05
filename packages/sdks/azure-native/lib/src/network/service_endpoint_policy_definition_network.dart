import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_endpoint_policy_definition_args.dart';

/// Service Endpoint policy definitions.
///
/// Uses Azure REST API version 2024-05-01. In version 2.x of the Azure Native provider, it used API version 2023-02-01.
///
/// Other available API versions: 2018-07-01, 2018-08-01, 2018-10-01, 2018-11-01, 2018-12-01, 2019-02-01, 2019-04-01, 2019-06-01, 2019-07-01, 2019-08-01, 2019-09-01, 2019-11-01, 2019-12-01, 2020-03-01, 2020-04-01, 2020-05-01, 2020-06-01, 2020-07-01, 2020-08-01, 2020-11-01, 2021-02-01, 2021-03-01, 2021-05-01, 2021-08-01, 2022-01-01, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create service endpoint policy definition
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var serviceEndpointPolicyDefinition = new AzureNative.Network.ServiceEndpointPolicyDefinition("serviceEndpointPolicyDefinition", new()
///     {
///         Description = "Storage Service EndpointPolicy Definition",
///         ResourceGroupName = "rg1",
///         Service = "Microsoft.Storage",
///         ServiceEndpointPolicyDefinitionName = "testDefinition",
///         ServiceEndpointPolicyName = "testPolicy",
///         ServiceResources = new[]
///         {
///             "/subscriptions/subid1",
///             "/subscriptions/subid1/resourceGroups/storageRg",
///             "/subscriptions/subid1/resourceGroups/storageRg/providers/Microsoft.Storage/storageAccounts/stAccount",
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
/// 		_, err := network.NewServiceEndpointPolicyDefinition(ctx, "serviceEndpointPolicyDefinition", &network.ServiceEndpointPolicyDefinitionArgs{
/// 			Description:                         pulumi.String("Storage Service EndpointPolicy Definition"),
/// 			ResourceGroupName:                   pulumi.String("rg1"),
/// 			Service:                             pulumi.String("Microsoft.Storage"),
/// 			ServiceEndpointPolicyDefinitionName: pulumi.String("testDefinition"),
/// 			ServiceEndpointPolicyName:           pulumi.String("testPolicy"),
/// 			ServiceResources: pulumi.StringArray{
/// 				pulumi.String("/subscriptions/subid1"),
/// 				pulumi.String("/subscriptions/subid1/resourceGroups/storageRg"),
/// 				pulumi.String("/subscriptions/subid1/resourceGroups/storageRg/providers/Microsoft.Storage/storageAccounts/stAccount"),
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
/// import com.pulumi.azurenative.network.ServiceEndpointPolicyDefinition;
/// import com.pulumi.azurenative.network.ServiceEndpointPolicyDefinitionArgs;
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
///         var serviceEndpointPolicyDefinition = new ServiceEndpointPolicyDefinition("serviceEndpointPolicyDefinition", ServiceEndpointPolicyDefinitionArgs.builder()
///             .description("Storage Service EndpointPolicy Definition")
///             .resourceGroupName("rg1")
///             .service("Microsoft.Storage")
///             .serviceEndpointPolicyDefinitionName("testDefinition")
///             .serviceEndpointPolicyName("testPolicy")
///             .serviceResources(
///                 "/subscriptions/subid1",
///                 "/subscriptions/subid1/resourceGroups/storageRg",
///                 "/subscriptions/subid1/resourceGroups/storageRg/providers/Microsoft.Storage/storageAccounts/stAccount")
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
/// const serviceEndpointPolicyDefinition = new azure_native.network.ServiceEndpointPolicyDefinition("serviceEndpointPolicyDefinition", {
///     description: "Storage Service EndpointPolicy Definition",
///     resourceGroupName: "rg1",
///     service: "Microsoft.Storage",
///     serviceEndpointPolicyDefinitionName: "testDefinition",
///     serviceEndpointPolicyName: "testPolicy",
///     serviceResources: [
///         "/subscriptions/subid1",
///         "/subscriptions/subid1/resourceGroups/storageRg",
///         "/subscriptions/subid1/resourceGroups/storageRg/providers/Microsoft.Storage/storageAccounts/stAccount",
///     ],
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// service_endpoint_policy_definition = azure_native.network.ServiceEndpointPolicyDefinition("serviceEndpointPolicyDefinition",
///     description="Storage Service EndpointPolicy Definition",
///     resource_group_name="rg1",
///     service="Microsoft.Storage",
///     service_endpoint_policy_definition_name="testDefinition",
///     service_endpoint_policy_name="testPolicy",
///     service_resources=[
///         "/subscriptions/subid1",
///         "/subscriptions/subid1/resourceGroups/storageRg",
///         "/subscriptions/subid1/resourceGroups/storageRg/providers/Microsoft.Storage/storageAccounts/stAccount",
///     ])
///
/// ```
///
/// ```yaml
/// resources:
///   serviceEndpointPolicyDefinition:
///     type: azure-native:network:ServiceEndpointPolicyDefinition
///     properties:
///       description: Storage Service EndpointPolicy Definition
///       resourceGroupName: rg1
///       service: Microsoft.Storage
///       serviceEndpointPolicyDefinitionName: testDefinition
///       serviceEndpointPolicyName: testPolicy
///       serviceResources:
///         - /subscriptions/subid1
///         - /subscriptions/subid1/resourceGroups/storageRg
///         - /subscriptions/subid1/resourceGroups/storageRg/providers/Microsoft.Storage/storageAccounts/stAccount
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
/// $ pulumi import azure-native:network:ServiceEndpointPolicyDefinition testDefinition /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/serviceEndpointPolicies/{serviceEndpointPolicyName}/serviceEndpointPolicyDefinitions/{serviceEndpointPolicyDefinitionName}
/// ```
class ServiceEndpointPolicyDefinitionNetwork extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// A description for this rule. Restricted to 140 chars.
  late final pulumi.Output<String?> description;
  /// A unique read-only string that changes whenever the resource is updated.
  late final pulumi.Output<String> etag;
  /// The name of the resource that is unique within a resource group. This name can be used to access the resource.
  late final pulumi.Output<String?> name;
  /// The provisioning state of the service endpoint policy definition resource.
  late final pulumi.Output<String> provisioningState;
  /// Service endpoint name.
  late final pulumi.Output<String?> service;
  /// A list of service resources.
  late final pulumi.Output<List<String>?> serviceResources;
  /// The type of the resource.
  late final pulumi.Output<String?> type;

  /// Creates a new [ServiceEndpointPolicyDefinitionNetwork].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ServiceEndpointPolicyDefinitionNetwork]. {@macro pulumi_network_service_endpoint_policy_definition_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ServiceEndpointPolicyDefinitionNetwork(
    String name, {
    ServiceEndpointPolicyDefinitionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:network:ServiceEndpointPolicyDefinition',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    description = registerOutput<String?>('description');
    etag = registerOutput<String>('etag');
    this.name = registerOutput<String?>('name');
    provisioningState = registerOutput<String>('provisioningState');
    service = registerOutput<String?>('service');
    serviceResources = registerOutput<List<String>?>('serviceResources');
    type = registerOutput<String?>('type');
  }
}
