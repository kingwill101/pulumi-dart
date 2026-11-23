import 'package:pulumi/pulumi.dart' as pulumi;
import 'auth_provider_iam_member_args.dart';
import 'auth_provider_iam_member_condition.dart';
import 'auth_provider_iam_member_state.dart';

/// Three different resources help you manage your IAM policy for Agent Identity AuthProvider. Each of these resources serves a different use case:
///
/// * `gcp.agentidentity.AuthProviderIamPolicy`: Authoritative. Sets the IAM policy for the authprovider and replaces any existing policy already attached.
/// * `gcp.agentidentity.AuthProviderIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the authprovider are preserved. Members added outside of Terraform for the same role will be detected as drift and removed on the next `pulumi up`.
/// * `gcp.agentidentity.AuthProviderIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the authprovider are preserved. Members added outside of Terraform will **not** be detected as drift.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.agentidentity.AuthProviderIamPolicy`: Retrieves the IAM policy for the authprovider
///
/// &gt; **Note:** `gcp.agentidentity.AuthProviderIamPolicy` **cannot** be used in conjunction with `gcp.agentidentity.AuthProviderIamBinding` and `gcp.agentidentity.AuthProviderIamMember` or they will fight over what your policy should be.
///
/// &gt; **Note:** `gcp.agentidentity.AuthProviderIamBinding` resources **can be** used in conjunction with `gcp.agentidentity.AuthProviderIamMember` resources **only if** they do not grant privilege to the same role.
///
///
/// ## gcp.agentidentity.AuthProviderIamPolicy
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const admin = gcp.organizations.getIAMPolicy({
///     bindings: [{
///         role: "roles/agentidentity.viewer",
///         members: ["user:jane@example.com"],
///     }],
/// });
/// const policy = new gcp.agentidentity.AuthProviderIamPolicy("policy", {
///     project: _default.project,
///     location: _default.location,
///     authProviderId: _default.authProviderId,
///     policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
///     "role": "roles/agentidentity.viewer",
///     "members": ["user:jane@example.com"],
/// }])
/// policy = gcp.agentidentity.AuthProviderIamPolicy("policy",
///     project=default["project"],
///     location=default["location"],
///     auth_provider_id=default["authProviderId"],
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
///                 Role = "roles/agentidentity.viewer",
///                 Members = new[]
///                 {
///                     "user:jane@example.com",
///                 },
///             },
///         },
///     });
///
///     var policy = new Gcp.AgentIdentity.AuthProviderIamPolicy("policy", new()
///     {
///         Project = @default.Project,
///         Location = @default.Location,
///         AuthProviderId = @default.AuthProviderId,
///         PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/agentidentity"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		admin, err := organizations.LookupIAMPolicy(ctx, &organizations.LookupIAMPolicyArgs{
/// 			Bindings: []organizations.GetIAMPolicyBinding{
/// 				{
/// 					Role: "roles/agentidentity.viewer",
/// 					Members: []string{
/// 						"user:jane@example.com",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = agentidentity.NewAuthProviderIamPolicy(ctx, "policy", &agentidentity.AuthProviderIamPolicyArgs{
/// 			Project:        pulumi.Any(_default.Project),
/// 			Location:       pulumi.Any(_default.Location),
/// 			AuthProviderId: pulumi.Any(_default.AuthProviderId),
/// 			PolicyData:     pulumi.String(admin.PolicyData),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// terraform {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_organizations_i_a_m_policy" "admin" {
///   bindings {
///     role    = "roles/agentidentity.viewer"
///     members = ["user:jane@example.com"]
///   }
/// }
///
/// resource "gcp_agentidentity_auth_provider_iam_policy" "policy" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   project          = default.project
///   location         = default.location
///   auth_provider_id = default.authProviderId
///   policy_data      = data.gcp_organizations_i_a_m_policy.admin.policy_data
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
/// import com.pulumi.gcp.agentidentity.AuthProviderIamPolicy;
/// import com.pulumi.gcp.agentidentity.AuthProviderIamPolicyArgs;
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
///                 .role("roles/agentidentity.viewer")
///                 .members("user:jane@example.com")
///                 .build())
///             .build());
///
///         var policy = new AuthProviderIamPolicy("policy", AuthProviderIamPolicyArgs.builder()
///             .project(default_.get("project"))
///             .location(default_.get("location"))
///             .authProviderId(default_.get("authProviderId"))
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:agentidentity:AuthProviderIamPolicy
///     properties:
///       project: ${default.project}
///       location: ${default.location}
///       authProviderId: ${default.authProviderId}
///       policyData: ${admin.policyData}
/// variables:
///   admin:
///     fn::invoke:
///       function: gcp:organizations:getIAMPolicy
///       arguments:
///         bindings:
///           - role: roles/agentidentity.viewer
///             members:
///               - user:jane@example.com
/// ```
///
///
/// ## gcp.agentidentity.AuthProviderIamBinding
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.agentidentity.AuthProviderIamBinding("binding", {
///     project: _default.project,
///     location: _default.location,
///     authProviderId: _default.authProviderId,
///     role: "roles/agentidentity.viewer",
///     members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.agentidentity.AuthProviderIamBinding("binding",
///     project=default["project"],
///     location=default["location"],
///     auth_provider_id=default["authProviderId"],
///     role="roles/agentidentity.viewer",
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
///     var binding = new Gcp.AgentIdentity.AuthProviderIamBinding("binding", new()
///     {
///         Project = @default.Project,
///         Location = @default.Location,
///         AuthProviderId = @default.AuthProviderId,
///         Role = "roles/agentidentity.viewer",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/agentidentity"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := agentidentity.NewAuthProviderIamBinding(ctx, "binding", &agentidentity.AuthProviderIamBindingArgs{
/// 			Project:        pulumi.Any(_default.Project),
/// 			Location:       pulumi.Any(_default.Location),
/// 			AuthProviderId: pulumi.Any(_default.AuthProviderId),
/// 			Role:           pulumi.String("roles/agentidentity.viewer"),
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
/// terraform {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_agentidentity_auth_provider_iam_binding" "binding" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   project          = default.project
///   location         = default.location
///   auth_provider_id = default.authProviderId
///   role             = "roles/agentidentity.viewer"
///   members          = ["user:jane@example.com"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.agentidentity.AuthProviderIamBinding;
/// import com.pulumi.gcp.agentidentity.AuthProviderIamBindingArgs;
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
///         var binding = new AuthProviderIamBinding("binding", AuthProviderIamBindingArgs.builder()
///             .project(default_.get("project"))
///             .location(default_.get("location"))
///             .authProviderId(default_.get("authProviderId"))
///             .role("roles/agentidentity.viewer")
///             .members("user:jane@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   binding:
///     type: gcp:agentidentity:AuthProviderIamBinding
///     properties:
///       project: ${default.project}
///       location: ${default.location}
///       authProviderId: ${default.authProviderId}
///       role: roles/agentidentity.viewer
///       members:
///         - user:jane@example.com
/// ```
///
///
/// ## gcp.agentidentity.AuthProviderIamMember
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.agentidentity.AuthProviderIamMember("member", {
///     project: _default.project,
///     location: _default.location,
///     authProviderId: _default.authProviderId,
///     role: "roles/agentidentity.viewer",
///     member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.agentidentity.AuthProviderIamMember("member",
///     project=default["project"],
///     location=default["location"],
///     auth_provider_id=default["authProviderId"],
///     role="roles/agentidentity.viewer",
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
///     var member = new Gcp.AgentIdentity.AuthProviderIamMember("member", new()
///     {
///         Project = @default.Project,
///         Location = @default.Location,
///         AuthProviderId = @default.AuthProviderId,
///         Role = "roles/agentidentity.viewer",
///         Member = "user:jane@example.com",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/agentidentity"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := agentidentity.NewAuthProviderIamMember(ctx, "member", &agentidentity.AuthProviderIamMemberArgs{
/// 			Project:        pulumi.Any(_default.Project),
/// 			Location:       pulumi.Any(_default.Location),
/// 			AuthProviderId: pulumi.Any(_default.AuthProviderId),
/// 			Role:           pulumi.String("roles/agentidentity.viewer"),
/// 			Member:         pulumi.String("user:jane@example.com"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// terraform {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_agentidentity_auth_provider_iam_member" "member" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   project          = default.project
///   location         = default.location
///   auth_provider_id = default.authProviderId
///   role             = "roles/agentidentity.viewer"
///   member           = "user:jane@example.com"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.agentidentity.AuthProviderIamMember;
/// import com.pulumi.gcp.agentidentity.AuthProviderIamMemberArgs;
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
///         var member = new AuthProviderIamMember("member", AuthProviderIamMemberArgs.builder()
///             .project(default_.get("project"))
///             .location(default_.get("location"))
///             .authProviderId(default_.get("authProviderId"))
///             .role("roles/agentidentity.viewer")
///             .member("user:jane@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   member:
///     type: gcp:agentidentity:AuthProviderIamMember
///     properties:
///       project: ${default.project}
///       location: ${default.location}
///       authProviderId: ${default.authProviderId}
///       role: roles/agentidentity.viewer
///       member: user:jane@example.com
/// ```
///
///
///
/// ## This resource supports User Project Overrides.
///
/// -
///
/// # IAM policy for Agent Identity AuthProvider
///
/// Three different resources help you manage your IAM policy for Agent Identity AuthProvider. Each of these resources serves a different use case:
///
/// * `gcp.agentidentity.AuthProviderIamPolicy`: Authoritative. Sets the IAM policy for the authprovider and replaces any existing policy already attached.
/// * `gcp.agentidentity.AuthProviderIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the authprovider are preserved. Members added outside of Terraform for the same role will be detected as drift and removed on the next `pulumi up`.
/// * `gcp.agentidentity.AuthProviderIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the authprovider are preserved. Members added outside of Terraform will **not** be detected as drift.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.agentidentity.AuthProviderIamPolicy`: Retrieves the IAM policy for the authprovider
///
/// &gt; **Note:** `gcp.agentidentity.AuthProviderIamPolicy` **cannot** be used in conjunction with `gcp.agentidentity.AuthProviderIamBinding` and `gcp.agentidentity.AuthProviderIamMember` or they will fight over what your policy should be.
///
/// &gt; **Note:** `gcp.agentidentity.AuthProviderIamBinding` resources **can be** used in conjunction with `gcp.agentidentity.AuthProviderIamMember` resources **only if** they do not grant privilege to the same role.
///
///
/// ## gcp.agentidentity.AuthProviderIamPolicy
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const admin = gcp.organizations.getIAMPolicy({
///     bindings: [{
///         role: "roles/agentidentity.viewer",
///         members: ["user:jane@example.com"],
///     }],
/// });
/// const policy = new gcp.agentidentity.AuthProviderIamPolicy("policy", {
///     project: _default.project,
///     location: _default.location,
///     authProviderId: _default.authProviderId,
///     policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
///     "role": "roles/agentidentity.viewer",
///     "members": ["user:jane@example.com"],
/// }])
/// policy = gcp.agentidentity.AuthProviderIamPolicy("policy",
///     project=default["project"],
///     location=default["location"],
///     auth_provider_id=default["authProviderId"],
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
///                 Role = "roles/agentidentity.viewer",
///                 Members = new[]
///                 {
///                     "user:jane@example.com",
///                 },
///             },
///         },
///     });
///
///     var policy = new Gcp.AgentIdentity.AuthProviderIamPolicy("policy", new()
///     {
///         Project = @default.Project,
///         Location = @default.Location,
///         AuthProviderId = @default.AuthProviderId,
///         PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/agentidentity"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		admin, err := organizations.LookupIAMPolicy(ctx, &organizations.LookupIAMPolicyArgs{
/// 			Bindings: []organizations.GetIAMPolicyBinding{
/// 				{
/// 					Role: "roles/agentidentity.viewer",
/// 					Members: []string{
/// 						"user:jane@example.com",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = agentidentity.NewAuthProviderIamPolicy(ctx, "policy", &agentidentity.AuthProviderIamPolicyArgs{
/// 			Project:        pulumi.Any(_default.Project),
/// 			Location:       pulumi.Any(_default.Location),
/// 			AuthProviderId: pulumi.Any(_default.AuthProviderId),
/// 			PolicyData:     pulumi.String(admin.PolicyData),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// terraform {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_organizations_i_a_m_policy" "admin" {
///   bindings {
///     role    = "roles/agentidentity.viewer"
///     members = ["user:jane@example.com"]
///   }
/// }
///
/// resource "gcp_agentidentity_auth_provider_iam_policy" "policy" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   project          = default.project
///   location         = default.location
///   auth_provider_id = default.authProviderId
///   policy_data      = data.gcp_organizations_i_a_m_policy.admin.policy_data
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
/// import com.pulumi.gcp.agentidentity.AuthProviderIamPolicy;
/// import com.pulumi.gcp.agentidentity.AuthProviderIamPolicyArgs;
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
///                 .role("roles/agentidentity.viewer")
///                 .members("user:jane@example.com")
///                 .build())
///             .build());
///
///         var policy = new AuthProviderIamPolicy("policy", AuthProviderIamPolicyArgs.builder()
///             .project(default_.get("project"))
///             .location(default_.get("location"))
///             .authProviderId(default_.get("authProviderId"))
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:agentidentity:AuthProviderIamPolicy
///     properties:
///       project: ${default.project}
///       location: ${default.location}
///       authProviderId: ${default.authProviderId}
///       policyData: ${admin.policyData}
/// variables:
///   admin:
///     fn::invoke:
///       function: gcp:organizations:getIAMPolicy
///       arguments:
///         bindings:
///           - role: roles/agentidentity.viewer
///             members:
///               - user:jane@example.com
/// ```
///
///
/// ## gcp.agentidentity.AuthProviderIamBinding
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.agentidentity.AuthProviderIamBinding("binding", {
///     project: _default.project,
///     location: _default.location,
///     authProviderId: _default.authProviderId,
///     role: "roles/agentidentity.viewer",
///     members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.agentidentity.AuthProviderIamBinding("binding",
///     project=default["project"],
///     location=default["location"],
///     auth_provider_id=default["authProviderId"],
///     role="roles/agentidentity.viewer",
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
///     var binding = new Gcp.AgentIdentity.AuthProviderIamBinding("binding", new()
///     {
///         Project = @default.Project,
///         Location = @default.Location,
///         AuthProviderId = @default.AuthProviderId,
///         Role = "roles/agentidentity.viewer",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/agentidentity"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := agentidentity.NewAuthProviderIamBinding(ctx, "binding", &agentidentity.AuthProviderIamBindingArgs{
/// 			Project:        pulumi.Any(_default.Project),
/// 			Location:       pulumi.Any(_default.Location),
/// 			AuthProviderId: pulumi.Any(_default.AuthProviderId),
/// 			Role:           pulumi.String("roles/agentidentity.viewer"),
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
/// terraform {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_agentidentity_auth_provider_iam_binding" "binding" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   project          = default.project
///   location         = default.location
///   auth_provider_id = default.authProviderId
///   role             = "roles/agentidentity.viewer"
///   members          = ["user:jane@example.com"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.agentidentity.AuthProviderIamBinding;
/// import com.pulumi.gcp.agentidentity.AuthProviderIamBindingArgs;
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
///         var binding = new AuthProviderIamBinding("binding", AuthProviderIamBindingArgs.builder()
///             .project(default_.get("project"))
///             .location(default_.get("location"))
///             .authProviderId(default_.get("authProviderId"))
///             .role("roles/agentidentity.viewer")
///             .members("user:jane@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   binding:
///     type: gcp:agentidentity:AuthProviderIamBinding
///     properties:
///       project: ${default.project}
///       location: ${default.location}
///       authProviderId: ${default.authProviderId}
///       role: roles/agentidentity.viewer
///       members:
///         - user:jane@example.com
/// ```
///
///
/// ## gcp.agentidentity.AuthProviderIamMember
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.agentidentity.AuthProviderIamMember("member", {
///     project: _default.project,
///     location: _default.location,
///     authProviderId: _default.authProviderId,
///     role: "roles/agentidentity.viewer",
///     member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.agentidentity.AuthProviderIamMember("member",
///     project=default["project"],
///     location=default["location"],
///     auth_provider_id=default["authProviderId"],
///     role="roles/agentidentity.viewer",
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
///     var member = new Gcp.AgentIdentity.AuthProviderIamMember("member", new()
///     {
///         Project = @default.Project,
///         Location = @default.Location,
///         AuthProviderId = @default.AuthProviderId,
///         Role = "roles/agentidentity.viewer",
///         Member = "user:jane@example.com",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/agentidentity"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := agentidentity.NewAuthProviderIamMember(ctx, "member", &agentidentity.AuthProviderIamMemberArgs{
/// 			Project:        pulumi.Any(_default.Project),
/// 			Location:       pulumi.Any(_default.Location),
/// 			AuthProviderId: pulumi.Any(_default.AuthProviderId),
/// 			Role:           pulumi.String("roles/agentidentity.viewer"),
/// 			Member:         pulumi.String("user:jane@example.com"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// terraform {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_agentidentity_auth_provider_iam_member" "member" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   project          = default.project
///   location         = default.location
///   auth_provider_id = default.authProviderId
///   role             = "roles/agentidentity.viewer"
///   member           = "user:jane@example.com"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.agentidentity.AuthProviderIamMember;
/// import com.pulumi.gcp.agentidentity.AuthProviderIamMemberArgs;
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
///         var member = new AuthProviderIamMember("member", AuthProviderIamMemberArgs.builder()
///             .project(default_.get("project"))
///             .location(default_.get("location"))
///             .authProviderId(default_.get("authProviderId"))
///             .role("roles/agentidentity.viewer")
///             .member("user:jane@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   member:
///     type: gcp:agentidentity:AuthProviderIamMember
///     properties:
///       project: ${default.project}
///       location: ${default.location}
///       authProviderId: ${default.authProviderId}
///       role: roles/agentidentity.viewer
///       member: user:jane@example.com
/// ```
///
///
/// ## Import
///
/// For all import syntaxes, the "resource in question" can take any of the following forms:
///
/// * projects/{{project}}/locations/{{location}}/authProviders/{{auth_provider_id}}
/// * {{project}}/{{location}}/{{auth_provider_id}}
/// * {{location}}/{{auth_provider_id}}
/// * {{auth_provider_id}}
///
/// Any variables not passed in the import command will be taken from the provider configuration.
///
/// Agent Identity authprovider IAM resources can be imported using the resource identifiers, role, and member.
///
/// IAM member imports use space-delimited identifiers: the resource in question, the role, and the member identity, e.g.
/// ```sh
/// $ terraform import google_agent_identity_auth_provider_iam_member.editor "projects/{{project}}/locations/{{location}}/authProviders/{{auth_provider_id}} roles/agentidentity.viewer user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
/// ```sh
/// $ terraform import google_agent_identity_auth_provider_iam_binding.editor "projects/{{project}}/locations/{{location}}/authProviders/{{auth_provider_id}} roles/agentidentity.viewer"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
/// ```sh
/// $ pulumi import gcp:agentidentity/authProviderIamMember:AuthProviderIamMember editor projects/{{project}}/locations/{{location}}/authProviders/{{auth_provider_id}}
/// ```
///
/// &gt; **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class AuthProviderIamMember extends pulumi.CustomResource {
  /// Used to find the parent resource to bind the IAM policy to
  late final pulumi.Output<String> authProviderId;
  late final pulumi.Output<AuthProviderIamMemberCondition?> condition;
  /// (Computed) The etag of the IAM policy.
  late final pulumi.Output<String> etag;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122. Used to find the parent resource to bind the IAM policy to. If not specified,
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
  /// `gcp.agentidentity.AuthProviderIamBinding` can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  late final pulumi.Output<String> role;

  /// Creates a new [AuthProviderIamMember].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AuthProviderIamMember]. {@macro pulumi_agentidentity_auth_provider_iam_member_auth_provider_iam_member_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AuthProviderIamMember(
    String name, {
    AuthProviderIamMemberArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:agentidentity/authProviderIamMember:AuthProviderIamMember',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '10.5.0').merge(options),
        ) {
    authProviderId = registerOutput<String>('authProviderId');
    condition = registerOutput<AuthProviderIamMemberCondition?>('condition', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AuthProviderIamMemberCondition.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    etag = registerOutput<String>('etag');
    location = registerOutput<String>('location');
    member = registerOutput<String>('member');
    project = registerOutput<String>('project');
    role = registerOutput<String>('role');
  }

  /// Gets an existing [AuthProviderIamMember] resource's state with the given [name] and [id].
  static AuthProviderIamMember get(
    String name,
    pulumi.Input<String> id, {
    AuthProviderIamMemberState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return AuthProviderIamMember._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  AuthProviderIamMember._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:agentidentity/authProviderIamMember:AuthProviderIamMember',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    authProviderId = registerOutput<String>('authProviderId');
    condition = registerOutput<AuthProviderIamMemberCondition?>('condition', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AuthProviderIamMemberCondition.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    etag = registerOutput<String>('etag');
    location = registerOutput<String>('location');
    member = registerOutput<String>('member');
    project = registerOutput<String>('project');
    role = registerOutput<String>('role');
  }

  /// Creates a typed reference to an existing [AuthProviderIamMember] resource.
  AuthProviderIamMember.reference(String urn)
    : super(
        'gcp:agentidentity/authProviderIamMember:AuthProviderIamMember',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    authProviderId = registerOutput<String>('authProviderId');
    condition = registerOutput<AuthProviderIamMemberCondition?>('condition', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AuthProviderIamMemberCondition.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    etag = registerOutput<String>('etag');
    location = registerOutput<String>('location');
    member = registerOutput<String>('member');
    project = registerOutput<String>('project');
    role = registerOutput<String>('role');
  }
}
