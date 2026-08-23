import 'package:pulumi/pulumi.dart' as pulumi;
import 'function_iam_policy_args.dart';
import 'function_iam_policy_state.dart';

/// Three different resources help you manage your IAM policy for Cloud Functions (2nd gen) function. Each of these resources serves a different use case:
///
/// * `gcp.cloudfunctionsv2.FunctionIamPolicy`: Authoritative. Sets the IAM policy for the function and replaces any existing policy already attached.
/// * `gcp.cloudfunctionsv2.FunctionIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the function are preserved. Members added outside of Terraform for the same role will be detected as drift and removed on the next `pulumi up`.
/// * `gcp.cloudfunctionsv2.FunctionIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the function are preserved. Members added outside of Terraform will **not** be detected as drift.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.cloudfunctionsv2.FunctionIamPolicy`: Retrieves the IAM policy for the function
///
/// &gt; **Note:** `gcp.cloudfunctionsv2.FunctionIamPolicy` **cannot** be used in conjunction with `gcp.cloudfunctionsv2.FunctionIamBinding` and `gcp.cloudfunctionsv2.FunctionIamMember` or they will fight over what your policy should be.
///
/// &gt; **Note:** `gcp.cloudfunctionsv2.FunctionIamBinding` resources **can be** used in conjunction with `gcp.cloudfunctionsv2.FunctionIamMember` resources **only if** they do not grant privilege to the same role.
///
///
/// ## gcp.cloudfunctionsv2.FunctionIamPolicy
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
/// const policy = new gcp.cloudfunctionsv2.FunctionIamPolicy("policy", {
///     project: _function.project,
///     location: _function.location,
///     cloudFunction: _function.name,
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
/// policy = gcp.cloudfunctionsv2.FunctionIamPolicy("policy",
///     project=function["project"],
///     location=function["location"],
///     cloud_function=function["name"],
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
///     var policy = new Gcp.CloudFunctionsV2.FunctionIamPolicy("policy", new()
///     {
///         Project = function.Project,
///         Location = function.Location,
///         CloudFunction = function.Name,
///         PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudfunctionsv2"
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
/// 		_, err = cloudfunctionsv2.NewFunctionIamPolicy(ctx, "policy", &cloudfunctionsv2.FunctionIamPolicyArgs{
/// 			Project:       pulumi.Any(function.Project),
/// 			Location:      pulumi.Any(function.Location),
/// 			CloudFunction: pulumi.Any(function.Name),
/// 			PolicyData:    pulumi.String(admin.PolicyData),
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
/// resource "gcp_cloudfunctionsv2_functioniampolicy" "policy" {
///   project        = function.project
///   location       = function.location
///   cloud_function = function.name
///   policy_data    = data.gcp_organizations_getiampolicy.admin.policy_data
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
/// import com.pulumi.gcp.cloudfunctionsv2.FunctionIamPolicy;
/// import com.pulumi.gcp.cloudfunctionsv2.FunctionIamPolicyArgs;
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
///         var policy = new FunctionIamPolicy("policy", FunctionIamPolicyArgs.builder()
///             .project(function.get("project"))
///             .location(function.get("location"))
///             .cloudFunction(function.get("name"))
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:cloudfunctionsv2:FunctionIamPolicy
///     properties:
///       project: ${function.project}
///       location: ${function.location}
///       cloudFunction: ${function.name}
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
/// ## gcp.cloudfunctionsv2.FunctionIamBinding
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.cloudfunctionsv2.FunctionIamBinding("binding", {
///     project: _function.project,
///     location: _function.location,
///     cloudFunction: _function.name,
///     role: "roles/viewer",
///     members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.cloudfunctionsv2.FunctionIamBinding("binding",
///     project=function["project"],
///     location=function["location"],
///     cloud_function=function["name"],
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
///     var binding = new Gcp.CloudFunctionsV2.FunctionIamBinding("binding", new()
///     {
///         Project = function.Project,
///         Location = function.Location,
///         CloudFunction = function.Name,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudfunctionsv2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudfunctionsv2.NewFunctionIamBinding(ctx, "binding", &cloudfunctionsv2.FunctionIamBindingArgs{
/// 			Project:       pulumi.Any(function.Project),
/// 			Location:      pulumi.Any(function.Location),
/// 			CloudFunction: pulumi.Any(function.Name),
/// 			Role:          pulumi.String("roles/viewer"),
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
/// resource "gcp_cloudfunctionsv2_functioniambinding" "binding" {
///   project        = function.project
///   location       = function.location
///   cloud_function = function.name
///   role           = "roles/viewer"
///   members        = ["user:jane@example.com"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.cloudfunctionsv2.FunctionIamBinding;
/// import com.pulumi.gcp.cloudfunctionsv2.FunctionIamBindingArgs;
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
///         var binding = new FunctionIamBinding("binding", FunctionIamBindingArgs.builder()
///             .project(function.get("project"))
///             .location(function.get("location"))
///             .cloudFunction(function.get("name"))
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
///     type: gcp:cloudfunctionsv2:FunctionIamBinding
///     properties:
///       project: ${function.project}
///       location: ${function.location}
///       cloudFunction: ${function.name}
///       role: roles/viewer
///       members:
///         - user:jane@example.com
/// ```
///
///
/// ## gcp.cloudfunctionsv2.FunctionIamMember
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.cloudfunctionsv2.FunctionIamMember("member", {
///     project: _function.project,
///     location: _function.location,
///     cloudFunction: _function.name,
///     role: "roles/viewer",
///     member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.cloudfunctionsv2.FunctionIamMember("member",
///     project=function["project"],
///     location=function["location"],
///     cloud_function=function["name"],
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
///     var member = new Gcp.CloudFunctionsV2.FunctionIamMember("member", new()
///     {
///         Project = function.Project,
///         Location = function.Location,
///         CloudFunction = function.Name,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudfunctionsv2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudfunctionsv2.NewFunctionIamMember(ctx, "member", &cloudfunctionsv2.FunctionIamMemberArgs{
/// 			Project:       pulumi.Any(function.Project),
/// 			Location:      pulumi.Any(function.Location),
/// 			CloudFunction: pulumi.Any(function.Name),
/// 			Role:          pulumi.String("roles/viewer"),
/// 			Member:        pulumi.String("user:jane@example.com"),
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
/// resource "gcp_cloudfunctionsv2_functioniammember" "member" {
///   project        = function.project
///   location       = function.location
///   cloud_function = function.name
///   role           = "roles/viewer"
///   member         = "user:jane@example.com"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.cloudfunctionsv2.FunctionIamMember;
/// import com.pulumi.gcp.cloudfunctionsv2.FunctionIamMemberArgs;
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
///         var member = new FunctionIamMember("member", FunctionIamMemberArgs.builder()
///             .project(function.get("project"))
///             .location(function.get("location"))
///             .cloudFunction(function.get("name"))
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
///     type: gcp:cloudfunctionsv2:FunctionIamMember
///     properties:
///       project: ${function.project}
///       location: ${function.location}
///       cloudFunction: ${function.name}
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
/// # IAM policy for Cloud Functions (2nd gen) function
///
/// Three different resources help you manage your IAM policy for Cloud Functions (2nd gen) function. Each of these resources serves a different use case:
///
/// * `gcp.cloudfunctionsv2.FunctionIamPolicy`: Authoritative. Sets the IAM policy for the function and replaces any existing policy already attached.
/// * `gcp.cloudfunctionsv2.FunctionIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the function are preserved. Members added outside of Terraform for the same role will be detected as drift and removed on the next `pulumi up`.
/// * `gcp.cloudfunctionsv2.FunctionIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the function are preserved. Members added outside of Terraform will **not** be detected as drift.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.cloudfunctionsv2.FunctionIamPolicy`: Retrieves the IAM policy for the function
///
/// &gt; **Note:** `gcp.cloudfunctionsv2.FunctionIamPolicy` **cannot** be used in conjunction with `gcp.cloudfunctionsv2.FunctionIamBinding` and `gcp.cloudfunctionsv2.FunctionIamMember` or they will fight over what your policy should be.
///
/// &gt; **Note:** `gcp.cloudfunctionsv2.FunctionIamBinding` resources **can be** used in conjunction with `gcp.cloudfunctionsv2.FunctionIamMember` resources **only if** they do not grant privilege to the same role.
///
///
/// ## gcp.cloudfunctionsv2.FunctionIamPolicy
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
/// const policy = new gcp.cloudfunctionsv2.FunctionIamPolicy("policy", {
///     project: _function.project,
///     location: _function.location,
///     cloudFunction: _function.name,
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
/// policy = gcp.cloudfunctionsv2.FunctionIamPolicy("policy",
///     project=function["project"],
///     location=function["location"],
///     cloud_function=function["name"],
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
///     var policy = new Gcp.CloudFunctionsV2.FunctionIamPolicy("policy", new()
///     {
///         Project = function.Project,
///         Location = function.Location,
///         CloudFunction = function.Name,
///         PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudfunctionsv2"
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
/// 		_, err = cloudfunctionsv2.NewFunctionIamPolicy(ctx, "policy", &cloudfunctionsv2.FunctionIamPolicyArgs{
/// 			Project:       pulumi.Any(function.Project),
/// 			Location:      pulumi.Any(function.Location),
/// 			CloudFunction: pulumi.Any(function.Name),
/// 			PolicyData:    pulumi.String(admin.PolicyData),
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
/// resource "gcp_cloudfunctionsv2_functioniampolicy" "policy" {
///   project        = function.project
///   location       = function.location
///   cloud_function = function.name
///   policy_data    = data.gcp_organizations_getiampolicy.admin.policy_data
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
/// import com.pulumi.gcp.cloudfunctionsv2.FunctionIamPolicy;
/// import com.pulumi.gcp.cloudfunctionsv2.FunctionIamPolicyArgs;
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
///         var policy = new FunctionIamPolicy("policy", FunctionIamPolicyArgs.builder()
///             .project(function.get("project"))
///             .location(function.get("location"))
///             .cloudFunction(function.get("name"))
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:cloudfunctionsv2:FunctionIamPolicy
///     properties:
///       project: ${function.project}
///       location: ${function.location}
///       cloudFunction: ${function.name}
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
/// ## gcp.cloudfunctionsv2.FunctionIamBinding
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.cloudfunctionsv2.FunctionIamBinding("binding", {
///     project: _function.project,
///     location: _function.location,
///     cloudFunction: _function.name,
///     role: "roles/viewer",
///     members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.cloudfunctionsv2.FunctionIamBinding("binding",
///     project=function["project"],
///     location=function["location"],
///     cloud_function=function["name"],
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
///     var binding = new Gcp.CloudFunctionsV2.FunctionIamBinding("binding", new()
///     {
///         Project = function.Project,
///         Location = function.Location,
///         CloudFunction = function.Name,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudfunctionsv2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudfunctionsv2.NewFunctionIamBinding(ctx, "binding", &cloudfunctionsv2.FunctionIamBindingArgs{
/// 			Project:       pulumi.Any(function.Project),
/// 			Location:      pulumi.Any(function.Location),
/// 			CloudFunction: pulumi.Any(function.Name),
/// 			Role:          pulumi.String("roles/viewer"),
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
/// resource "gcp_cloudfunctionsv2_functioniambinding" "binding" {
///   project        = function.project
///   location       = function.location
///   cloud_function = function.name
///   role           = "roles/viewer"
///   members        = ["user:jane@example.com"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.cloudfunctionsv2.FunctionIamBinding;
/// import com.pulumi.gcp.cloudfunctionsv2.FunctionIamBindingArgs;
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
///         var binding = new FunctionIamBinding("binding", FunctionIamBindingArgs.builder()
///             .project(function.get("project"))
///             .location(function.get("location"))
///             .cloudFunction(function.get("name"))
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
///     type: gcp:cloudfunctionsv2:FunctionIamBinding
///     properties:
///       project: ${function.project}
///       location: ${function.location}
///       cloudFunction: ${function.name}
///       role: roles/viewer
///       members:
///         - user:jane@example.com
/// ```
///
///
/// ## gcp.cloudfunctionsv2.FunctionIamMember
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.cloudfunctionsv2.FunctionIamMember("member", {
///     project: _function.project,
///     location: _function.location,
///     cloudFunction: _function.name,
///     role: "roles/viewer",
///     member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.cloudfunctionsv2.FunctionIamMember("member",
///     project=function["project"],
///     location=function["location"],
///     cloud_function=function["name"],
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
///     var member = new Gcp.CloudFunctionsV2.FunctionIamMember("member", new()
///     {
///         Project = function.Project,
///         Location = function.Location,
///         CloudFunction = function.Name,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudfunctionsv2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudfunctionsv2.NewFunctionIamMember(ctx, "member", &cloudfunctionsv2.FunctionIamMemberArgs{
/// 			Project:       pulumi.Any(function.Project),
/// 			Location:      pulumi.Any(function.Location),
/// 			CloudFunction: pulumi.Any(function.Name),
/// 			Role:          pulumi.String("roles/viewer"),
/// 			Member:        pulumi.String("user:jane@example.com"),
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
/// resource "gcp_cloudfunctionsv2_functioniammember" "member" {
///   project        = function.project
///   location       = function.location
///   cloud_function = function.name
///   role           = "roles/viewer"
///   member         = "user:jane@example.com"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.cloudfunctionsv2.FunctionIamMember;
/// import com.pulumi.gcp.cloudfunctionsv2.FunctionIamMemberArgs;
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
///         var member = new FunctionIamMember("member", FunctionIamMemberArgs.builder()
///             .project(function.get("project"))
///             .location(function.get("location"))
///             .cloudFunction(function.get("name"))
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
///     type: gcp:cloudfunctionsv2:FunctionIamMember
///     properties:
///       project: ${function.project}
///       location: ${function.location}
///       cloudFunction: ${function.name}
///       role: roles/viewer
///       member: user:jane@example.com
/// ```
///
///
/// ## Import
///
/// For all import syntaxes, the "resource in question" can take any of the following forms:
///
/// * projects/{{project}}/locations/{{location}}/functions/{{cloud_function}}
/// * {{project}}/{{location}}/{{cloud_function}}
/// * {{location}}/{{cloud_function}}
/// * {{cloud_function}}
///
/// Any variables not passed in the import command will be taken from the provider configuration.
///
/// Cloud Functions (2nd gen) function IAM resources can be imported using the resource identifiers, role, and member.
///
/// IAM member imports use space-delimited identifiers: the resource in question, the role, and the member identity, e.g.
/// ```sh
/// $ terraform import google_cloudfunctions2_function_iam_member.editor "projects/{{project}}/locations/{{location}}/functions/{{cloud_function}} roles/viewer user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
/// ```sh
/// $ terraform import google_cloudfunctions2_function_iam_binding.editor "projects/{{project}}/locations/{{location}}/functions/{{cloud_function}} roles/viewer"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
/// ```sh
/// $ pulumi import gcp:cloudfunctionsv2/functionIamPolicy:FunctionIamPolicy editor projects/{{project}}/locations/{{location}}/functions/{{cloud_function}}
/// ```
///
/// &gt; **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class FunctionIamPolicy extends pulumi.CustomResource {
  /// Used to find the parent resource to bind the IAM policy to
  late final pulumi.Output<String> cloudFunction;
  /// (Computed) The etag of the IAM policy.
  late final pulumi.Output<String> etag;
  /// The location of this cloud function. Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no location is provided in the parent identifier and no
  /// location is specified, it is taken from the provider configuration.
  late final pulumi.Output<String> location;
  /// The policy data generated by
  /// a `gcp.organizations.getIAMPolicy` data source.
  late final pulumi.Output<String> policyData;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  late final pulumi.Output<String> project;

  /// Creates a new [FunctionIamPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FunctionIamPolicy]. {@macro pulumi_cloudfunctionsv2_function_iam_policy_function_iam_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FunctionIamPolicy(
    String name, {
    FunctionIamPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:cloudfunctionsv2/functionIamPolicy:FunctionIamPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    cloudFunction = registerOutput<String>('cloudFunction');
    etag = registerOutput<String>('etag');
    location = registerOutput<String>('location');
    policyData = registerOutput<String>('policyData');
    project = registerOutput<String>('project');
  }

  /// Gets an existing [FunctionIamPolicy] resource's state with the given [name] and [id].
  static FunctionIamPolicy get(
    String name,
    pulumi.Input<String> id, {
    FunctionIamPolicyState? state,
  }) {
    return FunctionIamPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  FunctionIamPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:cloudfunctionsv2/functionIamPolicy:FunctionIamPolicy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    cloudFunction = registerOutput<String>('cloudFunction');
    etag = registerOutput<String>('etag');
    location = registerOutput<String>('location');
    policyData = registerOutput<String>('policyData');
    project = registerOutput<String>('project');
  }
}
