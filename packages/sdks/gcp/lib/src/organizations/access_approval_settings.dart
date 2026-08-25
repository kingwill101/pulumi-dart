import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_approval_settings_args.dart';
import 'access_approval_settings_enrolled_service.dart';
import 'access_approval_settings_state.dart';

/// Access Approval enables you to require your explicit approval whenever Google support and engineering need to access your customer content.
///
///
/// To get more information about OrganizationSettings, see:
///
/// * [API documentation](https://cloud.google.com/access-approval/docs/reference/rest/v1/organizations)
///
/// ## Example Usage
///
/// ### Organization Access Approval Full
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const organizationAccessApproval = new gcp.organizations.AccessApprovalSettings("organization_access_approval", {
///     organizationId: "123456789",
///     notificationEmails: [
///         "testuser@example.com",
///         "example.user@example.com",
///     ],
///     enrolledServices: [
///         {
///             cloudProduct: "appengine.googleapis.com",
///         },
///         {
///             cloudProduct: "dataflow.googleapis.com",
///             enrollmentLevel: "BLOCK_ALL",
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// organization_access_approval = gcp.organizations.AccessApprovalSettings("organization_access_approval",
///     organization_id="123456789",
///     notification_emails=[
///         "testuser@example.com",
///         "example.user@example.com",
///     ],
///     enrolled_services=[
///         {
///             "cloud_product": "appengine.googleapis.com",
///         },
///         {
///             "cloud_product": "dataflow.googleapis.com",
///             "enrollment_level": "BLOCK_ALL",
///         },
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var organizationAccessApproval = new Gcp.Organizations.AccessApprovalSettings("organization_access_approval", new()
///     {
///         OrganizationId = "123456789",
///         NotificationEmails = new[]
///         {
///             "testuser@example.com",
///             "example.user@example.com",
///         },
///         EnrolledServices = new[]
///         {
///             new Gcp.Organizations.Inputs.AccessApprovalSettingsEnrolledServiceArgs
///             {
///                 CloudProduct = "appengine.googleapis.com",
///             },
///             new Gcp.Organizations.Inputs.AccessApprovalSettingsEnrolledServiceArgs
///             {
///                 CloudProduct = "dataflow.googleapis.com",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := organizations.NewAccessApprovalSettings(ctx, "organization_access_approval", &organizations.AccessApprovalSettingsArgs{
/// 			OrganizationId: pulumi.String("123456789"),
/// 			NotificationEmails: pulumi.StringArray{
/// 				pulumi.String("testuser@example.com"),
/// 				pulumi.String("example.user@example.com"),
/// 			},
/// 			EnrolledServices: organizations.AccessApprovalSettingsEnrolledServiceArray{
/// 				&organizations.AccessApprovalSettingsEnrolledServiceArgs{
/// 					CloudProduct: pulumi.String("appengine.googleapis.com"),
/// 				},
/// 				&organizations.AccessApprovalSettingsEnrolledServiceArgs{
/// 					CloudProduct:    pulumi.String("dataflow.googleapis.com"),
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
/// resource "gcp_organizations_accessapprovalsettings" "organization_access_approval" {
///   organization_id     = "123456789"
///   notification_emails = ["testuser@example.com", "example.user@example.com"]
///   enrolled_services {
///     cloud_product = "appengine.googleapis.com"
///   }
///   enrolled_services {
///     cloud_product    = "dataflow.googleapis.com"
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
/// import com.pulumi.gcp.organizations.AccessApprovalSettings;
/// import com.pulumi.gcp.organizations.AccessApprovalSettingsArgs;
/// import com.pulumi.gcp.organizations.inputs.AccessApprovalSettingsEnrolledServiceArgs;
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
///         var organizationAccessApproval = new AccessApprovalSettings("organizationAccessApproval", AccessApprovalSettingsArgs.builder()
///             .organizationId("123456789")
///             .notificationEmails(
///                 "testuser@example.com",
///                 "example.user@example.com")
///             .enrolledServices(
///                 AccessApprovalSettingsEnrolledServiceArgs.builder()
///                     .cloudProduct("appengine.googleapis.com")
///                     .build(),
///                 AccessApprovalSettingsEnrolledServiceArgs.builder()
///                     .cloudProduct("dataflow.googleapis.com")
///                     .enrollmentLevel("BLOCK_ALL")
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   organizationAccessApproval:
///     type: gcp:organizations:AccessApprovalSettings
///     name: organization_access_approval
///     properties:
///       organizationId: '123456789'
///       notificationEmails:
///         - testuser@example.com
///         - example.user@example.com
///       enrolledServices:
///         - cloudProduct: appengine.googleapis.com
///         - cloudProduct: dataflow.googleapis.com
///           enrollmentLevel: BLOCK_ALL
/// ```
///
/// ### Organization Access Approval Active Key Version
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const myProject = new gcp.organizations.Project("my_project", {
///     name: "My Project",
///     projectId: "your-project-id",
///     orgId: "123456789",
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
/// const serviceAccount = gcp.accessapproval.getOrganizationServiceAccount({
///     organizationId: "123456789",
/// });
/// const iam = new gcp.kms.CryptoKeyIAMMember("iam", {
///     cryptoKeyId: cryptoKey.id,
///     role: "roles/cloudkms.signerVerifier",
///     member: serviceAccount.then(serviceAccount => `serviceAccount:${serviceAccount.accountEmail}`),
/// });
/// const cryptoKeyVersion = gcp.kms.getKMSCryptoKeyVersionOutput({
///     cryptoKey: cryptoKey.id,
/// });
/// const organizationAccessApproval = new gcp.organizations.AccessApprovalSettings("organization_access_approval", {
///     organizationId: "123456789",
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
/// my_project = gcp.organizations.Project("my_project",
///     name="My Project",
///     project_id="your-project-id",
///     org_id="123456789",
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
/// service_account = gcp.accessapproval.get_organization_service_account(organization_id="123456789")
/// iam = gcp.kms.CryptoKeyIAMMember("iam",
///     crypto_key_id=crypto_key.id,
///     role="roles/cloudkms.signerVerifier",
///     member=f"serviceAccount:{service_account.account_email}")
/// crypto_key_version = gcp.kms.get_kms_crypto_key_version_output(crypto_key=crypto_key.id)
/// organization_access_approval = gcp.organizations.AccessApprovalSettings("organization_access_approval",
///     organization_id="123456789",
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
///     var myProject = new Gcp.Organizations.Project("my_project", new()
///     {
///         Name = "My Project",
///         ProjectId = "your-project-id",
///         OrgId = "123456789",
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
///     var serviceAccount = Gcp.AccessApproval.GetOrganizationServiceAccount.Invoke(new()
///     {
///         OrganizationId = "123456789",
///     });
///
///     var iam = new Gcp.Kms.CryptoKeyIAMMember("iam", new()
///     {
///         CryptoKeyId = cryptoKey.Id,
///         Role = "roles/cloudkms.signerVerifier",
///         Member = $"serviceAccount:{serviceAccount.Apply(getOrganizationServiceAccountResult => getOrganizationServiceAccountResult.AccountEmail)}",
///     });
///
///     var cryptoKeyVersion = Gcp.Kms.GetKMSCryptoKeyVersion.Invoke(new()
///     {
///         CryptoKey = cryptoKey.Id,
///     });
///
///     var organizationAccessApproval = new Gcp.Organizations.AccessApprovalSettings("organization_access_approval", new()
///     {
///         OrganizationId = "123456789",
///         ActiveKeyVersion = cryptoKeyVersion.Apply(getKMSCryptoKeyVersionResult => getKMSCryptoKeyVersionResult.Name),
///         EnrolledServices = new[]
///         {
///             new Gcp.Organizations.Inputs.AccessApprovalSettingsEnrolledServiceArgs
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		myProject, err := organizations.NewProject(ctx, "my_project", &organizations.ProjectArgs{
/// 			Name:           pulumi.String("My Project"),
/// 			ProjectId:      pulumi.String("your-project-id"),
/// 			OrgId:          pulumi.String("123456789"),
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
/// 			KeyRing: keyRing.ID().ToIDOutput().ToStringOutput(),
/// 			Purpose: pulumi.String("ASYMMETRIC_SIGN"),
/// 			VersionTemplate: &kms.CryptoKeyVersionTemplateArgs{
/// 				Algorithm: pulumi.String("EC_SIGN_P384_SHA384"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		serviceAccount, err := accessapproval.GetOrganizationServiceAccount(ctx, &accessapproval.GetOrganizationServiceAccountArgs{
/// 			OrganizationId: "123456789",
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
/// 		_, err = organizations.NewAccessApprovalSettings(ctx, "organization_access_approval", &organizations.AccessApprovalSettingsArgs{
/// 			OrganizationId:   pulumi.String("123456789"),
/// 			ActiveKeyVersion: cryptoKeyVersion.Name(),
/// 			EnrolledServices: organizations.AccessApprovalSettingsEnrolledServiceArray{
/// 				&organizations.AccessApprovalSettingsEnrolledServiceArgs{
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
/// data "gcp_accessapproval_getorganizationserviceaccount" "serviceAccount" {
///   organization_id = "123456789"
/// }
/// data "gcp_kms_getkmscryptokeyversion" "cryptoKeyVersion" {
///   crypto_key = gcp_kms_cryptokey.crypto_key.id
/// }
///
/// resource "gcp_organizations_project" "my_project" {
///   name            = "My Project"
///   project_id      = "your-project-id"
///   org_id          = "123456789"
///   deletion_policy = "DELETE"
/// }
/// resource "gcp_kms_keyring" "key_ring" {
///   name     = "key-ring"
///   location = "global"
///   project  = gcp_organizations_project.my_project.project_id
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
///   member        ="serviceAccount:${data.gcp_accessapproval_getorganizationserviceaccount.serviceAccount.account_email}"
/// }
/// resource "gcp_organizations_accessapprovalsettings" "organization_access_approval" {
///   depends_on         = [gcp_kms_cryptokeyiammember.iam]
///   organization_id    = "123456789"
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
/// import com.pulumi.gcp.organizations.Project;
/// import com.pulumi.gcp.organizations.ProjectArgs;
/// import com.pulumi.gcp.kms.KeyRing;
/// import com.pulumi.gcp.kms.KeyRingArgs;
/// import com.pulumi.gcp.kms.CryptoKey;
/// import com.pulumi.gcp.kms.CryptoKeyArgs;
/// import com.pulumi.gcp.kms.inputs.CryptoKeyVersionTemplateArgs;
/// import com.pulumi.gcp.accessapproval.AccessapprovalFunctions;
/// import com.pulumi.gcp.accessapproval.inputs.GetOrganizationServiceAccountArgs;
/// import com.pulumi.gcp.kms.CryptoKeyIAMMember;
/// import com.pulumi.gcp.kms.CryptoKeyIAMMemberArgs;
/// import com.pulumi.gcp.kms.KmsFunctions;
/// import com.pulumi.gcp.kms.inputs.GetKMSCryptoKeyVersionArgs;
/// import com.pulumi.gcp.organizations.AccessApprovalSettings;
/// import com.pulumi.gcp.organizations.AccessApprovalSettingsArgs;
/// import com.pulumi.gcp.organizations.inputs.AccessApprovalSettingsEnrolledServiceArgs;
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
///         var myProject = new Project("myProject", ProjectArgs.builder()
///             .name("My Project")
///             .projectId("your-project-id")
///             .orgId("123456789")
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
///         final var serviceAccount = AccessapprovalFunctions.getOrganizationServiceAccount(GetOrganizationServiceAccountArgs.builder()
///             .organizationId("123456789")
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
///         var organizationAccessApproval = new AccessApprovalSettings("organizationAccessApproval", AccessApprovalSettingsArgs.builder()
///             .organizationId("123456789")
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
///   myProject:
///     type: gcp:organizations:Project
///     name: my_project
///     properties:
///       name: My Project
///       projectId: your-project-id
///       orgId: '123456789'
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
///   organizationAccessApproval:
///     type: gcp:organizations:AccessApprovalSettings
///     name: organization_access_approval
///     properties:
///       organizationId: '123456789'
///       activeKeyVersion: ${cryptoKeyVersion.name}
///       enrolledServices:
///         - cloudProduct: all
///     options:
///       dependsOn:
///         - ${iam}
/// variables:
///   serviceAccount:
///     fn::invoke:
///       function: gcp:accessapproval:getOrganizationServiceAccount
///       arguments:
///         organizationId: '123456789'
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
/// OrganizationSettings can be imported using any of these accepted formats:
///
/// * `organizations/{{organization_id}}/accessApprovalSettings`
/// * `{{organization_id}}`
///
///
/// When using the `pulumi import` command, OrganizationSettings can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:organizations/accessApprovalSettings:AccessApprovalSettings default organizations/{{organization_id}}/accessApprovalSettings
/// $ pulumi import gcp:organizations/accessApprovalSettings:AccessApprovalSettings default {{organization_id}}
/// ```
class AccessApprovalSettings extends pulumi.CustomResource {
  /// The asymmetric crypto key version to use for signing approval requests.
  /// Empty activeKeyVersion indicates that a Google-managed key should be used for signing.
  late final pulumi.Output<String?> activeKeyVersion;
  /// This field will always be unset for the organization since organizations do not have ancestors.
  late final pulumi.Output<bool> ancestorHasActiveKeyVersion;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// This field will always be unset for the organization since organizations do not have ancestors.
  late final pulumi.Output<bool> enrolledAncestor;
  /// A list of Google Cloud Services for which the given resource has Access Approval enrolled.
  /// Access requests for the resource given by name against any of these services contained here will be required
  /// to have explicit approval. Enrollment can be done for individual services.
  /// A maximum of 10 enrolled services will be enforced, to be expanded as the set of supported services is expanded.
  /// Structure is documented below.
  late final pulumi.Output<List<AccessApprovalSettingsEnrolledService>> enrolledServices;
  /// If the field is true, that indicates that there is some configuration issue with the activeKeyVersion
  /// configured on this Organization (e.g. it doesn't exist or the Access Approval service account doesn't have the
  /// correct permissions on it, etc.).
  late final pulumi.Output<bool> invalidKeyVersion;
  /// The resource name of the settings. Format is "organizations/{organization_id}/accessApprovalSettings"
  late final pulumi.Output<String> name;
  /// A list of email addresses to which notifications relating to approval requests should be sent.
  /// Notifications relating to a resource will be sent to all emails in the settings of ancestor
  /// resources of that resource. A maximum of 50 email addresses are allowed.
  late final pulumi.Output<List<String>> notificationEmails;
  /// ID of the organization of the access approval settings.
  late final pulumi.Output<String> organizationId;

  /// Creates a new [AccessApprovalSettings].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AccessApprovalSettings]. {@macro pulumi_organizations_access_approval_settings_access_approval_settings_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AccessApprovalSettings(
    String name, {
    AccessApprovalSettingsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:organizations/accessApprovalSettings:AccessApprovalSettings',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.35.1').merge(options),
        ) {
    activeKeyVersion = registerOutput<String?>('activeKeyVersion');
    ancestorHasActiveKeyVersion = registerOutput<bool>('ancestorHasActiveKeyVersion');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    enrolledAncestor = registerOutput<bool>('enrolledAncestor');
    enrolledServices = registerOutput<List<AccessApprovalSettingsEnrolledService>>('enrolledServices', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AccessApprovalSettingsEnrolledService>(guardedValue, (value) => AccessApprovalSettingsEnrolledService.fromMap((value as Map).cast<String, dynamic>())); });
    invalidKeyVersion = registerOutput<bool>('invalidKeyVersion');
    this.name = registerOutput<String>('name');
    notificationEmails = registerOutput<List<String>>('notificationEmails', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    organizationId = registerOutput<String>('organizationId');
  }

  /// Gets an existing [AccessApprovalSettings] resource's state with the given [name] and [id].
  static AccessApprovalSettings get(
    String name,
    pulumi.Input<String> id, {
    AccessApprovalSettingsState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return AccessApprovalSettings._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  AccessApprovalSettings._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:organizations/accessApprovalSettings:AccessApprovalSettings',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    activeKeyVersion = registerOutput<String?>('activeKeyVersion');
    ancestorHasActiveKeyVersion = registerOutput<bool>('ancestorHasActiveKeyVersion');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    enrolledAncestor = registerOutput<bool>('enrolledAncestor');
    enrolledServices = registerOutput<List<AccessApprovalSettingsEnrolledService>>('enrolledServices', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AccessApprovalSettingsEnrolledService>(guardedValue, (value) => AccessApprovalSettingsEnrolledService.fromMap((value as Map).cast<String, dynamic>())); });
    invalidKeyVersion = registerOutput<bool>('invalidKeyVersion');
    this.name = registerOutput<String>('name');
    notificationEmails = registerOutput<List<String>>('notificationEmails', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    organizationId = registerOutput<String>('organizationId');
  }

  /// Creates a typed reference to an existing [AccessApprovalSettings] resource.
  AccessApprovalSettings.reference(String urn)
    : super(
        'gcp:organizations/accessApprovalSettings:AccessApprovalSettings',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    activeKeyVersion = registerOutput<String?>('activeKeyVersion');
    ancestorHasActiveKeyVersion = registerOutput<bool>('ancestorHasActiveKeyVersion');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    enrolledAncestor = registerOutput<bool>('enrolledAncestor');
    enrolledServices = registerOutput<List<AccessApprovalSettingsEnrolledService>>('enrolledServices', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AccessApprovalSettingsEnrolledService>(guardedValue, (value) => AccessApprovalSettingsEnrolledService.fromMap((value as Map).cast<String, dynamic>())); });
    invalidKeyVersion = registerOutput<bool>('invalidKeyVersion');
    this.name = registerOutput<String>('name');
    notificationEmails = registerOutput<List<String>>('notificationEmails', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    organizationId = registerOutput<String>('organizationId');
  }
}
