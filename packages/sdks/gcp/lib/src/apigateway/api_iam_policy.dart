import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_iam_policy_args.dart';
import 'api_iam_policy_state.dart';

/// Three different resources help you manage your IAM policy for API Gateway Api. Each of these resources serves a different use case:
///
/// * `gcp.apigateway.ApiIamPolicy`: Authoritative. Sets the IAM policy for the api and replaces any existing policy already attached.
/// * `gcp.apigateway.ApiIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the api are preserved.
/// * `gcp.apigateway.ApiIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the api are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.apigateway.ApiIamPolicy`: Retrieves the IAM policy for the api
///
/// &gt; **Note:** `gcp.apigateway.ApiIamPolicy` **cannot** be used in conjunction with `gcp.apigateway.ApiIamBinding` and `gcp.apigateway.ApiIamMember` or they will fight over what your policy should be.
///
/// &gt; **Note:** `gcp.apigateway.ApiIamBinding` resources **can be** used in conjunction with `gcp.apigateway.ApiIamMember` resources **only if** they do not grant privilege to the same role.
///
///
/// ## gcp.apigateway.ApiIamPolicy
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const admin = gcp.organizations.getIAMPolicy({
///     bindings: [{
///         role: "roles/apigateway.viewer",
///         members: ["user:jane@example.com"],
///     }],
/// });
/// const policy = new gcp.apigateway.ApiIamPolicy("policy", {
///     project: api.project,
///     api: api.apiId,
///     policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
///     "role": "roles/apigateway.viewer",
///     "members": ["user:jane@example.com"],
/// }])
/// policy = gcp.apigateway.ApiIamPolicy("policy",
///     project=api["project"],
///     api=api["apiId"],
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
///                 Role = "roles/apigateway.viewer",
///                 Members = new[]
///                 {
///                     "user:jane@example.com",
///                 },
///             },
///         },
///     });
///
///     var policy = new Gcp.ApiGateway.ApiIamPolicy("policy", new()
///     {
///         Project = api.Project,
///         Api = api.ApiId,
///         PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/apigateway"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		admin, err := organizations.LookupIAMPolicy(ctx, &organizations.LookupIAMPolicyArgs{
/// 			Bindings: []organizations.GetIAMPolicyBinding{
/// 				{
/// 					Role: "roles/apigateway.viewer",
/// 					Members: []string{
/// 						"user:jane@example.com",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = apigateway.NewApiIamPolicy(ctx, "policy", &apigateway.ApiIamPolicyArgs{
/// 			Project:    pulumi.Any(api.Project),
/// 			Api:        pulumi.Any(api.ApiId),
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
/// import com.pulumi.gcp.apigateway.ApiIamPolicy;
/// import com.pulumi.gcp.apigateway.ApiIamPolicyArgs;
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
///                 .role("roles/apigateway.viewer")
///                 .members("user:jane@example.com")
///                 .build())
///             .build());
///
///         var policy = new ApiIamPolicy("policy", ApiIamPolicyArgs.builder()
///             .project(api.project())
///             .api(api.apiId())
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:apigateway:ApiIamPolicy
///     properties:
///       project: ${api.project}
///       api: ${api.apiId}
///       policyData: ${admin.policyData}
/// variables:
///   admin:
///     fn::invoke:
///       function: gcp:organizations:getIAMPolicy
///       arguments:
///         bindings:
///           - role: roles/apigateway.viewer
///             members:
///               - user:jane@example.com
/// ```
///
///
/// ## gcp.apigateway.ApiIamBinding
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.apigateway.ApiIamBinding("binding", {
///     project: api.project,
///     api: api.apiId,
///     role: "roles/apigateway.viewer",
///     members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.apigateway.ApiIamBinding("binding",
///     project=api["project"],
///     api=api["apiId"],
///     role="roles/apigateway.viewer",
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
///     var binding = new Gcp.ApiGateway.ApiIamBinding("binding", new()
///     {
///         Project = api.Project,
///         Api = api.ApiId,
///         Role = "roles/apigateway.viewer",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/apigateway"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := apigateway.NewApiIamBinding(ctx, "binding", &apigateway.ApiIamBindingArgs{
/// 			Project: pulumi.Any(api.Project),
/// 			Api:     pulumi.Any(api.ApiId),
/// 			Role:    pulumi.String("roles/apigateway.viewer"),
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
/// import com.pulumi.gcp.apigateway.ApiIamBinding;
/// import com.pulumi.gcp.apigateway.ApiIamBindingArgs;
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
///         var binding = new ApiIamBinding("binding", ApiIamBindingArgs.builder()
///             .project(api.project())
///             .api(api.apiId())
///             .role("roles/apigateway.viewer")
///             .members("user:jane@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   binding:
///     type: gcp:apigateway:ApiIamBinding
///     properties:
///       project: ${api.project}
///       api: ${api.apiId}
///       role: roles/apigateway.viewer
///       members:
///         - user:jane@example.com
/// ```
///
///
/// ## gcp.apigateway.ApiIamMember
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.apigateway.ApiIamMember("member", {
///     project: api.project,
///     api: api.apiId,
///     role: "roles/apigateway.viewer",
///     member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.apigateway.ApiIamMember("member",
///     project=api["project"],
///     api=api["apiId"],
///     role="roles/apigateway.viewer",
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
///     var member = new Gcp.ApiGateway.ApiIamMember("member", new()
///     {
///         Project = api.Project,
///         Api = api.ApiId,
///         Role = "roles/apigateway.viewer",
///         Member = "user:jane@example.com",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/apigateway"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := apigateway.NewApiIamMember(ctx, "member", &apigateway.ApiIamMemberArgs{
/// 			Project: pulumi.Any(api.Project),
/// 			Api:     pulumi.Any(api.ApiId),
/// 			Role:    pulumi.String("roles/apigateway.viewer"),
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
/// import com.pulumi.gcp.apigateway.ApiIamMember;
/// import com.pulumi.gcp.apigateway.ApiIamMemberArgs;
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
///         var member = new ApiIamMember("member", ApiIamMemberArgs.builder()
///             .project(api.project())
///             .api(api.apiId())
///             .role("roles/apigateway.viewer")
///             .member("user:jane@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   member:
///     type: gcp:apigateway:ApiIamMember
///     properties:
///       project: ${api.project}
///       api: ${api.apiId}
///       role: roles/apigateway.viewer
///       member: user:jane@example.com
/// ```
///
///
///
/// ## This resource supports User Project Overrides.
///
/// -
///
/// # IAM policy for API Gateway Api
///
/// Three different resources help you manage your IAM policy for API Gateway Api. Each of these resources serves a different use case:
///
/// * `gcp.apigateway.ApiIamPolicy`: Authoritative. Sets the IAM policy for the api and replaces any existing policy already attached.
/// * `gcp.apigateway.ApiIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the api are preserved.
/// * `gcp.apigateway.ApiIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the api are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.apigateway.ApiIamPolicy`: Retrieves the IAM policy for the api
///
/// &gt; **Note:** `gcp.apigateway.ApiIamPolicy` **cannot** be used in conjunction with `gcp.apigateway.ApiIamBinding` and `gcp.apigateway.ApiIamMember` or they will fight over what your policy should be.
///
/// &gt; **Note:** `gcp.apigateway.ApiIamBinding` resources **can be** used in conjunction with `gcp.apigateway.ApiIamMember` resources **only if** they do not grant privilege to the same role.
///
///
/// ## gcp.apigateway.ApiIamPolicy
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const admin = gcp.organizations.getIAMPolicy({
///     bindings: [{
///         role: "roles/apigateway.viewer",
///         members: ["user:jane@example.com"],
///     }],
/// });
/// const policy = new gcp.apigateway.ApiIamPolicy("policy", {
///     project: api.project,
///     api: api.apiId,
///     policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
///     "role": "roles/apigateway.viewer",
///     "members": ["user:jane@example.com"],
/// }])
/// policy = gcp.apigateway.ApiIamPolicy("policy",
///     project=api["project"],
///     api=api["apiId"],
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
///                 Role = "roles/apigateway.viewer",
///                 Members = new[]
///                 {
///                     "user:jane@example.com",
///                 },
///             },
///         },
///     });
///
///     var policy = new Gcp.ApiGateway.ApiIamPolicy("policy", new()
///     {
///         Project = api.Project,
///         Api = api.ApiId,
///         PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/apigateway"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		admin, err := organizations.LookupIAMPolicy(ctx, &organizations.LookupIAMPolicyArgs{
/// 			Bindings: []organizations.GetIAMPolicyBinding{
/// 				{
/// 					Role: "roles/apigateway.viewer",
/// 					Members: []string{
/// 						"user:jane@example.com",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = apigateway.NewApiIamPolicy(ctx, "policy", &apigateway.ApiIamPolicyArgs{
/// 			Project:    pulumi.Any(api.Project),
/// 			Api:        pulumi.Any(api.ApiId),
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
/// import com.pulumi.gcp.apigateway.ApiIamPolicy;
/// import com.pulumi.gcp.apigateway.ApiIamPolicyArgs;
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
///                 .role("roles/apigateway.viewer")
///                 .members("user:jane@example.com")
///                 .build())
///             .build());
///
///         var policy = new ApiIamPolicy("policy", ApiIamPolicyArgs.builder()
///             .project(api.project())
///             .api(api.apiId())
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:apigateway:ApiIamPolicy
///     properties:
///       project: ${api.project}
///       api: ${api.apiId}
///       policyData: ${admin.policyData}
/// variables:
///   admin:
///     fn::invoke:
///       function: gcp:organizations:getIAMPolicy
///       arguments:
///         bindings:
///           - role: roles/apigateway.viewer
///             members:
///               - user:jane@example.com
/// ```
///
///
/// ## gcp.apigateway.ApiIamBinding
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.apigateway.ApiIamBinding("binding", {
///     project: api.project,
///     api: api.apiId,
///     role: "roles/apigateway.viewer",
///     members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.apigateway.ApiIamBinding("binding",
///     project=api["project"],
///     api=api["apiId"],
///     role="roles/apigateway.viewer",
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
///     var binding = new Gcp.ApiGateway.ApiIamBinding("binding", new()
///     {
///         Project = api.Project,
///         Api = api.ApiId,
///         Role = "roles/apigateway.viewer",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/apigateway"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := apigateway.NewApiIamBinding(ctx, "binding", &apigateway.ApiIamBindingArgs{
/// 			Project: pulumi.Any(api.Project),
/// 			Api:     pulumi.Any(api.ApiId),
/// 			Role:    pulumi.String("roles/apigateway.viewer"),
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
/// import com.pulumi.gcp.apigateway.ApiIamBinding;
/// import com.pulumi.gcp.apigateway.ApiIamBindingArgs;
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
///         var binding = new ApiIamBinding("binding", ApiIamBindingArgs.builder()
///             .project(api.project())
///             .api(api.apiId())
///             .role("roles/apigateway.viewer")
///             .members("user:jane@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   binding:
///     type: gcp:apigateway:ApiIamBinding
///     properties:
///       project: ${api.project}
///       api: ${api.apiId}
///       role: roles/apigateway.viewer
///       members:
///         - user:jane@example.com
/// ```
///
///
/// ## gcp.apigateway.ApiIamMember
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.apigateway.ApiIamMember("member", {
///     project: api.project,
///     api: api.apiId,
///     role: "roles/apigateway.viewer",
///     member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.apigateway.ApiIamMember("member",
///     project=api["project"],
///     api=api["apiId"],
///     role="roles/apigateway.viewer",
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
///     var member = new Gcp.ApiGateway.ApiIamMember("member", new()
///     {
///         Project = api.Project,
///         Api = api.ApiId,
///         Role = "roles/apigateway.viewer",
///         Member = "user:jane@example.com",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/apigateway"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := apigateway.NewApiIamMember(ctx, "member", &apigateway.ApiIamMemberArgs{
/// 			Project: pulumi.Any(api.Project),
/// 			Api:     pulumi.Any(api.ApiId),
/// 			Role:    pulumi.String("roles/apigateway.viewer"),
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
/// import com.pulumi.gcp.apigateway.ApiIamMember;
/// import com.pulumi.gcp.apigateway.ApiIamMemberArgs;
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
///         var member = new ApiIamMember("member", ApiIamMemberArgs.builder()
///             .project(api.project())
///             .api(api.apiId())
///             .role("roles/apigateway.viewer")
///             .member("user:jane@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   member:
///     type: gcp:apigateway:ApiIamMember
///     properties:
///       project: ${api.project}
///       api: ${api.apiId}
///       role: roles/apigateway.viewer
///       member: user:jane@example.com
/// ```
///
///
/// ## Import
///
/// For all import syntaxes, the "resource in question" can take any of the following forms:
///
/// * projects/{{project}}/locations/global/apis/{{api}}
///
/// * {{project}}/{{api}}
///
/// * {{api}}
///
/// Any variables not passed in the import command will be taken from the provider configuration.
///
/// API Gateway api IAM resources can be imported using the resource identifiers, role, and member.
///
/// IAM member imports use space-delimited identifiers: the resource in question, the role, and the member identity, e.g.
///
/// ```sh
/// $ pulumi import gcp:apigateway/apiIamPolicy:ApiIamPolicy editor "projects/{{project}}/locations/global/apis/{{api}} roles/apigateway.viewer user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
///
/// ```sh
/// $ pulumi import gcp:apigateway/apiIamPolicy:ApiIamPolicy editor "projects/{{project}}/locations/global/apis/{{api}} roles/apigateway.viewer"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
///
/// ```sh
/// $ pulumi import gcp:apigateway/apiIamPolicy:ApiIamPolicy editor projects/{{project}}/locations/global/apis/{{api}}
/// ```
///
/// -&gt; **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
///
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class ApiIamPolicy extends pulumi.CustomResource {
  /// Used to find the parent resource to bind the IAM policy to
  late final pulumi.Output<String> api;

  /// (Computed) The etag of the IAM policy.
  late final pulumi.Output<String> etag;

  /// The policy data generated by
  /// a `gcp.organizations.getIAMPolicy` data source.
  late final pulumi.Output<String> policyData;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  late final pulumi.Output<String> project;

  /// Creates a new [ApiIamPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ApiIamPolicy]. {@macro pulumi_apigateway_api_iam_policy_api_iam_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ApiIamPolicy(
    String name, {
    ApiIamPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:apigateway/apiIamPolicy:ApiIamPolicy',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    api = registerOutput<String>('api');
    etag = registerOutput<String>('etag');
    policyData = registerOutput<String>('policyData');
    project = registerOutput<String>('project');
  }

  /// Gets an existing [ApiIamPolicy] resource's state with the given [name] and [id].
  static ApiIamPolicy get(
    String name,
    pulumi.Input<String> id, {
    ApiIamPolicyState? state,
  }) {
    return ApiIamPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ApiIamPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:apigateway/apiIamPolicy:ApiIamPolicy',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    api = registerOutput<String>('api');
    etag = registerOutput<String>('etag');
    policyData = registerOutput<String>('policyData');
    project = registerOutput<String>('project');
  }
}
