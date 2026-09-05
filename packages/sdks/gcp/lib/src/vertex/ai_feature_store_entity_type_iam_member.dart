import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_feature_store_entity_type_iam_member_args.dart';
import 'ai_feature_store_entity_type_iam_member_condition.dart';
import 'ai_feature_store_entity_type_iam_member_state.dart';

/// Three different resources help you manage your IAM policy for Vertex AI FeaturestoreEntitytype. Each of these resources serves a different use case:
///
/// * `gcp.vertex.AiFeatureStoreEntityTypeIamPolicy`: Authoritative. Sets the IAM policy for the featurestoreentitytype and replaces any existing policy already attached.
/// * `gcp.vertex.AiFeatureStoreEntityTypeIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the featurestoreentitytype are preserved. Members added outside of Terraform for the same role will be detected as drift and removed on the next `pulumi up`.
/// * `gcp.vertex.AiFeatureStoreEntityTypeIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the featurestoreentitytype are preserved. Members added outside of Terraform will **not** be detected as drift.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.vertex.AiFeatureStoreEntityTypeIamPolicy`: Retrieves the IAM policy for the featurestoreentitytype
///
/// &gt; **Note:** `gcp.vertex.AiFeatureStoreEntityTypeIamPolicy` **cannot** be used in conjunction with `gcp.vertex.AiFeatureStoreEntityTypeIamBinding` and `gcp.vertex.AiFeatureStoreEntityTypeIamMember` or they will fight over what your policy should be.
///
/// &gt; **Note:** `gcp.vertex.AiFeatureStoreEntityTypeIamBinding` resources **can be** used in conjunction with `gcp.vertex.AiFeatureStoreEntityTypeIamMember` resources **only if** they do not grant privilege to the same role.
///
/// &gt; **Warning:** This resource is in beta, and should be used with the terraform-provider-google-beta provider.
/// See Provider Versions for more details on beta resources.
///
/// ## gcp.vertex.AiFeatureStoreEntityTypeIamPolicy
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
/// const policy = new gcp.vertex.AiFeatureStoreEntityTypeIamPolicy("policy", {
///     featurestore: entity.featurestore,
///     entitytype: entity.name,
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
/// policy = gcp.vertex.AiFeatureStoreEntityTypeIamPolicy("policy",
///     featurestore=entity["featurestore"],
///     entitytype=entity["name"],
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
///     var policy = new Gcp.Vertex.AiFeatureStoreEntityTypeIamPolicy("policy", new()
///     {
///         Featurestore = entity.Featurestore,
///         Entitytype = entity.Name,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/vertex"
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
/// 		_, err = vertex.NewAiFeatureStoreEntityTypeIamPolicy(ctx, "policy", &vertex.AiFeatureStoreEntityTypeIamPolicyArgs{
/// 			Featurestore: pulumi.Any(entity.Featurestore),
/// 			Entitytype:   pulumi.Any(entity.Name),
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
///     role    = "roles/viewer"
///     members = ["user:jane@example.com"]
///   }
/// }
///
/// resource "gcp_vertex_aifeaturestoreentitytypeiampolicy" "policy" {
///   featurestore = entity.featurestore
///   entitytype   = entity.name
///   policy_data  = data.gcp_organizations_getiampolicy.admin.policy_data
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
/// import com.pulumi.gcp.vertex.AiFeatureStoreEntityTypeIamPolicy;
/// import com.pulumi.gcp.vertex.AiFeatureStoreEntityTypeIamPolicyArgs;
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
///         var policy = new AiFeatureStoreEntityTypeIamPolicy("policy", AiFeatureStoreEntityTypeIamPolicyArgs.builder()
///             .featurestore(entity.get("featurestore"))
///             .entitytype(entity.get("name"))
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:vertex:AiFeatureStoreEntityTypeIamPolicy
///     properties:
///       featurestore: ${entity.featurestore}
///       entitytype: ${entity.name}
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
/// ## gcp.vertex.AiFeatureStoreEntityTypeIamBinding
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.vertex.AiFeatureStoreEntityTypeIamBinding("binding", {
///     featurestore: entity.featurestore,
///     entitytype: entity.name,
///     role: "roles/viewer",
///     members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.vertex.AiFeatureStoreEntityTypeIamBinding("binding",
///     featurestore=entity["featurestore"],
///     entitytype=entity["name"],
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
///     var binding = new Gcp.Vertex.AiFeatureStoreEntityTypeIamBinding("binding", new()
///     {
///         Featurestore = entity.Featurestore,
///         Entitytype = entity.Name,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/vertex"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := vertex.NewAiFeatureStoreEntityTypeIamBinding(ctx, "binding", &vertex.AiFeatureStoreEntityTypeIamBindingArgs{
/// 			Featurestore: pulumi.Any(entity.Featurestore),
/// 			Entitytype:   pulumi.Any(entity.Name),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_vertex_aifeaturestoreentitytypeiambinding" "binding" {
///   featurestore = entity.featurestore
///   entitytype   = entity.name
///   role         = "roles/viewer"
///   members      = ["user:jane@example.com"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.vertex.AiFeatureStoreEntityTypeIamBinding;
/// import com.pulumi.gcp.vertex.AiFeatureStoreEntityTypeIamBindingArgs;
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
///         var binding = new AiFeatureStoreEntityTypeIamBinding("binding", AiFeatureStoreEntityTypeIamBindingArgs.builder()
///             .featurestore(entity.get("featurestore"))
///             .entitytype(entity.get("name"))
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
///     type: gcp:vertex:AiFeatureStoreEntityTypeIamBinding
///     properties:
///       featurestore: ${entity.featurestore}
///       entitytype: ${entity.name}
///       role: roles/viewer
///       members:
///         - user:jane@example.com
/// ```
///
///
/// ## gcp.vertex.AiFeatureStoreEntityTypeIamMember
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.vertex.AiFeatureStoreEntityTypeIamMember("member", {
///     featurestore: entity.featurestore,
///     entitytype: entity.name,
///     role: "roles/viewer",
///     member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.vertex.AiFeatureStoreEntityTypeIamMember("member",
///     featurestore=entity["featurestore"],
///     entitytype=entity["name"],
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
///     var member = new Gcp.Vertex.AiFeatureStoreEntityTypeIamMember("member", new()
///     {
///         Featurestore = entity.Featurestore,
///         Entitytype = entity.Name,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/vertex"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := vertex.NewAiFeatureStoreEntityTypeIamMember(ctx, "member", &vertex.AiFeatureStoreEntityTypeIamMemberArgs{
/// 			Featurestore: pulumi.Any(entity.Featurestore),
/// 			Entitytype:   pulumi.Any(entity.Name),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_vertex_aifeaturestoreentitytypeiammember" "member" {
///   featurestore = entity.featurestore
///   entitytype   = entity.name
///   role         = "roles/viewer"
///   member       = "user:jane@example.com"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.vertex.AiFeatureStoreEntityTypeIamMember;
/// import com.pulumi.gcp.vertex.AiFeatureStoreEntityTypeIamMemberArgs;
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
///         var member = new AiFeatureStoreEntityTypeIamMember("member", AiFeatureStoreEntityTypeIamMemberArgs.builder()
///             .featurestore(entity.get("featurestore"))
///             .entitytype(entity.get("name"))
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
///     type: gcp:vertex:AiFeatureStoreEntityTypeIamMember
///     properties:
///       featurestore: ${entity.featurestore}
///       entitytype: ${entity.name}
///       role: roles/viewer
///       member: user:jane@example.com
/// ```
///
///
///
/// ## &gt; **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
///
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
/// -
///
/// # IAM policy for Vertex AI FeaturestoreEntitytype
///
/// Three different resources help you manage your IAM policy for Vertex AI FeaturestoreEntitytype. Each of these resources serves a different use case:
///
/// * `gcp.vertex.AiFeatureStoreEntityTypeIamPolicy`: Authoritative. Sets the IAM policy for the featurestoreentitytype and replaces any existing policy already attached.
/// * `gcp.vertex.AiFeatureStoreEntityTypeIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the featurestoreentitytype are preserved. Members added outside of Terraform for the same role will be detected as drift and removed on the next `pulumi up`.
/// * `gcp.vertex.AiFeatureStoreEntityTypeIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the featurestoreentitytype are preserved. Members added outside of Terraform will **not** be detected as drift.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.vertex.AiFeatureStoreEntityTypeIamPolicy`: Retrieves the IAM policy for the featurestoreentitytype
///
/// &gt; **Note:** `gcp.vertex.AiFeatureStoreEntityTypeIamPolicy` **cannot** be used in conjunction with `gcp.vertex.AiFeatureStoreEntityTypeIamBinding` and `gcp.vertex.AiFeatureStoreEntityTypeIamMember` or they will fight over what your policy should be.
///
/// &gt; **Note:** `gcp.vertex.AiFeatureStoreEntityTypeIamBinding` resources **can be** used in conjunction with `gcp.vertex.AiFeatureStoreEntityTypeIamMember` resources **only if** they do not grant privilege to the same role.
///
/// &gt; **Warning:** This resource is in beta, and should be used with the terraform-provider-google-beta provider.
/// See Provider Versions for more details on beta resources.
///
/// ## gcp.vertex.AiFeatureStoreEntityTypeIamPolicy
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
/// const policy = new gcp.vertex.AiFeatureStoreEntityTypeIamPolicy("policy", {
///     featurestore: entity.featurestore,
///     entitytype: entity.name,
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
/// policy = gcp.vertex.AiFeatureStoreEntityTypeIamPolicy("policy",
///     featurestore=entity["featurestore"],
///     entitytype=entity["name"],
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
///     var policy = new Gcp.Vertex.AiFeatureStoreEntityTypeIamPolicy("policy", new()
///     {
///         Featurestore = entity.Featurestore,
///         Entitytype = entity.Name,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/vertex"
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
/// 		_, err = vertex.NewAiFeatureStoreEntityTypeIamPolicy(ctx, "policy", &vertex.AiFeatureStoreEntityTypeIamPolicyArgs{
/// 			Featurestore: pulumi.Any(entity.Featurestore),
/// 			Entitytype:   pulumi.Any(entity.Name),
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
///     role    = "roles/viewer"
///     members = ["user:jane@example.com"]
///   }
/// }
///
/// resource "gcp_vertex_aifeaturestoreentitytypeiampolicy" "policy" {
///   featurestore = entity.featurestore
///   entitytype   = entity.name
///   policy_data  = data.gcp_organizations_getiampolicy.admin.policy_data
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
/// import com.pulumi.gcp.vertex.AiFeatureStoreEntityTypeIamPolicy;
/// import com.pulumi.gcp.vertex.AiFeatureStoreEntityTypeIamPolicyArgs;
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
///         var policy = new AiFeatureStoreEntityTypeIamPolicy("policy", AiFeatureStoreEntityTypeIamPolicyArgs.builder()
///             .featurestore(entity.get("featurestore"))
///             .entitytype(entity.get("name"))
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:vertex:AiFeatureStoreEntityTypeIamPolicy
///     properties:
///       featurestore: ${entity.featurestore}
///       entitytype: ${entity.name}
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
/// ## gcp.vertex.AiFeatureStoreEntityTypeIamBinding
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.vertex.AiFeatureStoreEntityTypeIamBinding("binding", {
///     featurestore: entity.featurestore,
///     entitytype: entity.name,
///     role: "roles/viewer",
///     members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.vertex.AiFeatureStoreEntityTypeIamBinding("binding",
///     featurestore=entity["featurestore"],
///     entitytype=entity["name"],
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
///     var binding = new Gcp.Vertex.AiFeatureStoreEntityTypeIamBinding("binding", new()
///     {
///         Featurestore = entity.Featurestore,
///         Entitytype = entity.Name,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/vertex"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := vertex.NewAiFeatureStoreEntityTypeIamBinding(ctx, "binding", &vertex.AiFeatureStoreEntityTypeIamBindingArgs{
/// 			Featurestore: pulumi.Any(entity.Featurestore),
/// 			Entitytype:   pulumi.Any(entity.Name),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_vertex_aifeaturestoreentitytypeiambinding" "binding" {
///   featurestore = entity.featurestore
///   entitytype   = entity.name
///   role         = "roles/viewer"
///   members      = ["user:jane@example.com"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.vertex.AiFeatureStoreEntityTypeIamBinding;
/// import com.pulumi.gcp.vertex.AiFeatureStoreEntityTypeIamBindingArgs;
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
///         var binding = new AiFeatureStoreEntityTypeIamBinding("binding", AiFeatureStoreEntityTypeIamBindingArgs.builder()
///             .featurestore(entity.get("featurestore"))
///             .entitytype(entity.get("name"))
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
///     type: gcp:vertex:AiFeatureStoreEntityTypeIamBinding
///     properties:
///       featurestore: ${entity.featurestore}
///       entitytype: ${entity.name}
///       role: roles/viewer
///       members:
///         - user:jane@example.com
/// ```
///
///
/// ## gcp.vertex.AiFeatureStoreEntityTypeIamMember
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.vertex.AiFeatureStoreEntityTypeIamMember("member", {
///     featurestore: entity.featurestore,
///     entitytype: entity.name,
///     role: "roles/viewer",
///     member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.vertex.AiFeatureStoreEntityTypeIamMember("member",
///     featurestore=entity["featurestore"],
///     entitytype=entity["name"],
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
///     var member = new Gcp.Vertex.AiFeatureStoreEntityTypeIamMember("member", new()
///     {
///         Featurestore = entity.Featurestore,
///         Entitytype = entity.Name,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/vertex"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := vertex.NewAiFeatureStoreEntityTypeIamMember(ctx, "member", &vertex.AiFeatureStoreEntityTypeIamMemberArgs{
/// 			Featurestore: pulumi.Any(entity.Featurestore),
/// 			Entitytype:   pulumi.Any(entity.Name),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_vertex_aifeaturestoreentitytypeiammember" "member" {
///   featurestore = entity.featurestore
///   entitytype   = entity.name
///   role         = "roles/viewer"
///   member       = "user:jane@example.com"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.vertex.AiFeatureStoreEntityTypeIamMember;
/// import com.pulumi.gcp.vertex.AiFeatureStoreEntityTypeIamMemberArgs;
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
///         var member = new AiFeatureStoreEntityTypeIamMember("member", AiFeatureStoreEntityTypeIamMemberArgs.builder()
///             .featurestore(entity.get("featurestore"))
///             .entitytype(entity.get("name"))
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
///     type: gcp:vertex:AiFeatureStoreEntityTypeIamMember
///     properties:
///       featurestore: ${entity.featurestore}
///       entitytype: ${entity.name}
///       role: roles/viewer
///       member: user:jane@example.com
/// ```
///
///
/// ## Import
///
/// For all import syntaxes, the "resource in question" can take any of the following forms:
///
/// * {{featurestore}}/entityTypes/{{name}}
/// * {{name}}
///
/// Any variables not passed in the import command will be taken from the provider configuration.
///
/// Vertex AI featurestoreentitytype IAM resources can be imported using the resource identifiers, role, and member.
///
/// IAM member imports use space-delimited identifiers: the resource in question, the role, and the member identity, e.g.
/// ```sh
/// $ terraform import google_vertex_ai_featurestore_entitytype_iam_member.editor "{{featurestore}}/entityTypes/{{featurestore_entitytype}} roles/viewer user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
/// ```sh
/// $ terraform import google_vertex_ai_featurestore_entitytype_iam_binding.editor "{{featurestore}}/entityTypes/{{featurestore_entitytype}} roles/viewer"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
/// ```sh
/// $ pulumi import gcp:vertex/aiFeatureStoreEntityTypeIamMember:AiFeatureStoreEntityTypeIamMember editor {{featurestore}}/entityTypes/{{featurestore_entitytype}}
/// ```
///
/// &gt; **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class AiFeatureStoreEntityTypeIamMember extends pulumi.CustomResource {
  late final pulumi.Output<AiFeatureStoreEntityTypeIamMemberCondition?> condition;
  /// Used to find the parent resource to bind the IAM policy to
  late final pulumi.Output<String> entitytype;
  /// (Computed) The etag of the IAM policy.
  late final pulumi.Output<String> etag;
  /// The name of the Featurestore to use, in the format projects/{project}/locations/{location}/featurestores/{featurestore}. Used to find the parent resource to bind the IAM policy to
  late final pulumi.Output<String> featurestore;
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
  /// The role that should be applied. Only one
  /// `gcp.vertex.AiFeatureStoreEntityTypeIamBinding` can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  late final pulumi.Output<String> role;

  /// Creates a new [AiFeatureStoreEntityTypeIamMember].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AiFeatureStoreEntityTypeIamMember]. {@macro pulumi_vertex_ai_feature_store_entity_type_iam_member_ai_feature_store_entity_type_iam_member_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AiFeatureStoreEntityTypeIamMember(
    String name, {
    AiFeatureStoreEntityTypeIamMemberArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:vertex/aiFeatureStoreEntityTypeIamMember:AiFeatureStoreEntityTypeIamMember',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.36.1').merge(options),
        ) {
    condition = registerOutput<AiFeatureStoreEntityTypeIamMemberCondition?>('condition', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiFeatureStoreEntityTypeIamMemberCondition.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    entitytype = registerOutput<String>('entitytype');
    etag = registerOutput<String>('etag');
    featurestore = registerOutput<String>('featurestore');
    member = registerOutput<String>('member');
    role = registerOutput<String>('role');
  }

  /// Gets an existing [AiFeatureStoreEntityTypeIamMember] resource's state with the given [name] and [id].
  static AiFeatureStoreEntityTypeIamMember get(
    String name,
    pulumi.Input<String> id, {
    AiFeatureStoreEntityTypeIamMemberState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return AiFeatureStoreEntityTypeIamMember._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  AiFeatureStoreEntityTypeIamMember._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:vertex/aiFeatureStoreEntityTypeIamMember:AiFeatureStoreEntityTypeIamMember',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    condition = registerOutput<AiFeatureStoreEntityTypeIamMemberCondition?>('condition', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiFeatureStoreEntityTypeIamMemberCondition.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    entitytype = registerOutput<String>('entitytype');
    etag = registerOutput<String>('etag');
    featurestore = registerOutput<String>('featurestore');
    member = registerOutput<String>('member');
    role = registerOutput<String>('role');
  }

  /// Creates a typed reference to an existing [AiFeatureStoreEntityTypeIamMember] resource.
  AiFeatureStoreEntityTypeIamMember.reference(String urn)
    : super(
        'gcp:vertex/aiFeatureStoreEntityTypeIamMember:AiFeatureStoreEntityTypeIamMember',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    condition = registerOutput<AiFeatureStoreEntityTypeIamMemberCondition?>('condition', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiFeatureStoreEntityTypeIamMemberCondition.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    entitytype = registerOutput<String>('entitytype');
    etag = registerOutput<String>('etag');
    featurestore = registerOutput<String>('featurestore');
    member = registerOutput<String>('member');
    role = registerOutput<String>('role');
  }
}
