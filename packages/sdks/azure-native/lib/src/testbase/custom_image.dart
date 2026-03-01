import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_image_args.dart';
import 'image_validation_results_response.dart';
import 'system_data_response.dart';

/// The test base custom image resource.
///
/// Uses Azure REST API version 2023-11-01-preview. In version 2.x of the Azure Native provider, it used API version 2023-11-01-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### CustomImageCreate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var customImage = new AzureNative.TestBase.CustomImage("customImage", new()
///     {
///         CustomImageName = "image-2cfb2edc-13bc-4d54-8d6e-38b2a233b003",
///         DefinitionName = "contoso-image-def",
///         ResourceGroupName = "contoso-rg1",
///         Source = AzureNative.TestBase.ImageSource.VHD,
///         TestBaseAccountName = "contoso-testBaseAccount1",
///         VersionName = "1.0.0",
///         VhdId = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/contoso-rg1/providers/Microsoft.TestBase/testBaseAccounts/contoso-testBaseAccount1/VHDs/vhd-00ac3ccd-1503-4ee5-aa26-26569cfafe88",
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
/// 	testbase "github.com/pulumi/pulumi-azure-native-sdk/testbase/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := testbase.NewCustomImage(ctx, "customImage", &testbase.CustomImageArgs{
/// 			CustomImageName:     pulumi.String("image-2cfb2edc-13bc-4d54-8d6e-38b2a233b003"),
/// 			DefinitionName:      pulumi.String("contoso-image-def"),
/// 			ResourceGroupName:   pulumi.String("contoso-rg1"),
/// 			Source:              pulumi.String(testbase.ImageSourceVHD),
/// 			TestBaseAccountName: pulumi.String("contoso-testBaseAccount1"),
/// 			VersionName:         pulumi.String("1.0.0"),
/// 			VhdId:               pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/contoso-rg1/providers/Microsoft.TestBase/testBaseAccounts/contoso-testBaseAccount1/VHDs/vhd-00ac3ccd-1503-4ee5-aa26-26569cfafe88"),
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
/// import com.pulumi.azurenative.testbase.CustomImage;
/// import com.pulumi.azurenative.testbase.CustomImageArgs;
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
///         var customImage = new CustomImage("customImage", CustomImageArgs.builder()
///             .customImageName("image-2cfb2edc-13bc-4d54-8d6e-38b2a233b003")
///             .definitionName("contoso-image-def")
///             .resourceGroupName("contoso-rg1")
///             .source("VHD")
///             .testBaseAccountName("contoso-testBaseAccount1")
///             .versionName("1.0.0")
///             .vhdId("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/contoso-rg1/providers/Microsoft.TestBase/testBaseAccounts/contoso-testBaseAccount1/VHDs/vhd-00ac3ccd-1503-4ee5-aa26-26569cfafe88")
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
/// const customImage = new azure_native.testbase.CustomImage("customImage", {
///     customImageName: "image-2cfb2edc-13bc-4d54-8d6e-38b2a233b003",
///     definitionName: "contoso-image-def",
///     resourceGroupName: "contoso-rg1",
///     source: azure_native.testbase.ImageSource.VHD,
///     testBaseAccountName: "contoso-testBaseAccount1",
///     versionName: "1.0.0",
///     vhdId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/contoso-rg1/providers/Microsoft.TestBase/testBaseAccounts/contoso-testBaseAccount1/VHDs/vhd-00ac3ccd-1503-4ee5-aa26-26569cfafe88",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// custom_image = azure_native.testbase.CustomImage("customImage",
///     custom_image_name="image-2cfb2edc-13bc-4d54-8d6e-38b2a233b003",
///     definition_name="contoso-image-def",
///     resource_group_name="contoso-rg1",
///     source=azure_native.testbase.ImageSource.VHD,
///     test_base_account_name="contoso-testBaseAccount1",
///     version_name="1.0.0",
///     vhd_id="/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/contoso-rg1/providers/Microsoft.TestBase/testBaseAccounts/contoso-testBaseAccount1/VHDs/vhd-00ac3ccd-1503-4ee5-aa26-26569cfafe88")
///
/// ```
///
/// ```yaml
/// resources:
///   customImage:
///     type: azure-native:testbase:CustomImage
///     properties:
///       customImageName: image-2cfb2edc-13bc-4d54-8d6e-38b2a233b003
///       definitionName: contoso-image-def
///       resourceGroupName: contoso-rg1
///       source: VHD
///       testBaseAccountName: contoso-testBaseAccount1
///       versionName: 1.0.0
///       vhdId: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/contoso-rg1/providers/Microsoft.TestBase/testBaseAccounts/contoso-testBaseAccount1/VHDs/vhd-00ac3ccd-1503-4ee5-aa26-26569cfafe88
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
/// $ pulumi import azure-native:testbase:CustomImage image-2cfb2edc-13bc-4d54-8d6e-38b2a233b003 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.TestBase/testBaseAccounts/{testBaseAccountName}/customImages/{customImageName}
/// ```
class CustomImage extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The UTC timestamp when the custom image was published.
  late final pulumi.Output<String> creationTime;
  /// Image definition name.
  late final pulumi.Output<String> definitionName;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// This property indicates the size of the VHD to be created.
  late final pulumi.Output<double> osDiskImageSizeInGB;
  /// Product of the custom image.
  late final pulumi.Output<String> product;
  /// The provisioning state of the resource.
  late final pulumi.Output<String> provisioningState;
  /// Release of the custom image OS.
  late final pulumi.Output<String> release;
  /// The release version date of the release of the custom image OS.
  late final pulumi.Output<String> releaseVersionDate;
  /// Custom image source type.
  late final pulumi.Output<String> source;
  /// Status of the custom image.
  late final pulumi.Output<String> status;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// The validation result of the custom image.
  late final pulumi.Output<ImageValidationResultsResponse> validationResults;
  /// Image version name.
  late final pulumi.Output<String> versionName;
  /// The file name of the associated VHD resource.
  late final pulumi.Output<String> vhdFileName;
  /// The Id of the associated VHD resource.
  late final pulumi.Output<String?> vhdId;

  /// Creates a new [CustomImage].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CustomImage]. {@macro pulumi_testbase_custom_image_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CustomImage(
    String name, {
    CustomImageArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:testbase:CustomImage',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.creationTime = registerOutput<String>('creationTime');
    this.definitionName = registerOutput<String>('definitionName');
    this.name = registerOutput<String>('name');
    this.osDiskImageSizeInGB = registerOutput<double>('osDiskImageSizeInGB');
    this.product = registerOutput<String>('product');
    this.provisioningState = registerOutput<String>('provisioningState');
    this.release = registerOutput<String>('release');
    this.releaseVersionDate = registerOutput<String>('releaseVersionDate');
    this.source = registerOutput<String>('source');
    this.status = registerOutput<String>('status');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.type = registerOutput<String>('type');
    this.validationResults = registerOutput<ImageValidationResultsResponse>('validationResults');
    this.versionName = registerOutput<String>('versionName');
    this.vhdFileName = registerOutput<String>('vhdFileName');
    this.vhdId = registerOutput<String?>('vhdId');
  }
}
