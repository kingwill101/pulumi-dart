import 'package:pulumi/pulumi.dart' as pulumi;
import 'draft_package_args.dart';
import 'draft_package_intune_app_metadata_response.dart';
import 'inplace_upgrade_osinfo_response.dart';
import 'intune_enrollment_metadata_response.dart';
import 'system_data_response.dart';
import 'tab_state_response.dart';

/// The Test Base Draft Package resource.
///
/// Uses Azure REST API version 2023-11-01-preview. In version 2.x of the Azure Native provider, it used API version 2023-11-01-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### DraftPackageCreate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var draftPackage = new AzureNative.TestBase.DraftPackage("draftPackage", new()
///     {
///         AppFileName = "TestBaseM365DigitalClock.msi",
///         ApplicationName = "contoso-package",
///         DraftPackageName = "61d99543-14ff-47ae-bf03-8a8b8445502e",
///         ResourceGroupName = "contoso-rg1",
///         SourceType = AzureNative.TestBase.DraftPackageSourceType.Native,
///         TestBaseAccountName = "contoso-testBaseAccount1",
///         UseSample = false,
///         Version = "1.0",
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
/// 		_, err := testbase.NewDraftPackage(ctx, "draftPackage", &testbase.DraftPackageArgs{
/// 			AppFileName:         pulumi.String("TestBaseM365DigitalClock.msi"),
/// 			ApplicationName:     pulumi.String("contoso-package"),
/// 			DraftPackageName:    pulumi.String("61d99543-14ff-47ae-bf03-8a8b8445502e"),
/// 			ResourceGroupName:   pulumi.String("contoso-rg1"),
/// 			SourceType:          pulumi.String(testbase.DraftPackageSourceTypeNative),
/// 			TestBaseAccountName: pulumi.String("contoso-testBaseAccount1"),
/// 			UseSample:           pulumi.Bool(false),
/// 			Version:             pulumi.String("1.0"),
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
/// resource "azure-native_testbase_draftpackage" "draftPackage" {
///   app_file_name          = "TestBaseM365DigitalClock.msi"
///   application_name       = "contoso-package"
///   draft_package_name     = "61d99543-14ff-47ae-bf03-8a8b8445502e"
///   resource_group_name    = "contoso-rg1"
///   source_type            = "Native"
///   test_base_account_name = "contoso-testBaseAccount1"
///   use_sample             = false
///   version                = "1.0"
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
/// import com.pulumi.azurenative.testbase.DraftPackage;
/// import com.pulumi.azurenative.testbase.DraftPackageArgs;
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
///         var draftPackage = new DraftPackage("draftPackage", DraftPackageArgs.builder()
///             .appFileName("TestBaseM365DigitalClock.msi")
///             .applicationName("contoso-package")
///             .draftPackageName("61d99543-14ff-47ae-bf03-8a8b8445502e")
///             .resourceGroupName("contoso-rg1")
///             .sourceType("Native")
///             .testBaseAccountName("contoso-testBaseAccount1")
///             .useSample(false)
///             .version("1.0")
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
/// const draftPackage = new azure_native.testbase.DraftPackage("draftPackage", {
///     appFileName: "TestBaseM365DigitalClock.msi",
///     applicationName: "contoso-package",
///     draftPackageName: "61d99543-14ff-47ae-bf03-8a8b8445502e",
///     resourceGroupName: "contoso-rg1",
///     sourceType: azure_native.testbase.DraftPackageSourceType.Native,
///     testBaseAccountName: "contoso-testBaseAccount1",
///     useSample: false,
///     version: "1.0",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// draft_package = azure_native.testbase.DraftPackage("draftPackage",
///     app_file_name="TestBaseM365DigitalClock.msi",
///     application_name="contoso-package",
///     draft_package_name="61d99543-14ff-47ae-bf03-8a8b8445502e",
///     resource_group_name="contoso-rg1",
///     source_type=azure_native.testbase.DraftPackageSourceType.NATIVE,
///     test_base_account_name="contoso-testBaseAccount1",
///     use_sample=False,
///     version="1.0")
///
/// ```
///
/// ```yaml
/// resources:
///   draftPackage:
///     type: azure-native:testbase:DraftPackage
///     properties:
///       appFileName: TestBaseM365DigitalClock.msi
///       applicationName: contoso-package
///       draftPackageName: 61d99543-14ff-47ae-bf03-8a8b8445502e
///       resourceGroupName: contoso-rg1
///       sourceType: Native
///       testBaseAccountName: contoso-testBaseAccount1
///       useSample: false
///       version: '1.0'
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
/// $ pulumi import azure-native:testbase:DraftPackage 61d99543-14ff-47ae-bf03-8a8b8445502e /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.TestBase/testBaseAccounts/{testBaseAccountName}/draftPackages/{draftPackageName}
/// ```
class DraftPackage extends pulumi.CustomResource {
  /// The name of the app file.
  late final pulumi.Output<String?> appFileName;
  /// Application name
  late final pulumi.Output<String?> applicationName;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Comments added by user.
  late final pulumi.Output<String?> comments;
  /// The relative path of the folder hosting package files.
  late final pulumi.Output<String> draftPackagePath;
  /// Specifies whether this draft package is used to edit a package.
  late final pulumi.Output<bool?> editPackage;
  /// The executable launch command for script auto-fill. Will be used to run the application.
  late final pulumi.Output<String?> executableLaunchCommand;
  /// The list of first party applications to test along with user application.
  late final pulumi.Output<List<Map<String, dynamic>>?> firstPartyApps;
  /// The flighting ring for feature update.
  late final pulumi.Output<String?> flightingRing;
  /// The list of gallery apps to test along with user application.
  late final pulumi.Output<List<Map<String, dynamic>>?> galleryApps;
  /// The highlight files in the package.
  late final pulumi.Output<List<Map<String, dynamic>>?> highlightedFiles;
  /// Specifies the baseline os and target os for inplace upgrade.
  late final pulumi.Output<InplaceUpgradeOSInfoResponse?> inplaceUpgradeOSPair;
  /// The metadata of Intune enrollment.
  late final pulumi.Output<IntuneEnrollmentMetadataResponse?> intuneEnrollmentMetadata;
  /// Metadata used to generate draft package folder and scripts.
  late final pulumi.Output<DraftPackageIntuneAppMetadataResponse?> intuneMetadata;
  /// The UTC timestamp when the package was last modified.
  late final pulumi.Output<String> lastModifiedTime;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Specifies the package id from which the draft package copied.
  late final pulumi.Output<String?> packageId;
  /// Tags of the package to be created.
  late final pulumi.Output<Map<String, String>?> packageTags;
  /// The process name for script auto-fill. Will be used to identify the application process.
  late final pulumi.Output<String?> processName;
  /// The provisioning state of the resource.
  late final pulumi.Output<String> provisioningState;
  /// The source type.
  late final pulumi.Output<String?> sourceType;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Tab state.
  late final pulumi.Output<TabStateResponse?> tabState;
  /// Specifies the target OSs of specific OS Update types.
  late final pulumi.Output<List<Map<String, dynamic>>?> targetOSList;
  /// OOB, functional or flow driven. Mapped to the data in 'tests' property.
  late final pulumi.Output<List<String>?> testTypes;
  /// The detailed test information.
  late final pulumi.Output<List<Map<String, dynamic>>?> tests;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// Indicates whether user choose to enable script auto-fill.
  late final pulumi.Output<bool?> useAutofill;
  /// Specifies whether a sample package should be used instead of the one uploaded by the user.
  late final pulumi.Output<bool?> useSample;
  /// Application version
  late final pulumi.Output<String?> version;
  /// The relative path for a temporarily folder for package creation work.
  late final pulumi.Output<String> workingPath;

  /// Creates a new [DraftPackage].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DraftPackage]. {@macro pulumi_testbase_draft_package_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DraftPackage(
    String name, {
    DraftPackageArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:testbase:DraftPackage',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    appFileName = registerOutput<String?>('appFileName');
    applicationName = registerOutput<String?>('applicationName');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    comments = registerOutput<String?>('comments');
    draftPackagePath = registerOutput<String>('draftPackagePath');
    editPackage = registerOutput<bool?>('editPackage');
    executableLaunchCommand = registerOutput<String?>('executableLaunchCommand');
    firstPartyApps = registerOutput<List<Map<String, dynamic>>?>('firstPartyApps');
    flightingRing = registerOutput<String?>('flightingRing');
    galleryApps = registerOutput<List<Map<String, dynamic>>?>('galleryApps');
    highlightedFiles = registerOutput<List<Map<String, dynamic>>?>('highlightedFiles');
    inplaceUpgradeOSPair = registerOutput<InplaceUpgradeOSInfoResponse?>('inplaceUpgradeOSPair', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InplaceUpgradeOSInfoResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    intuneEnrollmentMetadata = registerOutput<IntuneEnrollmentMetadataResponse?>('intuneEnrollmentMetadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IntuneEnrollmentMetadataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    intuneMetadata = registerOutput<DraftPackageIntuneAppMetadataResponse?>('intuneMetadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DraftPackageIntuneAppMetadataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    lastModifiedTime = registerOutput<String>('lastModifiedTime');
    this.name = registerOutput<String>('name');
    packageId = registerOutput<String?>('packageId');
    packageTags = registerOutput<Map<String, String>?>('packageTags');
    processName = registerOutput<String?>('processName');
    provisioningState = registerOutput<String>('provisioningState');
    sourceType = registerOutput<String?>('sourceType');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tabState = registerOutput<TabStateResponse?>('tabState', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TabStateResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    targetOSList = registerOutput<List<Map<String, dynamic>>?>('targetOSList');
    testTypes = registerOutput<List<String>?>('testTypes');
    tests = registerOutput<List<Map<String, dynamic>>?>('tests');
    type = registerOutput<String>('type');
    useAutofill = registerOutput<bool?>('useAutofill');
    useSample = registerOutput<bool?>('useSample');
    version = registerOutput<String?>('version');
    workingPath = registerOutput<String>('workingPath');
  }
}
