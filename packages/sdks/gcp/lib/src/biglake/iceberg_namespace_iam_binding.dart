import 'package:pulumi/pulumi.dart' as pulumi;
import 'iceberg_namespace_iam_binding_args.dart';
import 'iceberg_namespace_iam_binding_condition.dart';
import 'iceberg_namespace_iam_binding_state.dart';

/// Three different resources help you manage your IAM policy for Biglake IcebergNamespace. Each of these resources serves a different use case:
///
/// * `gcp.biglake.IcebergNamespaceIamPolicy`: Authoritative. Sets the IAM policy for the icebergnamespace and replaces any existing policy already attached.
/// * `gcp.biglake.IcebergNamespaceIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the icebergnamespace are preserved. Members added outside of Terraform for the same role will be detected as drift and removed on the next `pulumi up`.
/// * `gcp.biglake.IcebergNamespaceIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the icebergnamespace are preserved. Members added outside of Terraform will **not** be detected as drift.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.biglake.IcebergNamespaceIamPolicy`: Retrieves the IAM policy for the icebergnamespace
///
/// &gt; **Note:** `gcp.biglake.IcebergNamespaceIamPolicy` **cannot** be used in conjunction with `gcp.biglake.IcebergNamespaceIamBinding` and `gcp.biglake.IcebergNamespaceIamMember` or they will fight over what your policy should be.
///
/// &gt; **Note:** `gcp.biglake.IcebergNamespaceIamBinding` resources **can be** used in conjunction with `gcp.biglake.IcebergNamespaceIamMember` resources **only if** they do not grant privilege to the same role.
///
///
/// ## gcp.biglake.IcebergNamespaceIamPolicy
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
/// const policy = new gcp.biglake.IcebergNamespaceIamPolicy("policy", {
///     project: myIcebergNamespace.project,
///     catalog: myIcebergNamespace.catalog,
///     namespaceId: myIcebergNamespace.id,
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
/// policy = gcp.biglake.IcebergNamespaceIamPolicy("policy",
///     project=my_iceberg_namespace["project"],
///     catalog=my_iceberg_namespace["catalog"],
///     namespace_id=my_iceberg_namespace["id"],
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
///     var policy = new Gcp.BigLake.IcebergNamespaceIamPolicy("policy", new()
///     {
///         Project = myIcebergNamespace.Project,
///         Catalog = myIcebergNamespace.Catalog,
///         NamespaceId = myIcebergNamespace.Id,
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
/// 		_, err = biglake.NewIcebergNamespaceIamPolicy(ctx, "policy", &biglake.IcebergNamespaceIamPolicyArgs{
/// 			Project:     pulumi.Any(myIcebergNamespace.Project),
/// 			Catalog:     pulumi.Any(myIcebergNamespace.Catalog),
/// 			NamespaceId: pulumi.Any(myIcebergNamespace.Id),
/// 			PolicyData:  pulumi.String(admin.PolicyData),
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
/// resource "gcp_biglake_icebergnamespaceiampolicy" "policy" {
///   project      = myIcebergNamespace.project
///   catalog      = myIcebergNamespace.catalog
///   namespace_id = myIcebergNamespace.id
///   policy_data  = data.gcp_organizations_getiampolicy.admin.policy_data
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
/// import com.pulumi.gcp.biglake.IcebergNamespaceIamPolicy;
/// import com.pulumi.gcp.biglake.IcebergNamespaceIamPolicyArgs;
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
///         var policy = new IcebergNamespaceIamPolicy("policy", IcebergNamespaceIamPolicyArgs.builder()
///             .project(myIcebergNamespace.get("project"))
///             .catalog(myIcebergNamespace.get("catalog"))
///             .namespaceId(myIcebergNamespace.get("id"))
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:biglake:IcebergNamespaceIamPolicy
///     properties:
///       project: ${myIcebergNamespace.project}
///       catalog: ${myIcebergNamespace.catalog}
///       namespaceId: ${myIcebergNamespace.id}
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
/// ## gcp.biglake.IcebergNamespaceIamBinding
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.biglake.IcebergNamespaceIamBinding("binding", {
///     project: myIcebergNamespace.project,
///     catalog: myIcebergNamespace.catalog,
///     namespaceId: myIcebergNamespace.id,
///     role: "roles/biglake.editor",
///     members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.biglake.IcebergNamespaceIamBinding("binding",
///     project=my_iceberg_namespace["project"],
///     catalog=my_iceberg_namespace["catalog"],
///     namespace_id=my_iceberg_namespace["id"],
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
///     var binding = new Gcp.BigLake.IcebergNamespaceIamBinding("binding", new()
///     {
///         Project = myIcebergNamespace.Project,
///         Catalog = myIcebergNamespace.Catalog,
///         NamespaceId = myIcebergNamespace.Id,
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
/// 		_, err := biglake.NewIcebergNamespaceIamBinding(ctx, "binding", &biglake.IcebergNamespaceIamBindingArgs{
/// 			Project:     pulumi.Any(myIcebergNamespace.Project),
/// 			Catalog:     pulumi.Any(myIcebergNamespace.Catalog),
/// 			NamespaceId: pulumi.Any(myIcebergNamespace.Id),
/// 			Role:        pulumi.String("roles/biglake.editor"),
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
/// resource "gcp_biglake_icebergnamespaceiambinding" "binding" {
///   project      = myIcebergNamespace.project
///   catalog      = myIcebergNamespace.catalog
///   namespace_id = myIcebergNamespace.id
///   role         = "roles/biglake.editor"
///   members      = ["user:jane@example.com"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.biglake.IcebergNamespaceIamBinding;
/// import com.pulumi.gcp.biglake.IcebergNamespaceIamBindingArgs;
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
///         var binding = new IcebergNamespaceIamBinding("binding", IcebergNamespaceIamBindingArgs.builder()
///             .project(myIcebergNamespace.get("project"))
///             .catalog(myIcebergNamespace.get("catalog"))
///             .namespaceId(myIcebergNamespace.get("id"))
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
///     type: gcp:biglake:IcebergNamespaceIamBinding
///     properties:
///       project: ${myIcebergNamespace.project}
///       catalog: ${myIcebergNamespace.catalog}
///       namespaceId: ${myIcebergNamespace.id}
///       role: roles/biglake.editor
///       members:
///         - user:jane@example.com
/// ```
///
///
/// ## gcp.biglake.IcebergNamespaceIamMember
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.biglake.IcebergNamespaceIamMember("member", {
///     project: myIcebergNamespace.project,
///     catalog: myIcebergNamespace.catalog,
///     namespaceId: myIcebergNamespace.id,
///     role: "roles/biglake.editor",
///     member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.biglake.IcebergNamespaceIamMember("member",
///     project=my_iceberg_namespace["project"],
///     catalog=my_iceberg_namespace["catalog"],
///     namespace_id=my_iceberg_namespace["id"],
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
///     var member = new Gcp.BigLake.IcebergNamespaceIamMember("member", new()
///     {
///         Project = myIcebergNamespace.Project,
///         Catalog = myIcebergNamespace.Catalog,
///         NamespaceId = myIcebergNamespace.Id,
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
/// 		_, err := biglake.NewIcebergNamespaceIamMember(ctx, "member", &biglake.IcebergNamespaceIamMemberArgs{
/// 			Project:     pulumi.Any(myIcebergNamespace.Project),
/// 			Catalog:     pulumi.Any(myIcebergNamespace.Catalog),
/// 			NamespaceId: pulumi.Any(myIcebergNamespace.Id),
/// 			Role:        pulumi.String("roles/biglake.editor"),
/// 			Member:      pulumi.String("user:jane@example.com"),
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
/// resource "gcp_biglake_icebergnamespaceiammember" "member" {
///   project      = myIcebergNamespace.project
///   catalog      = myIcebergNamespace.catalog
///   namespace_id = myIcebergNamespace.id
///   role         = "roles/biglake.editor"
///   member       = "user:jane@example.com"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.biglake.IcebergNamespaceIamMember;
/// import com.pulumi.gcp.biglake.IcebergNamespaceIamMemberArgs;
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
///         var member = new IcebergNamespaceIamMember("member", IcebergNamespaceIamMemberArgs.builder()
///             .project(myIcebergNamespace.get("project"))
///             .catalog(myIcebergNamespace.get("catalog"))
///             .namespaceId(myIcebergNamespace.get("id"))
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
///     type: gcp:biglake:IcebergNamespaceIamMember
///     properties:
///       project: ${myIcebergNamespace.project}
///       catalog: ${myIcebergNamespace.catalog}
///       namespaceId: ${myIcebergNamespace.id}
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
/// # IAM policy for Biglake IcebergNamespace
///
/// Three different resources help you manage your IAM policy for Biglake IcebergNamespace. Each of these resources serves a different use case:
///
/// * `gcp.biglake.IcebergNamespaceIamPolicy`: Authoritative. Sets the IAM policy for the icebergnamespace and replaces any existing policy already attached.
/// * `gcp.biglake.IcebergNamespaceIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the icebergnamespace are preserved. Members added outside of Terraform for the same role will be detected as drift and removed on the next `pulumi up`.
/// * `gcp.biglake.IcebergNamespaceIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the icebergnamespace are preserved. Members added outside of Terraform will **not** be detected as drift.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.biglake.IcebergNamespaceIamPolicy`: Retrieves the IAM policy for the icebergnamespace
///
/// &gt; **Note:** `gcp.biglake.IcebergNamespaceIamPolicy` **cannot** be used in conjunction with `gcp.biglake.IcebergNamespaceIamBinding` and `gcp.biglake.IcebergNamespaceIamMember` or they will fight over what your policy should be.
///
/// &gt; **Note:** `gcp.biglake.IcebergNamespaceIamBinding` resources **can be** used in conjunction with `gcp.biglake.IcebergNamespaceIamMember` resources **only if** they do not grant privilege to the same role.
///
///
/// ## gcp.biglake.IcebergNamespaceIamPolicy
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
/// const policy = new gcp.biglake.IcebergNamespaceIamPolicy("policy", {
///     project: myIcebergNamespace.project,
///     catalog: myIcebergNamespace.catalog,
///     namespaceId: myIcebergNamespace.id,
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
/// policy = gcp.biglake.IcebergNamespaceIamPolicy("policy",
///     project=my_iceberg_namespace["project"],
///     catalog=my_iceberg_namespace["catalog"],
///     namespace_id=my_iceberg_namespace["id"],
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
///     var policy = new Gcp.BigLake.IcebergNamespaceIamPolicy("policy", new()
///     {
///         Project = myIcebergNamespace.Project,
///         Catalog = myIcebergNamespace.Catalog,
///         NamespaceId = myIcebergNamespace.Id,
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
/// 		_, err = biglake.NewIcebergNamespaceIamPolicy(ctx, "policy", &biglake.IcebergNamespaceIamPolicyArgs{
/// 			Project:     pulumi.Any(myIcebergNamespace.Project),
/// 			Catalog:     pulumi.Any(myIcebergNamespace.Catalog),
/// 			NamespaceId: pulumi.Any(myIcebergNamespace.Id),
/// 			PolicyData:  pulumi.String(admin.PolicyData),
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
/// resource "gcp_biglake_icebergnamespaceiampolicy" "policy" {
///   project      = myIcebergNamespace.project
///   catalog      = myIcebergNamespace.catalog
///   namespace_id = myIcebergNamespace.id
///   policy_data  = data.gcp_organizations_getiampolicy.admin.policy_data
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
/// import com.pulumi.gcp.biglake.IcebergNamespaceIamPolicy;
/// import com.pulumi.gcp.biglake.IcebergNamespaceIamPolicyArgs;
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
///         var policy = new IcebergNamespaceIamPolicy("policy", IcebergNamespaceIamPolicyArgs.builder()
///             .project(myIcebergNamespace.get("project"))
///             .catalog(myIcebergNamespace.get("catalog"))
///             .namespaceId(myIcebergNamespace.get("id"))
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:biglake:IcebergNamespaceIamPolicy
///     properties:
///       project: ${myIcebergNamespace.project}
///       catalog: ${myIcebergNamespace.catalog}
///       namespaceId: ${myIcebergNamespace.id}
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
/// ## gcp.biglake.IcebergNamespaceIamBinding
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.biglake.IcebergNamespaceIamBinding("binding", {
///     project: myIcebergNamespace.project,
///     catalog: myIcebergNamespace.catalog,
///     namespaceId: myIcebergNamespace.id,
///     role: "roles/biglake.editor",
///     members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.biglake.IcebergNamespaceIamBinding("binding",
///     project=my_iceberg_namespace["project"],
///     catalog=my_iceberg_namespace["catalog"],
///     namespace_id=my_iceberg_namespace["id"],
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
///     var binding = new Gcp.BigLake.IcebergNamespaceIamBinding("binding", new()
///     {
///         Project = myIcebergNamespace.Project,
///         Catalog = myIcebergNamespace.Catalog,
///         NamespaceId = myIcebergNamespace.Id,
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
/// 		_, err := biglake.NewIcebergNamespaceIamBinding(ctx, "binding", &biglake.IcebergNamespaceIamBindingArgs{
/// 			Project:     pulumi.Any(myIcebergNamespace.Project),
/// 			Catalog:     pulumi.Any(myIcebergNamespace.Catalog),
/// 			NamespaceId: pulumi.Any(myIcebergNamespace.Id),
/// 			Role:        pulumi.String("roles/biglake.editor"),
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
/// resource "gcp_biglake_icebergnamespaceiambinding" "binding" {
///   project      = myIcebergNamespace.project
///   catalog      = myIcebergNamespace.catalog
///   namespace_id = myIcebergNamespace.id
///   role         = "roles/biglake.editor"
///   members      = ["user:jane@example.com"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.biglake.IcebergNamespaceIamBinding;
/// import com.pulumi.gcp.biglake.IcebergNamespaceIamBindingArgs;
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
///         var binding = new IcebergNamespaceIamBinding("binding", IcebergNamespaceIamBindingArgs.builder()
///             .project(myIcebergNamespace.get("project"))
///             .catalog(myIcebergNamespace.get("catalog"))
///             .namespaceId(myIcebergNamespace.get("id"))
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
///     type: gcp:biglake:IcebergNamespaceIamBinding
///     properties:
///       project: ${myIcebergNamespace.project}
///       catalog: ${myIcebergNamespace.catalog}
///       namespaceId: ${myIcebergNamespace.id}
///       role: roles/biglake.editor
///       members:
///         - user:jane@example.com
/// ```
///
///
/// ## gcp.biglake.IcebergNamespaceIamMember
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.biglake.IcebergNamespaceIamMember("member", {
///     project: myIcebergNamespace.project,
///     catalog: myIcebergNamespace.catalog,
///     namespaceId: myIcebergNamespace.id,
///     role: "roles/biglake.editor",
///     member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.biglake.IcebergNamespaceIamMember("member",
///     project=my_iceberg_namespace["project"],
///     catalog=my_iceberg_namespace["catalog"],
///     namespace_id=my_iceberg_namespace["id"],
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
///     var member = new Gcp.BigLake.IcebergNamespaceIamMember("member", new()
///     {
///         Project = myIcebergNamespace.Project,
///         Catalog = myIcebergNamespace.Catalog,
///         NamespaceId = myIcebergNamespace.Id,
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
/// 		_, err := biglake.NewIcebergNamespaceIamMember(ctx, "member", &biglake.IcebergNamespaceIamMemberArgs{
/// 			Project:     pulumi.Any(myIcebergNamespace.Project),
/// 			Catalog:     pulumi.Any(myIcebergNamespace.Catalog),
/// 			NamespaceId: pulumi.Any(myIcebergNamespace.Id),
/// 			Role:        pulumi.String("roles/biglake.editor"),
/// 			Member:      pulumi.String("user:jane@example.com"),
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
/// resource "gcp_biglake_icebergnamespaceiammember" "member" {
///   project      = myIcebergNamespace.project
///   catalog      = myIcebergNamespace.catalog
///   namespace_id = myIcebergNamespace.id
///   role         = "roles/biglake.editor"
///   member       = "user:jane@example.com"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.biglake.IcebergNamespaceIamMember;
/// import com.pulumi.gcp.biglake.IcebergNamespaceIamMemberArgs;
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
///         var member = new IcebergNamespaceIamMember("member", IcebergNamespaceIamMemberArgs.builder()
///             .project(myIcebergNamespace.get("project"))
///             .catalog(myIcebergNamespace.get("catalog"))
///             .namespaceId(myIcebergNamespace.get("id"))
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
///     type: gcp:biglake:IcebergNamespaceIamMember
///     properties:
///       project: ${myIcebergNamespace.project}
///       catalog: ${myIcebergNamespace.catalog}
///       namespaceId: ${myIcebergNamespace.id}
///       role: roles/biglake.editor
///       member: user:jane@example.com
/// ```
///
///
/// ## Import
///
/// For all import syntaxes, the "resource in question" can take any of the following forms:
///
/// * projects/{{project}}/catalogs/{{catalog}}/namespaces/{{namespace_id}}
/// * {{project}}/{{catalog}}/{{namespace_id}}
/// * {{catalog}}/{{namespace_id}}
/// * {{namespace_id}}
///
/// Any variables not passed in the import command will be taken from the provider configuration.
///
/// Biglake icebergnamespace IAM resources can be imported using the resource identifiers, role, and member.
///
/// IAM member imports use space-delimited identifiers: the resource in question, the role, and the member identity, e.g.
/// ```sh
/// $ terraform import google_biglake_iceberg_namespace_iam_member.editor "projects/{{project}}/catalogs/{{catalog}}/namespaces/{{namespace_id}} roles/biglake.editor user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
/// ```sh
/// $ terraform import google_biglake_iceberg_namespace_iam_binding.editor "projects/{{project}}/catalogs/{{catalog}}/namespaces/{{namespace_id}} roles/biglake.editor"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
/// ```sh
/// $ pulumi import gcp:biglake/icebergNamespaceIamBinding:IcebergNamespaceIamBinding editor projects/{{project}}/catalogs/{{catalog}}/namespaces/{{namespace_id}}
/// ```
///
/// &gt; **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class IcebergNamespaceIamBinding extends pulumi.CustomResource {
  /// The name of the IcebergCatalog.
  /// Used to find the parent resource to bind the IAM policy to
  late final pulumi.Output<String> catalog;
  late final pulumi.Output<IcebergNamespaceIamBindingCondition?> condition;
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
  late final pulumi.Output<String> namespaceId;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  late final pulumi.Output<String> project;
  /// The role that should be applied. Only one
  /// `gcp.biglake.IcebergNamespaceIamBinding` can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  late final pulumi.Output<String> role;

  /// Creates a new [IcebergNamespaceIamBinding].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [IcebergNamespaceIamBinding]. {@macro pulumi_biglake_iceberg_namespace_iam_binding_iceberg_namespace_iam_binding_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  IcebergNamespaceIamBinding(
    String name, {
    IcebergNamespaceIamBindingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:biglake/icebergNamespaceIamBinding:IcebergNamespaceIamBinding',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    catalog = registerOutput<String>('catalog');
    condition = registerOutput<IcebergNamespaceIamBindingCondition?>('condition', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IcebergNamespaceIamBindingCondition.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    etag = registerOutput<String>('etag');
    members = registerOutput<List<String>>('members');
    namespaceId = registerOutput<String>('namespaceId');
    project = registerOutput<String>('project');
    role = registerOutput<String>('role');
  }

  /// Gets an existing [IcebergNamespaceIamBinding] resource's state with the given [name] and [id].
  static IcebergNamespaceIamBinding get(
    String name,
    pulumi.Input<String> id, {
    IcebergNamespaceIamBindingState? state,
  }) {
    return IcebergNamespaceIamBinding._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  IcebergNamespaceIamBinding._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:biglake/icebergNamespaceIamBinding:IcebergNamespaceIamBinding',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    catalog = registerOutput<String>('catalog');
    condition = registerOutput<IcebergNamespaceIamBindingCondition?>('condition', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IcebergNamespaceIamBindingCondition.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    etag = registerOutput<String>('etag');
    members = registerOutput<List<String>>('members');
    namespaceId = registerOutput<String>('namespaceId');
    project = registerOutput<String>('project');
    role = registerOutput<String>('role');
  }
}
