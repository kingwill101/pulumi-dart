import 'package:pulumi/pulumi.dart' as pulumi;
import 'search_engine_iam_member_args.dart';
import 'search_engine_iam_member_condition.dart';
import 'search_engine_iam_member_state.dart';

/// Three different resources help you manage your IAM policy for Discovery Engine SearchEngine. Each of these resources serves a different use case:
///
/// * `gcp.discoveryengine.SearchEngineIamPolicy`: Authoritative. Sets the IAM policy for the searchengine and replaces any existing policy already attached.
/// * `gcp.discoveryengine.SearchEngineIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the searchengine are preserved. Members added outside of Terraform for the same role will be detected as drift and removed on the next `pulumi up`.
/// * `gcp.discoveryengine.SearchEngineIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the searchengine are preserved. Members added outside of Terraform will **not** be detected as drift.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.discoveryengine.SearchEngineIamPolicy`: Retrieves the IAM policy for the searchengine
///
/// &gt; **Note:** `gcp.discoveryengine.SearchEngineIamPolicy` **cannot** be used in conjunction with `gcp.discoveryengine.SearchEngineIamBinding` and `gcp.discoveryengine.SearchEngineIamMember` or they will fight over what your policy should be.
///
/// &gt; **Note:** `gcp.discoveryengine.SearchEngineIamBinding` resources **can be** used in conjunction with `gcp.discoveryengine.SearchEngineIamMember` resources **only if** they do not grant privilege to the same role.
///
///
/// ## gcp.discoveryengine.SearchEngineIamPolicy
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const admin = gcp.organizations.getIAMPolicy({
///     bindings: [{
///         role: "roles/discoveryengine.agentspaceUser",
///         members: ["user:jane@example.com"],
///     }],
/// });
/// const policy = new gcp.discoveryengine.SearchEngineIamPolicy("policy", {
///     project: basic.project,
///     location: basic.location,
///     collectionId: basic.collectionId,
///     engineId: basic.engineId,
///     policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
///     "role": "roles/discoveryengine.agentspaceUser",
///     "members": ["user:jane@example.com"],
/// }])
/// policy = gcp.discoveryengine.SearchEngineIamPolicy("policy",
///     project=basic["project"],
///     location=basic["location"],
///     collection_id=basic["collectionId"],
///     engine_id=basic["engineId"],
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
///                 Role = "roles/discoveryengine.agentspaceUser",
///                 Members = new[]
///                 {
///                     "user:jane@example.com",
///                 },
///             },
///         },
///     });
///
///     var policy = new Gcp.DiscoveryEngine.SearchEngineIamPolicy("policy", new()
///     {
///         Project = basic.Project,
///         Location = basic.Location,
///         CollectionId = basic.CollectionId,
///         EngineId = basic.EngineId,
///         PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/discoveryengine"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		admin, err := organizations.LookupIAMPolicy(ctx, &organizations.LookupIAMPolicyArgs{
/// 			Bindings: []organizations.GetIAMPolicyBinding{
/// 				{
/// 					Role: "roles/discoveryengine.agentspaceUser",
/// 					Members: []string{
/// 						"user:jane@example.com",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = discoveryengine.NewSearchEngineIamPolicy(ctx, "policy", &discoveryengine.SearchEngineIamPolicyArgs{
/// 			Project:      pulumi.Any(basic.Project),
/// 			Location:     pulumi.Any(basic.Location),
/// 			CollectionId: pulumi.Any(basic.CollectionId),
/// 			EngineId:     pulumi.Any(basic.EngineId),
/// 			PolicyData:   pulumi.String(admin.PolicyData),
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
///     role    = "roles/discoveryengine.agentspaceUser"
///     members = ["user:jane@example.com"]
///   }
/// }
///
/// resource "gcp_discoveryengine_searchengineiampolicy" "policy" {
///   project       = basic.project
///   location      = basic.location
///   collection_id = basic.collectionId
///   engine_id     = basic.engineId
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
/// import com.pulumi.gcp.discoveryengine.SearchEngineIamPolicy;
/// import com.pulumi.gcp.discoveryengine.SearchEngineIamPolicyArgs;
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
///                 .role("roles/discoveryengine.agentspaceUser")
///                 .members("user:jane@example.com")
///                 .build())
///             .build());
///
///         var policy = new SearchEngineIamPolicy("policy", SearchEngineIamPolicyArgs.builder()
///             .project(basic.get("project"))
///             .location(basic.get("location"))
///             .collectionId(basic.get("collectionId"))
///             .engineId(basic.get("engineId"))
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:discoveryengine:SearchEngineIamPolicy
///     properties:
///       project: ${basic.project}
///       location: ${basic.location}
///       collectionId: ${basic.collectionId}
///       engineId: ${basic.engineId}
///       policyData: ${admin.policyData}
/// variables:
///   admin:
///     fn::invoke:
///       function: gcp:organizations:getIAMPolicy
///       arguments:
///         bindings:
///           - role: roles/discoveryengine.agentspaceUser
///             members:
///               - user:jane@example.com
/// ```
///
///
/// ## gcp.discoveryengine.SearchEngineIamBinding
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.discoveryengine.SearchEngineIamBinding("binding", {
///     project: basic.project,
///     location: basic.location,
///     collectionId: basic.collectionId,
///     engineId: basic.engineId,
///     role: "roles/discoveryengine.agentspaceUser",
///     members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.discoveryengine.SearchEngineIamBinding("binding",
///     project=basic["project"],
///     location=basic["location"],
///     collection_id=basic["collectionId"],
///     engine_id=basic["engineId"],
///     role="roles/discoveryengine.agentspaceUser",
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
///     var binding = new Gcp.DiscoveryEngine.SearchEngineIamBinding("binding", new()
///     {
///         Project = basic.Project,
///         Location = basic.Location,
///         CollectionId = basic.CollectionId,
///         EngineId = basic.EngineId,
///         Role = "roles/discoveryengine.agentspaceUser",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/discoveryengine"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := discoveryengine.NewSearchEngineIamBinding(ctx, "binding", &discoveryengine.SearchEngineIamBindingArgs{
/// 			Project:      pulumi.Any(basic.Project),
/// 			Location:     pulumi.Any(basic.Location),
/// 			CollectionId: pulumi.Any(basic.CollectionId),
/// 			EngineId:     pulumi.Any(basic.EngineId),
/// 			Role:         pulumi.String("roles/discoveryengine.agentspaceUser"),
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
/// resource "gcp_discoveryengine_searchengineiambinding" "binding" {
///   project       = basic.project
///   location      = basic.location
///   collection_id = basic.collectionId
///   engine_id     = basic.engineId
///   role          = "roles/discoveryengine.agentspaceUser"
///   members       = ["user:jane@example.com"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.discoveryengine.SearchEngineIamBinding;
/// import com.pulumi.gcp.discoveryengine.SearchEngineIamBindingArgs;
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
///         var binding = new SearchEngineIamBinding("binding", SearchEngineIamBindingArgs.builder()
///             .project(basic.get("project"))
///             .location(basic.get("location"))
///             .collectionId(basic.get("collectionId"))
///             .engineId(basic.get("engineId"))
///             .role("roles/discoveryengine.agentspaceUser")
///             .members("user:jane@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   binding:
///     type: gcp:discoveryengine:SearchEngineIamBinding
///     properties:
///       project: ${basic.project}
///       location: ${basic.location}
///       collectionId: ${basic.collectionId}
///       engineId: ${basic.engineId}
///       role: roles/discoveryengine.agentspaceUser
///       members:
///         - user:jane@example.com
/// ```
///
///
/// ## gcp.discoveryengine.SearchEngineIamMember
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.discoveryengine.SearchEngineIamMember("member", {
///     project: basic.project,
///     location: basic.location,
///     collectionId: basic.collectionId,
///     engineId: basic.engineId,
///     role: "roles/discoveryengine.agentspaceUser",
///     member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.discoveryengine.SearchEngineIamMember("member",
///     project=basic["project"],
///     location=basic["location"],
///     collection_id=basic["collectionId"],
///     engine_id=basic["engineId"],
///     role="roles/discoveryengine.agentspaceUser",
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
///     var member = new Gcp.DiscoveryEngine.SearchEngineIamMember("member", new()
///     {
///         Project = basic.Project,
///         Location = basic.Location,
///         CollectionId = basic.CollectionId,
///         EngineId = basic.EngineId,
///         Role = "roles/discoveryengine.agentspaceUser",
///         Member = "user:jane@example.com",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/discoveryengine"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := discoveryengine.NewSearchEngineIamMember(ctx, "member", &discoveryengine.SearchEngineIamMemberArgs{
/// 			Project:      pulumi.Any(basic.Project),
/// 			Location:     pulumi.Any(basic.Location),
/// 			CollectionId: pulumi.Any(basic.CollectionId),
/// 			EngineId:     pulumi.Any(basic.EngineId),
/// 			Role:         pulumi.String("roles/discoveryengine.agentspaceUser"),
/// 			Member:       pulumi.String("user:jane@example.com"),
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
/// resource "gcp_discoveryengine_searchengineiammember" "member" {
///   project       = basic.project
///   location      = basic.location
///   collection_id = basic.collectionId
///   engine_id     = basic.engineId
///   role          = "roles/discoveryengine.agentspaceUser"
///   member        = "user:jane@example.com"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.discoveryengine.SearchEngineIamMember;
/// import com.pulumi.gcp.discoveryengine.SearchEngineIamMemberArgs;
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
///         var member = new SearchEngineIamMember("member", SearchEngineIamMemberArgs.builder()
///             .project(basic.get("project"))
///             .location(basic.get("location"))
///             .collectionId(basic.get("collectionId"))
///             .engineId(basic.get("engineId"))
///             .role("roles/discoveryengine.agentspaceUser")
///             .member("user:jane@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   member:
///     type: gcp:discoveryengine:SearchEngineIamMember
///     properties:
///       project: ${basic.project}
///       location: ${basic.location}
///       collectionId: ${basic.collectionId}
///       engineId: ${basic.engineId}
///       role: roles/discoveryengine.agentspaceUser
///       member: user:jane@example.com
/// ```
///
///
///
/// ## This resource supports User Project Overrides.
///
/// -
///
/// # IAM policy for Discovery Engine SearchEngine
///
/// Three different resources help you manage your IAM policy for Discovery Engine SearchEngine. Each of these resources serves a different use case:
///
/// * `gcp.discoveryengine.SearchEngineIamPolicy`: Authoritative. Sets the IAM policy for the searchengine and replaces any existing policy already attached.
/// * `gcp.discoveryengine.SearchEngineIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the searchengine are preserved. Members added outside of Terraform for the same role will be detected as drift and removed on the next `pulumi up`.
/// * `gcp.discoveryengine.SearchEngineIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the searchengine are preserved. Members added outside of Terraform will **not** be detected as drift.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.discoveryengine.SearchEngineIamPolicy`: Retrieves the IAM policy for the searchengine
///
/// &gt; **Note:** `gcp.discoveryengine.SearchEngineIamPolicy` **cannot** be used in conjunction with `gcp.discoveryengine.SearchEngineIamBinding` and `gcp.discoveryengine.SearchEngineIamMember` or they will fight over what your policy should be.
///
/// &gt; **Note:** `gcp.discoveryengine.SearchEngineIamBinding` resources **can be** used in conjunction with `gcp.discoveryengine.SearchEngineIamMember` resources **only if** they do not grant privilege to the same role.
///
///
/// ## gcp.discoveryengine.SearchEngineIamPolicy
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const admin = gcp.organizations.getIAMPolicy({
///     bindings: [{
///         role: "roles/discoveryengine.agentspaceUser",
///         members: ["user:jane@example.com"],
///     }],
/// });
/// const policy = new gcp.discoveryengine.SearchEngineIamPolicy("policy", {
///     project: basic.project,
///     location: basic.location,
///     collectionId: basic.collectionId,
///     engineId: basic.engineId,
///     policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
///     "role": "roles/discoveryengine.agentspaceUser",
///     "members": ["user:jane@example.com"],
/// }])
/// policy = gcp.discoveryengine.SearchEngineIamPolicy("policy",
///     project=basic["project"],
///     location=basic["location"],
///     collection_id=basic["collectionId"],
///     engine_id=basic["engineId"],
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
///                 Role = "roles/discoveryengine.agentspaceUser",
///                 Members = new[]
///                 {
///                     "user:jane@example.com",
///                 },
///             },
///         },
///     });
///
///     var policy = new Gcp.DiscoveryEngine.SearchEngineIamPolicy("policy", new()
///     {
///         Project = basic.Project,
///         Location = basic.Location,
///         CollectionId = basic.CollectionId,
///         EngineId = basic.EngineId,
///         PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/discoveryengine"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		admin, err := organizations.LookupIAMPolicy(ctx, &organizations.LookupIAMPolicyArgs{
/// 			Bindings: []organizations.GetIAMPolicyBinding{
/// 				{
/// 					Role: "roles/discoveryengine.agentspaceUser",
/// 					Members: []string{
/// 						"user:jane@example.com",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = discoveryengine.NewSearchEngineIamPolicy(ctx, "policy", &discoveryengine.SearchEngineIamPolicyArgs{
/// 			Project:      pulumi.Any(basic.Project),
/// 			Location:     pulumi.Any(basic.Location),
/// 			CollectionId: pulumi.Any(basic.CollectionId),
/// 			EngineId:     pulumi.Any(basic.EngineId),
/// 			PolicyData:   pulumi.String(admin.PolicyData),
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
///     role    = "roles/discoveryengine.agentspaceUser"
///     members = ["user:jane@example.com"]
///   }
/// }
///
/// resource "gcp_discoveryengine_searchengineiampolicy" "policy" {
///   project       = basic.project
///   location      = basic.location
///   collection_id = basic.collectionId
///   engine_id     = basic.engineId
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
/// import com.pulumi.gcp.discoveryengine.SearchEngineIamPolicy;
/// import com.pulumi.gcp.discoveryengine.SearchEngineIamPolicyArgs;
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
///                 .role("roles/discoveryengine.agentspaceUser")
///                 .members("user:jane@example.com")
///                 .build())
///             .build());
///
///         var policy = new SearchEngineIamPolicy("policy", SearchEngineIamPolicyArgs.builder()
///             .project(basic.get("project"))
///             .location(basic.get("location"))
///             .collectionId(basic.get("collectionId"))
///             .engineId(basic.get("engineId"))
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:discoveryengine:SearchEngineIamPolicy
///     properties:
///       project: ${basic.project}
///       location: ${basic.location}
///       collectionId: ${basic.collectionId}
///       engineId: ${basic.engineId}
///       policyData: ${admin.policyData}
/// variables:
///   admin:
///     fn::invoke:
///       function: gcp:organizations:getIAMPolicy
///       arguments:
///         bindings:
///           - role: roles/discoveryengine.agentspaceUser
///             members:
///               - user:jane@example.com
/// ```
///
///
/// ## gcp.discoveryengine.SearchEngineIamBinding
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.discoveryengine.SearchEngineIamBinding("binding", {
///     project: basic.project,
///     location: basic.location,
///     collectionId: basic.collectionId,
///     engineId: basic.engineId,
///     role: "roles/discoveryengine.agentspaceUser",
///     members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.discoveryengine.SearchEngineIamBinding("binding",
///     project=basic["project"],
///     location=basic["location"],
///     collection_id=basic["collectionId"],
///     engine_id=basic["engineId"],
///     role="roles/discoveryengine.agentspaceUser",
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
///     var binding = new Gcp.DiscoveryEngine.SearchEngineIamBinding("binding", new()
///     {
///         Project = basic.Project,
///         Location = basic.Location,
///         CollectionId = basic.CollectionId,
///         EngineId = basic.EngineId,
///         Role = "roles/discoveryengine.agentspaceUser",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/discoveryengine"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := discoveryengine.NewSearchEngineIamBinding(ctx, "binding", &discoveryengine.SearchEngineIamBindingArgs{
/// 			Project:      pulumi.Any(basic.Project),
/// 			Location:     pulumi.Any(basic.Location),
/// 			CollectionId: pulumi.Any(basic.CollectionId),
/// 			EngineId:     pulumi.Any(basic.EngineId),
/// 			Role:         pulumi.String("roles/discoveryengine.agentspaceUser"),
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
/// resource "gcp_discoveryengine_searchengineiambinding" "binding" {
///   project       = basic.project
///   location      = basic.location
///   collection_id = basic.collectionId
///   engine_id     = basic.engineId
///   role          = "roles/discoveryengine.agentspaceUser"
///   members       = ["user:jane@example.com"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.discoveryengine.SearchEngineIamBinding;
/// import com.pulumi.gcp.discoveryengine.SearchEngineIamBindingArgs;
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
///         var binding = new SearchEngineIamBinding("binding", SearchEngineIamBindingArgs.builder()
///             .project(basic.get("project"))
///             .location(basic.get("location"))
///             .collectionId(basic.get("collectionId"))
///             .engineId(basic.get("engineId"))
///             .role("roles/discoveryengine.agentspaceUser")
///             .members("user:jane@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   binding:
///     type: gcp:discoveryengine:SearchEngineIamBinding
///     properties:
///       project: ${basic.project}
///       location: ${basic.location}
///       collectionId: ${basic.collectionId}
///       engineId: ${basic.engineId}
///       role: roles/discoveryengine.agentspaceUser
///       members:
///         - user:jane@example.com
/// ```
///
///
/// ## gcp.discoveryengine.SearchEngineIamMember
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.discoveryengine.SearchEngineIamMember("member", {
///     project: basic.project,
///     location: basic.location,
///     collectionId: basic.collectionId,
///     engineId: basic.engineId,
///     role: "roles/discoveryengine.agentspaceUser",
///     member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.discoveryengine.SearchEngineIamMember("member",
///     project=basic["project"],
///     location=basic["location"],
///     collection_id=basic["collectionId"],
///     engine_id=basic["engineId"],
///     role="roles/discoveryengine.agentspaceUser",
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
///     var member = new Gcp.DiscoveryEngine.SearchEngineIamMember("member", new()
///     {
///         Project = basic.Project,
///         Location = basic.Location,
///         CollectionId = basic.CollectionId,
///         EngineId = basic.EngineId,
///         Role = "roles/discoveryengine.agentspaceUser",
///         Member = "user:jane@example.com",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/discoveryengine"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := discoveryengine.NewSearchEngineIamMember(ctx, "member", &discoveryengine.SearchEngineIamMemberArgs{
/// 			Project:      pulumi.Any(basic.Project),
/// 			Location:     pulumi.Any(basic.Location),
/// 			CollectionId: pulumi.Any(basic.CollectionId),
/// 			EngineId:     pulumi.Any(basic.EngineId),
/// 			Role:         pulumi.String("roles/discoveryengine.agentspaceUser"),
/// 			Member:       pulumi.String("user:jane@example.com"),
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
/// resource "gcp_discoveryengine_searchengineiammember" "member" {
///   project       = basic.project
///   location      = basic.location
///   collection_id = basic.collectionId
///   engine_id     = basic.engineId
///   role          = "roles/discoveryengine.agentspaceUser"
///   member        = "user:jane@example.com"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.discoveryengine.SearchEngineIamMember;
/// import com.pulumi.gcp.discoveryengine.SearchEngineIamMemberArgs;
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
///         var member = new SearchEngineIamMember("member", SearchEngineIamMemberArgs.builder()
///             .project(basic.get("project"))
///             .location(basic.get("location"))
///             .collectionId(basic.get("collectionId"))
///             .engineId(basic.get("engineId"))
///             .role("roles/discoveryengine.agentspaceUser")
///             .member("user:jane@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   member:
///     type: gcp:discoveryengine:SearchEngineIamMember
///     properties:
///       project: ${basic.project}
///       location: ${basic.location}
///       collectionId: ${basic.collectionId}
///       engineId: ${basic.engineId}
///       role: roles/discoveryengine.agentspaceUser
///       member: user:jane@example.com
/// ```
///
///
/// ## Import
///
/// For all import syntaxes, the "resource in question" can take any of the following forms:
///
/// * projects/{{project}}/locations/{{location}}/collections/{{collection_id}}/engines/{{engine_id}}
/// * {{project}}/{{location}}/{{collection_id}}/{{engine_id}}
/// * {{location}}/{{collection_id}}/{{engine_id}}
/// * {{engine_id}}
///
/// Any variables not passed in the import command will be taken from the provider configuration.
///
/// Discovery Engine searchengine IAM resources can be imported using the resource identifiers, role, and member.
///
/// IAM member imports use space-delimited identifiers: the resource in question, the role, and the member identity, e.g.
/// ```sh
/// $ terraform import google_discovery_engine_search_engine_iam_member.editor "projects/{{project}}/locations/{{location}}/collections/{{collection_id}}/engines/{{engine_id}} roles/discoveryengine.agentspaceUser user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
/// ```sh
/// $ terraform import google_discovery_engine_search_engine_iam_binding.editor "projects/{{project}}/locations/{{location}}/collections/{{collection_id}}/engines/{{engine_id}} roles/discoveryengine.agentspaceUser"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
/// ```sh
/// $ pulumi import gcp:discoveryengine/searchEngineIamMember:SearchEngineIamMember editor projects/{{project}}/locations/{{location}}/collections/{{collection_id}}/engines/{{engine_id}}
/// ```
///
/// &gt; **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class SearchEngineIamMember extends pulumi.CustomResource {
  /// The collection ID.
  /// Used to find the parent resource to bind the IAM policy to
  late final pulumi.Output<String> collectionId;
  late final pulumi.Output<SearchEngineIamMemberCondition?> condition;
  /// Used to find the parent resource to bind the IAM policy to
  late final pulumi.Output<String> engineId;
  /// (Computed) The etag of the IAM policy.
  late final pulumi.Output<String> etag;
  /// Location.
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
  /// `gcp.discoveryengine.SearchEngineIamBinding` can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  late final pulumi.Output<String> role;

  /// Creates a new [SearchEngineIamMember].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SearchEngineIamMember]. {@macro pulumi_discoveryengine_search_engine_iam_member_search_engine_iam_member_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SearchEngineIamMember(
    String name, {
    SearchEngineIamMemberArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:discoveryengine/searchEngineIamMember:SearchEngineIamMember',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    collectionId = registerOutput<String>('collectionId');
    condition = registerOutput<SearchEngineIamMemberCondition?>('condition', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SearchEngineIamMemberCondition.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    engineId = registerOutput<String>('engineId');
    etag = registerOutput<String>('etag');
    location = registerOutput<String>('location');
    member = registerOutput<String>('member');
    project = registerOutput<String>('project');
    role = registerOutput<String>('role');
  }

  /// Gets an existing [SearchEngineIamMember] resource's state with the given [name] and [id].
  static SearchEngineIamMember get(
    String name,
    pulumi.Input<String> id, {
    SearchEngineIamMemberState? state,
  }) {
    return SearchEngineIamMember._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  SearchEngineIamMember._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:discoveryengine/searchEngineIamMember:SearchEngineIamMember',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    collectionId = registerOutput<String>('collectionId');
    condition = registerOutput<SearchEngineIamMemberCondition?>('condition', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SearchEngineIamMemberCondition.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    engineId = registerOutput<String>('engineId');
    etag = registerOutput<String>('etag');
    location = registerOutput<String>('location');
    member = registerOutput<String>('member');
    project = registerOutput<String>('project');
    role = registerOutput<String>('role');
  }
}
