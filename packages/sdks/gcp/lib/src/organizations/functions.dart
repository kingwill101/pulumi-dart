import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_active_folder_args.dart';
import 'get_active_folder_result.dart';
import 'get_billing_account_args.dart';
import 'get_billing_account_result.dart';
import 'get_client_config_result.dart';
import 'get_client_open_id_user_info_result.dart';
import 'get_folder_args.dart';
import 'get_folder_result.dart';
import 'get_folders_args.dart';
import 'get_folders_result.dart';
import 'get_iam_custom_role_args.dart';
import 'get_iam_custom_role_result.dart';
import 'get_iam_custom_roles_args.dart';
import 'get_iam_custom_roles_result.dart';
import 'get_iampolicy_args.dart';
import 'get_iampolicy_result.dart';
import 'get_organization_args.dart';
import 'get_organization_result.dart';
import 'get_project_args.dart';
import 'get_project_result.dart';
import 'get_sargs.dart';
import 'get_sresult.dart';

/// Get an active folder within GCP by `displayName` and `parent`.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const department1 = gcp.organizations.getActiveFolder({
///     displayName: "Department 1",
///     parent: "organizations/1234567",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// department1 = gcp.organizations.get_active_folder(display_name="Department 1",
///     parent="organizations/1234567")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var department1 = Gcp.Organizations.GetActiveFolder.Invoke(new()
///     {
///         DisplayName = "Department 1",
///         Parent = "organizations/1234567",
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
/// 		_, err := organizations.GetActiveFolder(ctx, &organizations.GetActiveFolderArgs{
/// 			DisplayName: "Department 1",
/// 			Parent:      "organizations/1234567",
/// 		}, nil)
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
/// data "gcp_organizations_getactivefolder" "department1" {
///   display_name = "Department 1"
///   parent       = "organizations/1234567"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetActiveFolderArgs;
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
///         final var department1 = OrganizationsFunctions.getActiveFolder(GetActiveFolderArgs.builder()
///             .displayName("Department 1")
///             .parent("organizations/1234567")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   department1:
///     fn::invoke:
///       function: gcp:organizations:getActiveFolder
///       arguments:
///         displayName: Department 1
///         parent: organizations/1234567
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_organizations_get_active_folder_get_active_folder_args_doc}
/// [options] Invoke options controlling this call.
Future<GetActiveFolderResult> getActiveFolder(
  GetActiveFolderArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:organizations/getActiveFolder:getActiveFolder',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetActiveFolderResult.fromMap(result);
}

/// Use this data source to get information about a Google Billing Account.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const acct = gcp.organizations.getBillingAccount({
///     displayName: "My Billing Account",
///     open: true,
/// });
/// const myProject = new gcp.organizations.Project("my_project", {
///     name: "My Project",
///     projectId: "your-project-id",
///     orgId: "1234567",
///     billingAccount: acct.then(acct => acct.id),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// acct = gcp.organizations.get_billing_account(display_name="My Billing Account",
///     open=True)
/// my_project = gcp.organizations.Project("my_project",
///     name="My Project",
///     project_id="your-project-id",
///     org_id="1234567",
///     billing_account=acct.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var acct = Gcp.Organizations.GetBillingAccount.Invoke(new()
///     {
///         DisplayName = "My Billing Account",
///         Open = true,
///     });
///
///     var myProject = new Gcp.Organizations.Project("my_project", new()
///     {
///         Name = "My Project",
///         ProjectId = "your-project-id",
///         OrgId = "1234567",
///         BillingAccount = acct.Apply(getBillingAccountResult => getBillingAccountResult.Id),
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
/// 		acct, err := organizations.GetBillingAccount(ctx, &organizations.GetBillingAccountArgs{
/// 			DisplayName: pulumi.StringRef("My Billing Account"),
/// 			Open:        pulumi.BoolRef(true),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = organizations.NewProject(ctx, "my_project", &organizations.ProjectArgs{
/// 			Name:           pulumi.String("My Project"),
/// 			ProjectId:      pulumi.String("your-project-id"),
/// 			OrgId:          pulumi.String("1234567"),
/// 			BillingAccount: pulumi.String(acct.Id),
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
/// data "gcp_organizations_getbillingaccount" "acct" {
///   display_name = "My Billing Account"
///   open         = true
/// }
///
/// resource "gcp_organizations_project" "my_project" {
///   name            = "My Project"
///   project_id      = "your-project-id"
///   org_id          = "1234567"
///   billing_account = data.gcp_organizations_getbillingaccount.acct.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetBillingAccountArgs;
/// import com.pulumi.gcp.organizations.Project;
/// import com.pulumi.gcp.organizations.ProjectArgs;
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
///         final var acct = OrganizationsFunctions.getBillingAccount(GetBillingAccountArgs.builder()
///             .displayName("My Billing Account")
///             .open(true)
///             .build());
///
///         var myProject = new Project("myProject", ProjectArgs.builder()
///             .name("My Project")
///             .projectId("your-project-id")
///             .orgId("1234567")
///             .billingAccount(acct.id())
///             .build());
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
///       orgId: '1234567'
///       billingAccount: ${acct.id}
/// variables:
///   acct:
///     fn::invoke:
///       function: gcp:organizations:getBillingAccount
///       arguments:
///         displayName: My Billing Account
///         open: true
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_organizations_get_billing_account_get_billing_account_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBillingAccountResult> getBillingAccount(
  GetBillingAccountArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:organizations/getBillingAccount:getBillingAccount',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBillingAccountResult.fromMap(result);
}

/// Use this data source to access the configuration of the Google Cloud provider.
///
/// &gt; **Warning**: This resource persists a sensitive credential in the remote state used by Terraform.
/// Please take appropriate measures to protect your remote state.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const current = gcp.organizations.getClientConfig({});
/// export const project = current.then(current => current.project);
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// current = gcp.organizations.get_client_config()
/// pulumi.export("project", current.project)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var current = Gcp.Organizations.GetClientConfig.Invoke();
///
///     return new Dictionary<string, object?>
///     {
///         ["project"] = current.Apply(getClientConfigResult => getClientConfigResult.Project),
///     };
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
/// 		current, err := organizations.GetClientConfig(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("project", current.Project)
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
/// data "gcp_organizations_getclientconfig" "current" {
/// }
///
/// output "project" {
///   value = data.gcp_organizations_getclientconfig.current.project
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
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
///         final var current = OrganizationsFunctions.getClientConfig(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         ctx.export("project", current.project());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   current:
///     fn::invoke:
///       function: gcp:organizations:getClientConfig
///       arguments: {}
/// outputs:
///   project: ${current.project}
/// ```
///
///
///
/// ### Configure Kubernetes Provider With OAuth2 Access Token
///
///
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_organizations_getclientconfig" "default" {
/// }
/// data "gcp_container_getcluster" "myCluster" {
///   name = "my-cluster"
///   zone = "us-east1-a"
/// }
/// ```
/// ```yaml
/// variables:
///   default:
///     fn::invoke:
///       function: gcp:organizations:getClientConfig
///       arguments: {}
///   myCluster:
///     fn::invoke:
///       function: gcp:container:getCluster
///       arguments:
///         name: my-cluster
///         zone: us-east1-a
/// ```
/// [options] Invoke options controlling this call.
Future<GetClientConfigResult> getClientConfig(
  {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:organizations/getClientConfig:getClientConfig',
    const <String, dynamic>{},
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetClientConfigResult.fromMap(result);
}

/// Get OpenID userinfo about the credentials used with the Google provider,
/// specifically the email.
///
/// This datasource enables you to export the email of the account you've
/// authenticated the provider with; this can be used alongside
/// `data.google_client_config`'s `accessToken` to perform OpenID Connect
/// authentication with GKE and configure an RBAC role for the email used.
///
/// &gt; This resource will only work as expected if the provider is configured to
/// use the `https://www.googleapis.com/auth/userinfo.email` scope! You will
/// receive an error otherwise. The provider uses this scope by default.
///
/// ## Example Usage
///
/// ### Exporting An Email
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// export = async () => {
///     const me = await gcp.organizations.getClientOpenIdUserInfo({});
///     return {
///         "my-email": me.email,
///     };
/// }
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// me = gcp.organizations.get_client_open_id_user_info()
/// pulumi.export("my-email", me.email)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var me = Gcp.Organizations.GetClientOpenIdUserInfo.Invoke();
///
///     return new Dictionary<string, object?>
///     {
///         ["my-email"] = me.Apply(getClientOpenIdUserInfoResult => getClientOpenIdUserInfoResult.Email),
///     };
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
/// 		me, err := organizations.GetClientOpenIdUserInfo(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("my-email", me.Email)
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
/// data "gcp_organizations_getclientopeniduserinfo" "me" {
/// }
///
/// output "my-email" {
///   value = data.gcp_organizations_getclientopeniduserinfo.me.email
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
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
///         final var me = OrganizationsFunctions.getClientOpenIdUserInfo(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         ctx.export("my-email", me.email());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   me:
///     fn::invoke:
///       function: gcp:organizations:getClientOpenIdUserInfo
///       arguments: {}
/// outputs:
///   my-email: ${me.email}
/// ```
///
///
/// ### OpenID Connect W/ Kubernetes Provider + RBAC IAM Role
///
///
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///     kubernetes = {
///       source = "pulumi/kubernetes"
///     }
///   }
/// }
///
/// data "gcp_organizations_getclientopeniduserinfo" "providerIdentity" {
/// }
/// data "gcp_organizations_getclientconfig" "provider" {
/// }
/// data "gcp_container_getcluster" "myCluster" {
///   name = "my-cluster"
///   zone = "us-east1-a"
/// }
///
/// resource "kubernetes_clusterrolebinding" "user" {
///   metadata = [{
///     "name" = "provider-user-admin"
///   }]
///   role_ref = [{
///     "apiGroup" = "rbac.authorization.k8s.io"
///     "kind"     = "ClusterRole"
///     "name"     = "cluster-admin"
///   }]
///   subject = [{
///     "kind" = "User"
///     "name" = data.gcp_organizations_getclientopeniduserinfo.providerIdentity.email
///   }]
/// }
/// ```
/// ```yaml
/// resources:
///   user:
///     type: kubernetes:ClusterRoleBinding
///     properties:
///       metadata:
///         - name: provider-user-admin
///       roleRef:
///         - apiGroup: rbac.authorization.k8s.io
///           kind: ClusterRole
///           name: cluster-admin
///       subject:
///         - kind: User
///           name: ${providerIdentity.email}
/// variables:
///   providerIdentity:
///     fn::invoke:
///       function: gcp:organizations:getClientOpenIdUserInfo
///       arguments: {}
///   provider:
///     fn::invoke:
///       function: gcp:organizations:getClientConfig
///       arguments: {}
///   myCluster:
///     fn::invoke:
///       function: gcp:container:getCluster
///       arguments:
///         name: my-cluster
///         zone: us-east1-a
/// ```
/// [options] Invoke options controlling this call.
Future<GetClientOpenIdUserInfoResult> getClientOpenIdUserInfo(
  {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:organizations/getClientOpenIdUserInfo:getClientOpenIdUserInfo',
    const <String, dynamic>{},
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetClientOpenIdUserInfoResult.fromMap(result);
}

/// Use this data source to get information about a Google Cloud Folder.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const myFolder1 = gcp.organizations.getFolder({
///     folder: "folders/12345",
///     lookupOrganization: true,
/// });
/// const myFolder2 = gcp.organizations.getFolder({
///     folder: "folders/23456",
/// });
/// export const myFolder1Organization = myFolder1.then(myFolder1 => myFolder1.organization);
/// export const myFolder2Parent = myFolder2.then(myFolder2 => myFolder2.parent);
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_folder1 = gcp.organizations.get_folder(folder="folders/12345",
///     lookup_organization=True)
/// my_folder2 = gcp.organizations.get_folder(folder="folders/23456")
/// pulumi.export("myFolder1Organization", my_folder1.organization)
/// pulumi.export("myFolder2Parent", my_folder2.parent)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var myFolder1 = Gcp.Organizations.GetFolder.Invoke(new()
///     {
///         Folder = "folders/12345",
///         LookupOrganization = true,
///     });
///
///     var myFolder2 = Gcp.Organizations.GetFolder.Invoke(new()
///     {
///         Folder = "folders/23456",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["myFolder1Organization"] = myFolder1.Apply(getFolderResult => getFolderResult.Organization),
///         ["myFolder2Parent"] = myFolder2.Apply(getFolderResult => getFolderResult.Parent),
///     };
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
/// 		myFolder1, err := organizations.LookupFolder(ctx, &organizations.LookupFolderArgs{
/// 			Folder:             "folders/12345",
/// 			LookupOrganization: pulumi.BoolRef(true),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		myFolder2, err := organizations.LookupFolder(ctx, &organizations.LookupFolderArgs{
/// 			Folder: "folders/23456",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("myFolder1Organization", myFolder1.Organization)
/// 		ctx.Export("myFolder2Parent", myFolder2.Parent)
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
/// data "gcp_organizations_getfolder" "myFolder1" {
///   folder              = "folders/12345"
///   lookup_organization = true
/// }
/// data "gcp_organizations_getfolder" "myFolder2" {
///   folder = "folders/23456"
/// }
///
/// output "myFolder1Organization" {
///   value = data.gcp_organizations_getfolder.myFolder1.organization
/// }
/// output "myFolder2Parent" {
///   value = data.gcp_organizations_getfolder.myFolder2.parent
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetFolderArgs;
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
///         final var myFolder1 = OrganizationsFunctions.getFolder(GetFolderArgs.builder()
///             .folder("folders/12345")
///             .lookupOrganization(true)
///             .build());
///
///         final var myFolder2 = OrganizationsFunctions.getFolder(GetFolderArgs.builder()
///             .folder("folders/23456")
///             .build());
///
///         ctx.export("myFolder1Organization", myFolder1.organization());
///         ctx.export("myFolder2Parent", myFolder2.parent());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   myFolder1:
///     fn::invoke:
///       function: gcp:organizations:getFolder
///       arguments:
///         folder: folders/12345
///         lookupOrganization: true
///   myFolder2:
///     fn::invoke:
///       function: gcp:organizations:getFolder
///       arguments:
///         folder: folders/23456
/// outputs:
///   myFolder1Organization: ${myFolder1.organization}
///   myFolder2Parent: ${myFolder2.parent}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_organizations_get_folder_get_folder_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFolderResult> getFolder(
  GetFolderArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:organizations/getFolder:getFolder',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFolderResult.fromMap(result);
}

/// Retrieve information about a set of folders based on a parent ID. See the
/// [REST API](https://docs.cloud.google.com/resource-manager/reference/rest/v3/folders/list)
/// for more details.
///
/// ## Example Usage
///
/// ### Searching For Folders At The Root Of An Org
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const my_org_folders = gcp.organizations.getFolders({
///     parentId: `organizations/${organizationId}`,
/// });
/// const first_folder = my_org_folders.then(my_org_folders => gcp.organizations.getFolder({
///     folder: my_org_folders.folders?.[0]?.name,
/// }));
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_org_folders = gcp.organizations.get_folders(parent_id=f"organizations/{organization_id}")
/// first_folder = gcp.organizations.get_folder(folder=my_org_folders.folders[0].name)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var my_org_folders = Gcp.Organizations.GetFolders.Invoke(new()
///     {
///         ParentId = $"organizations/{organizationId}",
///     });
///
///     var first_folder = Gcp.Organizations.GetFolder.Invoke(new()
///     {
///         Folder = my_org_folders.Apply(getFoldersResult => getFoldersResult.Folders[0]?.Name),
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		my_org_folders, err := organizations.GetFolders(ctx, &organizations.GetFoldersArgs{
/// 			ParentId: fmt.Sprintf("organizations/%v", organizationId),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = organizations.LookupFolder(ctx, &organizations.LookupFolderArgs{
/// 			Folder: my_org_folders.Folders[0].Name,
/// 		}, nil)
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
/// data "gcp_organizations_getfolders" "my-org-folders" {
///   parent_id ="organizations/${organizationId}"
/// }
/// data "gcp_organizations_getfolder" "first-folder" {
///   folder = data.gcp_organizations_getfolders.my-org-folders.folders[0].name
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetFoldersArgs;
/// import com.pulumi.gcp.organizations.inputs.GetFolderArgs;
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
///         final var my-org-folders = OrganizationsFunctions.getFolders(GetFoldersArgs.builder()
///             .parentId(String.format("organizations/%s", organizationId))
///             .build());
///
///         final var first-folder = OrganizationsFunctions.getFolder(GetFolderArgs.builder()
///             .folder(my_org_folders.folders()[0].name())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   my-org-folders:
///     fn::invoke:
///       function: gcp:organizations:getFolders
///       arguments:
///         parentId: organizations/${organizationId}
///   first-folder:
///     fn::invoke:
///       function: gcp:organizations:getFolder
///       arguments:
///         folder: ${["my-org-folders"].folders[0].name}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_organizations_get_folders_get_folders_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFoldersResult> getFolders(
  GetFoldersArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:organizations/getFolders:getFolders',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFoldersResult.fromMap(result);
}

/// Generates an IAM policy document that may be referenced by and applied to
/// other Google Cloud Platform IAM resources, such as the `gcp.projects.IAMPolicy` resource.
///
/// **Note:** Please review the documentation of the resource that you will be using the datasource with. Some resources such as `gcp.projects.IAMPolicy` and others have limitations in their API methods which are noted on their respective page.
/// [args] Arguments passed to this invoke. {@macro pulumi_organizations_get_iampolicy_get_iampolicy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetIAMPolicyResult> getIAMPolicy(
  GetIAMPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:organizations/getIAMPolicy:getIAMPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetIAMPolicyResult.fromMap(result);
}

/// Get information about a Google Cloud Organization IAM Custom Role. Note that you must have the `roles/iam.organizationRoleViewer` role (or equivalent permissions) at the organization level to use this datasource.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const example = gcp.organizations.getIamCustomRole({
///     orgId: "1234567890",
///     roleId: "your-role-id",
/// });
/// const project = new gcp.projects.IAMMember("project", {
///     project: "your-project-id",
///     role: example.then(example => example.name),
///     member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// example = gcp.organizations.get_iam_custom_role(org_id="1234567890",
///     role_id="your-role-id")
/// project = gcp.projects.IAMMember("project",
///     project="your-project-id",
///     role=example.name,
///     member="user:jane@example.com")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Gcp.Organizations.GetIamCustomRole.Invoke(new()
///     {
///         OrgId = "1234567890",
///         RoleId = "your-role-id",
///     });
///
///     var project = new Gcp.Projects.IAMMember("project", new()
///     {
///         Project = "your-project-id",
///         Role = example.Apply(getIamCustomRoleResult => getIamCustomRoleResult.Name),
///         Member = "user:jane@example.com",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/projects"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := organizations.GetIamCustomRole(ctx, &organizations.GetIamCustomRoleArgs{
/// 			OrgId:  "1234567890",
/// 			RoleId: "your-role-id",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = projects.NewIAMMember(ctx, "project", &projects.IAMMemberArgs{
/// 			Project: pulumi.String("your-project-id"),
/// 			Role:    pulumi.String(example.Name),
/// 			Member:  pulumi.String("user:jane@example.com"),
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
/// data "gcp_organizations_getiamcustomrole" "example" {
///   org_id  = "1234567890"
///   role_id = "your-role-id"
/// }
///
/// resource "gcp_projects_iammember" "project" {
///   project = "your-project-id"
///   role    = data.gcp_organizations_getiamcustomrole.example.name
///   member  = "user:jane@example.com"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetIamCustomRoleArgs;
/// import com.pulumi.gcp.projects.IAMMember;
/// import com.pulumi.gcp.projects.IAMMemberArgs;
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
///         final var example = OrganizationsFunctions.getIamCustomRole(GetIamCustomRoleArgs.builder()
///             .orgId("1234567890")
///             .roleId("your-role-id")
///             .build());
///
///         var project = new IAMMember("project", IAMMemberArgs.builder()
///             .project("your-project-id")
///             .role(example.name())
///             .member("user:jane@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   project:
///     type: gcp:projects:IAMMember
///     properties:
///       project: your-project-id
///       role: ${example.name}
///       member: user:jane@example.com
/// variables:
///   example:
///     fn::invoke:
///       function: gcp:organizations:getIamCustomRole
///       arguments:
///         orgId: '1234567890'
///         roleId: your-role-id
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_organizations_get_iam_custom_role_get_iam_custom_role_args_doc}
/// [options] Invoke options controlling this call.
Future<GetIamCustomRoleResult> getIamCustomRole(
  GetIamCustomRoleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:organizations/getIamCustomRole:getIamCustomRole',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetIamCustomRoleResult.fromMap(result);
}

/// Get information about a Google Cloud Organization IAM Custom Roles.
/// Note that you must have the `roles/iam.organizationRoleViewer`.
/// See [the official documentation](https://cloud.google.com/iam/docs/creating-custom-roles)
/// and [API](https://cloud.google.com/iam/docs/reference/rest/v1/organizations.roles/list).
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const example = gcp.organizations.getIamCustomRoles({
///     orgId: "1234567890",
///     showDeleted: true,
///     view: "FULL",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// example = gcp.organizations.get_iam_custom_roles(org_id="1234567890",
///     show_deleted=True,
///     view="FULL")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Gcp.Organizations.GetIamCustomRoles.Invoke(new()
///     {
///         OrgId = "1234567890",
///         ShowDeleted = true,
///         View = "FULL",
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
/// 		_, err := organizations.GetIamCustomRoles(ctx, &organizations.GetIamCustomRolesArgs{
/// 			OrgId:       pulumi.StringRef("1234567890"),
/// 			ShowDeleted: pulumi.BoolRef(true),
/// 			View:        pulumi.StringRef("FULL"),
/// 		}, nil)
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
/// data "gcp_organizations_getiamcustomroles" "example" {
///   org_id       = "1234567890"
///   show_deleted = true
///   view         = "FULL"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetIamCustomRolesArgs;
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
///         final var example = OrganizationsFunctions.getIamCustomRoles(GetIamCustomRolesArgs.builder()
///             .orgId("1234567890")
///             .showDeleted(true)
///             .view("FULL")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: gcp:organizations:getIamCustomRoles
///       arguments:
///         orgId: '1234567890'
///         showDeleted: true
///         view: FULL
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_organizations_get_iam_custom_roles_get_iam_custom_roles_args_doc}
/// [options] Invoke options controlling this call.
Future<GetIamCustomRolesResult> getIamCustomRoles(
  GetIamCustomRolesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:organizations/getIamCustomRoles:getIamCustomRoles',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetIamCustomRolesResult.fromMap(result);
}

/// Get information about a Google Cloud Organization. Note that you must have the `roles/resourcemanager.organizationViewer` role (or equivalent permissions) at the organization level to use this datasource.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const org = gcp.organizations.getOrganization({
///     domain: "example.com",
/// });
/// const sales = new gcp.organizations.Folder("sales", {
///     displayName: "Sales",
///     parent: org.then(org => org.name),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// org = gcp.organizations.get_organization(domain="example.com")
/// sales = gcp.organizations.Folder("sales",
///     display_name="Sales",
///     parent=org.name)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var org = Gcp.Organizations.GetOrganization.Invoke(new()
///     {
///         Domain = "example.com",
///     });
///
///     var sales = new Gcp.Organizations.Folder("sales", new()
///     {
///         DisplayName = "Sales",
///         Parent = org.Apply(getOrganizationResult => getOrganizationResult.Name),
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
/// 		org, err := organizations.GetOrganization(ctx, &organizations.GetOrganizationArgs{
/// 			Domain: pulumi.StringRef("example.com"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = organizations.NewFolder(ctx, "sales", &organizations.FolderArgs{
/// 			DisplayName: pulumi.String("Sales"),
/// 			Parent:      pulumi.String(org.Name),
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
/// data "gcp_organizations_getorganization" "org" {
///   domain = "example.com"
/// }
///
/// resource "gcp_organizations_folder" "sales" {
///   display_name = "Sales"
///   parent       = data.gcp_organizations_getorganization.org.name
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetOrganizationArgs;
/// import com.pulumi.gcp.organizations.Folder;
/// import com.pulumi.gcp.organizations.FolderArgs;
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
///         final var org = OrganizationsFunctions.getOrganization(GetOrganizationArgs.builder()
///             .domain("example.com")
///             .build());
///
///         var sales = new Folder("sales", FolderArgs.builder()
///             .displayName("Sales")
///             .parent(org.name())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   sales:
///     type: gcp:organizations:Folder
///     properties:
///       displayName: Sales
///       parent: ${org.name}
/// variables:
///   org:
///     fn::invoke:
///       function: gcp:organizations:getOrganization
///       arguments:
///         domain: example.com
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_organizations_get_organization_get_organization_args_doc}
/// [options] Invoke options controlling this call.
Future<GetOrganizationResult> getOrganization(
  GetOrganizationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:organizations/getOrganization:getOrganization',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOrganizationResult.fromMap(result);
}

/// Use this data source to get project details.
/// For more information see
/// [API](https://docs.cloud.google.com/resource-manager/reference/rest/v1/projects#Project)
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = gcp.organizations.getProject({});
/// export const projectNumber = project.then(project => project.number);
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project = gcp.organizations.get_project()
/// pulumi.export("projectNumber", project.number)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var project = Gcp.Organizations.GetProject.Invoke();
///
///     return new Dictionary<string, object?>
///     {
///         ["projectNumber"] = project.Apply(getProjectResult => getProjectResult.Number),
///     };
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
/// 		project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("projectNumber", project.Number)
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
/// data "gcp_organizations_getproject" "project" {
/// }
///
/// output "projectNumber" {
///   value = data.gcp_organizations_getproject.project.number
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
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
///         final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
///             .build());
///
///         ctx.export("projectNumber", project.number());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// outputs:
///   projectNumber: ${project.number}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_organizations_get_project_get_project_args_doc}
/// [options] Invoke options controlling this call.
Future<GetProjectResult> getProject(
  GetProjectArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:organizations/getProject:getProject',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetProjectResult.fromMap(result);
}

/// Gets a list of all organizations.
/// See [the official documentation](https://docs.cloud.google.com/resource-manager/docs/creating-managing-organization)
/// and [API](https://docs.cloud.google.com/resource-manager/reference/rest/v1/organizations/search).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const example = gcp.organizations.getS({
///     filter: "domain:example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// example = gcp.organizations.get_s(filter="domain:example.com")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Gcp.Organizations.GetS.Invoke(new()
///     {
///         Filter = "domain:example.com",
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
/// 		_, err := organizations.GetS(ctx, &organizations.GetSArgs{
/// 			Filter: pulumi.StringRef("domain:example.com"),
/// 		}, nil)
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
/// data "gcp_organizations_gets" "example" {
///   filter = "domain:example.com"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetSArgs;
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
///         final var example = OrganizationsFunctions.getS(GetSArgs.builder()
///             .filter("domain:example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: gcp:organizations:getS
///       arguments:
///         filter: domain:example.com
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_organizations_get_s_get_sargs_doc}
/// [options] Invoke options controlling this call.
Future<GetSResult> getS(
  GetSArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:organizations/getS:getS',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSResult.fromMap(result);
}
