import 'package:pulumi/pulumi.dart' as pulumi;
import 'folder_settings_args.dart';
import 'folder_settings_state.dart';

/// Manages Cloud Observability settings for a folder.
///
/// &gt; **Warning:** This resource is in beta, and should be used with the terraform-provider-google-beta provider.
/// See Provider Versions for more details on beta resources.
///
///
/// ## Example Usage
///
/// ### Observability Folder Settings Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as time from "@pulumiverse/time";
///
/// const testFolder = new gcp.organizations.Folder("test_folder", {
///     displayName: "tf-test-_80411",
///     parent: "organizations/123456789",
///     deletionProtection: false,
/// });
/// // Wait for the folder to be created and recognized by the Observability API
/// const waitForSettingsPropagation = new time.Sleep("wait_for_settings_propagation", {createDuration: "90s"}, {
///     dependsOn: [testFolder],
/// });
/// const settingsData = gcp.observability.getFolderSettingsOutput({
///     folder: testFolder.folderId,
///     location: "us",
/// });
/// // Add a delay to allow the service account to propagate
/// const waitForSaPropagation = new time.Sleep("wait_for_sa_propagation", {createDuration: "90s"}, {
///     dependsOn: [settingsData],
/// });
/// const iam = new gcp.kms.CryptoKeyIAMMember("iam", {
///     cryptoKeyId: "example-key",
///     role: "roles/cloudkms.cryptoKeyEncrypterDecrypter",
///     member: pulumi.interpolate`serviceAccount:${settingsData.serviceAccountId}`,
/// }, {
///     dependsOn: [waitForSaPropagation],
/// });
/// const primary = new gcp.observability.FolderSettings("primary", {
///     location: "us",
///     folder: testFolder.folderId,
///     kmsKeyName: "example-key",
/// }, {
///     dependsOn: [iam],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumiverse_time as time
///
/// test_folder = gcp.organizations.Folder("test_folder",
///     display_name="tf-test-_80411",
///     parent="organizations/123456789",
///     deletion_protection=False)
/// # Wait for the folder to be created and recognized by the Observability API
/// wait_for_settings_propagation = time.Sleep("wait_for_settings_propagation", create_duration="90s",
/// opts = pulumi.ResourceOptions(depends_on=[test_folder]))
/// settings_data = gcp.observability.get_folder_settings_output(folder=test_folder.folder_id,
///     location="us")
/// # Add a delay to allow the service account to propagate
/// wait_for_sa_propagation = time.Sleep("wait_for_sa_propagation", create_duration="90s",
/// opts = pulumi.ResourceOptions(depends_on=[settings_data]))
/// iam = gcp.kms.CryptoKeyIAMMember("iam",
///     crypto_key_id="example-key",
///     role="roles/cloudkms.cryptoKeyEncrypterDecrypter",
///     member=settings_data.apply(lambda settings_data: f"serviceAccount:{settings_data.service_account_id}"),
///     opts = pulumi.ResourceOptions(depends_on=[wait_for_sa_propagation]))
/// primary = gcp.observability.FolderSettings("primary",
///     location="us",
///     folder=test_folder.folder_id,
///     kms_key_name="example-key",
///     opts = pulumi.ResourceOptions(depends_on=[iam]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
/// using Time = Pulumiverse.Time;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var testFolder = new Gcp.Organizations.Folder("test_folder", new()
///     {
///         DisplayName = "tf-test-_80411",
///         Parent = "organizations/123456789",
///         DeletionProtection = false,
///     });
///
///     // Wait for the folder to be created and recognized by the Observability API
///     var waitForSettingsPropagation = new Time.Sleep("wait_for_settings_propagation", new()
///     {
///         CreateDuration = "90s",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             testFolder,
///         },
///     });
///
///     var settingsData = Gcp.Observability.GetFolderSettings.Invoke(new()
///     {
///         Folder = testFolder.FolderId,
///         Location = "us",
///     });
///
///     // Add a delay to allow the service account to propagate
///     var waitForSaPropagation = new Time.Sleep("wait_for_sa_propagation", new()
///     {
///         CreateDuration = "90s",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             settingsData,
///         },
///     });
///
///     var iam = new Gcp.Kms.CryptoKeyIAMMember("iam", new()
///     {
///         CryptoKeyId = "example-key",
///         Role = "roles/cloudkms.cryptoKeyEncrypterDecrypter",
///         Member = $"serviceAccount:{settingsData.Apply(getFolderSettingsResult => getFolderSettingsResult.ServiceAccountId)}",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             waitForSaPropagation,
///         },
///     });
///
///     var primary = new Gcp.Observability.FolderSettings("primary", new()
///     {
///         Location = "us",
///         Folder = testFolder.FolderId,
///         KmsKeyName = "example-key",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             iam,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/kms"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/observability"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumiverse/pulumi-time/sdk/go/time"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		testFolder, err := organizations.NewFolder(ctx, "test_folder", &organizations.FolderArgs{
/// 			DisplayName:        pulumi.String("tf-test-_80411"),
/// 			Parent:             pulumi.String("organizations/123456789"),
/// 			DeletionProtection: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Wait for the folder to be created and recognized by the Observability API
/// 		_, err = time.NewSleep(ctx, "wait_for_settings_propagation", &time.SleepArgs{
/// 			CreateDuration: pulumi.String("90s"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			testFolder,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		settingsData := observability.LookupFolderSettingsOutput(ctx, observability.GetFolderSettingsOutputArgs{
/// 			Folder:   testFolder.FolderId,
/// 			Location: pulumi.String("us"),
/// 		}, nil)
/// 		// Add a delay to allow the service account to propagate
/// 		waitForSaPropagation, err := time.NewSleep(ctx, "wait_for_sa_propagation", &time.SleepArgs{
/// 			CreateDuration: pulumi.String("90s"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			settingsData,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		iam, err := kms.NewCryptoKeyIAMMember(ctx, "iam", &kms.CryptoKeyIAMMemberArgs{
/// 			CryptoKeyId: pulumi.String("example-key"),
/// 			Role:        pulumi.String("roles/cloudkms.cryptoKeyEncrypterDecrypter"),
/// 			Member: settingsData.ApplyT(func(settingsData observability.GetFolderSettingsResult) (string, error) {
/// 				return fmt.Sprintf("serviceAccount:%v", settingsData.ServiceAccountId), nil
/// 			}).(pulumi.StringOutput),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			waitForSaPropagation,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = observability.NewFolderSettings(ctx, "primary", &observability.FolderSettingsArgs{
/// 			Location:   pulumi.String("us"),
/// 			Folder:     testFolder.FolderId,
/// 			KmsKeyName: pulumi.String("example-key"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			iam,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///     time = {
///       source = "pulumi/time"
///     }
///   }
/// }
///
/// data "gcp_observability_getfoldersettings" "settingsData" {
///   folder   = gcp_organizations_folder.test_folder.folder_id
///   location = "us"
/// }
///
/// resource "gcp_organizations_folder" "test_folder" {
///   display_name        = "tf-test-_80411"
///   parent              = "organizations/123456789"
///   deletion_protection = false
/// }
/// # Wait for the folder to be created and recognized by the Observability API
/// resource "time_sleep" "wait_for_settings_propagation" {
///   depends_on      = [gcp_organizations_folder.test_folder]
///   create_duration = "90s"
/// }
/// # Add a delay to allow the service account to propagate
/// resource "time_sleep" "wait_for_sa_propagation" {
///   depends_on      = [data.gcp_observability_getfoldersettings.settingsData]
///   create_duration = "90s"
/// }
/// resource "gcp_kms_cryptokeyiammember" "iam" {
///   depends_on    = [time_sleep.wait_for_sa_propagation]
///   crypto_key_id = "example-key"
///   role          = "roles/cloudkms.cryptoKeyEncrypterDecrypter"
///   member        ="serviceAccount:${data.gcp_observability_getfoldersettings.settingsData.service_account_id}"
/// }
/// resource "gcp_observability_foldersettings" "primary" {
///   depends_on   = [gcp_kms_cryptokeyiammember.iam]
///   location     = "us"
///   folder       = gcp_organizations_folder.test_folder.folder_id
///   kms_key_name = "example-key"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.organizations.Folder;
/// import com.pulumi.gcp.organizations.FolderArgs;
/// import com.pulumiverse.time.Sleep;
/// import com.pulumiverse.time.SleepArgs;
/// import com.pulumi.gcp.observability.ObservabilityFunctions;
/// import com.pulumi.gcp.observability.inputs.GetFolderSettingsArgs;
/// import com.pulumi.gcp.kms.CryptoKeyIAMMember;
/// import com.pulumi.gcp.kms.CryptoKeyIAMMemberArgs;
/// import com.pulumi.gcp.observability.FolderSettings;
/// import com.pulumi.gcp.observability.FolderSettingsArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var testFolder = new Folder("testFolder", FolderArgs.builder()
///             .displayName("tf-test-_80411")
///             .parent("organizations/123456789")
///             .deletionProtection(false)
///             .build());
///
///         // Wait for the folder to be created and recognized by the Observability API
///         var waitForSettingsPropagation = new Sleep("waitForSettingsPropagation", SleepArgs.builder()
///             .createDuration("90s")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(testFolder)
///                 .build());
///
///         final var settingsData = ObservabilityFunctions.getFolderSettings(GetFolderSettingsArgs.builder()
///             .folder(testFolder.folderId())
///             .location("us")
///             .build());
///
///         // Add a delay to allow the service account to propagate
///         var waitForSaPropagation = new Sleep("waitForSaPropagation", SleepArgs.builder()
///             .createDuration("90s")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(settingsData)
///                 .build());
///
///         var iam = new CryptoKeyIAMMember("iam", CryptoKeyIAMMemberArgs.builder()
///             .cryptoKeyId("example-key")
///             .role("roles/cloudkms.cryptoKeyEncrypterDecrypter")
///             .member(settingsData.applyValue(_settingsData -> String.format("serviceAccount:%s", _settingsData.serviceAccountId())))
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(waitForSaPropagation)
///                 .build());
///
///         var primary = new FolderSettings("primary", FolderSettingsArgs.builder()
///             .location("us")
///             .folder(testFolder.folderId())
///             .kmsKeyName("example-key")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(iam)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   testFolder:
///     type: gcp:organizations:Folder
///     name: test_folder
///     properties:
///       displayName: tf-test-_80411
///       parent: organizations/123456789
///       deletionProtection: false
///   # Wait for the folder to be created and recognized by the Observability API
///   waitForSettingsPropagation:
///     type: time:Sleep
///     name: wait_for_settings_propagation
///     properties:
///       createDuration: 90s
///     options:
///       dependsOn:
///         - ${testFolder}
///   # Add a delay to allow the service account to propagate
///   waitForSaPropagation:
///     type: time:Sleep
///     name: wait_for_sa_propagation
///     properties:
///       createDuration: 90s
///     options:
///       dependsOn:
///         - ${settingsData}
///   iam:
///     type: gcp:kms:CryptoKeyIAMMember
///     properties:
///       cryptoKeyId: example-key
///       role: roles/cloudkms.cryptoKeyEncrypterDecrypter
///       member: serviceAccount:${settingsData.serviceAccountId}
///     options:
///       dependsOn:
///         - ${waitForSaPropagation}
///   primary:
///     type: gcp:observability:FolderSettings
///     properties:
///       location: us
///       folder: ${testFolder.folderId}
///       kmsKeyName: example-key
///     options:
///       dependsOn:
///         - ${iam}
/// variables:
///   settingsData:
///     fn::invoke:
///       function: gcp:observability:getFolderSettings
///       arguments:
///         folder: ${testFolder.folderId}
///         location: us
/// ```
///
/// ### Observability Folder Settings Basic Global
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as time from "@pulumiverse/time";
///
/// const testFolder = new gcp.organizations.Folder("test_folder", {
///     displayName: "tf-test-_44263",
///     parent: "organizations/123456789",
///     deletionProtection: false,
/// });
/// // Wait for the folder to be created and recognized by the Observability API
/// const waitForFolder = new time.Sleep("wait_for_folder", {createDuration: "90s"}, {
///     dependsOn: [testFolder],
/// });
/// const settingsData = gcp.observability.getFolderSettingsOutput({
///     folder: testFolder.folderId,
///     location: "global",
/// });
/// const primaryGlobal = new gcp.observability.FolderSettings("primary_global", {
///     location: "global",
///     folder: testFolder.folderId,
///     defaultStorageLocation: "us",
/// }, {
///     dependsOn: [settingsData],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumiverse_time as time
///
/// test_folder = gcp.organizations.Folder("test_folder",
///     display_name="tf-test-_44263",
///     parent="organizations/123456789",
///     deletion_protection=False)
/// # Wait for the folder to be created and recognized by the Observability API
/// wait_for_folder = time.Sleep("wait_for_folder", create_duration="90s",
/// opts = pulumi.ResourceOptions(depends_on=[test_folder]))
/// settings_data = gcp.observability.get_folder_settings_output(folder=test_folder.folder_id,
///     location="global")
/// primary_global = gcp.observability.FolderSettings("primary_global",
///     location="global",
///     folder=test_folder.folder_id,
///     default_storage_location="us",
///     opts = pulumi.ResourceOptions(depends_on=[settings_data]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
/// using Time = Pulumiverse.Time;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var testFolder = new Gcp.Organizations.Folder("test_folder", new()
///     {
///         DisplayName = "tf-test-_44263",
///         Parent = "organizations/123456789",
///         DeletionProtection = false,
///     });
///
///     // Wait for the folder to be created and recognized by the Observability API
///     var waitForFolder = new Time.Sleep("wait_for_folder", new()
///     {
///         CreateDuration = "90s",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             testFolder,
///         },
///     });
///
///     var settingsData = Gcp.Observability.GetFolderSettings.Invoke(new()
///     {
///         Folder = testFolder.FolderId,
///         Location = "global",
///     });
///
///     var primaryGlobal = new Gcp.Observability.FolderSettings("primary_global", new()
///     {
///         Location = "global",
///         Folder = testFolder.FolderId,
///         DefaultStorageLocation = "us",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             settingsData,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/observability"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumiverse/pulumi-time/sdk/go/time"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		testFolder, err := organizations.NewFolder(ctx, "test_folder", &organizations.FolderArgs{
/// 			DisplayName:        pulumi.String("tf-test-_44263"),
/// 			Parent:             pulumi.String("organizations/123456789"),
/// 			DeletionProtection: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Wait for the folder to be created and recognized by the Observability API
/// 		_, err = time.NewSleep(ctx, "wait_for_folder", &time.SleepArgs{
/// 			CreateDuration: pulumi.String("90s"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			testFolder,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		settingsData := observability.LookupFolderSettingsOutput(ctx, observability.GetFolderSettingsOutputArgs{
/// 			Folder:   testFolder.FolderId,
/// 			Location: pulumi.String("global"),
/// 		}, nil)
/// 		_, err = observability.NewFolderSettings(ctx, "primary_global", &observability.FolderSettingsArgs{
/// 			Location:               pulumi.String("global"),
/// 			Folder:                 testFolder.FolderId,
/// 			DefaultStorageLocation: pulumi.String("us"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			settingsData,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///     time = {
///       source = "pulumi/time"
///     }
///   }
/// }
///
/// data "gcp_observability_getfoldersettings" "settingsData" {
///   folder   = gcp_organizations_folder.test_folder.folder_id
///   location = "global"
/// }
///
/// resource "gcp_organizations_folder" "test_folder" {
///   display_name        = "tf-test-_44263"
///   parent              = "organizations/123456789"
///   deletion_protection = false
/// }
/// # Wait for the folder to be created and recognized by the Observability API
/// resource "time_sleep" "wait_for_folder" {
///   depends_on      = [gcp_organizations_folder.test_folder]
///   create_duration = "90s"
/// }
/// resource "gcp_observability_foldersettings" "primary_global" {
///   depends_on               = [data.gcp_observability_getfoldersettings.settingsData]
///   location                 = "global"
///   folder                   = gcp_organizations_folder.test_folder.folder_id
///   default_storage_location = "us"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.organizations.Folder;
/// import com.pulumi.gcp.organizations.FolderArgs;
/// import com.pulumiverse.time.Sleep;
/// import com.pulumiverse.time.SleepArgs;
/// import com.pulumi.gcp.observability.ObservabilityFunctions;
/// import com.pulumi.gcp.observability.inputs.GetFolderSettingsArgs;
/// import com.pulumi.gcp.observability.FolderSettings;
/// import com.pulumi.gcp.observability.FolderSettingsArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var testFolder = new Folder("testFolder", FolderArgs.builder()
///             .displayName("tf-test-_44263")
///             .parent("organizations/123456789")
///             .deletionProtection(false)
///             .build());
///
///         // Wait for the folder to be created and recognized by the Observability API
///         var waitForFolder = new Sleep("waitForFolder", SleepArgs.builder()
///             .createDuration("90s")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(testFolder)
///                 .build());
///
///         final var settingsData = ObservabilityFunctions.getFolderSettings(GetFolderSettingsArgs.builder()
///             .folder(testFolder.folderId())
///             .location("global")
///             .build());
///
///         var primaryGlobal = new FolderSettings("primaryGlobal", FolderSettingsArgs.builder()
///             .location("global")
///             .folder(testFolder.folderId())
///             .defaultStorageLocation("us")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(settingsData)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   testFolder:
///     type: gcp:organizations:Folder
///     name: test_folder
///     properties:
///       displayName: tf-test-_44263
///       parent: organizations/123456789
///       deletionProtection: false
///   # Wait for the folder to be created and recognized by the Observability API
///   waitForFolder:
///     type: time:Sleep
///     name: wait_for_folder
///     properties:
///       createDuration: 90s
///     options:
///       dependsOn:
///         - ${testFolder}
///   primaryGlobal:
///     type: gcp:observability:FolderSettings
///     name: primary_global
///     properties:
///       location: global
///       folder: ${testFolder.folderId}
///       defaultStorageLocation: us
///     options:
///       dependsOn:
///         - ${settingsData}
/// variables:
///   settingsData:
///     fn::invoke:
///       function: gcp:observability:getFolderSettings
///       arguments:
///         folder: ${testFolder.folderId}
///         location: global
/// ```
///
///
/// ## Import
///
/// FolderSettings can be imported using any of these accepted formats:
///
/// * `folders/{{folder}}/locations/{{location}}/settings`
/// * `{{folder}}/{{location}}`
///
///
/// When using the `pulumi import` command, FolderSettings can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:observability/folderSettings:FolderSettings default folders/{{folder}}/locations/{{location}}/settings
/// $ pulumi import gcp:observability/folderSettings:FolderSettings default {{folder}}/{{location}}
/// ```
class FolderSettings extends pulumi.CustomResource {
  /// The default storage location for new resources, e.g. buckets. Only valid for global location.
  late final pulumi.Output<String?> defaultStorageLocation;
  /// The folder ID.
  late final pulumi.Output<String> folder;
  /// The default Cloud KMS key to use for new resources. Only valid for regional locations.
  late final pulumi.Output<String?> kmsKeyName;
  /// The location of the settings.
  late final pulumi.Output<String> location;
  /// The resource name of the settings.
  late final pulumi.Output<String> name;
  /// The service account used by Cloud Observability for this folder.
  late final pulumi.Output<String> serviceAccountId;

  /// Creates a new [FolderSettings].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FolderSettings]. {@macro pulumi_observability_folder_settings_folder_settings_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FolderSettings(
    String name, {
    FolderSettingsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:observability/folderSettings:FolderSettings',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.36.1').merge(options),
        ) {
    defaultStorageLocation = registerOutput<String?>('defaultStorageLocation');
    folder = registerOutput<String>('folder');
    kmsKeyName = registerOutput<String?>('kmsKeyName');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    serviceAccountId = registerOutput<String>('serviceAccountId');
  }

  /// Gets an existing [FolderSettings] resource's state with the given [name] and [id].
  static FolderSettings get(
    String name,
    pulumi.Input<String> id, {
    FolderSettingsState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return FolderSettings._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  FolderSettings._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:observability/folderSettings:FolderSettings',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    defaultStorageLocation = registerOutput<String?>('defaultStorageLocation');
    folder = registerOutput<String>('folder');
    kmsKeyName = registerOutput<String?>('kmsKeyName');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    serviceAccountId = registerOutput<String>('serviceAccountId');
  }

  /// Creates a typed reference to an existing [FolderSettings] resource.
  FolderSettings.reference(String urn)
    : super(
        'gcp:observability/folderSettings:FolderSettings',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    defaultStorageLocation = registerOutput<String?>('defaultStorageLocation');
    folder = registerOutput<String>('folder');
    kmsKeyName = registerOutput<String?>('kmsKeyName');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    serviceAccountId = registerOutput<String>('serviceAccountId');
  }
}
