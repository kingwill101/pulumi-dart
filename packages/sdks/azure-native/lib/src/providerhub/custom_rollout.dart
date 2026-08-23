import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_rollout_args.dart';
import 'custom_rollout_properties_response.dart';
import 'system_data_response.dart';

/// Concrete proxy resource types can be created by aliasing this type using a specific property type.
///
/// Uses Azure REST API version 2024-09-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### CustomRollouts_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var customRollout = new AzureNative.ProviderHub.CustomRollout("customRollout", new()
///     {
///         Properties = new AzureNative.ProviderHub.Inputs.CustomRolloutPropertiesArgs
///         {
///             Specification = new AzureNative.ProviderHub.Inputs.CustomRolloutPropertiesSpecificationArgs
///             {
///                 AutoProvisionConfig = new AzureNative.ProviderHub.Inputs.CustomRolloutSpecificationAutoProvisionConfigArgs
///                 {
///                     ResourceGraph = true,
///                     Storage = true,
///                 },
///                 Canary = new AzureNative.ProviderHub.Inputs.CustomRolloutSpecificationCanaryArgs
///                 {
///                     Regions = new[]
///                     {
///                         "brazilus",
///                     },
///                 },
///                 RefreshSubscriptionRegistration = true,
///             },
///         },
///         ProviderNamespace = "Microsoft.Contoso",
///         RolloutName = "brazilUsShoeBoxTesting",
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
/// 	providerhub "github.com/pulumi/pulumi-azure-native-sdk/providerhub/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := providerhub.NewCustomRollout(ctx, "customRollout", &providerhub.CustomRolloutArgs{
/// 			Properties: &providerhub.CustomRolloutPropertiesArgs{
/// 				Specification: &providerhub.CustomRolloutPropertiesSpecificationArgs{
/// 					AutoProvisionConfig: &providerhub.CustomRolloutSpecificationAutoProvisionConfigArgs{
/// 						ResourceGraph: pulumi.Bool(true),
/// 						Storage:       pulumi.Bool(true),
/// 					},
/// 					Canary: &providerhub.CustomRolloutSpecificationCanaryArgs{
/// 						Regions: pulumi.StringArray{
/// 							pulumi.String("brazilus"),
/// 						},
/// 					},
/// 					RefreshSubscriptionRegistration: pulumi.Bool(true),
/// 				},
/// 			},
/// 			ProviderNamespace: pulumi.String("Microsoft.Contoso"),
/// 			RolloutName:       pulumi.String("brazilUsShoeBoxTesting"),
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
/// resource "azure-native_providerhub_customrollout" "customRollout" {
///   properties = {
///     specification = {
///       auto_provision_config = {
///         resource_graph = true
///         storage        = true
///       }
///       canary = {
///         regions = ["brazilus"]
///       }
///       refresh_subscription_registration = true
///     }
///   }
///   provider_namespace = "Microsoft.Contoso"
///   rollout_name       = "brazilUsShoeBoxTesting"
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
/// import com.pulumi.azurenative.providerhub.CustomRollout;
/// import com.pulumi.azurenative.providerhub.CustomRolloutArgs;
/// import com.pulumi.azurenative.providerhub.inputs.CustomRolloutPropertiesArgs;
/// import com.pulumi.azurenative.providerhub.inputs.CustomRolloutPropertiesSpecificationArgs;
/// import com.pulumi.azurenative.providerhub.inputs.CustomRolloutSpecificationAutoProvisionConfigArgs;
/// import com.pulumi.azurenative.providerhub.inputs.CustomRolloutSpecificationCanaryArgs;
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
///         var customRollout = new CustomRollout("customRollout", CustomRolloutArgs.builder()
///             .properties(CustomRolloutPropertiesArgs.builder()
///                 .specification(CustomRolloutPropertiesSpecificationArgs.builder()
///                     .autoProvisionConfig(CustomRolloutSpecificationAutoProvisionConfigArgs.builder()
///                         .resourceGraph(true)
///                         .storage(true)
///                         .build())
///                     .canary(CustomRolloutSpecificationCanaryArgs.builder()
///                         .regions("brazilus")
///                         .build())
///                     .refreshSubscriptionRegistration(true)
///                     .build())
///                 .build())
///             .providerNamespace("Microsoft.Contoso")
///             .rolloutName("brazilUsShoeBoxTesting")
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
/// const customRollout = new azure_native.providerhub.CustomRollout("customRollout", {
///     properties: {
///         specification: {
///             autoProvisionConfig: {
///                 resourceGraph: true,
///                 storage: true,
///             },
///             canary: {
///                 regions: ["brazilus"],
///             },
///             refreshSubscriptionRegistration: true,
///         },
///     },
///     providerNamespace: "Microsoft.Contoso",
///     rolloutName: "brazilUsShoeBoxTesting",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// custom_rollout = azure_native.providerhub.CustomRollout("customRollout",
///     properties={
///         "specification": {
///             "auto_provision_config": {
///                 "resource_graph": True,
///                 "storage": True,
///             },
///             "canary": {
///                 "regions": ["brazilus"],
///             },
///             "refresh_subscription_registration": True,
///         },
///     },
///     provider_namespace="Microsoft.Contoso",
///     rollout_name="brazilUsShoeBoxTesting")
///
/// ```
///
/// ```yaml
/// resources:
///   customRollout:
///     type: azure-native:providerhub:CustomRollout
///     properties:
///       properties:
///         specification:
///           autoProvisionConfig:
///             resourceGraph: true
///             storage: true
///           canary:
///             regions:
///               - brazilus
///           refreshSubscriptionRegistration: true
///       providerNamespace: Microsoft.Contoso
///       rolloutName: brazilUsShoeBoxTesting
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
/// $ pulumi import azure-native:providerhub:CustomRollout Microsoft.Contoso/brazilUsShoeBoxTesting /subscriptions/{subscriptionId}/providers/Microsoft.ProviderHub/providerRegistrations/{providerNamespace}/customRollouts/{rolloutName}
/// ```
class CustomRollout extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Properties of the rollout.
  late final pulumi.Output<CustomRolloutPropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [CustomRollout].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CustomRollout]. {@macro pulumi_providerhub_custom_rollout_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CustomRollout(
    String name, {
    CustomRolloutArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:providerhub:CustomRollout',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<CustomRolloutPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CustomRolloutPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
