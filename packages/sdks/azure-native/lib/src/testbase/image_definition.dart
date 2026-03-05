import 'package:pulumi/pulumi.dart' as pulumi;
import 'image_definition_args.dart';
import 'system_data_response.dart';

/// The test base image definition resource.
///
/// Uses Azure REST API version 2023-11-01-preview. In version 2.x of the Azure Native provider, it used API version 2023-11-01-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ImageDefinitionCreate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var imageDefinition = new AzureNative.TestBase.ImageDefinition("imageDefinition", new()
///     {
///         Architecture = AzureNative.TestBase.ImageArchitecture.X64,
///         ImageDefinitionName = "contoso-image-def",
///         OsState = AzureNative.TestBase.ImageOSState.Generalized,
///         ResourceGroupName = "contoso-rg1",
///         SecurityType = AzureNative.TestBase.ImageSecurityType.Standard,
///         TestBaseAccountName = "contoso-testBaseAccount1",
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
/// 		_, err := testbase.NewImageDefinition(ctx, "imageDefinition", &testbase.ImageDefinitionArgs{
/// 			Architecture:        pulumi.String(testbase.ImageArchitectureX64),
/// 			ImageDefinitionName: pulumi.String("contoso-image-def"),
/// 			OsState:             pulumi.String(testbase.ImageOSStateGeneralized),
/// 			ResourceGroupName:   pulumi.String("contoso-rg1"),
/// 			SecurityType:        pulumi.String(testbase.ImageSecurityTypeStandard),
/// 			TestBaseAccountName: pulumi.String("contoso-testBaseAccount1"),
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
/// import com.pulumi.azurenative.testbase.ImageDefinition;
/// import com.pulumi.azurenative.testbase.ImageDefinitionArgs;
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
///         var imageDefinition = new ImageDefinition("imageDefinition", ImageDefinitionArgs.builder()
///             .architecture("x64")
///             .imageDefinitionName("contoso-image-def")
///             .osState("Generalized")
///             .resourceGroupName("contoso-rg1")
///             .securityType("Standard")
///             .testBaseAccountName("contoso-testBaseAccount1")
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
/// const imageDefinition = new azure_native.testbase.ImageDefinition("imageDefinition", {
///     architecture: azure_native.testbase.ImageArchitecture.X64,
///     imageDefinitionName: "contoso-image-def",
///     osState: azure_native.testbase.ImageOSState.Generalized,
///     resourceGroupName: "contoso-rg1",
///     securityType: azure_native.testbase.ImageSecurityType.Standard,
///     testBaseAccountName: "contoso-testBaseAccount1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// image_definition = azure_native.testbase.ImageDefinition("imageDefinition",
///     architecture=azure_native.testbase.ImageArchitecture.X64,
///     image_definition_name="contoso-image-def",
///     os_state=azure_native.testbase.ImageOSState.GENERALIZED,
///     resource_group_name="contoso-rg1",
///     security_type=azure_native.testbase.ImageSecurityType.STANDARD,
///     test_base_account_name="contoso-testBaseAccount1")
///
/// ```
///
/// ```yaml
/// resources:
///   imageDefinition:
///     type: azure-native:testbase:ImageDefinition
///     properties:
///       architecture: x64
///       imageDefinitionName: contoso-image-def
///       osState: Generalized
///       resourceGroupName: contoso-rg1
///       securityType: Standard
///       testBaseAccountName: contoso-testBaseAccount1
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
/// $ pulumi import azure-native:testbase:ImageDefinition contoso-image-def /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.TestBase/testBaseAccounts/{testBaseAccountName}/imageDefinitions/{imageDefinitionName}
/// ```
class ImageDefinition extends pulumi.CustomResource {
  /// Custom image architecture.
  late final pulumi.Output<String> architecture;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Custom image OS state.
  late final pulumi.Output<String> osState;
  late final pulumi.Output<String> provisioningState;
  /// Custom image security type.
  late final pulumi.Output<String> securityType;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [ImageDefinition].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ImageDefinition]. {@macro pulumi_testbase_image_definition_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ImageDefinition(
    String name, {
    ImageDefinitionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:testbase:ImageDefinition',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    architecture = registerOutput<String>('architecture');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    osState = registerOutput<String>('osState');
    provisioningState = registerOutput<String>('provisioningState');
    securityType = registerOutput<String>('securityType');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
