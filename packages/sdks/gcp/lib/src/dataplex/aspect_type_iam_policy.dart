import 'package:pulumi/pulumi.dart' as pulumi;
import 'aspect_type_iam_policy_args.dart';
import 'aspect_type_iam_policy_state.dart';

/// Three different resources help you manage your IAM policy for Dataplex AspectType. Each of these resources serves a different use case:
///
/// * `gcp.dataplex.AspectTypeIamPolicy`: Authoritative. Sets the IAM policy for the aspecttype and replaces any existing policy already attached.
/// * `gcp.dataplex.AspectTypeIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the aspecttype are preserved.
/// * `gcp.dataplex.AspectTypeIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the aspecttype are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.dataplex.AspectTypeIamPolicy`: Retrieves the IAM policy for the aspecttype
///
/// &gt; **Note:** `gcp.dataplex.AspectTypeIamPolicy` **cannot** be used in conjunction with `gcp.dataplex.AspectTypeIamBinding` and `gcp.dataplex.AspectTypeIamMember` or they will fight over what your policy should be.
///
/// &gt; **Note:** `gcp.dataplex.AspectTypeIamBinding` resources **can be** used in conjunction with `gcp.dataplex.AspectTypeIamMember` resources **only if** they do not grant privilege to the same role.
///
///
///
/// ## gcp.dataplex.AspectTypeIamPolicy
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
/// const policy = new gcp.dataplex.AspectTypeIamPolicy("policy", {
///     project: testAspectTypeBasic.project,
///     location: testAspectTypeBasic.location,
///     aspectTypeId: testAspectTypeBasic.aspectTypeId,
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
/// policy = gcp.dataplex.AspectTypeIamPolicy("policy",
///     project=test_aspect_type_basic["project"],
///     location=test_aspect_type_basic["location"],
///     aspect_type_id=test_aspect_type_basic["aspectTypeId"],
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
///     var policy = new Gcp.DataPlex.AspectTypeIamPolicy("policy", new()
///     {
///         Project = testAspectTypeBasic.Project,
///         Location = testAspectTypeBasic.Location,
///         AspectTypeId = testAspectTypeBasic.AspectTypeId,
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
/// 		_, err = dataplex.NewAspectTypeIamPolicy(ctx, "policy", &dataplex.AspectTypeIamPolicyArgs{
/// 			Project:      pulumi.Any(testAspectTypeBasic.Project),
/// 			Location:     pulumi.Any(testAspectTypeBasic.Location),
/// 			AspectTypeId: pulumi.Any(testAspectTypeBasic.AspectTypeId),
/// 			PolicyData:   pulumi.String(admin.PolicyData),
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
/// import com.pulumi.gcp.dataplex.AspectTypeIamPolicy;
/// import com.pulumi.gcp.dataplex.AspectTypeIamPolicyArgs;
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
///         var policy = new AspectTypeIamPolicy("policy", AspectTypeIamPolicyArgs.builder()
///             .project(testAspectTypeBasic.project())
///             .location(testAspectTypeBasic.location())
///             .aspectTypeId(testAspectTypeBasic.aspectTypeId())
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:dataplex:AspectTypeIamPolicy
///     properties:
///       project: ${testAspectTypeBasic.project}
///       location: ${testAspectTypeBasic.location}
///       aspectTypeId: ${testAspectTypeBasic.aspectTypeId}
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
/// ## gcp.dataplex.AspectTypeIamBinding
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.dataplex.AspectTypeIamBinding("binding", {
///     project: testAspectTypeBasic.project,
///     location: testAspectTypeBasic.location,
///     aspectTypeId: testAspectTypeBasic.aspectTypeId,
///     role: "roles/viewer",
///     members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.dataplex.AspectTypeIamBinding("binding",
///     project=test_aspect_type_basic["project"],
///     location=test_aspect_type_basic["location"],
///     aspect_type_id=test_aspect_type_basic["aspectTypeId"],
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
///     var binding = new Gcp.DataPlex.AspectTypeIamBinding("binding", new()
///     {
///         Project = testAspectTypeBasic.Project,
///         Location = testAspectTypeBasic.Location,
///         AspectTypeId = testAspectTypeBasic.AspectTypeId,
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
/// 		_, err := dataplex.NewAspectTypeIamBinding(ctx, "binding", &dataplex.AspectTypeIamBindingArgs{
/// 			Project:      pulumi.Any(testAspectTypeBasic.Project),
/// 			Location:     pulumi.Any(testAspectTypeBasic.Location),
/// 			AspectTypeId: pulumi.Any(testAspectTypeBasic.AspectTypeId),
/// 			Role:         pulumi.String("roles/viewer"),
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
/// import com.pulumi.gcp.dataplex.AspectTypeIamBinding;
/// import com.pulumi.gcp.dataplex.AspectTypeIamBindingArgs;
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
///         var binding = new AspectTypeIamBinding("binding", AspectTypeIamBindingArgs.builder()
///             .project(testAspectTypeBasic.project())
///             .location(testAspectTypeBasic.location())
///             .aspectTypeId(testAspectTypeBasic.aspectTypeId())
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
///     type: gcp:dataplex:AspectTypeIamBinding
///     properties:
///       project: ${testAspectTypeBasic.project}
///       location: ${testAspectTypeBasic.location}
///       aspectTypeId: ${testAspectTypeBasic.aspectTypeId}
///       role: roles/viewer
///       members:
///         - user:jane@example.com
/// ```
///
///
/// ## gcp.dataplex.AspectTypeIamMember
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.dataplex.AspectTypeIamMember("member", {
///     project: testAspectTypeBasic.project,
///     location: testAspectTypeBasic.location,
///     aspectTypeId: testAspectTypeBasic.aspectTypeId,
///     role: "roles/viewer",
///     member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.dataplex.AspectTypeIamMember("member",
///     project=test_aspect_type_basic["project"],
///     location=test_aspect_type_basic["location"],
///     aspect_type_id=test_aspect_type_basic["aspectTypeId"],
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
///     var member = new Gcp.DataPlex.AspectTypeIamMember("member", new()
///     {
///         Project = testAspectTypeBasic.Project,
///         Location = testAspectTypeBasic.Location,
///         AspectTypeId = testAspectTypeBasic.AspectTypeId,
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
/// 		_, err := dataplex.NewAspectTypeIamMember(ctx, "member", &dataplex.AspectTypeIamMemberArgs{
/// 			Project:      pulumi.Any(testAspectTypeBasic.Project),
/// 			Location:     pulumi.Any(testAspectTypeBasic.Location),
/// 			AspectTypeId: pulumi.Any(testAspectTypeBasic.AspectTypeId),
/// 			Role:         pulumi.String("roles/viewer"),
/// 			Member:       pulumi.String("user:jane@example.com"),
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
/// import com.pulumi.gcp.dataplex.AspectTypeIamMember;
/// import com.pulumi.gcp.dataplex.AspectTypeIamMemberArgs;
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
///         var member = new AspectTypeIamMember("member", AspectTypeIamMemberArgs.builder()
///             .project(testAspectTypeBasic.project())
///             .location(testAspectTypeBasic.location())
///             .aspectTypeId(testAspectTypeBasic.aspectTypeId())
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
///     type: gcp:dataplex:AspectTypeIamMember
///     properties:
///       project: ${testAspectTypeBasic.project}
///       location: ${testAspectTypeBasic.location}
///       aspectTypeId: ${testAspectTypeBasic.aspectTypeId}
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
/// # IAM policy for Dataplex AspectType
///
/// Three different resources help you manage your IAM policy for Dataplex AspectType. Each of these resources serves a different use case:
///
/// * `gcp.dataplex.AspectTypeIamPolicy`: Authoritative. Sets the IAM policy for the aspecttype and replaces any existing policy already attached.
/// * `gcp.dataplex.AspectTypeIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the aspecttype are preserved.
/// * `gcp.dataplex.AspectTypeIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the aspecttype are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.dataplex.AspectTypeIamPolicy`: Retrieves the IAM policy for the aspecttype
///
/// &gt; **Note:** `gcp.dataplex.AspectTypeIamPolicy` **cannot** be used in conjunction with `gcp.dataplex.AspectTypeIamBinding` and `gcp.dataplex.AspectTypeIamMember` or they will fight over what your policy should be.
///
/// &gt; **Note:** `gcp.dataplex.AspectTypeIamBinding` resources **can be** used in conjunction with `gcp.dataplex.AspectTypeIamMember` resources **only if** they do not grant privilege to the same role.
///
///
///
/// ## gcp.dataplex.AspectTypeIamPolicy
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
/// const policy = new gcp.dataplex.AspectTypeIamPolicy("policy", {
///     project: testAspectTypeBasic.project,
///     location: testAspectTypeBasic.location,
///     aspectTypeId: testAspectTypeBasic.aspectTypeId,
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
/// policy = gcp.dataplex.AspectTypeIamPolicy("policy",
///     project=test_aspect_type_basic["project"],
///     location=test_aspect_type_basic["location"],
///     aspect_type_id=test_aspect_type_basic["aspectTypeId"],
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
///     var policy = new Gcp.DataPlex.AspectTypeIamPolicy("policy", new()
///     {
///         Project = testAspectTypeBasic.Project,
///         Location = testAspectTypeBasic.Location,
///         AspectTypeId = testAspectTypeBasic.AspectTypeId,
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
/// 		_, err = dataplex.NewAspectTypeIamPolicy(ctx, "policy", &dataplex.AspectTypeIamPolicyArgs{
/// 			Project:      pulumi.Any(testAspectTypeBasic.Project),
/// 			Location:     pulumi.Any(testAspectTypeBasic.Location),
/// 			AspectTypeId: pulumi.Any(testAspectTypeBasic.AspectTypeId),
/// 			PolicyData:   pulumi.String(admin.PolicyData),
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
/// import com.pulumi.gcp.dataplex.AspectTypeIamPolicy;
/// import com.pulumi.gcp.dataplex.AspectTypeIamPolicyArgs;
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
///         var policy = new AspectTypeIamPolicy("policy", AspectTypeIamPolicyArgs.builder()
///             .project(testAspectTypeBasic.project())
///             .location(testAspectTypeBasic.location())
///             .aspectTypeId(testAspectTypeBasic.aspectTypeId())
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:dataplex:AspectTypeIamPolicy
///     properties:
///       project: ${testAspectTypeBasic.project}
///       location: ${testAspectTypeBasic.location}
///       aspectTypeId: ${testAspectTypeBasic.aspectTypeId}
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
/// ## gcp.dataplex.AspectTypeIamBinding
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.dataplex.AspectTypeIamBinding("binding", {
///     project: testAspectTypeBasic.project,
///     location: testAspectTypeBasic.location,
///     aspectTypeId: testAspectTypeBasic.aspectTypeId,
///     role: "roles/viewer",
///     members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.dataplex.AspectTypeIamBinding("binding",
///     project=test_aspect_type_basic["project"],
///     location=test_aspect_type_basic["location"],
///     aspect_type_id=test_aspect_type_basic["aspectTypeId"],
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
///     var binding = new Gcp.DataPlex.AspectTypeIamBinding("binding", new()
///     {
///         Project = testAspectTypeBasic.Project,
///         Location = testAspectTypeBasic.Location,
///         AspectTypeId = testAspectTypeBasic.AspectTypeId,
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
/// 		_, err := dataplex.NewAspectTypeIamBinding(ctx, "binding", &dataplex.AspectTypeIamBindingArgs{
/// 			Project:      pulumi.Any(testAspectTypeBasic.Project),
/// 			Location:     pulumi.Any(testAspectTypeBasic.Location),
/// 			AspectTypeId: pulumi.Any(testAspectTypeBasic.AspectTypeId),
/// 			Role:         pulumi.String("roles/viewer"),
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
/// import com.pulumi.gcp.dataplex.AspectTypeIamBinding;
/// import com.pulumi.gcp.dataplex.AspectTypeIamBindingArgs;
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
///         var binding = new AspectTypeIamBinding("binding", AspectTypeIamBindingArgs.builder()
///             .project(testAspectTypeBasic.project())
///             .location(testAspectTypeBasic.location())
///             .aspectTypeId(testAspectTypeBasic.aspectTypeId())
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
///     type: gcp:dataplex:AspectTypeIamBinding
///     properties:
///       project: ${testAspectTypeBasic.project}
///       location: ${testAspectTypeBasic.location}
///       aspectTypeId: ${testAspectTypeBasic.aspectTypeId}
///       role: roles/viewer
///       members:
///         - user:jane@example.com
/// ```
///
///
/// ## gcp.dataplex.AspectTypeIamMember
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.dataplex.AspectTypeIamMember("member", {
///     project: testAspectTypeBasic.project,
///     location: testAspectTypeBasic.location,
///     aspectTypeId: testAspectTypeBasic.aspectTypeId,
///     role: "roles/viewer",
///     member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.dataplex.AspectTypeIamMember("member",
///     project=test_aspect_type_basic["project"],
///     location=test_aspect_type_basic["location"],
///     aspect_type_id=test_aspect_type_basic["aspectTypeId"],
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
///     var member = new Gcp.DataPlex.AspectTypeIamMember("member", new()
///     {
///         Project = testAspectTypeBasic.Project,
///         Location = testAspectTypeBasic.Location,
///         AspectTypeId = testAspectTypeBasic.AspectTypeId,
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
/// 		_, err := dataplex.NewAspectTypeIamMember(ctx, "member", &dataplex.AspectTypeIamMemberArgs{
/// 			Project:      pulumi.Any(testAspectTypeBasic.Project),
/// 			Location:     pulumi.Any(testAspectTypeBasic.Location),
/// 			AspectTypeId: pulumi.Any(testAspectTypeBasic.AspectTypeId),
/// 			Role:         pulumi.String("roles/viewer"),
/// 			Member:       pulumi.String("user:jane@example.com"),
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
/// import com.pulumi.gcp.dataplex.AspectTypeIamMember;
/// import com.pulumi.gcp.dataplex.AspectTypeIamMemberArgs;
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
///         var member = new AspectTypeIamMember("member", AspectTypeIamMemberArgs.builder()
///             .project(testAspectTypeBasic.project())
///             .location(testAspectTypeBasic.location())
///             .aspectTypeId(testAspectTypeBasic.aspectTypeId())
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
///     type: gcp:dataplex:AspectTypeIamMember
///     properties:
///       project: ${testAspectTypeBasic.project}
///       location: ${testAspectTypeBasic.location}
///       aspectTypeId: ${testAspectTypeBasic.aspectTypeId}
///       role: roles/viewer
///       member: user:jane@example.com
/// ```
///
///
/// ## Import
///
/// For all import syntaxes, the "resource in question" can take any of the following forms:
///
/// * projects/{{project}}/locations/{{location}}/aspectTypes/{{aspect_type_id}}
///
/// * {{project}}/{{location}}/{{aspect_type_id}}
///
/// * {{location}}/{{aspect_type_id}}
///
/// * {{aspect_type_id}}
///
/// Any variables not passed in the import command will be taken from the provider configuration.
///
/// Dataplex aspecttype IAM resources can be imported using the resource identifiers, role, and member.
///
/// IAM member imports use space-delimited identifiers: the resource in question, the role, and the member identity, e.g.
///
/// ```sh
/// $ pulumi import gcp:dataplex/aspectTypeIamPolicy:AspectTypeIamPolicy editor "projects/{{project}}/locations/{{location}}/aspectTypes/{{aspect_type_id}} roles/viewer user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
///
/// ```sh
/// $ pulumi import gcp:dataplex/aspectTypeIamPolicy:AspectTypeIamPolicy editor "projects/{{project}}/locations/{{location}}/aspectTypes/{{aspect_type_id}} roles/viewer"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
///
/// ```sh
/// $ pulumi import gcp:dataplex/aspectTypeIamPolicy:AspectTypeIamPolicy editor projects/{{project}}/locations/{{location}}/aspectTypes/{{aspect_type_id}}
/// ```
///
/// -&gt; **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
///
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class AspectTypeIamPolicy extends pulumi.CustomResource {
  /// Used to find the parent resource to bind the IAM policy to
  late final pulumi.Output<String> aspectTypeId;

  /// (Computed) The etag of the IAM policy.
  late final pulumi.Output<String> etag;

  /// The location where aspect type will be created in.
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

  /// Creates a new [AspectTypeIamPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AspectTypeIamPolicy]. {@macro pulumi_dataplex_aspect_type_iam_policy_aspect_type_iam_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AspectTypeIamPolicy(
    String name, {
    AspectTypeIamPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:dataplex/aspectTypeIamPolicy:AspectTypeIamPolicy',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    aspectTypeId = registerOutput<String>('aspectTypeId');
    etag = registerOutput<String>('etag');
    location = registerOutput<String>('location');
    policyData = registerOutput<String>('policyData');
    project = registerOutput<String>('project');
  }

  /// Gets an existing [AspectTypeIamPolicy] resource's state with the given [name] and [id].
  static AspectTypeIamPolicy get(
    String name,
    pulumi.Input<String> id, {
    AspectTypeIamPolicyState? state,
  }) {
    return AspectTypeIamPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AspectTypeIamPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:dataplex/aspectTypeIamPolicy:AspectTypeIamPolicy',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    aspectTypeId = registerOutput<String>('aspectTypeId');
    etag = registerOutput<String>('etag');
    location = registerOutput<String>('location');
    policyData = registerOutput<String>('policyData');
    project = registerOutput<String>('project');
  }
}
