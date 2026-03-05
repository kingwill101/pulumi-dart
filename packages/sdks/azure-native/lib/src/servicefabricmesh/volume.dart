import 'package:pulumi/pulumi.dart' as pulumi;
import 'volume_args.dart';
import 'volume_provider_parameters_azure_file_response.dart';

/// This type describes a volume resource.
///
/// Uses Azure REST API version 2018-09-01-preview. In version 2.x of the Azure Native provider, it used API version 2018-09-01-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### CreateOrUpdateVolume
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var volume = new AzureNative.ServiceFabricMesh.Volume("volume", new()
///     {
///         AzureFileParameters = new AzureNative.ServiceFabricMesh.Inputs.VolumeProviderParametersAzureFileArgs
///         {
///             AccountKey = "provide-account-key-here",
///             AccountName = "sbzdemoaccount",
///             ShareName = "sharel",
///         },
///         Description = "Service Fabric Mesh sample volume.",
///         Location = "EastUS",
///         Provider = AzureNative.ServiceFabricMesh.VolumeProvider.SFAzureFile,
///         ResourceGroupName = "sbz_demo",
///         Tags = null,
///         VolumeResourceName = "sampleVolume",
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
/// 	servicefabricmesh "github.com/pulumi/pulumi-azure-native-sdk/servicefabricmesh/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := servicefabricmesh.NewVolume(ctx, "volume", &servicefabricmesh.VolumeArgs{
/// 			AzureFileParameters: &servicefabricmesh.VolumeProviderParametersAzureFileArgs{
/// 				AccountKey:  pulumi.String("provide-account-key-here"),
/// 				AccountName: pulumi.String("sbzdemoaccount"),
/// 				ShareName:   pulumi.String("sharel"),
/// 			},
/// 			Description:        pulumi.String("Service Fabric Mesh sample volume."),
/// 			Location:           pulumi.String("EastUS"),
/// 			Provider:           pulumi.String(servicefabricmesh.VolumeProviderSFAzureFile),
/// 			ResourceGroupName:  pulumi.String("sbz_demo"),
/// 			Tags:               pulumi.StringMap{},
/// 			VolumeResourceName: pulumi.String("sampleVolume"),
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
/// import com.pulumi.azurenative.servicefabricmesh.Volume;
/// import com.pulumi.azurenative.servicefabricmesh.VolumeArgs;
/// import com.pulumi.azurenative.servicefabricmesh.inputs.VolumeProviderParametersAzureFileArgs;
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
///         var volume = new Volume("volume", VolumeArgs.builder()
///             .azureFileParameters(VolumeProviderParametersAzureFileArgs.builder()
///                 .accountKey("provide-account-key-here")
///                 .accountName("sbzdemoaccount")
///                 .shareName("sharel")
///                 .build())
///             .description("Service Fabric Mesh sample volume.")
///             .location("EastUS")
///             .provider("SFAzureFile")
///             .resourceGroupName("sbz_demo")
///             .tags(Map.ofEntries(
///             ))
///             .volumeResourceName("sampleVolume")
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
/// const volume = new azure_native.servicefabricmesh.Volume("volume", {
///     azureFileParameters: {
///         accountKey: "provide-account-key-here",
///         accountName: "sbzdemoaccount",
///         shareName: "sharel",
///     },
///     description: "Service Fabric Mesh sample volume.",
///     location: "EastUS",
///     provider: azure_native.servicefabricmesh.VolumeProvider.SFAzureFile,
///     resourceGroupName: "sbz_demo",
///     tags: {},
///     volumeResourceName: "sampleVolume",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// volume = azure_native.servicefabricmesh.Volume("volume",
///     azure_file_parameters={
///         "account_key": "provide-account-key-here",
///         "account_name": "sbzdemoaccount",
///         "share_name": "sharel",
///     },
///     description="Service Fabric Mesh sample volume.",
///     location="EastUS",
///     provider=azure_native.servicefabricmesh.VolumeProvider.SF_AZURE_FILE,
///     resource_group_name="sbz_demo",
///     tags={},
///     volume_resource_name="sampleVolume")
///
/// ```
///
/// ```yaml
/// resources:
///   volume:
///     type: azure-native:servicefabricmesh:Volume
///     properties:
///       azureFileParameters:
///         accountKey: provide-account-key-here
///         accountName: sbzdemoaccount
///         shareName: sharel
///       description: Service Fabric Mesh sample volume.
///       location: EastUS
///       provider: SFAzureFile
///       resourceGroupName: sbz_demo
///       tags: {}
///       volumeResourceName: sampleVolume
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
/// $ pulumi import azure-native:servicefabricmesh:Volume sampleVolume /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ServiceFabricMesh/volumes/{volumeResourceName}
/// ```
class Volume extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// This type describes a volume provided by an Azure Files file share.
  late final pulumi.Output<VolumeProviderParametersAzureFileResponse?>
  azureFileParameters;

  /// User readable description of the volume.
  late final pulumi.Output<String?> description;

  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// Provider of the volume.
  late final pulumi.Output<String> provider;

  /// State of the resource.
  late final pulumi.Output<String> provisioningState;

  /// Status of the volume.
  late final pulumi.Output<String> status;

  /// Gives additional information about the current status of the volume.
  late final pulumi.Output<String> statusDetails;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the resource. Ex- Microsoft.Compute/virtualMachines or Microsoft.Storage/storageAccounts.
  late final pulumi.Output<String> type;

  /// Creates a new [Volume].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Volume]. {@macro pulumi_servicefabricmesh_volume_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Volume(String name, {VolumeArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'azure-native:servicefabricmesh:Volume',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    azureFileParameters =
        registerOutput<VolumeProviderParametersAzureFileResponse?>(
          'azureFileParameters',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return VolumeProviderParametersAzureFileResponse.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    description = registerOutput<String?>('description');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    provider = registerOutput<String>('provider');
    provisioningState = registerOutput<String>('provisioningState');
    status = registerOutput<String>('status');
    statusDetails = registerOutput<String>('statusDetails');
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
