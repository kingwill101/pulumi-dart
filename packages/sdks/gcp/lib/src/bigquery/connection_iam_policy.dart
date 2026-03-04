import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_iam_policy_args.dart';
import 'connection_iam_policy_state.dart';

/// Three different resources help you manage your IAM policy for BigQuery Connection Connection. Each of these resources serves a different use case:
///
/// * `gcp.bigquery.ConnectionIamPolicy`: Authoritative. Sets the IAM policy for the connection and replaces any existing policy already attached.
/// * `gcp.bigquery.ConnectionIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the connection are preserved.
/// * `gcp.bigquery.ConnectionIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the connection are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.bigquery.ConnectionIamPolicy`: Retrieves the IAM policy for the connection
///
/// &gt; **Note:** `gcp.bigquery.ConnectionIamPolicy` **cannot** be used in conjunction with `gcp.bigquery.ConnectionIamBinding` and `gcp.bigquery.ConnectionIamMember` or they will fight over what your policy should be.
///
/// &gt; **Note:** `gcp.bigquery.ConnectionIamBinding` resources **can be** used in conjunction with `gcp.bigquery.ConnectionIamMember` resources **only if** they do not grant privilege to the same role.
///
///
///
/// ## gcp.bigquery.ConnectionIamPolicy
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
/// const policy = new gcp.bigquery.ConnectionIamPolicy("policy", {
///     project: connection.project,
///     location: connection.location,
///     connectionId: connection.connectionId,
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
/// policy = gcp.bigquery.ConnectionIamPolicy("policy",
///     project=connection["project"],
///     location=connection["location"],
///     connection_id=connection["connectionId"],
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
///     var policy = new Gcp.BigQuery.ConnectionIamPolicy("policy", new()
///     {
///         Project = connection.Project,
///         Location = connection.Location,
///         ConnectionId = connection.ConnectionId,
///         PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigquery"
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
/// 		_, err = bigquery.NewConnectionIamPolicy(ctx, "policy", &bigquery.ConnectionIamPolicyArgs{
/// 			Project:      pulumi.Any(connection.Project),
/// 			Location:     pulumi.Any(connection.Location),
/// 			ConnectionId: pulumi.Any(connection.ConnectionId),
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
/// import com.pulumi.gcp.bigquery.ConnectionIamPolicy;
/// import com.pulumi.gcp.bigquery.ConnectionIamPolicyArgs;
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
///         var policy = new ConnectionIamPolicy("policy", ConnectionIamPolicyArgs.builder()
///             .project(connection.project())
///             .location(connection.location())
///             .connectionId(connection.connectionId())
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:bigquery:ConnectionIamPolicy
///     properties:
///       project: ${connection.project}
///       location: ${connection.location}
///       connectionId: ${connection.connectionId}
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
/// ## gcp.bigquery.ConnectionIamBinding
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.bigquery.ConnectionIamBinding("binding", {
///     project: connection.project,
///     location: connection.location,
///     connectionId: connection.connectionId,
///     role: "roles/viewer",
///     members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.bigquery.ConnectionIamBinding("binding",
///     project=connection["project"],
///     location=connection["location"],
///     connection_id=connection["connectionId"],
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
///     var binding = new Gcp.BigQuery.ConnectionIamBinding("binding", new()
///     {
///         Project = connection.Project,
///         Location = connection.Location,
///         ConnectionId = connection.ConnectionId,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigquery"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := bigquery.NewConnectionIamBinding(ctx, "binding", &bigquery.ConnectionIamBindingArgs{
/// 			Project:      pulumi.Any(connection.Project),
/// 			Location:     pulumi.Any(connection.Location),
/// 			ConnectionId: pulumi.Any(connection.ConnectionId),
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
/// import com.pulumi.gcp.bigquery.ConnectionIamBinding;
/// import com.pulumi.gcp.bigquery.ConnectionIamBindingArgs;
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
///         var binding = new ConnectionIamBinding("binding", ConnectionIamBindingArgs.builder()
///             .project(connection.project())
///             .location(connection.location())
///             .connectionId(connection.connectionId())
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
///     type: gcp:bigquery:ConnectionIamBinding
///     properties:
///       project: ${connection.project}
///       location: ${connection.location}
///       connectionId: ${connection.connectionId}
///       role: roles/viewer
///       members:
///         - user:jane@example.com
/// ```
///
///
/// ## gcp.bigquery.ConnectionIamMember
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.bigquery.ConnectionIamMember("member", {
///     project: connection.project,
///     location: connection.location,
///     connectionId: connection.connectionId,
///     role: "roles/viewer",
///     member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.bigquery.ConnectionIamMember("member",
///     project=connection["project"],
///     location=connection["location"],
///     connection_id=connection["connectionId"],
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
///     var member = new Gcp.BigQuery.ConnectionIamMember("member", new()
///     {
///         Project = connection.Project,
///         Location = connection.Location,
///         ConnectionId = connection.ConnectionId,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigquery"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := bigquery.NewConnectionIamMember(ctx, "member", &bigquery.ConnectionIamMemberArgs{
/// 			Project:      pulumi.Any(connection.Project),
/// 			Location:     pulumi.Any(connection.Location),
/// 			ConnectionId: pulumi.Any(connection.ConnectionId),
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
/// import com.pulumi.gcp.bigquery.ConnectionIamMember;
/// import com.pulumi.gcp.bigquery.ConnectionIamMemberArgs;
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
///         var member = new ConnectionIamMember("member", ConnectionIamMemberArgs.builder()
///             .project(connection.project())
///             .location(connection.location())
///             .connectionId(connection.connectionId())
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
///     type: gcp:bigquery:ConnectionIamMember
///     properties:
///       project: ${connection.project}
///       location: ${connection.location}
///       connectionId: ${connection.connectionId}
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
/// # IAM policy for BigQuery Connection Connection
///
/// Three different resources help you manage your IAM policy for BigQuery Connection Connection. Each of these resources serves a different use case:
///
/// * `gcp.bigquery.ConnectionIamPolicy`: Authoritative. Sets the IAM policy for the connection and replaces any existing policy already attached.
/// * `gcp.bigquery.ConnectionIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the connection are preserved.
/// * `gcp.bigquery.ConnectionIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the connection are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.bigquery.ConnectionIamPolicy`: Retrieves the IAM policy for the connection
///
/// &gt; **Note:** `gcp.bigquery.ConnectionIamPolicy` **cannot** be used in conjunction with `gcp.bigquery.ConnectionIamBinding` and `gcp.bigquery.ConnectionIamMember` or they will fight over what your policy should be.
///
/// &gt; **Note:** `gcp.bigquery.ConnectionIamBinding` resources **can be** used in conjunction with `gcp.bigquery.ConnectionIamMember` resources **only if** they do not grant privilege to the same role.
///
///
///
/// ## gcp.bigquery.ConnectionIamPolicy
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
/// const policy = new gcp.bigquery.ConnectionIamPolicy("policy", {
///     project: connection.project,
///     location: connection.location,
///     connectionId: connection.connectionId,
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
/// policy = gcp.bigquery.ConnectionIamPolicy("policy",
///     project=connection["project"],
///     location=connection["location"],
///     connection_id=connection["connectionId"],
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
///     var policy = new Gcp.BigQuery.ConnectionIamPolicy("policy", new()
///     {
///         Project = connection.Project,
///         Location = connection.Location,
///         ConnectionId = connection.ConnectionId,
///         PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigquery"
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
/// 		_, err = bigquery.NewConnectionIamPolicy(ctx, "policy", &bigquery.ConnectionIamPolicyArgs{
/// 			Project:      pulumi.Any(connection.Project),
/// 			Location:     pulumi.Any(connection.Location),
/// 			ConnectionId: pulumi.Any(connection.ConnectionId),
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
/// import com.pulumi.gcp.bigquery.ConnectionIamPolicy;
/// import com.pulumi.gcp.bigquery.ConnectionIamPolicyArgs;
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
///         var policy = new ConnectionIamPolicy("policy", ConnectionIamPolicyArgs.builder()
///             .project(connection.project())
///             .location(connection.location())
///             .connectionId(connection.connectionId())
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:bigquery:ConnectionIamPolicy
///     properties:
///       project: ${connection.project}
///       location: ${connection.location}
///       connectionId: ${connection.connectionId}
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
/// ## gcp.bigquery.ConnectionIamBinding
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.bigquery.ConnectionIamBinding("binding", {
///     project: connection.project,
///     location: connection.location,
///     connectionId: connection.connectionId,
///     role: "roles/viewer",
///     members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.bigquery.ConnectionIamBinding("binding",
///     project=connection["project"],
///     location=connection["location"],
///     connection_id=connection["connectionId"],
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
///     var binding = new Gcp.BigQuery.ConnectionIamBinding("binding", new()
///     {
///         Project = connection.Project,
///         Location = connection.Location,
///         ConnectionId = connection.ConnectionId,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigquery"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := bigquery.NewConnectionIamBinding(ctx, "binding", &bigquery.ConnectionIamBindingArgs{
/// 			Project:      pulumi.Any(connection.Project),
/// 			Location:     pulumi.Any(connection.Location),
/// 			ConnectionId: pulumi.Any(connection.ConnectionId),
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
/// import com.pulumi.gcp.bigquery.ConnectionIamBinding;
/// import com.pulumi.gcp.bigquery.ConnectionIamBindingArgs;
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
///         var binding = new ConnectionIamBinding("binding", ConnectionIamBindingArgs.builder()
///             .project(connection.project())
///             .location(connection.location())
///             .connectionId(connection.connectionId())
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
///     type: gcp:bigquery:ConnectionIamBinding
///     properties:
///       project: ${connection.project}
///       location: ${connection.location}
///       connectionId: ${connection.connectionId}
///       role: roles/viewer
///       members:
///         - user:jane@example.com
/// ```
///
///
/// ## gcp.bigquery.ConnectionIamMember
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.bigquery.ConnectionIamMember("member", {
///     project: connection.project,
///     location: connection.location,
///     connectionId: connection.connectionId,
///     role: "roles/viewer",
///     member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.bigquery.ConnectionIamMember("member",
///     project=connection["project"],
///     location=connection["location"],
///     connection_id=connection["connectionId"],
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
///     var member = new Gcp.BigQuery.ConnectionIamMember("member", new()
///     {
///         Project = connection.Project,
///         Location = connection.Location,
///         ConnectionId = connection.ConnectionId,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigquery"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := bigquery.NewConnectionIamMember(ctx, "member", &bigquery.ConnectionIamMemberArgs{
/// 			Project:      pulumi.Any(connection.Project),
/// 			Location:     pulumi.Any(connection.Location),
/// 			ConnectionId: pulumi.Any(connection.ConnectionId),
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
/// import com.pulumi.gcp.bigquery.ConnectionIamMember;
/// import com.pulumi.gcp.bigquery.ConnectionIamMemberArgs;
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
///         var member = new ConnectionIamMember("member", ConnectionIamMemberArgs.builder()
///             .project(connection.project())
///             .location(connection.location())
///             .connectionId(connection.connectionId())
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
///     type: gcp:bigquery:ConnectionIamMember
///     properties:
///       project: ${connection.project}
///       location: ${connection.location}
///       connectionId: ${connection.connectionId}
///       role: roles/viewer
///       member: user:jane@example.com
/// ```
///
///
/// ## Import
///
/// For all import syntaxes, the "resource in question" can take any of the following forms:
///
/// * projects/{{project}}/locations/{{location}}/connections/{{connection_id}}
///
/// * {{project}}/{{location}}/{{connection_id}}
///
/// * {{location}}/{{connection_id}}
///
/// * {{connection_id}}
///
/// Any variables not passed in the import command will be taken from the provider configuration.
///
/// BigQuery Connection connection IAM resources can be imported using the resource identifiers, role, and member.
///
/// IAM member imports use space-delimited identifiers: the resource in question, the role, and the member identity, e.g.
///
/// ```sh
/// $ pulumi import gcp:bigquery/connectionIamPolicy:ConnectionIamPolicy editor "projects/{{project}}/locations/{{location}}/connections/{{connection_id}} roles/viewer user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
///
/// ```sh
/// $ pulumi import gcp:bigquery/connectionIamPolicy:ConnectionIamPolicy editor "projects/{{project}}/locations/{{location}}/connections/{{connection_id}} roles/viewer"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
///
/// ```sh
/// $ pulumi import gcp:bigquery/connectionIamPolicy:ConnectionIamPolicy editor projects/{{project}}/locations/{{location}}/connections/{{connection_id}}
/// ```
///
/// -&gt; **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
///
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class ConnectionIamPolicy extends pulumi.CustomResource {
  /// Used to find the parent resource to bind the IAM policy to
  late final pulumi.Output<String> connectionId;

  /// (Computed) The etag of the IAM policy.
  late final pulumi.Output<String> etag;

  /// The geographic location where the connection should reside.
  /// Cloud SQL instance must be in the same location as the connection
  /// with following exceptions: Cloud SQL us-central1 maps to BigQuery US, Cloud SQL europe-west1 maps to BigQuery EU.
  /// Examples: US, EU, asia-northeast1, us-central1, europe-west1.
  /// Spanner Connections same as spanner region
  /// AWS allowed regions are aws-us-east-1
  /// Azure allowed regions are azure-eastus2 Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no location is provided in the parent identifier and no
  /// location is specified, it is taken from the provider configuration.
  late final pulumi.Output<String> location;

  /// The policy data generated by
  /// a `gcp.organizations.getIAMPolicy` data source.
  late final pulumi.Output<String> policyData;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  late final pulumi.Output<String> project;

  /// Creates a new [ConnectionIamPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ConnectionIamPolicy]. {@macro pulumi_bigquery_connection_iam_policy_connection_iam_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ConnectionIamPolicy(
    String name, {
    ConnectionIamPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:bigquery/connectionIamPolicy:ConnectionIamPolicy',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    connectionId = registerOutput<String>('connectionId');
    etag = registerOutput<String>('etag');
    location = registerOutput<String>('location');
    policyData = registerOutput<String>('policyData');
    project = registerOutput<String>('project');
  }

  /// Gets an existing [ConnectionIamPolicy] resource's state with the given [name] and [id].
  static ConnectionIamPolicy get(
    String name,
    pulumi.Input<String> id, {
    ConnectionIamPolicyState? state,
  }) {
    return ConnectionIamPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ConnectionIamPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:bigquery/connectionIamPolicy:ConnectionIamPolicy',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    connectionId = registerOutput<String>('connectionId');
    etag = registerOutput<String>('etag');
    location = registerOutput<String>('location');
    policyData = registerOutput<String>('policyData');
    project = registerOutput<String>('project');
  }
}
