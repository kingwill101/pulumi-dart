import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_approval_settings_args.dart';
import 'access_approval_settings_state.dart';

/// Access Approval enables you to require your explicit approval whenever Google support and engineering need to access your customer content.
///
///
/// To get more information about ProjectSettings, see:
///
/// * [API documentation](https://cloud.google.com/access-approval/docs/reference/rest/v1/projects)
///
/// ## Example Usage
///
/// ### Project Access Approval Full
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const projectAccessApproval = new gcp.projects.AccessApprovalSettings("project_access_approval", {
///     projectId: "my-project-name",
///     notificationEmails: [
///         "testuser@example.com",
///         "example.user@example.com",
///     ],
///     enrolledServices: [{
///         cloudProduct: "all",
///         enrollmentLevel: "BLOCK_ALL",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project_access_approval = gcp.projects.AccessApprovalSettings("project_access_approval",
///     project_id="my-project-name",
///     notification_emails=[
///         "testuser@example.com",
///         "example.user@example.com",
///     ],
///     enrolled_services=[{
///         "cloud_product": "all",
///         "enrollment_level": "BLOCK_ALL",
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
///     var projectAccessApproval = new Gcp.Projects.AccessApprovalSettings("project_access_approval", new()
///     {
///         ProjectId = "my-project-name",
///         NotificationEmails = new[]
///         {
///             "testuser@example.com",
///             "example.user@example.com",
///         },
///         EnrolledServices = new[]
///         {
///             new Gcp.Projects.Inputs.AccessApprovalSettingsEnrolledServiceArgs
///             {
///                 CloudProduct = "all",
///                 EnrollmentLevel = "BLOCK_ALL",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/projects"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := projects.NewAccessApprovalSettings(ctx, "project_access_approval", &projects.AccessApprovalSettingsArgs{
/// 			ProjectId: pulumi.String("my-project-name"),
/// 			NotificationEmails: pulumi.StringArray{
/// 				pulumi.String("testuser@example.com"),
/// 				pulumi.String("example.user@example.com"),
/// 			},
/// 			EnrolledServices: projects.AccessApprovalSettingsEnrolledServiceArray{
/// 				&projects.AccessApprovalSettingsEnrolledServiceArgs{
/// 					CloudProduct:    pulumi.String("all"),
/// 					EnrollmentLevel: pulumi.String("BLOCK_ALL"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_projects_accessapprovalsettings" "project_access_approval" {
///   project_id          = "my-project-name"
///   notification_emails = ["testuser@example.com", "example.user@example.com"]
///   enrolled_services {
///     cloud_product    = "all"
///     enrollment_level = "BLOCK_ALL"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.projects.AccessApprovalSettings;
/// import com.pulumi.gcp.projects.AccessApprovalSettingsArgs;
/// import com.pulumi.gcp.projects.inputs.AccessApprovalSettingsEnrolledServiceArgs;
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
///         var projectAccessApproval = new AccessApprovalSettings("projectAccessApproval", AccessApprovalSettingsArgs.builder()
///             .projectId("my-project-name")
///             .notificationEmails(
///                 "testuser@example.com",
///                 "example.user@example.com")
///             .enrolledServices(AccessApprovalSettingsEnrolledServiceArgs.builder()
///                 .cloudProduct("all")
///                 .enrollmentLevel("BLOCK_ALL")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   projectAccessApproval:
///     type: gcp:projects:AccessApprovalSettings
///     name: project_access_approval
///     properties:
///       projectId: my-project-name
///       notificationEmails:
///         - testuser@example.com
///         - example.user@example.com
///       enrolledServices:
///         - cloudProduct: all
///           enrollmentLevel: BLOCK_ALL
/// ```
///
/// ### Project Access Approval Active Key Version
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const keyRing = new gcp.kms.KeyRing("key_ring", {
///     name: "key-ring",
///     location: "global",
///     project: "my-project-name",
/// });
/// const cryptoKey = new gcp.kms.CryptoKey("crypto_key", {
///     name: "crypto-key",
///     keyRing: keyRing.id,
///     purpose: "ASYMMETRIC_SIGN",
///     versionTemplate: {
///         algorithm: "EC_SIGN_P384_SHA384",
///     },
/// });
/// const serviceAccount = gcp.accessapproval.getProjectServiceAccount({
///     projectId: "my-project-name",
/// });
/// const iam = new gcp.kms.CryptoKeyIAMMember("iam", {
///     cryptoKeyId: cryptoKey.id,
///     role: "roles/cloudkms.signerVerifier",
///     member: serviceAccount.then(serviceAccount => `serviceAccount:${serviceAccount.accountEmail}`),
/// });
/// const cryptoKeyVersion = gcp.kms.getKMSCryptoKeyVersionOutput({
///     cryptoKey: cryptoKey.id,
/// });
/// const projectAccessApproval = new gcp.projects.AccessApprovalSettings("project_access_approval", {
///     projectId: "my-project-name",
///     activeKeyVersion: cryptoKeyVersion.name,
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
/// key_ring = gcp.kms.KeyRing("key_ring",
///     name="key-ring",
///     location="global",
///     project="my-project-name")
/// crypto_key = gcp.kms.CryptoKey("crypto_key",
///     name="crypto-key",
///     key_ring=key_ring.id,
///     purpose="ASYMMETRIC_SIGN",
///     version_template={
///         "algorithm": "EC_SIGN_P384_SHA384",
///     })
/// service_account = gcp.accessapproval.get_project_service_account(project_id="my-project-name")
/// iam = gcp.kms.CryptoKeyIAMMember("iam",
///     crypto_key_id=crypto_key.id,
///     role="roles/cloudkms.signerVerifier",
///     member=f"serviceAccount:{service_account.account_email}")
/// crypto_key_version = gcp.kms.get_kms_crypto_key_version_output(crypto_key=crypto_key.id)
/// project_access_approval = gcp.projects.AccessApprovalSettings("project_access_approval",
///     project_id="my-project-name",
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
///     var keyRing = new Gcp.Kms.KeyRing("key_ring", new()
///     {
///         Name = "key-ring",
///         Location = "global",
///         Project = "my-project-name",
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
///     var serviceAccount = Gcp.AccessApproval.GetProjectServiceAccount.Invoke(new()
///     {
///         ProjectId = "my-project-name",
///     });
///
///     var iam = new Gcp.Kms.CryptoKeyIAMMember("iam", new()
///     {
///         CryptoKeyId = cryptoKey.Id,
///         Role = "roles/cloudkms.signerVerifier",
///         Member = $"serviceAccount:{serviceAccount.Apply(getProjectServiceAccountResult => getProjectServiceAccountResult.AccountEmail)}",
///     });
///
///     var cryptoKeyVersion = Gcp.Kms.GetKMSCryptoKeyVersion.Invoke(new()
///     {
///         CryptoKey = cryptoKey.Id,
///     });
///
///     var projectAccessApproval = new Gcp.Projects.AccessApprovalSettings("project_access_approval", new()
///     {
///         ProjectId = "my-project-name",
///         ActiveKeyVersion = cryptoKeyVersion.Apply(getKMSCryptoKeyVersionResult => getKMSCryptoKeyVersionResult.Name),
///         EnrolledServices = new[]
///         {
///             new Gcp.Projects.Inputs.AccessApprovalSettingsEnrolledServiceArgs
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/accessapproval"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/kms"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/projects"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		keyRing, err := kms.NewKeyRing(ctx, "key_ring", &kms.KeyRingArgs{
/// 			Name:     pulumi.String("key-ring"),
/// 			Location: pulumi.String("global"),
/// 			Project:  pulumi.String("my-project-name"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		cryptoKey, err := kms.NewCryptoKey(ctx, "crypto_key", &kms.CryptoKeyArgs{
/// 			Name:    pulumi.String("crypto-key"),
/// 			KeyRing: keyRing.ID().ToIDOutput().ToStringOutput(),
/// 			Purpose: pulumi.String("ASYMMETRIC_SIGN"),
/// 			VersionTemplate: &kms.CryptoKeyVersionTemplateArgs{
/// 				Algorithm: pulumi.String("EC_SIGN_P384_SHA384"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		serviceAccount, err := accessapproval.GetProjectServiceAccount(ctx, &accessapproval.GetProjectServiceAccountArgs{
/// 			ProjectId: "my-project-name",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		iam, err := kms.NewCryptoKeyIAMMember(ctx, "iam", &kms.CryptoKeyIAMMemberArgs{
/// 			CryptoKeyId: cryptoKey.ID().ToIDOutput().ToStringOutput(),
/// 			Role:        pulumi.String("roles/cloudkms.signerVerifier"),
/// 			Member:      pulumi.Sprintf("serviceAccount:%v", serviceAccount.AccountEmail),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		cryptoKeyVersion := kms.GetKMSCryptoKeyVersionOutput(ctx, kms.GetKMSCryptoKeyVersionOutputArgs{
/// 			CryptoKey: cryptoKey.ID().ToIDOutput().ToStringOutput(),
/// 		}, nil)
/// 		_, err = projects.NewAccessApprovalSettings(ctx, "project_access_approval", &projects.AccessApprovalSettingsArgs{
/// 			ProjectId:        pulumi.String("my-project-name"),
/// 			ActiveKeyVersion: cryptoKeyVersion.Name(),
/// 			EnrolledServices: projects.AccessApprovalSettingsEnrolledServiceArray{
/// 				&projects.AccessApprovalSettingsEnrolledServiceArgs{
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
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_accessapproval_getprojectserviceaccount" "serviceAccount" {
///   project_id = "my-project-name"
/// }
/// data "gcp_kms_getkmscryptokeyversion" "cryptoKeyVersion" {
///   crypto_key = gcp_kms_cryptokey.crypto_key.id
/// }
///
/// resource "gcp_kms_keyring" "key_ring" {
///   name     = "key-ring"
///   location = "global"
///   project  = "my-project-name"
/// }
/// resource "gcp_kms_cryptokey" "crypto_key" {
///   name     = "crypto-key"
///   key_ring = gcp_kms_keyring.key_ring.id
///   purpose  = "ASYMMETRIC_SIGN"
///   version_template = {
///     algorithm = "EC_SIGN_P384_SHA384"
///   }
/// }
/// resource "gcp_kms_cryptokeyiammember" "iam" {
///   crypto_key_id = gcp_kms_cryptokey.crypto_key.id
///   role          = "roles/cloudkms.signerVerifier"
///   member        ="serviceAccount:${data.gcp_accessapproval_getprojectserviceaccount.serviceAccount.account_email}"
/// }
/// resource "gcp_projects_accessapprovalsettings" "project_access_approval" {
///   depends_on         = [gcp_kms_cryptokeyiammember.iam]
///   project_id         = "my-project-name"
///   active_key_version = data.gcp_kms_getkmscryptokeyversion.cryptoKeyVersion.name
///   enrolled_services {
///     cloud_product = "all"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.kms.KeyRing;
/// import com.pulumi.gcp.kms.KeyRingArgs;
/// import com.pulumi.gcp.kms.CryptoKey;
/// import com.pulumi.gcp.kms.CryptoKeyArgs;
/// import com.pulumi.gcp.kms.inputs.CryptoKeyVersionTemplateArgs;
/// import com.pulumi.gcp.accessapproval.AccessapprovalFunctions;
/// import com.pulumi.gcp.accessapproval.inputs.GetProjectServiceAccountArgs;
/// import com.pulumi.gcp.kms.CryptoKeyIAMMember;
/// import com.pulumi.gcp.kms.CryptoKeyIAMMemberArgs;
/// import com.pulumi.gcp.kms.KmsFunctions;
/// import com.pulumi.gcp.kms.inputs.GetKMSCryptoKeyVersionArgs;
/// import com.pulumi.gcp.projects.AccessApprovalSettings;
/// import com.pulumi.gcp.projects.AccessApprovalSettingsArgs;
/// import com.pulumi.gcp.projects.inputs.AccessApprovalSettingsEnrolledServiceArgs;
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
///         var keyRing = new KeyRing("keyRing", KeyRingArgs.builder()
///             .name("key-ring")
///             .location("global")
///             .project("my-project-name")
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
///         final var serviceAccount = AccessapprovalFunctions.getProjectServiceAccount(GetProjectServiceAccountArgs.builder()
///             .projectId("my-project-name")
///             .build());
///
///         var iam = new CryptoKeyIAMMember("iam", CryptoKeyIAMMemberArgs.builder()
///             .cryptoKeyId(cryptoKey.id())
///             .role("roles/cloudkms.signerVerifier")
///             .member(String.format("serviceAccount:%s", serviceAccount.accountEmail()))
///             .build());
///
///         final var cryptoKeyVersion = KmsFunctions.getKMSCryptoKeyVersion(GetKMSCryptoKeyVersionArgs.builder()
///             .cryptoKey(cryptoKey.id())
///             .build());
///
///         var projectAccessApproval = new AccessApprovalSettings("projectAccessApproval", AccessApprovalSettingsArgs.builder()
///             .projectId("my-project-name")
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
///   keyRing:
///     type: gcp:kms:KeyRing
///     name: key_ring
///     properties:
///       name: key-ring
///       location: global
///       project: my-project-name
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
///   projectAccessApproval:
///     type: gcp:projects:AccessApprovalSettings
///     name: project_access_approval
///     properties:
///       projectId: my-project-name
///       activeKeyVersion: ${cryptoKeyVersion.name}
///       enrolledServices:
///         - cloudProduct: all
///     options:
///       dependsOn:
///         - ${iam}
/// variables:
///   serviceAccount:
///     fn::invoke:
///       function: gcp:accessapproval:getProjectServiceAccount
///       arguments:
///         projectId: my-project-name
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
/// ProjectSettings can be imported using any of these accepted formats:
///
/// * `projects/{{project_id}}/accessApprovalSettings`
/// * `{{project_id}}`
///
///
/// When using the `pulumi import` command, ProjectSettings can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:projects/accessApprovalSettings:AccessApprovalSettings default projects/{{project_id}}/accessApprovalSettings
/// $ pulumi import gcp:projects/accessApprovalSettings:AccessApprovalSettings default {{project_id}}
/// ```
class AccessApprovalSettings extends pulumi.CustomResource {
  /// The asymmetric crypto key version to use for signing approval requests.
  /// Empty activeKeyVersion indicates that a Google-managed key should be used for signing.
  /// This property will be ignored if set by an ancestor of the resource, and new non-empty values may not be set.
  late final pulumi.Output<String?> activeKeyVersion;
  /// If the field is true, that indicates that an ancestor of this Project has set active_key_version.
  late final pulumi.Output<bool> ancestorHasActiveKeyVersion;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// If the field is true, that indicates that at least one service is enrolled for Access Approval in one or more ancestors of the Project.
  late final pulumi.Output<bool> enrolledAncestor;
  /// A list of Google Cloud Services for which the given resource has Access Approval enrolled.
  /// Access requests for the resource given by name against any of these services contained here will be required
  /// to have explicit approval. Enrollment can only be done on an all or nothing basis.
  /// A maximum of 10 enrolled services will be enforced, to be expanded as the set of supported services is expanded.
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>> enrolledServices;
  /// If the field is true, that indicates that there is some configuration issue with the activeKeyVersion
  /// configured on this Project (e.g. it doesn't exist or the Access Approval service account doesn't have the
  /// correct permissions on it, etc.) This key version is not necessarily the effective key version at this level,
  /// as key versions are inherited top-down.
  late final pulumi.Output<bool> invalidKeyVersion;
  /// The resource name of the settings. Format is "projects/{project_id}/accessApprovalSettings"
  late final pulumi.Output<String> name;
  /// A list of email addresses to which notifications relating to approval requests should be sent.
  /// Notifications relating to a resource will be sent to all emails in the settings of ancestor
  /// resources of that resource. A maximum of 50 email addresses are allowed.
  late final pulumi.Output<List<String>> notificationEmails;
  /// (Optional, Deprecated)
  /// Project id.
  ///
  /// &gt; **Warning:** `project` is deprecated and will be removed in a future major release. Use `projectId` instead.
  late final pulumi.Output<String?> project;
  /// ID of the project of the access approval settings.
  late final pulumi.Output<String> projectId;

  /// Creates a new [AccessApprovalSettings].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AccessApprovalSettings]. {@macro pulumi_projects_access_approval_settings_access_approval_settings_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AccessApprovalSettings(
    String name, {
    AccessApprovalSettingsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:projects/accessApprovalSettings:AccessApprovalSettings',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    activeKeyVersion = registerOutput<String?>('activeKeyVersion');
    ancestorHasActiveKeyVersion = registerOutput<bool>('ancestorHasActiveKeyVersion');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    enrolledAncestor = registerOutput<bool>('enrolledAncestor');
    enrolledServices = registerOutput<List<Map<String, dynamic>>>('enrolledServices');
    invalidKeyVersion = registerOutput<bool>('invalidKeyVersion');
    this.name = registerOutput<String>('name');
    notificationEmails = registerOutput<List<String>>('notificationEmails');
    project = registerOutput<String?>('project');
    projectId = registerOutput<String>('projectId');
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
          'gcp:projects/accessApprovalSettings:AccessApprovalSettings',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    activeKeyVersion = registerOutput<String?>('activeKeyVersion');
    ancestorHasActiveKeyVersion = registerOutput<bool>('ancestorHasActiveKeyVersion');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    enrolledAncestor = registerOutput<bool>('enrolledAncestor');
    enrolledServices = registerOutput<List<Map<String, dynamic>>>('enrolledServices');
    invalidKeyVersion = registerOutput<bool>('invalidKeyVersion');
    this.name = registerOutput<String>('name');
    notificationEmails = registerOutput<List<String>>('notificationEmails');
    project = registerOutput<String?>('project');
    projectId = registerOutput<String>('projectId');
  }
}
