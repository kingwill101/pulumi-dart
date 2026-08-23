import 'package:pulumi/pulumi.dart' as pulumi;
import 'hive_database_iam_binding_args.dart';
import 'hive_database_iam_binding_condition.dart';
import 'hive_database_iam_binding_state.dart';

/// Three different resources help you manage your IAM policy for BigLake Hive Metastore HiveDatabase. Each of these resources serves a different use case:
///
/// * `gcp.biglake.HiveDatabaseIamPolicy`: Authoritative. Sets the IAM policy for the hivedatabase and replaces any existing policy already attached.
/// * `gcp.biglake.HiveDatabaseIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the hivedatabase are preserved. Members added outside of Terraform for the same role will be detected as drift and removed on the next `pulumi up`.
/// * `gcp.biglake.HiveDatabaseIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the hivedatabase are preserved. Members added outside of Terraform will **not** be detected as drift.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.biglake.HiveDatabaseIamPolicy`: Retrieves the IAM policy for the hivedatabase
///
/// &gt; **Note:** `gcp.biglake.HiveDatabaseIamPolicy` **cannot** be used in conjunction with `gcp.biglake.HiveDatabaseIamBinding` and `gcp.biglake.HiveDatabaseIamMember` or they will fight over what your policy should be.
///
/// &gt; **Note:** `gcp.biglake.HiveDatabaseIamBinding` resources **can be** used in conjunction with `gcp.biglake.HiveDatabaseIamMember` resources **only if** they do not grant privilege to the same role.
///
/// &gt; **Warning:** This resource is in beta, and should be used with the terraform-provider-google-beta provider.
/// See Provider Versions for more details on beta resources.
///
/// ## gcp.biglake.HiveDatabaseIamPolicy
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const admin = gcp.organizations.getIAMPolicy({
///     bindings: [{
///         role: "roles/biglake.editor",
///         members: ["user:jane@example.com"],
///     }],
/// });
/// const policy = new gcp.biglake.HiveDatabaseIamPolicy("policy", {
///     project: myHiveDatabase.project,
///     catalog: myHiveDatabase.catalog,
///     name: myHiveDatabase.name,
///     policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
///     "role": "roles/biglake.editor",
///     "members": ["user:jane@example.com"],
/// }])
/// policy = gcp.biglake.HiveDatabaseIamPolicy("policy",
///     project=my_hive_database["project"],
///     catalog=my_hive_database["catalog"],
///     name=my_hive_database["name"],
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
///                 Role = "roles/biglake.editor",
///                 Members = new[]
///                 {
///                     "user:jane@example.com",
///                 },
///             },
///         },
///     });
///
///     var policy = new Gcp.BigLake.HiveDatabaseIamPolicy("policy", new()
///     {
///         Project = myHiveDatabase.Project,
///         Catalog = myHiveDatabase.Catalog,
///         Name = myHiveDatabase.Name,
///         PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/biglake"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		admin, err := organizations.LookupIAMPolicy(ctx, &organizations.LookupIAMPolicyArgs{
/// 			Bindings: []organizations.GetIAMPolicyBinding{
/// 				{
/// 					Role: "roles/biglake.editor",
/// 					Members: []string{
/// 						"user:jane@example.com",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = biglake.NewHiveDatabaseIamPolicy(ctx, "policy", &biglake.HiveDatabaseIamPolicyArgs{
/// 			Project:    pulumi.Any(myHiveDatabase.Project),
/// 			Catalog:    pulumi.Any(myHiveDatabase.Catalog),
/// 			Name:       pulumi.Any(myHiveDatabase.Name),
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
///     role    = "roles/biglake.editor"
///     members = ["user:jane@example.com"]
///   }
/// }
///
/// resource "gcp_biglake_hivedatabaseiampolicy" "policy" {
///   project     = myHiveDatabase.project
///   catalog     = myHiveDatabase.catalog
///   name        = myHiveDatabase.name
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
/// import com.pulumi.gcp.biglake.HiveDatabaseIamPolicy;
/// import com.pulumi.gcp.biglake.HiveDatabaseIamPolicyArgs;
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
///                 .role("roles/biglake.editor")
///                 .members("user:jane@example.com")
///                 .build())
///             .build());
///
///         var policy = new HiveDatabaseIamPolicy("policy", HiveDatabaseIamPolicyArgs.builder()
///             .project(myHiveDatabase.get("project"))
///             .catalog(myHiveDatabase.get("catalog"))
///             .name(myHiveDatabase.get("name"))
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:biglake:HiveDatabaseIamPolicy
///     properties:
///       project: ${myHiveDatabase.project}
///       catalog: ${myHiveDatabase.catalog}
///       name: ${myHiveDatabase.name}
///       policyData: ${admin.policyData}
/// variables:
///   admin:
///     fn::invoke:
///       function: gcp:organizations:getIAMPolicy
///       arguments:
///         bindings:
///           - role: roles/biglake.editor
///             members:
///               - user:jane@example.com
/// ```
///
///
/// ## gcp.biglake.HiveDatabaseIamBinding
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.biglake.HiveDatabaseIamBinding("binding", {
///     project: myHiveDatabase.project,
///     catalog: myHiveDatabase.catalog,
///     name: myHiveDatabase.name,
///     role: "roles/biglake.editor",
///     members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.biglake.HiveDatabaseIamBinding("binding",
///     project=my_hive_database["project"],
///     catalog=my_hive_database["catalog"],
///     name=my_hive_database["name"],
///     role="roles/biglake.editor",
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
///     var binding = new Gcp.BigLake.HiveDatabaseIamBinding("binding", new()
///     {
///         Project = myHiveDatabase.Project,
///         Catalog = myHiveDatabase.Catalog,
///         Name = myHiveDatabase.Name,
///         Role = "roles/biglake.editor",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/biglake"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := biglake.NewHiveDatabaseIamBinding(ctx, "binding", &biglake.HiveDatabaseIamBindingArgs{
/// 			Project: pulumi.Any(myHiveDatabase.Project),
/// 			Catalog: pulumi.Any(myHiveDatabase.Catalog),
/// 			Name:    pulumi.Any(myHiveDatabase.Name),
/// 			Role:    pulumi.String("roles/biglake.editor"),
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
/// resource "gcp_biglake_hivedatabaseiambinding" "binding" {
///   project = myHiveDatabase.project
///   catalog = myHiveDatabase.catalog
///   name    = myHiveDatabase.name
///   role    = "roles/biglake.editor"
///   members = ["user:jane@example.com"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.biglake.HiveDatabaseIamBinding;
/// import com.pulumi.gcp.biglake.HiveDatabaseIamBindingArgs;
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
///         var binding = new HiveDatabaseIamBinding("binding", HiveDatabaseIamBindingArgs.builder()
///             .project(myHiveDatabase.get("project"))
///             .catalog(myHiveDatabase.get("catalog"))
///             .name(myHiveDatabase.get("name"))
///             .role("roles/biglake.editor")
///             .members("user:jane@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   binding:
///     type: gcp:biglake:HiveDatabaseIamBinding
///     properties:
///       project: ${myHiveDatabase.project}
///       catalog: ${myHiveDatabase.catalog}
///       name: ${myHiveDatabase.name}
///       role: roles/biglake.editor
///       members:
///         - user:jane@example.com
/// ```
///
///
/// ## gcp.biglake.HiveDatabaseIamMember
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.biglake.HiveDatabaseIamMember("member", {
///     project: myHiveDatabase.project,
///     catalog: myHiveDatabase.catalog,
///     name: myHiveDatabase.name,
///     role: "roles/biglake.editor",
///     member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.biglake.HiveDatabaseIamMember("member",
///     project=my_hive_database["project"],
///     catalog=my_hive_database["catalog"],
///     name=my_hive_database["name"],
///     role="roles/biglake.editor",
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
///     var member = new Gcp.BigLake.HiveDatabaseIamMember("member", new()
///     {
///         Project = myHiveDatabase.Project,
///         Catalog = myHiveDatabase.Catalog,
///         Name = myHiveDatabase.Name,
///         Role = "roles/biglake.editor",
///         Member = "user:jane@example.com",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/biglake"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := biglake.NewHiveDatabaseIamMember(ctx, "member", &biglake.HiveDatabaseIamMemberArgs{
/// 			Project: pulumi.Any(myHiveDatabase.Project),
/// 			Catalog: pulumi.Any(myHiveDatabase.Catalog),
/// 			Name:    pulumi.Any(myHiveDatabase.Name),
/// 			Role:    pulumi.String("roles/biglake.editor"),
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
/// resource "gcp_biglake_hivedatabaseiammember" "member" {
///   project = myHiveDatabase.project
///   catalog = myHiveDatabase.catalog
///   name    = myHiveDatabase.name
///   role    = "roles/biglake.editor"
///   member  = "user:jane@example.com"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.biglake.HiveDatabaseIamMember;
/// import com.pulumi.gcp.biglake.HiveDatabaseIamMemberArgs;
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
///         var member = new HiveDatabaseIamMember("member", HiveDatabaseIamMemberArgs.builder()
///             .project(myHiveDatabase.get("project"))
///             .catalog(myHiveDatabase.get("catalog"))
///             .name(myHiveDatabase.get("name"))
///             .role("roles/biglake.editor")
///             .member("user:jane@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   member:
///     type: gcp:biglake:HiveDatabaseIamMember
///     properties:
///       project: ${myHiveDatabase.project}
///       catalog: ${myHiveDatabase.catalog}
///       name: ${myHiveDatabase.name}
///       role: roles/biglake.editor
///       member: user:jane@example.com
/// ```
///
///
///
/// ## This resource supports User Project Overrides.
///
/// -
///
/// # IAM policy for BigLake Hive Metastore HiveDatabase
///
/// Three different resources help you manage your IAM policy for BigLake Hive Metastore HiveDatabase. Each of these resources serves a different use case:
///
/// * `gcp.biglake.HiveDatabaseIamPolicy`: Authoritative. Sets the IAM policy for the hivedatabase and replaces any existing policy already attached.
/// * `gcp.biglake.HiveDatabaseIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the hivedatabase are preserved. Members added outside of Terraform for the same role will be detected as drift and removed on the next `pulumi up`.
/// * `gcp.biglake.HiveDatabaseIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the hivedatabase are preserved. Members added outside of Terraform will **not** be detected as drift.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.biglake.HiveDatabaseIamPolicy`: Retrieves the IAM policy for the hivedatabase
///
/// &gt; **Note:** `gcp.biglake.HiveDatabaseIamPolicy` **cannot** be used in conjunction with `gcp.biglake.HiveDatabaseIamBinding` and `gcp.biglake.HiveDatabaseIamMember` or they will fight over what your policy should be.
///
/// &gt; **Note:** `gcp.biglake.HiveDatabaseIamBinding` resources **can be** used in conjunction with `gcp.biglake.HiveDatabaseIamMember` resources **only if** they do not grant privilege to the same role.
///
/// &gt; **Warning:** This resource is in beta, and should be used with the terraform-provider-google-beta provider.
/// See Provider Versions for more details on beta resources.
///
/// ## gcp.biglake.HiveDatabaseIamPolicy
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const admin = gcp.organizations.getIAMPolicy({
///     bindings: [{
///         role: "roles/biglake.editor",
///         members: ["user:jane@example.com"],
///     }],
/// });
/// const policy = new gcp.biglake.HiveDatabaseIamPolicy("policy", {
///     project: myHiveDatabase.project,
///     catalog: myHiveDatabase.catalog,
///     name: myHiveDatabase.name,
///     policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
///     "role": "roles/biglake.editor",
///     "members": ["user:jane@example.com"],
/// }])
/// policy = gcp.biglake.HiveDatabaseIamPolicy("policy",
///     project=my_hive_database["project"],
///     catalog=my_hive_database["catalog"],
///     name=my_hive_database["name"],
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
///                 Role = "roles/biglake.editor",
///                 Members = new[]
///                 {
///                     "user:jane@example.com",
///                 },
///             },
///         },
///     });
///
///     var policy = new Gcp.BigLake.HiveDatabaseIamPolicy("policy", new()
///     {
///         Project = myHiveDatabase.Project,
///         Catalog = myHiveDatabase.Catalog,
///         Name = myHiveDatabase.Name,
///         PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/biglake"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		admin, err := organizations.LookupIAMPolicy(ctx, &organizations.LookupIAMPolicyArgs{
/// 			Bindings: []organizations.GetIAMPolicyBinding{
/// 				{
/// 					Role: "roles/biglake.editor",
/// 					Members: []string{
/// 						"user:jane@example.com",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = biglake.NewHiveDatabaseIamPolicy(ctx, "policy", &biglake.HiveDatabaseIamPolicyArgs{
/// 			Project:    pulumi.Any(myHiveDatabase.Project),
/// 			Catalog:    pulumi.Any(myHiveDatabase.Catalog),
/// 			Name:       pulumi.Any(myHiveDatabase.Name),
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
///     role    = "roles/biglake.editor"
///     members = ["user:jane@example.com"]
///   }
/// }
///
/// resource "gcp_biglake_hivedatabaseiampolicy" "policy" {
///   project     = myHiveDatabase.project
///   catalog     = myHiveDatabase.catalog
///   name        = myHiveDatabase.name
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
/// import com.pulumi.gcp.biglake.HiveDatabaseIamPolicy;
/// import com.pulumi.gcp.biglake.HiveDatabaseIamPolicyArgs;
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
///                 .role("roles/biglake.editor")
///                 .members("user:jane@example.com")
///                 .build())
///             .build());
///
///         var policy = new HiveDatabaseIamPolicy("policy", HiveDatabaseIamPolicyArgs.builder()
///             .project(myHiveDatabase.get("project"))
///             .catalog(myHiveDatabase.get("catalog"))
///             .name(myHiveDatabase.get("name"))
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:biglake:HiveDatabaseIamPolicy
///     properties:
///       project: ${myHiveDatabase.project}
///       catalog: ${myHiveDatabase.catalog}
///       name: ${myHiveDatabase.name}
///       policyData: ${admin.policyData}
/// variables:
///   admin:
///     fn::invoke:
///       function: gcp:organizations:getIAMPolicy
///       arguments:
///         bindings:
///           - role: roles/biglake.editor
///             members:
///               - user:jane@example.com
/// ```
///
///
/// ## gcp.biglake.HiveDatabaseIamBinding
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.biglake.HiveDatabaseIamBinding("binding", {
///     project: myHiveDatabase.project,
///     catalog: myHiveDatabase.catalog,
///     name: myHiveDatabase.name,
///     role: "roles/biglake.editor",
///     members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.biglake.HiveDatabaseIamBinding("binding",
///     project=my_hive_database["project"],
///     catalog=my_hive_database["catalog"],
///     name=my_hive_database["name"],
///     role="roles/biglake.editor",
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
///     var binding = new Gcp.BigLake.HiveDatabaseIamBinding("binding", new()
///     {
///         Project = myHiveDatabase.Project,
///         Catalog = myHiveDatabase.Catalog,
///         Name = myHiveDatabase.Name,
///         Role = "roles/biglake.editor",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/biglake"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := biglake.NewHiveDatabaseIamBinding(ctx, "binding", &biglake.HiveDatabaseIamBindingArgs{
/// 			Project: pulumi.Any(myHiveDatabase.Project),
/// 			Catalog: pulumi.Any(myHiveDatabase.Catalog),
/// 			Name:    pulumi.Any(myHiveDatabase.Name),
/// 			Role:    pulumi.String("roles/biglake.editor"),
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
/// resource "gcp_biglake_hivedatabaseiambinding" "binding" {
///   project = myHiveDatabase.project
///   catalog = myHiveDatabase.catalog
///   name    = myHiveDatabase.name
///   role    = "roles/biglake.editor"
///   members = ["user:jane@example.com"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.biglake.HiveDatabaseIamBinding;
/// import com.pulumi.gcp.biglake.HiveDatabaseIamBindingArgs;
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
///         var binding = new HiveDatabaseIamBinding("binding", HiveDatabaseIamBindingArgs.builder()
///             .project(myHiveDatabase.get("project"))
///             .catalog(myHiveDatabase.get("catalog"))
///             .name(myHiveDatabase.get("name"))
///             .role("roles/biglake.editor")
///             .members("user:jane@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   binding:
///     type: gcp:biglake:HiveDatabaseIamBinding
///     properties:
///       project: ${myHiveDatabase.project}
///       catalog: ${myHiveDatabase.catalog}
///       name: ${myHiveDatabase.name}
///       role: roles/biglake.editor
///       members:
///         - user:jane@example.com
/// ```
///
///
/// ## gcp.biglake.HiveDatabaseIamMember
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.biglake.HiveDatabaseIamMember("member", {
///     project: myHiveDatabase.project,
///     catalog: myHiveDatabase.catalog,
///     name: myHiveDatabase.name,
///     role: "roles/biglake.editor",
///     member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.biglake.HiveDatabaseIamMember("member",
///     project=my_hive_database["project"],
///     catalog=my_hive_database["catalog"],
///     name=my_hive_database["name"],
///     role="roles/biglake.editor",
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
///     var member = new Gcp.BigLake.HiveDatabaseIamMember("member", new()
///     {
///         Project = myHiveDatabase.Project,
///         Catalog = myHiveDatabase.Catalog,
///         Name = myHiveDatabase.Name,
///         Role = "roles/biglake.editor",
///         Member = "user:jane@example.com",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/biglake"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := biglake.NewHiveDatabaseIamMember(ctx, "member", &biglake.HiveDatabaseIamMemberArgs{
/// 			Project: pulumi.Any(myHiveDatabase.Project),
/// 			Catalog: pulumi.Any(myHiveDatabase.Catalog),
/// 			Name:    pulumi.Any(myHiveDatabase.Name),
/// 			Role:    pulumi.String("roles/biglake.editor"),
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
/// resource "gcp_biglake_hivedatabaseiammember" "member" {
///   project = myHiveDatabase.project
///   catalog = myHiveDatabase.catalog
///   name    = myHiveDatabase.name
///   role    = "roles/biglake.editor"
///   member  = "user:jane@example.com"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.biglake.HiveDatabaseIamMember;
/// import com.pulumi.gcp.biglake.HiveDatabaseIamMemberArgs;
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
///         var member = new HiveDatabaseIamMember("member", HiveDatabaseIamMemberArgs.builder()
///             .project(myHiveDatabase.get("project"))
///             .catalog(myHiveDatabase.get("catalog"))
///             .name(myHiveDatabase.get("name"))
///             .role("roles/biglake.editor")
///             .member("user:jane@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   member:
///     type: gcp:biglake:HiveDatabaseIamMember
///     properties:
///       project: ${myHiveDatabase.project}
///       catalog: ${myHiveDatabase.catalog}
///       name: ${myHiveDatabase.name}
///       role: roles/biglake.editor
///       member: user:jane@example.com
/// ```
///
///
/// ## Import
///
/// For all import syntaxes, the "resource in question" can take any of the following forms:
///
/// * projects/{{project}}/catalogs/{{catalog}}/namespaces/{{name}}
/// * {{project}}/{{catalog}}/{{name}}
/// * {{catalog}}/{{name}}
/// * {{name}}
///
/// Any variables not passed in the import command will be taken from the provider configuration.
///
/// BigLake Hive Metastore hivedatabase IAM resources can be imported using the resource identifiers, role, and member.
///
/// IAM member imports use space-delimited identifiers: the resource in question, the role, and the member identity, e.g.
/// ```sh
/// $ terraform import google_biglake_hive_database_iam_member.editor "projects/{{project}}/catalogs/{{catalog}}/namespaces/{{hive_database}} roles/biglake.editor user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
/// ```sh
/// $ terraform import google_biglake_hive_database_iam_binding.editor "projects/{{project}}/catalogs/{{catalog}}/namespaces/{{hive_database}} roles/biglake.editor"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
/// ```sh
/// $ pulumi import gcp:biglake/hiveDatabaseIamBinding:HiveDatabaseIamBinding editor projects/{{project}}/catalogs/{{catalog}}/namespaces/{{hive_database}}
/// ```
///
/// &gt; **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class HiveDatabaseIamBinding extends pulumi.CustomResource {
  /// Hive catalog where the database to create is located.
  /// Used to find the parent resource to bind the IAM policy to
  late final pulumi.Output<String> catalog;
  late final pulumi.Output<HiveDatabaseIamBindingCondition?> condition;
  /// (Computed) The etag of the IAM policy.
  late final pulumi.Output<String> etag;
  /// Identities that will be granted the privilege in `role`.
  /// Each entry can have one of the following values:
  /// * **allUsers**: A special identifier that represents anyone who is on the internet; with or without a Google account.
  /// * **allAuthenticatedUsers**: A special identifier that represents anyone who is authenticated with a Google account or a service account.
  /// * **user:{emailid}**: An email address that represents a specific Google account. For example, alice@gmail.com or joe@example.com.
  /// * **serviceAccount:{emailid}**: An email address that represents a service account. For example, my-other-app@appspot.gserviceaccount.com.
  /// * **group:{emailid}**: An email address that represents a Google group. For example, admins@example.com.
  /// * **domain:{domain}**: A G Suite domain (primary, instead of alias) name that represents all the users of that domain. For example, google.com or example.com.
  /// * **projectOwner:projectid**: Owners of the given project. For example, "projectOwner:my-example-project"
  /// * **projectEditor:projectid**: Editors of the given project. For example, "projectEditor:my-example-project"
  /// * **projectViewer:projectid**: Viewers of the given project. For example, "projectViewer:my-example-project"
  /// * **Federated identities**: One or more federated identities in a workload or workforce identity pool, workload running on GKE, etc. Refer to the [Principal identifiers documentation](https://cloud.google.com/iam/docs/principal-identifiers#allow) for examples of targets and valid configuration. For example, "principal://iam.googleapis.com/locations/global/workforcePools/example-contractors/subject/joe@example.com"
  late final pulumi.Output<List<String>> members;
  /// Used to find the parent resource to bind the IAM policy to
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  late final pulumi.Output<String> project;
  /// The role that should be applied. Only one
  /// `gcp.biglake.HiveDatabaseIamBinding` can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  late final pulumi.Output<String> role;

  /// Creates a new [HiveDatabaseIamBinding].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [HiveDatabaseIamBinding]. {@macro pulumi_biglake_hive_database_iam_binding_hive_database_iam_binding_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  HiveDatabaseIamBinding(
    String name, {
    HiveDatabaseIamBindingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:biglake/hiveDatabaseIamBinding:HiveDatabaseIamBinding',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    catalog = registerOutput<String>('catalog');
    condition = registerOutput<HiveDatabaseIamBindingCondition?>('condition', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return HiveDatabaseIamBindingCondition.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    etag = registerOutput<String>('etag');
    members = registerOutput<List<String>>('members');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    role = registerOutput<String>('role');
  }

  /// Gets an existing [HiveDatabaseIamBinding] resource's state with the given [name] and [id].
  static HiveDatabaseIamBinding get(
    String name,
    pulumi.Input<String> id, {
    HiveDatabaseIamBindingState? state,
  }) {
    return HiveDatabaseIamBinding._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  HiveDatabaseIamBinding._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:biglake/hiveDatabaseIamBinding:HiveDatabaseIamBinding',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    catalog = registerOutput<String>('catalog');
    condition = registerOutput<HiveDatabaseIamBindingCondition?>('condition', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return HiveDatabaseIamBindingCondition.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    etag = registerOutput<String>('etag');
    members = registerOutput<List<String>>('members');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    role = registerOutput<String>('role');
  }
}
