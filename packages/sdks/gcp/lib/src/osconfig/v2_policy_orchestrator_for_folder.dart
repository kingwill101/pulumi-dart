import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2_policy_orchestrator_for_folder_args.dart';
import 'v2_policy_orchestrator_for_folder_orchestrated_resource.dart';
import 'v2_policy_orchestrator_for_folder_orchestration_scope.dart';
import 'v2_policy_orchestrator_for_folder_state.dart';

/// PolicyOrchestrator helps managing project+zone level policy resources (e.g.
/// OS Policy Assignments), by providing tools to create, update and delete them
/// across projects and locations, at scale.
///
///
///
/// ## Example Usage
///
/// ### Osconfigv2 Policy Orchestrator For Folder Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as time from "@pulumiverse/time";
///
/// const myFolder = new gcp.organizations.Folder("my_folder", {
///     displayName: "po-folder",
///     parent: "organizations/123456789",
///     deletionProtection: false,
/// });
/// const osconfigSa = new gcp.folder.ServiceIdentity("osconfig_sa", {
///     folder: myFolder.folderId,
///     service: "osconfig.googleapis.com",
/// });
/// const rippleSa = new gcp.folder.ServiceIdentity("ripple_sa", {
///     folder: myFolder.folderId,
///     service: "progressiverollout.googleapis.com",
/// });
/// const wait30Sec = new time.Sleep("wait_30_sec", {createDuration: "30s"}, {
///     dependsOn: [
///         osconfigSa,
///         rippleSa,
///     ],
/// });
/// const iamOsconfigServiceAgent = new gcp.folder.IAMMember("iam_osconfig_service_agent", {
///     folder: myFolder.folderId,
///     role: "roles/osconfig.serviceAgent",
///     member: osconfigSa.member,
/// }, {
///     dependsOn: [wait30Sec],
/// });
/// const iamOsconfigRolloutServiceAgent = new gcp.folder.IAMMember("iam_osconfig_rollout_service_agent", {
///     folder: myFolder.folderId,
///     role: "roles/osconfig.rolloutServiceAgent",
///     member: pulumi.interpolate`serviceAccount:service-folder-${myFolder.folderId}@gcp-sa-osconfig-rollout.iam.gserviceaccount.com`,
/// }, {
///     dependsOn: [iamOsconfigServiceAgent],
/// });
/// const iamProgressiverolloutServiceAgent = new gcp.folder.IAMMember("iam_progressiverollout_service_agent", {
///     folder: myFolder.folderId,
///     role: "roles/progressiverollout.serviceAgent",
///     member: rippleSa.member,
/// }, {
///     dependsOn: [iamOsconfigRolloutServiceAgent],
/// });
/// const wait3Min = new time.Sleep("wait_3_min", {createDuration: "180s"}, {
///     dependsOn: [iamProgressiverolloutServiceAgent],
/// });
/// const policyOrchestratorForFolder = new gcp.osconfig.V2PolicyOrchestratorForFolder("policy_orchestrator_for_folder", {
///     policyOrchestratorId: "po-folder",
///     folderId: myFolder.folderId,
///     state: "ACTIVE",
///     action: "UPSERT",
///     orchestratedResource: {
///         id: "test-orchestrated-resource-folder",
///         osPolicyAssignmentV1Payload: {
///             osPolicies: [{
///                 id: "test-os-policy-folder",
///                 mode: "VALIDATION",
///                 resourceGroups: [{
///                     resources: [{
///                         id: "resource-tf",
///                         file: {
///                             content: "file-content-tf",
///                             path: "file-path-tf-1",
///                             state: "PRESENT",
///                         },
///                     }],
///                 }],
///             }],
///             instanceFilter: {
///                 inventories: [{
///                     osShortName: "windows-10",
///                 }],
///             },
///             rollout: {
///                 disruptionBudget: {
///                     percent: 100,
///                 },
///                 minWaitDuration: "60s",
///             },
///         },
///     },
///     labels: {
///         state: "active",
///     },
///     orchestrationScope: {
///         selectors: [{
///             locationSelector: {
///                 includedLocations: [""],
///             },
///         }],
///     },
/// }, {
///     dependsOn: [wait3Min],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumiverse_time as time
///
/// my_folder = gcp.organizations.Folder("my_folder",
///     display_name="po-folder",
///     parent="organizations/123456789",
///     deletion_protection=False)
/// osconfig_sa = gcp.folder.ServiceIdentity("osconfig_sa",
///     folder=my_folder.folder_id,
///     service="osconfig.googleapis.com")
/// ripple_sa = gcp.folder.ServiceIdentity("ripple_sa",
///     folder=my_folder.folder_id,
///     service="progressiverollout.googleapis.com")
/// wait30_sec = time.Sleep("wait_30_sec", create_duration="30s",
/// opts = pulumi.ResourceOptions(depends_on=[
///         osconfig_sa,
///         ripple_sa,
///     ]))
/// iam_osconfig_service_agent = gcp.folder.IAMMember("iam_osconfig_service_agent",
///     folder=my_folder.folder_id,
///     role="roles/osconfig.serviceAgent",
///     member=osconfig_sa.member,
///     opts = pulumi.ResourceOptions(depends_on=[wait30_sec]))
/// iam_osconfig_rollout_service_agent = gcp.folder.IAMMember("iam_osconfig_rollout_service_agent",
///     folder=my_folder.folder_id,
///     role="roles/osconfig.rolloutServiceAgent",
///     member=my_folder.folder_id.apply(lambda folder_id: f"serviceAccount:service-folder-{folder_id}@gcp-sa-osconfig-rollout.iam.gserviceaccount.com"),
///     opts = pulumi.ResourceOptions(depends_on=[iam_osconfig_service_agent]))
/// iam_progressiverollout_service_agent = gcp.folder.IAMMember("iam_progressiverollout_service_agent",
///     folder=my_folder.folder_id,
///     role="roles/progressiverollout.serviceAgent",
///     member=ripple_sa.member,
///     opts = pulumi.ResourceOptions(depends_on=[iam_osconfig_rollout_service_agent]))
/// wait3_min = time.Sleep("wait_3_min", create_duration="180s",
/// opts = pulumi.ResourceOptions(depends_on=[iam_progressiverollout_service_agent]))
/// policy_orchestrator_for_folder = gcp.osconfig.V2PolicyOrchestratorForFolder("policy_orchestrator_for_folder",
///     policy_orchestrator_id="po-folder",
///     folder_id=my_folder.folder_id,
///     state="ACTIVE",
///     action="UPSERT",
///     orchestrated_resource={
///         "id": "test-orchestrated-resource-folder",
///         "os_policy_assignment_v1_payload": {
///             "os_policies": [{
///                 "id": "test-os-policy-folder",
///                 "mode": "VALIDATION",
///                 "resource_groups": [{
///                     "resources": [{
///                         "id": "resource-tf",
///                         "file": {
///                             "content": "file-content-tf",
///                             "path": "file-path-tf-1",
///                             "state": "PRESENT",
///                         },
///                     }],
///                 }],
///             }],
///             "instance_filter": {
///                 "inventories": [{
///                     "os_short_name": "windows-10",
///                 }],
///             },
///             "rollout": {
///                 "disruption_budget": {
///                     "percent": 100,
///                 },
///                 "min_wait_duration": "60s",
///             },
///         },
///     },
///     labels={
///         "state": "active",
///     },
///     orchestration_scope={
///         "selectors": [{
///             "location_selector": {
///                 "included_locations": [""],
///             },
///         }],
///     },
///     opts = pulumi.ResourceOptions(depends_on=[wait3_min]))
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
///     var myFolder = new Gcp.Organizations.Folder("my_folder", new()
///     {
///         DisplayName = "po-folder",
///         Parent = "organizations/123456789",
///         DeletionProtection = false,
///     });
///
///     var osconfigSa = new Gcp.Folder.ServiceIdentity("osconfig_sa", new()
///     {
///         Folder = myFolder.FolderId,
///         Service = "osconfig.googleapis.com",
///     });
///
///     var rippleSa = new Gcp.Folder.ServiceIdentity("ripple_sa", new()
///     {
///         Folder = myFolder.FolderId,
///         Service = "progressiverollout.googleapis.com",
///     });
///
///     var wait30Sec = new Time.Sleep("wait_30_sec", new()
///     {
///         CreateDuration = "30s",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             osconfigSa,
///             rippleSa,
///         },
///     });
///
///     var iamOsconfigServiceAgent = new Gcp.Folder.IAMMember("iam_osconfig_service_agent", new()
///     {
///         Folder = myFolder.FolderId,
///         Role = "roles/osconfig.serviceAgent",
///         Member = osconfigSa.Member,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             wait30Sec,
///         },
///     });
///
///     var iamOsconfigRolloutServiceAgent = new Gcp.Folder.IAMMember("iam_osconfig_rollout_service_agent", new()
///     {
///         Folder = myFolder.FolderId,
///         Role = "roles/osconfig.rolloutServiceAgent",
///         Member = myFolder.FolderId.Apply(folderId => $"serviceAccount:service-folder-{folderId}@gcp-sa-osconfig-rollout.iam.gserviceaccount.com"),
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             iamOsconfigServiceAgent,
///         },
///     });
///
///     var iamProgressiverolloutServiceAgent = new Gcp.Folder.IAMMember("iam_progressiverollout_service_agent", new()
///     {
///         Folder = myFolder.FolderId,
///         Role = "roles/progressiverollout.serviceAgent",
///         Member = rippleSa.Member,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             iamOsconfigRolloutServiceAgent,
///         },
///     });
///
///     var wait3Min = new Time.Sleep("wait_3_min", new()
///     {
///         CreateDuration = "180s",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             iamProgressiverolloutServiceAgent,
///         },
///     });
///
///     var policyOrchestratorForFolder = new Gcp.OsConfig.V2PolicyOrchestratorForFolder("policy_orchestrator_for_folder", new()
///     {
///         PolicyOrchestratorId = "po-folder",
///         FolderId = myFolder.FolderId,
///         State = "ACTIVE",
///         Action = "UPSERT",
///         OrchestratedResource = new Gcp.OsConfig.Inputs.V2PolicyOrchestratorForFolderOrchestratedResourceArgs
///         {
///             Id = "test-orchestrated-resource-folder",
///             OsPolicyAssignmentV1Payload = new Gcp.OsConfig.Inputs.V2PolicyOrchestratorForFolderOrchestratedResourceOsPolicyAssignmentV1PayloadArgs
///             {
///                 OsPolicies = new[]
///                 {
///                     new Gcp.OsConfig.Inputs.V2PolicyOrchestratorForFolderOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyArgs
///                     {
///                         Id = "test-os-policy-folder",
///                         Mode = "VALIDATION",
///                         ResourceGroups = new[]
///                         {
///                             new Gcp.OsConfig.Inputs.V2PolicyOrchestratorForFolderOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupArgs
///                             {
///                                 Resources = new[]
///                                 {
///                                     new Gcp.OsConfig.Inputs.V2PolicyOrchestratorForFolderOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourceArgs
///                                     {
///                                         Id = "resource-tf",
///                                         File = new Gcp.OsConfig.Inputs.V2PolicyOrchestratorForFolderOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourceFileArgs
///                                         {
///                                             Content = "file-content-tf",
///                                             Path = "file-path-tf-1",
///                                             State = "PRESENT",
///                                         },
///                                     },
///                                 },
///                             },
///                         },
///                     },
///                 },
///                 InstanceFilter = new Gcp.OsConfig.Inputs.V2PolicyOrchestratorForFolderOrchestratedResourceOsPolicyAssignmentV1PayloadInstanceFilterArgs
///                 {
///                     Inventories = new[]
///                     {
///                         new Gcp.OsConfig.Inputs.V2PolicyOrchestratorForFolderOrchestratedResourceOsPolicyAssignmentV1PayloadInstanceFilterInventoryArgs
///                         {
///                             OsShortName = "windows-10",
///                         },
///                     },
///                 },
///                 Rollout = new Gcp.OsConfig.Inputs.V2PolicyOrchestratorForFolderOrchestratedResourceOsPolicyAssignmentV1PayloadRolloutArgs
///                 {
///                     DisruptionBudget = new Gcp.OsConfig.Inputs.V2PolicyOrchestratorForFolderOrchestratedResourceOsPolicyAssignmentV1PayloadRolloutDisruptionBudgetArgs
///                     {
///                         Percent = 100,
///                     },
///                     MinWaitDuration = "60s",
///                 },
///             },
///         },
///         Labels =
///         {
///             { "state", "active" },
///         },
///         OrchestrationScope = new Gcp.OsConfig.Inputs.V2PolicyOrchestratorForFolderOrchestrationScopeArgs
///         {
///             Selectors = new[]
///             {
///                 new Gcp.OsConfig.Inputs.V2PolicyOrchestratorForFolderOrchestrationScopeSelectorArgs
///                 {
///                     LocationSelector = new Gcp.OsConfig.Inputs.V2PolicyOrchestratorForFolderOrchestrationScopeSelectorLocationSelectorArgs
///                     {
///                         IncludedLocations = new[]
///                         {
///                             "",
///                         },
///                     },
///                 },
///             },
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             wait3Min,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/folder"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/osconfig"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumiverse/pulumi-time/sdk/go/time"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		myFolder, err := organizations.NewFolder(ctx, "my_folder", &organizations.FolderArgs{
/// 			DisplayName:        pulumi.String("po-folder"),
/// 			Parent:             pulumi.String("organizations/123456789"),
/// 			DeletionProtection: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		osconfigSa, err := folder.NewServiceIdentity(ctx, "osconfig_sa", &folder.ServiceIdentityArgs{
/// 			Folder:  myFolder.FolderId,
/// 			Service: pulumi.String("osconfig.googleapis.com"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		rippleSa, err := folder.NewServiceIdentity(ctx, "ripple_sa", &folder.ServiceIdentityArgs{
/// 			Folder:  myFolder.FolderId,
/// 			Service: pulumi.String("progressiverollout.googleapis.com"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		wait30Sec, err := time.NewSleep(ctx, "wait_30_sec", &time.SleepArgs{
/// 			CreateDuration: pulumi.String("30s"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			osconfigSa,
/// 			rippleSa,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		iamOsconfigServiceAgent, err := folder.NewIAMMember(ctx, "iam_osconfig_service_agent", &folder.IAMMemberArgs{
/// 			Folder: myFolder.FolderId,
/// 			Role:   pulumi.String("roles/osconfig.serviceAgent"),
/// 			Member: osconfigSa.Member,
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			wait30Sec,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		iamOsconfigRolloutServiceAgent, err := folder.NewIAMMember(ctx, "iam_osconfig_rollout_service_agent", &folder.IAMMemberArgs{
/// 			Folder: myFolder.FolderId,
/// 			Role:   pulumi.String("roles/osconfig.rolloutServiceAgent"),
/// 			Member: myFolder.FolderId.ApplyT(func(folderId string) (string, error) {
/// 				return fmt.Sprintf("serviceAccount:service-folder-%v@gcp-sa-osconfig-rollout.iam.gserviceaccount.com", folderId), nil
/// 			}).(pulumi.StringOutput),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			iamOsconfigServiceAgent,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		iamProgressiverolloutServiceAgent, err := folder.NewIAMMember(ctx, "iam_progressiverollout_service_agent", &folder.IAMMemberArgs{
/// 			Folder: myFolder.FolderId,
/// 			Role:   pulumi.String("roles/progressiverollout.serviceAgent"),
/// 			Member: rippleSa.Member,
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			iamOsconfigRolloutServiceAgent,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		wait3Min, err := time.NewSleep(ctx, "wait_3_min", &time.SleepArgs{
/// 			CreateDuration: pulumi.String("180s"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			iamProgressiverolloutServiceAgent,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = osconfig.NewV2PolicyOrchestratorForFolder(ctx, "policy_orchestrator_for_folder", &osconfig.V2PolicyOrchestratorForFolderArgs{
/// 			PolicyOrchestratorId: pulumi.String("po-folder"),
/// 			FolderId:             myFolder.FolderId,
/// 			State:                pulumi.String("ACTIVE"),
/// 			Action:               pulumi.String("UPSERT"),
/// 			OrchestratedResource: &osconfig.V2PolicyOrchestratorForFolderOrchestratedResourceArgs{
/// 				Id: pulumi.String("test-orchestrated-resource-folder"),
/// 				OsPolicyAssignmentV1Payload: &osconfig.V2PolicyOrchestratorForFolderOrchestratedResourceOsPolicyAssignmentV1PayloadArgs{
/// 					OsPolicies: osconfig.V2PolicyOrchestratorForFolderOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyArray{
/// 						&osconfig.V2PolicyOrchestratorForFolderOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyArgs{
/// 							Id:   pulumi.String("test-os-policy-folder"),
/// 							Mode: pulumi.String("VALIDATION"),
/// 							ResourceGroups: osconfig.V2PolicyOrchestratorForFolderOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupArray{
/// 								&osconfig.V2PolicyOrchestratorForFolderOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupArgs{
/// 									Resources: osconfig.V2PolicyOrchestratorForFolderOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourceArray{
/// 										&osconfig.V2PolicyOrchestratorForFolderOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourceArgs{
/// 											Id: pulumi.String("resource-tf"),
/// 											File: &osconfig.V2PolicyOrchestratorForFolderOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourceFileArgs{
/// 												Content: pulumi.String("file-content-tf"),
/// 												Path:    pulumi.String("file-path-tf-1"),
/// 												State:   pulumi.String("PRESENT"),
/// 											},
/// 										},
/// 									},
/// 								},
/// 							},
/// 						},
/// 					},
/// 					InstanceFilter: &osconfig.V2PolicyOrchestratorForFolderOrchestratedResourceOsPolicyAssignmentV1PayloadInstanceFilterArgs{
/// 						Inventories: osconfig.V2PolicyOrchestratorForFolderOrchestratedResourceOsPolicyAssignmentV1PayloadInstanceFilterInventoryArray{
/// 							&osconfig.V2PolicyOrchestratorForFolderOrchestratedResourceOsPolicyAssignmentV1PayloadInstanceFilterInventoryArgs{
/// 								OsShortName: pulumi.String("windows-10"),
/// 							},
/// 						},
/// 					},
/// 					Rollout: &osconfig.V2PolicyOrchestratorForFolderOrchestratedResourceOsPolicyAssignmentV1PayloadRolloutArgs{
/// 						DisruptionBudget: &osconfig.V2PolicyOrchestratorForFolderOrchestratedResourceOsPolicyAssignmentV1PayloadRolloutDisruptionBudgetArgs{
/// 							Percent: pulumi.Int(100),
/// 						},
/// 						MinWaitDuration: pulumi.String("60s"),
/// 					},
/// 				},
/// 			},
/// 			Labels: pulumi.StringMap{
/// 				"state": pulumi.String("active"),
/// 			},
/// 			OrchestrationScope: &osconfig.V2PolicyOrchestratorForFolderOrchestrationScopeArgs{
/// 				Selectors: osconfig.V2PolicyOrchestratorForFolderOrchestrationScopeSelectorArray{
/// 					&osconfig.V2PolicyOrchestratorForFolderOrchestrationScopeSelectorArgs{
/// 						LocationSelector: &osconfig.V2PolicyOrchestratorForFolderOrchestrationScopeSelectorLocationSelectorArgs{
/// 							IncludedLocations: pulumi.StringArray{
/// 								pulumi.String(""),
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			wait3Min,
/// 		}))
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
/// import com.pulumi.gcp.folder.ServiceIdentity;
/// import com.pulumi.gcp.folder.ServiceIdentityArgs;
/// import com.pulumiverse.time.Sleep;
/// import com.pulumiverse.time.SleepArgs;
/// import com.pulumi.gcp.folder.IAMMember;
/// import com.pulumi.gcp.folder.IAMMemberArgs;
/// import com.pulumi.gcp.osconfig.V2PolicyOrchestratorForFolder;
/// import com.pulumi.gcp.osconfig.V2PolicyOrchestratorForFolderArgs;
/// import com.pulumi.gcp.osconfig.inputs.V2PolicyOrchestratorForFolderOrchestratedResourceArgs;
/// import com.pulumi.gcp.osconfig.inputs.V2PolicyOrchestratorForFolderOrchestratedResourceOsPolicyAssignmentV1PayloadArgs;
/// import com.pulumi.gcp.osconfig.inputs.V2PolicyOrchestratorForFolderOrchestratedResourceOsPolicyAssignmentV1PayloadInstanceFilterArgs;
/// import com.pulumi.gcp.osconfig.inputs.V2PolicyOrchestratorForFolderOrchestratedResourceOsPolicyAssignmentV1PayloadRolloutArgs;
/// import com.pulumi.gcp.osconfig.inputs.V2PolicyOrchestratorForFolderOrchestratedResourceOsPolicyAssignmentV1PayloadRolloutDisruptionBudgetArgs;
/// import com.pulumi.gcp.osconfig.inputs.V2PolicyOrchestratorForFolderOrchestrationScopeArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var myFolder = new Folder("myFolder", FolderArgs.builder()
///             .displayName("po-folder")
///             .parent("organizations/123456789")
///             .deletionProtection(false)
///             .build());
///
///         var osconfigSa = new ServiceIdentity("osconfigSa", ServiceIdentityArgs.builder()
///             .folder(myFolder.folderId())
///             .service("osconfig.googleapis.com")
///             .build());
///
///         var rippleSa = new ServiceIdentity("rippleSa", ServiceIdentityArgs.builder()
///             .folder(myFolder.folderId())
///             .service("progressiverollout.googleapis.com")
///             .build());
///
///         var wait30Sec = new Sleep("wait30Sec", SleepArgs.builder()
///             .createDuration("30s")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(
///                     osconfigSa,
///                     rippleSa)
///                 .build());
///
///         var iamOsconfigServiceAgent = new IAMMember("iamOsconfigServiceAgent", IAMMemberArgs.builder()
///             .folder(myFolder.folderId())
///             .role("roles/osconfig.serviceAgent")
///             .member(osconfigSa.member())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(wait30Sec)
///                 .build());
///
///         var iamOsconfigRolloutServiceAgent = new IAMMember("iamOsconfigRolloutServiceAgent", IAMMemberArgs.builder()
///             .folder(myFolder.folderId())
///             .role("roles/osconfig.rolloutServiceAgent")
///             .member(myFolder.folderId().applyValue(_folderId -> String.format("serviceAccount:service-folder-%s@gcp-sa-osconfig-rollout.iam.gserviceaccount.com", _folderId)))
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(iamOsconfigServiceAgent)
///                 .build());
///
///         var iamProgressiverolloutServiceAgent = new IAMMember("iamProgressiverolloutServiceAgent", IAMMemberArgs.builder()
///             .folder(myFolder.folderId())
///             .role("roles/progressiverollout.serviceAgent")
///             .member(rippleSa.member())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(iamOsconfigRolloutServiceAgent)
///                 .build());
///
///         var wait3Min = new Sleep("wait3Min", SleepArgs.builder()
///             .createDuration("180s")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(iamProgressiverolloutServiceAgent)
///                 .build());
///
///         var policyOrchestratorForFolder = new V2PolicyOrchestratorForFolder("policyOrchestratorForFolder", V2PolicyOrchestratorForFolderArgs.builder()
///             .policyOrchestratorId("po-folder")
///             .folderId(myFolder.folderId())
///             .state("ACTIVE")
///             .action("UPSERT")
///             .orchestratedResource(V2PolicyOrchestratorForFolderOrchestratedResourceArgs.builder()
///                 .id("test-orchestrated-resource-folder")
///                 .osPolicyAssignmentV1Payload(V2PolicyOrchestratorForFolderOrchestratedResourceOsPolicyAssignmentV1PayloadArgs.builder()
///                     .osPolicies(V2PolicyOrchestratorForFolderOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyArgs.builder()
///                         .id("test-os-policy-folder")
///                         .mode("VALIDATION")
///                         .resourceGroups(V2PolicyOrchestratorForFolderOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupArgs.builder()
///                             .resources(V2PolicyOrchestratorForFolderOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourceArgs.builder()
///                                 .id("resource-tf")
///                                 .file(V2PolicyOrchestratorForFolderOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourceFileArgs.builder()
///                                     .content("file-content-tf")
///                                     .path("file-path-tf-1")
///                                     .state("PRESENT")
///                                     .build())
///                                 .build())
///                             .build())
///                         .build())
///                     .instanceFilter(V2PolicyOrchestratorForFolderOrchestratedResourceOsPolicyAssignmentV1PayloadInstanceFilterArgs.builder()
///                         .inventories(V2PolicyOrchestratorForFolderOrchestratedResourceOsPolicyAssignmentV1PayloadInstanceFilterInventoryArgs.builder()
///                             .osShortName("windows-10")
///                             .build())
///                         .build())
///                     .rollout(V2PolicyOrchestratorForFolderOrchestratedResourceOsPolicyAssignmentV1PayloadRolloutArgs.builder()
///                         .disruptionBudget(V2PolicyOrchestratorForFolderOrchestratedResourceOsPolicyAssignmentV1PayloadRolloutDisruptionBudgetArgs.builder()
///                             .percent(100)
///                             .build())
///                         .minWaitDuration("60s")
///                         .build())
///                     .build())
///                 .build())
///             .labels(Map.of("state", "active"))
///             .orchestrationScope(V2PolicyOrchestratorForFolderOrchestrationScopeArgs.builder()
///                 .selectors(V2PolicyOrchestratorForFolderOrchestrationScopeSelectorArgs.builder()
///                     .locationSelector(V2PolicyOrchestratorForFolderOrchestrationScopeSelectorLocationSelectorArgs.builder()
///                         .includedLocations("")
///                         .build())
///                     .build())
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(wait3Min)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   myFolder:
///     type: gcp:organizations:Folder
///     name: my_folder
///     properties:
///       displayName: po-folder
///       parent: organizations/123456789
///       deletionProtection: false
///   osconfigSa:
///     type: gcp:folder:ServiceIdentity
///     name: osconfig_sa
///     properties:
///       folder: ${myFolder.folderId}
///       service: osconfig.googleapis.com
///   rippleSa:
///     type: gcp:folder:ServiceIdentity
///     name: ripple_sa
///     properties:
///       folder: ${myFolder.folderId}
///       service: progressiverollout.googleapis.com
///   wait30Sec:
///     type: time:Sleep
///     name: wait_30_sec
///     properties:
///       createDuration: 30s
///     options:
///       dependsOn:
///         - ${osconfigSa}
///         - ${rippleSa}
///   iamOsconfigServiceAgent:
///     type: gcp:folder:IAMMember
///     name: iam_osconfig_service_agent
///     properties:
///       folder: ${myFolder.folderId}
///       role: roles/osconfig.serviceAgent
///       member: ${osconfigSa.member}
///     options:
///       dependsOn:
///         - ${wait30Sec}
///   iamOsconfigRolloutServiceAgent:
///     type: gcp:folder:IAMMember
///     name: iam_osconfig_rollout_service_agent
///     properties:
///       folder: ${myFolder.folderId}
///       role: roles/osconfig.rolloutServiceAgent
///       member: serviceAccount:service-folder-${myFolder.folderId}@gcp-sa-osconfig-rollout.iam.gserviceaccount.com
///     options:
///       dependsOn:
///         - ${iamOsconfigServiceAgent}
///   iamProgressiverolloutServiceAgent:
///     type: gcp:folder:IAMMember
///     name: iam_progressiverollout_service_agent
///     properties:
///       folder: ${myFolder.folderId}
///       role: roles/progressiverollout.serviceAgent
///       member: ${rippleSa.member}
///     options:
///       dependsOn:
///         - ${iamOsconfigRolloutServiceAgent}
///   wait3Min:
///     type: time:Sleep
///     name: wait_3_min
///     properties:
///       createDuration: 180s
///     options:
///       dependsOn:
///         - ${iamProgressiverolloutServiceAgent}
///   policyOrchestratorForFolder:
///     type: gcp:osconfig:V2PolicyOrchestratorForFolder
///     name: policy_orchestrator_for_folder
///     properties:
///       policyOrchestratorId: po-folder
///       folderId: ${myFolder.folderId}
///       state: ACTIVE
///       action: UPSERT
///       orchestratedResource:
///         id: test-orchestrated-resource-folder
///         osPolicyAssignmentV1Payload:
///           osPolicies:
///             - id: test-os-policy-folder
///               mode: VALIDATION
///               resourceGroups:
///                 - resources:
///                     - id: resource-tf
///                       file:
///                         content: file-content-tf
///                         path: file-path-tf-1
///                         state: PRESENT
///           instanceFilter:
///             inventories:
///               - osShortName: windows-10
///           rollout:
///             disruptionBudget:
///               percent: 100
///             minWaitDuration: 60s
///       labels:
///         state: active
///       orchestrationScope:
///         selectors:
///           - locationSelector:
///               includedLocations:
///                 - ""
///     options:
///       dependsOn:
///         - ${wait3Min}
/// ```
///
///
/// ## Import
///
/// PolicyOrchestratorForFolder can be imported using any of these accepted formats:
///
/// * `folders/{{folder_id}}/locations/global/policyOrchestrators/{{policy_orchestrator_id}}`
///
/// * `{{folder_id}}/{{policy_orchestrator_id}}`
///
/// When using the `pulumi import` command, PolicyOrchestratorForFolder can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:osconfig/v2PolicyOrchestratorForFolder:V2PolicyOrchestratorForFolder default folders/{{folder_id}}/locations/global/policyOrchestrators/{{policy_orchestrator_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:osconfig/v2PolicyOrchestratorForFolder:V2PolicyOrchestratorForFolder default {{folder_id}}/{{policy_orchestrator_id}}
/// ```
class V2PolicyOrchestratorForFolder extends pulumi.CustomResource {
  /// Action to be done by the orchestrator in
  /// `projects/{project_id}/zones/{zone_id}` locations defined by the
  /// `orchestration_scope`. Allowed values:
  /// - `UPSERT` - Orchestrator will create or update target resources.
  /// - `DELETE` - Orchestrator will delete target resources, if they exist
  late final pulumi.Output<String> action;

  /// Timestamp when the policy orchestrator resource was created.
  late final pulumi.Output<String> createTime;

  /// Freeform text describing the purpose of the resource.
  late final pulumi.Output<String?> description;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// This checksum is computed by the server based on the value of other
  /// fields, and may be sent on update and delete requests to ensure the
  /// client has an up-to-date value before proceeding.
  late final pulumi.Output<String> etag;

  /// The parent resource name in the form of `folders/{folder_id}/locations/global`.
  late final pulumi.Output<String> folderId;

  /// Labels as key value pairs
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// Identifier. In form of
  /// * `organizations/{organization_id}/locations/global/policyOrchestrators/{orchestrator_id}`
  /// * `folders/{folder_id}/locations/global/policyOrchestrators/{orchestrator_id}`
  /// * `projects/{project_id_or_number}/locations/global/policyOrchestrators/{orchestrator_id}`
  late final pulumi.Output<String> name;

  /// Represents a resource that is being orchestrated by the policy orchestrator.
  /// Structure is documented below.
  late final pulumi.Output<V2PolicyOrchestratorForFolderOrchestratedResource>
  orchestratedResource;

  /// Defines a set of selectors which drive which resources are in scope of policy
  /// orchestration.
  /// Structure is documented below.
  late final pulumi.Output<V2PolicyOrchestratorForFolderOrchestrationScope?>
  orchestrationScope;

  /// Describes the state of the orchestration process.
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>> orchestrationStates;

  /// The logical identifier of the policy orchestrator, with the following
  /// restrictions:
  /// * Must contain only lowercase letters, numbers, and hyphens.
  /// * Must start with a letter.
  /// * Must be between 1-63 characters.
  /// * Must end with a number or a letter.
  /// * Must be unique within the parent.
  late final pulumi.Output<String> policyOrchestratorId;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// Set to true, if the there are ongoing changes being applied by the
  /// orchestrator.
  late final pulumi.Output<bool> reconciling;

  /// State of the orchestrator. Can be updated to change orchestrator behaviour.
  /// Allowed values:
  /// - `ACTIVE` - orchestrator is actively looking for actions to be taken.
  /// - `STOPPED` - orchestrator won't make any changes.
  /// Note: There might be more states added in the future. We use string here
  /// instead of an enum, to avoid the need of propagating new states to all the
  /// client code.
  late final pulumi.Output<String?> state;

  /// Timestamp when the policy orchestrator resource was last modified.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [V2PolicyOrchestratorForFolder].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [V2PolicyOrchestratorForFolder]. {@macro pulumi_osconfig_v2_policy_orchestrator_for_folder_v2_policy_orchestrator_for_folder_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  V2PolicyOrchestratorForFolder(
    String name, {
    V2PolicyOrchestratorForFolderArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:osconfig/v2PolicyOrchestratorForFolder:V2PolicyOrchestratorForFolder',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    action = registerOutput<String>('action');
    createTime = registerOutput<String>('createTime');
    description = registerOutput<String?>('description');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    etag = registerOutput<String>('etag');
    folderId = registerOutput<String>('folderId');
    labels = registerOutput<Map<String, String>?>('labels');
    this.name = registerOutput<String>('name');
    orchestratedResource =
        registerOutput<V2PolicyOrchestratorForFolderOrchestratedResource>(
          'orchestratedResource',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return V2PolicyOrchestratorForFolderOrchestratedResource.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    orchestrationScope =
        registerOutput<V2PolicyOrchestratorForFolderOrchestrationScope?>(
          'orchestrationScope',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return V2PolicyOrchestratorForFolderOrchestrationScope.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    orchestrationStates = registerOutput<List<Map<String, dynamic>>>(
      'orchestrationStates',
    );
    policyOrchestratorId = registerOutput<String>('policyOrchestratorId');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    reconciling = registerOutput<bool>('reconciling');
    state = registerOutput<String?>('state');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [V2PolicyOrchestratorForFolder] resource's state with the given [name] and [id].
  static V2PolicyOrchestratorForFolder get(
    String name,
    pulumi.Input<String> id, {
    V2PolicyOrchestratorForFolderState? state,
  }) {
    return V2PolicyOrchestratorForFolder._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  V2PolicyOrchestratorForFolder._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:osconfig/v2PolicyOrchestratorForFolder:V2PolicyOrchestratorForFolder',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    action = registerOutput<String>('action');
    createTime = registerOutput<String>('createTime');
    description = registerOutput<String?>('description');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    etag = registerOutput<String>('etag');
    folderId = registerOutput<String>('folderId');
    labels = registerOutput<Map<String, String>?>('labels');
    this.name = registerOutput<String>('name');
    orchestratedResource =
        registerOutput<V2PolicyOrchestratorForFolderOrchestratedResource>(
          'orchestratedResource',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return V2PolicyOrchestratorForFolderOrchestratedResource.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    orchestrationScope =
        registerOutput<V2PolicyOrchestratorForFolderOrchestrationScope?>(
          'orchestrationScope',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return V2PolicyOrchestratorForFolderOrchestrationScope.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    orchestrationStates = registerOutput<List<Map<String, dynamic>>>(
      'orchestrationStates',
    );
    policyOrchestratorId = registerOutput<String>('policyOrchestratorId');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    reconciling = registerOutput<bool>('reconciling');
    this.state = registerOutput<String?>('state');
    updateTime = registerOutput<String>('updateTime');
  }
}
