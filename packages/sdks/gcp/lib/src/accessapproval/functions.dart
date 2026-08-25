import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_folder_service_account_args.dart';
import 'get_folder_service_account_result.dart';
import 'get_organization_service_account_args.dart';
import 'get_organization_service_account_result.dart';
import 'get_project_service_account_args.dart';
import 'get_project_service_account_result.dart';

/// Get the email address of a folder's Access Approval service account.
///
/// Each Google Cloud folder has a unique service account used by Access Approval.
/// When using Access Approval with a
/// [custom signing key](https://cloud.google.com/cloud-provider-access-management/access-approval/docs/review-approve-access-requests-custom-keys),
/// this account needs to be granted the `cloudkms.signerVerifier` IAM role on the
/// Cloud KMS key used to sign approvals.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const serviceAccount = gcp.accessapproval.getFolderServiceAccount({
///     folderId: "my-folder",
/// });
/// const iam = new gcp.kms.CryptoKeyIAMMember("iam", {
///     cryptoKeyId: cryptoKey.id,
///     role: "roles/cloudkms.signerVerifier",
///     member: serviceAccount.then(serviceAccount => `serviceAccount:${serviceAccount.accountEmail}`),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// service_account = gcp.accessapproval.get_folder_service_account(folder_id="my-folder")
/// iam = gcp.kms.CryptoKeyIAMMember("iam",
///     crypto_key_id=crypto_key["id"],
///     role="roles/cloudkms.signerVerifier",
///     member=f"serviceAccount:{service_account.account_email}")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var serviceAccount = Gcp.AccessApproval.GetFolderServiceAccount.Invoke(new()
///     {
///         FolderId = "my-folder",
///     });
///
///     var iam = new Gcp.Kms.CryptoKeyIAMMember("iam", new()
///     {
///         CryptoKeyId = cryptoKey.Id,
///         Role = "roles/cloudkms.signerVerifier",
///         Member = $"serviceAccount:{serviceAccount.Apply(getFolderServiceAccountResult => getFolderServiceAccountResult.AccountEmail)}",
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
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		serviceAccount, err := accessapproval.GetFolderServiceAccount(ctx, &accessapproval.GetFolderServiceAccountArgs{
/// 			FolderId: "my-folder",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = kms.NewCryptoKeyIAMMember(ctx, "iam", &kms.CryptoKeyIAMMemberArgs{
/// 			CryptoKeyId: pulumi.Any(cryptoKey.Id),
/// 			Role:        pulumi.String("roles/cloudkms.signerVerifier"),
/// 			Member:      pulumi.Sprintf("serviceAccount:%v", serviceAccount.AccountEmail),
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
/// data "gcp_accessapproval_getfolderserviceaccount" "serviceAccount" {
///   folder_id = "my-folder"
/// }
///
/// resource "gcp_kms_cryptokeyiammember" "iam" {
///   crypto_key_id = cryptoKey.id
///   role          = "roles/cloudkms.signerVerifier"
///   member        ="serviceAccount:${data.gcp_accessapproval_getfolderserviceaccount.serviceAccount.account_email}"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.accessapproval.AccessapprovalFunctions;
/// import com.pulumi.gcp.accessapproval.inputs.GetFolderServiceAccountArgs;
/// import com.pulumi.gcp.kms.CryptoKeyIAMMember;
/// import com.pulumi.gcp.kms.CryptoKeyIAMMemberArgs;
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
///         final var serviceAccount = AccessapprovalFunctions.getFolderServiceAccount(GetFolderServiceAccountArgs.builder()
///             .folderId("my-folder")
///             .build());
///
///         var iam = new CryptoKeyIAMMember("iam", CryptoKeyIAMMemberArgs.builder()
///             .cryptoKeyId(cryptoKey.get("id"))
///             .role("roles/cloudkms.signerVerifier")
///             .member(String.format("serviceAccount:%s", serviceAccount.accountEmail()))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   iam:
///     type: gcp:kms:CryptoKeyIAMMember
///     properties:
///       cryptoKeyId: ${cryptoKey.id}
///       role: roles/cloudkms.signerVerifier
///       member: serviceAccount:${serviceAccount.accountEmail}
/// variables:
///   serviceAccount:
///     fn::invoke:
///       function: gcp:accessapproval:getFolderServiceAccount
///       arguments:
///         folderId: my-folder
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_accessapproval_get_folder_service_account_get_folder_service_account_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFolderServiceAccountResult> getFolderServiceAccount(
  GetFolderServiceAccountArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:accessapproval/getFolderServiceAccount:getFolderServiceAccount',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFolderServiceAccountResult.fromMap(result);
}

pulumi.Output<GetFolderServiceAccountResult> getFolderServiceAccountOutput(
  GetFolderServiceAccountArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:accessapproval/getFolderServiceAccount:getFolderServiceAccount',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetFolderServiceAccountResult.fromMap);
}

/// Get the email address of an organization's Access Approval service account.
///
/// Each Google Cloud organization has a unique service account used by Access Approval.
/// When using Access Approval with a
/// [custom signing key](https://cloud.google.com/cloud-provider-access-management/access-approval/docs/review-approve-access-requests-custom-keys),
/// this account needs to be granted the `cloudkms.signerVerifier` IAM role on the
/// Cloud KMS key used to sign approvals.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const serviceAccount = gcp.accessapproval.getOrganizationServiceAccount({
///     organizationId: "my-organization",
/// });
/// const iam = new gcp.kms.CryptoKeyIAMMember("iam", {
///     cryptoKeyId: cryptoKey.id,
///     role: "roles/cloudkms.signerVerifier",
///     member: serviceAccount.then(serviceAccount => `serviceAccount:${serviceAccount.accountEmail}`),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// service_account = gcp.accessapproval.get_organization_service_account(organization_id="my-organization")
/// iam = gcp.kms.CryptoKeyIAMMember("iam",
///     crypto_key_id=crypto_key["id"],
///     role="roles/cloudkms.signerVerifier",
///     member=f"serviceAccount:{service_account.account_email}")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var serviceAccount = Gcp.AccessApproval.GetOrganizationServiceAccount.Invoke(new()
///     {
///         OrganizationId = "my-organization",
///     });
///
///     var iam = new Gcp.Kms.CryptoKeyIAMMember("iam", new()
///     {
///         CryptoKeyId = cryptoKey.Id,
///         Role = "roles/cloudkms.signerVerifier",
///         Member = $"serviceAccount:{serviceAccount.Apply(getOrganizationServiceAccountResult => getOrganizationServiceAccountResult.AccountEmail)}",
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
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		serviceAccount, err := accessapproval.GetOrganizationServiceAccount(ctx, &accessapproval.GetOrganizationServiceAccountArgs{
/// 			OrganizationId: "my-organization",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = kms.NewCryptoKeyIAMMember(ctx, "iam", &kms.CryptoKeyIAMMemberArgs{
/// 			CryptoKeyId: pulumi.Any(cryptoKey.Id),
/// 			Role:        pulumi.String("roles/cloudkms.signerVerifier"),
/// 			Member:      pulumi.Sprintf("serviceAccount:%v", serviceAccount.AccountEmail),
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
/// data "gcp_accessapproval_getorganizationserviceaccount" "serviceAccount" {
///   organization_id = "my-organization"
/// }
///
/// resource "gcp_kms_cryptokeyiammember" "iam" {
///   crypto_key_id = cryptoKey.id
///   role          = "roles/cloudkms.signerVerifier"
///   member        ="serviceAccount:${data.gcp_accessapproval_getorganizationserviceaccount.serviceAccount.account_email}"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.accessapproval.AccessapprovalFunctions;
/// import com.pulumi.gcp.accessapproval.inputs.GetOrganizationServiceAccountArgs;
/// import com.pulumi.gcp.kms.CryptoKeyIAMMember;
/// import com.pulumi.gcp.kms.CryptoKeyIAMMemberArgs;
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
///         final var serviceAccount = AccessapprovalFunctions.getOrganizationServiceAccount(GetOrganizationServiceAccountArgs.builder()
///             .organizationId("my-organization")
///             .build());
///
///         var iam = new CryptoKeyIAMMember("iam", CryptoKeyIAMMemberArgs.builder()
///             .cryptoKeyId(cryptoKey.get("id"))
///             .role("roles/cloudkms.signerVerifier")
///             .member(String.format("serviceAccount:%s", serviceAccount.accountEmail()))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   iam:
///     type: gcp:kms:CryptoKeyIAMMember
///     properties:
///       cryptoKeyId: ${cryptoKey.id}
///       role: roles/cloudkms.signerVerifier
///       member: serviceAccount:${serviceAccount.accountEmail}
/// variables:
///   serviceAccount:
///     fn::invoke:
///       function: gcp:accessapproval:getOrganizationServiceAccount
///       arguments:
///         organizationId: my-organization
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_accessapproval_get_organization_service_account_get_organization_service_account_args_doc}
/// [options] Invoke options controlling this call.
Future<GetOrganizationServiceAccountResult> getOrganizationServiceAccount(
  GetOrganizationServiceAccountArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:accessapproval/getOrganizationServiceAccount:getOrganizationServiceAccount',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOrganizationServiceAccountResult.fromMap(result);
}

pulumi.Output<GetOrganizationServiceAccountResult> getOrganizationServiceAccountOutput(
  GetOrganizationServiceAccountArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:accessapproval/getOrganizationServiceAccount:getOrganizationServiceAccount',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetOrganizationServiceAccountResult.fromMap);
}

/// Get the email address of a project's Access Approval service account.
///
/// Each Google Cloud project has a unique service account used by Access Approval.
/// When using Access Approval with a
/// [custom signing key](https://docs.cloud.google.com/assured-workloads/access-approval/docs/review-approve-access-requests-custom-keys),
/// this account needs to be granted the `cloudkms.signerVerifier` IAM role on the
/// Cloud KMS key used to sign approvals.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const serviceAccount = gcp.accessapproval.getProjectServiceAccount({
///     projectId: "my-project",
/// });
/// const iam = new gcp.kms.CryptoKeyIAMMember("iam", {
///     cryptoKeyId: cryptoKey.id,
///     role: "roles/cloudkms.signerVerifier",
///     member: serviceAccount.then(serviceAccount => `serviceAccount:${serviceAccount.accountEmail}`),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// service_account = gcp.accessapproval.get_project_service_account(project_id="my-project")
/// iam = gcp.kms.CryptoKeyIAMMember("iam",
///     crypto_key_id=crypto_key["id"],
///     role="roles/cloudkms.signerVerifier",
///     member=f"serviceAccount:{service_account.account_email}")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var serviceAccount = Gcp.AccessApproval.GetProjectServiceAccount.Invoke(new()
///     {
///         ProjectId = "my-project",
///     });
///
///     var iam = new Gcp.Kms.CryptoKeyIAMMember("iam", new()
///     {
///         CryptoKeyId = cryptoKey.Id,
///         Role = "roles/cloudkms.signerVerifier",
///         Member = $"serviceAccount:{serviceAccount.Apply(getProjectServiceAccountResult => getProjectServiceAccountResult.AccountEmail)}",
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
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		serviceAccount, err := accessapproval.GetProjectServiceAccount(ctx, &accessapproval.GetProjectServiceAccountArgs{
/// 			ProjectId: "my-project",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = kms.NewCryptoKeyIAMMember(ctx, "iam", &kms.CryptoKeyIAMMemberArgs{
/// 			CryptoKeyId: pulumi.Any(cryptoKey.Id),
/// 			Role:        pulumi.String("roles/cloudkms.signerVerifier"),
/// 			Member:      pulumi.Sprintf("serviceAccount:%v", serviceAccount.AccountEmail),
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
/// data "gcp_accessapproval_getprojectserviceaccount" "serviceAccount" {
///   project_id = "my-project"
/// }
///
/// resource "gcp_kms_cryptokeyiammember" "iam" {
///   crypto_key_id = cryptoKey.id
///   role          = "roles/cloudkms.signerVerifier"
///   member        ="serviceAccount:${data.gcp_accessapproval_getprojectserviceaccount.serviceAccount.account_email}"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.accessapproval.AccessapprovalFunctions;
/// import com.pulumi.gcp.accessapproval.inputs.GetProjectServiceAccountArgs;
/// import com.pulumi.gcp.kms.CryptoKeyIAMMember;
/// import com.pulumi.gcp.kms.CryptoKeyIAMMemberArgs;
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
///         final var serviceAccount = AccessapprovalFunctions.getProjectServiceAccount(GetProjectServiceAccountArgs.builder()
///             .projectId("my-project")
///             .build());
///
///         var iam = new CryptoKeyIAMMember("iam", CryptoKeyIAMMemberArgs.builder()
///             .cryptoKeyId(cryptoKey.get("id"))
///             .role("roles/cloudkms.signerVerifier")
///             .member(String.format("serviceAccount:%s", serviceAccount.accountEmail()))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   iam:
///     type: gcp:kms:CryptoKeyIAMMember
///     properties:
///       cryptoKeyId: ${cryptoKey.id}
///       role: roles/cloudkms.signerVerifier
///       member: serviceAccount:${serviceAccount.accountEmail}
/// variables:
///   serviceAccount:
///     fn::invoke:
///       function: gcp:accessapproval:getProjectServiceAccount
///       arguments:
///         projectId: my-project
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_accessapproval_get_project_service_account_get_project_service_account_args_doc}
/// [options] Invoke options controlling this call.
Future<GetProjectServiceAccountResult> getProjectServiceAccount(
  GetProjectServiceAccountArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:accessapproval/getProjectServiceAccount:getProjectServiceAccount',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetProjectServiceAccountResult.fromMap(result);
}

pulumi.Output<GetProjectServiceAccountResult> getProjectServiceAccountOutput(
  GetProjectServiceAccountArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:accessapproval/getProjectServiceAccount:getProjectServiceAccount',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetProjectServiceAccountResult.fromMap);
}
