import 'package:pulumi/pulumi.dart' as pulumi;
import 'glossary_iam_member_args.dart';
import 'glossary_iam_member_condition.dart';
import 'glossary_iam_member_state.dart';

/// Three different resources help you manage your IAM policy for Dataplex Glossary. Each of these resources serves a different use case:
///
/// * `gcp.dataplex.GlossaryIamPolicy`: Authoritative. Sets the IAM policy for the glossary and replaces any existing policy already attached.
/// * `gcp.dataplex.GlossaryIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the glossary are preserved. Members added outside of Terraform for the same role will be detected as drift and removed on the next `pulumi up`.
/// * `gcp.dataplex.GlossaryIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the glossary are preserved. Members added outside of Terraform will **not** be detected as drift.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.dataplex.GlossaryIamPolicy`: Retrieves the IAM policy for the glossary
///
/// &gt; **Note:** `gcp.dataplex.GlossaryIamPolicy` **cannot** be used in conjunction with `gcp.dataplex.GlossaryIamBinding` and `gcp.dataplex.GlossaryIamMember` or they will fight over what your policy should be.
///
/// &gt; **Note:** `gcp.dataplex.GlossaryIamBinding` resources **can be** used in conjunction with `gcp.dataplex.GlossaryIamMember` resources **only if** they do not grant privilege to the same role.
///
///
/// ## gcp.dataplex.GlossaryIamPolicy
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
/// const policy = new gcp.dataplex.GlossaryIamPolicy("policy", {
///     project: glossaryTestId.project,
///     location: glossaryTestId.location,
///     glossaryId: glossaryTestId.glossaryId,
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
/// policy = gcp.dataplex.GlossaryIamPolicy("policy",
///     project=glossary_test_id["project"],
///     location=glossary_test_id["location"],
///     glossary_id=glossary_test_id["glossaryId"],
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
///     var policy = new Gcp.DataPlex.GlossaryIamPolicy("policy", new()
///     {
///         Project = glossaryTestId.Project,
///         Location = glossaryTestId.Location,
///         GlossaryId = glossaryTestId.GlossaryId,
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
/// 		_, err = dataplex.NewGlossaryIamPolicy(ctx, "policy", &dataplex.GlossaryIamPolicyArgs{
/// 			Project:    pulumi.Any(glossaryTestId.Project),
/// 			Location:   pulumi.Any(glossaryTestId.Location),
/// 			GlossaryId: pulumi.Any(glossaryTestId.GlossaryId),
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
///     role    = "roles/viewer"
///     members = ["user:jane@example.com"]
///   }
/// }
///
/// resource "gcp_dataplex_glossaryiampolicy" "policy" {
///   project     = glossaryTestId.project
///   location    = glossaryTestId.location
///   glossary_id = glossaryTestId.glossaryId
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
/// import com.pulumi.gcp.dataplex.GlossaryIamPolicy;
/// import com.pulumi.gcp.dataplex.GlossaryIamPolicyArgs;
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
///         var policy = new GlossaryIamPolicy("policy", GlossaryIamPolicyArgs.builder()
///             .project(glossaryTestId.get("project"))
///             .location(glossaryTestId.get("location"))
///             .glossaryId(glossaryTestId.get("glossaryId"))
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:dataplex:GlossaryIamPolicy
///     properties:
///       project: ${glossaryTestId.project}
///       location: ${glossaryTestId.location}
///       glossaryId: ${glossaryTestId.glossaryId}
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
/// ## gcp.dataplex.GlossaryIamBinding
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.dataplex.GlossaryIamBinding("binding", {
///     project: glossaryTestId.project,
///     location: glossaryTestId.location,
///     glossaryId: glossaryTestId.glossaryId,
///     role: "roles/viewer",
///     members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.dataplex.GlossaryIamBinding("binding",
///     project=glossary_test_id["project"],
///     location=glossary_test_id["location"],
///     glossary_id=glossary_test_id["glossaryId"],
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
///     var binding = new Gcp.DataPlex.GlossaryIamBinding("binding", new()
///     {
///         Project = glossaryTestId.Project,
///         Location = glossaryTestId.Location,
///         GlossaryId = glossaryTestId.GlossaryId,
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
/// 		_, err := dataplex.NewGlossaryIamBinding(ctx, "binding", &dataplex.GlossaryIamBindingArgs{
/// 			Project:    pulumi.Any(glossaryTestId.Project),
/// 			Location:   pulumi.Any(glossaryTestId.Location),
/// 			GlossaryId: pulumi.Any(glossaryTestId.GlossaryId),
/// 			Role:       pulumi.String("roles/viewer"),
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
/// resource "gcp_dataplex_glossaryiambinding" "binding" {
///   project     = glossaryTestId.project
///   location    = glossaryTestId.location
///   glossary_id = glossaryTestId.glossaryId
///   role        = "roles/viewer"
///   members     = ["user:jane@example.com"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.dataplex.GlossaryIamBinding;
/// import com.pulumi.gcp.dataplex.GlossaryIamBindingArgs;
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
///         var binding = new GlossaryIamBinding("binding", GlossaryIamBindingArgs.builder()
///             .project(glossaryTestId.get("project"))
///             .location(glossaryTestId.get("location"))
///             .glossaryId(glossaryTestId.get("glossaryId"))
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
///     type: gcp:dataplex:GlossaryIamBinding
///     properties:
///       project: ${glossaryTestId.project}
///       location: ${glossaryTestId.location}
///       glossaryId: ${glossaryTestId.glossaryId}
///       role: roles/viewer
///       members:
///         - user:jane@example.com
/// ```
///
///
/// ## gcp.dataplex.GlossaryIamMember
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.dataplex.GlossaryIamMember("member", {
///     project: glossaryTestId.project,
///     location: glossaryTestId.location,
///     glossaryId: glossaryTestId.glossaryId,
///     role: "roles/viewer",
///     member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.dataplex.GlossaryIamMember("member",
///     project=glossary_test_id["project"],
///     location=glossary_test_id["location"],
///     glossary_id=glossary_test_id["glossaryId"],
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
///     var member = new Gcp.DataPlex.GlossaryIamMember("member", new()
///     {
///         Project = glossaryTestId.Project,
///         Location = glossaryTestId.Location,
///         GlossaryId = glossaryTestId.GlossaryId,
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
/// 		_, err := dataplex.NewGlossaryIamMember(ctx, "member", &dataplex.GlossaryIamMemberArgs{
/// 			Project:    pulumi.Any(glossaryTestId.Project),
/// 			Location:   pulumi.Any(glossaryTestId.Location),
/// 			GlossaryId: pulumi.Any(glossaryTestId.GlossaryId),
/// 			Role:       pulumi.String("roles/viewer"),
/// 			Member:     pulumi.String("user:jane@example.com"),
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
/// resource "gcp_dataplex_glossaryiammember" "member" {
///   project     = glossaryTestId.project
///   location    = glossaryTestId.location
///   glossary_id = glossaryTestId.glossaryId
///   role        = "roles/viewer"
///   member      = "user:jane@example.com"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.dataplex.GlossaryIamMember;
/// import com.pulumi.gcp.dataplex.GlossaryIamMemberArgs;
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
///         var member = new GlossaryIamMember("member", GlossaryIamMemberArgs.builder()
///             .project(glossaryTestId.get("project"))
///             .location(glossaryTestId.get("location"))
///             .glossaryId(glossaryTestId.get("glossaryId"))
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
///     type: gcp:dataplex:GlossaryIamMember
///     properties:
///       project: ${glossaryTestId.project}
///       location: ${glossaryTestId.location}
///       glossaryId: ${glossaryTestId.glossaryId}
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
/// # IAM policy for Dataplex Glossary
///
/// Three different resources help you manage your IAM policy for Dataplex Glossary. Each of these resources serves a different use case:
///
/// * `gcp.dataplex.GlossaryIamPolicy`: Authoritative. Sets the IAM policy for the glossary and replaces any existing policy already attached.
/// * `gcp.dataplex.GlossaryIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the glossary are preserved. Members added outside of Terraform for the same role will be detected as drift and removed on the next `pulumi up`.
/// * `gcp.dataplex.GlossaryIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the glossary are preserved. Members added outside of Terraform will **not** be detected as drift.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.dataplex.GlossaryIamPolicy`: Retrieves the IAM policy for the glossary
///
/// &gt; **Note:** `gcp.dataplex.GlossaryIamPolicy` **cannot** be used in conjunction with `gcp.dataplex.GlossaryIamBinding` and `gcp.dataplex.GlossaryIamMember` or they will fight over what your policy should be.
///
/// &gt; **Note:** `gcp.dataplex.GlossaryIamBinding` resources **can be** used in conjunction with `gcp.dataplex.GlossaryIamMember` resources **only if** they do not grant privilege to the same role.
///
///
/// ## gcp.dataplex.GlossaryIamPolicy
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
/// const policy = new gcp.dataplex.GlossaryIamPolicy("policy", {
///     project: glossaryTestId.project,
///     location: glossaryTestId.location,
///     glossaryId: glossaryTestId.glossaryId,
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
/// policy = gcp.dataplex.GlossaryIamPolicy("policy",
///     project=glossary_test_id["project"],
///     location=glossary_test_id["location"],
///     glossary_id=glossary_test_id["glossaryId"],
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
///     var policy = new Gcp.DataPlex.GlossaryIamPolicy("policy", new()
///     {
///         Project = glossaryTestId.Project,
///         Location = glossaryTestId.Location,
///         GlossaryId = glossaryTestId.GlossaryId,
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
/// 		_, err = dataplex.NewGlossaryIamPolicy(ctx, "policy", &dataplex.GlossaryIamPolicyArgs{
/// 			Project:    pulumi.Any(glossaryTestId.Project),
/// 			Location:   pulumi.Any(glossaryTestId.Location),
/// 			GlossaryId: pulumi.Any(glossaryTestId.GlossaryId),
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
///     role    = "roles/viewer"
///     members = ["user:jane@example.com"]
///   }
/// }
///
/// resource "gcp_dataplex_glossaryiampolicy" "policy" {
///   project     = glossaryTestId.project
///   location    = glossaryTestId.location
///   glossary_id = glossaryTestId.glossaryId
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
/// import com.pulumi.gcp.dataplex.GlossaryIamPolicy;
/// import com.pulumi.gcp.dataplex.GlossaryIamPolicyArgs;
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
///         var policy = new GlossaryIamPolicy("policy", GlossaryIamPolicyArgs.builder()
///             .project(glossaryTestId.get("project"))
///             .location(glossaryTestId.get("location"))
///             .glossaryId(glossaryTestId.get("glossaryId"))
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:dataplex:GlossaryIamPolicy
///     properties:
///       project: ${glossaryTestId.project}
///       location: ${glossaryTestId.location}
///       glossaryId: ${glossaryTestId.glossaryId}
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
/// ## gcp.dataplex.GlossaryIamBinding
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.dataplex.GlossaryIamBinding("binding", {
///     project: glossaryTestId.project,
///     location: glossaryTestId.location,
///     glossaryId: glossaryTestId.glossaryId,
///     role: "roles/viewer",
///     members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.dataplex.GlossaryIamBinding("binding",
///     project=glossary_test_id["project"],
///     location=glossary_test_id["location"],
///     glossary_id=glossary_test_id["glossaryId"],
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
///     var binding = new Gcp.DataPlex.GlossaryIamBinding("binding", new()
///     {
///         Project = glossaryTestId.Project,
///         Location = glossaryTestId.Location,
///         GlossaryId = glossaryTestId.GlossaryId,
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
/// 		_, err := dataplex.NewGlossaryIamBinding(ctx, "binding", &dataplex.GlossaryIamBindingArgs{
/// 			Project:    pulumi.Any(glossaryTestId.Project),
/// 			Location:   pulumi.Any(glossaryTestId.Location),
/// 			GlossaryId: pulumi.Any(glossaryTestId.GlossaryId),
/// 			Role:       pulumi.String("roles/viewer"),
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
/// resource "gcp_dataplex_glossaryiambinding" "binding" {
///   project     = glossaryTestId.project
///   location    = glossaryTestId.location
///   glossary_id = glossaryTestId.glossaryId
///   role        = "roles/viewer"
///   members     = ["user:jane@example.com"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.dataplex.GlossaryIamBinding;
/// import com.pulumi.gcp.dataplex.GlossaryIamBindingArgs;
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
///         var binding = new GlossaryIamBinding("binding", GlossaryIamBindingArgs.builder()
///             .project(glossaryTestId.get("project"))
///             .location(glossaryTestId.get("location"))
///             .glossaryId(glossaryTestId.get("glossaryId"))
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
///     type: gcp:dataplex:GlossaryIamBinding
///     properties:
///       project: ${glossaryTestId.project}
///       location: ${glossaryTestId.location}
///       glossaryId: ${glossaryTestId.glossaryId}
///       role: roles/viewer
///       members:
///         - user:jane@example.com
/// ```
///
///
/// ## gcp.dataplex.GlossaryIamMember
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.dataplex.GlossaryIamMember("member", {
///     project: glossaryTestId.project,
///     location: glossaryTestId.location,
///     glossaryId: glossaryTestId.glossaryId,
///     role: "roles/viewer",
///     member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.dataplex.GlossaryIamMember("member",
///     project=glossary_test_id["project"],
///     location=glossary_test_id["location"],
///     glossary_id=glossary_test_id["glossaryId"],
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
///     var member = new Gcp.DataPlex.GlossaryIamMember("member", new()
///     {
///         Project = glossaryTestId.Project,
///         Location = glossaryTestId.Location,
///         GlossaryId = glossaryTestId.GlossaryId,
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
/// 		_, err := dataplex.NewGlossaryIamMember(ctx, "member", &dataplex.GlossaryIamMemberArgs{
/// 			Project:    pulumi.Any(glossaryTestId.Project),
/// 			Location:   pulumi.Any(glossaryTestId.Location),
/// 			GlossaryId: pulumi.Any(glossaryTestId.GlossaryId),
/// 			Role:       pulumi.String("roles/viewer"),
/// 			Member:     pulumi.String("user:jane@example.com"),
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
/// resource "gcp_dataplex_glossaryiammember" "member" {
///   project     = glossaryTestId.project
///   location    = glossaryTestId.location
///   glossary_id = glossaryTestId.glossaryId
///   role        = "roles/viewer"
///   member      = "user:jane@example.com"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.dataplex.GlossaryIamMember;
/// import com.pulumi.gcp.dataplex.GlossaryIamMemberArgs;
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
///         var member = new GlossaryIamMember("member", GlossaryIamMemberArgs.builder()
///             .project(glossaryTestId.get("project"))
///             .location(glossaryTestId.get("location"))
///             .glossaryId(glossaryTestId.get("glossaryId"))
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
///     type: gcp:dataplex:GlossaryIamMember
///     properties:
///       project: ${glossaryTestId.project}
///       location: ${glossaryTestId.location}
///       glossaryId: ${glossaryTestId.glossaryId}
///       role: roles/viewer
///       member: user:jane@example.com
/// ```
///
///
/// ## Import
///
/// For all import syntaxes, the "resource in question" can take any of the following forms:
///
/// * projects/{{project}}/locations/{{location}}/glossaries/{{glossary_id}}
/// * {{project}}/{{location}}/{{glossary_id}}
/// * {{location}}/{{glossary_id}}
/// * {{glossary_id}}
///
/// Any variables not passed in the import command will be taken from the provider configuration.
///
/// Dataplex glossary IAM resources can be imported using the resource identifiers, role, and member.
///
/// IAM member imports use space-delimited identifiers: the resource in question, the role, and the member identity, e.g.
/// ```sh
/// $ terraform import google_dataplex_glossary_iam_member.editor "projects/{{project}}/locations/{{location}}/glossaries/{{glossary_id}} roles/viewer user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
/// ```sh
/// $ terraform import google_dataplex_glossary_iam_binding.editor "projects/{{project}}/locations/{{location}}/glossaries/{{glossary_id}} roles/viewer"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
/// ```sh
/// $ pulumi import gcp:dataplex/glossaryIamMember:GlossaryIamMember editor projects/{{project}}/locations/{{location}}/glossaries/{{glossary_id}}
/// ```
///
/// &gt; **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class GlossaryIamMember extends pulumi.CustomResource {
  late final pulumi.Output<GlossaryIamMemberCondition?> condition;
  /// (Computed) The etag of the IAM policy.
  late final pulumi.Output<String> etag;
  /// Used to find the parent resource to bind the IAM policy to
  late final pulumi.Output<String> glossaryId;
  /// The location where the glossary should reside.
  /// Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no location is provided in the parent identifier and no
  /// location is specified, it is taken from the provider configuration.
  late final pulumi.Output<String> location;
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
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  late final pulumi.Output<String> project;
  /// The role that should be applied. Only one
  /// `gcp.dataplex.GlossaryIamBinding` can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  late final pulumi.Output<String> role;

  /// Creates a new [GlossaryIamMember].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GlossaryIamMember]. {@macro pulumi_dataplex_glossary_iam_member_glossary_iam_member_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GlossaryIamMember(
    String name, {
    GlossaryIamMemberArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:dataplex/glossaryIamMember:GlossaryIamMember',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.35.1').merge(options),
        ) {
    condition = registerOutput<GlossaryIamMemberCondition?>('condition', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GlossaryIamMemberCondition.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    etag = registerOutput<String>('etag');
    glossaryId = registerOutput<String>('glossaryId');
    location = registerOutput<String>('location');
    member = registerOutput<String>('member');
    project = registerOutput<String>('project');
    role = registerOutput<String>('role');
  }

  /// Gets an existing [GlossaryIamMember] resource's state with the given [name] and [id].
  static GlossaryIamMember get(
    String name,
    pulumi.Input<String> id, {
    GlossaryIamMemberState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return GlossaryIamMember._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  GlossaryIamMember._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:dataplex/glossaryIamMember:GlossaryIamMember',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    condition = registerOutput<GlossaryIamMemberCondition?>('condition', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GlossaryIamMemberCondition.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    etag = registerOutput<String>('etag');
    glossaryId = registerOutput<String>('glossaryId');
    location = registerOutput<String>('location');
    member = registerOutput<String>('member');
    project = registerOutput<String>('project');
    role = registerOutput<String>('role');
  }

  /// Creates a typed reference to an existing [GlossaryIamMember] resource.
  GlossaryIamMember.reference(String urn)
    : super(
        'gcp:dataplex/glossaryIamMember:GlossaryIamMember',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    condition = registerOutput<GlossaryIamMemberCondition?>('condition', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GlossaryIamMemberCondition.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    etag = registerOutput<String>('etag');
    glossaryId = registerOutput<String>('glossaryId');
    location = registerOutput<String>('location');
    member = registerOutput<String>('member');
    project = registerOutput<String>('project');
    role = registerOutput<String>('role');
  }
}
