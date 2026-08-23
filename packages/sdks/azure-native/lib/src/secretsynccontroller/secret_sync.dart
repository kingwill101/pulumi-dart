import 'package:pulumi/pulumi.dart' as pulumi;
import 'extended_location_response.dart';
import 'secret_sync_args.dart';
import 'secret_sync_status_response.dart';
import 'system_data_response.dart';

/// The SecretSync resource.
///
/// Uses Azure REST API version 2024-08-21-preview. In version 2.x of the Azure Native provider, it used API version 2024-08-21-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### SecretSyncs_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var secretSync = new AzureNative.SecretSyncController.SecretSync("secretSync", new()
///     {
///         ExtendedLocation = new AzureNative.SecretSyncController.Inputs.AzureResourceManagerCommonTypesExtendedLocationArgs
///         {
///             Name = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg-ssc-example/providers/Microsoft.ExtendedLocation/customLocations/example-custom-location",
///             Type = AzureNative.SecretSyncController.ExtendedLocationType.CustomLocation,
///         },
///         KubernetesSecretType = AzureNative.SecretSyncController.KubernetesSecretType.Opaque,
///         Location = "eastus",
///         ObjectSecretMapping = new[]
///         {
///             new AzureNative.SecretSyncController.Inputs.KubernetesSecretObjectMappingArgs
///             {
///                 SourcePath = "kv-secret-name/0",
///                 TargetKey = "kv-secret-name/0",
///             },
///         },
///         ResourceGroupName = "rg-ssc-example",
///         SecretProviderClassName = "akvspc-ssc-example",
///         SecretSyncName = "secretsync-ssc-example",
///         ServiceAccountName = "example-k8s-sa-name",
///         Tags =
///         {
///             { "example-tag", "example-tag-value" },
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
/// 	secretsynccontroller "github.com/pulumi/pulumi-azure-native-sdk/secretsynccontroller/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := secretsynccontroller.NewSecretSync(ctx, "secretSync", &secretsynccontroller.SecretSyncArgs{
/// 			ExtendedLocation: &secretsynccontroller.AzureResourceManagerCommonTypesExtendedLocationArgs{
/// 				Name: pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg-ssc-example/providers/Microsoft.ExtendedLocation/customLocations/example-custom-location"),
/// 				Type: pulumi.String(secretsynccontroller.ExtendedLocationTypeCustomLocation),
/// 			},
/// 			KubernetesSecretType: pulumi.String(secretsynccontroller.KubernetesSecretTypeOpaque),
/// 			Location:             pulumi.String("eastus"),
/// 			ObjectSecretMapping: secretsynccontroller.KubernetesSecretObjectMappingArray{
/// 				&secretsynccontroller.KubernetesSecretObjectMappingArgs{
/// 					SourcePath: pulumi.String("kv-secret-name/0"),
/// 					TargetKey:  pulumi.String("kv-secret-name/0"),
/// 				},
/// 			},
/// 			ResourceGroupName:       pulumi.String("rg-ssc-example"),
/// 			SecretProviderClassName: pulumi.String("akvspc-ssc-example"),
/// 			SecretSyncName:          pulumi.String("secretsync-ssc-example"),
/// 			ServiceAccountName:      pulumi.String("example-k8s-sa-name"),
/// 			Tags: pulumi.StringMap{
/// 				"example-tag": pulumi.String("example-tag-value"),
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
/// resource "azure-native_secretsynccontroller_secretsync" "secretSync" {
///   extended_location = {
///     name = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg-ssc-example/providers/Microsoft.ExtendedLocation/customLocations/example-custom-location"
///     type = "CustomLocation"
///   }
///   kubernetes_secret_type = "Opaque"
///   location               = "eastus"
///   object_secret_mapping {
///     source_path = "kv-secret-name/0"
///     target_key  = "kv-secret-name/0"
///   }
///   resource_group_name        = "rg-ssc-example"
///   secret_provider_class_name = "akvspc-ssc-example"
///   secret_sync_name           = "secretsync-ssc-example"
///   service_account_name       = "example-k8s-sa-name"
///   tags = {
///     "example-tag" = "example-tag-value"
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
/// import com.pulumi.azurenative.secretsynccontroller.SecretSync;
/// import com.pulumi.azurenative.secretsynccontroller.SecretSyncArgs;
/// import com.pulumi.azurenative.secretsynccontroller.inputs.AzureResourceManagerCommonTypesExtendedLocationArgs;
/// import com.pulumi.azurenative.secretsynccontroller.inputs.KubernetesSecretObjectMappingArgs;
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
///         var secretSync = new SecretSync("secretSync", SecretSyncArgs.builder()
///             .extendedLocation(AzureResourceManagerCommonTypesExtendedLocationArgs.builder()
///                 .name("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg-ssc-example/providers/Microsoft.ExtendedLocation/customLocations/example-custom-location")
///                 .type("CustomLocation")
///                 .build())
///             .kubernetesSecretType("Opaque")
///             .location("eastus")
///             .objectSecretMapping(KubernetesSecretObjectMappingArgs.builder()
///                 .sourcePath("kv-secret-name/0")
///                 .targetKey("kv-secret-name/0")
///                 .build())
///             .resourceGroupName("rg-ssc-example")
///             .secretProviderClassName("akvspc-ssc-example")
///             .secretSyncName("secretsync-ssc-example")
///             .serviceAccountName("example-k8s-sa-name")
///             .tags(Map.of("example-tag", "example-tag-value"))
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
/// const secretSync = new azure_native.secretsynccontroller.SecretSync("secretSync", {
///     extendedLocation: {
///         name: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg-ssc-example/providers/Microsoft.ExtendedLocation/customLocations/example-custom-location",
///         type: azure_native.secretsynccontroller.ExtendedLocationType.CustomLocation,
///     },
///     kubernetesSecretType: azure_native.secretsynccontroller.KubernetesSecretType.Opaque,
///     location: "eastus",
///     objectSecretMapping: [{
///         sourcePath: "kv-secret-name/0",
///         targetKey: "kv-secret-name/0",
///     }],
///     resourceGroupName: "rg-ssc-example",
///     secretProviderClassName: "akvspc-ssc-example",
///     secretSyncName: "secretsync-ssc-example",
///     serviceAccountName: "example-k8s-sa-name",
///     tags: {
///         "example-tag": "example-tag-value",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// secret_sync = azure_native.secretsynccontroller.SecretSync("secretSync",
///     extended_location={
///         "name": "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg-ssc-example/providers/Microsoft.ExtendedLocation/customLocations/example-custom-location",
///         "type": azure_native.secretsynccontroller.ExtendedLocationType.CUSTOM_LOCATION,
///     },
///     kubernetes_secret_type=azure_native.secretsynccontroller.KubernetesSecretType.OPAQUE,
///     location="eastus",
///     object_secret_mapping=[{
///         "source_path": "kv-secret-name/0",
///         "target_key": "kv-secret-name/0",
///     }],
///     resource_group_name="rg-ssc-example",
///     secret_provider_class_name="akvspc-ssc-example",
///     secret_sync_name="secretsync-ssc-example",
///     service_account_name="example-k8s-sa-name",
///     tags={
///         "example-tag": "example-tag-value",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   secretSync:
///     type: azure-native:secretsynccontroller:SecretSync
///     properties:
///       extendedLocation:
///         name: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg-ssc-example/providers/Microsoft.ExtendedLocation/customLocations/example-custom-location
///         type: CustomLocation
///       kubernetesSecretType: Opaque
///       location: eastus
///       objectSecretMapping:
///         - sourcePath: kv-secret-name/0
///           targetKey: kv-secret-name/0
///       resourceGroupName: rg-ssc-example
///       secretProviderClassName: akvspc-ssc-example
///       secretSyncName: secretsync-ssc-example
///       serviceAccountName: example-k8s-sa-name
///       tags:
///         example-tag: example-tag-value
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
/// $ pulumi import azure-native:secretsynccontroller:SecretSync secretsync-ssc-example /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.SecretSyncController/secretSyncs/{secretSyncName}
/// ```
class SecretSync extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The complex type of the extended location.
  late final pulumi.Output<ExtendedLocationResponse?> extendedLocation;
  /// ForceSynchronization can be used to force the secret synchronization. The secret synchronization is triggered by changing the value in this field. This field is not used to resolve synchronization conflicts.
  late final pulumi.Output<String?> forceSynchronization;
  /// Type specifies the type of the Kubernetes secret object, e.g. "Opaque" or"kubernetes.io/tls". The controller must have permission to create secrets of the specified type.
  late final pulumi.Output<String> kubernetesSecretType;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// An array of SecretObjectData that maps secret data from the external secret provider to the Kubernetes secret. Each entry specifies the source secret in the external provider and the corresponding key in the Kubernetes secret.
  late final pulumi.Output<List<Map<String, dynamic>>> objectSecretMapping;
  /// Provisioning state of the SecretSync instance.
  late final pulumi.Output<String> provisioningState;
  /// SecretProviderClassName specifies the name of the SecretProviderClass resource, which contains the information needed to access the cloud provider secret store.
  late final pulumi.Output<String> secretProviderClassName;
  /// ServiceAccountName specifies the name of the service account used to access the cloud provider secret store. The audience field in the service account token must be passed as parameter in the controller configuration. The audience is used when requesting a token from the API server for the service account; the supported audiences are defined by each provider.
  late final pulumi.Output<String> serviceAccountName;
  /// SecretSyncStatus defines the observed state of the secret synchronization process.
  late final pulumi.Output<SecretSyncStatusResponse> status;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [SecretSync].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SecretSync]. {@macro pulumi_secretsynccontroller_secret_sync_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SecretSync(
    String name, {
    SecretSyncArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:secretsynccontroller:SecretSync',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    extendedLocation = registerOutput<ExtendedLocationResponse?>('extendedLocation', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ExtendedLocationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    forceSynchronization = registerOutput<String?>('forceSynchronization');
    kubernetesSecretType = registerOutput<String>('kubernetesSecretType');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    objectSecretMapping = registerOutput<List<Map<String, dynamic>>>('objectSecretMapping');
    provisioningState = registerOutput<String>('provisioningState');
    secretProviderClassName = registerOutput<String>('secretProviderClassName');
    serviceAccountName = registerOutput<String>('serviceAccountName');
    status = registerOutput<SecretSyncStatusResponse>('status', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SecretSyncStatusResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
