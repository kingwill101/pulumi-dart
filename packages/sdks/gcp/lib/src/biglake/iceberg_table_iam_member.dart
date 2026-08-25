import 'package:pulumi/pulumi.dart' as pulumi;
import 'iceberg_table_iam_member_args.dart';
import 'iceberg_table_iam_member_condition.dart';
import 'iceberg_table_iam_member_state.dart';

/// Three different resources help you manage your IAM policy for Biglake IcebergTable. Each of these resources serves a different use case:
///
/// * `gcp.biglake.IcebergTableIamPolicy`: Authoritative. Sets the IAM policy for the icebergtable and replaces any existing policy already attached.
/// * `gcp.biglake.IcebergTableIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the icebergtable are preserved. Members added outside of Terraform for the same role will be detected as drift and removed on the next `pulumi up`.
/// * `gcp.biglake.IcebergTableIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the icebergtable are preserved. Members added outside of Terraform will **not** be detected as drift.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.biglake.IcebergTableIamPolicy`: Retrieves the IAM policy for the icebergtable
///
/// &gt; **Note:** `gcp.biglake.IcebergTableIamPolicy` **cannot** be used in conjunction with `gcp.biglake.IcebergTableIamBinding` and `gcp.biglake.IcebergTableIamMember` or they will fight over what your policy should be.
///
/// &gt; **Note:** `gcp.biglake.IcebergTableIamBinding` resources **can be** used in conjunction with `gcp.biglake.IcebergTableIamMember` resources **only if** they do not grant privilege to the same role.
///
///
/// ## gcp.biglake.IcebergTableIamPolicy
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
/// const policy = new gcp.biglake.IcebergTableIamPolicy("policy", {
///     project: myIcebergTable.project,
///     catalog: myIcebergTable.catalog,
///     namespace: myIcebergTable.namespace,
///     name: myIcebergTable.name,
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
/// policy = gcp.biglake.IcebergTableIamPolicy("policy",
///     project=my_iceberg_table["project"],
///     catalog=my_iceberg_table["catalog"],
///     namespace=my_iceberg_table["namespace"],
///     name=my_iceberg_table["name"],
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
///     var policy = new Gcp.BigLake.IcebergTableIamPolicy("policy", new()
///     {
///         Project = myIcebergTable.Project,
///         Catalog = myIcebergTable.Catalog,
///         Namespace = myIcebergTable.Namespace,
///         Name = myIcebergTable.Name,
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
/// 		_, err = biglake.NewIcebergTableIamPolicy(ctx, "policy", &biglake.IcebergTableIamPolicyArgs{
/// 			Project:    pulumi.Any(myIcebergTable.Project),
/// 			Catalog:    pulumi.Any(myIcebergTable.Catalog),
/// 			Namespace:  pulumi.Any(myIcebergTable.Namespace),
/// 			Name:       pulumi.Any(myIcebergTable.Name),
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
/// resource "gcp_biglake_icebergtableiampolicy" "policy" {
///   project     = myIcebergTable.project
///   catalog     = myIcebergTable.catalog
///   namespace   = myIcebergTable.namespace
///   name        = myIcebergTable.name
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
/// import com.pulumi.gcp.biglake.IcebergTableIamPolicy;
/// import com.pulumi.gcp.biglake.IcebergTableIamPolicyArgs;
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
///         var policy = new IcebergTableIamPolicy("policy", IcebergTableIamPolicyArgs.builder()
///             .project(myIcebergTable.get("project"))
///             .catalog(myIcebergTable.get("catalog"))
///             .namespace(myIcebergTable.get("namespace"))
///             .name(myIcebergTable.get("name"))
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:biglake:IcebergTableIamPolicy
///     properties:
///       project: ${myIcebergTable.project}
///       catalog: ${myIcebergTable.catalog}
///       namespace: ${myIcebergTable.namespace}
///       name: ${myIcebergTable.name}
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
/// ## gcp.biglake.IcebergTableIamBinding
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.biglake.IcebergTableIamBinding("binding", {
///     project: myIcebergTable.project,
///     catalog: myIcebergTable.catalog,
///     namespace: myIcebergTable.namespace,
///     name: myIcebergTable.name,
///     role: "roles/biglake.editor",
///     members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.biglake.IcebergTableIamBinding("binding",
///     project=my_iceberg_table["project"],
///     catalog=my_iceberg_table["catalog"],
///     namespace=my_iceberg_table["namespace"],
///     name=my_iceberg_table["name"],
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
///     var binding = new Gcp.BigLake.IcebergTableIamBinding("binding", new()
///     {
///         Project = myIcebergTable.Project,
///         Catalog = myIcebergTable.Catalog,
///         Namespace = myIcebergTable.Namespace,
///         Name = myIcebergTable.Name,
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
/// 		_, err := biglake.NewIcebergTableIamBinding(ctx, "binding", &biglake.IcebergTableIamBindingArgs{
/// 			Project:   pulumi.Any(myIcebergTable.Project),
/// 			Catalog:   pulumi.Any(myIcebergTable.Catalog),
/// 			Namespace: pulumi.Any(myIcebergTable.Namespace),
/// 			Name:      pulumi.Any(myIcebergTable.Name),
/// 			Role:      pulumi.String("roles/biglake.editor"),
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
/// resource "gcp_biglake_icebergtableiambinding" "binding" {
///   project   = myIcebergTable.project
///   catalog   = myIcebergTable.catalog
///   namespace = myIcebergTable.namespace
///   name      = myIcebergTable.name
///   role      = "roles/biglake.editor"
///   members   = ["user:jane@example.com"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.biglake.IcebergTableIamBinding;
/// import com.pulumi.gcp.biglake.IcebergTableIamBindingArgs;
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
///         var binding = new IcebergTableIamBinding("binding", IcebergTableIamBindingArgs.builder()
///             .project(myIcebergTable.get("project"))
///             .catalog(myIcebergTable.get("catalog"))
///             .namespace(myIcebergTable.get("namespace"))
///             .name(myIcebergTable.get("name"))
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
///     type: gcp:biglake:IcebergTableIamBinding
///     properties:
///       project: ${myIcebergTable.project}
///       catalog: ${myIcebergTable.catalog}
///       namespace: ${myIcebergTable.namespace}
///       name: ${myIcebergTable.name}
///       role: roles/biglake.editor
///       members:
///         - user:jane@example.com
/// ```
///
///
/// ## gcp.biglake.IcebergTableIamMember
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.biglake.IcebergTableIamMember("member", {
///     project: myIcebergTable.project,
///     catalog: myIcebergTable.catalog,
///     namespace: myIcebergTable.namespace,
///     name: myIcebergTable.name,
///     role: "roles/biglake.editor",
///     member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.biglake.IcebergTableIamMember("member",
///     project=my_iceberg_table["project"],
///     catalog=my_iceberg_table["catalog"],
///     namespace=my_iceberg_table["namespace"],
///     name=my_iceberg_table["name"],
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
///     var member = new Gcp.BigLake.IcebergTableIamMember("member", new()
///     {
///         Project = myIcebergTable.Project,
///         Catalog = myIcebergTable.Catalog,
///         Namespace = myIcebergTable.Namespace,
///         Name = myIcebergTable.Name,
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
/// 		_, err := biglake.NewIcebergTableIamMember(ctx, "member", &biglake.IcebergTableIamMemberArgs{
/// 			Project:   pulumi.Any(myIcebergTable.Project),
/// 			Catalog:   pulumi.Any(myIcebergTable.Catalog),
/// 			Namespace: pulumi.Any(myIcebergTable.Namespace),
/// 			Name:      pulumi.Any(myIcebergTable.Name),
/// 			Role:      pulumi.String("roles/biglake.editor"),
/// 			Member:    pulumi.String("user:jane@example.com"),
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
/// resource "gcp_biglake_icebergtableiammember" "member" {
///   project   = myIcebergTable.project
///   catalog   = myIcebergTable.catalog
///   namespace = myIcebergTable.namespace
///   name      = myIcebergTable.name
///   role      = "roles/biglake.editor"
///   member    = "user:jane@example.com"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.biglake.IcebergTableIamMember;
/// import com.pulumi.gcp.biglake.IcebergTableIamMemberArgs;
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
///         var member = new IcebergTableIamMember("member", IcebergTableIamMemberArgs.builder()
///             .project(myIcebergTable.get("project"))
///             .catalog(myIcebergTable.get("catalog"))
///             .namespace(myIcebergTable.get("namespace"))
///             .name(myIcebergTable.get("name"))
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
///     type: gcp:biglake:IcebergTableIamMember
///     properties:
///       project: ${myIcebergTable.project}
///       catalog: ${myIcebergTable.catalog}
///       namespace: ${myIcebergTable.namespace}
///       name: ${myIcebergTable.name}
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
/// # IAM policy for Biglake IcebergTable
///
/// Three different resources help you manage your IAM policy for Biglake IcebergTable. Each of these resources serves a different use case:
///
/// * `gcp.biglake.IcebergTableIamPolicy`: Authoritative. Sets the IAM policy for the icebergtable and replaces any existing policy already attached.
/// * `gcp.biglake.IcebergTableIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the icebergtable are preserved. Members added outside of Terraform for the same role will be detected as drift and removed on the next `pulumi up`.
/// * `gcp.biglake.IcebergTableIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the icebergtable are preserved. Members added outside of Terraform will **not** be detected as drift.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.biglake.IcebergTableIamPolicy`: Retrieves the IAM policy for the icebergtable
///
/// &gt; **Note:** `gcp.biglake.IcebergTableIamPolicy` **cannot** be used in conjunction with `gcp.biglake.IcebergTableIamBinding` and `gcp.biglake.IcebergTableIamMember` or they will fight over what your policy should be.
///
/// &gt; **Note:** `gcp.biglake.IcebergTableIamBinding` resources **can be** used in conjunction with `gcp.biglake.IcebergTableIamMember` resources **only if** they do not grant privilege to the same role.
///
///
/// ## gcp.biglake.IcebergTableIamPolicy
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
/// const policy = new gcp.biglake.IcebergTableIamPolicy("policy", {
///     project: myIcebergTable.project,
///     catalog: myIcebergTable.catalog,
///     namespace: myIcebergTable.namespace,
///     name: myIcebergTable.name,
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
/// policy = gcp.biglake.IcebergTableIamPolicy("policy",
///     project=my_iceberg_table["project"],
///     catalog=my_iceberg_table["catalog"],
///     namespace=my_iceberg_table["namespace"],
///     name=my_iceberg_table["name"],
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
///     var policy = new Gcp.BigLake.IcebergTableIamPolicy("policy", new()
///     {
///         Project = myIcebergTable.Project,
///         Catalog = myIcebergTable.Catalog,
///         Namespace = myIcebergTable.Namespace,
///         Name = myIcebergTable.Name,
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
/// 		_, err = biglake.NewIcebergTableIamPolicy(ctx, "policy", &biglake.IcebergTableIamPolicyArgs{
/// 			Project:    pulumi.Any(myIcebergTable.Project),
/// 			Catalog:    pulumi.Any(myIcebergTable.Catalog),
/// 			Namespace:  pulumi.Any(myIcebergTable.Namespace),
/// 			Name:       pulumi.Any(myIcebergTable.Name),
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
/// resource "gcp_biglake_icebergtableiampolicy" "policy" {
///   project     = myIcebergTable.project
///   catalog     = myIcebergTable.catalog
///   namespace   = myIcebergTable.namespace
///   name        = myIcebergTable.name
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
/// import com.pulumi.gcp.biglake.IcebergTableIamPolicy;
/// import com.pulumi.gcp.biglake.IcebergTableIamPolicyArgs;
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
///         var policy = new IcebergTableIamPolicy("policy", IcebergTableIamPolicyArgs.builder()
///             .project(myIcebergTable.get("project"))
///             .catalog(myIcebergTable.get("catalog"))
///             .namespace(myIcebergTable.get("namespace"))
///             .name(myIcebergTable.get("name"))
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:biglake:IcebergTableIamPolicy
///     properties:
///       project: ${myIcebergTable.project}
///       catalog: ${myIcebergTable.catalog}
///       namespace: ${myIcebergTable.namespace}
///       name: ${myIcebergTable.name}
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
/// ## gcp.biglake.IcebergTableIamBinding
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.biglake.IcebergTableIamBinding("binding", {
///     project: myIcebergTable.project,
///     catalog: myIcebergTable.catalog,
///     namespace: myIcebergTable.namespace,
///     name: myIcebergTable.name,
///     role: "roles/biglake.editor",
///     members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.biglake.IcebergTableIamBinding("binding",
///     project=my_iceberg_table["project"],
///     catalog=my_iceberg_table["catalog"],
///     namespace=my_iceberg_table["namespace"],
///     name=my_iceberg_table["name"],
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
///     var binding = new Gcp.BigLake.IcebergTableIamBinding("binding", new()
///     {
///         Project = myIcebergTable.Project,
///         Catalog = myIcebergTable.Catalog,
///         Namespace = myIcebergTable.Namespace,
///         Name = myIcebergTable.Name,
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
/// 		_, err := biglake.NewIcebergTableIamBinding(ctx, "binding", &biglake.IcebergTableIamBindingArgs{
/// 			Project:   pulumi.Any(myIcebergTable.Project),
/// 			Catalog:   pulumi.Any(myIcebergTable.Catalog),
/// 			Namespace: pulumi.Any(myIcebergTable.Namespace),
/// 			Name:      pulumi.Any(myIcebergTable.Name),
/// 			Role:      pulumi.String("roles/biglake.editor"),
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
/// resource "gcp_biglake_icebergtableiambinding" "binding" {
///   project   = myIcebergTable.project
///   catalog   = myIcebergTable.catalog
///   namespace = myIcebergTable.namespace
///   name      = myIcebergTable.name
///   role      = "roles/biglake.editor"
///   members   = ["user:jane@example.com"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.biglake.IcebergTableIamBinding;
/// import com.pulumi.gcp.biglake.IcebergTableIamBindingArgs;
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
///         var binding = new IcebergTableIamBinding("binding", IcebergTableIamBindingArgs.builder()
///             .project(myIcebergTable.get("project"))
///             .catalog(myIcebergTable.get("catalog"))
///             .namespace(myIcebergTable.get("namespace"))
///             .name(myIcebergTable.get("name"))
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
///     type: gcp:biglake:IcebergTableIamBinding
///     properties:
///       project: ${myIcebergTable.project}
///       catalog: ${myIcebergTable.catalog}
///       namespace: ${myIcebergTable.namespace}
///       name: ${myIcebergTable.name}
///       role: roles/biglake.editor
///       members:
///         - user:jane@example.com
/// ```
///
///
/// ## gcp.biglake.IcebergTableIamMember
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.biglake.IcebergTableIamMember("member", {
///     project: myIcebergTable.project,
///     catalog: myIcebergTable.catalog,
///     namespace: myIcebergTable.namespace,
///     name: myIcebergTable.name,
///     role: "roles/biglake.editor",
///     member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.biglake.IcebergTableIamMember("member",
///     project=my_iceberg_table["project"],
///     catalog=my_iceberg_table["catalog"],
///     namespace=my_iceberg_table["namespace"],
///     name=my_iceberg_table["name"],
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
///     var member = new Gcp.BigLake.IcebergTableIamMember("member", new()
///     {
///         Project = myIcebergTable.Project,
///         Catalog = myIcebergTable.Catalog,
///         Namespace = myIcebergTable.Namespace,
///         Name = myIcebergTable.Name,
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
/// 		_, err := biglake.NewIcebergTableIamMember(ctx, "member", &biglake.IcebergTableIamMemberArgs{
/// 			Project:   pulumi.Any(myIcebergTable.Project),
/// 			Catalog:   pulumi.Any(myIcebergTable.Catalog),
/// 			Namespace: pulumi.Any(myIcebergTable.Namespace),
/// 			Name:      pulumi.Any(myIcebergTable.Name),
/// 			Role:      pulumi.String("roles/biglake.editor"),
/// 			Member:    pulumi.String("user:jane@example.com"),
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
/// resource "gcp_biglake_icebergtableiammember" "member" {
///   project   = myIcebergTable.project
///   catalog   = myIcebergTable.catalog
///   namespace = myIcebergTable.namespace
///   name      = myIcebergTable.name
///   role      = "roles/biglake.editor"
///   member    = "user:jane@example.com"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.biglake.IcebergTableIamMember;
/// import com.pulumi.gcp.biglake.IcebergTableIamMemberArgs;
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
///         var member = new IcebergTableIamMember("member", IcebergTableIamMemberArgs.builder()
///             .project(myIcebergTable.get("project"))
///             .catalog(myIcebergTable.get("catalog"))
///             .namespace(myIcebergTable.get("namespace"))
///             .name(myIcebergTable.get("name"))
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
///     type: gcp:biglake:IcebergTableIamMember
///     properties:
///       project: ${myIcebergTable.project}
///       catalog: ${myIcebergTable.catalog}
///       namespace: ${myIcebergTable.namespace}
///       name: ${myIcebergTable.name}
///       role: roles/biglake.editor
///       member: user:jane@example.com
/// ```
///
///
/// ## Import
///
/// For all import syntaxes, the "resource in question" can take any of the following forms:
///
/// * projects/{{project}}/catalogs/{{catalog}}/namespaces/{{namespace}}/tables/{{name}}
/// * {{project}}/{{catalog}}/{{namespace}}/{{name}}
/// * {{catalog}}/{{namespace}}/{{name}}
/// * {{name}}
///
/// Any variables not passed in the import command will be taken from the provider configuration.
///
/// Biglake icebergtable IAM resources can be imported using the resource identifiers, role, and member.
///
/// IAM member imports use space-delimited identifiers: the resource in question, the role, and the member identity, e.g.
/// ```sh
/// $ terraform import google_biglake_iceberg_table_iam_member.editor "projects/{{project}}/catalogs/{{catalog}}/namespaces/{{namespace}}/tables/{{iceberg_table}} roles/biglake.editor user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
/// ```sh
/// $ terraform import google_biglake_iceberg_table_iam_binding.editor "projects/{{project}}/catalogs/{{catalog}}/namespaces/{{namespace}}/tables/{{iceberg_table}} roles/biglake.editor"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
/// ```sh
/// $ pulumi import gcp:biglake/icebergTableIamMember:IcebergTableIamMember editor projects/{{project}}/catalogs/{{catalog}}/namespaces/{{namespace}}/tables/{{iceberg_table}}
/// ```
///
/// &gt; **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class IcebergTableIamMember extends pulumi.CustomResource {
  /// The name of the IcebergCatalog.
  /// Used to find the parent resource to bind the IAM policy to
  late final pulumi.Output<String> catalog;
  late final pulumi.Output<IcebergTableIamMemberCondition?> condition;
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
  late final pulumi.Output<String> member;
  /// Used to find the parent resource to bind the IAM policy to
  late final pulumi.Output<String> name;
  /// The parent namespace of the table.
  /// Used to find the parent resource to bind the IAM policy to
  late final pulumi.Output<String> namespace;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  late final pulumi.Output<String> project;
  /// The role that should be applied. Only one
  /// `gcp.biglake.IcebergTableIamBinding` can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  late final pulumi.Output<String> role;

  /// Creates a new [IcebergTableIamMember].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [IcebergTableIamMember]. {@macro pulumi_biglake_iceberg_table_iam_member_iceberg_table_iam_member_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  IcebergTableIamMember(
    String name, {
    IcebergTableIamMemberArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:biglake/icebergTableIamMember:IcebergTableIamMember',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.35.1').merge(options),
        ) {
    catalog = registerOutput<String>('catalog');
    condition = registerOutput<IcebergTableIamMemberCondition?>('condition', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IcebergTableIamMemberCondition.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    etag = registerOutput<String>('etag');
    member = registerOutput<String>('member');
    this.name = registerOutput<String>('name');
    namespace = registerOutput<String>('namespace');
    project = registerOutput<String>('project');
    role = registerOutput<String>('role');
  }

  /// Gets an existing [IcebergTableIamMember] resource's state with the given [name] and [id].
  static IcebergTableIamMember get(
    String name,
    pulumi.Input<String> id, {
    IcebergTableIamMemberState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return IcebergTableIamMember._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  IcebergTableIamMember._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:biglake/icebergTableIamMember:IcebergTableIamMember',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    catalog = registerOutput<String>('catalog');
    condition = registerOutput<IcebergTableIamMemberCondition?>('condition', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IcebergTableIamMemberCondition.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    etag = registerOutput<String>('etag');
    member = registerOutput<String>('member');
    this.name = registerOutput<String>('name');
    namespace = registerOutput<String>('namespace');
    project = registerOutput<String>('project');
    role = registerOutput<String>('role');
  }

  /// Creates a typed reference to an existing [IcebergTableIamMember] resource.
  IcebergTableIamMember.reference(String urn)
    : super(
        'gcp:biglake/icebergTableIamMember:IcebergTableIamMember',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    catalog = registerOutput<String>('catalog');
    condition = registerOutput<IcebergTableIamMemberCondition?>('condition', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IcebergTableIamMemberCondition.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    etag = registerOutput<String>('etag');
    member = registerOutput<String>('member');
    this.name = registerOutput<String>('name');
    namespace = registerOutput<String>('namespace');
    project = registerOutput<String>('project');
    role = registerOutput<String>('role');
  }
}
