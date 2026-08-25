import 'package:pulumi/pulumi.dart' as pulumi;
import 'entry_type_iam_policy_args.dart';
import 'entry_type_iam_policy_state.dart';

/// Three different resources help you manage your IAM policy for Dataplex EntryType. Each of these resources serves a different use case:
///
/// * `gcp.dataplex.EntryTypeIamPolicy`: Authoritative. Sets the IAM policy for the entrytype and replaces any existing policy already attached.
/// * `gcp.dataplex.EntryTypeIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the entrytype are preserved. Members added outside of Terraform for the same role will be detected as drift and removed on the next `pulumi up`.
/// * `gcp.dataplex.EntryTypeIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the entrytype are preserved. Members added outside of Terraform will **not** be detected as drift.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.dataplex.EntryTypeIamPolicy`: Retrieves the IAM policy for the entrytype
///
/// &gt; **Note:** `gcp.dataplex.EntryTypeIamPolicy` **cannot** be used in conjunction with `gcp.dataplex.EntryTypeIamBinding` and `gcp.dataplex.EntryTypeIamMember` or they will fight over what your policy should be.
///
/// &gt; **Note:** `gcp.dataplex.EntryTypeIamBinding` resources **can be** used in conjunction with `gcp.dataplex.EntryTypeIamMember` resources **only if** they do not grant privilege to the same role.
///
///
/// ## gcp.dataplex.EntryTypeIamPolicy
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const admin = gcp.organizations.getIAMPolicy({
///     bindings: [{
///         role: "roles/viewer",
///         members: ["user:jane@example.com"],
///     }],
/// });
/// const policy = new gcp.dataplex.EntryTypeIamPolicy("policy", {
///     project: testEntryTypeBasic.project,
///     location: testEntryTypeBasic.location,
///     entryTypeId: testEntryTypeBasic.entryTypeId,
///     policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
///     "role": "roles/viewer",
///     "members": ["user:jane@example.com"],
/// }])
/// policy = gcp.dataplex.EntryTypeIamPolicy("policy",
///     project=test_entry_type_basic["project"],
///     location=test_entry_type_basic["location"],
///     entry_type_id=test_entry_type_basic["entryTypeId"],
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
///                 Role = "roles/viewer",
///                 Members = new[]
///                 {
///                     "user:jane@example.com",
///                 },
///             },
///         },
///     });
///
///     var policy = new Gcp.DataPlex.EntryTypeIamPolicy("policy", new()
///     {
///         Project = testEntryTypeBasic.Project,
///         Location = testEntryTypeBasic.Location,
///         EntryTypeId = testEntryTypeBasic.EntryTypeId,
///         PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataplex"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		admin, err := organizations.LookupIAMPolicy(ctx, &organizations.LookupIAMPolicyArgs{
/// 			Bindings: []organizations.GetIAMPolicyBinding{
/// 				{
/// 					Role: "roles/viewer",
/// 					Members: []string{
/// 						"user:jane@example.com",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = dataplex.NewEntryTypeIamPolicy(ctx, "policy", &dataplex.EntryTypeIamPolicyArgs{
/// 			Project:     pulumi.Any(testEntryTypeBasic.Project),
/// 			Location:    pulumi.Any(testEntryTypeBasic.Location),
/// 			EntryTypeId: pulumi.Any(testEntryTypeBasic.EntryTypeId),
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
///     role    = "roles/viewer"
///     members = ["user:jane@example.com"]
///   }
/// }
///
/// resource "gcp_dataplex_entrytypeiampolicy" "policy" {
///   project       = testEntryTypeBasic.project
///   location      = testEntryTypeBasic.location
///   entry_type_id = testEntryTypeBasic.entryTypeId
///   policy_data   = data.gcp_organizations_getiampolicy.admin.policy_data
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
/// import com.pulumi.gcp.dataplex.EntryTypeIamPolicy;
/// import com.pulumi.gcp.dataplex.EntryTypeIamPolicyArgs;
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
///                 .role("roles/viewer")
///                 .members("user:jane@example.com")
///                 .build())
///             .build());
///
///         var policy = new EntryTypeIamPolicy("policy", EntryTypeIamPolicyArgs.builder()
///             .project(testEntryTypeBasic.get("project"))
///             .location(testEntryTypeBasic.get("location"))
///             .entryTypeId(testEntryTypeBasic.get("entryTypeId"))
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:dataplex:EntryTypeIamPolicy
///     properties:
///       project: ${testEntryTypeBasic.project}
///       location: ${testEntryTypeBasic.location}
///       entryTypeId: ${testEntryTypeBasic.entryTypeId}
///       policyData: ${admin.policyData}
/// variables:
///   admin:
///     fn::invoke:
///       function: gcp:organizations:getIAMPolicy
///       arguments:
///         bindings:
///           - role: roles/viewer
///             members:
///               - user:jane@example.com
/// ```
///
///
/// ## gcp.dataplex.EntryTypeIamBinding
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.dataplex.EntryTypeIamBinding("binding", {
///     project: testEntryTypeBasic.project,
///     location: testEntryTypeBasic.location,
///     entryTypeId: testEntryTypeBasic.entryTypeId,
///     role: "roles/viewer",
///     members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.dataplex.EntryTypeIamBinding("binding",
///     project=test_entry_type_basic["project"],
///     location=test_entry_type_basic["location"],
///     entry_type_id=test_entry_type_basic["entryTypeId"],
///     role="roles/viewer",
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
///     var binding = new Gcp.DataPlex.EntryTypeIamBinding("binding", new()
///     {
///         Project = testEntryTypeBasic.Project,
///         Location = testEntryTypeBasic.Location,
///         EntryTypeId = testEntryTypeBasic.EntryTypeId,
///         Role = "roles/viewer",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataplex"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dataplex.NewEntryTypeIamBinding(ctx, "binding", &dataplex.EntryTypeIamBindingArgs{
/// 			Project:     pulumi.Any(testEntryTypeBasic.Project),
/// 			Location:    pulumi.Any(testEntryTypeBasic.Location),
/// 			EntryTypeId: pulumi.Any(testEntryTypeBasic.EntryTypeId),
/// 			Role:        pulumi.String("roles/viewer"),
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
/// resource "gcp_dataplex_entrytypeiambinding" "binding" {
///   project       = testEntryTypeBasic.project
///   location      = testEntryTypeBasic.location
///   entry_type_id = testEntryTypeBasic.entryTypeId
///   role          = "roles/viewer"
///   members       = ["user:jane@example.com"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.dataplex.EntryTypeIamBinding;
/// import com.pulumi.gcp.dataplex.EntryTypeIamBindingArgs;
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
///         var binding = new EntryTypeIamBinding("binding", EntryTypeIamBindingArgs.builder()
///             .project(testEntryTypeBasic.get("project"))
///             .location(testEntryTypeBasic.get("location"))
///             .entryTypeId(testEntryTypeBasic.get("entryTypeId"))
///             .role("roles/viewer")
///             .members("user:jane@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   binding:
///     type: gcp:dataplex:EntryTypeIamBinding
///     properties:
///       project: ${testEntryTypeBasic.project}
///       location: ${testEntryTypeBasic.location}
///       entryTypeId: ${testEntryTypeBasic.entryTypeId}
///       role: roles/viewer
///       members:
///         - user:jane@example.com
/// ```
///
///
/// ## gcp.dataplex.EntryTypeIamMember
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.dataplex.EntryTypeIamMember("member", {
///     project: testEntryTypeBasic.project,
///     location: testEntryTypeBasic.location,
///     entryTypeId: testEntryTypeBasic.entryTypeId,
///     role: "roles/viewer",
///     member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.dataplex.EntryTypeIamMember("member",
///     project=test_entry_type_basic["project"],
///     location=test_entry_type_basic["location"],
///     entry_type_id=test_entry_type_basic["entryTypeId"],
///     role="roles/viewer",
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
///     var member = new Gcp.DataPlex.EntryTypeIamMember("member", new()
///     {
///         Project = testEntryTypeBasic.Project,
///         Location = testEntryTypeBasic.Location,
///         EntryTypeId = testEntryTypeBasic.EntryTypeId,
///         Role = "roles/viewer",
///         Member = "user:jane@example.com",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataplex"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dataplex.NewEntryTypeIamMember(ctx, "member", &dataplex.EntryTypeIamMemberArgs{
/// 			Project:     pulumi.Any(testEntryTypeBasic.Project),
/// 			Location:    pulumi.Any(testEntryTypeBasic.Location),
/// 			EntryTypeId: pulumi.Any(testEntryTypeBasic.EntryTypeId),
/// 			Role:        pulumi.String("roles/viewer"),
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
/// resource "gcp_dataplex_entrytypeiammember" "member" {
///   project       = testEntryTypeBasic.project
///   location      = testEntryTypeBasic.location
///   entry_type_id = testEntryTypeBasic.entryTypeId
///   role          = "roles/viewer"
///   member        = "user:jane@example.com"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.dataplex.EntryTypeIamMember;
/// import com.pulumi.gcp.dataplex.EntryTypeIamMemberArgs;
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
///         var member = new EntryTypeIamMember("member", EntryTypeIamMemberArgs.builder()
///             .project(testEntryTypeBasic.get("project"))
///             .location(testEntryTypeBasic.get("location"))
///             .entryTypeId(testEntryTypeBasic.get("entryTypeId"))
///             .role("roles/viewer")
///             .member("user:jane@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   member:
///     type: gcp:dataplex:EntryTypeIamMember
///     properties:
///       project: ${testEntryTypeBasic.project}
///       location: ${testEntryTypeBasic.location}
///       entryTypeId: ${testEntryTypeBasic.entryTypeId}
///       role: roles/viewer
///       member: user:jane@example.com
/// ```
///
///
///
/// ## This resource supports User Project Overrides.
///
/// -
///
/// # IAM policy for Dataplex EntryType
///
/// Three different resources help you manage your IAM policy for Dataplex EntryType. Each of these resources serves a different use case:
///
/// * `gcp.dataplex.EntryTypeIamPolicy`: Authoritative. Sets the IAM policy for the entrytype and replaces any existing policy already attached.
/// * `gcp.dataplex.EntryTypeIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the entrytype are preserved. Members added outside of Terraform for the same role will be detected as drift and removed on the next `pulumi up`.
/// * `gcp.dataplex.EntryTypeIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the entrytype are preserved. Members added outside of Terraform will **not** be detected as drift.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.dataplex.EntryTypeIamPolicy`: Retrieves the IAM policy for the entrytype
///
/// &gt; **Note:** `gcp.dataplex.EntryTypeIamPolicy` **cannot** be used in conjunction with `gcp.dataplex.EntryTypeIamBinding` and `gcp.dataplex.EntryTypeIamMember` or they will fight over what your policy should be.
///
/// &gt; **Note:** `gcp.dataplex.EntryTypeIamBinding` resources **can be** used in conjunction with `gcp.dataplex.EntryTypeIamMember` resources **only if** they do not grant privilege to the same role.
///
///
/// ## gcp.dataplex.EntryTypeIamPolicy
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const admin = gcp.organizations.getIAMPolicy({
///     bindings: [{
///         role: "roles/viewer",
///         members: ["user:jane@example.com"],
///     }],
/// });
/// const policy = new gcp.dataplex.EntryTypeIamPolicy("policy", {
///     project: testEntryTypeBasic.project,
///     location: testEntryTypeBasic.location,
///     entryTypeId: testEntryTypeBasic.entryTypeId,
///     policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
///     "role": "roles/viewer",
///     "members": ["user:jane@example.com"],
/// }])
/// policy = gcp.dataplex.EntryTypeIamPolicy("policy",
///     project=test_entry_type_basic["project"],
///     location=test_entry_type_basic["location"],
///     entry_type_id=test_entry_type_basic["entryTypeId"],
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
///                 Role = "roles/viewer",
///                 Members = new[]
///                 {
///                     "user:jane@example.com",
///                 },
///             },
///         },
///     });
///
///     var policy = new Gcp.DataPlex.EntryTypeIamPolicy("policy", new()
///     {
///         Project = testEntryTypeBasic.Project,
///         Location = testEntryTypeBasic.Location,
///         EntryTypeId = testEntryTypeBasic.EntryTypeId,
///         PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataplex"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		admin, err := organizations.LookupIAMPolicy(ctx, &organizations.LookupIAMPolicyArgs{
/// 			Bindings: []organizations.GetIAMPolicyBinding{
/// 				{
/// 					Role: "roles/viewer",
/// 					Members: []string{
/// 						"user:jane@example.com",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = dataplex.NewEntryTypeIamPolicy(ctx, "policy", &dataplex.EntryTypeIamPolicyArgs{
/// 			Project:     pulumi.Any(testEntryTypeBasic.Project),
/// 			Location:    pulumi.Any(testEntryTypeBasic.Location),
/// 			EntryTypeId: pulumi.Any(testEntryTypeBasic.EntryTypeId),
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
///     role    = "roles/viewer"
///     members = ["user:jane@example.com"]
///   }
/// }
///
/// resource "gcp_dataplex_entrytypeiampolicy" "policy" {
///   project       = testEntryTypeBasic.project
///   location      = testEntryTypeBasic.location
///   entry_type_id = testEntryTypeBasic.entryTypeId
///   policy_data   = data.gcp_organizations_getiampolicy.admin.policy_data
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
/// import com.pulumi.gcp.dataplex.EntryTypeIamPolicy;
/// import com.pulumi.gcp.dataplex.EntryTypeIamPolicyArgs;
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
///                 .role("roles/viewer")
///                 .members("user:jane@example.com")
///                 .build())
///             .build());
///
///         var policy = new EntryTypeIamPolicy("policy", EntryTypeIamPolicyArgs.builder()
///             .project(testEntryTypeBasic.get("project"))
///             .location(testEntryTypeBasic.get("location"))
///             .entryTypeId(testEntryTypeBasic.get("entryTypeId"))
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:dataplex:EntryTypeIamPolicy
///     properties:
///       project: ${testEntryTypeBasic.project}
///       location: ${testEntryTypeBasic.location}
///       entryTypeId: ${testEntryTypeBasic.entryTypeId}
///       policyData: ${admin.policyData}
/// variables:
///   admin:
///     fn::invoke:
///       function: gcp:organizations:getIAMPolicy
///       arguments:
///         bindings:
///           - role: roles/viewer
///             members:
///               - user:jane@example.com
/// ```
///
///
/// ## gcp.dataplex.EntryTypeIamBinding
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.dataplex.EntryTypeIamBinding("binding", {
///     project: testEntryTypeBasic.project,
///     location: testEntryTypeBasic.location,
///     entryTypeId: testEntryTypeBasic.entryTypeId,
///     role: "roles/viewer",
///     members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.dataplex.EntryTypeIamBinding("binding",
///     project=test_entry_type_basic["project"],
///     location=test_entry_type_basic["location"],
///     entry_type_id=test_entry_type_basic["entryTypeId"],
///     role="roles/viewer",
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
///     var binding = new Gcp.DataPlex.EntryTypeIamBinding("binding", new()
///     {
///         Project = testEntryTypeBasic.Project,
///         Location = testEntryTypeBasic.Location,
///         EntryTypeId = testEntryTypeBasic.EntryTypeId,
///         Role = "roles/viewer",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataplex"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dataplex.NewEntryTypeIamBinding(ctx, "binding", &dataplex.EntryTypeIamBindingArgs{
/// 			Project:     pulumi.Any(testEntryTypeBasic.Project),
/// 			Location:    pulumi.Any(testEntryTypeBasic.Location),
/// 			EntryTypeId: pulumi.Any(testEntryTypeBasic.EntryTypeId),
/// 			Role:        pulumi.String("roles/viewer"),
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
/// resource "gcp_dataplex_entrytypeiambinding" "binding" {
///   project       = testEntryTypeBasic.project
///   location      = testEntryTypeBasic.location
///   entry_type_id = testEntryTypeBasic.entryTypeId
///   role          = "roles/viewer"
///   members       = ["user:jane@example.com"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.dataplex.EntryTypeIamBinding;
/// import com.pulumi.gcp.dataplex.EntryTypeIamBindingArgs;
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
///         var binding = new EntryTypeIamBinding("binding", EntryTypeIamBindingArgs.builder()
///             .project(testEntryTypeBasic.get("project"))
///             .location(testEntryTypeBasic.get("location"))
///             .entryTypeId(testEntryTypeBasic.get("entryTypeId"))
///             .role("roles/viewer")
///             .members("user:jane@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   binding:
///     type: gcp:dataplex:EntryTypeIamBinding
///     properties:
///       project: ${testEntryTypeBasic.project}
///       location: ${testEntryTypeBasic.location}
///       entryTypeId: ${testEntryTypeBasic.entryTypeId}
///       role: roles/viewer
///       members:
///         - user:jane@example.com
/// ```
///
///
/// ## gcp.dataplex.EntryTypeIamMember
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.dataplex.EntryTypeIamMember("member", {
///     project: testEntryTypeBasic.project,
///     location: testEntryTypeBasic.location,
///     entryTypeId: testEntryTypeBasic.entryTypeId,
///     role: "roles/viewer",
///     member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.dataplex.EntryTypeIamMember("member",
///     project=test_entry_type_basic["project"],
///     location=test_entry_type_basic["location"],
///     entry_type_id=test_entry_type_basic["entryTypeId"],
///     role="roles/viewer",
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
///     var member = new Gcp.DataPlex.EntryTypeIamMember("member", new()
///     {
///         Project = testEntryTypeBasic.Project,
///         Location = testEntryTypeBasic.Location,
///         EntryTypeId = testEntryTypeBasic.EntryTypeId,
///         Role = "roles/viewer",
///         Member = "user:jane@example.com",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataplex"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dataplex.NewEntryTypeIamMember(ctx, "member", &dataplex.EntryTypeIamMemberArgs{
/// 			Project:     pulumi.Any(testEntryTypeBasic.Project),
/// 			Location:    pulumi.Any(testEntryTypeBasic.Location),
/// 			EntryTypeId: pulumi.Any(testEntryTypeBasic.EntryTypeId),
/// 			Role:        pulumi.String("roles/viewer"),
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
/// resource "gcp_dataplex_entrytypeiammember" "member" {
///   project       = testEntryTypeBasic.project
///   location      = testEntryTypeBasic.location
///   entry_type_id = testEntryTypeBasic.entryTypeId
///   role          = "roles/viewer"
///   member        = "user:jane@example.com"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.dataplex.EntryTypeIamMember;
/// import com.pulumi.gcp.dataplex.EntryTypeIamMemberArgs;
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
///         var member = new EntryTypeIamMember("member", EntryTypeIamMemberArgs.builder()
///             .project(testEntryTypeBasic.get("project"))
///             .location(testEntryTypeBasic.get("location"))
///             .entryTypeId(testEntryTypeBasic.get("entryTypeId"))
///             .role("roles/viewer")
///             .member("user:jane@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   member:
///     type: gcp:dataplex:EntryTypeIamMember
///     properties:
///       project: ${testEntryTypeBasic.project}
///       location: ${testEntryTypeBasic.location}
///       entryTypeId: ${testEntryTypeBasic.entryTypeId}
///       role: roles/viewer
///       member: user:jane@example.com
/// ```
///
///
/// ## Import
///
/// For all import syntaxes, the "resource in question" can take any of the following forms:
///
/// * projects/{{project}}/locations/{{location}}/entryTypes/{{entry_type_id}}
/// * {{project}}/{{location}}/{{entry_type_id}}
/// * {{location}}/{{entry_type_id}}
/// * {{entry_type_id}}
///
/// Any variables not passed in the import command will be taken from the provider configuration.
///
/// Dataplex entrytype IAM resources can be imported using the resource identifiers, role, and member.
///
/// IAM member imports use space-delimited identifiers: the resource in question, the role, and the member identity, e.g.
/// ```sh
/// $ terraform import google_dataplex_entry_type_iam_member.editor "projects/{{project}}/locations/{{location}}/entryTypes/{{entry_type_id}} roles/viewer user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
/// ```sh
/// $ terraform import google_dataplex_entry_type_iam_binding.editor "projects/{{project}}/locations/{{location}}/entryTypes/{{entry_type_id}} roles/viewer"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
/// ```sh
/// $ pulumi import gcp:dataplex/entryTypeIamPolicy:EntryTypeIamPolicy editor projects/{{project}}/locations/{{location}}/entryTypes/{{entry_type_id}}
/// ```
///
/// &gt; **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class EntryTypeIamPolicy extends pulumi.CustomResource {
  /// Used to find the parent resource to bind the IAM policy to
  late final pulumi.Output<String> entryTypeId;
  /// (Computed) The etag of the IAM policy.
  late final pulumi.Output<String> etag;
  /// The location where entry type will be created in.
  /// Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no location is provided in the parent identifier and no
  /// location is specified, it is taken from the provider configuration.
  late final pulumi.Output<String> location;
  /// The policy data generated by
  /// a `gcp.organizations.getIAMPolicy` data source.
  late final pulumi.Output<String> policyData;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  late final pulumi.Output<String> project;

  /// Creates a new [EntryTypeIamPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EntryTypeIamPolicy]. {@macro pulumi_dataplex_entry_type_iam_policy_entry_type_iam_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EntryTypeIamPolicy(
    String name, {
    EntryTypeIamPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:dataplex/entryTypeIamPolicy:EntryTypeIamPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.35.1').merge(options),
        ) {
    entryTypeId = registerOutput<String>('entryTypeId');
    etag = registerOutput<String>('etag');
    location = registerOutput<String>('location');
    policyData = registerOutput<String>('policyData');
    project = registerOutput<String>('project');
  }

  /// Gets an existing [EntryTypeIamPolicy] resource's state with the given [name] and [id].
  static EntryTypeIamPolicy get(
    String name,
    pulumi.Input<String> id, {
    EntryTypeIamPolicyState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return EntryTypeIamPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  EntryTypeIamPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:dataplex/entryTypeIamPolicy:EntryTypeIamPolicy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    entryTypeId = registerOutput<String>('entryTypeId');
    etag = registerOutput<String>('etag');
    location = registerOutput<String>('location');
    policyData = registerOutput<String>('policyData');
    project = registerOutput<String>('project');
  }

  /// Creates a typed reference to an existing [EntryTypeIamPolicy] resource.
  EntryTypeIamPolicy.reference(String urn)
    : super(
        'gcp:dataplex/entryTypeIamPolicy:EntryTypeIamPolicy',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    entryTypeId = registerOutput<String>('entryTypeId');
    etag = registerOutput<String>('etag');
    location = registerOutput<String>('location');
    policyData = registerOutput<String>('policyData');
    project = registerOutput<String>('project');
  }
}
