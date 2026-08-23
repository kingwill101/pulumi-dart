import 'package:pulumi/pulumi.dart' as pulumi;
import 'hive_table_iam_policy_args.dart';
import 'hive_table_iam_policy_state.dart';

/// Three different resources help you manage your IAM policy for BigLake Hive Metastore HiveTable. Each of these resources serves a different use case:
///
/// * `gcp.biglake.HiveTableIamPolicy`: Authoritative. Sets the IAM policy for the hivetable and replaces any existing policy already attached.
/// * `gcp.biglake.HiveTableIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the hivetable are preserved. Members added outside of Terraform for the same role will be detected as drift and removed on the next `pulumi up`.
/// * `gcp.biglake.HiveTableIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the hivetable are preserved. Members added outside of Terraform will **not** be detected as drift.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.biglake.HiveTableIamPolicy`: Retrieves the IAM policy for the hivetable
///
/// &gt; **Note:** `gcp.biglake.HiveTableIamPolicy` **cannot** be used in conjunction with `gcp.biglake.HiveTableIamBinding` and `gcp.biglake.HiveTableIamMember` or they will fight over what your policy should be.
///
/// &gt; **Note:** `gcp.biglake.HiveTableIamBinding` resources **can be** used in conjunction with `gcp.biglake.HiveTableIamMember` resources **only if** they do not grant privilege to the same role.
///
/// &gt; **Warning:** This resource is in beta, and should be used with the terraform-provider-google-beta provider.
/// See Provider Versions for more details on beta resources.
///
/// ## gcp.biglake.HiveTableIamPolicy
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
/// const policy = new gcp.biglake.HiveTableIamPolicy("policy", {
///     project: myHiveTable.project,
///     catalog: myHiveTable.catalog,
///     database: myHiveTable.database,
///     name: myHiveTable.name,
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
/// policy = gcp.biglake.HiveTableIamPolicy("policy",
///     project=my_hive_table["project"],
///     catalog=my_hive_table["catalog"],
///     database=my_hive_table["database"],
///     name=my_hive_table["name"],
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
///     var policy = new Gcp.BigLake.HiveTableIamPolicy("policy", new()
///     {
///         Project = myHiveTable.Project,
///         Catalog = myHiveTable.Catalog,
///         Database = myHiveTable.Database,
///         Name = myHiveTable.Name,
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
/// 		_, err = biglake.NewHiveTableIamPolicy(ctx, "policy", &biglake.HiveTableIamPolicyArgs{
/// 			Project:    pulumi.Any(myHiveTable.Project),
/// 			Catalog:    pulumi.Any(myHiveTable.Catalog),
/// 			Database:   pulumi.Any(myHiveTable.Database),
/// 			Name:       pulumi.Any(myHiveTable.Name),
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
/// resource "gcp_biglake_hivetableiampolicy" "policy" {
///   project     = myHiveTable.project
///   catalog     = myHiveTable.catalog
///   database    = myHiveTable.database
///   name        = myHiveTable.name
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
/// import com.pulumi.gcp.biglake.HiveTableIamPolicy;
/// import com.pulumi.gcp.biglake.HiveTableIamPolicyArgs;
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
///         var policy = new HiveTableIamPolicy("policy", HiveTableIamPolicyArgs.builder()
///             .project(myHiveTable.get("project"))
///             .catalog(myHiveTable.get("catalog"))
///             .database(myHiveTable.get("database"))
///             .name(myHiveTable.get("name"))
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:biglake:HiveTableIamPolicy
///     properties:
///       project: ${myHiveTable.project}
///       catalog: ${myHiveTable.catalog}
///       database: ${myHiveTable.database}
///       name: ${myHiveTable.name}
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
/// ## gcp.biglake.HiveTableIamBinding
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.biglake.HiveTableIamBinding("binding", {
///     project: myHiveTable.project,
///     catalog: myHiveTable.catalog,
///     database: myHiveTable.database,
///     name: myHiveTable.name,
///     role: "roles/biglake.editor",
///     members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.biglake.HiveTableIamBinding("binding",
///     project=my_hive_table["project"],
///     catalog=my_hive_table["catalog"],
///     database=my_hive_table["database"],
///     name=my_hive_table["name"],
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
///     var binding = new Gcp.BigLake.HiveTableIamBinding("binding", new()
///     {
///         Project = myHiveTable.Project,
///         Catalog = myHiveTable.Catalog,
///         Database = myHiveTable.Database,
///         Name = myHiveTable.Name,
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
/// 		_, err := biglake.NewHiveTableIamBinding(ctx, "binding", &biglake.HiveTableIamBindingArgs{
/// 			Project:  pulumi.Any(myHiveTable.Project),
/// 			Catalog:  pulumi.Any(myHiveTable.Catalog),
/// 			Database: pulumi.Any(myHiveTable.Database),
/// 			Name:     pulumi.Any(myHiveTable.Name),
/// 			Role:     pulumi.String("roles/biglake.editor"),
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
/// resource "gcp_biglake_hivetableiambinding" "binding" {
///   project  = myHiveTable.project
///   catalog  = myHiveTable.catalog
///   database = myHiveTable.database
///   name     = myHiveTable.name
///   role     = "roles/biglake.editor"
///   members  = ["user:jane@example.com"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.biglake.HiveTableIamBinding;
/// import com.pulumi.gcp.biglake.HiveTableIamBindingArgs;
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
///         var binding = new HiveTableIamBinding("binding", HiveTableIamBindingArgs.builder()
///             .project(myHiveTable.get("project"))
///             .catalog(myHiveTable.get("catalog"))
///             .database(myHiveTable.get("database"))
///             .name(myHiveTable.get("name"))
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
///     type: gcp:biglake:HiveTableIamBinding
///     properties:
///       project: ${myHiveTable.project}
///       catalog: ${myHiveTable.catalog}
///       database: ${myHiveTable.database}
///       name: ${myHiveTable.name}
///       role: roles/biglake.editor
///       members:
///         - user:jane@example.com
/// ```
///
///
/// ## gcp.biglake.HiveTableIamMember
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.biglake.HiveTableIamMember("member", {
///     project: myHiveTable.project,
///     catalog: myHiveTable.catalog,
///     database: myHiveTable.database,
///     name: myHiveTable.name,
///     role: "roles/biglake.editor",
///     member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.biglake.HiveTableIamMember("member",
///     project=my_hive_table["project"],
///     catalog=my_hive_table["catalog"],
///     database=my_hive_table["database"],
///     name=my_hive_table["name"],
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
///     var member = new Gcp.BigLake.HiveTableIamMember("member", new()
///     {
///         Project = myHiveTable.Project,
///         Catalog = myHiveTable.Catalog,
///         Database = myHiveTable.Database,
///         Name = myHiveTable.Name,
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
/// 		_, err := biglake.NewHiveTableIamMember(ctx, "member", &biglake.HiveTableIamMemberArgs{
/// 			Project:  pulumi.Any(myHiveTable.Project),
/// 			Catalog:  pulumi.Any(myHiveTable.Catalog),
/// 			Database: pulumi.Any(myHiveTable.Database),
/// 			Name:     pulumi.Any(myHiveTable.Name),
/// 			Role:     pulumi.String("roles/biglake.editor"),
/// 			Member:   pulumi.String("user:jane@example.com"),
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
/// resource "gcp_biglake_hivetableiammember" "member" {
///   project  = myHiveTable.project
///   catalog  = myHiveTable.catalog
///   database = myHiveTable.database
///   name     = myHiveTable.name
///   role     = "roles/biglake.editor"
///   member   = "user:jane@example.com"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.biglake.HiveTableIamMember;
/// import com.pulumi.gcp.biglake.HiveTableIamMemberArgs;
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
///         var member = new HiveTableIamMember("member", HiveTableIamMemberArgs.builder()
///             .project(myHiveTable.get("project"))
///             .catalog(myHiveTable.get("catalog"))
///             .database(myHiveTable.get("database"))
///             .name(myHiveTable.get("name"))
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
///     type: gcp:biglake:HiveTableIamMember
///     properties:
///       project: ${myHiveTable.project}
///       catalog: ${myHiveTable.catalog}
///       database: ${myHiveTable.database}
///       name: ${myHiveTable.name}
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
/// # IAM policy for BigLake Hive Metastore HiveTable
///
/// Three different resources help you manage your IAM policy for BigLake Hive Metastore HiveTable. Each of these resources serves a different use case:
///
/// * `gcp.biglake.HiveTableIamPolicy`: Authoritative. Sets the IAM policy for the hivetable and replaces any existing policy already attached.
/// * `gcp.biglake.HiveTableIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the hivetable are preserved. Members added outside of Terraform for the same role will be detected as drift and removed on the next `pulumi up`.
/// * `gcp.biglake.HiveTableIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the hivetable are preserved. Members added outside of Terraform will **not** be detected as drift.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.biglake.HiveTableIamPolicy`: Retrieves the IAM policy for the hivetable
///
/// &gt; **Note:** `gcp.biglake.HiveTableIamPolicy` **cannot** be used in conjunction with `gcp.biglake.HiveTableIamBinding` and `gcp.biglake.HiveTableIamMember` or they will fight over what your policy should be.
///
/// &gt; **Note:** `gcp.biglake.HiveTableIamBinding` resources **can be** used in conjunction with `gcp.biglake.HiveTableIamMember` resources **only if** they do not grant privilege to the same role.
///
/// &gt; **Warning:** This resource is in beta, and should be used with the terraform-provider-google-beta provider.
/// See Provider Versions for more details on beta resources.
///
/// ## gcp.biglake.HiveTableIamPolicy
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
/// const policy = new gcp.biglake.HiveTableIamPolicy("policy", {
///     project: myHiveTable.project,
///     catalog: myHiveTable.catalog,
///     database: myHiveTable.database,
///     name: myHiveTable.name,
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
/// policy = gcp.biglake.HiveTableIamPolicy("policy",
///     project=my_hive_table["project"],
///     catalog=my_hive_table["catalog"],
///     database=my_hive_table["database"],
///     name=my_hive_table["name"],
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
///     var policy = new Gcp.BigLake.HiveTableIamPolicy("policy", new()
///     {
///         Project = myHiveTable.Project,
///         Catalog = myHiveTable.Catalog,
///         Database = myHiveTable.Database,
///         Name = myHiveTable.Name,
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
/// 		_, err = biglake.NewHiveTableIamPolicy(ctx, "policy", &biglake.HiveTableIamPolicyArgs{
/// 			Project:    pulumi.Any(myHiveTable.Project),
/// 			Catalog:    pulumi.Any(myHiveTable.Catalog),
/// 			Database:   pulumi.Any(myHiveTable.Database),
/// 			Name:       pulumi.Any(myHiveTable.Name),
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
/// resource "gcp_biglake_hivetableiampolicy" "policy" {
///   project     = myHiveTable.project
///   catalog     = myHiveTable.catalog
///   database    = myHiveTable.database
///   name        = myHiveTable.name
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
/// import com.pulumi.gcp.biglake.HiveTableIamPolicy;
/// import com.pulumi.gcp.biglake.HiveTableIamPolicyArgs;
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
///         var policy = new HiveTableIamPolicy("policy", HiveTableIamPolicyArgs.builder()
///             .project(myHiveTable.get("project"))
///             .catalog(myHiveTable.get("catalog"))
///             .database(myHiveTable.get("database"))
///             .name(myHiveTable.get("name"))
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:biglake:HiveTableIamPolicy
///     properties:
///       project: ${myHiveTable.project}
///       catalog: ${myHiveTable.catalog}
///       database: ${myHiveTable.database}
///       name: ${myHiveTable.name}
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
/// ## gcp.biglake.HiveTableIamBinding
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.biglake.HiveTableIamBinding("binding", {
///     project: myHiveTable.project,
///     catalog: myHiveTable.catalog,
///     database: myHiveTable.database,
///     name: myHiveTable.name,
///     role: "roles/biglake.editor",
///     members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.biglake.HiveTableIamBinding("binding",
///     project=my_hive_table["project"],
///     catalog=my_hive_table["catalog"],
///     database=my_hive_table["database"],
///     name=my_hive_table["name"],
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
///     var binding = new Gcp.BigLake.HiveTableIamBinding("binding", new()
///     {
///         Project = myHiveTable.Project,
///         Catalog = myHiveTable.Catalog,
///         Database = myHiveTable.Database,
///         Name = myHiveTable.Name,
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
/// 		_, err := biglake.NewHiveTableIamBinding(ctx, "binding", &biglake.HiveTableIamBindingArgs{
/// 			Project:  pulumi.Any(myHiveTable.Project),
/// 			Catalog:  pulumi.Any(myHiveTable.Catalog),
/// 			Database: pulumi.Any(myHiveTable.Database),
/// 			Name:     pulumi.Any(myHiveTable.Name),
/// 			Role:     pulumi.String("roles/biglake.editor"),
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
/// resource "gcp_biglake_hivetableiambinding" "binding" {
///   project  = myHiveTable.project
///   catalog  = myHiveTable.catalog
///   database = myHiveTable.database
///   name     = myHiveTable.name
///   role     = "roles/biglake.editor"
///   members  = ["user:jane@example.com"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.biglake.HiveTableIamBinding;
/// import com.pulumi.gcp.biglake.HiveTableIamBindingArgs;
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
///         var binding = new HiveTableIamBinding("binding", HiveTableIamBindingArgs.builder()
///             .project(myHiveTable.get("project"))
///             .catalog(myHiveTable.get("catalog"))
///             .database(myHiveTable.get("database"))
///             .name(myHiveTable.get("name"))
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
///     type: gcp:biglake:HiveTableIamBinding
///     properties:
///       project: ${myHiveTable.project}
///       catalog: ${myHiveTable.catalog}
///       database: ${myHiveTable.database}
///       name: ${myHiveTable.name}
///       role: roles/biglake.editor
///       members:
///         - user:jane@example.com
/// ```
///
///
/// ## gcp.biglake.HiveTableIamMember
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.biglake.HiveTableIamMember("member", {
///     project: myHiveTable.project,
///     catalog: myHiveTable.catalog,
///     database: myHiveTable.database,
///     name: myHiveTable.name,
///     role: "roles/biglake.editor",
///     member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.biglake.HiveTableIamMember("member",
///     project=my_hive_table["project"],
///     catalog=my_hive_table["catalog"],
///     database=my_hive_table["database"],
///     name=my_hive_table["name"],
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
///     var member = new Gcp.BigLake.HiveTableIamMember("member", new()
///     {
///         Project = myHiveTable.Project,
///         Catalog = myHiveTable.Catalog,
///         Database = myHiveTable.Database,
///         Name = myHiveTable.Name,
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
/// 		_, err := biglake.NewHiveTableIamMember(ctx, "member", &biglake.HiveTableIamMemberArgs{
/// 			Project:  pulumi.Any(myHiveTable.Project),
/// 			Catalog:  pulumi.Any(myHiveTable.Catalog),
/// 			Database: pulumi.Any(myHiveTable.Database),
/// 			Name:     pulumi.Any(myHiveTable.Name),
/// 			Role:     pulumi.String("roles/biglake.editor"),
/// 			Member:   pulumi.String("user:jane@example.com"),
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
/// resource "gcp_biglake_hivetableiammember" "member" {
///   project  = myHiveTable.project
///   catalog  = myHiveTable.catalog
///   database = myHiveTable.database
///   name     = myHiveTable.name
///   role     = "roles/biglake.editor"
///   member   = "user:jane@example.com"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.biglake.HiveTableIamMember;
/// import com.pulumi.gcp.biglake.HiveTableIamMemberArgs;
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
///         var member = new HiveTableIamMember("member", HiveTableIamMemberArgs.builder()
///             .project(myHiveTable.get("project"))
///             .catalog(myHiveTable.get("catalog"))
///             .database(myHiveTable.get("database"))
///             .name(myHiveTable.get("name"))
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
///     type: gcp:biglake:HiveTableIamMember
///     properties:
///       project: ${myHiveTable.project}
///       catalog: ${myHiveTable.catalog}
///       database: ${myHiveTable.database}
///       name: ${myHiveTable.name}
///       role: roles/biglake.editor
///       member: user:jane@example.com
/// ```
///
///
/// ## Import
///
/// For all import syntaxes, the "resource in question" can take any of the following forms:
///
/// * projects/{{project}}/catalogs/{{catalog}}/namespaces/{{database}}/tables/{{name}}
/// * {{project}}/{{catalog}}/{{database}}/{{name}}
/// * {{catalog}}/{{database}}/{{name}}
/// * {{name}}
///
/// Any variables not passed in the import command will be taken from the provider configuration.
///
/// BigLake Hive Metastore hivetable IAM resources can be imported using the resource identifiers, role, and member.
///
/// IAM member imports use space-delimited identifiers: the resource in question, the role, and the member identity, e.g.
/// ```sh
/// $ terraform import google_biglake_hive_table_iam_member.editor "projects/{{project}}/catalogs/{{catalog}}/namespaces/{{database}}/tables/{{hive_table}} roles/biglake.editor user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
/// ```sh
/// $ terraform import google_biglake_hive_table_iam_binding.editor "projects/{{project}}/catalogs/{{catalog}}/namespaces/{{database}}/tables/{{hive_table}} roles/biglake.editor"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
/// ```sh
/// $ pulumi import gcp:biglake/hiveTableIamPolicy:HiveTableIamPolicy editor projects/{{project}}/catalogs/{{catalog}}/namespaces/{{database}}/tables/{{hive_table}}
/// ```
///
/// &gt; **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class HiveTableIamPolicy extends pulumi.CustomResource {
  /// The Hive catalog where the table is located. Used to find the parent resource to bind the IAM policy to
  late final pulumi.Output<String> catalog;
  /// The Hive database where the table is located. Used to find the parent resource to bind the IAM policy to
  late final pulumi.Output<String> database;
  /// (Computed) The etag of the IAM policy.
  late final pulumi.Output<String> etag;
  /// Used to find the parent resource to bind the IAM policy to
  late final pulumi.Output<String> name;
  /// The policy data generated by
  /// a `gcp.organizations.getIAMPolicy` data source.
  late final pulumi.Output<String> policyData;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  late final pulumi.Output<String> project;

  /// Creates a new [HiveTableIamPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [HiveTableIamPolicy]. {@macro pulumi_biglake_hive_table_iam_policy_hive_table_iam_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  HiveTableIamPolicy(
    String name, {
    HiveTableIamPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:biglake/hiveTableIamPolicy:HiveTableIamPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    catalog = registerOutput<String>('catalog');
    database = registerOutput<String>('database');
    etag = registerOutput<String>('etag');
    this.name = registerOutput<String>('name');
    policyData = registerOutput<String>('policyData');
    project = registerOutput<String>('project');
  }

  /// Gets an existing [HiveTableIamPolicy] resource's state with the given [name] and [id].
  static HiveTableIamPolicy get(
    String name,
    pulumi.Input<String> id, {
    HiveTableIamPolicyState? state,
  }) {
    return HiveTableIamPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  HiveTableIamPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:biglake/hiveTableIamPolicy:HiveTableIamPolicy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    catalog = registerOutput<String>('catalog');
    database = registerOutput<String>('database');
    etag = registerOutput<String>('etag');
    this.name = registerOutput<String>('name');
    policyData = registerOutput<String>('policyData');
    project = registerOutput<String>('project');
  }
}
