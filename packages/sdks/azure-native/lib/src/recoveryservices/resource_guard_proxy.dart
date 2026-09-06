import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_guard_proxy_args.dart';
import 'resource_guard_proxy_base_response.dart';

/// Uses Azure REST API version 2024-10-01. In version 2.x of the Azure Native provider, it used API version 2023-04-01.
///
/// Other available API versions: 2023-02-01, 2023-04-01, 2023-06-01, 2023-08-01, 2024-01-01, 2024-02-01, 2024-04-01, 2024-04-30-preview, 2024-07-30-preview, 2024-11-01-preview, 2025-01-01, 2025-02-01, 2025-02-28-preview, 2025-08-01, 2026-01-01, 2026-01-31-preview, 2026-02-01, 2026-03-31-preview, 2026-05-01, 2026-05-31-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native recoveryservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create ResourceGuardProxy
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var resourceGuardProxy = new AzureNative.RecoveryServices.ResourceGuardProxy("resourceGuardProxy", new()
///     {
///         Properties = new AzureNative.RecoveryServices.Inputs.ResourceGuardProxyBaseArgs
///         {
///             ResourceGuardResourceId = "/subscriptions/c999d45b-944f-418c-a0d8-c3fcfd1802c8/resourceGroups/vaultguardRGNew/providers/Microsoft.DataProtection/resourceGuards/VaultGuardTestNew",
///         },
///         ResourceGroupName = "SampleResourceGroup",
///         ResourceGuardProxyName = "swaggerExample",
///         VaultName = "sampleVault",
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
/// 		_, err := recoveryservices.NewResourceGuardProxy(ctx, "resourceGuardProxy", &recoveryservices.ResourceGuardProxyArgs{
/// 			Properties: &recoveryservices.ResourceGuardProxyBaseArgs{
/// 				ResourceGuardResourceId: pulumi.String("/subscriptions/c999d45b-944f-418c-a0d8-c3fcfd1802c8/resourceGroups/vaultguardRGNew/providers/Microsoft.DataProtection/resourceGuards/VaultGuardTestNew"),
/// 			},
/// 			ResourceGroupName:      pulumi.String("SampleResourceGroup"),
/// 			ResourceGuardProxyName: pulumi.String("swaggerExample"),
/// 			VaultName:              pulumi.String("sampleVault"),
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
/// resource "azure-native_recoveryservices_resourceguardproxy" "resourceGuardProxy" {
///   properties = {
///     resource_guard_resource_id = "/subscriptions/c999d45b-944f-418c-a0d8-c3fcfd1802c8/resourceGroups/vaultguardRGNew/providers/Microsoft.DataProtection/resourceGuards/VaultGuardTestNew"
///   }
///   resource_group_name       = "SampleResourceGroup"
///   resource_guard_proxy_name = "swaggerExample"
///   vault_name                = "sampleVault"
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
/// import com.pulumi.azurenative.recoveryservices.ResourceGuardProxy;
/// import com.pulumi.azurenative.recoveryservices.ResourceGuardProxyArgs;
/// import com.pulumi.azurenative.recoveryservices.inputs.ResourceGuardProxyBaseArgs;
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
///         var resourceGuardProxy = new ResourceGuardProxy("resourceGuardProxy", ResourceGuardProxyArgs.builder()
///             .properties(ResourceGuardProxyBaseArgs.builder()
///                 .resourceGuardResourceId("/subscriptions/c999d45b-944f-418c-a0d8-c3fcfd1802c8/resourceGroups/vaultguardRGNew/providers/Microsoft.DataProtection/resourceGuards/VaultGuardTestNew")
///                 .build())
///             .resourceGroupName("SampleResourceGroup")
///             .resourceGuardProxyName("swaggerExample")
///             .vaultName("sampleVault")
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
/// const resourceGuardProxy = new azure_native.recoveryservices.ResourceGuardProxy("resourceGuardProxy", {
///     properties: {
///         resourceGuardResourceId: "/subscriptions/c999d45b-944f-418c-a0d8-c3fcfd1802c8/resourceGroups/vaultguardRGNew/providers/Microsoft.DataProtection/resourceGuards/VaultGuardTestNew",
///     },
///     resourceGroupName: "SampleResourceGroup",
///     resourceGuardProxyName: "swaggerExample",
///     vaultName: "sampleVault",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// resource_guard_proxy = azure_native.recoveryservices.ResourceGuardProxy("resourceGuardProxy",
///     properties={
///         "resource_guard_resource_id": "/subscriptions/c999d45b-944f-418c-a0d8-c3fcfd1802c8/resourceGroups/vaultguardRGNew/providers/Microsoft.DataProtection/resourceGuards/VaultGuardTestNew",
///     },
///     resource_group_name="SampleResourceGroup",
///     resource_guard_proxy_name="swaggerExample",
///     vault_name="sampleVault")
///
/// ```
///
/// ```yaml
/// resources:
///   resourceGuardProxy:
///     type: azure-native:recoveryservices:ResourceGuardProxy
///     properties:
///       properties:
///         resourceGuardResourceId: /subscriptions/c999d45b-944f-418c-a0d8-c3fcfd1802c8/resourceGroups/vaultguardRGNew/providers/Microsoft.DataProtection/resourceGuards/VaultGuardTestNew
///       resourceGroupName: SampleResourceGroup
///       resourceGuardProxyName: swaggerExample
///       vaultName: sampleVault
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
/// $ pulumi import azure-native:recoveryservices:ResourceGuardProxy swaggerExample /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.RecoveryServices/vaults/{vaultName}/backupResourceGuardProxies/{resourceGuardProxyName}
/// ```
class ResourceGuardProxy extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Optional ETag.
  late final pulumi.Output<String?> eTag;
  /// Resource location.
  late final pulumi.Output<String?> location;
  /// Resource name associated with the resource.
  late final pulumi.Output<String> name;
  /// ResourceGuardProxyBaseResource properties
  late final pulumi.Output<ResourceGuardProxyBaseResponse> properties;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Resource type represents the complete path of the form Namespace/ResourceType/ResourceType/...
  late final pulumi.Output<String> type;

  /// Creates a new [ResourceGuardProxy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ResourceGuardProxy]. {@macro pulumi_recoveryservices_resource_guard_proxy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ResourceGuardProxy(
    String name, {
    ResourceGuardProxyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:recoveryservices:ResourceGuardProxy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    eTag = registerOutput<String?>('eTag');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<ResourceGuardProxyBaseResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ResourceGuardProxyBaseResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [ResourceGuardProxy] resource.
  ResourceGuardProxy.reference(String urn)
    : super(
        'azure-native:recoveryservices:ResourceGuardProxy',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    eTag = registerOutput<String?>('eTag');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<ResourceGuardProxyBaseResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ResourceGuardProxyBaseResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }
}
