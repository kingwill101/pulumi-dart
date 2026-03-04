import 'package:pulumi/pulumi.dart' as pulumi;
import 'repository_iam_binding_args.dart';
import 'repository_iam_binding_condition.dart';
import 'repository_iam_binding_state.dart';

/// Three different resources help you manage your IAM policy for Artifact Registry Repository. Each of these resources serves a different use case:
///
/// * `gcp.artifactregistry.RepositoryIamPolicy`: Authoritative. Sets the IAM policy for the repository and replaces any existing policy already attached.
/// * `gcp.artifactregistry.RepositoryIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the repository are preserved.
/// * `gcp.artifactregistry.RepositoryIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the repository are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.artifactregistry.RepositoryIamPolicy`: Retrieves the IAM policy for the repository
///
/// &gt; **Note:** `gcp.artifactregistry.RepositoryIamPolicy` **cannot** be used in conjunction with `gcp.artifactregistry.RepositoryIamBinding` and `gcp.artifactregistry.RepositoryIamMember` or they will fight over what your policy should be.
///
/// &gt; **Note:** `gcp.artifactregistry.RepositoryIamBinding` resources **can be** used in conjunction with `gcp.artifactregistry.RepositoryIamMember` resources **only if** they do not grant privilege to the same role.
///
///
///
/// ## gcp.artifactregistry.RepositoryIamPolicy
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const admin = gcp.organizations.getIAMPolicy({
///     bindings: [{
///         role: "roles/artifactregistry.reader",
///         members: ["user:jane@example.com"],
///     }],
/// });
/// const policy = new gcp.artifactregistry.RepositoryIamPolicy("policy", {
///     project: my_repo.project,
///     location: my_repo.location,
///     repository: my_repo.name,
///     policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
///     "role": "roles/artifactregistry.reader",
///     "members": ["user:jane@example.com"],
/// }])
/// policy = gcp.artifactregistry.RepositoryIamPolicy("policy",
///     project=my_repo["project"],
///     location=my_repo["location"],
///     repository=my_repo["name"],
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
///                 Role = "roles/artifactregistry.reader",
///                 Members = new[]
///                 {
///                     "user:jane@example.com",
///                 },
///             },
///         },
///     });
///
///     var policy = new Gcp.ArtifactRegistry.RepositoryIamPolicy("policy", new()
///     {
///         Project = my_repo.Project,
///         Location = my_repo.Location,
///         Repository = my_repo.Name,
///         PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/artifactregistry"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		admin, err := organizations.LookupIAMPolicy(ctx, &organizations.LookupIAMPolicyArgs{
/// 			Bindings: []organizations.GetIAMPolicyBinding{
/// 				{
/// 					Role: "roles/artifactregistry.reader",
/// 					Members: []string{
/// 						"user:jane@example.com",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = artifactregistry.NewRepositoryIamPolicy(ctx, "policy", &artifactregistry.RepositoryIamPolicyArgs{
/// 			Project:    pulumi.Any(my_repo.Project),
/// 			Location:   pulumi.Any(my_repo.Location),
/// 			Repository: pulumi.Any(my_repo.Name),
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
/// import com.pulumi.gcp.artifactregistry.RepositoryIamPolicy;
/// import com.pulumi.gcp.artifactregistry.RepositoryIamPolicyArgs;
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
///                 .role("roles/artifactregistry.reader")
///                 .members("user:jane@example.com")
///                 .build())
///             .build());
///
///         var policy = new RepositoryIamPolicy("policy", RepositoryIamPolicyArgs.builder()
///             .project(my_repo.project())
///             .location(my_repo.location())
///             .repository(my_repo.name())
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:artifactregistry:RepositoryIamPolicy
///     properties:
///       project: ${["my-repo"].project}
///       location: ${["my-repo"].location}
///       repository: ${["my-repo"].name}
///       policyData: ${admin.policyData}
/// variables:
///   admin:
///     fn::invoke:
///       function: gcp:organizations:getIAMPolicy
///       arguments:
///         bindings:
///           - role: roles/artifactregistry.reader
///             members:
///               - user:jane@example.com
/// ```
///
///
/// ## gcp.artifactregistry.RepositoryIamBinding
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.artifactregistry.RepositoryIamBinding("binding", {
///     project: my_repo.project,
///     location: my_repo.location,
///     repository: my_repo.name,
///     role: "roles/artifactregistry.reader",
///     members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.artifactregistry.RepositoryIamBinding("binding",
///     project=my_repo["project"],
///     location=my_repo["location"],
///     repository=my_repo["name"],
///     role="roles/artifactregistry.reader",
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
///     var binding = new Gcp.ArtifactRegistry.RepositoryIamBinding("binding", new()
///     {
///         Project = my_repo.Project,
///         Location = my_repo.Location,
///         Repository = my_repo.Name,
///         Role = "roles/artifactregistry.reader",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/artifactregistry"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := artifactregistry.NewRepositoryIamBinding(ctx, "binding", &artifactregistry.RepositoryIamBindingArgs{
/// 			Project:    pulumi.Any(my_repo.Project),
/// 			Location:   pulumi.Any(my_repo.Location),
/// 			Repository: pulumi.Any(my_repo.Name),
/// 			Role:       pulumi.String("roles/artifactregistry.reader"),
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
/// import com.pulumi.gcp.artifactregistry.RepositoryIamBinding;
/// import com.pulumi.gcp.artifactregistry.RepositoryIamBindingArgs;
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
///         var binding = new RepositoryIamBinding("binding", RepositoryIamBindingArgs.builder()
///             .project(my_repo.project())
///             .location(my_repo.location())
///             .repository(my_repo.name())
///             .role("roles/artifactregistry.reader")
///             .members("user:jane@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   binding:
///     type: gcp:artifactregistry:RepositoryIamBinding
///     properties:
///       project: ${["my-repo"].project}
///       location: ${["my-repo"].location}
///       repository: ${["my-repo"].name}
///       role: roles/artifactregistry.reader
///       members:
///         - user:jane@example.com
/// ```
///
///
/// ## gcp.artifactregistry.RepositoryIamMember
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.artifactregistry.RepositoryIamMember("member", {
///     project: my_repo.project,
///     location: my_repo.location,
///     repository: my_repo.name,
///     role: "roles/artifactregistry.reader",
///     member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.artifactregistry.RepositoryIamMember("member",
///     project=my_repo["project"],
///     location=my_repo["location"],
///     repository=my_repo["name"],
///     role="roles/artifactregistry.reader",
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
///     var member = new Gcp.ArtifactRegistry.RepositoryIamMember("member", new()
///     {
///         Project = my_repo.Project,
///         Location = my_repo.Location,
///         Repository = my_repo.Name,
///         Role = "roles/artifactregistry.reader",
///         Member = "user:jane@example.com",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/artifactregistry"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := artifactregistry.NewRepositoryIamMember(ctx, "member", &artifactregistry.RepositoryIamMemberArgs{
/// 			Project:    pulumi.Any(my_repo.Project),
/// 			Location:   pulumi.Any(my_repo.Location),
/// 			Repository: pulumi.Any(my_repo.Name),
/// 			Role:       pulumi.String("roles/artifactregistry.reader"),
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
/// import com.pulumi.gcp.artifactregistry.RepositoryIamMember;
/// import com.pulumi.gcp.artifactregistry.RepositoryIamMemberArgs;
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
///         var member = new RepositoryIamMember("member", RepositoryIamMemberArgs.builder()
///             .project(my_repo.project())
///             .location(my_repo.location())
///             .repository(my_repo.name())
///             .role("roles/artifactregistry.reader")
///             .member("user:jane@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   member:
///     type: gcp:artifactregistry:RepositoryIamMember
///     properties:
///       project: ${["my-repo"].project}
///       location: ${["my-repo"].location}
///       repository: ${["my-repo"].name}
///       role: roles/artifactregistry.reader
///       member: user:jane@example.com
/// ```
///
///
///
/// ## This resource supports User Project Overrides.
///
/// -
///
/// # IAM policy for Artifact Registry Repository
///
/// Three different resources help you manage your IAM policy for Artifact Registry Repository. Each of these resources serves a different use case:
///
/// * `gcp.artifactregistry.RepositoryIamPolicy`: Authoritative. Sets the IAM policy for the repository and replaces any existing policy already attached.
/// * `gcp.artifactregistry.RepositoryIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the repository are preserved.
/// * `gcp.artifactregistry.RepositoryIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the repository are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.artifactregistry.RepositoryIamPolicy`: Retrieves the IAM policy for the repository
///
/// &gt; **Note:** `gcp.artifactregistry.RepositoryIamPolicy` **cannot** be used in conjunction with `gcp.artifactregistry.RepositoryIamBinding` and `gcp.artifactregistry.RepositoryIamMember` or they will fight over what your policy should be.
///
/// &gt; **Note:** `gcp.artifactregistry.RepositoryIamBinding` resources **can be** used in conjunction with `gcp.artifactregistry.RepositoryIamMember` resources **only if** they do not grant privilege to the same role.
///
///
///
/// ## gcp.artifactregistry.RepositoryIamPolicy
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const admin = gcp.organizations.getIAMPolicy({
///     bindings: [{
///         role: "roles/artifactregistry.reader",
///         members: ["user:jane@example.com"],
///     }],
/// });
/// const policy = new gcp.artifactregistry.RepositoryIamPolicy("policy", {
///     project: my_repo.project,
///     location: my_repo.location,
///     repository: my_repo.name,
///     policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
///     "role": "roles/artifactregistry.reader",
///     "members": ["user:jane@example.com"],
/// }])
/// policy = gcp.artifactregistry.RepositoryIamPolicy("policy",
///     project=my_repo["project"],
///     location=my_repo["location"],
///     repository=my_repo["name"],
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
///                 Role = "roles/artifactregistry.reader",
///                 Members = new[]
///                 {
///                     "user:jane@example.com",
///                 },
///             },
///         },
///     });
///
///     var policy = new Gcp.ArtifactRegistry.RepositoryIamPolicy("policy", new()
///     {
///         Project = my_repo.Project,
///         Location = my_repo.Location,
///         Repository = my_repo.Name,
///         PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/artifactregistry"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		admin, err := organizations.LookupIAMPolicy(ctx, &organizations.LookupIAMPolicyArgs{
/// 			Bindings: []organizations.GetIAMPolicyBinding{
/// 				{
/// 					Role: "roles/artifactregistry.reader",
/// 					Members: []string{
/// 						"user:jane@example.com",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = artifactregistry.NewRepositoryIamPolicy(ctx, "policy", &artifactregistry.RepositoryIamPolicyArgs{
/// 			Project:    pulumi.Any(my_repo.Project),
/// 			Location:   pulumi.Any(my_repo.Location),
/// 			Repository: pulumi.Any(my_repo.Name),
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
/// import com.pulumi.gcp.artifactregistry.RepositoryIamPolicy;
/// import com.pulumi.gcp.artifactregistry.RepositoryIamPolicyArgs;
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
///                 .role("roles/artifactregistry.reader")
///                 .members("user:jane@example.com")
///                 .build())
///             .build());
///
///         var policy = new RepositoryIamPolicy("policy", RepositoryIamPolicyArgs.builder()
///             .project(my_repo.project())
///             .location(my_repo.location())
///             .repository(my_repo.name())
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:artifactregistry:RepositoryIamPolicy
///     properties:
///       project: ${["my-repo"].project}
///       location: ${["my-repo"].location}
///       repository: ${["my-repo"].name}
///       policyData: ${admin.policyData}
/// variables:
///   admin:
///     fn::invoke:
///       function: gcp:organizations:getIAMPolicy
///       arguments:
///         bindings:
///           - role: roles/artifactregistry.reader
///             members:
///               - user:jane@example.com
/// ```
///
///
/// ## gcp.artifactregistry.RepositoryIamBinding
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.artifactregistry.RepositoryIamBinding("binding", {
///     project: my_repo.project,
///     location: my_repo.location,
///     repository: my_repo.name,
///     role: "roles/artifactregistry.reader",
///     members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.artifactregistry.RepositoryIamBinding("binding",
///     project=my_repo["project"],
///     location=my_repo["location"],
///     repository=my_repo["name"],
///     role="roles/artifactregistry.reader",
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
///     var binding = new Gcp.ArtifactRegistry.RepositoryIamBinding("binding", new()
///     {
///         Project = my_repo.Project,
///         Location = my_repo.Location,
///         Repository = my_repo.Name,
///         Role = "roles/artifactregistry.reader",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/artifactregistry"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := artifactregistry.NewRepositoryIamBinding(ctx, "binding", &artifactregistry.RepositoryIamBindingArgs{
/// 			Project:    pulumi.Any(my_repo.Project),
/// 			Location:   pulumi.Any(my_repo.Location),
/// 			Repository: pulumi.Any(my_repo.Name),
/// 			Role:       pulumi.String("roles/artifactregistry.reader"),
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
/// import com.pulumi.gcp.artifactregistry.RepositoryIamBinding;
/// import com.pulumi.gcp.artifactregistry.RepositoryIamBindingArgs;
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
///         var binding = new RepositoryIamBinding("binding", RepositoryIamBindingArgs.builder()
///             .project(my_repo.project())
///             .location(my_repo.location())
///             .repository(my_repo.name())
///             .role("roles/artifactregistry.reader")
///             .members("user:jane@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   binding:
///     type: gcp:artifactregistry:RepositoryIamBinding
///     properties:
///       project: ${["my-repo"].project}
///       location: ${["my-repo"].location}
///       repository: ${["my-repo"].name}
///       role: roles/artifactregistry.reader
///       members:
///         - user:jane@example.com
/// ```
///
///
/// ## gcp.artifactregistry.RepositoryIamMember
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.artifactregistry.RepositoryIamMember("member", {
///     project: my_repo.project,
///     location: my_repo.location,
///     repository: my_repo.name,
///     role: "roles/artifactregistry.reader",
///     member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.artifactregistry.RepositoryIamMember("member",
///     project=my_repo["project"],
///     location=my_repo["location"],
///     repository=my_repo["name"],
///     role="roles/artifactregistry.reader",
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
///     var member = new Gcp.ArtifactRegistry.RepositoryIamMember("member", new()
///     {
///         Project = my_repo.Project,
///         Location = my_repo.Location,
///         Repository = my_repo.Name,
///         Role = "roles/artifactregistry.reader",
///         Member = "user:jane@example.com",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/artifactregistry"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := artifactregistry.NewRepositoryIamMember(ctx, "member", &artifactregistry.RepositoryIamMemberArgs{
/// 			Project:    pulumi.Any(my_repo.Project),
/// 			Location:   pulumi.Any(my_repo.Location),
/// 			Repository: pulumi.Any(my_repo.Name),
/// 			Role:       pulumi.String("roles/artifactregistry.reader"),
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
/// import com.pulumi.gcp.artifactregistry.RepositoryIamMember;
/// import com.pulumi.gcp.artifactregistry.RepositoryIamMemberArgs;
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
///         var member = new RepositoryIamMember("member", RepositoryIamMemberArgs.builder()
///             .project(my_repo.project())
///             .location(my_repo.location())
///             .repository(my_repo.name())
///             .role("roles/artifactregistry.reader")
///             .member("user:jane@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   member:
///     type: gcp:artifactregistry:RepositoryIamMember
///     properties:
///       project: ${["my-repo"].project}
///       location: ${["my-repo"].location}
///       repository: ${["my-repo"].name}
///       role: roles/artifactregistry.reader
///       member: user:jane@example.com
/// ```
///
///
/// ## Import
///
/// For all import syntaxes, the "resource in question" can take any of the following forms:
///
/// * projects/{{project}}/locations/{{location}}/repositories/{{repository}}
///
/// * {{project}}/{{location}}/{{repository}}
///
/// * {{location}}/{{repository}}
///
/// * {{repository}}
///
/// Any variables not passed in the import command will be taken from the provider configuration.
///
/// Artifact Registry repository IAM resources can be imported using the resource identifiers, role, and member.
///
/// IAM member imports use space-delimited identifiers: the resource in question, the role, and the member identity, e.g.
///
/// ```sh
/// $ pulumi import gcp:artifactregistry/repositoryIamBinding:RepositoryIamBinding editor "projects/{{project}}/locations/{{location}}/repositories/{{repository}} roles/artifactregistry.reader user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
///
/// ```sh
/// $ pulumi import gcp:artifactregistry/repositoryIamBinding:RepositoryIamBinding editor "projects/{{project}}/locations/{{location}}/repositories/{{repository}} roles/artifactregistry.reader"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
///
/// ```sh
/// $ pulumi import gcp:artifactregistry/repositoryIamBinding:RepositoryIamBinding editor projects/{{project}}/locations/{{location}}/repositories/{{repository}}
/// ```
///
/// -&gt; **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
///
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class RepositoryIamBinding extends pulumi.CustomResource {
  late final pulumi.Output<RepositoryIamBindingCondition?> condition;

  /// (Computed) The etag of the IAM policy.
  late final pulumi.Output<String> etag;

  /// The name of the repository's location. In addition to specific regions,
  /// special values for multi-region locations are `asia`, `europe`, and `us`.
  /// See [here](https://cloud.google.com/artifact-registry/docs/repositories/repo-locations),
  /// or use the
  /// gcp.artifactregistry.getLocations
  /// data source for possible values. Used to find the parent resource to bind the IAM policy to. If not specified,
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
  late final pulumi.Output<List<String>> members;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  late final pulumi.Output<String> project;

  /// Used to find the parent resource to bind the IAM policy to
  late final pulumi.Output<String> repository;

  /// The role that should be applied. Only one
  /// `gcp.artifactregistry.RepositoryIamBinding` can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  late final pulumi.Output<String> role;

  /// Creates a new [RepositoryIamBinding].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RepositoryIamBinding]. {@macro pulumi_artifactregistry_repository_iam_binding_repository_iam_binding_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RepositoryIamBinding(
    String name, {
    RepositoryIamBindingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:artifactregistry/repositoryIamBinding:RepositoryIamBinding',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    condition = registerOutput<RepositoryIamBindingCondition?>('condition');
    etag = registerOutput<String>('etag');
    location = registerOutput<String>('location');
    members = registerOutput<List<String>>('members');
    project = registerOutput<String>('project');
    repository = registerOutput<String>('repository');
    role = registerOutput<String>('role');
  }

  /// Gets an existing [RepositoryIamBinding] resource's state with the given [name] and [id].
  static RepositoryIamBinding get(
    String name,
    pulumi.Input<String> id, {
    RepositoryIamBindingState? state,
  }) {
    return RepositoryIamBinding._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  RepositoryIamBinding._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:artifactregistry/repositoryIamBinding:RepositoryIamBinding',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    condition = registerOutput<RepositoryIamBindingCondition?>('condition');
    etag = registerOutput<String>('etag');
    location = registerOutput<String>('location');
    members = registerOutput<List<String>>('members');
    project = registerOutput<String>('project');
    repository = registerOutput<String>('repository');
    role = registerOutput<String>('role');
  }
}
