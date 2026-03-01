import 'package:pulumi/pulumi.dart' as pulumi;
import 'schema_iam_policy_args.dart';
import 'schema_iam_policy_state.dart';

/// Three different resources help you manage your IAM policy for Cloud Pub/Sub Schema. Each of these resources serves a different use case:
///
/// * `gcp.pubsub.SchemaIamPolicy`: Authoritative. Sets the IAM policy for the schema and replaces any existing policy already attached.
/// * `gcp.pubsub.SchemaIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the schema are preserved.
/// * `gcp.pubsub.SchemaIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the schema are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.pubsub.SchemaIamPolicy`: Retrieves the IAM policy for the schema
///
/// > **Note:** `gcp.pubsub.SchemaIamPolicy` **cannot** be used in conjunction with `gcp.pubsub.SchemaIamBinding` and `gcp.pubsub.SchemaIamMember` or they will fight over what your policy should be.
///
/// > **Note:** `gcp.pubsub.SchemaIamBinding` resources **can be** used in conjunction with `gcp.pubsub.SchemaIamMember` resources **only if** they do not grant privilege to the same role.
///
///
///
/// ## gcp.pubsub.SchemaIamPolicy
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
/// const policy = new gcp.pubsub.SchemaIamPolicy("policy", {
///     project: example.project,
///     schema: example.name,
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
/// policy = gcp.pubsub.SchemaIamPolicy("policy",
///     project=example["project"],
///     schema=example["name"],
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
///     var policy = new Gcp.PubSub.SchemaIamPolicy("policy", new()
///     {
///         Project = example.Project,
///         Schema = example.Name,
///         PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/pubsub"
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
/// 		_, err = pubsub.NewSchemaIamPolicy(ctx, "policy", &pubsub.SchemaIamPolicyArgs{
/// 			Project:    pulumi.Any(example.Project),
/// 			Schema:     pulumi.Any(example.Name),
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
/// import com.pulumi.gcp.pubsub.SchemaIamPolicy;
/// import com.pulumi.gcp.pubsub.SchemaIamPolicyArgs;
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
///         var policy = new SchemaIamPolicy("policy", SchemaIamPolicyArgs.builder()
///             .project(example.project())
///             .schema(example.name())
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:pubsub:SchemaIamPolicy
///     properties:
///       project: ${example.project}
///       schema: ${example.name}
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
/// ## gcp.pubsub.SchemaIamBinding
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.pubsub.SchemaIamBinding("binding", {
///     project: example.project,
///     schema: example.name,
///     role: "roles/viewer",
///     members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.pubsub.SchemaIamBinding("binding",
///     project=example["project"],
///     schema=example["name"],
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
///     var binding = new Gcp.PubSub.SchemaIamBinding("binding", new()
///     {
///         Project = example.Project,
///         Schema = example.Name,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/pubsub"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := pubsub.NewSchemaIamBinding(ctx, "binding", &pubsub.SchemaIamBindingArgs{
/// 			Project: pulumi.Any(example.Project),
/// 			Schema:  pulumi.Any(example.Name),
/// 			Role:    pulumi.String("roles/viewer"),
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
/// import com.pulumi.gcp.pubsub.SchemaIamBinding;
/// import com.pulumi.gcp.pubsub.SchemaIamBindingArgs;
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
///         var binding = new SchemaIamBinding("binding", SchemaIamBindingArgs.builder()
///             .project(example.project())
///             .schema(example.name())
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
///     type: gcp:pubsub:SchemaIamBinding
///     properties:
///       project: ${example.project}
///       schema: ${example.name}
///       role: roles/viewer
///       members:
///         - user:jane@example.com
/// ```
///
///
/// ## gcp.pubsub.SchemaIamMember
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.pubsub.SchemaIamMember("member", {
///     project: example.project,
///     schema: example.name,
///     role: "roles/viewer",
///     member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.pubsub.SchemaIamMember("member",
///     project=example["project"],
///     schema=example["name"],
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
///     var member = new Gcp.PubSub.SchemaIamMember("member", new()
///     {
///         Project = example.Project,
///         Schema = example.Name,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/pubsub"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := pubsub.NewSchemaIamMember(ctx, "member", &pubsub.SchemaIamMemberArgs{
/// 			Project: pulumi.Any(example.Project),
/// 			Schema:  pulumi.Any(example.Name),
/// 			Role:    pulumi.String("roles/viewer"),
/// 			Member:  pulumi.String("user:jane@example.com"),
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
/// import com.pulumi.gcp.pubsub.SchemaIamMember;
/// import com.pulumi.gcp.pubsub.SchemaIamMemberArgs;
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
///         var member = new SchemaIamMember("member", SchemaIamMemberArgs.builder()
///             .project(example.project())
///             .schema(example.name())
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
///     type: gcp:pubsub:SchemaIamMember
///     properties:
///       project: ${example.project}
///       schema: ${example.name}
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
/// # IAM policy for Cloud Pub/Sub Schema
///
/// Three different resources help you manage your IAM policy for Cloud Pub/Sub Schema. Each of these resources serves a different use case:
///
/// * `gcp.pubsub.SchemaIamPolicy`: Authoritative. Sets the IAM policy for the schema and replaces any existing policy already attached.
/// * `gcp.pubsub.SchemaIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the schema are preserved.
/// * `gcp.pubsub.SchemaIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the schema are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.pubsub.SchemaIamPolicy`: Retrieves the IAM policy for the schema
///
/// > **Note:** `gcp.pubsub.SchemaIamPolicy` **cannot** be used in conjunction with `gcp.pubsub.SchemaIamBinding` and `gcp.pubsub.SchemaIamMember` or they will fight over what your policy should be.
///
/// > **Note:** `gcp.pubsub.SchemaIamBinding` resources **can be** used in conjunction with `gcp.pubsub.SchemaIamMember` resources **only if** they do not grant privilege to the same role.
///
///
///
/// ## gcp.pubsub.SchemaIamPolicy
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
/// const policy = new gcp.pubsub.SchemaIamPolicy("policy", {
///     project: example.project,
///     schema: example.name,
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
/// policy = gcp.pubsub.SchemaIamPolicy("policy",
///     project=example["project"],
///     schema=example["name"],
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
///     var policy = new Gcp.PubSub.SchemaIamPolicy("policy", new()
///     {
///         Project = example.Project,
///         Schema = example.Name,
///         PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/pubsub"
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
/// 		_, err = pubsub.NewSchemaIamPolicy(ctx, "policy", &pubsub.SchemaIamPolicyArgs{
/// 			Project:    pulumi.Any(example.Project),
/// 			Schema:     pulumi.Any(example.Name),
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
/// import com.pulumi.gcp.pubsub.SchemaIamPolicy;
/// import com.pulumi.gcp.pubsub.SchemaIamPolicyArgs;
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
///         var policy = new SchemaIamPolicy("policy", SchemaIamPolicyArgs.builder()
///             .project(example.project())
///             .schema(example.name())
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:pubsub:SchemaIamPolicy
///     properties:
///       project: ${example.project}
///       schema: ${example.name}
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
/// ## gcp.pubsub.SchemaIamBinding
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.pubsub.SchemaIamBinding("binding", {
///     project: example.project,
///     schema: example.name,
///     role: "roles/viewer",
///     members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.pubsub.SchemaIamBinding("binding",
///     project=example["project"],
///     schema=example["name"],
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
///     var binding = new Gcp.PubSub.SchemaIamBinding("binding", new()
///     {
///         Project = example.Project,
///         Schema = example.Name,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/pubsub"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := pubsub.NewSchemaIamBinding(ctx, "binding", &pubsub.SchemaIamBindingArgs{
/// 			Project: pulumi.Any(example.Project),
/// 			Schema:  pulumi.Any(example.Name),
/// 			Role:    pulumi.String("roles/viewer"),
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
/// import com.pulumi.gcp.pubsub.SchemaIamBinding;
/// import com.pulumi.gcp.pubsub.SchemaIamBindingArgs;
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
///         var binding = new SchemaIamBinding("binding", SchemaIamBindingArgs.builder()
///             .project(example.project())
///             .schema(example.name())
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
///     type: gcp:pubsub:SchemaIamBinding
///     properties:
///       project: ${example.project}
///       schema: ${example.name}
///       role: roles/viewer
///       members:
///         - user:jane@example.com
/// ```
///
///
/// ## gcp.pubsub.SchemaIamMember
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.pubsub.SchemaIamMember("member", {
///     project: example.project,
///     schema: example.name,
///     role: "roles/viewer",
///     member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.pubsub.SchemaIamMember("member",
///     project=example["project"],
///     schema=example["name"],
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
///     var member = new Gcp.PubSub.SchemaIamMember("member", new()
///     {
///         Project = example.Project,
///         Schema = example.Name,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/pubsub"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := pubsub.NewSchemaIamMember(ctx, "member", &pubsub.SchemaIamMemberArgs{
/// 			Project: pulumi.Any(example.Project),
/// 			Schema:  pulumi.Any(example.Name),
/// 			Role:    pulumi.String("roles/viewer"),
/// 			Member:  pulumi.String("user:jane@example.com"),
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
/// import com.pulumi.gcp.pubsub.SchemaIamMember;
/// import com.pulumi.gcp.pubsub.SchemaIamMemberArgs;
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
///         var member = new SchemaIamMember("member", SchemaIamMemberArgs.builder()
///             .project(example.project())
///             .schema(example.name())
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
///     type: gcp:pubsub:SchemaIamMember
///     properties:
///       project: ${example.project}
///       schema: ${example.name}
///       role: roles/viewer
///       member: user:jane@example.com
/// ```
///
///
/// ## Import
///
/// For all import syntaxes, the "resource in question" can take any of the following forms:
///
/// * projects/{{project}}/schemas/{{name}}
///
/// * {{project}}/{{name}}
///
/// * {{name}}
///
/// Any variables not passed in the import command will be taken from the provider configuration.
///
/// Cloud Pub/Sub schema IAM resources can be imported using the resource identifiers, role, and member.
///
/// IAM member imports use space-delimited identifiers: the resource in question, the role, and the member identity, e.g.
///
/// ```sh
/// $ pulumi import gcp:pubsub/schemaIamPolicy:SchemaIamPolicy editor "projects/{{project}}/schemas/{{schema}} roles/viewer user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
///
/// ```sh
/// $ pulumi import gcp:pubsub/schemaIamPolicy:SchemaIamPolicy editor "projects/{{project}}/schemas/{{schema}} roles/viewer"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
///
/// ```sh
/// $ pulumi import gcp:pubsub/schemaIamPolicy:SchemaIamPolicy editor projects/{{project}}/schemas/{{schema}}
/// ```
///
/// -> **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
///
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class SchemaIamPolicy extends pulumi.CustomResource {
  /// (Computed) The etag of the IAM policy.
  late final pulumi.Output<String> etag;
  /// The policy data generated by
  /// a `gcp.organizations.getIAMPolicy` data source.
  late final pulumi.Output<String> policyData;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  late final pulumi.Output<String> project;
  /// Used to find the parent resource to bind the IAM policy to
  late final pulumi.Output<String> schema;

  /// Creates a new [SchemaIamPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SchemaIamPolicy]. {@macro pulumi_pubsub_schema_iam_policy_schema_iam_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SchemaIamPolicy(
    String name, {
    SchemaIamPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:pubsub/schemaIamPolicy:SchemaIamPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.etag = registerOutput<String>('etag');
    this.policyData = registerOutput<String>('policyData');
    this.project = registerOutput<String>('project');
    this.schema = registerOutput<String>('schema');
  }

  /// Gets an existing [SchemaIamPolicy] resource's state with the given [name] and [id].
  static SchemaIamPolicy get(
    String name,
    pulumi.Input<String> id, {
    SchemaIamPolicyState? state,
  }) {
    return SchemaIamPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  SchemaIamPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:pubsub/schemaIamPolicy:SchemaIamPolicy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.etag = registerOutput<String>('etag');
    this.policyData = registerOutput<String>('policyData');
    this.project = registerOutput<String>('project');
    this.schema = registerOutput<String>('schema');
  }
}
