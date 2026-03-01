import 'package:pulumi/pulumi.dart' as pulumi;
import 'metastore_database_iam_policy_args.dart';
import 'metastore_database_iam_policy_state.dart';

/// Three different resources help you manage your IAM policy for Dataproc Metastore Database. Each of these resources serves a different use case:
///
/// * `gcp.dataproc.MetastoreDatabaseIamPolicy`: Authoritative. Sets the IAM policy for the database and replaces any existing policy already attached.
/// * `gcp.dataproc.MetastoreDatabaseIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the database are preserved.
/// * `gcp.dataproc.MetastoreDatabaseIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the database are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.dataproc.MetastoreDatabaseIamPolicy`: Retrieves the IAM policy for the database
///
/// > **Note:** `gcp.dataproc.MetastoreDatabaseIamPolicy` **cannot** be used in conjunction with `gcp.dataproc.MetastoreDatabaseIamBinding` and `gcp.dataproc.MetastoreDatabaseIamMember` or they will fight over what your policy should be.
///
/// > **Note:** `gcp.dataproc.MetastoreDatabaseIamBinding` resources **can be** used in conjunction with `gcp.dataproc.MetastoreDatabaseIamMember` resources **only if** they do not grant privilege to the same role.
///
///
///
/// ## gcp.dataproc.MetastoreDatabaseIamPolicy
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
/// const policy = new gcp.dataproc.MetastoreDatabaseIamPolicy("policy", {
///     project: dpmsService.project,
///     location: dpmsService.location,
///     serviceId: dpmsService.serviceId,
///     database: hive.hiveConfig[0].properties.database,
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
/// policy = gcp.dataproc.MetastoreDatabaseIamPolicy("policy",
///     project=dpms_service["project"],
///     location=dpms_service["location"],
///     service_id=dpms_service["serviceId"],
///     database=hive["hiveConfig"][0]["properties"]["database"],
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
///     var policy = new Gcp.Dataproc.MetastoreDatabaseIamPolicy("policy", new()
///     {
///         Project = dpmsService.Project,
///         Location = dpmsService.Location,
///         ServiceId = dpmsService.ServiceId,
///         Database = hive.HiveConfig[0].Properties.Database,
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
/// 		_, err = dataproc.NewMetastoreDatabaseIamPolicy(ctx, "policy", &dataproc.MetastoreDatabaseIamPolicyArgs{
/// 			Project:    pulumi.Any(dpmsService.Project),
/// 			Location:   pulumi.Any(dpmsService.Location),
/// 			ServiceId:  pulumi.Any(dpmsService.ServiceId),
/// 			Database:   pulumi.Any(hive.HiveConfig[0].Properties.Database),
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
/// import com.pulumi.gcp.dataproc.MetastoreDatabaseIamPolicy;
/// import com.pulumi.gcp.dataproc.MetastoreDatabaseIamPolicyArgs;
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
///         var policy = new MetastoreDatabaseIamPolicy("policy", MetastoreDatabaseIamPolicyArgs.builder()
///             .project(dpmsService.project())
///             .location(dpmsService.location())
///             .serviceId(dpmsService.serviceId())
///             .database(hive.hiveConfig()[0].properties().database())
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:dataproc:MetastoreDatabaseIamPolicy
///     properties:
///       project: ${dpmsService.project}
///       location: ${dpmsService.location}
///       serviceId: ${dpmsService.serviceId}
///       database: ${hive.hiveConfig[0].properties.database}
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
/// ## gcp.dataproc.MetastoreDatabaseIamBinding
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.dataproc.MetastoreDatabaseIamBinding("binding", {
///     project: dpmsService.project,
///     location: dpmsService.location,
///     serviceId: dpmsService.serviceId,
///     database: hive.hiveConfig[0].properties.database,
///     role: "roles/viewer",
///     members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.dataproc.MetastoreDatabaseIamBinding("binding",
///     project=dpms_service["project"],
///     location=dpms_service["location"],
///     service_id=dpms_service["serviceId"],
///     database=hive["hiveConfig"][0]["properties"]["database"],
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
///     var binding = new Gcp.Dataproc.MetastoreDatabaseIamBinding("binding", new()
///     {
///         Project = dpmsService.Project,
///         Location = dpmsService.Location,
///         ServiceId = dpmsService.ServiceId,
///         Database = hive.HiveConfig[0].Properties.Database,
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
/// 		_, err := dataproc.NewMetastoreDatabaseIamBinding(ctx, "binding", &dataproc.MetastoreDatabaseIamBindingArgs{
/// 			Project:   pulumi.Any(dpmsService.Project),
/// 			Location:  pulumi.Any(dpmsService.Location),
/// 			ServiceId: pulumi.Any(dpmsService.ServiceId),
/// 			Database:  pulumi.Any(hive.HiveConfig[0].Properties.Database),
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
/// import com.pulumi.gcp.dataproc.MetastoreDatabaseIamBinding;
/// import com.pulumi.gcp.dataproc.MetastoreDatabaseIamBindingArgs;
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
///         var binding = new MetastoreDatabaseIamBinding("binding", MetastoreDatabaseIamBindingArgs.builder()
///             .project(dpmsService.project())
///             .location(dpmsService.location())
///             .serviceId(dpmsService.serviceId())
///             .database(hive.hiveConfig()[0].properties().database())
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
///     type: gcp:dataproc:MetastoreDatabaseIamBinding
///     properties:
///       project: ${dpmsService.project}
///       location: ${dpmsService.location}
///       serviceId: ${dpmsService.serviceId}
///       database: ${hive.hiveConfig[0].properties.database}
///       role: roles/viewer
///       members:
///         - user:jane@example.com
/// ```
///
///
/// ## gcp.dataproc.MetastoreDatabaseIamMember
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.dataproc.MetastoreDatabaseIamMember("member", {
///     project: dpmsService.project,
///     location: dpmsService.location,
///     serviceId: dpmsService.serviceId,
///     database: hive.hiveConfig[0].properties.database,
///     role: "roles/viewer",
///     member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.dataproc.MetastoreDatabaseIamMember("member",
///     project=dpms_service["project"],
///     location=dpms_service["location"],
///     service_id=dpms_service["serviceId"],
///     database=hive["hiveConfig"][0]["properties"]["database"],
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
///     var member = new Gcp.Dataproc.MetastoreDatabaseIamMember("member", new()
///     {
///         Project = dpmsService.Project,
///         Location = dpmsService.Location,
///         ServiceId = dpmsService.ServiceId,
///         Database = hive.HiveConfig[0].Properties.Database,
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
/// 		_, err := dataproc.NewMetastoreDatabaseIamMember(ctx, "member", &dataproc.MetastoreDatabaseIamMemberArgs{
/// 			Project:   pulumi.Any(dpmsService.Project),
/// 			Location:  pulumi.Any(dpmsService.Location),
/// 			ServiceId: pulumi.Any(dpmsService.ServiceId),
/// 			Database:  pulumi.Any(hive.HiveConfig[0].Properties.Database),
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
/// import com.pulumi.gcp.dataproc.MetastoreDatabaseIamMember;
/// import com.pulumi.gcp.dataproc.MetastoreDatabaseIamMemberArgs;
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
///         var member = new MetastoreDatabaseIamMember("member", MetastoreDatabaseIamMemberArgs.builder()
///             .project(dpmsService.project())
///             .location(dpmsService.location())
///             .serviceId(dpmsService.serviceId())
///             .database(hive.hiveConfig()[0].properties().database())
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
///     type: gcp:dataproc:MetastoreDatabaseIamMember
///     properties:
///       project: ${dpmsService.project}
///       location: ${dpmsService.location}
///       serviceId: ${dpmsService.serviceId}
///       database: ${hive.hiveConfig[0].properties.database}
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
/// # IAM policy for Dataproc Metastore Database
///
/// Three different resources help you manage your IAM policy for Dataproc Metastore Database. Each of these resources serves a different use case:
///
/// * `gcp.dataproc.MetastoreDatabaseIamPolicy`: Authoritative. Sets the IAM policy for the database and replaces any existing policy already attached.
/// * `gcp.dataproc.MetastoreDatabaseIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the database are preserved.
/// * `gcp.dataproc.MetastoreDatabaseIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the database are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.dataproc.MetastoreDatabaseIamPolicy`: Retrieves the IAM policy for the database
///
/// > **Note:** `gcp.dataproc.MetastoreDatabaseIamPolicy` **cannot** be used in conjunction with `gcp.dataproc.MetastoreDatabaseIamBinding` and `gcp.dataproc.MetastoreDatabaseIamMember` or they will fight over what your policy should be.
///
/// > **Note:** `gcp.dataproc.MetastoreDatabaseIamBinding` resources **can be** used in conjunction with `gcp.dataproc.MetastoreDatabaseIamMember` resources **only if** they do not grant privilege to the same role.
///
///
///
/// ## gcp.dataproc.MetastoreDatabaseIamPolicy
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
/// const policy = new gcp.dataproc.MetastoreDatabaseIamPolicy("policy", {
///     project: dpmsService.project,
///     location: dpmsService.location,
///     serviceId: dpmsService.serviceId,
///     database: hive.hiveConfig[0].properties.database,
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
/// policy = gcp.dataproc.MetastoreDatabaseIamPolicy("policy",
///     project=dpms_service["project"],
///     location=dpms_service["location"],
///     service_id=dpms_service["serviceId"],
///     database=hive["hiveConfig"][0]["properties"]["database"],
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
///     var policy = new Gcp.Dataproc.MetastoreDatabaseIamPolicy("policy", new()
///     {
///         Project = dpmsService.Project,
///         Location = dpmsService.Location,
///         ServiceId = dpmsService.ServiceId,
///         Database = hive.HiveConfig[0].Properties.Database,
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
/// 		_, err = dataproc.NewMetastoreDatabaseIamPolicy(ctx, "policy", &dataproc.MetastoreDatabaseIamPolicyArgs{
/// 			Project:    pulumi.Any(dpmsService.Project),
/// 			Location:   pulumi.Any(dpmsService.Location),
/// 			ServiceId:  pulumi.Any(dpmsService.ServiceId),
/// 			Database:   pulumi.Any(hive.HiveConfig[0].Properties.Database),
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
/// import com.pulumi.gcp.dataproc.MetastoreDatabaseIamPolicy;
/// import com.pulumi.gcp.dataproc.MetastoreDatabaseIamPolicyArgs;
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
///         var policy = new MetastoreDatabaseIamPolicy("policy", MetastoreDatabaseIamPolicyArgs.builder()
///             .project(dpmsService.project())
///             .location(dpmsService.location())
///             .serviceId(dpmsService.serviceId())
///             .database(hive.hiveConfig()[0].properties().database())
///             .policyData(admin.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:dataproc:MetastoreDatabaseIamPolicy
///     properties:
///       project: ${dpmsService.project}
///       location: ${dpmsService.location}
///       serviceId: ${dpmsService.serviceId}
///       database: ${hive.hiveConfig[0].properties.database}
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
/// ## gcp.dataproc.MetastoreDatabaseIamBinding
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.dataproc.MetastoreDatabaseIamBinding("binding", {
///     project: dpmsService.project,
///     location: dpmsService.location,
///     serviceId: dpmsService.serviceId,
///     database: hive.hiveConfig[0].properties.database,
///     role: "roles/viewer",
///     members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.dataproc.MetastoreDatabaseIamBinding("binding",
///     project=dpms_service["project"],
///     location=dpms_service["location"],
///     service_id=dpms_service["serviceId"],
///     database=hive["hiveConfig"][0]["properties"]["database"],
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
///     var binding = new Gcp.Dataproc.MetastoreDatabaseIamBinding("binding", new()
///     {
///         Project = dpmsService.Project,
///         Location = dpmsService.Location,
///         ServiceId = dpmsService.ServiceId,
///         Database = hive.HiveConfig[0].Properties.Database,
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
/// 		_, err := dataproc.NewMetastoreDatabaseIamBinding(ctx, "binding", &dataproc.MetastoreDatabaseIamBindingArgs{
/// 			Project:   pulumi.Any(dpmsService.Project),
/// 			Location:  pulumi.Any(dpmsService.Location),
/// 			ServiceId: pulumi.Any(dpmsService.ServiceId),
/// 			Database:  pulumi.Any(hive.HiveConfig[0].Properties.Database),
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
/// import com.pulumi.gcp.dataproc.MetastoreDatabaseIamBinding;
/// import com.pulumi.gcp.dataproc.MetastoreDatabaseIamBindingArgs;
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
///         var binding = new MetastoreDatabaseIamBinding("binding", MetastoreDatabaseIamBindingArgs.builder()
///             .project(dpmsService.project())
///             .location(dpmsService.location())
///             .serviceId(dpmsService.serviceId())
///             .database(hive.hiveConfig()[0].properties().database())
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
///     type: gcp:dataproc:MetastoreDatabaseIamBinding
///     properties:
///       project: ${dpmsService.project}
///       location: ${dpmsService.location}
///       serviceId: ${dpmsService.serviceId}
///       database: ${hive.hiveConfig[0].properties.database}
///       role: roles/viewer
///       members:
///         - user:jane@example.com
/// ```
///
///
/// ## gcp.dataproc.MetastoreDatabaseIamMember
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.dataproc.MetastoreDatabaseIamMember("member", {
///     project: dpmsService.project,
///     location: dpmsService.location,
///     serviceId: dpmsService.serviceId,
///     database: hive.hiveConfig[0].properties.database,
///     role: "roles/viewer",
///     member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.dataproc.MetastoreDatabaseIamMember("member",
///     project=dpms_service["project"],
///     location=dpms_service["location"],
///     service_id=dpms_service["serviceId"],
///     database=hive["hiveConfig"][0]["properties"]["database"],
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
///     var member = new Gcp.Dataproc.MetastoreDatabaseIamMember("member", new()
///     {
///         Project = dpmsService.Project,
///         Location = dpmsService.Location,
///         ServiceId = dpmsService.ServiceId,
///         Database = hive.HiveConfig[0].Properties.Database,
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
/// 		_, err := dataproc.NewMetastoreDatabaseIamMember(ctx, "member", &dataproc.MetastoreDatabaseIamMemberArgs{
/// 			Project:   pulumi.Any(dpmsService.Project),
/// 			Location:  pulumi.Any(dpmsService.Location),
/// 			ServiceId: pulumi.Any(dpmsService.ServiceId),
/// 			Database:  pulumi.Any(hive.HiveConfig[0].Properties.Database),
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
/// import com.pulumi.gcp.dataproc.MetastoreDatabaseIamMember;
/// import com.pulumi.gcp.dataproc.MetastoreDatabaseIamMemberArgs;
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
///         var member = new MetastoreDatabaseIamMember("member", MetastoreDatabaseIamMemberArgs.builder()
///             .project(dpmsService.project())
///             .location(dpmsService.location())
///             .serviceId(dpmsService.serviceId())
///             .database(hive.hiveConfig()[0].properties().database())
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
///     type: gcp:dataproc:MetastoreDatabaseIamMember
///     properties:
///       project: ${dpmsService.project}
///       location: ${dpmsService.location}
///       serviceId: ${dpmsService.serviceId}
///       database: ${hive.hiveConfig[0].properties.database}
///       role: roles/viewer
///       member: user:jane@example.com
/// ```
///
///
/// ## Import
///
/// For all import syntaxes, the "resource in question" can take any of the following forms:
///
/// * projects/{{project}}/locations/{{location}}/services/{{serviceId}}/databases/{{name}}
///
/// * {{project}}/{{location}}/{{serviceId}}/{{name}}
///
/// * {{location}}/{{serviceId}}/{{name}}
///
/// * {{name}}
///
/// Any variables not passed in the import command will be taken from the provider configuration.
///
/// Dataproc Metastore database IAM resources can be imported using the resource identifiers, role, and member.
///
/// IAM member imports use space-delimited identifiers: the resource in question, the role, and the member identity, e.g.
///
/// ```sh
/// $ pulumi import gcp:dataproc/metastoreDatabaseIamPolicy:MetastoreDatabaseIamPolicy editor "projects/{{project}}/locations/{{location}}/services/{{serviceId}}/databases/{{database}} roles/viewer user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
///
/// ```sh
/// $ pulumi import gcp:dataproc/metastoreDatabaseIamPolicy:MetastoreDatabaseIamPolicy editor "projects/{{project}}/locations/{{location}}/services/{{serviceId}}/databases/{{database}} roles/viewer"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
///
/// ```sh
/// $ pulumi import gcp:dataproc/metastoreDatabaseIamPolicy:MetastoreDatabaseIamPolicy editor projects/{{project}}/locations/{{location}}/services/{{serviceId}}/databases/{{database}}
/// ```
///
/// -> **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
///
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class MetastoreDatabaseIamPolicy extends pulumi.CustomResource {
  /// Used to find the parent resource to bind the IAM policy to
  late final pulumi.Output<String> database;
  /// (Computed) The etag of the IAM policy.
  late final pulumi.Output<String> etag;
  /// Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no location is provided in the parent identifier and no
  /// location is specified, it is taken from the provider configuration.
  late final pulumi.Output<String> location;
  /// The policy data generated by
  /// a `gcp.organizations.getIAMPolicy` data source.
  late final pulumi.Output<String> policyData;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  late final pulumi.Output<String> project;
  /// Used to find the parent resource to bind the IAM policy to
  late final pulumi.Output<String> serviceId;

  /// Creates a new [MetastoreDatabaseIamPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MetastoreDatabaseIamPolicy]. {@macro pulumi_dataproc_metastore_database_iam_policy_metastore_database_iam_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MetastoreDatabaseIamPolicy(
    String name, {
    MetastoreDatabaseIamPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:dataproc/metastoreDatabaseIamPolicy:MetastoreDatabaseIamPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.database = registerOutput<String>('database');
    this.etag = registerOutput<String>('etag');
    this.location = registerOutput<String>('location');
    this.policyData = registerOutput<String>('policyData');
    this.project = registerOutput<String>('project');
    this.serviceId = registerOutput<String>('serviceId');
  }

  /// Gets an existing [MetastoreDatabaseIamPolicy] resource's state with the given [name] and [id].
  static MetastoreDatabaseIamPolicy get(
    String name,
    pulumi.Input<String> id, {
    MetastoreDatabaseIamPolicyState? state,
  }) {
    return MetastoreDatabaseIamPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  MetastoreDatabaseIamPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:dataproc/metastoreDatabaseIamPolicy:MetastoreDatabaseIamPolicy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.database = registerOutput<String>('database');
    this.etag = registerOutput<String>('etag');
    this.location = registerOutput<String>('location');
    this.policyData = registerOutput<String>('policyData');
    this.project = registerOutput<String>('project');
    this.serviceId = registerOutput<String>('serviceId');
  }
}
