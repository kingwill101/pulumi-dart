import 'package:pulumi/pulumi.dart' as pulumi;
import 'iam_audit_config_args.dart';
import 'iam_audit_config_audit_log_config.dart';
import 'iam_audit_config_state.dart';

/// Four different resources help you manage your IAM policy for a folder. Each of these resources serves a different use case:
///
/// * `gcp.folder.IAMPolicy`: Authoritative. Sets the IAM policy for the folder and replaces any existing policy already attached.
/// * `gcp.folder.IAMBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the folder are preserved.
/// * `gcp.folder.IAMMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the folder are preserved.
/// * `gcp.folder.IamAuditConfig`: Authoritative for a given service. Updates the IAM policy to enable audit logging for the given service.
///
///
/// &gt; **Note:** `gcp.folder.IAMPolicy` **cannot** be used in conjunction with `gcp.folder.IAMBinding`, `gcp.folder.IAMMember`, or `gcp.folder.IamAuditConfig` or they will fight over what your policy should be.
///
/// &gt; **Note:** `gcp.folder.IAMBinding` resources **can be** used in conjunction with `gcp.folder.IAMMember` resources **only if** they do not grant privilege to the same role.
///
/// &gt; **Note:** The underlying API method `projects.setIamPolicy` has constraints which are documented [here](https://docs.cloud.google.com/resource-manager/reference/rest/v1/projects/setIamPolicy). In addition to these constraints,
/// IAM Conditions cannot be used with Basic Roles such as Owner. Violating these constraints will result in the API returning a 400 error code so please review these if you encounter errors with this resource.
///
/// ## gcp.folder.IAMPolicy
///
/// &gt; **Be careful!** You can accidentally lock yourself out of your folder
/// using this resource. Deleting a `gcp.folder.IAMPolicy` removes access
/// from anyone without permissions on its parent folder/organization. Proceed with caution.
/// It's not recommended to use `gcp.folder.IAMPolicy` with your provider folder
/// to avoid locking yourself out, and it should generally only be used with folders
/// fully managed by this provider. If you do use this resource, it is recommended to **import** the policy before
/// applying the change.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const admin = gcp.organizations.getIAMPolicy({
///     bindings: [{
///         role: "roles/editor",
///         members: ["user:jane@example.com"],
///     }],
/// });
/// const folder = new gcp.folder.IAMPolicy("folder", {
///     folder: "folders/1234567",
///     policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
///     "role": "roles/editor",
///     "members": ["user:jane@example.com"],
/// }])
/// folder = gcp.folder.IAMPolicy("folder",
///     folder="folders/1234567",
///     policy_data=admin.policy_data)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var admin = Gcp.Organizations.GetIAMPolicy.Invoke(new()
///     {
///         Bindings = new[]
///         {
///             new Gcp.Organizations.Inputs.GetIAMPolicyBindingInputArgs
///             {
///                 Role = "roles/editor",
///                 Members = new[]
///                 {
///                     "user:jane@example.com",
///                 },
///             },
///         },
///     });
///
///     var folder = new Gcp.Folder.IAMPolicy("folder", new()
///     {
///         Folder = "folders/1234567",
///         PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
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
/// 		admin, err := organizations.LookupIAMPolicy(ctx, &organizations.LookupIAMPolicyArgs{
/// 			Bindings: []organizations.GetIAMPolicyBinding{
/// 				{
/// 					Role: "roles/editor",
/// 					Members: []string{
/// 						"user:jane@example.com",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = folder.NewIAMPolicy(ctx, "folder", &folder.IAMPolicyArgs{
/// 			Folder:     pulumi.String("folders/1234567"),
/// 			PolicyData: pulumi.String(admin.PolicyData),
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
/// data "gcp_organizations_getiampolicy" "admin" {
///   bindings {
///     role    = "roles/editor"
///     members = ["user:jane@example.com"]
///   }
/// }
///
/// resource "gcp_folder_iampolicy" "folder" {
///   folder      = "folders/1234567"
///   policy_data = data.gcp_organizations_getiampolicy.admin.policy_data
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetIAMPolicyArgs;
/// import com.pulumi.gcp.organizations.inputs.GetIAMPolicyBindingArgs;
/// import com.pulumi.gcp.folder.IAMPolicy;
/// import com.pulumi.gcp.folder.IAMPolicyArgs;
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
///         final var admin = OrganizationsFunctions.getIAMPolicy(GetIAMPolicyArgs.builder()
///             .bindings(GetIAMPolicyBindingArgs.builder()
///                 .role("roles/editor")
///                 .members("user:jane@example.com")
///                 .build())
///             .build());
///
///         var folder = new IAMPolicy("folder", IAMPolicyArgs.builder()
///             .folder("folders/1234567")
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   folder:
///     type: gcp:folder:IAMPolicy
///     properties:
///       folder: folders/1234567
///       policyData: ${admin.policyData}
/// variables:
///   admin:
///     fn::invoke:
///       function: gcp:organizations:getIAMPolicy
///       arguments:
///         bindings:
///           - role: roles/editor
///             members:
///               - user:jane@example.com
/// ```
///
///
/// With IAM Conditions:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const admin = gcp.organizations.getIAMPolicy({
///     bindings: [{
///         role: "roles/compute.admin",
///         members: ["user:jane@example.com"],
///         condition: {
///             title: "expires_after_2019_12_31",
///             description: "Expiring at midnight of 2019-12-31",
///             expression: "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
///         },
///     }],
/// });
/// const folder = new gcp.folder.IAMPolicy("folder", {
///     folder: "folders/1234567",
///     policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
///     "role": "roles/compute.admin",
///     "members": ["user:jane@example.com"],
///     "condition": {
///         "title": "expires_after_2019_12_31",
///         "description": "Expiring at midnight of 2019-12-31",
///         "expression": "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
///     },
/// }])
/// folder = gcp.folder.IAMPolicy("folder",
///     folder="folders/1234567",
///     policy_data=admin.policy_data)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var admin = Gcp.Organizations.GetIAMPolicy.Invoke(new()
///     {
///         Bindings = new[]
///         {
///             new Gcp.Organizations.Inputs.GetIAMPolicyBindingInputArgs
///             {
///                 Role = "roles/compute.admin",
///                 Members = new[]
///                 {
///                     "user:jane@example.com",
///                 },
///                 Condition = new Gcp.Organizations.Inputs.GetIAMPolicyBindingConditionInputArgs
///                 {
///                     Title = "expires_after_2019_12_31",
///                     Description = "Expiring at midnight of 2019-12-31",
///                     Expression = "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
///                 },
///             },
///         },
///     });
///
///     var folder = new Gcp.Folder.IAMPolicy("folder", new()
///     {
///         Folder = "folders/1234567",
///         PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
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
/// 		admin, err := organizations.LookupIAMPolicy(ctx, &organizations.LookupIAMPolicyArgs{
/// 			Bindings: []organizations.GetIAMPolicyBinding{
/// 				{
/// 					Role: "roles/compute.admin",
/// 					Members: []string{
/// 						"user:jane@example.com",
/// 					},
/// 					Condition: {
/// 						Title:       "expires_after_2019_12_31",
/// 						Description: pulumi.StringRef("Expiring at midnight of 2019-12-31"),
/// 						Expression:  "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = folder.NewIAMPolicy(ctx, "folder", &folder.IAMPolicyArgs{
/// 			Folder:     pulumi.String("folders/1234567"),
/// 			PolicyData: pulumi.String(admin.PolicyData),
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
/// data "gcp_organizations_getiampolicy" "admin" {
///   bindings {
///     role    = "roles/compute.admin"
///     members = ["user:jane@example.com"]
///     condition = {
///       title       = "expires_after_2019_12_31"
///       description = "Expiring at midnight of 2019-12-31"
///       expression  = "request.time < timestamp(\"2020-01-01T00:00:00Z\")"
///     }
///   }
/// }
///
/// resource "gcp_folder_iampolicy" "folder" {
///   folder      = "folders/1234567"
///   policy_data = data.gcp_organizations_getiampolicy.admin.policy_data
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetIAMPolicyArgs;
/// import com.pulumi.gcp.organizations.inputs.GetIAMPolicyBindingArgs;
/// import com.pulumi.gcp.organizations.inputs.GetIAMPolicyBindingConditionArgs;
/// import com.pulumi.gcp.folder.IAMPolicy;
/// import com.pulumi.gcp.folder.IAMPolicyArgs;
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
///         final var admin = OrganizationsFunctions.getIAMPolicy(GetIAMPolicyArgs.builder()
///             .bindings(GetIAMPolicyBindingArgs.builder()
///                 .role("roles/compute.admin")
///                 .members("user:jane@example.com")
///                 .condition(GetIAMPolicyBindingConditionArgs.builder()
///                     .title("expires_after_2019_12_31")
///                     .description("Expiring at midnight of 2019-12-31")
///                     .expression("request.time < timestamp(\"2020-01-01T00:00:00Z\")")
///                     .build())
///                 .build())
///             .build());
///
///         var folder = new IAMPolicy("folder", IAMPolicyArgs.builder()
///             .folder("folders/1234567")
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   folder:
///     type: gcp:folder:IAMPolicy
///     properties:
///       folder: folders/1234567
///       policyData: ${admin.policyData}
/// variables:
///   admin:
///     fn::invoke:
///       function: gcp:organizations:getIAMPolicy
///       arguments:
///         bindings:
///           - role: roles/compute.admin
///             members:
///               - user:jane@example.com
///             condition:
///               title: expires_after_2019_12_31
///               description: Expiring at midnight of 2019-12-31
///               expression: request.time < timestamp("2020-01-01T00:00:00Z")
/// ```
///
///
/// ## gcp.folder.IAMBinding
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const folder = new gcp.folder.IAMBinding("folder", {
///     folder: "folders/1234567",
///     role: "roles/editor",
///     members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// folder = gcp.folder.IAMBinding("folder",
///     folder="folders/1234567",
///     role="roles/editor",
///     members=["user:jane@example.com"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var folder = new Gcp.Folder.IAMBinding("folder", new()
///     {
///         Folder = "folders/1234567",
///         Role = "roles/editor",
///         Members = new[]
///         {
///             "user:jane@example.com",
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
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := folder.NewIAMBinding(ctx, "folder", &folder.IAMBindingArgs{
/// 			Folder: pulumi.String("folders/1234567"),
/// 			Role:   pulumi.String("roles/editor"),
/// 			Members: pulumi.StringArray{
/// 				pulumi.String("user:jane@example.com"),
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
/// resource "gcp_folder_iambinding" "folder" {
///   folder  = "folders/1234567"
///   role    = "roles/editor"
///   members = ["user:jane@example.com"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.folder.IAMBinding;
/// import com.pulumi.gcp.folder.IAMBindingArgs;
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
///         var folder = new IAMBinding("folder", IAMBindingArgs.builder()
///             .folder("folders/1234567")
///             .role("roles/editor")
///             .members("user:jane@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   folder:
///     type: gcp:folder:IAMBinding
///     properties:
///       folder: folders/1234567
///       role: roles/editor
///       members:
///         - user:jane@example.com
/// ```
///
///
/// With IAM Conditions:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const folder = new gcp.folder.IAMBinding("folder", {
///     folder: "folders/1234567",
///     role: "roles/container.admin",
///     members: ["user:jane@example.com"],
///     condition: {
///         title: "expires_after_2019_12_31",
///         description: "Expiring at midnight of 2019-12-31",
///         expression: "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// folder = gcp.folder.IAMBinding("folder",
///     folder="folders/1234567",
///     role="roles/container.admin",
///     members=["user:jane@example.com"],
///     condition={
///         "title": "expires_after_2019_12_31",
///         "description": "Expiring at midnight of 2019-12-31",
///         "expression": "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var folder = new Gcp.Folder.IAMBinding("folder", new()
///     {
///         Folder = "folders/1234567",
///         Role = "roles/container.admin",
///         Members = new[]
///         {
///             "user:jane@example.com",
///         },
///         Condition = new Gcp.Folder.Inputs.IAMBindingConditionArgs
///         {
///             Title = "expires_after_2019_12_31",
///             Description = "Expiring at midnight of 2019-12-31",
///             Expression = "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
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
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := folder.NewIAMBinding(ctx, "folder", &folder.IAMBindingArgs{
/// 			Folder: pulumi.String("folders/1234567"),
/// 			Role:   pulumi.String("roles/container.admin"),
/// 			Members: pulumi.StringArray{
/// 				pulumi.String("user:jane@example.com"),
/// 			},
/// 			Condition: &folder.IAMBindingConditionArgs{
/// 				Title:       pulumi.String("expires_after_2019_12_31"),
/// 				Description: pulumi.String("Expiring at midnight of 2019-12-31"),
/// 				Expression:  pulumi.String("request.time < timestamp(\"2020-01-01T00:00:00Z\")"),
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
/// resource "gcp_folder_iambinding" "folder" {
///   folder  = "folders/1234567"
///   role    = "roles/container.admin"
///   members = ["user:jane@example.com"]
///   condition = {
///     title       = "expires_after_2019_12_31"
///     description = "Expiring at midnight of 2019-12-31"
///     expression  = "request.time < timestamp(\"2020-01-01T00:00:00Z\")"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.folder.IAMBinding;
/// import com.pulumi.gcp.folder.IAMBindingArgs;
/// import com.pulumi.gcp.folder.inputs.IAMBindingConditionArgs;
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
///         var folder = new IAMBinding("folder", IAMBindingArgs.builder()
///             .folder("folders/1234567")
///             .role("roles/container.admin")
///             .members("user:jane@example.com")
///             .condition(IAMBindingConditionArgs.builder()
///                 .title("expires_after_2019_12_31")
///                 .description("Expiring at midnight of 2019-12-31")
///                 .expression("request.time < timestamp(\"2020-01-01T00:00:00Z\")")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   folder:
///     type: gcp:folder:IAMBinding
///     properties:
///       folder: folders/1234567
///       role: roles/container.admin
///       members:
///         - user:jane@example.com
///       condition:
///         title: expires_after_2019_12_31
///         description: Expiring at midnight of 2019-12-31
///         expression: request.time < timestamp("2020-01-01T00:00:00Z")
/// ```
///
///
/// ## gcp.folder.IAMMember
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const folder = new gcp.folder.IAMMember("folder", {
///     folder: "folders/1234567",
///     role: "roles/editor",
///     member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// folder = gcp.folder.IAMMember("folder",
///     folder="folders/1234567",
///     role="roles/editor",
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
///     var folder = new Gcp.Folder.IAMMember("folder", new()
///     {
///         Folder = "folders/1234567",
///         Role = "roles/editor",
///         Member = "user:jane@example.com",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/folder"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := folder.NewIAMMember(ctx, "folder", &folder.IAMMemberArgs{
/// 			Folder: pulumi.String("folders/1234567"),
/// 			Role:   pulumi.String("roles/editor"),
/// 			Member: pulumi.String("user:jane@example.com"),
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
/// resource "gcp_folder_iammember" "folder" {
///   folder = "folders/1234567"
///   role   = "roles/editor"
///   member = "user:jane@example.com"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.folder.IAMMember;
/// import com.pulumi.gcp.folder.IAMMemberArgs;
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
///         var folder = new IAMMember("folder", IAMMemberArgs.builder()
///             .folder("folders/1234567")
///             .role("roles/editor")
///             .member("user:jane@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   folder:
///     type: gcp:folder:IAMMember
///     properties:
///       folder: folders/1234567
///       role: roles/editor
///       member: user:jane@example.com
/// ```
///
///
/// With IAM Conditions:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const folder = new gcp.folder.IAMMember("folder", {
///     folder: "folders/1234567",
///     role: "roles/firebase.admin",
///     member: "user:jane@example.com",
///     condition: {
///         title: "expires_after_2019_12_31",
///         description: "Expiring at midnight of 2019-12-31",
///         expression: "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// folder = gcp.folder.IAMMember("folder",
///     folder="folders/1234567",
///     role="roles/firebase.admin",
///     member="user:jane@example.com",
///     condition={
///         "title": "expires_after_2019_12_31",
///         "description": "Expiring at midnight of 2019-12-31",
///         "expression": "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var folder = new Gcp.Folder.IAMMember("folder", new()
///     {
///         Folder = "folders/1234567",
///         Role = "roles/firebase.admin",
///         Member = "user:jane@example.com",
///         Condition = new Gcp.Folder.Inputs.IAMMemberConditionArgs
///         {
///             Title = "expires_after_2019_12_31",
///             Description = "Expiring at midnight of 2019-12-31",
///             Expression = "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
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
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := folder.NewIAMMember(ctx, "folder", &folder.IAMMemberArgs{
/// 			Folder: pulumi.String("folders/1234567"),
/// 			Role:   pulumi.String("roles/firebase.admin"),
/// 			Member: pulumi.String("user:jane@example.com"),
/// 			Condition: &folder.IAMMemberConditionArgs{
/// 				Title:       pulumi.String("expires_after_2019_12_31"),
/// 				Description: pulumi.String("Expiring at midnight of 2019-12-31"),
/// 				Expression:  pulumi.String("request.time < timestamp(\"2020-01-01T00:00:00Z\")"),
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
/// resource "gcp_folder_iammember" "folder" {
///   folder = "folders/1234567"
///   role   = "roles/firebase.admin"
///   member = "user:jane@example.com"
///   condition = {
///     title       = "expires_after_2019_12_31"
///     description = "Expiring at midnight of 2019-12-31"
///     expression  = "request.time < timestamp(\"2020-01-01T00:00:00Z\")"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.folder.IAMMember;
/// import com.pulumi.gcp.folder.IAMMemberArgs;
/// import com.pulumi.gcp.folder.inputs.IAMMemberConditionArgs;
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
///         var folder = new IAMMember("folder", IAMMemberArgs.builder()
///             .folder("folders/1234567")
///             .role("roles/firebase.admin")
///             .member("user:jane@example.com")
///             .condition(IAMMemberConditionArgs.builder()
///                 .title("expires_after_2019_12_31")
///                 .description("Expiring at midnight of 2019-12-31")
///                 .expression("request.time < timestamp(\"2020-01-01T00:00:00Z\")")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   folder:
///     type: gcp:folder:IAMMember
///     properties:
///       folder: folders/1234567
///       role: roles/firebase.admin
///       member: user:jane@example.com
///       condition:
///         title: expires_after_2019_12_31
///         description: Expiring at midnight of 2019-12-31
///         expression: request.time < timestamp("2020-01-01T00:00:00Z")
/// ```
///
///
/// ## gcp.folder.IamAuditConfig
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const folder = new gcp.folder.IamAuditConfig("folder", {
///     folder: "folders/1234567",
///     service: "allServices",
///     auditLogConfigs: [
///         {
///             logType: "ADMIN_READ",
///         },
///         {
///             logType: "DATA_READ",
///             exemptedMembers: ["user:joebloggs@example.com"],
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// folder = gcp.folder.IamAuditConfig("folder",
///     folder="folders/1234567",
///     service="allServices",
///     audit_log_configs=[
///         {
///             "log_type": "ADMIN_READ",
///         },
///         {
///             "log_type": "DATA_READ",
///             "exempted_members": ["user:joebloggs@example.com"],
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
///     var folder = new Gcp.Folder.IamAuditConfig("folder", new()
///     {
///         Folder = "folders/1234567",
///         Service = "allServices",
///         AuditLogConfigs = new[]
///         {
///             new Gcp.Folder.Inputs.IamAuditConfigAuditLogConfigArgs
///             {
///                 LogType = "ADMIN_READ",
///             },
///             new Gcp.Folder.Inputs.IamAuditConfigAuditLogConfigArgs
///             {
///                 LogType = "DATA_READ",
///                 ExemptedMembers = new[]
///                 {
///                     "user:joebloggs@example.com",
///                 },
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
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := folder.NewIamAuditConfig(ctx, "folder", &folder.IamAuditConfigArgs{
/// 			Folder:  pulumi.String("folders/1234567"),
/// 			Service: pulumi.String("allServices"),
/// 			AuditLogConfigs: folder.IamAuditConfigAuditLogConfigArray{
/// 				&folder.IamAuditConfigAuditLogConfigArgs{
/// 					LogType: pulumi.String("ADMIN_READ"),
/// 				},
/// 				&folder.IamAuditConfigAuditLogConfigArgs{
/// 					LogType: pulumi.String("DATA_READ"),
/// 					ExemptedMembers: pulumi.StringArray{
/// 						pulumi.String("user:joebloggs@example.com"),
/// 					},
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
/// resource "gcp_folder_iamauditconfig" "folder" {
///   folder  = "folders/1234567"
///   service = "allServices"
///   audit_log_configs {
///     log_type = "ADMIN_READ"
///   }
///   audit_log_configs {
///     log_type         = "DATA_READ"
///     exempted_members = ["user:joebloggs@example.com"]
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.folder.IamAuditConfig;
/// import com.pulumi.gcp.folder.IamAuditConfigArgs;
/// import com.pulumi.gcp.folder.inputs.IamAuditConfigAuditLogConfigArgs;
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
///         var folder = new IamAuditConfig("folder", IamAuditConfigArgs.builder()
///             .folder("folders/1234567")
///             .service("allServices")
///             .auditLogConfigs(
///                 IamAuditConfigAuditLogConfigArgs.builder()
///                     .logType("ADMIN_READ")
///                     .build(),
///                 IamAuditConfigAuditLogConfigArgs.builder()
///                     .logType("DATA_READ")
///                     .exemptedMembers("user:joebloggs@example.com")
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   folder:
///     type: gcp:folder:IamAuditConfig
///     properties:
///       folder: folders/1234567
///       service: allServices
///       auditLogConfigs:
///         - logType: ADMIN_READ
///         - logType: DATA_READ
///           exemptedMembers:
///             - user:joebloggs@example.com
/// ```
///
///
/// ## gcp.folder.IAMBinding
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const folder = new gcp.folder.IAMBinding("folder", {
///     folder: "folders/1234567",
///     role: "roles/editor",
///     members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// folder = gcp.folder.IAMBinding("folder",
///     folder="folders/1234567",
///     role="roles/editor",
///     members=["user:jane@example.com"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var folder = new Gcp.Folder.IAMBinding("folder", new()
///     {
///         Folder = "folders/1234567",
///         Role = "roles/editor",
///         Members = new[]
///         {
///             "user:jane@example.com",
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
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := folder.NewIAMBinding(ctx, "folder", &folder.IAMBindingArgs{
/// 			Folder: pulumi.String("folders/1234567"),
/// 			Role:   pulumi.String("roles/editor"),
/// 			Members: pulumi.StringArray{
/// 				pulumi.String("user:jane@example.com"),
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
/// resource "gcp_folder_iambinding" "folder" {
///   folder  = "folders/1234567"
///   role    = "roles/editor"
///   members = ["user:jane@example.com"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.folder.IAMBinding;
/// import com.pulumi.gcp.folder.IAMBindingArgs;
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
///         var folder = new IAMBinding("folder", IAMBindingArgs.builder()
///             .folder("folders/1234567")
///             .role("roles/editor")
///             .members("user:jane@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   folder:
///     type: gcp:folder:IAMBinding
///     properties:
///       folder: folders/1234567
///       role: roles/editor
///       members:
///         - user:jane@example.com
/// ```
///
///
/// With IAM Conditions:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const folder = new gcp.folder.IAMBinding("folder", {
///     folder: "folders/1234567",
///     role: "roles/container.admin",
///     members: ["user:jane@example.com"],
///     condition: {
///         title: "expires_after_2019_12_31",
///         description: "Expiring at midnight of 2019-12-31",
///         expression: "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// folder = gcp.folder.IAMBinding("folder",
///     folder="folders/1234567",
///     role="roles/container.admin",
///     members=["user:jane@example.com"],
///     condition={
///         "title": "expires_after_2019_12_31",
///         "description": "Expiring at midnight of 2019-12-31",
///         "expression": "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var folder = new Gcp.Folder.IAMBinding("folder", new()
///     {
///         Folder = "folders/1234567",
///         Role = "roles/container.admin",
///         Members = new[]
///         {
///             "user:jane@example.com",
///         },
///         Condition = new Gcp.Folder.Inputs.IAMBindingConditionArgs
///         {
///             Title = "expires_after_2019_12_31",
///             Description = "Expiring at midnight of 2019-12-31",
///             Expression = "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
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
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := folder.NewIAMBinding(ctx, "folder", &folder.IAMBindingArgs{
/// 			Folder: pulumi.String("folders/1234567"),
/// 			Role:   pulumi.String("roles/container.admin"),
/// 			Members: pulumi.StringArray{
/// 				pulumi.String("user:jane@example.com"),
/// 			},
/// 			Condition: &folder.IAMBindingConditionArgs{
/// 				Title:       pulumi.String("expires_after_2019_12_31"),
/// 				Description: pulumi.String("Expiring at midnight of 2019-12-31"),
/// 				Expression:  pulumi.String("request.time < timestamp(\"2020-01-01T00:00:00Z\")"),
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
/// resource "gcp_folder_iambinding" "folder" {
///   folder  = "folders/1234567"
///   role    = "roles/container.admin"
///   members = ["user:jane@example.com"]
///   condition = {
///     title       = "expires_after_2019_12_31"
///     description = "Expiring at midnight of 2019-12-31"
///     expression  = "request.time < timestamp(\"2020-01-01T00:00:00Z\")"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.folder.IAMBinding;
/// import com.pulumi.gcp.folder.IAMBindingArgs;
/// import com.pulumi.gcp.folder.inputs.IAMBindingConditionArgs;
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
///         var folder = new IAMBinding("folder", IAMBindingArgs.builder()
///             .folder("folders/1234567")
///             .role("roles/container.admin")
///             .members("user:jane@example.com")
///             .condition(IAMBindingConditionArgs.builder()
///                 .title("expires_after_2019_12_31")
///                 .description("Expiring at midnight of 2019-12-31")
///                 .expression("request.time < timestamp(\"2020-01-01T00:00:00Z\")")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   folder:
///     type: gcp:folder:IAMBinding
///     properties:
///       folder: folders/1234567
///       role: roles/container.admin
///       members:
///         - user:jane@example.com
///       condition:
///         title: expires_after_2019_12_31
///         description: Expiring at midnight of 2019-12-31
///         expression: request.time < timestamp("2020-01-01T00:00:00Z")
/// ```
///
///
/// ## gcp.folder.IAMMember
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const folder = new gcp.folder.IAMMember("folder", {
///     folder: "folders/1234567",
///     role: "roles/editor",
///     member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// folder = gcp.folder.IAMMember("folder",
///     folder="folders/1234567",
///     role="roles/editor",
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
///     var folder = new Gcp.Folder.IAMMember("folder", new()
///     {
///         Folder = "folders/1234567",
///         Role = "roles/editor",
///         Member = "user:jane@example.com",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/folder"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := folder.NewIAMMember(ctx, "folder", &folder.IAMMemberArgs{
/// 			Folder: pulumi.String("folders/1234567"),
/// 			Role:   pulumi.String("roles/editor"),
/// 			Member: pulumi.String("user:jane@example.com"),
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
/// resource "gcp_folder_iammember" "folder" {
///   folder = "folders/1234567"
///   role   = "roles/editor"
///   member = "user:jane@example.com"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.folder.IAMMember;
/// import com.pulumi.gcp.folder.IAMMemberArgs;
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
///         var folder = new IAMMember("folder", IAMMemberArgs.builder()
///             .folder("folders/1234567")
///             .role("roles/editor")
///             .member("user:jane@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   folder:
///     type: gcp:folder:IAMMember
///     properties:
///       folder: folders/1234567
///       role: roles/editor
///       member: user:jane@example.com
/// ```
///
///
/// With IAM Conditions:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const folder = new gcp.folder.IAMMember("folder", {
///     folder: "folders/1234567",
///     role: "roles/firebase.admin",
///     member: "user:jane@example.com",
///     condition: {
///         title: "expires_after_2019_12_31",
///         description: "Expiring at midnight of 2019-12-31",
///         expression: "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// folder = gcp.folder.IAMMember("folder",
///     folder="folders/1234567",
///     role="roles/firebase.admin",
///     member="user:jane@example.com",
///     condition={
///         "title": "expires_after_2019_12_31",
///         "description": "Expiring at midnight of 2019-12-31",
///         "expression": "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var folder = new Gcp.Folder.IAMMember("folder", new()
///     {
///         Folder = "folders/1234567",
///         Role = "roles/firebase.admin",
///         Member = "user:jane@example.com",
///         Condition = new Gcp.Folder.Inputs.IAMMemberConditionArgs
///         {
///             Title = "expires_after_2019_12_31",
///             Description = "Expiring at midnight of 2019-12-31",
///             Expression = "request.time < timestamp(\"2020-01-01T00:00:00Z\")",
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
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := folder.NewIAMMember(ctx, "folder", &folder.IAMMemberArgs{
/// 			Folder: pulumi.String("folders/1234567"),
/// 			Role:   pulumi.String("roles/firebase.admin"),
/// 			Member: pulumi.String("user:jane@example.com"),
/// 			Condition: &folder.IAMMemberConditionArgs{
/// 				Title:       pulumi.String("expires_after_2019_12_31"),
/// 				Description: pulumi.String("Expiring at midnight of 2019-12-31"),
/// 				Expression:  pulumi.String("request.time < timestamp(\"2020-01-01T00:00:00Z\")"),
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
/// resource "gcp_folder_iammember" "folder" {
///   folder = "folders/1234567"
///   role   = "roles/firebase.admin"
///   member = "user:jane@example.com"
///   condition = {
///     title       = "expires_after_2019_12_31"
///     description = "Expiring at midnight of 2019-12-31"
///     expression  = "request.time < timestamp(\"2020-01-01T00:00:00Z\")"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.folder.IAMMember;
/// import com.pulumi.gcp.folder.IAMMemberArgs;
/// import com.pulumi.gcp.folder.inputs.IAMMemberConditionArgs;
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
///         var folder = new IAMMember("folder", IAMMemberArgs.builder()
///             .folder("folders/1234567")
///             .role("roles/firebase.admin")
///             .member("user:jane@example.com")
///             .condition(IAMMemberConditionArgs.builder()
///                 .title("expires_after_2019_12_31")
///                 .description("Expiring at midnight of 2019-12-31")
///                 .expression("request.time < timestamp(\"2020-01-01T00:00:00Z\")")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   folder:
///     type: gcp:folder:IAMMember
///     properties:
///       folder: folders/1234567
///       role: roles/firebase.admin
///       member: user:jane@example.com
///       condition:
///         title: expires_after_2019_12_31
///         description: Expiring at midnight of 2019-12-31
///         expression: request.time < timestamp("2020-01-01T00:00:00Z")
/// ```
///
///
/// ## gcp.folder.IamAuditConfig
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const folder = new gcp.folder.IamAuditConfig("folder", {
///     folder: "folders/1234567",
///     service: "allServices",
///     auditLogConfigs: [
///         {
///             logType: "ADMIN_READ",
///         },
///         {
///             logType: "DATA_READ",
///             exemptedMembers: ["user:joebloggs@example.com"],
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// folder = gcp.folder.IamAuditConfig("folder",
///     folder="folders/1234567",
///     service="allServices",
///     audit_log_configs=[
///         {
///             "log_type": "ADMIN_READ",
///         },
///         {
///             "log_type": "DATA_READ",
///             "exempted_members": ["user:joebloggs@example.com"],
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
///     var folder = new Gcp.Folder.IamAuditConfig("folder", new()
///     {
///         Folder = "folders/1234567",
///         Service = "allServices",
///         AuditLogConfigs = new[]
///         {
///             new Gcp.Folder.Inputs.IamAuditConfigAuditLogConfigArgs
///             {
///                 LogType = "ADMIN_READ",
///             },
///             new Gcp.Folder.Inputs.IamAuditConfigAuditLogConfigArgs
///             {
///                 LogType = "DATA_READ",
///                 ExemptedMembers = new[]
///                 {
///                     "user:joebloggs@example.com",
///                 },
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
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := folder.NewIamAuditConfig(ctx, "folder", &folder.IamAuditConfigArgs{
/// 			Folder:  pulumi.String("folders/1234567"),
/// 			Service: pulumi.String("allServices"),
/// 			AuditLogConfigs: folder.IamAuditConfigAuditLogConfigArray{
/// 				&folder.IamAuditConfigAuditLogConfigArgs{
/// 					LogType: pulumi.String("ADMIN_READ"),
/// 				},
/// 				&folder.IamAuditConfigAuditLogConfigArgs{
/// 					LogType: pulumi.String("DATA_READ"),
/// 					ExemptedMembers: pulumi.StringArray{
/// 						pulumi.String("user:joebloggs@example.com"),
/// 					},
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
/// resource "gcp_folder_iamauditconfig" "folder" {
///   folder  = "folders/1234567"
///   service = "allServices"
///   audit_log_configs {
///     log_type = "ADMIN_READ"
///   }
///   audit_log_configs {
///     log_type         = "DATA_READ"
///     exempted_members = ["user:joebloggs@example.com"]
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.folder.IamAuditConfig;
/// import com.pulumi.gcp.folder.IamAuditConfigArgs;
/// import com.pulumi.gcp.folder.inputs.IamAuditConfigAuditLogConfigArgs;
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
///         var folder = new IamAuditConfig("folder", IamAuditConfigArgs.builder()
///             .folder("folders/1234567")
///             .service("allServices")
///             .auditLogConfigs(
///                 IamAuditConfigAuditLogConfigArgs.builder()
///                     .logType("ADMIN_READ")
///                     .build(),
///                 IamAuditConfigAuditLogConfigArgs.builder()
///                     .logType("DATA_READ")
///                     .exemptedMembers("user:joebloggs@example.com")
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   folder:
///     type: gcp:folder:IamAuditConfig
///     properties:
///       folder: folders/1234567
///       service: allServices
///       auditLogConfigs:
///         - logType: ADMIN_READ
///         - logType: DATA_READ
///           exemptedMembers:
///             - user:joebloggs@example.com
/// ```
///
///
/// ## Import
///
/// &gt; **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
/// full name of the custom role, e.g. `organizations/{{org_id}}/roles/{{role_id}}`.
///
/// &gt; **Conditional IAM Bindings**: If you're importing a IAM binding with a condition block, make sure
/// to include the title of condition, e.g. `terraform import google_folder_iam_binding.my_folder "folder roles/{{role_id}} condition-title"`
class IamAuditConfig extends pulumi.CustomResource {
  /// The configuration for logging of each type of permission.  This can be specified multiple times.  Structure is documented below.
  late final pulumi.Output<List<IamAuditConfigAuditLogConfig>> auditLogConfigs;
  /// (Computed) The etag of the folder's IAM policy.
  late final pulumi.Output<String> etag;
  /// The resource name of the folder the policy is attached to. Its format is folders/{folder_id}.
  late final pulumi.Output<String> folder;
  /// Service which will be enabled for audit logging.  The special value `allServices` covers all services.  Note that if there are gcp.folder.IamAuditConfig resources covering both `allServices` and a specific service then the union of the two AuditConfigs is used for that service: the `logTypes` specified in each `auditLogConfig` are enabled, and the `exemptedMembers` in each `auditLogConfig` are exempted.
  late final pulumi.Output<String> service;

  /// Creates a new [IamAuditConfig].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [IamAuditConfig]. {@macro pulumi_folder_iam_audit_config_iam_audit_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  IamAuditConfig(
    String name, {
    IamAuditConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:folder/iamAuditConfig:IamAuditConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.36.1').merge(options),
        ) {
    auditLogConfigs = registerOutput<List<IamAuditConfigAuditLogConfig>>('auditLogConfigs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<IamAuditConfigAuditLogConfig>(guardedValue, (value) => IamAuditConfigAuditLogConfig.fromMap((value as Map).cast<String, dynamic>())); });
    etag = registerOutput<String>('etag');
    folder = registerOutput<String>('folder');
    service = registerOutput<String>('service');
  }

  /// Gets an existing [IamAuditConfig] resource's state with the given [name] and [id].
  static IamAuditConfig get(
    String name,
    pulumi.Input<String> id, {
    IamAuditConfigState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return IamAuditConfig._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  IamAuditConfig._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:folder/iamAuditConfig:IamAuditConfig',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    auditLogConfigs = registerOutput<List<IamAuditConfigAuditLogConfig>>('auditLogConfigs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<IamAuditConfigAuditLogConfig>(guardedValue, (value) => IamAuditConfigAuditLogConfig.fromMap((value as Map).cast<String, dynamic>())); });
    etag = registerOutput<String>('etag');
    folder = registerOutput<String>('folder');
    service = registerOutput<String>('service');
  }

  /// Creates a typed reference to an existing [IamAuditConfig] resource.
  IamAuditConfig.reference(String urn)
    : super(
        'gcp:folder/iamAuditConfig:IamAuditConfig',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    auditLogConfigs = registerOutput<List<IamAuditConfigAuditLogConfig>>('auditLogConfigs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<IamAuditConfigAuditLogConfig>(guardedValue, (value) => IamAuditConfigAuditLogConfig.fromMap((value as Map).cast<String, dynamic>())); });
    etag = registerOutput<String>('etag');
    folder = registerOutput<String>('folder');
    service = registerOutput<String>('service');
  }
}
