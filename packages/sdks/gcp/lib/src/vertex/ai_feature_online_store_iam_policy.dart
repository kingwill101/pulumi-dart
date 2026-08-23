import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_feature_online_store_iam_policy_args.dart';
import 'ai_feature_online_store_iam_policy_state.dart';

/// Three different resources help you manage your IAM policy for Vertex AI FeatureOnlineStore. Each of these resources serves a different use case:
///
/// * `gcp.vertex.AiFeatureOnlineStoreIamPolicy`: Authoritative. Sets the IAM policy for the featureonlinestore and replaces any existing policy already attached.
/// * `gcp.vertex.AiFeatureOnlineStoreIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the featureonlinestore are preserved. Members added outside of Terraform for the same role will be detected as drift and removed on the next `pulumi up`.
/// * `gcp.vertex.AiFeatureOnlineStoreIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the featureonlinestore are preserved. Members added outside of Terraform will **not** be detected as drift.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.vertex.AiFeatureOnlineStoreIamPolicy`: Retrieves the IAM policy for the featureonlinestore
///
/// &gt; **Note:** `gcp.vertex.AiFeatureOnlineStoreIamPolicy` **cannot** be used in conjunction with `gcp.vertex.AiFeatureOnlineStoreIamBinding` and `gcp.vertex.AiFeatureOnlineStoreIamMember` or they will fight over what your policy should be.
///
/// &gt; **Note:** `gcp.vertex.AiFeatureOnlineStoreIamBinding` resources **can be** used in conjunction with `gcp.vertex.AiFeatureOnlineStoreIamMember` resources **only if** they do not grant privilege to the same role.
///
/// &gt; **Warning:** This resource is in beta, and should be used with the terraform-provider-google-beta provider.
/// See Provider Versions for more details on beta resources.
///
/// ## gcp.vertex.AiFeatureOnlineStoreIamPolicy
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
/// const policy = new gcp.vertex.AiFeatureOnlineStoreIamPolicy("policy", {
///     region: featureOnlineStore.region,
///     featureOnlineStore: featureOnlineStore.name,
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
/// policy = gcp.vertex.AiFeatureOnlineStoreIamPolicy("policy",
///     region=feature_online_store["region"],
///     feature_online_store=feature_online_store["name"],
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
///     var policy = new Gcp.Vertex.AiFeatureOnlineStoreIamPolicy("policy", new()
///     {
///         Region = featureOnlineStore.Region,
///         FeatureOnlineStore = featureOnlineStore.Name,
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
/// 		_, err = vertex.NewAiFeatureOnlineStoreIamPolicy(ctx, "policy", &vertex.AiFeatureOnlineStoreIamPolicyArgs{
/// 			Region:             pulumi.Any(featureOnlineStore.Region),
/// 			FeatureOnlineStore: pulumi.Any(featureOnlineStore.Name),
/// 			PolicyData:         pulumi.String(admin.PolicyData),
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
/// resource "gcp_vertex_aifeatureonlinestoreiampolicy" "policy" {
///   region               = featureOnlineStore.region
///   feature_online_store = featureOnlineStore.name
///   policy_data          = data.gcp_organizations_getiampolicy.admin.policy_data
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
/// import com.pulumi.gcp.vertex.AiFeatureOnlineStoreIamPolicy;
/// import com.pulumi.gcp.vertex.AiFeatureOnlineStoreIamPolicyArgs;
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
///         var policy = new AiFeatureOnlineStoreIamPolicy("policy", AiFeatureOnlineStoreIamPolicyArgs.builder()
///             .region(featureOnlineStore.get("region"))
///             .featureOnlineStore(featureOnlineStore.get("name"))
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:vertex:AiFeatureOnlineStoreIamPolicy
///     properties:
///       region: ${featureOnlineStore.region}
///       featureOnlineStore: ${featureOnlineStore.name}
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
/// ## gcp.vertex.AiFeatureOnlineStoreIamBinding
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.vertex.AiFeatureOnlineStoreIamBinding("binding", {
///     region: featureOnlineStore.region,
///     featureOnlineStore: featureOnlineStore.name,
///     role: "roles/viewer",
///     members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.vertex.AiFeatureOnlineStoreIamBinding("binding",
///     region=feature_online_store["region"],
///     feature_online_store=feature_online_store["name"],
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
///     var binding = new Gcp.Vertex.AiFeatureOnlineStoreIamBinding("binding", new()
///     {
///         Region = featureOnlineStore.Region,
///         FeatureOnlineStore = featureOnlineStore.Name,
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
/// 		_, err := vertex.NewAiFeatureOnlineStoreIamBinding(ctx, "binding", &vertex.AiFeatureOnlineStoreIamBindingArgs{
/// 			Region:             pulumi.Any(featureOnlineStore.Region),
/// 			FeatureOnlineStore: pulumi.Any(featureOnlineStore.Name),
/// 			Role:               pulumi.String("roles/viewer"),
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
/// resource "gcp_vertex_aifeatureonlinestoreiambinding" "binding" {
///   region               = featureOnlineStore.region
///   feature_online_store = featureOnlineStore.name
///   role                 = "roles/viewer"
///   members              = ["user:jane@example.com"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.vertex.AiFeatureOnlineStoreIamBinding;
/// import com.pulumi.gcp.vertex.AiFeatureOnlineStoreIamBindingArgs;
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
///         var binding = new AiFeatureOnlineStoreIamBinding("binding", AiFeatureOnlineStoreIamBindingArgs.builder()
///             .region(featureOnlineStore.get("region"))
///             .featureOnlineStore(featureOnlineStore.get("name"))
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
///     type: gcp:vertex:AiFeatureOnlineStoreIamBinding
///     properties:
///       region: ${featureOnlineStore.region}
///       featureOnlineStore: ${featureOnlineStore.name}
///       role: roles/viewer
///       members:
///         - user:jane@example.com
/// ```
///
///
/// ## gcp.vertex.AiFeatureOnlineStoreIamMember
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.vertex.AiFeatureOnlineStoreIamMember("member", {
///     region: featureOnlineStore.region,
///     featureOnlineStore: featureOnlineStore.name,
///     role: "roles/viewer",
///     member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.vertex.AiFeatureOnlineStoreIamMember("member",
///     region=feature_online_store["region"],
///     feature_online_store=feature_online_store["name"],
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
///     var member = new Gcp.Vertex.AiFeatureOnlineStoreIamMember("member", new()
///     {
///         Region = featureOnlineStore.Region,
///         FeatureOnlineStore = featureOnlineStore.Name,
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
/// 		_, err := vertex.NewAiFeatureOnlineStoreIamMember(ctx, "member", &vertex.AiFeatureOnlineStoreIamMemberArgs{
/// 			Region:             pulumi.Any(featureOnlineStore.Region),
/// 			FeatureOnlineStore: pulumi.Any(featureOnlineStore.Name),
/// 			Role:               pulumi.String("roles/viewer"),
/// 			Member:             pulumi.String("user:jane@example.com"),
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
/// resource "gcp_vertex_aifeatureonlinestoreiammember" "member" {
///   region               = featureOnlineStore.region
///   feature_online_store = featureOnlineStore.name
///   role                 = "roles/viewer"
///   member               = "user:jane@example.com"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.vertex.AiFeatureOnlineStoreIamMember;
/// import com.pulumi.gcp.vertex.AiFeatureOnlineStoreIamMemberArgs;
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
///         var member = new AiFeatureOnlineStoreIamMember("member", AiFeatureOnlineStoreIamMemberArgs.builder()
///             .region(featureOnlineStore.get("region"))
///             .featureOnlineStore(featureOnlineStore.get("name"))
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
///     type: gcp:vertex:AiFeatureOnlineStoreIamMember
///     properties:
///       region: ${featureOnlineStore.region}
///       featureOnlineStore: ${featureOnlineStore.name}
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
/// # IAM policy for Vertex AI FeatureOnlineStore
///
/// Three different resources help you manage your IAM policy for Vertex AI FeatureOnlineStore. Each of these resources serves a different use case:
///
/// * `gcp.vertex.AiFeatureOnlineStoreIamPolicy`: Authoritative. Sets the IAM policy for the featureonlinestore and replaces any existing policy already attached.
/// * `gcp.vertex.AiFeatureOnlineStoreIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the featureonlinestore are preserved. Members added outside of Terraform for the same role will be detected as drift and removed on the next `pulumi up`.
/// * `gcp.vertex.AiFeatureOnlineStoreIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the featureonlinestore are preserved. Members added outside of Terraform will **not** be detected as drift.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.vertex.AiFeatureOnlineStoreIamPolicy`: Retrieves the IAM policy for the featureonlinestore
///
/// &gt; **Note:** `gcp.vertex.AiFeatureOnlineStoreIamPolicy` **cannot** be used in conjunction with `gcp.vertex.AiFeatureOnlineStoreIamBinding` and `gcp.vertex.AiFeatureOnlineStoreIamMember` or they will fight over what your policy should be.
///
/// &gt; **Note:** `gcp.vertex.AiFeatureOnlineStoreIamBinding` resources **can be** used in conjunction with `gcp.vertex.AiFeatureOnlineStoreIamMember` resources **only if** they do not grant privilege to the same role.
///
/// &gt; **Warning:** This resource is in beta, and should be used with the terraform-provider-google-beta provider.
/// See Provider Versions for more details on beta resources.
///
/// ## gcp.vertex.AiFeatureOnlineStoreIamPolicy
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
/// const policy = new gcp.vertex.AiFeatureOnlineStoreIamPolicy("policy", {
///     region: featureOnlineStore.region,
///     featureOnlineStore: featureOnlineStore.name,
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
/// policy = gcp.vertex.AiFeatureOnlineStoreIamPolicy("policy",
///     region=feature_online_store["region"],
///     feature_online_store=feature_online_store["name"],
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
///     var policy = new Gcp.Vertex.AiFeatureOnlineStoreIamPolicy("policy", new()
///     {
///         Region = featureOnlineStore.Region,
///         FeatureOnlineStore = featureOnlineStore.Name,
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
/// 		_, err = vertex.NewAiFeatureOnlineStoreIamPolicy(ctx, "policy", &vertex.AiFeatureOnlineStoreIamPolicyArgs{
/// 			Region:             pulumi.Any(featureOnlineStore.Region),
/// 			FeatureOnlineStore: pulumi.Any(featureOnlineStore.Name),
/// 			PolicyData:         pulumi.String(admin.PolicyData),
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
/// resource "gcp_vertex_aifeatureonlinestoreiampolicy" "policy" {
///   region               = featureOnlineStore.region
///   feature_online_store = featureOnlineStore.name
///   policy_data          = data.gcp_organizations_getiampolicy.admin.policy_data
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
/// import com.pulumi.gcp.vertex.AiFeatureOnlineStoreIamPolicy;
/// import com.pulumi.gcp.vertex.AiFeatureOnlineStoreIamPolicyArgs;
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
///         var policy = new AiFeatureOnlineStoreIamPolicy("policy", AiFeatureOnlineStoreIamPolicyArgs.builder()
///             .region(featureOnlineStore.get("region"))
///             .featureOnlineStore(featureOnlineStore.get("name"))
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:vertex:AiFeatureOnlineStoreIamPolicy
///     properties:
///       region: ${featureOnlineStore.region}
///       featureOnlineStore: ${featureOnlineStore.name}
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
/// ## gcp.vertex.AiFeatureOnlineStoreIamBinding
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.vertex.AiFeatureOnlineStoreIamBinding("binding", {
///     region: featureOnlineStore.region,
///     featureOnlineStore: featureOnlineStore.name,
///     role: "roles/viewer",
///     members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.vertex.AiFeatureOnlineStoreIamBinding("binding",
///     region=feature_online_store["region"],
///     feature_online_store=feature_online_store["name"],
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
///     var binding = new Gcp.Vertex.AiFeatureOnlineStoreIamBinding("binding", new()
///     {
///         Region = featureOnlineStore.Region,
///         FeatureOnlineStore = featureOnlineStore.Name,
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
/// 		_, err := vertex.NewAiFeatureOnlineStoreIamBinding(ctx, "binding", &vertex.AiFeatureOnlineStoreIamBindingArgs{
/// 			Region:             pulumi.Any(featureOnlineStore.Region),
/// 			FeatureOnlineStore: pulumi.Any(featureOnlineStore.Name),
/// 			Role:               pulumi.String("roles/viewer"),
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
/// resource "gcp_vertex_aifeatureonlinestoreiambinding" "binding" {
///   region               = featureOnlineStore.region
///   feature_online_store = featureOnlineStore.name
///   role                 = "roles/viewer"
///   members              = ["user:jane@example.com"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.vertex.AiFeatureOnlineStoreIamBinding;
/// import com.pulumi.gcp.vertex.AiFeatureOnlineStoreIamBindingArgs;
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
///         var binding = new AiFeatureOnlineStoreIamBinding("binding", AiFeatureOnlineStoreIamBindingArgs.builder()
///             .region(featureOnlineStore.get("region"))
///             .featureOnlineStore(featureOnlineStore.get("name"))
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
///     type: gcp:vertex:AiFeatureOnlineStoreIamBinding
///     properties:
///       region: ${featureOnlineStore.region}
///       featureOnlineStore: ${featureOnlineStore.name}
///       role: roles/viewer
///       members:
///         - user:jane@example.com
/// ```
///
///
/// ## gcp.vertex.AiFeatureOnlineStoreIamMember
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.vertex.AiFeatureOnlineStoreIamMember("member", {
///     region: featureOnlineStore.region,
///     featureOnlineStore: featureOnlineStore.name,
///     role: "roles/viewer",
///     member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.vertex.AiFeatureOnlineStoreIamMember("member",
///     region=feature_online_store["region"],
///     feature_online_store=feature_online_store["name"],
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
///     var member = new Gcp.Vertex.AiFeatureOnlineStoreIamMember("member", new()
///     {
///         Region = featureOnlineStore.Region,
///         FeatureOnlineStore = featureOnlineStore.Name,
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
/// 		_, err := vertex.NewAiFeatureOnlineStoreIamMember(ctx, "member", &vertex.AiFeatureOnlineStoreIamMemberArgs{
/// 			Region:             pulumi.Any(featureOnlineStore.Region),
/// 			FeatureOnlineStore: pulumi.Any(featureOnlineStore.Name),
/// 			Role:               pulumi.String("roles/viewer"),
/// 			Member:             pulumi.String("user:jane@example.com"),
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
/// resource "gcp_vertex_aifeatureonlinestoreiammember" "member" {
///   region               = featureOnlineStore.region
///   feature_online_store = featureOnlineStore.name
///   role                 = "roles/viewer"
///   member               = "user:jane@example.com"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.vertex.AiFeatureOnlineStoreIamMember;
/// import com.pulumi.gcp.vertex.AiFeatureOnlineStoreIamMemberArgs;
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
///         var member = new AiFeatureOnlineStoreIamMember("member", AiFeatureOnlineStoreIamMemberArgs.builder()
///             .region(featureOnlineStore.get("region"))
///             .featureOnlineStore(featureOnlineStore.get("name"))
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
///     type: gcp:vertex:AiFeatureOnlineStoreIamMember
///     properties:
///       region: ${featureOnlineStore.region}
///       featureOnlineStore: ${featureOnlineStore.name}
///       role: roles/viewer
///       member: user:jane@example.com
/// ```
///
///
/// ## Import
///
/// For all import syntaxes, the "resource in question" can take any of the following forms:
///
/// * projects/{{project}}/locations/{{region}}/featureOnlineStores/{{name}}
/// * {{project}}/{{region}}/{{name}}
/// * {{region}}/{{name}}
/// * {{name}}
///
/// Any variables not passed in the import command will be taken from the provider configuration.
///
/// Vertex AI featureonlinestore IAM resources can be imported using the resource identifiers, role, and member.
///
/// IAM member imports use space-delimited identifiers: the resource in question, the role, and the member identity, e.g.
/// ```sh
/// $ terraform import google_vertex_ai_feature_online_store_iam_member.editor "projects/{{project}}/locations/{{region}}/featureOnlineStores/{{feature_online_store}} roles/viewer user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
/// ```sh
/// $ terraform import google_vertex_ai_feature_online_store_iam_binding.editor "projects/{{project}}/locations/{{region}}/featureOnlineStores/{{feature_online_store}} roles/viewer"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
/// ```sh
/// $ pulumi import gcp:vertex/aiFeatureOnlineStoreIamPolicy:AiFeatureOnlineStoreIamPolicy editor projects/{{project}}/locations/{{region}}/featureOnlineStores/{{feature_online_store}}
/// ```
///
/// &gt; **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class AiFeatureOnlineStoreIamPolicy extends pulumi.CustomResource {
  /// (Computed) The etag of the IAM policy.
  late final pulumi.Output<String> etag;
  /// Used to find the parent resource to bind the IAM policy to
  late final pulumi.Output<String> featureOnlineStore;
  /// The policy data generated by
  /// a `gcp.organizations.getIAMPolicy` data source.
  late final pulumi.Output<String> policyData;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  late final pulumi.Output<String> project;
  /// The region of feature online store. eg us-central1 Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no region is provided in the parent identifier and no
  /// region is specified, it is taken from the provider configuration.
  late final pulumi.Output<String> region;

  /// Creates a new [AiFeatureOnlineStoreIamPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AiFeatureOnlineStoreIamPolicy]. {@macro pulumi_vertex_ai_feature_online_store_iam_policy_ai_feature_online_store_iam_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AiFeatureOnlineStoreIamPolicy(
    String name, {
    AiFeatureOnlineStoreIamPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:vertex/aiFeatureOnlineStoreIamPolicy:AiFeatureOnlineStoreIamPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    etag = registerOutput<String>('etag');
    featureOnlineStore = registerOutput<String>('featureOnlineStore');
    policyData = registerOutput<String>('policyData');
    project = registerOutput<String>('project');
    region = registerOutput<String>('region');
  }

  /// Gets an existing [AiFeatureOnlineStoreIamPolicy] resource's state with the given [name] and [id].
  static AiFeatureOnlineStoreIamPolicy get(
    String name,
    pulumi.Input<String> id, {
    AiFeatureOnlineStoreIamPolicyState? state,
  }) {
    return AiFeatureOnlineStoreIamPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AiFeatureOnlineStoreIamPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:vertex/aiFeatureOnlineStoreIamPolicy:AiFeatureOnlineStoreIamPolicy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    etag = registerOutput<String>('etag');
    featureOnlineStore = registerOutput<String>('featureOnlineStore');
    policyData = registerOutput<String>('policyData');
    project = registerOutput<String>('project');
    region = registerOutput<String>('region');
  }
}
