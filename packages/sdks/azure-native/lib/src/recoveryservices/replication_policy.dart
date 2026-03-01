import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_properties_response.dart';
import 'replication_policy_args.dart';

/// Protection profile details.
///
/// Uses Azure REST API version 2024-10-01. In version 2.x of the Azure Native provider, it used API version 2023-04-01.
///
/// Other available API versions: 2023-02-01, 2023-04-01, 2023-06-01, 2023-08-01, 2024-01-01, 2024-02-01, 2024-04-01, 2025-01-01, 2025-02-01, 2025-08-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native recoveryservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Creates the policy.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var replicationPolicy = new AzureNative.RecoveryServices.ReplicationPolicy("replicationPolicy", new()
///     {
///         PolicyName = "protectionprofile1",
///         Properties = new AzureNative.RecoveryServices.Inputs.CreatePolicyInputPropertiesArgs
///         {
///             ProviderSpecificInput = new AzureNative.RecoveryServices.Inputs.HyperVReplicaAzurePolicyInputArgs
///             {
///                 InstanceType = "HyperVReplicaAzure",
///             },
///         },
///         ResourceGroupName = "resourceGroupPS1",
///         ResourceName = "vault1",
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
/// 	recoveryservices "github.com/pulumi/pulumi-azure-native-sdk/recoveryservices/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := recoveryservices.NewReplicationPolicy(ctx, "replicationPolicy", &recoveryservices.ReplicationPolicyArgs{
/// 			PolicyName: pulumi.String("protectionprofile1"),
/// 			Properties: &recoveryservices.CreatePolicyInputPropertiesArgs{
/// 				ProviderSpecificInput: recoveryservices.HyperVReplicaAzurePolicyInput{
/// 					InstanceType: "HyperVReplicaAzure",
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("resourceGroupPS1"),
/// 			ResourceName:      pulumi.String("vault1"),
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
/// import com.pulumi.azurenative.recoveryservices.ReplicationPolicy;
/// import com.pulumi.azurenative.recoveryservices.ReplicationPolicyArgs;
/// import com.pulumi.azurenative.recoveryservices.inputs.CreatePolicyInputPropertiesArgs;
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
///         var replicationPolicy = new ReplicationPolicy("replicationPolicy", ReplicationPolicyArgs.builder()
///             .policyName("protectionprofile1")
///             .properties(CreatePolicyInputPropertiesArgs.builder()
///                 .providerSpecificInput(HyperVReplicaAzurePolicyInputArgs.builder()
///                     .instanceType("HyperVReplicaAzure")
///                     .build())
///                 .build())
///             .resourceGroupName("resourceGroupPS1")
///             .resourceName("vault1")
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
/// const replicationPolicy = new azure_native.recoveryservices.ReplicationPolicy("replicationPolicy", {
///     policyName: "protectionprofile1",
///     properties: {
///         providerSpecificInput: {
///             instanceType: "HyperVReplicaAzure",
///         },
///     },
///     resourceGroupName: "resourceGroupPS1",
///     resourceName: "vault1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// replication_policy = azure_native.recoveryservices.ReplicationPolicy("replicationPolicy",
///     policy_name="protectionprofile1",
///     properties={
///         "provider_specific_input": {
///             "instance_type": "HyperVReplicaAzure",
///         },
///     },
///     resource_group_name="resourceGroupPS1",
///     resource_name_="vault1")
///
/// ```
///
/// ```yaml
/// resources:
///   replicationPolicy:
///     type: azure-native:recoveryservices:ReplicationPolicy
///     properties:
///       policyName: protectionprofile1
///       properties:
///         providerSpecificInput:
///           instanceType: HyperVReplicaAzure
///       resourceGroupName: resourceGroupPS1
///       resourceName: vault1
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
/// $ pulumi import azure-native:recoveryservices:ReplicationPolicy protectionprofile1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.RecoveryServices/vaults/{resourceName}/replicationPolicies/{policyName}
/// ```
class ReplicationPolicy extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Resource Location
  late final pulumi.Output<String?> location;
  /// Resource Name
  late final pulumi.Output<String> name;
  /// The custom data.
  late final pulumi.Output<PolicyPropertiesResponse> properties;
  /// Resource Type
  late final pulumi.Output<String> type;

  /// Creates a new [ReplicationPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ReplicationPolicy]. {@macro pulumi_recoveryservices_replication_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ReplicationPolicy(
    String name, {
    ReplicationPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:recoveryservices:ReplicationPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    this.properties = registerOutput<PolicyPropertiesResponse>('properties');
    this.type = registerOutput<String>('type');
  }
}
