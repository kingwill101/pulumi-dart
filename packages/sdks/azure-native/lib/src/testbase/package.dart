import 'package:pulumi/pulumi.dart' as pulumi;
import 'inplace_upgrade_osinfo_response.dart';
import 'intune_enrollment_metadata_response.dart';
import 'package_args.dart';
import 'system_data_response.dart';

/// The Test Base Package resource.
///
/// Uses Azure REST API version 2023-11-01-preview. In version 2.x of the Azure Native provider, it used API version 2022-04-01-preview.
///
/// Other available API versions: 2022-04-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native testbase [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### PackageCreate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var package = new AzureNative.TestBase.Package("package", new()
///     {
///         ApplicationName = "contoso-package2",
///         BlobPath = "storageAccountPath/package.zip",
///         FirstPartyApps = new[]
///         {
///             new AzureNative.TestBase.Inputs.FirstPartyAppDefinitionArgs
///             {
///                 Architecture = AzureNative.TestBase.Architecture.X64,
///                 Channel = "Current Channel",
///                 InteropExecutionMode = AzureNative.TestBase.InteropExecutionMode.FirstPartyAppWithTests,
///                 Name = "Office",
///                 Ring = "Insider",
///             },
///         },
///         FlightingRing = "Insider Beta Channel",
///         Location = "westus",
///         PackageName = "contoso-package2",
///         ResourceGroupName = "contoso-rg1",
///         Tags = null,
///         TargetOSList = new[]
///         {
///             new AzureNative.TestBase.Inputs.TargetOSInfoArgs
///             {
///                 OsUpdateType = "Security updates",
///                 TargetOSs = new[]
///                 {
///                     "Windows 10 2004",
///                     "Windows 10 1903",
///                 },
///             },
///         },
///         TestBaseAccountName = "contoso-testBaseAccount1",
///         Tests = new[]
///         {
///             new AzureNative.TestBase.Inputs.TestArgs
///             {
///                 Commands = new[]
///                 {
///                     new AzureNative.TestBase.Inputs.CommandArgs
///                     {
///                         Action = AzureNative.TestBase.Action.Install,
///                         AlwaysRun = true,
///                         ApplyUpdateBefore = false,
///                         Content = "app/scripts/install/job.ps1",
///                         ContentType = AzureNative.TestBase.ContentType.Path,
///                         Install1PAppBefore = true,
///                         MaxRunTime = 1800,
///                         Name = "Install",
///                         RestartAfter = true,
///                         RunAsInteractive = true,
///                         RunElevated = true,
///                     },
///                     new AzureNative.TestBase.Inputs.CommandArgs
///                     {
///                         Action = AzureNative.TestBase.Action.Launch,
///                         AlwaysRun = false,
///                         ApplyUpdateBefore = true,
///                         Content = "app/scripts/launch/job.ps1",
///                         ContentType = AzureNative.TestBase.ContentType.Path,
///                         Install1PAppBefore = false,
///                         MaxRunTime = 1800,
///                         Name = "Launch",
///                         RestartAfter = false,
///                         RunAsInteractive = true,
///                         RunElevated = true,
///                     },
///                     new AzureNative.TestBase.Inputs.CommandArgs
///                     {
///                         Action = AzureNative.TestBase.Action.Close,
///                         AlwaysRun = false,
///                         ApplyUpdateBefore = false,
///                         Content = "app/scripts/close/job.ps1",
///                         ContentType = AzureNative.TestBase.ContentType.Path,
///                         Install1PAppBefore = false,
///                         MaxRunTime = 1800,
///                         Name = "Close",
///                         RestartAfter = false,
///                         RunAsInteractive = true,
///                         RunElevated = true,
///                     },
///                     new AzureNative.TestBase.Inputs.CommandArgs
///                     {
///                         Action = AzureNative.TestBase.Action.Uninstall,
///                         AlwaysRun = true,
///                         ApplyUpdateBefore = false,
///                         Content = "app/scripts/uninstall/job.ps1",
///                         ContentType = AzureNative.TestBase.ContentType.Path,
///                         Install1PAppBefore = false,
///                         MaxRunTime = 1800,
///                         Name = "Uninstall",
///                         RestartAfter = false,
///                         RunAsInteractive = true,
///                         RunElevated = true,
///                     },
///                 },
///                 IsActive = true,
///                 TestType = AzureNative.TestBase.TestType.OutOfBoxTest,
///             },
///         },
///         Version = "1.0.0",
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
/// 		_, err := testbase.NewPackage(ctx, "package", &testbase.PackageArgs{
/// 			ApplicationName: pulumi.String("contoso-package2"),
/// 			BlobPath:        pulumi.String("storageAccountPath/package.zip"),
/// 			FirstPartyApps: testbase.FirstPartyAppDefinitionArray{
/// 				&testbase.FirstPartyAppDefinitionArgs{
/// 					Architecture:         pulumi.String(testbase.ArchitectureX64),
/// 					Channel:              pulumi.String("Current Channel"),
/// 					InteropExecutionMode: pulumi.String(testbase.InteropExecutionModeFirstPartyAppWithTests),
/// 					Name:                 pulumi.String("Office"),
/// 					Ring:                 pulumi.String("Insider"),
/// 				},
/// 			},
/// 			FlightingRing:     pulumi.String("Insider Beta Channel"),
/// 			Location:          pulumi.String("westus"),
/// 			PackageName:       pulumi.String("contoso-package2"),
/// 			ResourceGroupName: pulumi.String("contoso-rg1"),
/// 			Tags:              pulumi.StringMap{},
/// 			TargetOSList: testbase.TargetOSInfoArray{
/// 				&testbase.TargetOSInfoArgs{
/// 					OsUpdateType: pulumi.String("Security updates"),
/// 					TargetOSs: pulumi.StringArray{
/// 						pulumi.String("Windows 10 2004"),
/// 						pulumi.String("Windows 10 1903"),
/// 					},
/// 				},
/// 			},
/// 			TestBaseAccountName: pulumi.String("contoso-testBaseAccount1"),
/// 			Tests: testbase.TestArray{
/// 				&testbase.TestArgs{
/// 					Commands: testbase.CommandArray{
/// 						&testbase.CommandArgs{
/// 							Action:             pulumi.String(testbase.ActionInstall),
/// 							AlwaysRun:          pulumi.Bool(true),
/// 							ApplyUpdateBefore:  pulumi.Bool(false),
/// 							Content:            pulumi.String("app/scripts/install/job.ps1"),
/// 							ContentType:        pulumi.String(testbase.ContentTypePath),
/// 							Install1PAppBefore: pulumi.Bool(true),
/// 							MaxRunTime:         pulumi.Int(1800),
/// 							Name:               pulumi.String("Install"),
/// 							RestartAfter:       pulumi.Bool(true),
/// 							RunAsInteractive:   pulumi.Bool(true),
/// 							RunElevated:        pulumi.Bool(true),
/// 						},
/// 						&testbase.CommandArgs{
/// 							Action:             pulumi.String(testbase.ActionLaunch),
/// 							AlwaysRun:          pulumi.Bool(false),
/// 							ApplyUpdateBefore:  pulumi.Bool(true),
/// 							Content:            pulumi.String("app/scripts/launch/job.ps1"),
/// 							ContentType:        pulumi.String(testbase.ContentTypePath),
/// 							Install1PAppBefore: pulumi.Bool(false),
/// 							MaxRunTime:         pulumi.Int(1800),
/// 							Name:               pulumi.String("Launch"),
/// 							RestartAfter:       pulumi.Bool(false),
/// 							RunAsInteractive:   pulumi.Bool(true),
/// 							RunElevated:        pulumi.Bool(true),
/// 						},
/// 						&testbase.CommandArgs{
/// 							Action:             pulumi.String(testbase.ActionClose),
/// 							AlwaysRun:          pulumi.Bool(false),
/// 							ApplyUpdateBefore:  pulumi.Bool(false),
/// 							Content:            pulumi.String("app/scripts/close/job.ps1"),
/// 							ContentType:        pulumi.String(testbase.ContentTypePath),
/// 							Install1PAppBefore: pulumi.Bool(false),
/// 							MaxRunTime:         pulumi.Int(1800),
/// 							Name:               pulumi.String("Close"),
/// 							RestartAfter:       pulumi.Bool(false),
/// 							RunAsInteractive:   pulumi.Bool(true),
/// 							RunElevated:        pulumi.Bool(true),
/// 						},
/// 						&testbase.CommandArgs{
/// 							Action:             pulumi.String(testbase.ActionUninstall),
/// 							AlwaysRun:          pulumi.Bool(true),
/// 							ApplyUpdateBefore:  pulumi.Bool(false),
/// 							Content:            pulumi.String("app/scripts/uninstall/job.ps1"),
/// 							ContentType:        pulumi.String(testbase.ContentTypePath),
/// 							Install1PAppBefore: pulumi.Bool(false),
/// 							MaxRunTime:         pulumi.Int(1800),
/// 							Name:               pulumi.String("Uninstall"),
/// 							RestartAfter:       pulumi.Bool(false),
/// 							RunAsInteractive:   pulumi.Bool(true),
/// 							RunElevated:        pulumi.Bool(true),
/// 						},
/// 					},
/// 					IsActive: pulumi.Bool(true),
/// 					TestType: pulumi.String(testbase.TestTypeOutOfBoxTest),
/// 				},
/// 			},
/// 			Version: pulumi.String("1.0.0"),
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
/// import com.pulumi.azurenative.testbase.Package;
/// import com.pulumi.azurenative.testbase.PackageArgs;
/// import com.pulumi.azurenative.testbase.inputs.FirstPartyAppDefinitionArgs;
/// import com.pulumi.azurenative.testbase.inputs.TargetOSInfoArgs;
/// import com.pulumi.azurenative.testbase.inputs.TestArgs;
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
///         var package_ = new Package("package", PackageArgs.builder()
///             .applicationName("contoso-package2")
///             .blobPath("storageAccountPath/package.zip")
///             .firstPartyApps(FirstPartyAppDefinitionArgs.builder()
///                 .architecture("x64")
///                 .channel("Current Channel")
///                 .interopExecutionMode("firstPartyAppWithTests")
///                 .name("Office")
///                 .ring("Insider")
///                 .build())
///             .flightingRing("Insider Beta Channel")
///             .location("westus")
///             .packageName("contoso-package2")
///             .resourceGroupName("contoso-rg1")
///             .tags(Map.ofEntries(
///             ))
///             .targetOSList(TargetOSInfoArgs.builder()
///                 .osUpdateType("Security updates")
///                 .targetOSs(
///                     "Windows 10 2004",
///                     "Windows 10 1903")
///                 .build())
///             .testBaseAccountName("contoso-testBaseAccount1")
///             .tests(TestArgs.builder()
///                 .commands(
///                     CommandArgs.builder()
///                         .action("Install")
///                         .alwaysRun(true)
///                         .applyUpdateBefore(false)
///                         .content("app/scripts/install/job.ps1")
///                         .contentType("Path")
///                         .install1PAppBefore(true)
///                         .maxRunTime(1800)
///                         .name("Install")
///                         .restartAfter(true)
///                         .runAsInteractive(true)
///                         .runElevated(true)
///                         .build(),
///                     CommandArgs.builder()
///                         .action("Launch")
///                         .alwaysRun(false)
///                         .applyUpdateBefore(true)
///                         .content("app/scripts/launch/job.ps1")
///                         .contentType("Path")
///                         .install1PAppBefore(false)
///                         .maxRunTime(1800)
///                         .name("Launch")
///                         .restartAfter(false)
///                         .runAsInteractive(true)
///                         .runElevated(true)
///                         .build(),
///                     CommandArgs.builder()
///                         .action("Close")
///                         .alwaysRun(false)
///                         .applyUpdateBefore(false)
///                         .content("app/scripts/close/job.ps1")
///                         .contentType("Path")
///                         .install1PAppBefore(false)
///                         .maxRunTime(1800)
///                         .name("Close")
///                         .restartAfter(false)
///                         .runAsInteractive(true)
///                         .runElevated(true)
///                         .build(),
///                     CommandArgs.builder()
///                         .action("Uninstall")
///                         .alwaysRun(true)
///                         .applyUpdateBefore(false)
///                         .content("app/scripts/uninstall/job.ps1")
///                         .contentType("Path")
///                         .install1PAppBefore(false)
///                         .maxRunTime(1800)
///                         .name("Uninstall")
///                         .restartAfter(false)
///                         .runAsInteractive(true)
///                         .runElevated(true)
///                         .build())
///                 .isActive(true)
///                 .testType("OutOfBoxTest")
///                 .build())
///             .version("1.0.0")
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
/// const _package = new azure_native.testbase.Package("package", {
///     applicationName: "contoso-package2",
///     blobPath: "storageAccountPath/package.zip",
///     firstPartyApps: [{
///         architecture: azure_native.testbase.Architecture.X64,
///         channel: "Current Channel",
///         interopExecutionMode: azure_native.testbase.InteropExecutionMode.FirstPartyAppWithTests,
///         name: "Office",
///         ring: "Insider",
///     }],
///     flightingRing: "Insider Beta Channel",
///     location: "westus",
///     packageName: "contoso-package2",
///     resourceGroupName: "contoso-rg1",
///     tags: {},
///     targetOSList: [{
///         osUpdateType: "Security updates",
///         targetOSs: [
///             "Windows 10 2004",
///             "Windows 10 1903",
///         ],
///     }],
///     testBaseAccountName: "contoso-testBaseAccount1",
///     tests: [{
///         commands: [
///             {
///                 action: azure_native.testbase.Action.Install,
///                 alwaysRun: true,
///                 applyUpdateBefore: false,
///                 content: "app/scripts/install/job.ps1",
///                 contentType: azure_native.testbase.ContentType.Path,
///                 install1PAppBefore: true,
///                 maxRunTime: 1800,
///                 name: "Install",
///                 restartAfter: true,
///                 runAsInteractive: true,
///                 runElevated: true,
///             },
///             {
///                 action: azure_native.testbase.Action.Launch,
///                 alwaysRun: false,
///                 applyUpdateBefore: true,
///                 content: "app/scripts/launch/job.ps1",
///                 contentType: azure_native.testbase.ContentType.Path,
///                 install1PAppBefore: false,
///                 maxRunTime: 1800,
///                 name: "Launch",
///                 restartAfter: false,
///                 runAsInteractive: true,
///                 runElevated: true,
///             },
///             {
///                 action: azure_native.testbase.Action.Close,
///                 alwaysRun: false,
///                 applyUpdateBefore: false,
///                 content: "app/scripts/close/job.ps1",
///                 contentType: azure_native.testbase.ContentType.Path,
///                 install1PAppBefore: false,
///                 maxRunTime: 1800,
///                 name: "Close",
///                 restartAfter: false,
///                 runAsInteractive: true,
///                 runElevated: true,
///             },
///             {
///                 action: azure_native.testbase.Action.Uninstall,
///                 alwaysRun: true,
///                 applyUpdateBefore: false,
///                 content: "app/scripts/uninstall/job.ps1",
///                 contentType: azure_native.testbase.ContentType.Path,
///                 install1PAppBefore: false,
///                 maxRunTime: 1800,
///                 name: "Uninstall",
///                 restartAfter: false,
///                 runAsInteractive: true,
///                 runElevated: true,
///             },
///         ],
///         isActive: true,
///         testType: azure_native.testbase.TestType.OutOfBoxTest,
///     }],
///     version: "1.0.0",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// package = azure_native.testbase.Package("package",
///     application_name="contoso-package2",
///     blob_path="storageAccountPath/package.zip",
///     first_party_apps=[{
///         "architecture": azure_native.testbase.Architecture.X64,
///         "channel": "Current Channel",
///         "interop_execution_mode": azure_native.testbase.InteropExecutionMode.FIRST_PARTY_APP_WITH_TESTS,
///         "name": "Office",
///         "ring": "Insider",
///     }],
///     flighting_ring="Insider Beta Channel",
///     location="westus",
///     package_name="contoso-package2",
///     resource_group_name="contoso-rg1",
///     tags={},
///     target_os_list=[{
///         "os_update_type": "Security updates",
///         "target_oss": [
///             "Windows 10 2004",
///             "Windows 10 1903",
///         ],
///     }],
///     test_base_account_name="contoso-testBaseAccount1",
///     tests=[{
///         "commands": [
///             {
///                 "action": azure_native.testbase.Action.INSTALL,
///                 "always_run": True,
///                 "apply_update_before": False,
///                 "content": "app/scripts/install/job.ps1",
///                 "content_type": azure_native.testbase.ContentType.PATH,
///                 "install1_p_app_before": True,
///                 "max_run_time": 1800,
///                 "name": "Install",
///                 "restart_after": True,
///                 "run_as_interactive": True,
///                 "run_elevated": True,
///             },
///             {
///                 "action": azure_native.testbase.Action.LAUNCH,
///                 "always_run": False,
///                 "apply_update_before": True,
///                 "content": "app/scripts/launch/job.ps1",
///                 "content_type": azure_native.testbase.ContentType.PATH,
///                 "install1_p_app_before": False,
///                 "max_run_time": 1800,
///                 "name": "Launch",
///                 "restart_after": False,
///                 "run_as_interactive": True,
///                 "run_elevated": True,
///             },
///             {
///                 "action": azure_native.testbase.Action.CLOSE,
///                 "always_run": False,
///                 "apply_update_before": False,
///                 "content": "app/scripts/close/job.ps1",
///                 "content_type": azure_native.testbase.ContentType.PATH,
///                 "install1_p_app_before": False,
///                 "max_run_time": 1800,
///                 "name": "Close",
///                 "restart_after": False,
///                 "run_as_interactive": True,
///                 "run_elevated": True,
///             },
///             {
///                 "action": azure_native.testbase.Action.UNINSTALL,
///                 "always_run": True,
///                 "apply_update_before": False,
///                 "content": "app/scripts/uninstall/job.ps1",
///                 "content_type": azure_native.testbase.ContentType.PATH,
///                 "install1_p_app_before": False,
///                 "max_run_time": 1800,
///                 "name": "Uninstall",
///                 "restart_after": False,
///                 "run_as_interactive": True,
///                 "run_elevated": True,
///             },
///         ],
///         "is_active": True,
///         "test_type": azure_native.testbase.TestType.OUT_OF_BOX_TEST,
///     }],
///     version="1.0.0")
///
/// ```
///
/// ```yaml
/// resources:
///   package:
///     type: azure-native:testbase:Package
///     properties:
///       applicationName: contoso-package2
///       blobPath: storageAccountPath/package.zip
///       firstPartyApps:
///         - architecture: x64
///           channel: Current Channel
///           interopExecutionMode: firstPartyAppWithTests
///           name: Office
///           ring: Insider
///       flightingRing: Insider Beta Channel
///       location: westus
///       packageName: contoso-package2
///       resourceGroupName: contoso-rg1
///       tags: {}
///       targetOSList:
///         - osUpdateType: Security updates
///           targetOSs:
///             - Windows 10 2004
///             - Windows 10 1903
///       testBaseAccountName: contoso-testBaseAccount1
///       tests:
///         - commands:
///             - action: Install
///               alwaysRun: true
///               applyUpdateBefore: false
///               content: app/scripts/install/job.ps1
///               contentType: Path
///               install1PAppBefore: true
///               maxRunTime: 1800
///               name: Install
///               restartAfter: true
///               runAsInteractive: true
///               runElevated: true
///             - action: Launch
///               alwaysRun: false
///               applyUpdateBefore: true
///               content: app/scripts/launch/job.ps1
///               contentType: Path
///               install1PAppBefore: false
///               maxRunTime: 1800
///               name: Launch
///               restartAfter: false
///               runAsInteractive: true
///               runElevated: true
///             - action: Close
///               alwaysRun: false
///               applyUpdateBefore: false
///               content: app/scripts/close/job.ps1
///               contentType: Path
///               install1PAppBefore: false
///               maxRunTime: 1800
///               name: Close
///               restartAfter: false
///               runAsInteractive: true
///               runElevated: true
///             - action: Uninstall
///               alwaysRun: true
///               applyUpdateBefore: false
///               content: app/scripts/uninstall/job.ps1
///               contentType: Path
///               install1PAppBefore: false
///               maxRunTime: 1800
///               name: Uninstall
///               restartAfter: false
///               runAsInteractive: true
///               runElevated: true
///           isActive: true
///           testType: OutOfBoxTest
///       version: 1.0.0
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
/// $ pulumi import azure-native:testbase:Package contoso-package2 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.TestBase/testBaseAccounts/{testBaseAccountName}/packages/{packageName}
/// ```
class Package extends pulumi.CustomResource {
  /// Application name
  late final pulumi.Output<String> applicationName;

  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The file path of the package.
  late final pulumi.Output<String?> blobPath;

  /// The id of draft package. Used to create or update this package from a draft package.
  late final pulumi.Output<String?> draftPackageId;

  /// The list of first party applications to test along with user application.
  late final pulumi.Output<List<Map<String, dynamic>>?> firstPartyApps;

  /// The flighting ring for feature update.
  late final pulumi.Output<String?> flightingRing;

  /// The list of gallery apps to test along with user application.
  late final pulumi.Output<List<Map<String, dynamic>>> galleryApps;

  /// Specifies the baseline os and target os for inplace upgrade.
  late final pulumi.Output<InplaceUpgradeOSInfoResponse?> inplaceUpgradeOSPair;

  /// The metadata of Intune enrollment.
  late final pulumi.Output<IntuneEnrollmentMetadataResponse?>
  intuneEnrollmentMetadata;

  /// Flag showing that whether the package is enabled. It doesn't schedule test for package which is not enabled.
  late final pulumi.Output<bool> isEnabled;

  /// The UTC timestamp when the package was last modified.
  late final pulumi.Output<String> lastModifiedTime;

  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// The status of the package.
  late final pulumi.Output<String> packageStatus;

  /// The provisioning state of the resource.
  late final pulumi.Output<String> provisioningState;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Specifies the target OSs of specific OS Update types.
  late final pulumi.Output<List<Map<String, dynamic>>?> targetOSList;

  /// OOB, functional or flow driven. Mapped to the data in 'tests' property.
  late final pulumi.Output<List<String>> testTypes;

  /// The detailed test information.
  late final pulumi.Output<List<Map<String, dynamic>>?> tests;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// The validation results. There's validation on package when it's created or updated.
  late final pulumi.Output<List<Map<String, dynamic>>> validationResults;

  /// Application version
  late final pulumi.Output<String> version;

  /// Creates a new [Package].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Package]. {@macro pulumi_testbase_package_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Package(
    String name, {
    PackageArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:testbase:Package',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    applicationName = registerOutput<String>('applicationName');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    blobPath = registerOutput<String?>('blobPath');
    draftPackageId = registerOutput<String?>('draftPackageId');
    firstPartyApps = registerOutput<List<Map<String, dynamic>>?>(
      'firstPartyApps',
    );
    flightingRing = registerOutput<String?>('flightingRing');
    galleryApps = registerOutput<List<Map<String, dynamic>>>('galleryApps');
    inplaceUpgradeOSPair = registerOutput<InplaceUpgradeOSInfoResponse?>(
      'inplaceUpgradeOSPair',
    );
    intuneEnrollmentMetadata =
        registerOutput<IntuneEnrollmentMetadataResponse?>(
          'intuneEnrollmentMetadata',
        );
    isEnabled = registerOutput<bool>('isEnabled');
    lastModifiedTime = registerOutput<String>('lastModifiedTime');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    packageStatus = registerOutput<String>('packageStatus');
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData');
    tags = registerOutput<Map<String, String>?>('tags');
    targetOSList = registerOutput<List<Map<String, dynamic>>?>('targetOSList');
    testTypes = registerOutput<List<String>>('testTypes');
    tests = registerOutput<List<Map<String, dynamic>>?>('tests');
    type = registerOutput<String>('type');
    validationResults = registerOutput<List<Map<String, dynamic>>>(
      'validationResults',
    );
    version = registerOutput<String>('version');
  }
}
