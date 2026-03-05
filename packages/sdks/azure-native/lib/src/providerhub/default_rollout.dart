import 'package:pulumi/pulumi.dart' as pulumi;
import 'default_rollout_args.dart';
import 'default_rollout_properties_response.dart';
import 'system_data_response.dart';

/// Concrete proxy resource types can be created by aliasing this type using a specific property type.
///
/// Uses Azure REST API version 2024-09-01. In version 2.x of the Azure Native provider, it used API version 2021-09-01-preview.
///
/// Other available API versions: 2021-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native providerhub [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### DefaultRollouts_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var defaultRollout = new AzureNative.ProviderHub.DefaultRollout("defaultRollout", new()
///     {
///         Properties = new AzureNative.ProviderHub.Inputs.DefaultRolloutPropertiesArgs
///         {
///             Specification = new AzureNative.ProviderHub.Inputs.DefaultRolloutPropertiesSpecificationArgs
///             {
///                 Canary = new AzureNative.ProviderHub.Inputs.DefaultRolloutSpecificationCanaryArgs
///                 {
///                     SkipRegions = new[]
///                     {
///                         "eastus2euap",
///                     },
///                 },
///                 ExpeditedRollout = new AzureNative.ProviderHub.Inputs.DefaultRolloutSpecificationExpeditedRolloutArgs
///                 {
///                     Enabled = true,
///                 },
///                 RestOfTheWorldGroupTwo = new AzureNative.ProviderHub.Inputs.DefaultRolloutSpecificationRestOfTheWorldGroupTwoArgs
///                 {
///                     WaitDuration = "PT4H",
///                 },
///             },
///         },
///         ProviderNamespace = "Microsoft.Contoso",
///         RolloutName = "2020week10",
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
/// 		_, err := providerhub.NewDefaultRollout(ctx, "defaultRollout", &providerhub.DefaultRolloutArgs{
/// 			Properties: &providerhub.DefaultRolloutPropertiesArgs{
/// 				Specification: &providerhub.DefaultRolloutPropertiesSpecificationArgs{
/// 					Canary: &providerhub.DefaultRolloutSpecificationCanaryArgs{
/// 						SkipRegions: pulumi.StringArray{
/// 							pulumi.String("eastus2euap"),
/// 						},
/// 					},
/// 					ExpeditedRollout: &providerhub.DefaultRolloutSpecificationExpeditedRolloutArgs{
/// 						Enabled: pulumi.Bool(true),
/// 					},
/// 					RestOfTheWorldGroupTwo: &providerhub.DefaultRolloutSpecificationRestOfTheWorldGroupTwoArgs{
/// 						WaitDuration: pulumi.String("PT4H"),
/// 					},
/// 				},
/// 			},
/// 			ProviderNamespace: pulumi.String("Microsoft.Contoso"),
/// 			RolloutName:       pulumi.String("2020week10"),
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
/// import com.pulumi.azurenative.providerhub.DefaultRollout;
/// import com.pulumi.azurenative.providerhub.DefaultRolloutArgs;
/// import com.pulumi.azurenative.providerhub.inputs.DefaultRolloutPropertiesArgs;
/// import com.pulumi.azurenative.providerhub.inputs.DefaultRolloutPropertiesSpecificationArgs;
/// import com.pulumi.azurenative.providerhub.inputs.DefaultRolloutSpecificationCanaryArgs;
/// import com.pulumi.azurenative.providerhub.inputs.DefaultRolloutSpecificationExpeditedRolloutArgs;
/// import com.pulumi.azurenative.providerhub.inputs.DefaultRolloutSpecificationRestOfTheWorldGroupTwoArgs;
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
///         var defaultRollout = new DefaultRollout("defaultRollout", DefaultRolloutArgs.builder()
///             .properties(DefaultRolloutPropertiesArgs.builder()
///                 .specification(DefaultRolloutPropertiesSpecificationArgs.builder()
///                     .canary(DefaultRolloutSpecificationCanaryArgs.builder()
///                         .skipRegions("eastus2euap")
///                         .build())
///                     .expeditedRollout(DefaultRolloutSpecificationExpeditedRolloutArgs.builder()
///                         .enabled(true)
///                         .build())
///                     .restOfTheWorldGroupTwo(DefaultRolloutSpecificationRestOfTheWorldGroupTwoArgs.builder()
///                         .waitDuration("PT4H")
///                         .build())
///                     .build())
///                 .build())
///             .providerNamespace("Microsoft.Contoso")
///             .rolloutName("2020week10")
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
/// const defaultRollout = new azure_native.providerhub.DefaultRollout("defaultRollout", {
///     properties: {
///         specification: {
///             canary: {
///                 skipRegions: ["eastus2euap"],
///             },
///             expeditedRollout: {
///                 enabled: true,
///             },
///             restOfTheWorldGroupTwo: {
///                 waitDuration: "PT4H",
///             },
///         },
///     },
///     providerNamespace: "Microsoft.Contoso",
///     rolloutName: "2020week10",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// default_rollout = azure_native.providerhub.DefaultRollout("defaultRollout",
///     properties={
///         "specification": {
///             "canary": {
///                 "skip_regions": ["eastus2euap"],
///             },
///             "expedited_rollout": {
///                 "enabled": True,
///             },
///             "rest_of_the_world_group_two": {
///                 "wait_duration": "PT4H",
///             },
///         },
///     },
///     provider_namespace="Microsoft.Contoso",
///     rollout_name="2020week10")
///
/// ```
///
/// ```yaml
/// resources:
///   defaultRollout:
///     type: azure-native:providerhub:DefaultRollout
///     properties:
///       properties:
///         specification:
///           canary:
///             skipRegions:
///               - eastus2euap
///           expeditedRollout:
///             enabled: true
///           restOfTheWorldGroupTwo:
///             waitDuration: PT4H
///       providerNamespace: Microsoft.Contoso
///       rolloutName: 2020week10
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
/// $ pulumi import azure-native:providerhub:DefaultRollout Microsoft.Contoso/2020week10 /subscriptions/{subscriptionId}/providers/Microsoft.ProviderHub/providerRegistrations/{providerNamespace}/defaultRollouts/{rolloutName}
/// ```
class DefaultRollout extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Properties of the rollout.
  late final pulumi.Output<DefaultRolloutPropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [DefaultRollout].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DefaultRollout]. {@macro pulumi_providerhub_default_rollout_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DefaultRollout(
    String name, {
    DefaultRolloutArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:providerhub:DefaultRollout',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<DefaultRolloutPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DefaultRolloutPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
