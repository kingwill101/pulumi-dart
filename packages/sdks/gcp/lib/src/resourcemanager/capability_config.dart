import 'package:pulumi/pulumi.dart' as pulumi;
import 'capability_config_args.dart';
import 'capability_config_state.dart';

/// Capability configs define the enabled capabilities and their scope of
/// enforcement for folders, organizations, or projects within the resource hierarchy.
///
///
/// To get more information about CapabilityConfig, see:
///
/// * [API documentation](https://docs.cloud.google.com/resource-manager/reference/rest)
/// * How-to Guides
/// * [Official Documentation](https://docs.cloud.google.com/resource-manager/docs/manage-applications)
///
/// ## Example Usage
///
/// ### Resource Manager Capability Config Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const capabilityConfig = new gcp.resourcemanager.CapabilityConfig("capability_config", {
///     parent: "organizations/123456789",
///     capabilityConfigId: "capcfg",
///     displayName: "capdisp",
///     types: ["AGENT_MANAGEMENT"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// capability_config = gcp.resourcemanager.CapabilityConfig("capability_config",
///     parent="organizations/123456789",
///     capability_config_id="capcfg",
///     display_name="capdisp",
///     types=["AGENT_MANAGEMENT"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var capabilityConfig = new Gcp.ResourceManager.CapabilityConfig("capability_config", new()
///     {
///         Parent = "organizations/123456789",
///         CapabilityConfigId = "capcfg",
///         DisplayName = "capdisp",
///         Types = new[]
///         {
///             "AGENT_MANAGEMENT",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/resourcemanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := resourcemanager.NewCapabilityConfig(ctx, "capability_config", &resourcemanager.CapabilityConfigArgs{
/// 			Parent:             pulumi.String("organizations/123456789"),
/// 			CapabilityConfigId: pulumi.String("capcfg"),
/// 			DisplayName:        pulumi.String("capdisp"),
/// 			Types: pulumi.StringArray{
/// 				pulumi.String("AGENT_MANAGEMENT"),
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
/// resource "gcp_resourcemanager_capabilityconfig" "capability_config" {
///   parent               = "organizations/123456789"
///   capability_config_id = "capcfg"
///   display_name         = "capdisp"
///   types                = ["AGENT_MANAGEMENT"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.resourcemanager.CapabilityConfig;
/// import com.pulumi.gcp.resourcemanager.CapabilityConfigArgs;
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
///         var capabilityConfig = new CapabilityConfig("capabilityConfig", CapabilityConfigArgs.builder()
///             .parent("organizations/123456789")
///             .capabilityConfigId("capcfg")
///             .displayName("capdisp")
///             .types("AGENT_MANAGEMENT")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   capabilityConfig:
///     type: gcp:resourcemanager:CapabilityConfig
///     name: capability_config
///     properties:
///       parent: organizations/123456789
///       capabilityConfigId: capcfg
///       displayName: capdisp
///       types:
///         - AGENT_MANAGEMENT
/// ```
///
/// ### Resource Manager Capability Config Folder
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as time from "@pulumiverse/time";
///
/// const folder = new gcp.organizations.Folder("folder", {
///     displayName: "capcfg-fldr",
///     parent: "organizations/123456789",
///     deletionProtection: false,
/// });
/// // An existing project can be supplied as the management project. If
/// // management_project is omitted, the API creates one automatically.
/// const managementProject = new gcp.organizations.Project("management_project", {
///     projectId: "capcfg-mgmt",
///     name: "capcfg-mgmt",
///     folderId: folder.folderId,
///     billingAccount: "000000-0000000-0000000-000000",
///     deletionPolicy: "DELETE",
/// });
/// // wait for project creation
/// const wait60Seconds = new time.Sleep("wait_60_seconds", {createDuration: "60s"}, {
///     dependsOn: [managementProject],
/// });
/// const capabilityConfig = new gcp.resourcemanager.CapabilityConfig("capability_config", {
///     parent: folder.name,
///     capabilityConfigId: "capcfg",
///     displayName: "Folder capability config",
///     types: ["AGENT_MANAGEMENT"],
///     managementProject: pulumi.interpolate`projects/${managementProject.number}`,
/// }, {
///     dependsOn: [wait60Seconds],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumiverse_time as time
///
/// folder = gcp.organizations.Folder("folder",
///     display_name="capcfg-fldr",
///     parent="organizations/123456789",
///     deletion_protection=False)
/// # An existing project can be supplied as the management project. If
/// # management_project is omitted, the API creates one automatically.
/// management_project = gcp.organizations.Project("management_project",
///     project_id="capcfg-mgmt",
///     name="capcfg-mgmt",
///     folder_id=folder.folder_id,
///     billing_account="000000-0000000-0000000-000000",
///     deletion_policy="DELETE")
/// # wait for project creation
/// wait60_seconds = time.Sleep("wait_60_seconds", create_duration="60s",
/// opts = pulumi.ResourceOptions(depends_on=[management_project]))
/// capability_config = gcp.resourcemanager.CapabilityConfig("capability_config",
///     parent=folder.name,
///     capability_config_id="capcfg",
///     display_name="Folder capability config",
///     types=["AGENT_MANAGEMENT"],
///     management_project=management_project.number.apply(lambda number: f"projects/{number}"),
///     opts = pulumi.ResourceOptions(depends_on=[wait60_seconds]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
/// using Time = Pulumiverse.Time;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var folder = new Gcp.Organizations.Folder("folder", new()
///     {
///         DisplayName = "capcfg-fldr",
///         Parent = "organizations/123456789",
///         DeletionProtection = false,
///     });
///
///     // An existing project can be supplied as the management project. If
///     // management_project is omitted, the API creates one automatically.
///     var managementProject = new Gcp.Organizations.Project("management_project", new()
///     {
///         ProjectId = "capcfg-mgmt",
///         Name = "capcfg-mgmt",
///         FolderId = folder.FolderId,
///         BillingAccount = "000000-0000000-0000000-000000",
///         DeletionPolicy = "DELETE",
///     });
///
///     // wait for project creation
///     var wait60Seconds = new Time.Sleep("wait_60_seconds", new()
///     {
///         CreateDuration = "60s",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             managementProject,
///         },
///     });
///
///     var capabilityConfig = new Gcp.ResourceManager.CapabilityConfig("capability_config", new()
///     {
///         Parent = folder.Name,
///         CapabilityConfigId = "capcfg",
///         DisplayName = "Folder capability config",
///         Types = new[]
///         {
///             "AGENT_MANAGEMENT",
///         },
///         ManagementProject = managementProject.Number.Apply(number => $"projects/{number}"),
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             wait60Seconds,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/resourcemanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumiverse/pulumi-time/sdk/go/time"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		folder, err := organizations.NewFolder(ctx, "folder", &organizations.FolderArgs{
/// 			DisplayName:        pulumi.String("capcfg-fldr"),
/// 			Parent:             pulumi.String("organizations/123456789"),
/// 			DeletionProtection: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// An existing project can be supplied as the management project. If
/// 		// management_project is omitted, the API creates one automatically.
/// 		managementProject, err := organizations.NewProject(ctx, "management_project", &organizations.ProjectArgs{
/// 			ProjectId:      pulumi.String("capcfg-mgmt"),
/// 			Name:           pulumi.String("capcfg-mgmt"),
/// 			FolderId:       folder.FolderId,
/// 			BillingAccount: pulumi.String("000000-0000000-0000000-000000"),
/// 			DeletionPolicy: pulumi.String("DELETE"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// wait for project creation
/// 		wait60Seconds, err := time.NewSleep(ctx, "wait_60_seconds", &time.SleepArgs{
/// 			CreateDuration: pulumi.String("60s"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			managementProject,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = resourcemanager.NewCapabilityConfig(ctx, "capability_config", &resourcemanager.CapabilityConfigArgs{
/// 			Parent:             folder.Name,
/// 			CapabilityConfigId: pulumi.String("capcfg"),
/// 			DisplayName:        pulumi.String("Folder capability config"),
/// 			Types: pulumi.StringArray{
/// 				pulumi.String("AGENT_MANAGEMENT"),
/// 			},
/// 			ManagementProject: managementProject.Number.ApplyT(func(number string) (string, error) {
/// 				return fmt.Sprintf("projects/%v", number), nil
/// 			}).(pulumi.StringOutput),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			wait60Seconds,
/// 		}))
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
///     time = {
///       source = "pulumi/time"
///     }
///   }
/// }
///
/// resource "gcp_organizations_folder" "folder" {
///   display_name        = "capcfg-fldr"
///   parent              = "organizations/123456789"
///   deletion_protection = false
/// }
/// # An existing project can be supplied as the management project. If
/// # management_project is omitted, the API creates one automatically.
/// resource "gcp_organizations_project" "management_project" {
///   project_id      = "capcfg-mgmt"
///   name            = "capcfg-mgmt"
///   folder_id       = gcp_organizations_folder.folder.folder_id
///   billing_account = "000000-0000000-0000000-000000"
///   deletion_policy = "DELETE"
/// }
/// // wait for project creation
/// resource "time_sleep" "wait_60_seconds" {
///   depends_on      = [gcp_organizations_project.management_project]
///   create_duration = "60s"
/// }
/// resource "gcp_resourcemanager_capabilityconfig" "capability_config" {
///   depends_on           = [time_sleep.wait_60_seconds]
///   parent               = gcp_organizations_folder.folder.name
///   capability_config_id = "capcfg"
///   display_name         = "Folder capability config"
///   types                = ["AGENT_MANAGEMENT"]
///   management_project   ="projects/${gcp_organizations_project.management_project.number}"
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
/// import com.pulumi.gcp.organizations.Project;
/// import com.pulumi.gcp.organizations.ProjectArgs;
/// import com.pulumiverse.time.Sleep;
/// import com.pulumiverse.time.SleepArgs;
/// import com.pulumi.gcp.resourcemanager.CapabilityConfig;
/// import com.pulumi.gcp.resourcemanager.CapabilityConfigArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var folder = new Folder("folder", FolderArgs.builder()
///             .displayName("capcfg-fldr")
///             .parent("organizations/123456789")
///             .deletionProtection(false)
///             .build());
///
///         // An existing project can be supplied as the management project. If
///         // management_project is omitted, the API creates one automatically.
///         var managementProject = new Project("managementProject", ProjectArgs.builder()
///             .projectId("capcfg-mgmt")
///             .name("capcfg-mgmt")
///             .folderId(folder.folderId())
///             .billingAccount("000000-0000000-0000000-000000")
///             .deletionPolicy("DELETE")
///             .build());
///
///         // wait for project creation
///         var wait60Seconds = new Sleep("wait60Seconds", SleepArgs.builder()
///             .createDuration("60s")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(managementProject)
///                 .build());
///
///         var capabilityConfig = new CapabilityConfig("capabilityConfig", CapabilityConfigArgs.builder()
///             .parent(folder.name())
///             .capabilityConfigId("capcfg")
///             .displayName("Folder capability config")
///             .types("AGENT_MANAGEMENT")
///             .managementProject(managementProject.number().applyValue(_number -> String.format("projects/%s", _number)))
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(wait60Seconds)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   folder:
///     type: gcp:organizations:Folder
///     properties:
///       displayName: capcfg-fldr
///       parent: organizations/123456789
///       deletionProtection: false
///   # An existing project can be supplied as the management project. If
///   # management_project is omitted, the API creates one automatically.
///   managementProject:
///     type: gcp:organizations:Project
///     name: management_project
///     properties:
///       projectId: capcfg-mgmt
///       name: capcfg-mgmt
///       folderId: ${folder.folderId}
///       billingAccount: 000000-0000000-0000000-000000
///       deletionPolicy: DELETE
///   # wait for project creation
///   wait60Seconds:
///     type: time:Sleep
///     name: wait_60_seconds
///     properties:
///       createDuration: 60s
///     options:
///       dependsOn:
///         - ${managementProject}
///   capabilityConfig:
///     type: gcp:resourcemanager:CapabilityConfig
///     name: capability_config
///     properties:
///       parent: ${folder.name}
///       capabilityConfigId: capcfg
///       displayName: Folder capability config
///       types:
///         - AGENT_MANAGEMENT
///       managementProject: projects/${managementProject.number}
///     options:
///       dependsOn:
///         - ${wait60Seconds}
/// ```
///
/// ### Resource Manager Capability Config Project
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as time from "@pulumiverse/time";
///
/// const project = new gcp.organizations.Project("project", {
///     projectId: "capcfg-proj",
///     name: "capcfg-proj",
///     orgId: "123456789",
///     billingAccount: "000000-0000000-0000000-000000",
///     deletionPolicy: "DELETE",
/// });
/// // wait for project creation
/// const wait60Seconds = new time.Sleep("wait_60_seconds", {createDuration: "60s"}, {
///     dependsOn: [project],
/// });
/// const capabilityConfig = new gcp.resourcemanager.CapabilityConfig("capability_config", {
///     parent: pulumi.interpolate`projects/${project.number}`,
///     capabilityConfigId: "capcfg",
///     displayName: "Project capability config",
///     types: ["AGENT_MANAGEMENT"],
///     managementProject: pulumi.interpolate`projects/${project.number}`,
/// }, {
///     dependsOn: [wait60Seconds],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumiverse_time as time
///
/// project = gcp.organizations.Project("project",
///     project_id="capcfg-proj",
///     name="capcfg-proj",
///     org_id="123456789",
///     billing_account="000000-0000000-0000000-000000",
///     deletion_policy="DELETE")
/// # wait for project creation
/// wait60_seconds = time.Sleep("wait_60_seconds", create_duration="60s",
/// opts = pulumi.ResourceOptions(depends_on=[project]))
/// capability_config = gcp.resourcemanager.CapabilityConfig("capability_config",
///     parent=project.number.apply(lambda number: f"projects/{number}"),
///     capability_config_id="capcfg",
///     display_name="Project capability config",
///     types=["AGENT_MANAGEMENT"],
///     management_project=project.number.apply(lambda number: f"projects/{number}"),
///     opts = pulumi.ResourceOptions(depends_on=[wait60_seconds]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
/// using Time = Pulumiverse.Time;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var project = new Gcp.Organizations.Project("project", new()
///     {
///         ProjectId = "capcfg-proj",
///         Name = "capcfg-proj",
///         OrgId = "123456789",
///         BillingAccount = "000000-0000000-0000000-000000",
///         DeletionPolicy = "DELETE",
///     });
///
///     // wait for project creation
///     var wait60Seconds = new Time.Sleep("wait_60_seconds", new()
///     {
///         CreateDuration = "60s",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             project,
///         },
///     });
///
///     var capabilityConfig = new Gcp.ResourceManager.CapabilityConfig("capability_config", new()
///     {
///         Parent = project.Number.Apply(number => $"projects/{number}"),
///         CapabilityConfigId = "capcfg",
///         DisplayName = "Project capability config",
///         Types = new[]
///         {
///             "AGENT_MANAGEMENT",
///         },
///         ManagementProject = project.Number.Apply(number => $"projects/{number}"),
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             wait60Seconds,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/resourcemanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumiverse/pulumi-time/sdk/go/time"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		project, err := organizations.NewProject(ctx, "project", &organizations.ProjectArgs{
/// 			ProjectId:      pulumi.String("capcfg-proj"),
/// 			Name:           pulumi.String("capcfg-proj"),
/// 			OrgId:          pulumi.String("123456789"),
/// 			BillingAccount: pulumi.String("000000-0000000-0000000-000000"),
/// 			DeletionPolicy: pulumi.String("DELETE"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// wait for project creation
/// 		wait60Seconds, err := time.NewSleep(ctx, "wait_60_seconds", &time.SleepArgs{
/// 			CreateDuration: pulumi.String("60s"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			project,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = resourcemanager.NewCapabilityConfig(ctx, "capability_config", &resourcemanager.CapabilityConfigArgs{
/// 			Parent: project.Number.ApplyT(func(number string) (string, error) {
/// 				return fmt.Sprintf("projects/%v", number), nil
/// 			}).(pulumi.StringOutput),
/// 			CapabilityConfigId: pulumi.String("capcfg"),
/// 			DisplayName:        pulumi.String("Project capability config"),
/// 			Types: pulumi.StringArray{
/// 				pulumi.String("AGENT_MANAGEMENT"),
/// 			},
/// 			ManagementProject: project.Number.ApplyT(func(number string) (string, error) {
/// 				return fmt.Sprintf("projects/%v", number), nil
/// 			}).(pulumi.StringOutput),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			wait60Seconds,
/// 		}))
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
///     time = {
///       source = "pulumi/time"
///     }
///   }
/// }
///
/// resource "gcp_organizations_project" "project" {
///   project_id      = "capcfg-proj"
///   name            = "capcfg-proj"
///   org_id          = "123456789"
///   billing_account = "000000-0000000-0000000-000000"
///   deletion_policy = "DELETE"
/// }
/// // wait for project creation
/// resource "time_sleep" "wait_60_seconds" {
///   depends_on      = [gcp_organizations_project.project]
///   create_duration = "60s"
/// }
/// resource "gcp_resourcemanager_capabilityconfig" "capability_config" {
///   depends_on           = [time_sleep.wait_60_seconds]
///   parent               ="projects/${gcp_organizations_project.project.number}"
///   capability_config_id = "capcfg"
///   display_name         = "Project capability config"
///   types                = ["AGENT_MANAGEMENT"]
///   management_project   ="projects/${gcp_organizations_project.project.number}"
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
/// import com.pulumiverse.time.Sleep;
/// import com.pulumiverse.time.SleepArgs;
/// import com.pulumi.gcp.resourcemanager.CapabilityConfig;
/// import com.pulumi.gcp.resourcemanager.CapabilityConfigArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var project = new Project("project", ProjectArgs.builder()
///             .projectId("capcfg-proj")
///             .name("capcfg-proj")
///             .orgId("123456789")
///             .billingAccount("000000-0000000-0000000-000000")
///             .deletionPolicy("DELETE")
///             .build());
///
///         // wait for project creation
///         var wait60Seconds = new Sleep("wait60Seconds", SleepArgs.builder()
///             .createDuration("60s")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(project)
///                 .build());
///
///         var capabilityConfig = new CapabilityConfig("capabilityConfig", CapabilityConfigArgs.builder()
///             .parent(project.number().applyValue(_number -> String.format("projects/%s", _number)))
///             .capabilityConfigId("capcfg")
///             .displayName("Project capability config")
///             .types("AGENT_MANAGEMENT")
///             .managementProject(project.number().applyValue(_number -> String.format("projects/%s", _number)))
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(wait60Seconds)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   project:
///     type: gcp:organizations:Project
///     properties:
///       projectId: capcfg-proj
///       name: capcfg-proj
///       orgId: '123456789'
///       billingAccount: 000000-0000000-0000000-000000
///       deletionPolicy: DELETE
///   # wait for project creation
///   wait60Seconds:
///     type: time:Sleep
///     name: wait_60_seconds
///     properties:
///       createDuration: 60s
///     options:
///       dependsOn:
///         - ${project}
///   capabilityConfig:
///     type: gcp:resourcemanager:CapabilityConfig
///     name: capability_config
///     properties:
///       parent: projects/${project.number}
///       capabilityConfigId: capcfg
///       displayName: Project capability config
///       types:
///         - AGENT_MANAGEMENT
///       managementProject: projects/${project.number}
///     options:
///       dependsOn:
///         - ${wait60Seconds}
/// ```
///
///
/// ## Import
///
/// CapabilityConfig can be imported using any of these accepted formats:
///
/// * `{{parent}}/capabilityConfigs/{{capability_config_id}}`
///
///
/// When using the `pulumi import` command, CapabilityConfig can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:resourcemanager/capabilityConfig:CapabilityConfig default {{parent}}/capabilityConfigs/{{capability_config_id}}
/// ```
class CapabilityConfig extends pulumi.CustomResource {
  /// User-specified identifier of the capability config. Must be 6 to 30 characters,
  /// and contain only lowercase letters, numbers, and hyphens.
  late final pulumi.Output<String> capabilityConfigId;
  /// The time when the capability config was created.
  late final pulumi.Output<String> createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// User-defined name for the capability config. Must be between 4 and 30 characters.
  late final pulumi.Output<String?> displayName;
  /// An opaque tag indicating the current version of the capability config, used for concurrency control.
  late final pulumi.Output<String> etag;
  /// The management project for the capability config. If unspecified, a project will be created automatically.
  /// Must be specified for project-scoped capability config.
  /// Format: `projects/{project_number}`.
  late final pulumi.Output<String> managementProject;
  /// The identifier for the capability config.
  /// Format: `{parent}/capabilityConfigs/{capability_config_id}`.
  late final pulumi.Output<String> name;
  /// The parent resource in which to create the capability config.
  /// Format: `folders/{folder_id}`, `organizations/{organization_id}`, or `projects/{project_number}`.
  late final pulumi.Output<String> parent;
  /// The state of the capability config.
  late final pulumi.Output<String> state;
  /// The capabilities enabled for the resource and its sub-tree.
  /// Possible values: "AGENT_MANAGEMENT".
  late final pulumi.Output<List<String>> types;
  /// The time when the capability config was last updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [CapabilityConfig].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CapabilityConfig]. {@macro pulumi_resourcemanager_capability_config_capability_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CapabilityConfig(
    String name, {
    CapabilityConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:resourcemanager/capabilityConfig:CapabilityConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '10.1.0').merge(options),
        ) {
    capabilityConfigId = registerOutput<String>('capabilityConfigId');
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String?>('displayName');
    etag = registerOutput<String>('etag');
    managementProject = registerOutput<String>('managementProject');
    this.name = registerOutput<String>('name');
    parent = registerOutput<String>('parent');
    state = registerOutput<String>('state');
    types = registerOutput<List<String>>('types', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [CapabilityConfig] resource's state with the given [name] and [id].
  static CapabilityConfig get(
    String name,
    pulumi.Input<String> id, {
    CapabilityConfigState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return CapabilityConfig._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  CapabilityConfig._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:resourcemanager/capabilityConfig:CapabilityConfig',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    capabilityConfigId = registerOutput<String>('capabilityConfigId');
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String?>('displayName');
    etag = registerOutput<String>('etag');
    managementProject = registerOutput<String>('managementProject');
    this.name = registerOutput<String>('name');
    parent = registerOutput<String>('parent');
    this.state = registerOutput<String>('state');
    types = registerOutput<List<String>>('types', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    updateTime = registerOutput<String>('updateTime');
  }

  /// Creates a typed reference to an existing [CapabilityConfig] resource.
  CapabilityConfig.reference(String urn)
    : super(
        'gcp:resourcemanager/capabilityConfig:CapabilityConfig',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    capabilityConfigId = registerOutput<String>('capabilityConfigId');
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String?>('displayName');
    etag = registerOutput<String>('etag');
    managementProject = registerOutput<String>('managementProject');
    this.name = registerOutput<String>('name');
    parent = registerOutput<String>('parent');
    state = registerOutput<String>('state');
    types = registerOutput<List<String>>('types', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    updateTime = registerOutput<String>('updateTime');
  }
}
