import 'package:pulumi/pulumi.dart' as pulumi;
import 'kubernetes_cluster_feature_args.dart';
import 'string_key_value_pair_response.dart';
import 'system_data_response.dart';

/// Uses Azure REST API version 2025-02-01. In version 2.x of the Azure Native provider, it used API version 2024-06-01-preview.
///
/// Other available API versions: 2024-07-01, 2025-09-01, 2026-01-01-preview, 2026-05-01-preview, 2026-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native networkcloud [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or update Kubernetes cluster feature
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var kubernetesClusterFeature = new AzureNative.NetworkCloud.KubernetesClusterFeature("kubernetesClusterFeature", new()
///     {
///         FeatureName = "featureName",
///         KubernetesClusterName = "kubernetesClusterName",
///         Location = "location",
///         Options = new[]
///         {
///             new AzureNative.NetworkCloud.Inputs.StringKeyValuePairArgs
///             {
///                 Key = "featureOptionName",
///                 Value = "featureOptionValue",
///             },
///         },
///         ResourceGroupName = "resourceGroupName",
///         Tags =
///         {
///             { "key1", "myvalue1" },
///             { "key2", "myvalue2" },
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
/// 	networkcloud "github.com/pulumi/pulumi-azure-native-sdk/networkcloud/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := networkcloud.NewKubernetesClusterFeature(ctx, "kubernetesClusterFeature", &networkcloud.KubernetesClusterFeatureArgs{
/// 			FeatureName:           pulumi.String("featureName"),
/// 			KubernetesClusterName: pulumi.String("kubernetesClusterName"),
/// 			Location:              pulumi.String("location"),
/// 			Options: networkcloud.StringKeyValuePairArray{
/// 				&networkcloud.StringKeyValuePairArgs{
/// 					Key:   pulumi.String("featureOptionName"),
/// 					Value: pulumi.String("featureOptionValue"),
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("resourceGroupName"),
/// 			Tags: pulumi.StringMap{
/// 				"key1": pulumi.String("myvalue1"),
/// 				"key2": pulumi.String("myvalue2"),
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
/// resource "azure-native_networkcloud_kubernetesclusterfeature" "kubernetesClusterFeature" {
///   feature_name            = "featureName"
///   kubernetes_cluster_name = "kubernetesClusterName"
///   location                = "location"
///   options {
///     key   = "featureOptionName"
///     value = "featureOptionValue"
///   }
///   resource_group_name = "resourceGroupName"
///   tags = {
///     "key1" = "myvalue1"
///     "key2" = "myvalue2"
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
/// import com.pulumi.azurenative.networkcloud.KubernetesClusterFeature;
/// import com.pulumi.azurenative.networkcloud.KubernetesClusterFeatureArgs;
/// import com.pulumi.azurenative.networkcloud.inputs.StringKeyValuePairArgs;
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
///         var kubernetesClusterFeature = new KubernetesClusterFeature("kubernetesClusterFeature", KubernetesClusterFeatureArgs.builder()
///             .featureName("featureName")
///             .kubernetesClusterName("kubernetesClusterName")
///             .location("location")
///             .options(StringKeyValuePairArgs.builder()
///                 .key("featureOptionName")
///                 .value("featureOptionValue")
///                 .build())
///             .resourceGroupName("resourceGroupName")
///             .tags(Map.ofEntries(
///                 Map.entry("key1", "myvalue1"),
///                 Map.entry("key2", "myvalue2")
///             ))
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
/// const kubernetesClusterFeature = new azure_native.networkcloud.KubernetesClusterFeature("kubernetesClusterFeature", {
///     featureName: "featureName",
///     kubernetesClusterName: "kubernetesClusterName",
///     location: "location",
///     options: [{
///         key: "featureOptionName",
///         value: "featureOptionValue",
///     }],
///     resourceGroupName: "resourceGroupName",
///     tags: {
///         key1: "myvalue1",
///         key2: "myvalue2",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// kubernetes_cluster_feature = azure_native.networkcloud.KubernetesClusterFeature("kubernetesClusterFeature",
///     feature_name="featureName",
///     kubernetes_cluster_name="kubernetesClusterName",
///     location="location",
///     options=[{
///         "key": "featureOptionName",
///         "value": "featureOptionValue",
///     }],
///     resource_group_name="resourceGroupName",
///     tags={
///         "key1": "myvalue1",
///         "key2": "myvalue2",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   kubernetesClusterFeature:
///     type: azure-native:networkcloud:KubernetesClusterFeature
///     properties:
///       featureName: featureName
///       kubernetesClusterName: kubernetesClusterName
///       location: location
///       options:
///         - key: featureOptionName
///           value: featureOptionValue
///       resourceGroupName: resourceGroupName
///       tags:
///         key1: myvalue1
///         key2: myvalue2
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
/// $ pulumi import azure-native:networkcloud:KubernetesClusterFeature featureName /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.NetworkCloud/kubernetesClusters/{kubernetesClusterName}/features/{featureName}
/// ```
class KubernetesClusterFeature extends pulumi.CustomResource {
  /// The lifecycle indicator of the feature.
  late final pulumi.Output<String> availabilityLifecycle;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The detailed status of the feature.
  late final pulumi.Output<String> detailedStatus;
  /// The descriptive message for the detailed status of the feature.
  late final pulumi.Output<String> detailedStatusMessage;
  /// Resource ETag.
  late final pulumi.Output<String> etag;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The configured options for the feature.
  late final pulumi.Output<List<StringKeyValuePairResponse>?> options;
  /// The provisioning state of the Kubernetes cluster feature.
  late final pulumi.Output<String> provisioningState;
  /// The indicator of if the feature is required or optional. Optional features may be deleted by the user, while required features are managed with the kubernetes cluster lifecycle.
  late final pulumi.Output<String> required;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// The version of the feature.
  late final pulumi.Output<String> version;

  /// Creates a new [KubernetesClusterFeature].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [KubernetesClusterFeature]. {@macro pulumi_networkcloud_kubernetes_cluster_feature_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  KubernetesClusterFeature(
    String name, {
    KubernetesClusterFeatureArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:networkcloud:KubernetesClusterFeature',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    availabilityLifecycle = registerOutput<String>('availabilityLifecycle');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    detailedStatus = registerOutput<String>('detailedStatus');
    detailedStatusMessage = registerOutput<String>('detailedStatusMessage');
    etag = registerOutput<String>('etag');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.options = registerOutput<List<StringKeyValuePairResponse>?>('options', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<StringKeyValuePairResponse>(guardedValue, (value) => StringKeyValuePairResponse.fromMap((value as Map).cast<String, dynamic>())); });
    provisioningState = registerOutput<String>('provisioningState');
    required = registerOutput<String>('required');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
    version = registerOutput<String>('version');
  }

  /// Creates a typed reference to an existing [KubernetesClusterFeature] resource.
  KubernetesClusterFeature.reference(String urn)
    : super(
        'azure-native:networkcloud:KubernetesClusterFeature',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    availabilityLifecycle = registerOutput<String>('availabilityLifecycle');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    detailedStatus = registerOutput<String>('detailedStatus');
    detailedStatusMessage = registerOutput<String>('detailedStatusMessage');
    etag = registerOutput<String>('etag');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.options = registerOutput<List<StringKeyValuePairResponse>?>('options', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<StringKeyValuePairResponse>(guardedValue, (value) => StringKeyValuePairResponse.fromMap((value as Map).cast<String, dynamic>())); });
    provisioningState = registerOutput<String>('provisioningState');
    required = registerOutput<String>('required');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
    version = registerOutput<String>('version');
  }
}
