import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_approval_settings_args.dart';
import 'access_approval_settings_state.dart';

/// Access Approval enables you to require your explicit approval whenever Google support and engineering need to access your customer content.
///
///
/// To get more information about FolderSettings, see:
///
/// * [API documentation](https://cloud.google.com/access-approval/docs/reference/rest/v1/folders)
///
/// ## Example Usage
///
/// ### Folder Access Approval Full
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const myFolder = new gcp.organizations.Folder("my_folder", {
///     displayName: "folder-faaf",
///     parent: "organizations/123456789",
///     deletionProtection: false,
/// });
/// const folderAccessApproval = new gcp.folder.AccessApprovalSettings("folder_access_approval", {
///     folderId: myFolder.folderId,
///     notificationEmails: [
///         "testuser@example.com",
///         "example.user@example.com",
///     ],
///     enrolledServices: [{
///         cloudProduct: "all",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_folder = gcp.organizations.Folder("my_folder",
///     display_name="folder-faaf",
///     parent="organizations/123456789",
///     deletion_protection=False)
/// folder_access_approval = gcp.folder.AccessApprovalSettings("folder_access_approval",
///     folder_id=my_folder.folder_id,
///     notification_emails=[
///         "testuser@example.com",
///         "example.user@example.com",
///     ],
///     enrolled_services=[{
///         "cloud_product": "all",
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var myFolder = new Gcp.Organizations.Folder("my_folder", new()
///     {
///         DisplayName = "folder-faaf",
///         Parent = "organizations/123456789",
///         DeletionProtection = false,
///     });
///
///     var folderAccessApproval = new Gcp.Folder.AccessApprovalSettings("folder_access_approval", new()
///     {
///         FolderId = myFolder.FolderId,
///         NotificationEmails = new[]
///         {
///             "testuser@example.com",
///             "example.user@example.com",
///         },
///         EnrolledServices = new[]
///         {
///             new Gcp.Folder.Inputs.AccessApprovalSettingsEnrolledServiceArgs
///             {
///                 CloudProduct = "all",
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/folder"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		myFolder, err := organizations.NewFolder(ctx, "my_folder", &organizations.FolderArgs{
/// 			DisplayName:        pulumi.String("folder-faaf"),
/// 			Parent:             pulumi.String("organizations/123456789"),
/// 			DeletionProtection: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = folder.NewAccessApprovalSettings(ctx, "folder_access_approval", &folder.AccessApprovalSettingsArgs{
/// 			FolderId: myFolder.FolderId,
/// 			NotificationEmails: pulumi.StringArray{
/// 				pulumi.String("testuser@example.com"),
/// 				pulumi.String("example.user@example.com"),
/// 			},
/// 			EnrolledServices: folder.AccessApprovalSettingsEnrolledServiceArray{
/// 				&folder.AccessApprovalSettingsEnrolledServiceArgs{
/// 					CloudProduct: pulumi.String("all"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
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
/// import com.pulumi.gcp.folder.AccessApprovalSettings;
/// import com.pulumi.gcp.folder.AccessApprovalSettingsArgs;
/// import com.pulumi.gcp.folder.inputs.AccessApprovalSettingsEnrolledServiceArgs;
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
///         var myFolder = new Folder("myFolder", FolderArgs.builder()
///             .displayName("folder-faaf")
///             .parent("organizations/123456789")
///             .deletionProtection(false)
///             .build());
///
///         var folderAccessApproval = new AccessApprovalSettings("folderAccessApproval", AccessApprovalSettingsArgs.builder()
///             .folderId(myFolder.folderId())
///             .notificationEmails(
///                 "testuser@example.com",
///                 "example.user@example.com")
///             .enrolledServices(AccessApprovalSettingsEnrolledServiceArgs.builder()
///                 .cloudProduct("all")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   myFolder:
///     type: gcp:organizations:Folder
///     name: my_folder
///     properties:
///       displayName: folder-faaf
///       parent: organizations/123456789
///       deletionProtection: false
///   folderAccessApproval:
///     type: gcp:folder:AccessApprovalSettings
///     name: folder_access_approval
///     properties:
///       folderId: ${myFolder.folderId}
///       notificationEmails:
///         - testuser@example.com
///         - example.user@example.com
///       enrolledServices:
///         - cloudProduct: all
/// ```
///
/// ### Folder Access Approval Active Key Version
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const myFolder = new gcp.organizations.Folder("my_folder", {
///     displayName: "folder-faak",
///     parent: "organizations/123456789",
///     deletionProtection: false,
/// });
/// const myProject = new gcp.organizations.Project("my_project", {
///     name: "My Project",
///     projectId: "your-project-id",
///     folderId: myFolder.name,
///     deletionPolicy: "DELETE",
/// });
/// const keyRing = new gcp.kms.KeyRing("key_ring", {
///     name: "key-ring",
///     location: "global",
///     project: myProject.projectId,
/// });
/// const cryptoKey = new gcp.kms.CryptoKey("crypto_key", {
///     name: "crypto-key",
///     keyRing: keyRing.id,
///     purpose: "ASYMMETRIC_SIGN",
///     versionTemplate: {
///         algorithm: "EC_SIGN_P384_SHA384",
///     },
/// });
/// const serviceAccount = gcp.accessapproval.getFolderServiceAccountOutput({
///     folderId: myFolder.folderId,
/// });
/// const iam = new gcp.kms.CryptoKeyIAMMember("iam", {
///     cryptoKeyId: cryptoKey.id,
///     role: "roles/cloudkms.signerVerifier",
///     member: serviceAccount.apply(serviceAccount => `serviceAccount:${serviceAccount.accountEmail}`),
/// });
/// const cryptoKeyVersion = gcp.kms.getKMSCryptoKeyVersionOutput({
///     cryptoKey: cryptoKey.id,
/// });
/// const folderAccessApproval = new gcp.folder.AccessApprovalSettings("folder_access_approval", {
///     folderId: myFolder.folderId,
///     activeKeyVersion: cryptoKeyVersion.apply(cryptoKeyVersion => cryptoKeyVersion.name),
///     enrolledServices: [{
///         cloudProduct: "all",
///     }],
/// }, {
///     dependsOn: [iam],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_folder = gcp.organizations.Folder("my_folder",
///     display_name="folder-faak",
///     parent="organizations/123456789",
///     deletion_protection=False)
/// my_project = gcp.organizations.Project("my_project",
///     name="My Project",
///     project_id="your-project-id",
///     folder_id=my_folder.name,
///     deletion_policy="DELETE")
/// key_ring = gcp.kms.KeyRing("key_ring",
///     name="key-ring",
///     location="global",
///     project=my_project.project_id)
/// crypto_key = gcp.kms.CryptoKey("crypto_key",
///     name="crypto-key",
///     key_ring=key_ring.id,
///     purpose="ASYMMETRIC_SIGN",
///     version_template={
///         "algorithm": "EC_SIGN_P384_SHA384",
///     })
/// service_account = gcp.accessapproval.get_folder_service_account_output(folder_id=my_folder.folder_id)
/// iam = gcp.kms.CryptoKeyIAMMember("iam",
///     crypto_key_id=crypto_key.id,
///     role="roles/cloudkms.signerVerifier",
///     member=service_account.apply(lambda service_account: f"serviceAccount:{service_account.account_email}"))
/// crypto_key_version = gcp.kms.get_kms_crypto_key_version_output(crypto_key=crypto_key.id)
/// folder_access_approval = gcp.folder.AccessApprovalSettings("folder_access_approval",
///     folder_id=my_folder.folder_id,
///     active_key_version=crypto_key_version.name,
///     enrolled_services=[{
///         "cloud_product": "all",
///     }],
///     opts = pulumi.ResourceOptions(depends_on=[iam]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var myFolder = new Gcp.Organizations.Folder("my_folder", new()
///     {
///         DisplayName = "folder-faak",
///         Parent = "organizations/123456789",
///         DeletionProtection = false,
///     });
///
///     var myProject = new Gcp.Organizations.Project("my_project", new()
///     {
///         Name = "My Project",
///         ProjectId = "your-project-id",
///         FolderId = myFolder.Name,
///         DeletionPolicy = "DELETE",
///     });
///
///     var keyRing = new Gcp.Kms.KeyRing("key_ring", new()
///     {
///         Name = "key-ring",
///         Location = "global",
///         Project = myProject.ProjectId,
///     });
///
///     var cryptoKey = new Gcp.Kms.CryptoKey("crypto_key", new()
///     {
///         Name = "crypto-key",
///         KeyRing = keyRing.Id,
///         Purpose = "ASYMMETRIC_SIGN",
///         VersionTemplate = new Gcp.Kms.Inputs.CryptoKeyVersionTemplateArgs
///         {
///             Algorithm = "EC_SIGN_P384_SHA384",
///         },
///     });
///
///     var serviceAccount = Gcp.AccessApproval.GetFolderServiceAccount.Invoke(new()
///     {
///         FolderId = myFolder.FolderId,
///     });
///
///     var iam = new Gcp.Kms.CryptoKeyIAMMember("iam", new()
///     {
///         CryptoKeyId = cryptoKey.Id,
///         Role = "roles/cloudkms.signerVerifier",
///         Member = $"serviceAccount:{serviceAccount.Apply(getFolderServiceAccountResult => getFolderServiceAccountResult.AccountEmail)}",
///     });
///
///     var cryptoKeyVersion = Gcp.Kms.GetKMSCryptoKeyVersion.Invoke(new()
///     {
///         CryptoKey = cryptoKey.Id,
///     });
///
///     var folderAccessApproval = new Gcp.Folder.AccessApprovalSettings("folder_access_approval", new()
///     {
///         FolderId = myFolder.FolderId,
///         ActiveKeyVersion = cryptoKeyVersion.Apply(getKMSCryptoKeyVersionResult => getKMSCryptoKeyVersionResult.Name),
///         EnrolledServices = new[]
///         {
///             new Gcp.Folder.Inputs.AccessApprovalSettingsEnrolledServiceArgs
///             {
///                 CloudProduct = "all",
///             },
///         },
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/accessapproval"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/folder"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/kms"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		myFolder, err := organizations.NewFolder(ctx, "my_folder", &organizations.FolderArgs{
/// 			DisplayName:        pulumi.String("folder-faak"),
/// 			Parent:             pulumi.String("organizations/123456789"),
/// 			DeletionProtection: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		myProject, err := organizations.NewProject(ctx, "my_project", &organizations.ProjectArgs{
/// 			Name:           pulumi.String("My Project"),
/// 			ProjectId:      pulumi.String("your-project-id"),
/// 			FolderId:       myFolder.Name,
/// 			DeletionPolicy: pulumi.String("DELETE"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		keyRing, err := kms.NewKeyRing(ctx, "key_ring", &kms.KeyRingArgs{
/// 			Name:     pulumi.String("key-ring"),
/// 			Location: pulumi.String("global"),
/// 			Project:  myProject.ProjectId,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		cryptoKey, err := kms.NewCryptoKey(ctx, "crypto_key", &kms.CryptoKeyArgs{
/// 			Name:    pulumi.String("crypto-key"),
/// 			KeyRing: keyRing.ID(),
/// 			Purpose: pulumi.String("ASYMMETRIC_SIGN"),
/// 			VersionTemplate: &kms.CryptoKeyVersionTemplateArgs{
/// 				Algorithm: pulumi.String("EC_SIGN_P384_SHA384"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		serviceAccount := accessapproval.GetFolderServiceAccountOutput(ctx, accessapproval.GetFolderServiceAccountOutputArgs{
/// 			FolderId: myFolder.FolderId,
/// 		}, nil)
/// 		iam, err := kms.NewCryptoKeyIAMMember(ctx, "iam", &kms.CryptoKeyIAMMemberArgs{
/// 			CryptoKeyId: cryptoKey.ID(),
/// 			Role:        pulumi.String("roles/cloudkms.signerVerifier"),
/// 			Member: serviceAccount.ApplyT(func(serviceAccount accessapproval.GetFolderServiceAccountResult) (string, error) {
/// 				return fmt.Sprintf("serviceAccount:%v", serviceAccount.AccountEmail), nil
/// 			}).(pulumi.StringOutput),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		cryptoKeyVersion := kms.GetKMSCryptoKeyVersionOutput(ctx, kms.GetKMSCryptoKeyVersionOutputArgs{
/// 			CryptoKey: cryptoKey.ID(),
/// 		}, nil)
/// 		_, err = folder.NewAccessApprovalSettings(ctx, "folder_access_approval", &folder.AccessApprovalSettingsArgs{
/// 			FolderId: myFolder.FolderId,
/// 			ActiveKeyVersion: pulumi.String(cryptoKeyVersion.ApplyT(func(cryptoKeyVersion kms.GetKMSCryptoKeyVersionResult) (*string, error) {
/// 				return &cryptoKeyVersion.Name, nil
/// 			}).(pulumi.StringPtrOutput)),
/// 			EnrolledServices: folder.AccessApprovalSettingsEnrolledServiceArray{
/// 				&folder.AccessApprovalSettingsEnrolledServiceArgs{
/// 					CloudProduct: pulumi.String("all"),
/// 				},
/// 			},
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.organizations.Folder;
/// import com.pulumi.gcp.organizations.FolderArgs;
/// import com.pulumi.gcp.organizations.Project;
/// import com.pulumi.gcp.organizations.ProjectArgs;
/// import com.pulumi.gcp.kms.KeyRing;
/// import com.pulumi.gcp.kms.KeyRingArgs;
/// import com.pulumi.gcp.kms.CryptoKey;
/// import com.pulumi.gcp.kms.CryptoKeyArgs;
/// import com.pulumi.gcp.kms.inputs.CryptoKeyVersionTemplateArgs;
/// import com.pulumi.gcp.accessapproval.AccessapprovalFunctions;
/// import com.pulumi.gcp.accessapproval.inputs.GetFolderServiceAccountArgs;
/// import com.pulumi.gcp.kms.CryptoKeyIAMMember;
/// import com.pulumi.gcp.kms.CryptoKeyIAMMemberArgs;
/// import com.pulumi.gcp.kms.KmsFunctions;
/// import com.pulumi.gcp.kms.inputs.GetKMSCryptoKeyVersionArgs;
/// import com.pulumi.gcp.folder.AccessApprovalSettings;
/// import com.pulumi.gcp.folder.AccessApprovalSettingsArgs;
/// import com.pulumi.gcp.folder.inputs.AccessApprovalSettingsEnrolledServiceArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var myFolder = new Folder("myFolder", FolderArgs.builder()
///             .displayName("folder-faak")
///             .parent("organizations/123456789")
///             .deletionProtection(false)
///             .build());
///
///         var myProject = new Project("myProject", ProjectArgs.builder()
///             .name("My Project")
///             .projectId("your-project-id")
///             .folderId(myFolder.name())
///             .deletionPolicy("DELETE")
///             .build());
///
///         var keyRing = new KeyRing("keyRing", KeyRingArgs.builder()
///             .name("key-ring")
///             .location("global")
///             .project(myProject.projectId())
///             .build());
///
///         var cryptoKey = new CryptoKey("cryptoKey", CryptoKeyArgs.builder()
///             .name("crypto-key")
///             .keyRing(keyRing.id())
///             .purpose("ASYMMETRIC_SIGN")
///             .versionTemplate(CryptoKeyVersionTemplateArgs.builder()
///                 .algorithm("EC_SIGN_P384_SHA384")
///                 .build())
///             .build());
///
///         final var serviceAccount = AccessapprovalFunctions.getFolderServiceAccount(GetFolderServiceAccountArgs.builder()
///             .folderId(myFolder.folderId())
///             .build());
///
///         var iam = new CryptoKeyIAMMember("iam", CryptoKeyIAMMemberArgs.builder()
///             .cryptoKeyId(cryptoKey.id())
///             .role("roles/cloudkms.signerVerifier")
///             .member(serviceAccount.applyValue(_serviceAccount -> String.format("serviceAccount:%s", _serviceAccount.accountEmail())))
///             .build());
///
///         final var cryptoKeyVersion = KmsFunctions.getKMSCryptoKeyVersion(GetKMSCryptoKeyVersionArgs.builder()
///             .cryptoKey(cryptoKey.id())
///             .build());
///
///         var folderAccessApproval = new AccessApprovalSettings("folderAccessApproval", AccessApprovalSettingsArgs.builder()
///             .folderId(myFolder.folderId())
///             .activeKeyVersion(cryptoKeyVersion.applyValue(_cryptoKeyVersion -> _cryptoKeyVersion.name()))
///             .enrolledServices(AccessApprovalSettingsEnrolledServiceArgs.builder()
///                 .cloudProduct("all")
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(iam)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   myFolder:
///     type: gcp:organizations:Folder
///     name: my_folder
///     properties:
///       displayName: folder-faak
///       parent: organizations/123456789
///       deletionProtection: false
///   myProject:
///     type: gcp:organizations:Project
///     name: my_project
///     properties:
///       name: My Project
///       projectId: your-project-id
///       folderId: ${myFolder.name}
///       deletionPolicy: DELETE
///   keyRing:
///     type: gcp:kms:KeyRing
///     name: key_ring
///     properties:
///       name: key-ring
///       location: global
///       project: ${myProject.projectId}
///   cryptoKey:
///     type: gcp:kms:CryptoKey
///     name: crypto_key
///     properties:
///       name: crypto-key
///       keyRing: ${keyRing.id}
///       purpose: ASYMMETRIC_SIGN
///       versionTemplate:
///         algorithm: EC_SIGN_P384_SHA384
///   iam:
///     type: gcp:kms:CryptoKeyIAMMember
///     properties:
///       cryptoKeyId: ${cryptoKey.id}
///       role: roles/cloudkms.signerVerifier
///       member: serviceAccount:${serviceAccount.accountEmail}
///   folderAccessApproval:
///     type: gcp:folder:AccessApprovalSettings
///     name: folder_access_approval
///     properties:
///       folderId: ${myFolder.folderId}
///       activeKeyVersion: ${cryptoKeyVersion.name}
///       enrolledServices:
///         - cloudProduct: all
///     options:
///       dependsOn:
///         - ${iam}
/// variables:
///   serviceAccount:
///     fn::invoke:
///       function: gcp:accessapproval:getFolderServiceAccount
///       arguments:
///         folderId: ${myFolder.folderId}
///   cryptoKeyVersion:
///     fn::invoke:
///       function: gcp:kms:getKMSCryptoKeyVersion
///       arguments:
///         cryptoKey: ${cryptoKey.id}
/// ```
///
///
/// ## Import
///
/// FolderSettings can be imported using any of these accepted formats:
///
/// * `folders/{{folder_id}}/accessApprovalSettings`
///
/// * `{{folder_id}}`
///
/// When using the `pulumi import` command, FolderSettings can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:folder/accessApprovalSettings:AccessApprovalSettings default folders/{{folder_id}}/accessApprovalSettings
/// ```
///
/// ```sh
/// $ pulumi import gcp:folder/accessApprovalSettings:AccessApprovalSettings default {{folder_id}}
/// ```
class AccessApprovalSettings extends pulumi.CustomResource {
  /// The asymmetric crypto key version to use for signing approval requests.
  /// Empty active_key_version indicates that a Google-managed key should be used for signing.
  /// This property will be ignored if set by an ancestor of the resource, and new non-empty values may not be set.
  late final pulumi.Output<String?> activeKeyVersion;

  /// If the field is true, that indicates that an ancestor of this Folder has set active_key_version.
  late final pulumi.Output<bool> ancestorHasActiveKeyVersion;

  /// If the field is true, that indicates that at least one service is enrolled for Access Approval in one or more ancestors of the Folder.
  late final pulumi.Output<bool> enrolledAncestor;

  /// A list of Google Cloud Services for which the given resource has Access Approval enrolled.
  /// Access requests for the resource given by name against any of these services contained here will be required
  /// to have explicit approval. Enrollment can only be done on an all or nothing basis.
  /// A maximum of 10 enrolled services will be enforced, to be expanded as the set of supported services is expanded.
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>> enrolledServices;

  /// ID of the folder of the access approval settings.
  late final pulumi.Output<String> folderId;

  /// If the field is true, that indicates that there is some configuration issue with the active_key_version
  /// configured on this Folder (e.g. it doesn't exist or the Access Approval service account doesn't have the
  /// correct permissions on it, etc.) This key version is not necessarily the effective key version at this level,
  /// as key versions are inherited top-down.
  late final pulumi.Output<bool> invalidKeyVersion;

  /// The resource name of the settings. Format is "folders/{folder_id}/accessApprovalSettings"
  late final pulumi.Output<String> name;

  /// A list of email addresses to which notifications relating to approval requests should be sent.
  /// Notifications relating to a resource will be sent to all emails in the settings of ancestor
  /// resources of that resource. A maximum of 50 email addresses are allowed.
  late final pulumi.Output<List<String>> notificationEmails;

  /// Creates a new [AccessApprovalSettings].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AccessApprovalSettings]. {@macro pulumi_folder_access_approval_settings_access_approval_settings_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AccessApprovalSettings(
    String name, {
    AccessApprovalSettingsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:folder/accessApprovalSettings:AccessApprovalSettings',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    activeKeyVersion = registerOutput<String?>('activeKeyVersion');
    ancestorHasActiveKeyVersion = registerOutput<bool>(
      'ancestorHasActiveKeyVersion',
    );
    enrolledAncestor = registerOutput<bool>('enrolledAncestor');
    enrolledServices = registerOutput<List<Map<String, dynamic>>>(
      'enrolledServices',
    );
    folderId = registerOutput<String>('folderId');
    invalidKeyVersion = registerOutput<bool>('invalidKeyVersion');
    this.name = registerOutput<String>('name');
    notificationEmails = registerOutput<List<String>>('notificationEmails');
  }

  /// Gets an existing [AccessApprovalSettings] resource's state with the given [name] and [id].
  static AccessApprovalSettings get(
    String name,
    pulumi.Input<String> id, {
    AccessApprovalSettingsState? state,
  }) {
    return AccessApprovalSettings._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AccessApprovalSettings._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:folder/accessApprovalSettings:AccessApprovalSettings',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    activeKeyVersion = registerOutput<String?>('activeKeyVersion');
    ancestorHasActiveKeyVersion = registerOutput<bool>(
      'ancestorHasActiveKeyVersion',
    );
    enrolledAncestor = registerOutput<bool>('enrolledAncestor');
    enrolledServices = registerOutput<List<Map<String, dynamic>>>(
      'enrolledServices',
    );
    folderId = registerOutput<String>('folderId');
    invalidKeyVersion = registerOutput<bool>('invalidKeyVersion');
    this.name = registerOutput<String>('name');
    notificationEmails = registerOutput<List<String>>('notificationEmails');
  }
}
