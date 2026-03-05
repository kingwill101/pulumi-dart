import 'package:pulumi/pulumi.dart' as pulumi;
import 'hybrid_identity_metadata_args.dart';
import 'identity_response.dart';
import 'system_data_response.dart';

/// Defines the HybridIdentityMetadata.
///
/// Uses Azure REST API version 2023-04-01-preview. In version 2.x of the Azure Native provider, it used API version 2022-05-21-preview.
///
/// Other available API versions: 2022-05-21-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native scvmm [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### CreateHybridIdentityMetadata
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var hybridIdentityMetadata = new AzureNative.ScVmm.HybridIdentityMetadata("hybridIdentityMetadata", new()
///     {
///         MetadataName = "default",
///         PublicKey = "8ec7d60c-9700-40b1-8e6e-e5b2f6f477f2",
///         ResourceGroupName = "testrg",
///         ResourceUid = "f8b82dff-38ef-4220-99ef-d3a3f86ddc6c",
///         VirtualMachineName = "ContosoVm",
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
/// 	scvmm "github.com/pulumi/pulumi-azure-native-sdk/scvmm/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := scvmm.NewHybridIdentityMetadata(ctx, "hybridIdentityMetadata", &scvmm.HybridIdentityMetadataArgs{
/// 			MetadataName:       pulumi.String("default"),
/// 			PublicKey:          pulumi.String("8ec7d60c-9700-40b1-8e6e-e5b2f6f477f2"),
/// 			ResourceGroupName:  pulumi.String("testrg"),
/// 			ResourceUid:        pulumi.String("f8b82dff-38ef-4220-99ef-d3a3f86ddc6c"),
/// 			VirtualMachineName: pulumi.String("ContosoVm"),
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
/// import com.pulumi.azurenative.scvmm.HybridIdentityMetadata;
/// import com.pulumi.azurenative.scvmm.HybridIdentityMetadataArgs;
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
///         var hybridIdentityMetadata = new HybridIdentityMetadata("hybridIdentityMetadata", HybridIdentityMetadataArgs.builder()
///             .metadataName("default")
///             .publicKey("8ec7d60c-9700-40b1-8e6e-e5b2f6f477f2")
///             .resourceGroupName("testrg")
///             .resourceUid("f8b82dff-38ef-4220-99ef-d3a3f86ddc6c")
///             .virtualMachineName("ContosoVm")
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
/// const hybridIdentityMetadata = new azure_native.scvmm.HybridIdentityMetadata("hybridIdentityMetadata", {
///     metadataName: "default",
///     publicKey: "8ec7d60c-9700-40b1-8e6e-e5b2f6f477f2",
///     resourceGroupName: "testrg",
///     resourceUid: "f8b82dff-38ef-4220-99ef-d3a3f86ddc6c",
///     virtualMachineName: "ContosoVm",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// hybrid_identity_metadata = azure_native.scvmm.HybridIdentityMetadata("hybridIdentityMetadata",
///     metadata_name="default",
///     public_key="8ec7d60c-9700-40b1-8e6e-e5b2f6f477f2",
///     resource_group_name="testrg",
///     resource_uid="f8b82dff-38ef-4220-99ef-d3a3f86ddc6c",
///     virtual_machine_name="ContosoVm")
///
/// ```
///
/// ```yaml
/// resources:
///   hybridIdentityMetadata:
///     type: azure-native:scvmm:HybridIdentityMetadata
///     properties:
///       metadataName: default
///       publicKey: 8ec7d60c-9700-40b1-8e6e-e5b2f6f477f2
///       resourceGroupName: testrg
///       resourceUid: f8b82dff-38ef-4220-99ef-d3a3f86ddc6c
///       virtualMachineName: ContosoVm
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
/// $ pulumi import azure-native:scvmm:HybridIdentityMetadata default /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ScVmm/virtualMachines/{virtualMachineName}/hybridIdentityMetadata/{metadataName}
/// ```
class HybridIdentityMetadata extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The identity of the resource.
  late final pulumi.Output<IdentityResponse> identity;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Gets or sets the provisioning state.
  late final pulumi.Output<String> provisioningState;
  /// Gets or sets the Public Key.
  late final pulumi.Output<String?> publicKey;
  /// Gets or sets the Vm Id.
  late final pulumi.Output<String?> resourceUid;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [HybridIdentityMetadata].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [HybridIdentityMetadata]. {@macro pulumi_scvmm_hybrid_identity_metadata_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  HybridIdentityMetadata(
    String name, {
    HybridIdentityMetadataArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:scvmm:HybridIdentityMetadata',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    identity = registerOutput<IdentityResponse>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    publicKey = registerOutput<String?>('publicKey');
    resourceUid = registerOutput<String?>('resourceUid');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
