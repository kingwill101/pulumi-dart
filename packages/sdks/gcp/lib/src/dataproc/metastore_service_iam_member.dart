import 'package:pulumi/pulumi.dart' as pulumi;
import 'metastore_service_iam_member_args.dart';
import 'metastore_service_iam_member_condition.dart';
import 'metastore_service_iam_member_state.dart';

/// Three different resources help you manage your IAM policy for Dataproc Metastore Service. Each of these resources serves a different use case:
///
/// * `gcp.dataproc.MetastoreServiceIamPolicy`: Authoritative. Sets the IAM policy for the service and replaces any existing policy already attached.
/// * `gcp.dataproc.MetastoreServiceIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the service are preserved.
/// * `gcp.dataproc.MetastoreServiceIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the service are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.dataproc.MetastoreServiceIamPolicy`: Retrieves the IAM policy for the service
///
/// > **Note:** `gcp.dataproc.MetastoreServiceIamPolicy` **cannot** be used in conjunction with `gcp.dataproc.MetastoreServiceIamBinding` and `gcp.dataproc.MetastoreServiceIamMember` or they will fight over what your policy should be.
///
/// > **Note:** `gcp.dataproc.MetastoreServiceIamBinding` resources **can be** used in conjunction with `gcp.dataproc.MetastoreServiceIamMember` resources **only if** they do not grant privilege to the same role.
///
///
///
/// ## gcp.dataproc.MetastoreServiceIamPolicy
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
/// const policy = new gcp.dataproc.MetastoreServiceIamPolicy("policy", {
///     project: _default.project,
///     location: _default.location,
///     serviceId: _default.serviceId,
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
/// policy = gcp.dataproc.MetastoreServiceIamPolicy("policy",
///     project=default["project"],
///     location=default["location"],
///     service_id=default["serviceId"],
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
///     var policy = new Gcp.Dataproc.MetastoreServiceIamPolicy("policy", new()
///     {
///         Project = @default.Project,
///         Location = @default.Location,
///         ServiceId = @default.ServiceId,
///         PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataproc"
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
/// 		_, err = dataproc.NewMetastoreServiceIamPolicy(ctx, "policy", &dataproc.MetastoreServiceIamPolicyArgs{
/// 			Project:    pulumi.Any(_default.Project),
/// 			Location:   pulumi.Any(_default.Location),
/// 			ServiceId:  pulumi.Any(_default.ServiceId),
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
/// import com.pulumi.gcp.dataproc.MetastoreServiceIamPolicy;
/// import com.pulumi.gcp.dataproc.MetastoreServiceIamPolicyArgs;
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
///         var policy = new MetastoreServiceIamPolicy("policy", MetastoreServiceIamPolicyArgs.builder()
///             .project(default_.project())
///             .location(default_.location())
///             .serviceId(default_.serviceId())
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:dataproc:MetastoreServiceIamPolicy
///     properties:
///       project: ${default.project}
///       location: ${default.location}
///       serviceId: ${default.serviceId}
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
/// ## gcp.dataproc.MetastoreServiceIamBinding
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.dataproc.MetastoreServiceIamBinding("binding", {
///     project: _default.project,
///     location: _default.location,
///     serviceId: _default.serviceId,
///     role: "roles/viewer",
///     members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.dataproc.MetastoreServiceIamBinding("binding",
///     project=default["project"],
///     location=default["location"],
///     service_id=default["serviceId"],
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
///     var binding = new Gcp.Dataproc.MetastoreServiceIamBinding("binding", new()
///     {
///         Project = @default.Project,
///         Location = @default.Location,
///         ServiceId = @default.ServiceId,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataproc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dataproc.NewMetastoreServiceIamBinding(ctx, "binding", &dataproc.MetastoreServiceIamBindingArgs{
/// 			Project:   pulumi.Any(_default.Project),
/// 			Location:  pulumi.Any(_default.Location),
/// 			ServiceId: pulumi.Any(_default.ServiceId),
/// 			Role:      pulumi.String("roles/viewer"),
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
/// import com.pulumi.gcp.dataproc.MetastoreServiceIamBinding;
/// import com.pulumi.gcp.dataproc.MetastoreServiceIamBindingArgs;
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
///         var binding = new MetastoreServiceIamBinding("binding", MetastoreServiceIamBindingArgs.builder()
///             .project(default_.project())
///             .location(default_.location())
///             .serviceId(default_.serviceId())
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
///     type: gcp:dataproc:MetastoreServiceIamBinding
///     properties:
///       project: ${default.project}
///       location: ${default.location}
///       serviceId: ${default.serviceId}
///       role: roles/viewer
///       members:
///         - user:jane@example.com
/// ```
///
///
/// ## gcp.dataproc.MetastoreServiceIamMember
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.dataproc.MetastoreServiceIamMember("member", {
///     project: _default.project,
///     location: _default.location,
///     serviceId: _default.serviceId,
///     role: "roles/viewer",
///     member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.dataproc.MetastoreServiceIamMember("member",
///     project=default["project"],
///     location=default["location"],
///     service_id=default["serviceId"],
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
///     var member = new Gcp.Dataproc.MetastoreServiceIamMember("member", new()
///     {
///         Project = @default.Project,
///         Location = @default.Location,
///         ServiceId = @default.ServiceId,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataproc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dataproc.NewMetastoreServiceIamMember(ctx, "member", &dataproc.MetastoreServiceIamMemberArgs{
/// 			Project:   pulumi.Any(_default.Project),
/// 			Location:  pulumi.Any(_default.Location),
/// 			ServiceId: pulumi.Any(_default.ServiceId),
/// 			Role:      pulumi.String("roles/viewer"),
/// 			Member:    pulumi.String("user:jane@example.com"),
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
/// import com.pulumi.gcp.dataproc.MetastoreServiceIamMember;
/// import com.pulumi.gcp.dataproc.MetastoreServiceIamMemberArgs;
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
///         var member = new MetastoreServiceIamMember("member", MetastoreServiceIamMemberArgs.builder()
///             .project(default_.project())
///             .location(default_.location())
///             .serviceId(default_.serviceId())
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
///     type: gcp:dataproc:MetastoreServiceIamMember
///     properties:
///       project: ${default.project}
///       location: ${default.location}
///       serviceId: ${default.serviceId}
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
/// # IAM policy for Dataproc Metastore Service
///
/// Three different resources help you manage your IAM policy for Dataproc Metastore Service. Each of these resources serves a different use case:
///
/// * `gcp.dataproc.MetastoreServiceIamPolicy`: Authoritative. Sets the IAM policy for the service and replaces any existing policy already attached.
/// * `gcp.dataproc.MetastoreServiceIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the service are preserved.
/// * `gcp.dataproc.MetastoreServiceIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the service are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.dataproc.MetastoreServiceIamPolicy`: Retrieves the IAM policy for the service
///
/// > **Note:** `gcp.dataproc.MetastoreServiceIamPolicy` **cannot** be used in conjunction with `gcp.dataproc.MetastoreServiceIamBinding` and `gcp.dataproc.MetastoreServiceIamMember` or they will fight over what your policy should be.
///
/// > **Note:** `gcp.dataproc.MetastoreServiceIamBinding` resources **can be** used in conjunction with `gcp.dataproc.MetastoreServiceIamMember` resources **only if** they do not grant privilege to the same role.
///
///
///
/// ## gcp.dataproc.MetastoreServiceIamPolicy
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
/// const policy = new gcp.dataproc.MetastoreServiceIamPolicy("policy", {
///     project: _default.project,
///     location: _default.location,
///     serviceId: _default.serviceId,
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
/// policy = gcp.dataproc.MetastoreServiceIamPolicy("policy",
///     project=default["project"],
///     location=default["location"],
///     service_id=default["serviceId"],
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
///     var policy = new Gcp.Dataproc.MetastoreServiceIamPolicy("policy", new()
///     {
///         Project = @default.Project,
///         Location = @default.Location,
///         ServiceId = @default.ServiceId,
///         PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataproc"
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
/// 		_, err = dataproc.NewMetastoreServiceIamPolicy(ctx, "policy", &dataproc.MetastoreServiceIamPolicyArgs{
/// 			Project:    pulumi.Any(_default.Project),
/// 			Location:   pulumi.Any(_default.Location),
/// 			ServiceId:  pulumi.Any(_default.ServiceId),
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
/// import com.pulumi.gcp.dataproc.MetastoreServiceIamPolicy;
/// import com.pulumi.gcp.dataproc.MetastoreServiceIamPolicyArgs;
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
///         var policy = new MetastoreServiceIamPolicy("policy", MetastoreServiceIamPolicyArgs.builder()
///             .project(default_.project())
///             .location(default_.location())
///             .serviceId(default_.serviceId())
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:dataproc:MetastoreServiceIamPolicy
///     properties:
///       project: ${default.project}
///       location: ${default.location}
///       serviceId: ${default.serviceId}
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
/// ## gcp.dataproc.MetastoreServiceIamBinding
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.dataproc.MetastoreServiceIamBinding("binding", {
///     project: _default.project,
///     location: _default.location,
///     serviceId: _default.serviceId,
///     role: "roles/viewer",
///     members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.dataproc.MetastoreServiceIamBinding("binding",
///     project=default["project"],
///     location=default["location"],
///     service_id=default["serviceId"],
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
///     var binding = new Gcp.Dataproc.MetastoreServiceIamBinding("binding", new()
///     {
///         Project = @default.Project,
///         Location = @default.Location,
///         ServiceId = @default.ServiceId,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataproc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dataproc.NewMetastoreServiceIamBinding(ctx, "binding", &dataproc.MetastoreServiceIamBindingArgs{
/// 			Project:   pulumi.Any(_default.Project),
/// 			Location:  pulumi.Any(_default.Location),
/// 			ServiceId: pulumi.Any(_default.ServiceId),
/// 			Role:      pulumi.String("roles/viewer"),
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
/// import com.pulumi.gcp.dataproc.MetastoreServiceIamBinding;
/// import com.pulumi.gcp.dataproc.MetastoreServiceIamBindingArgs;
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
///         var binding = new MetastoreServiceIamBinding("binding", MetastoreServiceIamBindingArgs.builder()
///             .project(default_.project())
///             .location(default_.location())
///             .serviceId(default_.serviceId())
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
///     type: gcp:dataproc:MetastoreServiceIamBinding
///     properties:
///       project: ${default.project}
///       location: ${default.location}
///       serviceId: ${default.serviceId}
///       role: roles/viewer
///       members:
///         - user:jane@example.com
/// ```
///
///
/// ## gcp.dataproc.MetastoreServiceIamMember
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.dataproc.MetastoreServiceIamMember("member", {
///     project: _default.project,
///     location: _default.location,
///     serviceId: _default.serviceId,
///     role: "roles/viewer",
///     member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.dataproc.MetastoreServiceIamMember("member",
///     project=default["project"],
///     location=default["location"],
///     service_id=default["serviceId"],
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
///     var member = new Gcp.Dataproc.MetastoreServiceIamMember("member", new()
///     {
///         Project = @default.Project,
///         Location = @default.Location,
///         ServiceId = @default.ServiceId,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataproc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dataproc.NewMetastoreServiceIamMember(ctx, "member", &dataproc.MetastoreServiceIamMemberArgs{
/// 			Project:   pulumi.Any(_default.Project),
/// 			Location:  pulumi.Any(_default.Location),
/// 			ServiceId: pulumi.Any(_default.ServiceId),
/// 			Role:      pulumi.String("roles/viewer"),
/// 			Member:    pulumi.String("user:jane@example.com"),
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
/// import com.pulumi.gcp.dataproc.MetastoreServiceIamMember;
/// import com.pulumi.gcp.dataproc.MetastoreServiceIamMemberArgs;
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
///         var member = new MetastoreServiceIamMember("member", MetastoreServiceIamMemberArgs.builder()
///             .project(default_.project())
///             .location(default_.location())
///             .serviceId(default_.serviceId())
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
///     type: gcp:dataproc:MetastoreServiceIamMember
///     properties:
///       project: ${default.project}
///       location: ${default.location}
///       serviceId: ${default.serviceId}
///       role: roles/viewer
///       member: user:jane@example.com
/// ```
///
///
/// ## Import
///
/// For all import syntaxes, the "resource in question" can take any of the following forms:
///
/// * projects/{{project}}/locations/{{location}}/services/{{service_id}}
///
/// * {{project}}/{{location}}/{{service_id}}
///
/// * {{location}}/{{service_id}}
///
/// * {{service_id}}
///
/// Any variables not passed in the import command will be taken from the provider configuration.
///
/// Dataproc Metastore service IAM resources can be imported using the resource identifiers, role, and member.
///
/// IAM member imports use space-delimited identifiers: the resource in question, the role, and the member identity, e.g.
///
/// ```sh
/// $ pulumi import gcp:dataproc/metastoreServiceIamMember:MetastoreServiceIamMember editor "projects/{{project}}/locations/{{location}}/services/{{service_id}} roles/viewer user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
///
/// ```sh
/// $ pulumi import gcp:dataproc/metastoreServiceIamMember:MetastoreServiceIamMember editor "projects/{{project}}/locations/{{location}}/services/{{service_id}} roles/viewer"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
///
/// ```sh
/// $ pulumi import gcp:dataproc/metastoreServiceIamMember:MetastoreServiceIamMember editor projects/{{project}}/locations/{{location}}/services/{{service_id}}
/// ```
///
/// -> **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
///
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class MetastoreServiceIamMember extends pulumi.CustomResource {
  late final pulumi.Output<MetastoreServiceIamMemberCondition?> condition;
  /// (Computed) The etag of the IAM policy.
  late final pulumi.Output<String> etag;
  /// The location where the metastore service should reside.
  /// The default value is `global`.
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
  /// `gcp.dataproc.MetastoreServiceIamBinding` can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  late final pulumi.Output<String> role;
  /// Used to find the parent resource to bind the IAM policy to
  late final pulumi.Output<String> serviceId;

  /// Creates a new [MetastoreServiceIamMember].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MetastoreServiceIamMember]. {@macro pulumi_dataproc_metastore_service_iam_member_metastore_service_iam_member_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MetastoreServiceIamMember(
    String name, {
    MetastoreServiceIamMemberArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:dataproc/metastoreServiceIamMember:MetastoreServiceIamMember',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.condition = registerOutput<MetastoreServiceIamMemberCondition?>('condition');
    this.etag = registerOutput<String>('etag');
    this.location = registerOutput<String>('location');
    this.member = registerOutput<String>('member');
    this.project = registerOutput<String>('project');
    this.role = registerOutput<String>('role');
    this.serviceId = registerOutput<String>('serviceId');
  }

  /// Gets an existing [MetastoreServiceIamMember] resource's state with the given [name] and [id].
  static MetastoreServiceIamMember get(
    String name,
    pulumi.Input<String> id, {
    MetastoreServiceIamMemberState? state,
  }) {
    return MetastoreServiceIamMember._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  MetastoreServiceIamMember._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:dataproc/metastoreServiceIamMember:MetastoreServiceIamMember',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.condition = registerOutput<MetastoreServiceIamMemberCondition?>('condition');
    this.etag = registerOutput<String>('etag');
    this.location = registerOutput<String>('location');
    this.member = registerOutput<String>('member');
    this.project = registerOutput<String>('project');
    this.role = registerOutput<String>('role');
    this.serviceId = registerOutput<String>('serviceId');
  }
}
