import 'package:pulumi/pulumi.dart' as pulumi;
import 'datascan_iam_member_args.dart';
import 'datascan_iam_member_condition.dart';
import 'datascan_iam_member_state.dart';

/// Three different resources help you manage your IAM policy for Dataplex Datascan. Each of these resources serves a different use case:
///
/// * `gcp.dataplex.DatascanIamPolicy`: Authoritative. Sets the IAM policy for the datascan and replaces any existing policy already attached.
/// * `gcp.dataplex.DatascanIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the datascan are preserved.
/// * `gcp.dataplex.DatascanIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the datascan are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.dataplex.DatascanIamPolicy`: Retrieves the IAM policy for the datascan
///
/// > **Note:** `gcp.dataplex.DatascanIamPolicy` **cannot** be used in conjunction with `gcp.dataplex.DatascanIamBinding` and `gcp.dataplex.DatascanIamMember` or they will fight over what your policy should be.
///
/// > **Note:** `gcp.dataplex.DatascanIamBinding` resources **can be** used in conjunction with `gcp.dataplex.DatascanIamMember` resources **only if** they do not grant privilege to the same role.
///
///
///
/// ## gcp.dataplex.DatascanIamPolicy
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
/// const policy = new gcp.dataplex.DatascanIamPolicy("policy", {
///     project: basicProfile.project,
///     location: basicProfile.location,
///     dataScanId: basicProfile.dataScanId,
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
/// policy = gcp.dataplex.DatascanIamPolicy("policy",
///     project=basic_profile["project"],
///     location=basic_profile["location"],
///     data_scan_id=basic_profile["dataScanId"],
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
///     var policy = new Gcp.DataPlex.DatascanIamPolicy("policy", new()
///     {
///         Project = basicProfile.Project,
///         Location = basicProfile.Location,
///         DataScanId = basicProfile.DataScanId,
///         PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataplex"
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
/// 		_, err = dataplex.NewDatascanIamPolicy(ctx, "policy", &dataplex.DatascanIamPolicyArgs{
/// 			Project:    pulumi.Any(basicProfile.Project),
/// 			Location:   pulumi.Any(basicProfile.Location),
/// 			DataScanId: pulumi.Any(basicProfile.DataScanId),
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
/// import com.pulumi.gcp.dataplex.DatascanIamPolicy;
/// import com.pulumi.gcp.dataplex.DatascanIamPolicyArgs;
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
///         var policy = new DatascanIamPolicy("policy", DatascanIamPolicyArgs.builder()
///             .project(basicProfile.project())
///             .location(basicProfile.location())
///             .dataScanId(basicProfile.dataScanId())
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:dataplex:DatascanIamPolicy
///     properties:
///       project: ${basicProfile.project}
///       location: ${basicProfile.location}
///       dataScanId: ${basicProfile.dataScanId}
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
/// ## gcp.dataplex.DatascanIamBinding
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.dataplex.DatascanIamBinding("binding", {
///     project: basicProfile.project,
///     location: basicProfile.location,
///     dataScanId: basicProfile.dataScanId,
///     role: "roles/viewer",
///     members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.dataplex.DatascanIamBinding("binding",
///     project=basic_profile["project"],
///     location=basic_profile["location"],
///     data_scan_id=basic_profile["dataScanId"],
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
///     var binding = new Gcp.DataPlex.DatascanIamBinding("binding", new()
///     {
///         Project = basicProfile.Project,
///         Location = basicProfile.Location,
///         DataScanId = basicProfile.DataScanId,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataplex"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dataplex.NewDatascanIamBinding(ctx, "binding", &dataplex.DatascanIamBindingArgs{
/// 			Project:    pulumi.Any(basicProfile.Project),
/// 			Location:   pulumi.Any(basicProfile.Location),
/// 			DataScanId: pulumi.Any(basicProfile.DataScanId),
/// 			Role:       pulumi.String("roles/viewer"),
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
/// import com.pulumi.gcp.dataplex.DatascanIamBinding;
/// import com.pulumi.gcp.dataplex.DatascanIamBindingArgs;
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
///         var binding = new DatascanIamBinding("binding", DatascanIamBindingArgs.builder()
///             .project(basicProfile.project())
///             .location(basicProfile.location())
///             .dataScanId(basicProfile.dataScanId())
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
///     type: gcp:dataplex:DatascanIamBinding
///     properties:
///       project: ${basicProfile.project}
///       location: ${basicProfile.location}
///       dataScanId: ${basicProfile.dataScanId}
///       role: roles/viewer
///       members:
///         - user:jane@example.com
/// ```
///
///
/// ## gcp.dataplex.DatascanIamMember
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.dataplex.DatascanIamMember("member", {
///     project: basicProfile.project,
///     location: basicProfile.location,
///     dataScanId: basicProfile.dataScanId,
///     role: "roles/viewer",
///     member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.dataplex.DatascanIamMember("member",
///     project=basic_profile["project"],
///     location=basic_profile["location"],
///     data_scan_id=basic_profile["dataScanId"],
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
///     var member = new Gcp.DataPlex.DatascanIamMember("member", new()
///     {
///         Project = basicProfile.Project,
///         Location = basicProfile.Location,
///         DataScanId = basicProfile.DataScanId,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataplex"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dataplex.NewDatascanIamMember(ctx, "member", &dataplex.DatascanIamMemberArgs{
/// 			Project:    pulumi.Any(basicProfile.Project),
/// 			Location:   pulumi.Any(basicProfile.Location),
/// 			DataScanId: pulumi.Any(basicProfile.DataScanId),
/// 			Role:       pulumi.String("roles/viewer"),
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
/// import com.pulumi.gcp.dataplex.DatascanIamMember;
/// import com.pulumi.gcp.dataplex.DatascanIamMemberArgs;
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
///         var member = new DatascanIamMember("member", DatascanIamMemberArgs.builder()
///             .project(basicProfile.project())
///             .location(basicProfile.location())
///             .dataScanId(basicProfile.dataScanId())
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
///     type: gcp:dataplex:DatascanIamMember
///     properties:
///       project: ${basicProfile.project}
///       location: ${basicProfile.location}
///       dataScanId: ${basicProfile.dataScanId}
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
/// # IAM policy for Dataplex Datascan
///
/// Three different resources help you manage your IAM policy for Dataplex Datascan. Each of these resources serves a different use case:
///
/// * `gcp.dataplex.DatascanIamPolicy`: Authoritative. Sets the IAM policy for the datascan and replaces any existing policy already attached.
/// * `gcp.dataplex.DatascanIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the datascan are preserved.
/// * `gcp.dataplex.DatascanIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the datascan are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.dataplex.DatascanIamPolicy`: Retrieves the IAM policy for the datascan
///
/// > **Note:** `gcp.dataplex.DatascanIamPolicy` **cannot** be used in conjunction with `gcp.dataplex.DatascanIamBinding` and `gcp.dataplex.DatascanIamMember` or they will fight over what your policy should be.
///
/// > **Note:** `gcp.dataplex.DatascanIamBinding` resources **can be** used in conjunction with `gcp.dataplex.DatascanIamMember` resources **only if** they do not grant privilege to the same role.
///
///
///
/// ## gcp.dataplex.DatascanIamPolicy
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
/// const policy = new gcp.dataplex.DatascanIamPolicy("policy", {
///     project: basicProfile.project,
///     location: basicProfile.location,
///     dataScanId: basicProfile.dataScanId,
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
/// policy = gcp.dataplex.DatascanIamPolicy("policy",
///     project=basic_profile["project"],
///     location=basic_profile["location"],
///     data_scan_id=basic_profile["dataScanId"],
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
///     var policy = new Gcp.DataPlex.DatascanIamPolicy("policy", new()
///     {
///         Project = basicProfile.Project,
///         Location = basicProfile.Location,
///         DataScanId = basicProfile.DataScanId,
///         PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataplex"
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
/// 		_, err = dataplex.NewDatascanIamPolicy(ctx, "policy", &dataplex.DatascanIamPolicyArgs{
/// 			Project:    pulumi.Any(basicProfile.Project),
/// 			Location:   pulumi.Any(basicProfile.Location),
/// 			DataScanId: pulumi.Any(basicProfile.DataScanId),
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
/// import com.pulumi.gcp.dataplex.DatascanIamPolicy;
/// import com.pulumi.gcp.dataplex.DatascanIamPolicyArgs;
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
///         var policy = new DatascanIamPolicy("policy", DatascanIamPolicyArgs.builder()
///             .project(basicProfile.project())
///             .location(basicProfile.location())
///             .dataScanId(basicProfile.dataScanId())
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:dataplex:DatascanIamPolicy
///     properties:
///       project: ${basicProfile.project}
///       location: ${basicProfile.location}
///       dataScanId: ${basicProfile.dataScanId}
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
/// ## gcp.dataplex.DatascanIamBinding
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.dataplex.DatascanIamBinding("binding", {
///     project: basicProfile.project,
///     location: basicProfile.location,
///     dataScanId: basicProfile.dataScanId,
///     role: "roles/viewer",
///     members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.dataplex.DatascanIamBinding("binding",
///     project=basic_profile["project"],
///     location=basic_profile["location"],
///     data_scan_id=basic_profile["dataScanId"],
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
///     var binding = new Gcp.DataPlex.DatascanIamBinding("binding", new()
///     {
///         Project = basicProfile.Project,
///         Location = basicProfile.Location,
///         DataScanId = basicProfile.DataScanId,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataplex"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dataplex.NewDatascanIamBinding(ctx, "binding", &dataplex.DatascanIamBindingArgs{
/// 			Project:    pulumi.Any(basicProfile.Project),
/// 			Location:   pulumi.Any(basicProfile.Location),
/// 			DataScanId: pulumi.Any(basicProfile.DataScanId),
/// 			Role:       pulumi.String("roles/viewer"),
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
/// import com.pulumi.gcp.dataplex.DatascanIamBinding;
/// import com.pulumi.gcp.dataplex.DatascanIamBindingArgs;
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
///         var binding = new DatascanIamBinding("binding", DatascanIamBindingArgs.builder()
///             .project(basicProfile.project())
///             .location(basicProfile.location())
///             .dataScanId(basicProfile.dataScanId())
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
///     type: gcp:dataplex:DatascanIamBinding
///     properties:
///       project: ${basicProfile.project}
///       location: ${basicProfile.location}
///       dataScanId: ${basicProfile.dataScanId}
///       role: roles/viewer
///       members:
///         - user:jane@example.com
/// ```
///
///
/// ## gcp.dataplex.DatascanIamMember
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.dataplex.DatascanIamMember("member", {
///     project: basicProfile.project,
///     location: basicProfile.location,
///     dataScanId: basicProfile.dataScanId,
///     role: "roles/viewer",
///     member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.dataplex.DatascanIamMember("member",
///     project=basic_profile["project"],
///     location=basic_profile["location"],
///     data_scan_id=basic_profile["dataScanId"],
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
///     var member = new Gcp.DataPlex.DatascanIamMember("member", new()
///     {
///         Project = basicProfile.Project,
///         Location = basicProfile.Location,
///         DataScanId = basicProfile.DataScanId,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataplex"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dataplex.NewDatascanIamMember(ctx, "member", &dataplex.DatascanIamMemberArgs{
/// 			Project:    pulumi.Any(basicProfile.Project),
/// 			Location:   pulumi.Any(basicProfile.Location),
/// 			DataScanId: pulumi.Any(basicProfile.DataScanId),
/// 			Role:       pulumi.String("roles/viewer"),
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
/// import com.pulumi.gcp.dataplex.DatascanIamMember;
/// import com.pulumi.gcp.dataplex.DatascanIamMemberArgs;
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
///         var member = new DatascanIamMember("member", DatascanIamMemberArgs.builder()
///             .project(basicProfile.project())
///             .location(basicProfile.location())
///             .dataScanId(basicProfile.dataScanId())
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
///     type: gcp:dataplex:DatascanIamMember
///     properties:
///       project: ${basicProfile.project}
///       location: ${basicProfile.location}
///       dataScanId: ${basicProfile.dataScanId}
///       role: roles/viewer
///       member: user:jane@example.com
/// ```
///
///
/// ## Import
///
/// For all import syntaxes, the "resource in question" can take any of the following forms:
///
/// * projects/{{project}}/locations/{{location}}/dataScans/{{data_scan_id}}
///
/// * {{project}}/{{location}}/{{data_scan_id}}
///
/// * {{location}}/{{data_scan_id}}
///
/// * {{data_scan_id}}
///
/// Any variables not passed in the import command will be taken from the provider configuration.
///
/// Dataplex datascan IAM resources can be imported using the resource identifiers, role, and member.
///
/// IAM member imports use space-delimited identifiers: the resource in question, the role, and the member identity, e.g.
///
/// ```sh
/// $ pulumi import gcp:dataplex/datascanIamMember:DatascanIamMember editor "projects/{{project}}/locations/{{location}}/dataScans/{{data_scan_id}} roles/viewer user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
///
/// ```sh
/// $ pulumi import gcp:dataplex/datascanIamMember:DatascanIamMember editor "projects/{{project}}/locations/{{location}}/dataScans/{{data_scan_id}} roles/viewer"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
///
/// ```sh
/// $ pulumi import gcp:dataplex/datascanIamMember:DatascanIamMember editor projects/{{project}}/locations/{{location}}/dataScans/{{data_scan_id}}
/// ```
///
/// -> **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
///
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class DatascanIamMember extends pulumi.CustomResource {
  late final pulumi.Output<DatascanIamMemberCondition?> condition;
  /// Used to find the parent resource to bind the IAM policy to
  late final pulumi.Output<String> dataScanId;
  /// (Computed) The etag of the IAM policy.
  late final pulumi.Output<String> etag;
  /// The location where the data scan should reside.
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
  /// `gcp.dataplex.DatascanIamBinding` can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  late final pulumi.Output<String> role;

  /// Creates a new [DatascanIamMember].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DatascanIamMember]. {@macro pulumi_dataplex_datascan_iam_member_datascan_iam_member_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DatascanIamMember(
    String name, {
    DatascanIamMemberArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:dataplex/datascanIamMember:DatascanIamMember',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.condition = registerOutput<DatascanIamMemberCondition?>('condition');
    this.dataScanId = registerOutput<String>('dataScanId');
    this.etag = registerOutput<String>('etag');
    this.location = registerOutput<String>('location');
    this.member = registerOutput<String>('member');
    this.project = registerOutput<String>('project');
    this.role = registerOutput<String>('role');
  }

  /// Gets an existing [DatascanIamMember] resource's state with the given [name] and [id].
  static DatascanIamMember get(
    String name,
    pulumi.Input<String> id, {
    DatascanIamMemberState? state,
  }) {
    return DatascanIamMember._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  DatascanIamMember._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:dataplex/datascanIamMember:DatascanIamMember',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.condition = registerOutput<DatascanIamMemberCondition?>('condition');
    this.dataScanId = registerOutput<String>('dataScanId');
    this.etag = registerOutput<String>('etag');
    this.location = registerOutput<String>('location');
    this.member = registerOutput<String>('member');
    this.project = registerOutput<String>('project');
    this.role = registerOutput<String>('role');
  }
}
