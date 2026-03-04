import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_args.dart';
import 'policy_dry_run_spec.dart';
import 'policy_spec.dart';
import 'policy_state.dart';

/// Defines an organization policy which is used to specify constraints for configurations of Google Cloud resources.
///
///
/// To get more information about Policy, see:
///
/// * [API documentation](https://docs.cloud.google.com/resource-manager/docs/reference/orgpolicy/rest/v2/organizations.policies)
/// * How-to Guides
/// * [Official Documentation](https://docs.cloud.google.com/resource-manager/docs/organization-policy/creating-managing-custom-constraints)
/// * [Supported Services](https://docs.cloud.google.com/resource-manager/docs/organization-policy/custom-constraint-supported-services)
///
/// ## Example Usage
///
/// ### Org Policy Policy Enforce
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const basic = new gcp.organizations.Project("basic", {
///     projectId: "id",
///     name: "id",
///     orgId: "123456789",
///     deletionPolicy: "DELETE",
/// });
/// const primary = new gcp.orgpolicy.Policy("primary", {
///     name: pulumi.interpolate`projects/${basic.projectId}/policies/iam.disableServiceAccountKeyUpload`,
///     parent: pulumi.interpolate`projects/${basic.projectId}`,
///     spec: {
///         rules: [{
///             enforce: "FALSE",
///         }],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// basic = gcp.organizations.Project("basic",
///     project_id="id",
///     name="id",
///     org_id="123456789",
///     deletion_policy="DELETE")
/// primary = gcp.orgpolicy.Policy("primary",
///     name=basic.project_id.apply(lambda project_id: f"projects/{project_id}/policies/iam.disableServiceAccountKeyUpload"),
///     parent=basic.project_id.apply(lambda project_id: f"projects/{project_id}"),
///     spec={
///         "rules": [{
///             "enforce": "FALSE",
///         }],
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var basic = new Gcp.Organizations.Project("basic", new()
///     {
///         ProjectId = "id",
///         Name = "id",
///         OrgId = "123456789",
///         DeletionPolicy = "DELETE",
///     });
///
///     var primary = new Gcp.OrgPolicy.Policy("primary", new()
///     {
///         Name = basic.ProjectId.Apply(projectId => $"projects/{projectId}/policies/iam.disableServiceAccountKeyUpload"),
///         Parent = basic.ProjectId.Apply(projectId => $"projects/{projectId}"),
///         Spec = new Gcp.OrgPolicy.Inputs.PolicySpecArgs
///         {
///             Rules = new[]
///             {
///                 new Gcp.OrgPolicy.Inputs.PolicySpecRuleArgs
///                 {
///                     Enforce = "FALSE",
///                 },
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/orgpolicy"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		basic, err := organizations.NewProject(ctx, "basic", &organizations.ProjectArgs{
/// 			ProjectId:      pulumi.String("id"),
/// 			Name:           pulumi.String("id"),
/// 			OrgId:          pulumi.String("123456789"),
/// 			DeletionPolicy: pulumi.String("DELETE"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = orgpolicy.NewPolicy(ctx, "primary", &orgpolicy.PolicyArgs{
/// 			Name: basic.ProjectId.ApplyT(func(projectId string) (string, error) {
/// 				return fmt.Sprintf("projects/%v/policies/iam.disableServiceAccountKeyUpload", projectId), nil
/// 			}).(pulumi.StringOutput),
/// 			Parent: basic.ProjectId.ApplyT(func(projectId string) (string, error) {
/// 				return fmt.Sprintf("projects/%v", projectId), nil
/// 			}).(pulumi.StringOutput),
/// 			Spec: &orgpolicy.PolicySpecArgs{
/// 				Rules: orgpolicy.PolicySpecRuleArray{
/// 					&orgpolicy.PolicySpecRuleArgs{
/// 						Enforce: pulumi.String("FALSE"),
/// 					},
/// 				},
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
/// import com.pulumi.gcp.organizations.Project;
/// import com.pulumi.gcp.organizations.ProjectArgs;
/// import com.pulumi.gcp.orgpolicy.Policy;
/// import com.pulumi.gcp.orgpolicy.PolicyArgs;
/// import com.pulumi.gcp.orgpolicy.inputs.PolicySpecArgs;
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
///         var basic = new Project("basic", ProjectArgs.builder()
///             .projectId("id")
///             .name("id")
///             .orgId("123456789")
///             .deletionPolicy("DELETE")
///             .build());
///
///         var primary = new Policy("primary", PolicyArgs.builder()
///             .name(basic.projectId().applyValue(_projectId -> String.format("projects/%s/policies/iam.disableServiceAccountKeyUpload", _projectId)))
///             .parent(basic.projectId().applyValue(_projectId -> String.format("projects/%s", _projectId)))
///             .spec(PolicySpecArgs.builder()
///                 .rules(PolicySpecRuleArgs.builder()
///                     .enforce("FALSE")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   primary:
///     type: gcp:orgpolicy:Policy
///     properties:
///       name: projects/${basic.projectId}/policies/iam.disableServiceAccountKeyUpload
///       parent: projects/${basic.projectId}
///       spec:
///         rules:
///           - enforce: FALSE
///   basic:
///     type: gcp:organizations:Project
///     properties:
///       projectId: id
///       name: id
///       orgId: '123456789'
///       deletionPolicy: DELETE
/// ```
///
/// ### Org Policy Policy Folder
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const basic = new gcp.organizations.Folder("basic", {
///     parent: "organizations/123456789",
///     displayName: "folder",
///     deletionProtection: false,
/// });
/// const primary = new gcp.orgpolicy.Policy("primary", {
///     name: pulumi.interpolate`${basic.name}/policies/gcp.resourceLocations`,
///     parent: basic.name,
///     spec: {
///         inheritFromParent: true,
///         rules: [{
///             denyAll: "TRUE",
///         }],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// basic = gcp.organizations.Folder("basic",
///     parent="organizations/123456789",
///     display_name="folder",
///     deletion_protection=False)
/// primary = gcp.orgpolicy.Policy("primary",
///     name=basic.name.apply(lambda name: f"{name}/policies/gcp.resourceLocations"),
///     parent=basic.name,
///     spec={
///         "inherit_from_parent": True,
///         "rules": [{
///             "deny_all": "TRUE",
///         }],
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var basic = new Gcp.Organizations.Folder("basic", new()
///     {
///         Parent = "organizations/123456789",
///         DisplayName = "folder",
///         DeletionProtection = false,
///     });
///
///     var primary = new Gcp.OrgPolicy.Policy("primary", new()
///     {
///         Name = basic.Name.Apply(name => $"{name}/policies/gcp.resourceLocations"),
///         Parent = basic.Name,
///         Spec = new Gcp.OrgPolicy.Inputs.PolicySpecArgs
///         {
///             InheritFromParent = true,
///             Rules = new[]
///             {
///                 new Gcp.OrgPolicy.Inputs.PolicySpecRuleArgs
///                 {
///                     DenyAll = "TRUE",
///                 },
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/orgpolicy"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		basic, err := organizations.NewFolder(ctx, "basic", &organizations.FolderArgs{
/// 			Parent:             pulumi.String("organizations/123456789"),
/// 			DisplayName:        pulumi.String("folder"),
/// 			DeletionProtection: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = orgpolicy.NewPolicy(ctx, "primary", &orgpolicy.PolicyArgs{
/// 			Name: basic.Name.ApplyT(func(name string) (string, error) {
/// 				return fmt.Sprintf("%v/policies/gcp.resourceLocations", name), nil
/// 			}).(pulumi.StringOutput),
/// 			Parent: basic.Name,
/// 			Spec: &orgpolicy.PolicySpecArgs{
/// 				InheritFromParent: pulumi.Bool(true),
/// 				Rules: orgpolicy.PolicySpecRuleArray{
/// 					&orgpolicy.PolicySpecRuleArgs{
/// 						DenyAll: pulumi.String("TRUE"),
/// 					},
/// 				},
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
/// import com.pulumi.gcp.organizations.Folder;
/// import com.pulumi.gcp.organizations.FolderArgs;
/// import com.pulumi.gcp.orgpolicy.Policy;
/// import com.pulumi.gcp.orgpolicy.PolicyArgs;
/// import com.pulumi.gcp.orgpolicy.inputs.PolicySpecArgs;
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
///         var basic = new Folder("basic", FolderArgs.builder()
///             .parent("organizations/123456789")
///             .displayName("folder")
///             .deletionProtection(false)
///             .build());
///
///         var primary = new Policy("primary", PolicyArgs.builder()
///             .name(basic.name().applyValue(_name -> String.format("%s/policies/gcp.resourceLocations", _name)))
///             .parent(basic.name())
///             .spec(PolicySpecArgs.builder()
///                 .inheritFromParent(true)
///                 .rules(PolicySpecRuleArgs.builder()
///                     .denyAll("TRUE")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   primary:
///     type: gcp:orgpolicy:Policy
///     properties:
///       name: ${basic.name}/policies/gcp.resourceLocations
///       parent: ${basic.name}
///       spec:
///         inheritFromParent: true
///         rules:
///           - denyAll: TRUE
///   basic:
///     type: gcp:organizations:Folder
///     properties:
///       parent: organizations/123456789
///       displayName: folder
///       deletionProtection: false
/// ```
///
/// ### Org Policy Policy Organization
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const primary = new gcp.orgpolicy.Policy("primary", {
///     name: "organizations/123456789/policies/gcp.detailedAuditLoggingMode",
///     parent: "organizations/123456789",
///     spec: {
///         reset: true,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// primary = gcp.orgpolicy.Policy("primary",
///     name="organizations/123456789/policies/gcp.detailedAuditLoggingMode",
///     parent="organizations/123456789",
///     spec={
///         "reset": True,
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var primary = new Gcp.OrgPolicy.Policy("primary", new()
///     {
///         Name = "organizations/123456789/policies/gcp.detailedAuditLoggingMode",
///         Parent = "organizations/123456789",
///         Spec = new Gcp.OrgPolicy.Inputs.PolicySpecArgs
///         {
///             Reset = true,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/orgpolicy"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := orgpolicy.NewPolicy(ctx, "primary", &orgpolicy.PolicyArgs{
/// 			Name:   pulumi.String("organizations/123456789/policies/gcp.detailedAuditLoggingMode"),
/// 			Parent: pulumi.String("organizations/123456789"),
/// 			Spec: &orgpolicy.PolicySpecArgs{
/// 				Reset: pulumi.Bool(true),
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
/// import com.pulumi.gcp.orgpolicy.Policy;
/// import com.pulumi.gcp.orgpolicy.PolicyArgs;
/// import com.pulumi.gcp.orgpolicy.inputs.PolicySpecArgs;
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
///         var primary = new Policy("primary", PolicyArgs.builder()
///             .name("organizations/123456789/policies/gcp.detailedAuditLoggingMode")
///             .parent("organizations/123456789")
///             .spec(PolicySpecArgs.builder()
///                 .reset(true)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   primary:
///     type: gcp:orgpolicy:Policy
///     properties:
///       name: organizations/123456789/policies/gcp.detailedAuditLoggingMode
///       parent: organizations/123456789
///       spec:
///         reset: true
/// ```
///
/// ### Org Policy Policy Project
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const basic = new gcp.organizations.Project("basic", {
///     projectId: "id",
///     name: "id",
///     orgId: "123456789",
///     deletionPolicy: "DELETE",
/// });
/// const primary = new gcp.orgpolicy.Policy("primary", {
///     name: pulumi.interpolate`projects/${basic.projectId}/policies/gcp.resourceLocations`,
///     parent: pulumi.interpolate`projects/${basic.projectId}`,
///     spec: {
///         rules: [
///             {
///                 condition: {
///                     description: "A sample condition for the policy",
///                     expression: "resource.matchTagId('tagKeys/123', 'tagValues/345')",
///                     location: "sample-location.log",
///                     title: "sample-condition",
///                 },
///                 values: {
///                     allowedValues: ["projects/allowed-project"],
///                     deniedValues: ["projects/denied-project"],
///                 },
///             },
///             {
///                 allowAll: "TRUE",
///             },
///         ],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// basic = gcp.organizations.Project("basic",
///     project_id="id",
///     name="id",
///     org_id="123456789",
///     deletion_policy="DELETE")
/// primary = gcp.orgpolicy.Policy("primary",
///     name=basic.project_id.apply(lambda project_id: f"projects/{project_id}/policies/gcp.resourceLocations"),
///     parent=basic.project_id.apply(lambda project_id: f"projects/{project_id}"),
///     spec={
///         "rules": [
///             {
///                 "condition": {
///                     "description": "A sample condition for the policy",
///                     "expression": "resource.matchTagId('tagKeys/123', 'tagValues/345')",
///                     "location": "sample-location.log",
///                     "title": "sample-condition",
///                 },
///                 "values": {
///                     "allowed_values": ["projects/allowed-project"],
///                     "denied_values": ["projects/denied-project"],
///                 },
///             },
///             {
///                 "allow_all": "TRUE",
///             },
///         ],
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var basic = new Gcp.Organizations.Project("basic", new()
///     {
///         ProjectId = "id",
///         Name = "id",
///         OrgId = "123456789",
///         DeletionPolicy = "DELETE",
///     });
///
///     var primary = new Gcp.OrgPolicy.Policy("primary", new()
///     {
///         Name = basic.ProjectId.Apply(projectId => $"projects/{projectId}/policies/gcp.resourceLocations"),
///         Parent = basic.ProjectId.Apply(projectId => $"projects/{projectId}"),
///         Spec = new Gcp.OrgPolicy.Inputs.PolicySpecArgs
///         {
///             Rules = new[]
///             {
///                 new Gcp.OrgPolicy.Inputs.PolicySpecRuleArgs
///                 {
///                     Condition = new Gcp.OrgPolicy.Inputs.PolicySpecRuleConditionArgs
///                     {
///                         Description = "A sample condition for the policy",
///                         Expression = "resource.matchTagId('tagKeys/123', 'tagValues/345')",
///                         Location = "sample-location.log",
///                         Title = "sample-condition",
///                     },
///                     Values = new Gcp.OrgPolicy.Inputs.PolicySpecRuleValuesArgs
///                     {
///                         AllowedValues = new[]
///                         {
///                             "projects/allowed-project",
///                         },
///                         DeniedValues = new[]
///                         {
///                             "projects/denied-project",
///                         },
///                     },
///                 },
///                 new Gcp.OrgPolicy.Inputs.PolicySpecRuleArgs
///                 {
///                     AllowAll = "TRUE",
///                 },
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/orgpolicy"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		basic, err := organizations.NewProject(ctx, "basic", &organizations.ProjectArgs{
/// 			ProjectId:      pulumi.String("id"),
/// 			Name:           pulumi.String("id"),
/// 			OrgId:          pulumi.String("123456789"),
/// 			DeletionPolicy: pulumi.String("DELETE"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = orgpolicy.NewPolicy(ctx, "primary", &orgpolicy.PolicyArgs{
/// 			Name: basic.ProjectId.ApplyT(func(projectId string) (string, error) {
/// 				return fmt.Sprintf("projects/%v/policies/gcp.resourceLocations", projectId), nil
/// 			}).(pulumi.StringOutput),
/// 			Parent: basic.ProjectId.ApplyT(func(projectId string) (string, error) {
/// 				return fmt.Sprintf("projects/%v", projectId), nil
/// 			}).(pulumi.StringOutput),
/// 			Spec: &orgpolicy.PolicySpecArgs{
/// 				Rules: orgpolicy.PolicySpecRuleArray{
/// 					&orgpolicy.PolicySpecRuleArgs{
/// 						Condition: &orgpolicy.PolicySpecRuleConditionArgs{
/// 							Description: pulumi.String("A sample condition for the policy"),
/// 							Expression:  pulumi.String("resource.matchTagId('tagKeys/123', 'tagValues/345')"),
/// 							Location:    pulumi.String("sample-location.log"),
/// 							Title:       pulumi.String("sample-condition"),
/// 						},
/// 						Values: &orgpolicy.PolicySpecRuleValuesArgs{
/// 							AllowedValues: pulumi.StringArray{
/// 								pulumi.String("projects/allowed-project"),
/// 							},
/// 							DeniedValues: pulumi.StringArray{
/// 								pulumi.String("projects/denied-project"),
/// 							},
/// 						},
/// 					},
/// 					&orgpolicy.PolicySpecRuleArgs{
/// 						AllowAll: pulumi.String("TRUE"),
/// 					},
/// 				},
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
/// import com.pulumi.gcp.organizations.Project;
/// import com.pulumi.gcp.organizations.ProjectArgs;
/// import com.pulumi.gcp.orgpolicy.Policy;
/// import com.pulumi.gcp.orgpolicy.PolicyArgs;
/// import com.pulumi.gcp.orgpolicy.inputs.PolicySpecArgs;
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
///         var basic = new Project("basic", ProjectArgs.builder()
///             .projectId("id")
///             .name("id")
///             .orgId("123456789")
///             .deletionPolicy("DELETE")
///             .build());
///
///         var primary = new Policy("primary", PolicyArgs.builder()
///             .name(basic.projectId().applyValue(_projectId -> String.format("projects/%s/policies/gcp.resourceLocations", _projectId)))
///             .parent(basic.projectId().applyValue(_projectId -> String.format("projects/%s", _projectId)))
///             .spec(PolicySpecArgs.builder()
///                 .rules(
///                     PolicySpecRuleArgs.builder()
///                         .condition(PolicySpecRuleConditionArgs.builder()
///                             .description("A sample condition for the policy")
///                             .expression("resource.matchTagId('tagKeys/123', 'tagValues/345')")
///                             .location("sample-location.log")
///                             .title("sample-condition")
///                             .build())
///                         .values(PolicySpecRuleValuesArgs.builder()
///                             .allowedValues("projects/allowed-project")
///                             .deniedValues("projects/denied-project")
///                             .build())
///                         .build(),
///                     PolicySpecRuleArgs.builder()
///                         .allowAll("TRUE")
///                         .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   primary:
///     type: gcp:orgpolicy:Policy
///     properties:
///       name: projects/${basic.projectId}/policies/gcp.resourceLocations
///       parent: projects/${basic.projectId}
///       spec:
///         rules:
///           - condition:
///               description: A sample condition for the policy
///               expression: resource.matchTagId('tagKeys/123', 'tagValues/345')
///               location: sample-location.log
///               title: sample-condition
///             values:
///               allowedValues:
///                 - projects/allowed-project
///               deniedValues:
///                 - projects/denied-project
///           - allowAll: TRUE
///   basic:
///     type: gcp:organizations:Project
///     properties:
///       projectId: id
///       name: id
///       orgId: '123456789'
///       deletionPolicy: DELETE
/// ```
///
/// ### Org Policy Policy Dry Run Spec
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const constraint = new gcp.orgpolicy.CustomConstraint("constraint", {
///     name: "custom.disableGkeAutoUpgrade_15022",
///     parent: "organizations/123456789",
///     displayName: "Disable GKE auto upgrade",
///     description: "Only allow GKE NodePool resource to be created or updated if AutoUpgrade is not enabled where this custom constraint is enforced.",
///     actionType: "ALLOW",
///     condition: "resource.management.autoUpgrade == false",
///     methodTypes: ["CREATE"],
///     resourceTypes: ["container.googleapis.com/NodePool"],
/// });
/// const primary = new gcp.orgpolicy.Policy("primary", {
///     name: pulumi.interpolate`organizations/123456789/policies/${constraint.name}`,
///     parent: "organizations/123456789",
///     spec: {
///         rules: [{
///             enforce: "FALSE",
///         }],
///     },
///     dryRunSpec: {
///         inheritFromParent: false,
///         reset: false,
///         rules: [{
///             enforce: "FALSE",
///         }],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// constraint = gcp.orgpolicy.CustomConstraint("constraint",
///     name="custom.disableGkeAutoUpgrade_15022",
///     parent="organizations/123456789",
///     display_name="Disable GKE auto upgrade",
///     description="Only allow GKE NodePool resource to be created or updated if AutoUpgrade is not enabled where this custom constraint is enforced.",
///     action_type="ALLOW",
///     condition="resource.management.autoUpgrade == false",
///     method_types=["CREATE"],
///     resource_types=["container.googleapis.com/NodePool"])
/// primary = gcp.orgpolicy.Policy("primary",
///     name=constraint.name.apply(lambda name: f"organizations/123456789/policies/{name}"),
///     parent="organizations/123456789",
///     spec={
///         "rules": [{
///             "enforce": "FALSE",
///         }],
///     },
///     dry_run_spec={
///         "inherit_from_parent": False,
///         "reset": False,
///         "rules": [{
///             "enforce": "FALSE",
///         }],
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var constraint = new Gcp.OrgPolicy.CustomConstraint("constraint", new()
///     {
///         Name = "custom.disableGkeAutoUpgrade_15022",
///         Parent = "organizations/123456789",
///         DisplayName = "Disable GKE auto upgrade",
///         Description = "Only allow GKE NodePool resource to be created or updated if AutoUpgrade is not enabled where this custom constraint is enforced.",
///         ActionType = "ALLOW",
///         Condition = "resource.management.autoUpgrade == false",
///         MethodTypes = new[]
///         {
///             "CREATE",
///         },
///         ResourceTypes = new[]
///         {
///             "container.googleapis.com/NodePool",
///         },
///     });
///
///     var primary = new Gcp.OrgPolicy.Policy("primary", new()
///     {
///         Name = constraint.Name.Apply(name => $"organizations/123456789/policies/{name}"),
///         Parent = "organizations/123456789",
///         Spec = new Gcp.OrgPolicy.Inputs.PolicySpecArgs
///         {
///             Rules = new[]
///             {
///                 new Gcp.OrgPolicy.Inputs.PolicySpecRuleArgs
///                 {
///                     Enforce = "FALSE",
///                 },
///             },
///         },
///         DryRunSpec = new Gcp.OrgPolicy.Inputs.PolicyDryRunSpecArgs
///         {
///             InheritFromParent = false,
///             Reset = false,
///             Rules = new[]
///             {
///                 new Gcp.OrgPolicy.Inputs.PolicyDryRunSpecRuleArgs
///                 {
///                     Enforce = "FALSE",
///                 },
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/orgpolicy"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		constraint, err := orgpolicy.NewCustomConstraint(ctx, "constraint", &orgpolicy.CustomConstraintArgs{
/// 			Name:        pulumi.String("custom.disableGkeAutoUpgrade_15022"),
/// 			Parent:      pulumi.String("organizations/123456789"),
/// 			DisplayName: pulumi.String("Disable GKE auto upgrade"),
/// 			Description: pulumi.String("Only allow GKE NodePool resource to be created or updated if AutoUpgrade is not enabled where this custom constraint is enforced."),
/// 			ActionType:  pulumi.String("ALLOW"),
/// 			Condition:   pulumi.String("resource.management.autoUpgrade == false"),
/// 			MethodTypes: pulumi.StringArray{
/// 				pulumi.String("CREATE"),
/// 			},
/// 			ResourceTypes: pulumi.StringArray{
/// 				pulumi.String("container.googleapis.com/NodePool"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = orgpolicy.NewPolicy(ctx, "primary", &orgpolicy.PolicyArgs{
/// 			Name: constraint.Name.ApplyT(func(name string) (string, error) {
/// 				return fmt.Sprintf("organizations/123456789/policies/%v", name), nil
/// 			}).(pulumi.StringOutput),
/// 			Parent: pulumi.String("organizations/123456789"),
/// 			Spec: &orgpolicy.PolicySpecArgs{
/// 				Rules: orgpolicy.PolicySpecRuleArray{
/// 					&orgpolicy.PolicySpecRuleArgs{
/// 						Enforce: pulumi.String("FALSE"),
/// 					},
/// 				},
/// 			},
/// 			DryRunSpec: &orgpolicy.PolicyDryRunSpecArgs{
/// 				InheritFromParent: pulumi.Bool(false),
/// 				Reset:             pulumi.Bool(false),
/// 				Rules: orgpolicy.PolicyDryRunSpecRuleArray{
/// 					&orgpolicy.PolicyDryRunSpecRuleArgs{
/// 						Enforce: pulumi.String("FALSE"),
/// 					},
/// 				},
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
/// import com.pulumi.gcp.orgpolicy.CustomConstraint;
/// import com.pulumi.gcp.orgpolicy.CustomConstraintArgs;
/// import com.pulumi.gcp.orgpolicy.Policy;
/// import com.pulumi.gcp.orgpolicy.PolicyArgs;
/// import com.pulumi.gcp.orgpolicy.inputs.PolicySpecArgs;
/// import com.pulumi.gcp.orgpolicy.inputs.PolicyDryRunSpecArgs;
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
///         var constraint = new CustomConstraint("constraint", CustomConstraintArgs.builder()
///             .name("custom.disableGkeAutoUpgrade_15022")
///             .parent("organizations/123456789")
///             .displayName("Disable GKE auto upgrade")
///             .description("Only allow GKE NodePool resource to be created or updated if AutoUpgrade is not enabled where this custom constraint is enforced.")
///             .actionType("ALLOW")
///             .condition("resource.management.autoUpgrade == false")
///             .methodTypes("CREATE")
///             .resourceTypes("container.googleapis.com/NodePool")
///             .build());
///
///         var primary = new Policy("primary", PolicyArgs.builder()
///             .name(constraint.name().applyValue(_name -> String.format("organizations/123456789/policies/%s", _name)))
///             .parent("organizations/123456789")
///             .spec(PolicySpecArgs.builder()
///                 .rules(PolicySpecRuleArgs.builder()
///                     .enforce("FALSE")
///                     .build())
///                 .build())
///             .dryRunSpec(PolicyDryRunSpecArgs.builder()
///                 .inheritFromParent(false)
///                 .reset(false)
///                 .rules(PolicyDryRunSpecRuleArgs.builder()
///                     .enforce("FALSE")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   constraint:
///     type: gcp:orgpolicy:CustomConstraint
///     properties:
///       name: custom.disableGkeAutoUpgrade_15022
///       parent: organizations/123456789
///       displayName: Disable GKE auto upgrade
///       description: Only allow GKE NodePool resource to be created or updated if AutoUpgrade is not enabled where this custom constraint is enforced.
///       actionType: ALLOW
///       condition: resource.management.autoUpgrade == false
///       methodTypes:
///         - CREATE
///       resourceTypes:
///         - container.googleapis.com/NodePool
///   primary:
///     type: gcp:orgpolicy:Policy
///     properties:
///       name: organizations/123456789/policies/${constraint.name}
///       parent: organizations/123456789
///       spec:
///         rules:
///           - enforce: FALSE
///       dryRunSpec:
///         inheritFromParent: false
///         reset: false
///         rules:
///           - enforce: FALSE
/// ```
///
/// ### Org Policy Policy Parameters Enforce
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const basic = new gcp.organizations.Project("basic", {
///     projectId: "id",
///     name: "id",
///     orgId: "123456789",
///     deletionPolicy: "DELETE",
/// });
/// const primary = new gcp.orgpolicy.Policy("primary", {
///     name: pulumi.interpolate`projects/${basic.name}/policies/compute.managed.restrictDiskCreation`,
///     parent: pulumi.interpolate`projects/${basic.name}`,
///     spec: {
///         rules: [{
///             enforce: "TRUE",
///             parameters: JSON.stringify({
///                 isSizeLimitCheck: true,
///                 allowedDiskTypes: [
///                     "pd-ssd",
///                     "pd-standard",
///                 ],
///             }),
///         }],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_gcp as gcp
///
/// basic = gcp.organizations.Project("basic",
///     project_id="id",
///     name="id",
///     org_id="123456789",
///     deletion_policy="DELETE")
/// primary = gcp.orgpolicy.Policy("primary",
///     name=basic.name.apply(lambda name: f"projects/{name}/policies/compute.managed.restrictDiskCreation"),
///     parent=basic.name.apply(lambda name: f"projects/{name}"),
///     spec={
///         "rules": [{
///             "enforce": "TRUE",
///             "parameters": json.dumps({
///                 "isSizeLimitCheck": True,
///                 "allowedDiskTypes": [
///                     "pd-ssd",
///                     "pd-standard",
///                 ],
///             }),
///         }],
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var basic = new Gcp.Organizations.Project("basic", new()
///     {
///         ProjectId = "id",
///         Name = "id",
///         OrgId = "123456789",
///         DeletionPolicy = "DELETE",
///     });
///
///     var primary = new Gcp.OrgPolicy.Policy("primary", new()
///     {
///         Name = basic.Name.Apply(name => $"projects/{name}/policies/compute.managed.restrictDiskCreation"),
///         Parent = basic.Name.Apply(name => $"projects/{name}"),
///         Spec = new Gcp.OrgPolicy.Inputs.PolicySpecArgs
///         {
///             Rules = new[]
///             {
///                 new Gcp.OrgPolicy.Inputs.PolicySpecRuleArgs
///                 {
///                     Enforce = "TRUE",
///                     Parameters = JsonSerializer.Serialize(new Dictionary<string, object?>
///                     {
///                         ["isSizeLimitCheck"] = true,
///                         ["allowedDiskTypes"] = new[]
///                         {
///                             "pd-ssd",
///                             "pd-standard",
///                         },
///                     }),
///                 },
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"encoding/json"
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/orgpolicy"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		basic, err := organizations.NewProject(ctx, "basic", &organizations.ProjectArgs{
/// 			ProjectId:      pulumi.String("id"),
/// 			Name:           pulumi.String("id"),
/// 			OrgId:          pulumi.String("123456789"),
/// 			DeletionPolicy: pulumi.String("DELETE"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 			"isSizeLimitCheck": true,
/// 			"allowedDiskTypes": []string{
/// 				"pd-ssd",
/// 				"pd-standard",
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		_, err = orgpolicy.NewPolicy(ctx, "primary", &orgpolicy.PolicyArgs{
/// 			Name: basic.Name.ApplyT(func(name string) (string, error) {
/// 				return fmt.Sprintf("projects/%v/policies/compute.managed.restrictDiskCreation", name), nil
/// 			}).(pulumi.StringOutput),
/// 			Parent: basic.Name.ApplyT(func(name string) (string, error) {
/// 				return fmt.Sprintf("projects/%v", name), nil
/// 			}).(pulumi.StringOutput),
/// 			Spec: &orgpolicy.PolicySpecArgs{
/// 				Rules: orgpolicy.PolicySpecRuleArray{
/// 					&orgpolicy.PolicySpecRuleArgs{
/// 						Enforce:    pulumi.String("TRUE"),
/// 						Parameters: pulumi.String(json0),
/// 					},
/// 				},
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
/// import com.pulumi.gcp.organizations.Project;
/// import com.pulumi.gcp.organizations.ProjectArgs;
/// import com.pulumi.gcp.orgpolicy.Policy;
/// import com.pulumi.gcp.orgpolicy.PolicyArgs;
/// import com.pulumi.gcp.orgpolicy.inputs.PolicySpecArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
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
///         var basic = new Project("basic", ProjectArgs.builder()
///             .projectId("id")
///             .name("id")
///             .orgId("123456789")
///             .deletionPolicy("DELETE")
///             .build());
///
///         var primary = new Policy("primary", PolicyArgs.builder()
///             .name(basic.name().applyValue(_name -> String.format("projects/%s/policies/compute.managed.restrictDiskCreation", _name)))
///             .parent(basic.name().applyValue(_name -> String.format("projects/%s", _name)))
///             .spec(PolicySpecArgs.builder()
///                 .rules(PolicySpecRuleArgs.builder()
///                     .enforce("TRUE")
///                     .parameters(serializeJson(
///                         jsonObject(
///                             jsonProperty("isSizeLimitCheck", true),
///                             jsonProperty("allowedDiskTypes", jsonArray(
///                                 "pd-ssd",
///                                 "pd-standard"
///                             ))
///                         )))
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   primary:
///     type: gcp:orgpolicy:Policy
///     properties:
///       name: projects/${basic.name}/policies/compute.managed.restrictDiskCreation
///       parent: projects/${basic.name}
///       spec:
///         rules:
///           - enforce: TRUE
///             parameters:
///               fn::toJSON:
///                 isSizeLimitCheck: true
///                 allowedDiskTypes:
///                   - pd-ssd
///                   - pd-standard
///   basic:
///     type: gcp:organizations:Project
///     properties:
///       projectId: id
///       name: id
///       orgId: '123456789'
///       deletionPolicy: DELETE
/// ```
///
///
/// ## Import
///
/// Policy can be imported using any of these accepted formats:
///
/// * `{{parent}}/policies/{{name}}`
///
/// When using the `pulumi import` command, Policy can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:orgpolicy/policy:Policy default {{parent}}/policies/{{name}}
/// ```
class Policy extends pulumi.CustomResource {
  /// Dry-run policy. Audit-only policy, can be used to monitor how the policy would have impacted the existing and future resources if it's enforced.
  /// Structure is documented below.
  late final pulumi.Output<PolicyDryRunSpec?> dryRunSpec;

  /// Optional. An opaque tag indicating the current state of the policy, used for concurrency control. This 'etag' is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  late final pulumi.Output<String> etag;

  /// Immutable. The resource name of the Policy. Must be one of the following forms, where constraint_name is the name of the constraint which this Policy configures: * `projects/{project_number}/policies/{constraint_name}` * `folders/{folder_id}/policies/{constraint_name}` * `organizations/{organization_id}/policies/{constraint_name}` For example, "projects/123/policies/compute.disableSerialPortAccess". Note: `projects/{project_id}/policies/{constraint_name}` is also an acceptable name for API requests, but responses will return the name using the equivalent project number.
  late final pulumi.Output<String> name;

  /// The parent of the resource.
  late final pulumi.Output<String> parent;

  /// Basic information about the Organization Policy.
  /// Structure is documented below.
  late final pulumi.Output<PolicySpec?> spec;

  /// Creates a new [Policy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Policy]. {@macro pulumi_orgpolicy_policy_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Policy(String name, {PolicyArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'gcp:orgpolicy/policy:Policy',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    dryRunSpec = registerOutput<PolicyDryRunSpec?>('dryRunSpec');
    etag = registerOutput<String>('etag');
    this.name = registerOutput<String>('name');
    parent = registerOutput<String>('parent');
    spec = registerOutput<PolicySpec?>('spec');
  }

  /// Gets an existing [Policy] resource's state with the given [name] and [id].
  static Policy get(
    String name,
    pulumi.Input<String> id, {
    PolicyState? state,
  }) {
    return Policy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Policy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:orgpolicy/policy:Policy',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    dryRunSpec = registerOutput<PolicyDryRunSpec?>('dryRunSpec');
    etag = registerOutput<String>('etag');
    this.name = registerOutput<String>('name');
    parent = registerOutput<String>('parent');
    spec = registerOutput<PolicySpec?>('spec');
  }
}
