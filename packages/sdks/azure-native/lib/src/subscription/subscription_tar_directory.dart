import 'package:pulumi/pulumi.dart' as pulumi;
import 'subscription_tar_directory_args.dart';
import 'target_directory_result_properties_response.dart';

/// Subscription Response for Changed Target Directory.
///
/// Uses Azure REST API version 2024-08-01-preview. In version 2.x of the Azure Native provider, it used API version 2024-08-01-preview.
///
/// Other available API versions: 2025-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native subscription [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### putTargetDirectory
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var subscriptionTarDirectory = new AzureNative.Subscription.SubscriptionTarDirectory("subscriptionTarDirectory", new()
///     {
///         Properties = new AzureNative.Subscription.Inputs.TargetDirectoryRequestPropertiesArgs
///         {
///             DestinationOwnerId = "abhaypratap@live.com",
///             DestinationTenantId = "111a82eb-4c7b-48bb-962b-49363c510130",
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
/// 	subscription "github.com/pulumi/pulumi-azure-native-sdk/subscription/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := subscription.NewSubscriptionTarDirectory(ctx, "subscriptionTarDirectory", &subscription.SubscriptionTarDirectoryArgs{
/// 			Properties: &subscription.TargetDirectoryRequestPropertiesArgs{
/// 				DestinationOwnerId:  pulumi.String("abhaypratap@live.com"),
/// 				DestinationTenantId: pulumi.String("111a82eb-4c7b-48bb-962b-49363c510130"),
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
/// resource "azure-native_subscription_subscriptiontardirectory" "subscriptionTarDirectory" {
///   properties = {
///     destination_owner_id  = "abhaypratap@live.com"
///     destination_tenant_id = "111a82eb-4c7b-48bb-962b-49363c510130"
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
/// import com.pulumi.azurenative.subscription.SubscriptionTarDirectory;
/// import com.pulumi.azurenative.subscription.SubscriptionTarDirectoryArgs;
/// import com.pulumi.azurenative.subscription.inputs.TargetDirectoryRequestPropertiesArgs;
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
///         var subscriptionTarDirectory = new SubscriptionTarDirectory("subscriptionTarDirectory", SubscriptionTarDirectoryArgs.builder()
///             .properties(TargetDirectoryRequestPropertiesArgs.builder()
///                 .destinationOwnerId("abhaypratap@live.com")
///                 .destinationTenantId("111a82eb-4c7b-48bb-962b-49363c510130")
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
/// const subscriptionTarDirectory = new azure_native.subscription.SubscriptionTarDirectory("subscriptionTarDirectory", {properties: {
///     destinationOwnerId: "abhaypratap@live.com",
///     destinationTenantId: "111a82eb-4c7b-48bb-962b-49363c510130",
/// }});
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// subscription_tar_directory = azure_native.subscription.SubscriptionTarDirectory("subscriptionTarDirectory", properties={
///     "destination_owner_id": "abhaypratap@live.com",
///     "destination_tenant_id": "111a82eb-4c7b-48bb-962b-49363c510130",
/// })
///
/// ```
///
/// ```yaml
/// resources:
///   subscriptionTarDirectory:
///     type: azure-native:subscription:SubscriptionTarDirectory
///     properties:
///       properties:
///         destinationOwnerId: abhaypratap@live.com
///         destinationTenantId: 111a82eb-4c7b-48bb-962b-49363c510130
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
/// $ pulumi import azure-native:subscription:SubscriptionTarDirectory default /subscriptions/{subscriptionId}/providers/Microsoft.Subscription/changeTenantRequest/default
/// ```
class SubscriptionTarDirectory extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Subscription Name.
  late final pulumi.Output<String> name;
  /// Subscription Changed Target Directory response properties.
  late final pulumi.Output<TargetDirectoryResultPropertiesResponse> properties;
  /// Resource type, Microsoft.Subscription/changeTenantRequest.
  late final pulumi.Output<String> type;

  /// Creates a new [SubscriptionTarDirectory].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SubscriptionTarDirectory]. {@macro pulumi_subscription_subscription_tar_directory_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SubscriptionTarDirectory(
    String name, {
    SubscriptionTarDirectoryArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:subscription:SubscriptionTarDirectory',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<TargetDirectoryResultPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TargetDirectoryResultPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
