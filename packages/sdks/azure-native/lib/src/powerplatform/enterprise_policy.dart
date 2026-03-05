import 'package:pulumi/pulumi.dart' as pulumi;
import 'enterprise_policy_args.dart';
import 'enterprise_policy_identity_response.dart';
import 'properties_response_encryption.dart';
import 'properties_response_lockbox.dart';
import 'properties_response_network_injection.dart';
import 'system_data_response.dart';

/// Definition of the EnterprisePolicy.
///
/// Uses Azure REST API version 2020-10-30-preview. In version 2.x of the Azure Native provider, it used API version 2020-10-30-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or update EnterprisePolicy
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var enterprisePolicy = new AzureNative.PowerPlatform.EnterprisePolicy("enterprisePolicy", new()
///     {
///         EnterprisePolicyName = "enterprisePolicy",
///         Identity = new AzureNative.PowerPlatform.Inputs.EnterprisePolicyIdentityArgs
///         {
///             Type = AzureNative.PowerPlatform.ResourceIdentityType.SystemAssigned,
///         },
///         Kind = AzureNative.PowerPlatform.EnterprisePolicyKind.Lockbox,
///         Location = "East US",
///         ResourceGroupName = "resourceGroup",
///         Tags =
///         {
///             { "Organization", "Administration" },
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
/// 	powerplatform "github.com/pulumi/pulumi-azure-native-sdk/powerplatform/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := powerplatform.NewEnterprisePolicy(ctx, "enterprisePolicy", &powerplatform.EnterprisePolicyArgs{
/// 			EnterprisePolicyName: pulumi.String("enterprisePolicy"),
/// 			Identity: &powerplatform.EnterprisePolicyIdentityArgs{
/// 				Type: powerplatform.ResourceIdentityTypeSystemAssigned,
/// 			},
/// 			Kind:              pulumi.String(powerplatform.EnterprisePolicyKindLockbox),
/// 			Location:          pulumi.String("East US"),
/// 			ResourceGroupName: pulumi.String("resourceGroup"),
/// 			Tags: pulumi.StringMap{
/// 				"Organization": pulumi.String("Administration"),
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
/// import com.pulumi.azurenative.powerplatform.EnterprisePolicy;
/// import com.pulumi.azurenative.powerplatform.EnterprisePolicyArgs;
/// import com.pulumi.azurenative.powerplatform.inputs.EnterprisePolicyIdentityArgs;
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
///         var enterprisePolicy = new EnterprisePolicy("enterprisePolicy", EnterprisePolicyArgs.builder()
///             .enterprisePolicyName("enterprisePolicy")
///             .identity(EnterprisePolicyIdentityArgs.builder()
///                 .type("SystemAssigned")
///                 .build())
///             .kind("Lockbox")
///             .location("East US")
///             .resourceGroupName("resourceGroup")
///             .tags(Map.of("Organization", "Administration"))
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
/// const enterprisePolicy = new azure_native.powerplatform.EnterprisePolicy("enterprisePolicy", {
///     enterprisePolicyName: "enterprisePolicy",
///     identity: {
///         type: azure_native.powerplatform.ResourceIdentityType.SystemAssigned,
///     },
///     kind: azure_native.powerplatform.EnterprisePolicyKind.Lockbox,
///     location: "East US",
///     resourceGroupName: "resourceGroup",
///     tags: {
///         Organization: "Administration",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// enterprise_policy = azure_native.powerplatform.EnterprisePolicy("enterprisePolicy",
///     enterprise_policy_name="enterprisePolicy",
///     identity={
///         "type": azure_native.powerplatform.ResourceIdentityType.SYSTEM_ASSIGNED,
///     },
///     kind=azure_native.powerplatform.EnterprisePolicyKind.LOCKBOX,
///     location="East US",
///     resource_group_name="resourceGroup",
///     tags={
///         "Organization": "Administration",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   enterprisePolicy:
///     type: azure-native:powerplatform:EnterprisePolicy
///     properties:
///       enterprisePolicyName: enterprisePolicy
///       identity:
///         type: SystemAssigned
///       kind: Lockbox
///       location: East US
///       resourceGroupName: resourceGroup
///       tags:
///         Organization: Administration
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
/// $ pulumi import azure-native:powerplatform:EnterprisePolicy enterprisePolicy /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.PowerPlatform/enterprisePolicies/{enterprisePolicyName}
/// ```
class EnterprisePolicy extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The encryption settings for a configuration store.
  late final pulumi.Output<PropertiesResponseEncryption?> encryption;
  /// The health status of the resource.
  late final pulumi.Output<String?> healthStatus;
  /// The identity of the EnterprisePolicy.
  late final pulumi.Output<EnterprisePolicyIdentityResponse?> identity;
  /// The kind (type) of Enterprise Policy.
  late final pulumi.Output<String> kind;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// Settings concerning lockbox.
  late final pulumi.Output<PropertiesResponseLockbox?> lockbox;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Settings concerning network injection.
  late final pulumi.Output<PropertiesResponseNetworkInjection?> networkInjection;
  /// Metadata pertaining to creation and last modification of the resource.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The internally assigned unique identifier of the resource.
  late final pulumi.Output<String> systemId;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [EnterprisePolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EnterprisePolicy]. {@macro pulumi_powerplatform_enterprise_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EnterprisePolicy(
    String name, {
    EnterprisePolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:powerplatform:EnterprisePolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    encryption = registerOutput<PropertiesResponseEncryption?>('encryption', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PropertiesResponseEncryption.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    healthStatus = registerOutput<String?>('healthStatus');
    identity = registerOutput<EnterprisePolicyIdentityResponse?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EnterprisePolicyIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    kind = registerOutput<String>('kind');
    location = registerOutput<String>('location');
    lockbox = registerOutput<PropertiesResponseLockbox?>('lockbox', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PropertiesResponseLockbox.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    networkInjection = registerOutput<PropertiesResponseNetworkInjection?>('networkInjection', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PropertiesResponseNetworkInjection.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemId = registerOutput<String>('systemId');
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
