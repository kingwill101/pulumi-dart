import 'package:pulumi/pulumi.dart' as pulumi;
import 'glossary_iam_policy_args.dart';
import 'glossary_iam_policy_state.dart';

/// Three different resources help you manage your IAM policy for Dataplex Glossary. Each of these resources serves a different use case:
///
/// * `gcp.dataplex.GlossaryIamPolicy`: Authoritative. Sets the IAM policy for the glossary and replaces any existing policy already attached.
/// * `gcp.dataplex.GlossaryIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the glossary are preserved.
/// * `gcp.dataplex.GlossaryIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the glossary are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.dataplex.GlossaryIamPolicy`: Retrieves the IAM policy for the glossary
///
/// > **Note:** `gcp.dataplex.GlossaryIamPolicy` **cannot** be used in conjunction with `gcp.dataplex.GlossaryIamBinding` and `gcp.dataplex.GlossaryIamMember` or they will fight over what your policy should be.
///
/// > **Note:** `gcp.dataplex.GlossaryIamBinding` resources **can be** used in conjunction with `gcp.dataplex.GlossaryIamMember` resources **only if** they do not grant privilege to the same role.
///
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetIAMPolicyArgs;
/// import com.pulumi.gcp.dataplex.GlossaryIamPolicy;
/// import com.pulumi.gcp.dataplex.GlossaryIamPolicyArgs;
/// import java.util.List;
/// import java.util.ArrayList;
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
///             .project(glossaryTestId.project())
///             .location(glossaryTestId.location())
///             .glossaryId(glossaryTestId.glossaryId())
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.dataplex.GlossaryIamBinding;
/// import com.pulumi.gcp.dataplex.GlossaryIamBindingArgs;
/// import java.util.List;
/// import java.util.ArrayList;
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
///             .project(glossaryTestId.project())
///             .location(glossaryTestId.location())
///             .glossaryId(glossaryTestId.glossaryId())
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.dataplex.GlossaryIamMember;
/// import com.pulumi.gcp.dataplex.GlossaryIamMemberArgs;
/// import java.util.List;
/// import java.util.ArrayList;
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
///             .project(glossaryTestId.project())
///             .location(glossaryTestId.location())
///             .glossaryId(glossaryTestId.glossaryId())
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
/// * `gcp.dataplex.GlossaryIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the glossary are preserved.
/// * `gcp.dataplex.GlossaryIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the glossary are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.dataplex.GlossaryIamPolicy`: Retrieves the IAM policy for the glossary
///
/// > **Note:** `gcp.dataplex.GlossaryIamPolicy` **cannot** be used in conjunction with `gcp.dataplex.GlossaryIamBinding` and `gcp.dataplex.GlossaryIamMember` or they will fight over what your policy should be.
///
/// > **Note:** `gcp.dataplex.GlossaryIamBinding` resources **can be** used in conjunction with `gcp.dataplex.GlossaryIamMember` resources **only if** they do not grant privilege to the same role.
///
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetIAMPolicyArgs;
/// import com.pulumi.gcp.dataplex.GlossaryIamPolicy;
/// import com.pulumi.gcp.dataplex.GlossaryIamPolicyArgs;
/// import java.util.List;
/// import java.util.ArrayList;
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
///             .project(glossaryTestId.project())
///             .location(glossaryTestId.location())
///             .glossaryId(glossaryTestId.glossaryId())
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.dataplex.GlossaryIamBinding;
/// import com.pulumi.gcp.dataplex.GlossaryIamBindingArgs;
/// import java.util.List;
/// import java.util.ArrayList;
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
///             .project(glossaryTestId.project())
///             .location(glossaryTestId.location())
///             .glossaryId(glossaryTestId.glossaryId())
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.dataplex.GlossaryIamMember;
/// import com.pulumi.gcp.dataplex.GlossaryIamMemberArgs;
/// import java.util.List;
/// import java.util.ArrayList;
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
///             .project(glossaryTestId.project())
///             .location(glossaryTestId.location())
///             .glossaryId(glossaryTestId.glossaryId())
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
///
/// * {{project}}/{{location}}/{{glossary_id}}
///
/// * {{location}}/{{glossary_id}}
///
/// * {{glossary_id}}
///
/// Any variables not passed in the import command will be taken from the provider configuration.
///
/// Dataplex glossary IAM resources can be imported using the resource identifiers, role, and member.
///
/// IAM member imports use space-delimited identifiers: the resource in question, the role, and the member identity, e.g.
///
/// ```sh
/// $ pulumi import gcp:dataplex/glossaryIamPolicy:GlossaryIamPolicy editor "projects/{{project}}/locations/{{location}}/glossaries/{{glossary_id}} roles/viewer user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
///
/// ```sh
/// $ pulumi import gcp:dataplex/glossaryIamPolicy:GlossaryIamPolicy editor "projects/{{project}}/locations/{{location}}/glossaries/{{glossary_id}} roles/viewer"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
///
/// ```sh
/// $ pulumi import gcp:dataplex/glossaryIamPolicy:GlossaryIamPolicy editor projects/{{project}}/locations/{{location}}/glossaries/{{glossary_id}}
/// ```
///
/// -> **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
///
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class GlossaryIamPolicy extends pulumi.CustomResource {
  /// (Computed) The etag of the IAM policy.
  late final pulumi.Output<String> etag;
  /// Used to find the parent resource to bind the IAM policy to
  late final pulumi.Output<String> glossaryId;
  /// The location where the glossary should reside.
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

  /// Creates a new [GlossaryIamPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GlossaryIamPolicy]. {@macro pulumi_dataplex_glossary_iam_policy_glossary_iam_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GlossaryIamPolicy(
    String name, {
    GlossaryIamPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:dataplex/glossaryIamPolicy:GlossaryIamPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.etag = registerOutput<String>('etag');
    this.glossaryId = registerOutput<String>('glossaryId');
    this.location = registerOutput<String>('location');
    this.policyData = registerOutput<String>('policyData');
    this.project = registerOutput<String>('project');
  }

  /// Gets an existing [GlossaryIamPolicy] resource's state with the given [name] and [id].
  static GlossaryIamPolicy get(
    String name,
    pulumi.Input<String> id, {
    GlossaryIamPolicyState? state,
  }) {
    return GlossaryIamPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  GlossaryIamPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:dataplex/glossaryIamPolicy:GlossaryIamPolicy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.etag = registerOutput<String>('etag');
    this.glossaryId = registerOutput<String>('glossaryId');
    this.location = registerOutput<String>('location');
    this.policyData = registerOutput<String>('policyData');
    this.project = registerOutput<String>('project');
  }
}
