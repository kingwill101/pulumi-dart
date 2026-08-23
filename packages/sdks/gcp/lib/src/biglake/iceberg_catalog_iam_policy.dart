import 'package:pulumi/pulumi.dart' as pulumi;
import 'iceberg_catalog_iam_policy_args.dart';
import 'iceberg_catalog_iam_policy_state.dart';

/// Three different resources help you manage your IAM policy for Biglake IcebergCatalog. Each of these resources serves a different use case:
///
/// * `gcp.biglake.IcebergCatalogIamPolicy`: Authoritative. Sets the IAM policy for the icebergcatalog and replaces any existing policy already attached.
/// * `gcp.biglake.IcebergCatalogIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the icebergcatalog are preserved. Members added outside of Terraform for the same role will be detected as drift and removed on the next `pulumi up`.
/// * `gcp.biglake.IcebergCatalogIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the icebergcatalog are preserved. Members added outside of Terraform will **not** be detected as drift.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.biglake.IcebergCatalogIamPolicy`: Retrieves the IAM policy for the icebergcatalog
///
/// &gt; **Note:** `gcp.biglake.IcebergCatalogIamPolicy` **cannot** be used in conjunction with `gcp.biglake.IcebergCatalogIamBinding` and `gcp.biglake.IcebergCatalogIamMember` or they will fight over what your policy should be.
///
/// &gt; **Note:** `gcp.biglake.IcebergCatalogIamBinding` resources **can be** used in conjunction with `gcp.biglake.IcebergCatalogIamMember` resources **only if** they do not grant privilege to the same role.
///
///
/// ## gcp.biglake.IcebergCatalogIamPolicy
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
/// const policy = new gcp.biglake.IcebergCatalogIamPolicy("policy", {
///     project: myIcebergCatalog.project,
///     name: myIcebergCatalog.name,
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
/// policy = gcp.biglake.IcebergCatalogIamPolicy("policy",
///     project=my_iceberg_catalog["project"],
///     name=my_iceberg_catalog["name"],
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
///     var policy = new Gcp.BigLake.IcebergCatalogIamPolicy("policy", new()
///     {
///         Project = myIcebergCatalog.Project,
///         Name = myIcebergCatalog.Name,
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
/// 		_, err = biglake.NewIcebergCatalogIamPolicy(ctx, "policy", &biglake.IcebergCatalogIamPolicyArgs{
/// 			Project:    pulumi.Any(myIcebergCatalog.Project),
/// 			Name:       pulumi.Any(myIcebergCatalog.Name),
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
/// resource "gcp_biglake_icebergcatalogiampolicy" "policy" {
///   project     = myIcebergCatalog.project
///   name        = myIcebergCatalog.name
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
/// import com.pulumi.gcp.biglake.IcebergCatalogIamPolicy;
/// import com.pulumi.gcp.biglake.IcebergCatalogIamPolicyArgs;
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
///         var policy = new IcebergCatalogIamPolicy("policy", IcebergCatalogIamPolicyArgs.builder()
///             .project(myIcebergCatalog.get("project"))
///             .name(myIcebergCatalog.get("name"))
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:biglake:IcebergCatalogIamPolicy
///     properties:
///       project: ${myIcebergCatalog.project}
///       name: ${myIcebergCatalog.name}
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
/// ## gcp.biglake.IcebergCatalogIamBinding
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.biglake.IcebergCatalogIamBinding("binding", {
///     project: myIcebergCatalog.project,
///     name: myIcebergCatalog.name,
///     role: "roles/biglake.editor",
///     members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.biglake.IcebergCatalogIamBinding("binding",
///     project=my_iceberg_catalog["project"],
///     name=my_iceberg_catalog["name"],
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
///     var binding = new Gcp.BigLake.IcebergCatalogIamBinding("binding", new()
///     {
///         Project = myIcebergCatalog.Project,
///         Name = myIcebergCatalog.Name,
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
/// 		_, err := biglake.NewIcebergCatalogIamBinding(ctx, "binding", &biglake.IcebergCatalogIamBindingArgs{
/// 			Project: pulumi.Any(myIcebergCatalog.Project),
/// 			Name:    pulumi.Any(myIcebergCatalog.Name),
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
/// resource "gcp_biglake_icebergcatalogiambinding" "binding" {
///   project = myIcebergCatalog.project
///   name    = myIcebergCatalog.name
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
/// import com.pulumi.gcp.biglake.IcebergCatalogIamBinding;
/// import com.pulumi.gcp.biglake.IcebergCatalogIamBindingArgs;
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
///         var binding = new IcebergCatalogIamBinding("binding", IcebergCatalogIamBindingArgs.builder()
///             .project(myIcebergCatalog.get("project"))
///             .name(myIcebergCatalog.get("name"))
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
///     type: gcp:biglake:IcebergCatalogIamBinding
///     properties:
///       project: ${myIcebergCatalog.project}
///       name: ${myIcebergCatalog.name}
///       role: roles/biglake.editor
///       members:
///         - user:jane@example.com
/// ```
///
///
/// ## gcp.biglake.IcebergCatalogIamMember
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.biglake.IcebergCatalogIamMember("member", {
///     project: myIcebergCatalog.project,
///     name: myIcebergCatalog.name,
///     role: "roles/biglake.editor",
///     member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.biglake.IcebergCatalogIamMember("member",
///     project=my_iceberg_catalog["project"],
///     name=my_iceberg_catalog["name"],
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
///     var member = new Gcp.BigLake.IcebergCatalogIamMember("member", new()
///     {
///         Project = myIcebergCatalog.Project,
///         Name = myIcebergCatalog.Name,
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
/// 		_, err := biglake.NewIcebergCatalogIamMember(ctx, "member", &biglake.IcebergCatalogIamMemberArgs{
/// 			Project: pulumi.Any(myIcebergCatalog.Project),
/// 			Name:    pulumi.Any(myIcebergCatalog.Name),
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
/// resource "gcp_biglake_icebergcatalogiammember" "member" {
///   project = myIcebergCatalog.project
///   name    = myIcebergCatalog.name
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
/// import com.pulumi.gcp.biglake.IcebergCatalogIamMember;
/// import com.pulumi.gcp.biglake.IcebergCatalogIamMemberArgs;
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
///         var member = new IcebergCatalogIamMember("member", IcebergCatalogIamMemberArgs.builder()
///             .project(myIcebergCatalog.get("project"))
///             .name(myIcebergCatalog.get("name"))
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
///     type: gcp:biglake:IcebergCatalogIamMember
///     properties:
///       project: ${myIcebergCatalog.project}
///       name: ${myIcebergCatalog.name}
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
/// # IAM policy for Biglake IcebergCatalog
///
/// Three different resources help you manage your IAM policy for Biglake IcebergCatalog. Each of these resources serves a different use case:
///
/// * `gcp.biglake.IcebergCatalogIamPolicy`: Authoritative. Sets the IAM policy for the icebergcatalog and replaces any existing policy already attached.
/// * `gcp.biglake.IcebergCatalogIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the icebergcatalog are preserved. Members added outside of Terraform for the same role will be detected as drift and removed on the next `pulumi up`.
/// * `gcp.biglake.IcebergCatalogIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the icebergcatalog are preserved. Members added outside of Terraform will **not** be detected as drift.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.biglake.IcebergCatalogIamPolicy`: Retrieves the IAM policy for the icebergcatalog
///
/// &gt; **Note:** `gcp.biglake.IcebergCatalogIamPolicy` **cannot** be used in conjunction with `gcp.biglake.IcebergCatalogIamBinding` and `gcp.biglake.IcebergCatalogIamMember` or they will fight over what your policy should be.
///
/// &gt; **Note:** `gcp.biglake.IcebergCatalogIamBinding` resources **can be** used in conjunction with `gcp.biglake.IcebergCatalogIamMember` resources **only if** they do not grant privilege to the same role.
///
///
/// ## gcp.biglake.IcebergCatalogIamPolicy
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
/// const policy = new gcp.biglake.IcebergCatalogIamPolicy("policy", {
///     project: myIcebergCatalog.project,
///     name: myIcebergCatalog.name,
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
/// policy = gcp.biglake.IcebergCatalogIamPolicy("policy",
///     project=my_iceberg_catalog["project"],
///     name=my_iceberg_catalog["name"],
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
///     var policy = new Gcp.BigLake.IcebergCatalogIamPolicy("policy", new()
///     {
///         Project = myIcebergCatalog.Project,
///         Name = myIcebergCatalog.Name,
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
/// 		_, err = biglake.NewIcebergCatalogIamPolicy(ctx, "policy", &biglake.IcebergCatalogIamPolicyArgs{
/// 			Project:    pulumi.Any(myIcebergCatalog.Project),
/// 			Name:       pulumi.Any(myIcebergCatalog.Name),
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
/// resource "gcp_biglake_icebergcatalogiampolicy" "policy" {
///   project     = myIcebergCatalog.project
///   name        = myIcebergCatalog.name
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
/// import com.pulumi.gcp.biglake.IcebergCatalogIamPolicy;
/// import com.pulumi.gcp.biglake.IcebergCatalogIamPolicyArgs;
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
///         var policy = new IcebergCatalogIamPolicy("policy", IcebergCatalogIamPolicyArgs.builder()
///             .project(myIcebergCatalog.get("project"))
///             .name(myIcebergCatalog.get("name"))
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:biglake:IcebergCatalogIamPolicy
///     properties:
///       project: ${myIcebergCatalog.project}
///       name: ${myIcebergCatalog.name}
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
/// ## gcp.biglake.IcebergCatalogIamBinding
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.biglake.IcebergCatalogIamBinding("binding", {
///     project: myIcebergCatalog.project,
///     name: myIcebergCatalog.name,
///     role: "roles/biglake.editor",
///     members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.biglake.IcebergCatalogIamBinding("binding",
///     project=my_iceberg_catalog["project"],
///     name=my_iceberg_catalog["name"],
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
///     var binding = new Gcp.BigLake.IcebergCatalogIamBinding("binding", new()
///     {
///         Project = myIcebergCatalog.Project,
///         Name = myIcebergCatalog.Name,
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
/// 		_, err := biglake.NewIcebergCatalogIamBinding(ctx, "binding", &biglake.IcebergCatalogIamBindingArgs{
/// 			Project: pulumi.Any(myIcebergCatalog.Project),
/// 			Name:    pulumi.Any(myIcebergCatalog.Name),
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
/// resource "gcp_biglake_icebergcatalogiambinding" "binding" {
///   project = myIcebergCatalog.project
///   name    = myIcebergCatalog.name
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
/// import com.pulumi.gcp.biglake.IcebergCatalogIamBinding;
/// import com.pulumi.gcp.biglake.IcebergCatalogIamBindingArgs;
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
///         var binding = new IcebergCatalogIamBinding("binding", IcebergCatalogIamBindingArgs.builder()
///             .project(myIcebergCatalog.get("project"))
///             .name(myIcebergCatalog.get("name"))
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
///     type: gcp:biglake:IcebergCatalogIamBinding
///     properties:
///       project: ${myIcebergCatalog.project}
///       name: ${myIcebergCatalog.name}
///       role: roles/biglake.editor
///       members:
///         - user:jane@example.com
/// ```
///
///
/// ## gcp.biglake.IcebergCatalogIamMember
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.biglake.IcebergCatalogIamMember("member", {
///     project: myIcebergCatalog.project,
///     name: myIcebergCatalog.name,
///     role: "roles/biglake.editor",
///     member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.biglake.IcebergCatalogIamMember("member",
///     project=my_iceberg_catalog["project"],
///     name=my_iceberg_catalog["name"],
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
///     var member = new Gcp.BigLake.IcebergCatalogIamMember("member", new()
///     {
///         Project = myIcebergCatalog.Project,
///         Name = myIcebergCatalog.Name,
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
/// 		_, err := biglake.NewIcebergCatalogIamMember(ctx, "member", &biglake.IcebergCatalogIamMemberArgs{
/// 			Project: pulumi.Any(myIcebergCatalog.Project),
/// 			Name:    pulumi.Any(myIcebergCatalog.Name),
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
/// resource "gcp_biglake_icebergcatalogiammember" "member" {
///   project = myIcebergCatalog.project
///   name    = myIcebergCatalog.name
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
/// import com.pulumi.gcp.biglake.IcebergCatalogIamMember;
/// import com.pulumi.gcp.biglake.IcebergCatalogIamMemberArgs;
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
///         var member = new IcebergCatalogIamMember("member", IcebergCatalogIamMemberArgs.builder()
///             .project(myIcebergCatalog.get("project"))
///             .name(myIcebergCatalog.get("name"))
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
///     type: gcp:biglake:IcebergCatalogIamMember
///     properties:
///       project: ${myIcebergCatalog.project}
///       name: ${myIcebergCatalog.name}
///       role: roles/biglake.editor
///       member: user:jane@example.com
/// ```
///
///
/// ## Import
///
/// For all import syntaxes, the "resource in question" can take any of the following forms:
///
/// * projects/{{project}}/catalogs/{{name}}
/// * {{project}}/{{name}}
/// * {{name}}
///
/// Any variables not passed in the import command will be taken from the provider configuration.
///
/// Biglake icebergcatalog IAM resources can be imported using the resource identifiers, role, and member.
///
/// IAM member imports use space-delimited identifiers: the resource in question, the role, and the member identity, e.g.
/// ```sh
/// $ terraform import google_biglake_iceberg_catalog_iam_member.editor "projects/{{project}}/catalogs/{{iceberg_catalog}} roles/biglake.editor user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
/// ```sh
/// $ terraform import google_biglake_iceberg_catalog_iam_binding.editor "projects/{{project}}/catalogs/{{iceberg_catalog}} roles/biglake.editor"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
/// ```sh
/// $ pulumi import gcp:biglake/icebergCatalogIamPolicy:IcebergCatalogIamPolicy editor projects/{{project}}/catalogs/{{iceberg_catalog}}
/// ```
///
/// &gt; **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class IcebergCatalogIamPolicy extends pulumi.CustomResource {
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

  /// Creates a new [IcebergCatalogIamPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [IcebergCatalogIamPolicy]. {@macro pulumi_biglake_iceberg_catalog_iam_policy_iceberg_catalog_iam_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  IcebergCatalogIamPolicy(
    String name, {
    IcebergCatalogIamPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:biglake/icebergCatalogIamPolicy:IcebergCatalogIamPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    etag = registerOutput<String>('etag');
    this.name = registerOutput<String>('name');
    policyData = registerOutput<String>('policyData');
    project = registerOutput<String>('project');
  }

  /// Gets an existing [IcebergCatalogIamPolicy] resource's state with the given [name] and [id].
  static IcebergCatalogIamPolicy get(
    String name,
    pulumi.Input<String> id, {
    IcebergCatalogIamPolicyState? state,
  }) {
    return IcebergCatalogIamPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  IcebergCatalogIamPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:biglake/icebergCatalogIamPolicy:IcebergCatalogIamPolicy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    etag = registerOutput<String>('etag');
    this.name = registerOutput<String>('name');
    policyData = registerOutput<String>('policyData');
    project = registerOutput<String>('project');
  }
}
