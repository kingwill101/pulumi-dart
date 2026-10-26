import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_analytics_data_agent_iam_policy_args.dart';
import 'data_analytics_data_agent_iam_policy_state.dart';

/// Three different resources help you manage your IAM policy for Gemini Data Analytics DataAgent. Each of these resources serves a different use case:
///
/// * `gcp.gemini.DataAnalyticsDataAgentIamPolicy`: Authoritative. Sets the IAM policy for the dataagent and replaces any existing policy already attached.
/// * `gcp.gemini.DataAnalyticsDataAgentIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the dataagent are preserved. Members added outside of Terraform for the same role will be detected as drift and removed on the next `pulumi up`.
/// * `gcp.gemini.DataAnalyticsDataAgentIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the dataagent are preserved. Members added outside of Terraform will **not** be detected as drift.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.gemini.DataAnalyticsDataAgentIamPolicy`: Retrieves the IAM policy for the dataagent
///
/// &gt; **Note:** `gcp.gemini.DataAnalyticsDataAgentIamPolicy` **cannot** be used in conjunction with `gcp.gemini.DataAnalyticsDataAgentIamBinding` and `gcp.gemini.DataAnalyticsDataAgentIamMember` or they will fight over what your policy should be.
///
/// &gt; **Note:** `gcp.gemini.DataAnalyticsDataAgentIamBinding` resources **can be** used in conjunction with `gcp.gemini.DataAnalyticsDataAgentIamMember` resources **only if** they do not grant privilege to the same role.
///
///
/// ## gcp.gemini.DataAnalyticsDataAgentIamPolicy
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const admin = gcp.organizations.getIAMPolicy({
///     bindings: [{
///         role: "roles/geminidataanalytics.dataAgentUser",
///         members: ["user:jane@example.com"],
///     }],
/// });
/// const policy = new gcp.gemini.DataAnalyticsDataAgentIamPolicy("policy", {
///     project: example.project,
///     location: example.location,
///     dataAgentId: example.dataAgentId,
///     policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
///     "role": "roles/geminidataanalytics.dataAgentUser",
///     "members": ["user:jane@example.com"],
/// }])
/// policy = gcp.gemini.DataAnalyticsDataAgentIamPolicy("policy",
///     project=example["project"],
///     location=example["location"],
///     data_agent_id=example["dataAgentId"],
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
///                 Role = "roles/geminidataanalytics.dataAgentUser",
///                 Members = new[]
///                 {
///                     "user:jane@example.com",
///                 },
///             },
///         },
///     });
///
///     var policy = new Gcp.Gemini.DataAnalyticsDataAgentIamPolicy("policy", new()
///     {
///         Project = example.Project,
///         Location = example.Location,
///         DataAgentId = example.DataAgentId,
///         PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/gemini"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		admin, err := organizations.LookupIAMPolicy(ctx, &organizations.LookupIAMPolicyArgs{
/// 			Bindings: []organizations.GetIAMPolicyBinding{
/// 				{
/// 					Role: "roles/geminidataanalytics.dataAgentUser",
/// 					Members: []string{
/// 						"user:jane@example.com",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = gemini.NewDataAnalyticsDataAgentIamPolicy(ctx, "policy", &gemini.DataAnalyticsDataAgentIamPolicyArgs{
/// 			Project:     pulumi.Any(example.Project),
/// 			Location:    pulumi.Any(example.Location),
/// 			DataAgentId: pulumi.Any(example.DataAgentId),
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
///     role    = "roles/geminidataanalytics.dataAgentUser"
///     members = ["user:jane@example.com"]
///   }
/// }
///
/// resource "gcp_gemini_data_analytics_data_agent_iam_policy" "policy" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   project       = example.project
///   location      = example.location
///   data_agent_id = example.dataAgentId
///   policy_data   = data.gcp_organizations_i_a_m_policy.admin.policy_data
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
/// import com.pulumi.gcp.gemini.DataAnalyticsDataAgentIamPolicy;
/// import com.pulumi.gcp.gemini.DataAnalyticsDataAgentIamPolicyArgs;
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
///                 .role("roles/geminidataanalytics.dataAgentUser")
///                 .members("user:jane@example.com")
///                 .build())
///             .build());
///
///         var policy = new DataAnalyticsDataAgentIamPolicy("policy", DataAnalyticsDataAgentIamPolicyArgs.builder()
///             .project(example.get("project"))
///             .location(example.get("location"))
///             .dataAgentId(example.get("dataAgentId"))
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:gemini:DataAnalyticsDataAgentIamPolicy
///     properties:
///       project: ${example.project}
///       location: ${example.location}
///       dataAgentId: ${example.dataAgentId}
///       policyData: ${admin.policyData}
/// variables:
///   admin:
///     fn::invoke:
///       function: gcp:organizations:getIAMPolicy
///       arguments:
///         bindings:
///           - role: roles/geminidataanalytics.dataAgentUser
///             members:
///               - user:jane@example.com
/// ```
///
///
/// ## gcp.gemini.DataAnalyticsDataAgentIamBinding
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.gemini.DataAnalyticsDataAgentIamBinding("binding", {
///     project: example.project,
///     location: example.location,
///     dataAgentId: example.dataAgentId,
///     role: "roles/geminidataanalytics.dataAgentUser",
///     members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.gemini.DataAnalyticsDataAgentIamBinding("binding",
///     project=example["project"],
///     location=example["location"],
///     data_agent_id=example["dataAgentId"],
///     role="roles/geminidataanalytics.dataAgentUser",
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
///     var binding = new Gcp.Gemini.DataAnalyticsDataAgentIamBinding("binding", new()
///     {
///         Project = example.Project,
///         Location = example.Location,
///         DataAgentId = example.DataAgentId,
///         Role = "roles/geminidataanalytics.dataAgentUser",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/gemini"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := gemini.NewDataAnalyticsDataAgentIamBinding(ctx, "binding", &gemini.DataAnalyticsDataAgentIamBindingArgs{
/// 			Project:     pulumi.Any(example.Project),
/// 			Location:    pulumi.Any(example.Location),
/// 			DataAgentId: pulumi.Any(example.DataAgentId),
/// 			Role:        pulumi.String("roles/geminidataanalytics.dataAgentUser"),
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
/// resource "gcp_gemini_data_analytics_data_agent_iam_binding" "binding" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   project       = example.project
///   location      = example.location
///   data_agent_id = example.dataAgentId
///   role          = "roles/geminidataanalytics.dataAgentUser"
///   members       = ["user:jane@example.com"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.gemini.DataAnalyticsDataAgentIamBinding;
/// import com.pulumi.gcp.gemini.DataAnalyticsDataAgentIamBindingArgs;
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
///         var binding = new DataAnalyticsDataAgentIamBinding("binding", DataAnalyticsDataAgentIamBindingArgs.builder()
///             .project(example.get("project"))
///             .location(example.get("location"))
///             .dataAgentId(example.get("dataAgentId"))
///             .role("roles/geminidataanalytics.dataAgentUser")
///             .members("user:jane@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   binding:
///     type: gcp:gemini:DataAnalyticsDataAgentIamBinding
///     properties:
///       project: ${example.project}
///       location: ${example.location}
///       dataAgentId: ${example.dataAgentId}
///       role: roles/geminidataanalytics.dataAgentUser
///       members:
///         - user:jane@example.com
/// ```
///
///
/// ## gcp.gemini.DataAnalyticsDataAgentIamMember
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.gemini.DataAnalyticsDataAgentIamMember("member", {
///     project: example.project,
///     location: example.location,
///     dataAgentId: example.dataAgentId,
///     role: "roles/geminidataanalytics.dataAgentUser",
///     member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.gemini.DataAnalyticsDataAgentIamMember("member",
///     project=example["project"],
///     location=example["location"],
///     data_agent_id=example["dataAgentId"],
///     role="roles/geminidataanalytics.dataAgentUser",
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
///     var member = new Gcp.Gemini.DataAnalyticsDataAgentIamMember("member", new()
///     {
///         Project = example.Project,
///         Location = example.Location,
///         DataAgentId = example.DataAgentId,
///         Role = "roles/geminidataanalytics.dataAgentUser",
///         Member = "user:jane@example.com",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/gemini"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := gemini.NewDataAnalyticsDataAgentIamMember(ctx, "member", &gemini.DataAnalyticsDataAgentIamMemberArgs{
/// 			Project:     pulumi.Any(example.Project),
/// 			Location:    pulumi.Any(example.Location),
/// 			DataAgentId: pulumi.Any(example.DataAgentId),
/// 			Role:        pulumi.String("roles/geminidataanalytics.dataAgentUser"),
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
/// terraform {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_gemini_data_analytics_data_agent_iam_member" "member" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   project       = example.project
///   location      = example.location
///   data_agent_id = example.dataAgentId
///   role          = "roles/geminidataanalytics.dataAgentUser"
///   member        = "user:jane@example.com"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.gemini.DataAnalyticsDataAgentIamMember;
/// import com.pulumi.gcp.gemini.DataAnalyticsDataAgentIamMemberArgs;
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
///         var member = new DataAnalyticsDataAgentIamMember("member", DataAnalyticsDataAgentIamMemberArgs.builder()
///             .project(example.get("project"))
///             .location(example.get("location"))
///             .dataAgentId(example.get("dataAgentId"))
///             .role("roles/geminidataanalytics.dataAgentUser")
///             .member("user:jane@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   member:
///     type: gcp:gemini:DataAnalyticsDataAgentIamMember
///     properties:
///       project: ${example.project}
///       location: ${example.location}
///       dataAgentId: ${example.dataAgentId}
///       role: roles/geminidataanalytics.dataAgentUser
///       member: user:jane@example.com
/// ```
///
///
///
/// ## This resource supports User Project Overrides.
///
/// -
///
/// # IAM policy for Gemini Data Analytics DataAgent
///
/// Three different resources help you manage your IAM policy for Gemini Data Analytics DataAgent. Each of these resources serves a different use case:
///
/// * `gcp.gemini.DataAnalyticsDataAgentIamPolicy`: Authoritative. Sets the IAM policy for the dataagent and replaces any existing policy already attached.
/// * `gcp.gemini.DataAnalyticsDataAgentIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the dataagent are preserved. Members added outside of Terraform for the same role will be detected as drift and removed on the next `pulumi up`.
/// * `gcp.gemini.DataAnalyticsDataAgentIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the dataagent are preserved. Members added outside of Terraform will **not** be detected as drift.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.gemini.DataAnalyticsDataAgentIamPolicy`: Retrieves the IAM policy for the dataagent
///
/// &gt; **Note:** `gcp.gemini.DataAnalyticsDataAgentIamPolicy` **cannot** be used in conjunction with `gcp.gemini.DataAnalyticsDataAgentIamBinding` and `gcp.gemini.DataAnalyticsDataAgentIamMember` or they will fight over what your policy should be.
///
/// &gt; **Note:** `gcp.gemini.DataAnalyticsDataAgentIamBinding` resources **can be** used in conjunction with `gcp.gemini.DataAnalyticsDataAgentIamMember` resources **only if** they do not grant privilege to the same role.
///
///
/// ## gcp.gemini.DataAnalyticsDataAgentIamPolicy
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const admin = gcp.organizations.getIAMPolicy({
///     bindings: [{
///         role: "roles/geminidataanalytics.dataAgentUser",
///         members: ["user:jane@example.com"],
///     }],
/// });
/// const policy = new gcp.gemini.DataAnalyticsDataAgentIamPolicy("policy", {
///     project: example.project,
///     location: example.location,
///     dataAgentId: example.dataAgentId,
///     policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
///     "role": "roles/geminidataanalytics.dataAgentUser",
///     "members": ["user:jane@example.com"],
/// }])
/// policy = gcp.gemini.DataAnalyticsDataAgentIamPolicy("policy",
///     project=example["project"],
///     location=example["location"],
///     data_agent_id=example["dataAgentId"],
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
///                 Role = "roles/geminidataanalytics.dataAgentUser",
///                 Members = new[]
///                 {
///                     "user:jane@example.com",
///                 },
///             },
///         },
///     });
///
///     var policy = new Gcp.Gemini.DataAnalyticsDataAgentIamPolicy("policy", new()
///     {
///         Project = example.Project,
///         Location = example.Location,
///         DataAgentId = example.DataAgentId,
///         PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/gemini"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		admin, err := organizations.LookupIAMPolicy(ctx, &organizations.LookupIAMPolicyArgs{
/// 			Bindings: []organizations.GetIAMPolicyBinding{
/// 				{
/// 					Role: "roles/geminidataanalytics.dataAgentUser",
/// 					Members: []string{
/// 						"user:jane@example.com",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = gemini.NewDataAnalyticsDataAgentIamPolicy(ctx, "policy", &gemini.DataAnalyticsDataAgentIamPolicyArgs{
/// 			Project:     pulumi.Any(example.Project),
/// 			Location:    pulumi.Any(example.Location),
/// 			DataAgentId: pulumi.Any(example.DataAgentId),
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
///     role    = "roles/geminidataanalytics.dataAgentUser"
///     members = ["user:jane@example.com"]
///   }
/// }
///
/// resource "gcp_gemini_data_analytics_data_agent_iam_policy" "policy" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   project       = example.project
///   location      = example.location
///   data_agent_id = example.dataAgentId
///   policy_data   = data.gcp_organizations_i_a_m_policy.admin.policy_data
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
/// import com.pulumi.gcp.gemini.DataAnalyticsDataAgentIamPolicy;
/// import com.pulumi.gcp.gemini.DataAnalyticsDataAgentIamPolicyArgs;
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
///                 .role("roles/geminidataanalytics.dataAgentUser")
///                 .members("user:jane@example.com")
///                 .build())
///             .build());
///
///         var policy = new DataAnalyticsDataAgentIamPolicy("policy", DataAnalyticsDataAgentIamPolicyArgs.builder()
///             .project(example.get("project"))
///             .location(example.get("location"))
///             .dataAgentId(example.get("dataAgentId"))
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:gemini:DataAnalyticsDataAgentIamPolicy
///     properties:
///       project: ${example.project}
///       location: ${example.location}
///       dataAgentId: ${example.dataAgentId}
///       policyData: ${admin.policyData}
/// variables:
///   admin:
///     fn::invoke:
///       function: gcp:organizations:getIAMPolicy
///       arguments:
///         bindings:
///           - role: roles/geminidataanalytics.dataAgentUser
///             members:
///               - user:jane@example.com
/// ```
///
///
/// ## gcp.gemini.DataAnalyticsDataAgentIamBinding
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.gemini.DataAnalyticsDataAgentIamBinding("binding", {
///     project: example.project,
///     location: example.location,
///     dataAgentId: example.dataAgentId,
///     role: "roles/geminidataanalytics.dataAgentUser",
///     members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.gemini.DataAnalyticsDataAgentIamBinding("binding",
///     project=example["project"],
///     location=example["location"],
///     data_agent_id=example["dataAgentId"],
///     role="roles/geminidataanalytics.dataAgentUser",
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
///     var binding = new Gcp.Gemini.DataAnalyticsDataAgentIamBinding("binding", new()
///     {
///         Project = example.Project,
///         Location = example.Location,
///         DataAgentId = example.DataAgentId,
///         Role = "roles/geminidataanalytics.dataAgentUser",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/gemini"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := gemini.NewDataAnalyticsDataAgentIamBinding(ctx, "binding", &gemini.DataAnalyticsDataAgentIamBindingArgs{
/// 			Project:     pulumi.Any(example.Project),
/// 			Location:    pulumi.Any(example.Location),
/// 			DataAgentId: pulumi.Any(example.DataAgentId),
/// 			Role:        pulumi.String("roles/geminidataanalytics.dataAgentUser"),
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
/// resource "gcp_gemini_data_analytics_data_agent_iam_binding" "binding" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   project       = example.project
///   location      = example.location
///   data_agent_id = example.dataAgentId
///   role          = "roles/geminidataanalytics.dataAgentUser"
///   members       = ["user:jane@example.com"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.gemini.DataAnalyticsDataAgentIamBinding;
/// import com.pulumi.gcp.gemini.DataAnalyticsDataAgentIamBindingArgs;
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
///         var binding = new DataAnalyticsDataAgentIamBinding("binding", DataAnalyticsDataAgentIamBindingArgs.builder()
///             .project(example.get("project"))
///             .location(example.get("location"))
///             .dataAgentId(example.get("dataAgentId"))
///             .role("roles/geminidataanalytics.dataAgentUser")
///             .members("user:jane@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   binding:
///     type: gcp:gemini:DataAnalyticsDataAgentIamBinding
///     properties:
///       project: ${example.project}
///       location: ${example.location}
///       dataAgentId: ${example.dataAgentId}
///       role: roles/geminidataanalytics.dataAgentUser
///       members:
///         - user:jane@example.com
/// ```
///
///
/// ## gcp.gemini.DataAnalyticsDataAgentIamMember
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.gemini.DataAnalyticsDataAgentIamMember("member", {
///     project: example.project,
///     location: example.location,
///     dataAgentId: example.dataAgentId,
///     role: "roles/geminidataanalytics.dataAgentUser",
///     member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.gemini.DataAnalyticsDataAgentIamMember("member",
///     project=example["project"],
///     location=example["location"],
///     data_agent_id=example["dataAgentId"],
///     role="roles/geminidataanalytics.dataAgentUser",
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
///     var member = new Gcp.Gemini.DataAnalyticsDataAgentIamMember("member", new()
///     {
///         Project = example.Project,
///         Location = example.Location,
///         DataAgentId = example.DataAgentId,
///         Role = "roles/geminidataanalytics.dataAgentUser",
///         Member = "user:jane@example.com",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/gemini"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := gemini.NewDataAnalyticsDataAgentIamMember(ctx, "member", &gemini.DataAnalyticsDataAgentIamMemberArgs{
/// 			Project:     pulumi.Any(example.Project),
/// 			Location:    pulumi.Any(example.Location),
/// 			DataAgentId: pulumi.Any(example.DataAgentId),
/// 			Role:        pulumi.String("roles/geminidataanalytics.dataAgentUser"),
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
/// terraform {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_gemini_data_analytics_data_agent_iam_member" "member" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   project       = example.project
///   location      = example.location
///   data_agent_id = example.dataAgentId
///   role          = "roles/geminidataanalytics.dataAgentUser"
///   member        = "user:jane@example.com"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.gemini.DataAnalyticsDataAgentIamMember;
/// import com.pulumi.gcp.gemini.DataAnalyticsDataAgentIamMemberArgs;
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
///         var member = new DataAnalyticsDataAgentIamMember("member", DataAnalyticsDataAgentIamMemberArgs.builder()
///             .project(example.get("project"))
///             .location(example.get("location"))
///             .dataAgentId(example.get("dataAgentId"))
///             .role("roles/geminidataanalytics.dataAgentUser")
///             .member("user:jane@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   member:
///     type: gcp:gemini:DataAnalyticsDataAgentIamMember
///     properties:
///       project: ${example.project}
///       location: ${example.location}
///       dataAgentId: ${example.dataAgentId}
///       role: roles/geminidataanalytics.dataAgentUser
///       member: user:jane@example.com
/// ```
///
///
/// ## Import
///
/// For all import syntaxes, the "resource in question" can take any of the following forms:
///
/// * projects/{{project}}/locations/{{location}}/dataAgents/{{data_agent_id}}
/// * {{project}}/{{location}}/{{data_agent_id}}
/// * {{location}}/{{data_agent_id}}
/// * {{data_agent_id}}
///
/// Any variables not passed in the import command will be taken from the provider configuration.
///
/// Gemini Data Analytics dataagent IAM resources can be imported using the resource identifiers, role, and member.
///
/// IAM member imports use space-delimited identifiers: the resource in question, the role, and the member identity, e.g.
/// ```sh
/// $ terraform import google_gemini_data_analytics_data_agent_iam_member.editor "projects/{{project}}/locations/{{location}}/dataAgents/{{data_agent_id}} roles/geminidataanalytics.dataAgentUser user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
/// ```sh
/// $ terraform import google_gemini_data_analytics_data_agent_iam_binding.editor "projects/{{project}}/locations/{{location}}/dataAgents/{{data_agent_id}} roles/geminidataanalytics.dataAgentUser"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
/// ```sh
/// $ pulumi import gcp:gemini/dataAnalyticsDataAgentIamPolicy:DataAnalyticsDataAgentIamPolicy editor projects/{{project}}/locations/{{location}}/dataAgents/{{data_agent_id}}
/// ```
///
/// &gt; **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class DataAnalyticsDataAgentIamPolicy extends pulumi.CustomResource {
  /// Used to find the parent resource to bind the IAM policy to
  late final pulumi.Output<String> dataAgentId;
  /// (Computed) The etag of the IAM policy.
  late final pulumi.Output<String> etag;
  /// The location of the DataAgent. Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no location is provided in the parent identifier and no
  /// location is specified, it is taken from the provider configuration.
  late final pulumi.Output<String> location;
  /// The policy data generated by
  /// a `gcp.organizations.getIAMPolicy` data source.
  late final pulumi.Output<String> policyData;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  late final pulumi.Output<String> project;

  /// Creates a new [DataAnalyticsDataAgentIamPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DataAnalyticsDataAgentIamPolicy]. {@macro pulumi_gemini_data_analytics_data_agent_iam_policy_data_analytics_data_agent_iam_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DataAnalyticsDataAgentIamPolicy(
    String name, {
    DataAnalyticsDataAgentIamPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:gemini/dataAnalyticsDataAgentIamPolicy:DataAnalyticsDataAgentIamPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '10.2.0').merge(options),
        ) {
    dataAgentId = registerOutput<String>('dataAgentId');
    etag = registerOutput<String>('etag');
    location = registerOutput<String>('location');
    policyData = registerOutput<String>('policyData');
    project = registerOutput<String>('project');
  }

  /// Gets an existing [DataAnalyticsDataAgentIamPolicy] resource's state with the given [name] and [id].
  static DataAnalyticsDataAgentIamPolicy get(
    String name,
    pulumi.Input<String> id, {
    DataAnalyticsDataAgentIamPolicyState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return DataAnalyticsDataAgentIamPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  DataAnalyticsDataAgentIamPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:gemini/dataAnalyticsDataAgentIamPolicy:DataAnalyticsDataAgentIamPolicy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    dataAgentId = registerOutput<String>('dataAgentId');
    etag = registerOutput<String>('etag');
    location = registerOutput<String>('location');
    policyData = registerOutput<String>('policyData');
    project = registerOutput<String>('project');
  }

  /// Creates a typed reference to an existing [DataAnalyticsDataAgentIamPolicy] resource.
  DataAnalyticsDataAgentIamPolicy.reference(String urn)
    : super(
        'gcp:gemini/dataAnalyticsDataAgentIamPolicy:DataAnalyticsDataAgentIamPolicy',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    dataAgentId = registerOutput<String>('dataAgentId');
    etag = registerOutput<String>('etag');
    location = registerOutput<String>('location');
    policyData = registerOutput<String>('policyData');
    project = registerOutput<String>('project');
  }
}
