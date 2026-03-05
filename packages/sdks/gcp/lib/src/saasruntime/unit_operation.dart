import 'package:pulumi/pulumi.dart' as pulumi;
import 'unit_operation_args.dart';
import 'unit_operation_provision.dart';
import 'unit_operation_state.dart';
import 'unit_operation_upgrade.dart';

/// A UnitOperation encapsulates the intent to change or interact with a Unit. Operations such as provisioning, upgrading, or deprovisioning a Unit are triggered by creating a UnitOperation resource.
///
///
///
/// ## Example Usage
///
/// ### Saas Runtime Unit Operation Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const location = "us-east1";
/// const tenantProjectId = "tenant";
/// const exampleSaas = new gcp.saasruntime.SaaS("example_saas", {
///     saasId: "example-saas",
///     location: location,
///     locations: [{
///         name: location,
///     }],
/// });
/// const clusterUnitKind = new gcp.saasruntime.UnitKind("cluster_unit_kind", {
///     location: location,
///     unitKindId: "vm-unitkind",
///     saas: exampleSaas.id,
///     defaultRelease: `projects/my-project-name/locations/${location}/releases/example-release`,
/// });
/// const exampleRelease = new gcp.saasruntime.Release("example_release", {
///     location: location,
///     releaseId: "example-release",
///     unitKind: clusterUnitKind.id,
///     blueprint: {
///         "package": "us-central1-docker.pkg.dev/ci-test-project-188019/test-repo/tf-test-easysaas-alpha-image@sha256:7992fdbaeaf998ecd31a7f937bb26e38a781ecf49b24857a6176c1e9bfc299ee",
///     },
/// });
/// const exampleUnit = new gcp.saasruntime.Unit("example_unit", {
///     location: location,
///     unitId: "example-unit",
///     unitKind: clusterUnitKind.id,
/// });
/// const tenantProject = new gcp.organizations.Project("tenant_project", {
///     projectId: tenantProjectId,
///     name: tenantProjectId,
///     billingAccount: "000000-0000000-0000000-000000",
///     orgId: "123456789",
///     deletionPolicy: "DELETE",
/// });
/// const saasServices = new gcp.projects.Service("saas_services", {
///     project: tenantProject.projectId,
///     service: "compute.googleapis.com",
///     disableDependentServices: true,
/// });
/// const actuationServiceAccount = new gcp.serviceaccount.Account("actuation_service_account", {
///     accountId: "actuator",
///     displayName: "SaaS Actuation Service Account",
/// });
/// const tenantConfigAdmin = new gcp.projects.IAMMember("tenant_config_admin", {
///     project: tenantProject.projectId,
///     role: "roles/config.admin",
///     member: pulumi.interpolate`serviceAccount:${actuationServiceAccount.email}`,
/// });
/// const tenantStorageAdmin = new gcp.projects.IAMMember("tenant_storage_admin", {
///     project: tenantProject.projectId,
///     role: "roles/storage.admin",
///     member: pulumi.interpolate`serviceAccount:${actuationServiceAccount.email}`,
/// });
/// const tenantComputeAdmin = new gcp.projects.IAMMember("tenant_compute_admin", {
///     project: tenantProject.projectId,
///     role: "roles/compute.admin",
///     member: pulumi.interpolate`serviceAccount:${actuationServiceAccount.email}`,
/// });
/// const actuationTokenCreator = new gcp.serviceaccount.IAMMember("actuation_token_creator", {
///     serviceAccountId: actuationServiceAccount.name,
///     role: "roles/iam.serviceAccountTokenCreator",
///     member: "serviceAccount:service-1111111111111@gcp-sa-saasservicemgmt.iam.gserviceaccount.com",
/// });
/// const provisionUnitOperation = new gcp.saasruntime.UnitOperation("provision_unit_operation", {
///     location: location,
///     unitOperationId: "provision-unit-operation",
///     unit: exampleUnit.id,
///     waitForCompletion: true,
///     provision: {
///         release: exampleRelease.id,
///         inputVariables: [
///             {
///                 variable: "tenant_project_id",
///                 value: tenantProject.projectId,
///                 type: "STRING",
///             },
///             {
///                 variable: "tenant_project_number",
///                 value: tenantProject.number,
///                 type: "INT",
///             },
///             {
///                 variable: "zone",
///                 value: "us-central1-a",
///                 type: "STRING",
///             },
///             {
///                 variable: "instance_name",
///                 value: "terraform-test-instance",
///                 type: "STRING",
///             },
///             {
///                 variable: "actuation_sa",
///                 value: actuationServiceAccount.email,
///                 type: "STRING",
///             },
///         ],
///     },
///     labels: {
///         "label-one": "foo",
///     },
///     annotations: {
///         "annotation-one": "bar",
///     },
/// }, {
///     dependsOn: [
///         tenantConfigAdmin,
///         tenantStorageAdmin,
///         tenantComputeAdmin,
///         actuationTokenCreator,
///         saasServices,
///     ],
/// });
/// const noopUpgradeUnitOperation = new gcp.saasruntime.UnitOperation("noop_upgrade_unit_operation", {
///     location: location,
///     unitOperationId: "upgrade-unit-operation",
///     unit: exampleUnit.id,
///     waitForCompletion: true,
///     upgrade: {
///         release: exampleRelease.id,
///         inputVariables: [
///             {
///                 variable: "tenant_project_id",
///                 value: tenantProject.projectId,
///                 type: "STRING",
///             },
///             {
///                 variable: "tenant_project_number",
///                 value: tenantProject.number,
///                 type: "INT",
///             },
///             {
///                 variable: "zone",
///                 value: "us-central1-a",
///                 type: "STRING",
///             },
///             {
///                 variable: "instance_name",
///                 value: "terraform-test-instance",
///                 type: "STRING",
///             },
///             {
///                 variable: "actuation_sa",
///                 value: actuationServiceAccount.email,
///                 type: "STRING",
///             },
///         ],
///     },
/// }, {
///     dependsOn: [provisionUnitOperation],
/// });
/// const deprovisionOperation = new gcp.saasruntime.UnitOperation("deprovision_operation", {
///     location: location,
///     unitOperationId: "deprovision-unit-operation",
///     unit: exampleUnit.id,
///     waitForCompletion: true,
///     deprovision: {},
/// }, {
///     dependsOn: [noopUpgradeUnitOperation],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// location = "us-east1"
/// tenant_project_id = "tenant"
/// example_saas = gcp.saasruntime.SaaS("example_saas",
///     saas_id="example-saas",
///     location=location,
///     locations=[{
///         "name": location,
///     }])
/// cluster_unit_kind = gcp.saasruntime.UnitKind("cluster_unit_kind",
///     location=location,
///     unit_kind_id="vm-unitkind",
///     saas=example_saas.id,
///     default_release=f"projects/my-project-name/locations/{location}/releases/example-release")
/// example_release = gcp.saasruntime.Release("example_release",
///     location=location,
///     release_id="example-release",
///     unit_kind=cluster_unit_kind.id,
///     blueprint={
///         "package": "us-central1-docker.pkg.dev/ci-test-project-188019/test-repo/tf-test-easysaas-alpha-image@sha256:7992fdbaeaf998ecd31a7f937bb26e38a781ecf49b24857a6176c1e9bfc299ee",
///     })
/// example_unit = gcp.saasruntime.Unit("example_unit",
///     location=location,
///     unit_id="example-unit",
///     unit_kind=cluster_unit_kind.id)
/// tenant_project = gcp.organizations.Project("tenant_project",
///     project_id=tenant_project_id,
///     name=tenant_project_id,
///     billing_account="000000-0000000-0000000-000000",
///     org_id="123456789",
///     deletion_policy="DELETE")
/// saas_services = gcp.projects.Service("saas_services",
///     project=tenant_project.project_id,
///     service="compute.googleapis.com",
///     disable_dependent_services=True)
/// actuation_service_account = gcp.serviceaccount.Account("actuation_service_account",
///     account_id="actuator",
///     display_name="SaaS Actuation Service Account")
/// tenant_config_admin = gcp.projects.IAMMember("tenant_config_admin",
///     project=tenant_project.project_id,
///     role="roles/config.admin",
///     member=actuation_service_account.email.apply(lambda email: f"serviceAccount:{email}"))
/// tenant_storage_admin = gcp.projects.IAMMember("tenant_storage_admin",
///     project=tenant_project.project_id,
///     role="roles/storage.admin",
///     member=actuation_service_account.email.apply(lambda email: f"serviceAccount:{email}"))
/// tenant_compute_admin = gcp.projects.IAMMember("tenant_compute_admin",
///     project=tenant_project.project_id,
///     role="roles/compute.admin",
///     member=actuation_service_account.email.apply(lambda email: f"serviceAccount:{email}"))
/// actuation_token_creator = gcp.serviceaccount.IAMMember("actuation_token_creator",
///     service_account_id=actuation_service_account.name,
///     role="roles/iam.serviceAccountTokenCreator",
///     member="serviceAccount:service-1111111111111@gcp-sa-saasservicemgmt.iam.gserviceaccount.com")
/// provision_unit_operation = gcp.saasruntime.UnitOperation("provision_unit_operation",
///     location=location,
///     unit_operation_id="provision-unit-operation",
///     unit=example_unit.id,
///     wait_for_completion=True,
///     provision={
///         "release": example_release.id,
///         "input_variables": [
///             {
///                 "variable": "tenant_project_id",
///                 "value": tenant_project.project_id,
///                 "type": "STRING",
///             },
///             {
///                 "variable": "tenant_project_number",
///                 "value": tenant_project.number,
///                 "type": "INT",
///             },
///             {
///                 "variable": "zone",
///                 "value": "us-central1-a",
///                 "type": "STRING",
///             },
///             {
///                 "variable": "instance_name",
///                 "value": "terraform-test-instance",
///                 "type": "STRING",
///             },
///             {
///                 "variable": "actuation_sa",
///                 "value": actuation_service_account.email,
///                 "type": "STRING",
///             },
///         ],
///     },
///     labels={
///         "label-one": "foo",
///     },
///     annotations={
///         "annotation-one": "bar",
///     },
///     opts = pulumi.ResourceOptions(depends_on=[
///             tenant_config_admin,
///             tenant_storage_admin,
///             tenant_compute_admin,
///             actuation_token_creator,
///             saas_services,
///         ]))
/// noop_upgrade_unit_operation = gcp.saasruntime.UnitOperation("noop_upgrade_unit_operation",
///     location=location,
///     unit_operation_id="upgrade-unit-operation",
///     unit=example_unit.id,
///     wait_for_completion=True,
///     upgrade={
///         "release": example_release.id,
///         "input_variables": [
///             {
///                 "variable": "tenant_project_id",
///                 "value": tenant_project.project_id,
///                 "type": "STRING",
///             },
///             {
///                 "variable": "tenant_project_number",
///                 "value": tenant_project.number,
///                 "type": "INT",
///             },
///             {
///                 "variable": "zone",
///                 "value": "us-central1-a",
///                 "type": "STRING",
///             },
///             {
///                 "variable": "instance_name",
///                 "value": "terraform-test-instance",
///                 "type": "STRING",
///             },
///             {
///                 "variable": "actuation_sa",
///                 "value": actuation_service_account.email,
///                 "type": "STRING",
///             },
///         ],
///     },
///     opts = pulumi.ResourceOptions(depends_on=[provision_unit_operation]))
/// deprovision_operation = gcp.saasruntime.UnitOperation("deprovision_operation",
///     location=location,
///     unit_operation_id="deprovision-unit-operation",
///     unit=example_unit.id,
///     wait_for_completion=True,
///     deprovision={},
///     opts = pulumi.ResourceOptions(depends_on=[noop_upgrade_unit_operation]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var location = "us-east1";
///
///     var tenantProjectId = "tenant";
///
///     var exampleSaas = new Gcp.SaaSRuntime.SaaS("example_saas", new()
///     {
///         SaasId = "example-saas",
///         Location = location,
///         Locations = new[]
///         {
///             new Gcp.SaaSRuntime.Inputs.SaaSLocationArgs
///             {
///                 Name = location,
///             },
///         },
///     });
///
///     var clusterUnitKind = new Gcp.SaaSRuntime.UnitKind("cluster_unit_kind", new()
///     {
///         Location = location,
///         UnitKindId = "vm-unitkind",
///         Saas = exampleSaas.Id,
///         DefaultRelease = $"projects/my-project-name/locations/{location}/releases/example-release",
///     });
///
///     var exampleRelease = new Gcp.SaaSRuntime.Release("example_release", new()
///     {
///         Location = location,
///         ReleaseId = "example-release",
///         UnitKind = clusterUnitKind.Id,
///         Blueprint = new Gcp.SaaSRuntime.Inputs.ReleaseBlueprintArgs
///         {
///             Package = "us-central1-docker.pkg.dev/ci-test-project-188019/test-repo/tf-test-easysaas-alpha-image@sha256:7992fdbaeaf998ecd31a7f937bb26e38a781ecf49b24857a6176c1e9bfc299ee",
///         },
///     });
///
///     var exampleUnit = new Gcp.SaaSRuntime.Unit("example_unit", new()
///     {
///         Location = location,
///         UnitId = "example-unit",
///         UnitKind = clusterUnitKind.Id,
///     });
///
///     var tenantProject = new Gcp.Organizations.Project("tenant_project", new()
///     {
///         ProjectId = tenantProjectId,
///         Name = tenantProjectId,
///         BillingAccount = "000000-0000000-0000000-000000",
///         OrgId = "123456789",
///         DeletionPolicy = "DELETE",
///     });
///
///     var saasServices = new Gcp.Projects.Service("saas_services", new()
///     {
///         Project = tenantProject.ProjectId,
///         ServiceName = "compute.googleapis.com",
///         DisableDependentServices = true,
///     });
///
///     var actuationServiceAccount = new Gcp.ServiceAccount.Account("actuation_service_account", new()
///     {
///         AccountId = "actuator",
///         DisplayName = "SaaS Actuation Service Account",
///     });
///
///     var tenantConfigAdmin = new Gcp.Projects.IAMMember("tenant_config_admin", new()
///     {
///         Project = tenantProject.ProjectId,
///         Role = "roles/config.admin",
///         Member = actuationServiceAccount.Email.Apply(email => $"serviceAccount:{email}"),
///     });
///
///     var tenantStorageAdmin = new Gcp.Projects.IAMMember("tenant_storage_admin", new()
///     {
///         Project = tenantProject.ProjectId,
///         Role = "roles/storage.admin",
///         Member = actuationServiceAccount.Email.Apply(email => $"serviceAccount:{email}"),
///     });
///
///     var tenantComputeAdmin = new Gcp.Projects.IAMMember("tenant_compute_admin", new()
///     {
///         Project = tenantProject.ProjectId,
///         Role = "roles/compute.admin",
///         Member = actuationServiceAccount.Email.Apply(email => $"serviceAccount:{email}"),
///     });
///
///     var actuationTokenCreator = new Gcp.ServiceAccount.IAMMember("actuation_token_creator", new()
///     {
///         ServiceAccountId = actuationServiceAccount.Name,
///         Role = "roles/iam.serviceAccountTokenCreator",
///         Member = "serviceAccount:service-1111111111111@gcp-sa-saasservicemgmt.iam.gserviceaccount.com",
///     });
///
///     var provisionUnitOperation = new Gcp.SaaSRuntime.UnitOperation("provision_unit_operation", new()
///     {
///         Location = location,
///         UnitOperationId = "provision-unit-operation",
///         Unit = exampleUnit.Id,
///         WaitForCompletion = true,
///         Provision = new Gcp.SaaSRuntime.Inputs.UnitOperationProvisionArgs
///         {
///             Release = exampleRelease.Id,
///             InputVariables = new[]
///             {
///                 new Gcp.SaaSRuntime.Inputs.UnitOperationProvisionInputVariableArgs
///                 {
///                     Variable = "tenant_project_id",
///                     Value = tenantProject.ProjectId,
///                     Type = "STRING",
///                 },
///                 new Gcp.SaaSRuntime.Inputs.UnitOperationProvisionInputVariableArgs
///                 {
///                     Variable = "tenant_project_number",
///                     Value = tenantProject.Number,
///                     Type = "INT",
///                 },
///                 new Gcp.SaaSRuntime.Inputs.UnitOperationProvisionInputVariableArgs
///                 {
///                     Variable = "zone",
///                     Value = "us-central1-a",
///                     Type = "STRING",
///                 },
///                 new Gcp.SaaSRuntime.Inputs.UnitOperationProvisionInputVariableArgs
///                 {
///                     Variable = "instance_name",
///                     Value = "terraform-test-instance",
///                     Type = "STRING",
///                 },
///                 new Gcp.SaaSRuntime.Inputs.UnitOperationProvisionInputVariableArgs
///                 {
///                     Variable = "actuation_sa",
///                     Value = actuationServiceAccount.Email,
///                     Type = "STRING",
///                 },
///             },
///         },
///         Labels =
///         {
///             { "label-one", "foo" },
///         },
///         Annotations =
///         {
///             { "annotation-one", "bar" },
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             tenantConfigAdmin,
///             tenantStorageAdmin,
///             tenantComputeAdmin,
///             actuationTokenCreator,
///             saasServices,
///         },
///     });
///
///     var noopUpgradeUnitOperation = new Gcp.SaaSRuntime.UnitOperation("noop_upgrade_unit_operation", new()
///     {
///         Location = location,
///         UnitOperationId = "upgrade-unit-operation",
///         Unit = exampleUnit.Id,
///         WaitForCompletion = true,
///         Upgrade = new Gcp.SaaSRuntime.Inputs.UnitOperationUpgradeArgs
///         {
///             Release = exampleRelease.Id,
///             InputVariables = new[]
///             {
///                 new Gcp.SaaSRuntime.Inputs.UnitOperationUpgradeInputVariableArgs
///                 {
///                     Variable = "tenant_project_id",
///                     Value = tenantProject.ProjectId,
///                     Type = "STRING",
///                 },
///                 new Gcp.SaaSRuntime.Inputs.UnitOperationUpgradeInputVariableArgs
///                 {
///                     Variable = "tenant_project_number",
///                     Value = tenantProject.Number,
///                     Type = "INT",
///                 },
///                 new Gcp.SaaSRuntime.Inputs.UnitOperationUpgradeInputVariableArgs
///                 {
///                     Variable = "zone",
///                     Value = "us-central1-a",
///                     Type = "STRING",
///                 },
///                 new Gcp.SaaSRuntime.Inputs.UnitOperationUpgradeInputVariableArgs
///                 {
///                     Variable = "instance_name",
///                     Value = "terraform-test-instance",
///                     Type = "STRING",
///                 },
///                 new Gcp.SaaSRuntime.Inputs.UnitOperationUpgradeInputVariableArgs
///                 {
///                     Variable = "actuation_sa",
///                     Value = actuationServiceAccount.Email,
///                     Type = "STRING",
///                 },
///             },
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             provisionUnitOperation,
///         },
///     });
///
///     var deprovisionOperation = new Gcp.SaaSRuntime.UnitOperation("deprovision_operation", new()
///     {
///         Location = location,
///         UnitOperationId = "deprovision-unit-operation",
///         Unit = exampleUnit.Id,
///         WaitForCompletion = true,
///         Deprovision = null,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             noopUpgradeUnitOperation,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/projects"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/saasruntime"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/serviceaccount"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		location := "us-east1"
/// 		tenantProjectId := "tenant"
/// 		exampleSaas, err := saasruntime.NewSaaS(ctx, "example_saas", &saasruntime.SaaSArgs{
/// 			SaasId:   pulumi.String("example-saas"),
/// 			Location: pulumi.String(location),
/// 			Locations: saasruntime.SaaSLocationArray{
/// 				&saasruntime.SaaSLocationArgs{
/// 					Name: pulumi.String(location),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		clusterUnitKind, err := saasruntime.NewUnitKind(ctx, "cluster_unit_kind", &saasruntime.UnitKindArgs{
/// 			Location:       pulumi.String(location),
/// 			UnitKindId:     pulumi.String("vm-unitkind"),
/// 			Saas:           exampleSaas.ID(),
/// 			DefaultRelease: pulumi.Sprintf("projects/my-project-name/locations/%v/releases/example-release", location),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleRelease, err := saasruntime.NewRelease(ctx, "example_release", &saasruntime.ReleaseArgs{
/// 			Location:  pulumi.String(location),
/// 			ReleaseId: pulumi.String("example-release"),
/// 			UnitKind:  clusterUnitKind.ID(),
/// 			Blueprint: &saasruntime.ReleaseBlueprintArgs{
/// 				Package: pulumi.String("us-central1-docker.pkg.dev/ci-test-project-188019/test-repo/tf-test-easysaas-alpha-image@sha256:7992fdbaeaf998ecd31a7f937bb26e38a781ecf49b24857a6176c1e9bfc299ee"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleUnit, err := saasruntime.NewUnit(ctx, "example_unit", &saasruntime.UnitArgs{
/// 			Location: pulumi.String(location),
/// 			UnitId:   pulumi.String("example-unit"),
/// 			UnitKind: clusterUnitKind.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tenantProject, err := organizations.NewProject(ctx, "tenant_project", &organizations.ProjectArgs{
/// 			ProjectId:      pulumi.String(tenantProjectId),
/// 			Name:           pulumi.String(tenantProjectId),
/// 			BillingAccount: pulumi.String("000000-0000000-0000000-000000"),
/// 			OrgId:          pulumi.String("123456789"),
/// 			DeletionPolicy: pulumi.String("DELETE"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		saasServices, err := projects.NewService(ctx, "saas_services", &projects.ServiceArgs{
/// 			Project:                  tenantProject.ProjectId,
/// 			Service:                  pulumi.String("compute.googleapis.com"),
/// 			DisableDependentServices: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		actuationServiceAccount, err := serviceaccount.NewAccount(ctx, "actuation_service_account", &serviceaccount.AccountArgs{
/// 			AccountId:   pulumi.String("actuator"),
/// 			DisplayName: pulumi.String("SaaS Actuation Service Account"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tenantConfigAdmin, err := projects.NewIAMMember(ctx, "tenant_config_admin", &projects.IAMMemberArgs{
/// 			Project: tenantProject.ProjectId,
/// 			Role:    pulumi.String("roles/config.admin"),
/// 			Member: actuationServiceAccount.Email.ApplyT(func(email string) (string, error) {
/// 				return fmt.Sprintf("serviceAccount:%v", email), nil
/// 			}).(pulumi.StringOutput),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tenantStorageAdmin, err := projects.NewIAMMember(ctx, "tenant_storage_admin", &projects.IAMMemberArgs{
/// 			Project: tenantProject.ProjectId,
/// 			Role:    pulumi.String("roles/storage.admin"),
/// 			Member: actuationServiceAccount.Email.ApplyT(func(email string) (string, error) {
/// 				return fmt.Sprintf("serviceAccount:%v", email), nil
/// 			}).(pulumi.StringOutput),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tenantComputeAdmin, err := projects.NewIAMMember(ctx, "tenant_compute_admin", &projects.IAMMemberArgs{
/// 			Project: tenantProject.ProjectId,
/// 			Role:    pulumi.String("roles/compute.admin"),
/// 			Member: actuationServiceAccount.Email.ApplyT(func(email string) (string, error) {
/// 				return fmt.Sprintf("serviceAccount:%v", email), nil
/// 			}).(pulumi.StringOutput),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		actuationTokenCreator, err := serviceaccount.NewIAMMember(ctx, "actuation_token_creator", &serviceaccount.IAMMemberArgs{
/// 			ServiceAccountId: actuationServiceAccount.Name,
/// 			Role:             pulumi.String("roles/iam.serviceAccountTokenCreator"),
/// 			Member:           pulumi.String("serviceAccount:service-1111111111111@gcp-sa-saasservicemgmt.iam.gserviceaccount.com"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		provisionUnitOperation, err := saasruntime.NewUnitOperation(ctx, "provision_unit_operation", &saasruntime.UnitOperationArgs{
/// 			Location:          pulumi.String(location),
/// 			UnitOperationId:   pulumi.String("provision-unit-operation"),
/// 			Unit:              exampleUnit.ID(),
/// 			WaitForCompletion: pulumi.Bool(true),
/// 			Provision: &saasruntime.UnitOperationProvisionArgs{
/// 				Release: exampleRelease.ID(),
/// 				InputVariables: saasruntime.UnitOperationProvisionInputVariableArray{
/// 					&saasruntime.UnitOperationProvisionInputVariableArgs{
/// 						Variable: pulumi.String("tenant_project_id"),
/// 						Value:    tenantProject.ProjectId,
/// 						Type:     pulumi.String("STRING"),
/// 					},
/// 					&saasruntime.UnitOperationProvisionInputVariableArgs{
/// 						Variable: pulumi.String("tenant_project_number"),
/// 						Value:    tenantProject.Number,
/// 						Type:     pulumi.String("INT"),
/// 					},
/// 					&saasruntime.UnitOperationProvisionInputVariableArgs{
/// 						Variable: pulumi.String("zone"),
/// 						Value:    pulumi.String("us-central1-a"),
/// 						Type:     pulumi.String("STRING"),
/// 					},
/// 					&saasruntime.UnitOperationProvisionInputVariableArgs{
/// 						Variable: pulumi.String("instance_name"),
/// 						Value:    pulumi.String("terraform-test-instance"),
/// 						Type:     pulumi.String("STRING"),
/// 					},
/// 					&saasruntime.UnitOperationProvisionInputVariableArgs{
/// 						Variable: pulumi.String("actuation_sa"),
/// 						Value:    actuationServiceAccount.Email,
/// 						Type:     pulumi.String("STRING"),
/// 					},
/// 				},
/// 			},
/// 			Labels: pulumi.StringMap{
/// 				"label-one": pulumi.String("foo"),
/// 			},
/// 			Annotations: pulumi.StringMap{
/// 				"annotation-one": pulumi.String("bar"),
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			tenantConfigAdmin,
/// 			tenantStorageAdmin,
/// 			tenantComputeAdmin,
/// 			actuationTokenCreator,
/// 			saasServices,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		noopUpgradeUnitOperation, err := saasruntime.NewUnitOperation(ctx, "noop_upgrade_unit_operation", &saasruntime.UnitOperationArgs{
/// 			Location:          pulumi.String(location),
/// 			UnitOperationId:   pulumi.String("upgrade-unit-operation"),
/// 			Unit:              exampleUnit.ID(),
/// 			WaitForCompletion: pulumi.Bool(true),
/// 			Upgrade: &saasruntime.UnitOperationUpgradeArgs{
/// 				Release: exampleRelease.ID(),
/// 				InputVariables: saasruntime.UnitOperationUpgradeInputVariableArray{
/// 					&saasruntime.UnitOperationUpgradeInputVariableArgs{
/// 						Variable: pulumi.String("tenant_project_id"),
/// 						Value:    tenantProject.ProjectId,
/// 						Type:     pulumi.String("STRING"),
/// 					},
/// 					&saasruntime.UnitOperationUpgradeInputVariableArgs{
/// 						Variable: pulumi.String("tenant_project_number"),
/// 						Value:    tenantProject.Number,
/// 						Type:     pulumi.String("INT"),
/// 					},
/// 					&saasruntime.UnitOperationUpgradeInputVariableArgs{
/// 						Variable: pulumi.String("zone"),
/// 						Value:    pulumi.String("us-central1-a"),
/// 						Type:     pulumi.String("STRING"),
/// 					},
/// 					&saasruntime.UnitOperationUpgradeInputVariableArgs{
/// 						Variable: pulumi.String("instance_name"),
/// 						Value:    pulumi.String("terraform-test-instance"),
/// 						Type:     pulumi.String("STRING"),
/// 					},
/// 					&saasruntime.UnitOperationUpgradeInputVariableArgs{
/// 						Variable: pulumi.String("actuation_sa"),
/// 						Value:    actuationServiceAccount.Email,
/// 						Type:     pulumi.String("STRING"),
/// 					},
/// 				},
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			provisionUnitOperation,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = saasruntime.NewUnitOperation(ctx, "deprovision_operation", &saasruntime.UnitOperationArgs{
/// 			Location:          pulumi.String(location),
/// 			UnitOperationId:   pulumi.String("deprovision-unit-operation"),
/// 			Unit:              exampleUnit.ID(),
/// 			WaitForCompletion: pulumi.Bool(true),
/// 			Deprovision:       &saasruntime.UnitOperationDeprovisionArgs{},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			noopUpgradeUnitOperation,
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
/// import com.pulumi.gcp.saasruntime.SaaS;
/// import com.pulumi.gcp.saasruntime.SaaSArgs;
/// import com.pulumi.gcp.saasruntime.inputs.SaaSLocationArgs;
/// import com.pulumi.gcp.saasruntime.UnitKind;
/// import com.pulumi.gcp.saasruntime.UnitKindArgs;
/// import com.pulumi.gcp.saasruntime.Release;
/// import com.pulumi.gcp.saasruntime.ReleaseArgs;
/// import com.pulumi.gcp.saasruntime.inputs.ReleaseBlueprintArgs;
/// import com.pulumi.gcp.saasruntime.Unit;
/// import com.pulumi.gcp.saasruntime.UnitArgs;
/// import com.pulumi.gcp.organizations.Project;
/// import com.pulumi.gcp.organizations.ProjectArgs;
/// import com.pulumi.gcp.projects.Service;
/// import com.pulumi.gcp.projects.ServiceArgs;
/// import com.pulumi.gcp.serviceaccount.Account;
/// import com.pulumi.gcp.serviceaccount.AccountArgs;
/// import com.pulumi.gcp.saasruntime.UnitOperation;
/// import com.pulumi.gcp.saasruntime.UnitOperationArgs;
/// import com.pulumi.gcp.saasruntime.inputs.UnitOperationProvisionArgs;
/// import com.pulumi.gcp.saasruntime.inputs.UnitOperationUpgradeArgs;
/// import com.pulumi.gcp.saasruntime.inputs.UnitOperationDeprovisionArgs;
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
///         final var location = "us-east1";
///
///         final var tenantProjectId = "tenant";
///
///         var exampleSaas = new SaaS("exampleSaas", SaaSArgs.builder()
///             .saasId("example-saas")
///             .location(location)
///             .locations(SaaSLocationArgs.builder()
///                 .name(location)
///                 .build())
///             .build());
///
///         var clusterUnitKind = new UnitKind("clusterUnitKind", UnitKindArgs.builder()
///             .location(location)
///             .unitKindId("vm-unitkind")
///             .saas(exampleSaas.id())
///             .defaultRelease(String.format("projects/my-project-name/locations/%s/releases/example-release", location))
///             .build());
///
///         var exampleRelease = new Release("exampleRelease", ReleaseArgs.builder()
///             .location(location)
///             .releaseId("example-release")
///             .unitKind(clusterUnitKind.id())
///             .blueprint(ReleaseBlueprintArgs.builder()
///                 .package_("us-central1-docker.pkg.dev/ci-test-project-188019/test-repo/tf-test-easysaas-alpha-image@sha256:7992fdbaeaf998ecd31a7f937bb26e38a781ecf49b24857a6176c1e9bfc299ee")
///                 .build())
///             .build());
///
///         var exampleUnit = new Unit("exampleUnit", UnitArgs.builder()
///             .location(location)
///             .unitId("example-unit")
///             .unitKind(clusterUnitKind.id())
///             .build());
///
///         var tenantProject = new Project("tenantProject", ProjectArgs.builder()
///             .projectId(tenantProjectId)
///             .name(tenantProjectId)
///             .billingAccount("000000-0000000-0000000-000000")
///             .orgId("123456789")
///             .deletionPolicy("DELETE")
///             .build());
///
///         var saasServices = new Service("saasServices", ServiceArgs.builder()
///             .project(tenantProject.projectId())
///             .service("compute.googleapis.com")
///             .disableDependentServices(true)
///             .build());
///
///         var actuationServiceAccount = new Account("actuationServiceAccount", AccountArgs.builder()
///             .accountId("actuator")
///             .displayName("SaaS Actuation Service Account")
///             .build());
///
///         var tenantConfigAdmin = new com.pulumi.gcp.projects.IAMMember("tenantConfigAdmin", com.pulumi.gcp.projects.IAMMemberArgs.builder()
///             .project(tenantProject.projectId())
///             .role("roles/config.admin")
///             .member(actuationServiceAccount.email().applyValue(_email -> String.format("serviceAccount:%s", _email)))
///             .build());
///
///         var tenantStorageAdmin = new com.pulumi.gcp.projects.IAMMember("tenantStorageAdmin", com.pulumi.gcp.projects.IAMMemberArgs.builder()
///             .project(tenantProject.projectId())
///             .role("roles/storage.admin")
///             .member(actuationServiceAccount.email().applyValue(_email -> String.format("serviceAccount:%s", _email)))
///             .build());
///
///         var tenantComputeAdmin = new com.pulumi.gcp.projects.IAMMember("tenantComputeAdmin", com.pulumi.gcp.projects.IAMMemberArgs.builder()
///             .project(tenantProject.projectId())
///             .role("roles/compute.admin")
///             .member(actuationServiceAccount.email().applyValue(_email -> String.format("serviceAccount:%s", _email)))
///             .build());
///
///         var actuationTokenCreator = new com.pulumi.gcp.serviceaccount.IAMMember("actuationTokenCreator", com.pulumi.gcp.serviceaccount.IAMMemberArgs.builder()
///             .serviceAccountId(actuationServiceAccount.name())
///             .role("roles/iam.serviceAccountTokenCreator")
///             .member("serviceAccount:service-1111111111111@gcp-sa-saasservicemgmt.iam.gserviceaccount.com")
///             .build());
///
///         var provisionUnitOperation = new UnitOperation("provisionUnitOperation", UnitOperationArgs.builder()
///             .location(location)
///             .unitOperationId("provision-unit-operation")
///             .unit(exampleUnit.id())
///             .waitForCompletion(true)
///             .provision(UnitOperationProvisionArgs.builder()
///                 .release(exampleRelease.id())
///                 .inputVariables(
///                     UnitOperationProvisionInputVariableArgs.builder()
///                         .variable("tenant_project_id")
///                         .value(tenantProject.projectId())
///                         .type("STRING")
///                         .build(),
///                     UnitOperationProvisionInputVariableArgs.builder()
///                         .variable("tenant_project_number")
///                         .value(tenantProject.number())
///                         .type("INT")
///                         .build(),
///                     UnitOperationProvisionInputVariableArgs.builder()
///                         .variable("zone")
///                         .value("us-central1-a")
///                         .type("STRING")
///                         .build(),
///                     UnitOperationProvisionInputVariableArgs.builder()
///                         .variable("instance_name")
///                         .value("terraform-test-instance")
///                         .type("STRING")
///                         .build(),
///                     UnitOperationProvisionInputVariableArgs.builder()
///                         .variable("actuation_sa")
///                         .value(actuationServiceAccount.email())
///                         .type("STRING")
///                         .build())
///                 .build())
///             .labels(Map.of("label-one", "foo"))
///             .annotations(Map.of("annotation-one", "bar"))
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(
///                     tenantConfigAdmin,
///                     tenantStorageAdmin,
///                     tenantComputeAdmin,
///                     actuationTokenCreator,
///                     saasServices)
///                 .build());
///
///         var noopUpgradeUnitOperation = new UnitOperation("noopUpgradeUnitOperation", UnitOperationArgs.builder()
///             .location(location)
///             .unitOperationId("upgrade-unit-operation")
///             .unit(exampleUnit.id())
///             .waitForCompletion(true)
///             .upgrade(UnitOperationUpgradeArgs.builder()
///                 .release(exampleRelease.id())
///                 .inputVariables(
///                     UnitOperationUpgradeInputVariableArgs.builder()
///                         .variable("tenant_project_id")
///                         .value(tenantProject.projectId())
///                         .type("STRING")
///                         .build(),
///                     UnitOperationUpgradeInputVariableArgs.builder()
///                         .variable("tenant_project_number")
///                         .value(tenantProject.number())
///                         .type("INT")
///                         .build(),
///                     UnitOperationUpgradeInputVariableArgs.builder()
///                         .variable("zone")
///                         .value("us-central1-a")
///                         .type("STRING")
///                         .build(),
///                     UnitOperationUpgradeInputVariableArgs.builder()
///                         .variable("instance_name")
///                         .value("terraform-test-instance")
///                         .type("STRING")
///                         .build(),
///                     UnitOperationUpgradeInputVariableArgs.builder()
///                         .variable("actuation_sa")
///                         .value(actuationServiceAccount.email())
///                         .type("STRING")
///                         .build())
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(provisionUnitOperation)
///                 .build());
///
///         var deprovisionOperation = new UnitOperation("deprovisionOperation", UnitOperationArgs.builder()
///             .location(location)
///             .unitOperationId("deprovision-unit-operation")
///             .unit(exampleUnit.id())
///             .waitForCompletion(true)
///             .deprovision(UnitOperationDeprovisionArgs.builder()
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(noopUpgradeUnitOperation)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleSaas:
///     type: gcp:saasruntime:SaaS
///     name: example_saas
///     properties:
///       saasId: example-saas
///       location: ${location}
///       locations:
///         - name: ${location}
///   clusterUnitKind:
///     type: gcp:saasruntime:UnitKind
///     name: cluster_unit_kind
///     properties:
///       location: ${location}
///       unitKindId: vm-unitkind
///       saas: ${exampleSaas.id}
///       defaultRelease: projects/my-project-name/locations/${location}/releases/example-release
///   exampleRelease:
///     type: gcp:saasruntime:Release
///     name: example_release
///     properties:
///       location: ${location}
///       releaseId: example-release
///       unitKind: ${clusterUnitKind.id}
///       blueprint:
///         package: us-central1-docker.pkg.dev/ci-test-project-188019/test-repo/tf-test-easysaas-alpha-image@sha256:7992fdbaeaf998ecd31a7f937bb26e38a781ecf49b24857a6176c1e9bfc299ee
///   exampleUnit:
///     type: gcp:saasruntime:Unit
///     name: example_unit
///     properties:
///       location: ${location}
///       unitId: example-unit
///       unitKind: ${clusterUnitKind.id}
///   tenantProject:
///     type: gcp:organizations:Project
///     name: tenant_project
///     properties:
///       projectId: ${tenantProjectId}
///       name: ${tenantProjectId}
///       billingAccount: 000000-0000000-0000000-000000
///       orgId: '123456789'
///       deletionPolicy: DELETE
///   saasServices:
///     type: gcp:projects:Service
///     name: saas_services
///     properties:
///       project: ${tenantProject.projectId}
///       service: compute.googleapis.com
///       disableDependentServices: true
///   actuationServiceAccount:
///     type: gcp:serviceaccount:Account
///     name: actuation_service_account
///     properties:
///       accountId: actuator
///       displayName: SaaS Actuation Service Account
///   tenantConfigAdmin:
///     type: gcp:projects:IAMMember
///     name: tenant_config_admin
///     properties:
///       project: ${tenantProject.projectId}
///       role: roles/config.admin
///       member: serviceAccount:${actuationServiceAccount.email}
///   tenantStorageAdmin:
///     type: gcp:projects:IAMMember
///     name: tenant_storage_admin
///     properties:
///       project: ${tenantProject.projectId}
///       role: roles/storage.admin
///       member: serviceAccount:${actuationServiceAccount.email}
///   tenantComputeAdmin:
///     type: gcp:projects:IAMMember
///     name: tenant_compute_admin
///     properties:
///       project: ${tenantProject.projectId}
///       role: roles/compute.admin
///       member: serviceAccount:${actuationServiceAccount.email}
///   actuationTokenCreator:
///     type: gcp:serviceaccount:IAMMember
///     name: actuation_token_creator
///     properties:
///       serviceAccountId: ${actuationServiceAccount.name}
///       role: roles/iam.serviceAccountTokenCreator
///       member: serviceAccount:service-1111111111111@gcp-sa-saasservicemgmt.iam.gserviceaccount.com
///   provisionUnitOperation:
///     type: gcp:saasruntime:UnitOperation
///     name: provision_unit_operation
///     properties:
///       location: ${location}
///       unitOperationId: provision-unit-operation
///       unit: ${exampleUnit.id}
///       waitForCompletion: true
///       provision:
///         release: ${exampleRelease.id}
///         inputVariables:
///           - variable: tenant_project_id
///             value: ${tenantProject.projectId}
///             type: STRING
///           - variable: tenant_project_number
///             value: ${tenantProject.number}
///             type: INT
///           - variable: zone
///             value: us-central1-a
///             type: STRING
///           - variable: instance_name
///             value: terraform-test-instance
///             type: STRING
///           - variable: actuation_sa
///             value: ${actuationServiceAccount.email}
///             type: STRING
///       labels:
///         label-one: foo
///       annotations:
///         annotation-one: bar
///     options:
///       dependsOn:
///         - ${tenantConfigAdmin}
///         - ${tenantStorageAdmin}
///         - ${tenantComputeAdmin}
///         - ${actuationTokenCreator}
///         - ${saasServices}
///   noopUpgradeUnitOperation:
///     type: gcp:saasruntime:UnitOperation
///     name: noop_upgrade_unit_operation
///     properties:
///       location: ${location}
///       unitOperationId: upgrade-unit-operation
///       unit: ${exampleUnit.id}
///       waitForCompletion: true
///       upgrade:
///         release: ${exampleRelease.id}
///         inputVariables:
///           - variable: tenant_project_id
///             value: ${tenantProject.projectId}
///             type: STRING
///           - variable: tenant_project_number
///             value: ${tenantProject.number}
///             type: INT
///           - variable: zone
///             value: us-central1-a
///             type: STRING
///           - variable: instance_name
///             value: terraform-test-instance
///             type: STRING
///           - variable: actuation_sa
///             value: ${actuationServiceAccount.email}
///             type: STRING
///     options:
///       dependsOn:
///         - ${provisionUnitOperation}
///   deprovisionOperation:
///     type: gcp:saasruntime:UnitOperation
///     name: deprovision_operation
///     properties:
///       location: ${location}
///       unitOperationId: deprovision-unit-operation
///       unit: ${exampleUnit.id}
///       waitForCompletion: true
///       deprovision: {}
///     options:
///       dependsOn:
///         - ${noopUpgradeUnitOperation}
/// variables:
///   location: us-east1
///   tenantProjectId: tenant
/// ```
///
///
/// ## Import
///
/// UnitOperation can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/unitOperations/{{unit_operation_id}}`
///
/// * `{{project}}/{{location}}/{{unit_operation_id}}`
///
/// * `{{location}}/{{unit_operation_id}}`
///
/// When using the `pulumi import` command, UnitOperation can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:saasruntime/unitOperation:UnitOperation default projects/{{project}}/locations/{{location}}/unitOperations/{{unit_operation_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:saasruntime/unitOperation:UnitOperation default {{project}}/{{location}}/{{unit_operation_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:saasruntime/unitOperation:UnitOperation default {{location}}/{{unit_operation_id}}
/// ```
class UnitOperation extends pulumi.CustomResource {
  /// Annotations is an unstructured key-value map stored with a resource that
  /// may be set by external tools to store and retrieve arbitrary metadata.
  /// They are not queryable and should be preserved when modifying objects.
  /// More info: https://kubernetes.io/docs/user-guide/annotations
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  late final pulumi.Output<Map<String, String>?> annotations;

  /// A set of conditions which indicate the various conditions this resource can
  /// have.
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>> conditions;

  /// The timestamp when the resource was created.
  late final pulumi.Output<String> createTime;

  /// Deprovision is the unit operation that deprovision the underlying
  /// resources represented by a Unit. Can only execute if the Unit is currently
  /// provisioned.
  late final pulumi.Output<Map<String, dynamic>?> deprovision;
  late final pulumi.Output<Map<String, String>> effectiveAnnotations;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// The engine state for on-going
  /// deployment engine operation(s).
  /// This field is opaque for external usage.
  late final pulumi.Output<String> engineState;

  /// Possible values:
  /// NOT_APPLICABLE
  /// FATAL
  /// RETRIABLE
  /// IGNORABLE
  /// STANDARD
  late final pulumi.Output<String> errorCategory;

  /// An opaque value that uniquely identifies a version or
  /// generation of a resource. It can be used to confirm that the client
  /// and server agree on the ordering of a resource being written.
  late final pulumi.Output<String> etag;

  /// The labels on the resource, which can be used for categorization.
  /// similar to Kubernetes resource labels.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final pulumi.Output<String> location;

  /// Identifier. The resource name (full URI of the resource) following the standard naming
  /// scheme:
  /// "projects/{project}/locations/{location}/unitOperations/{unitOperation}"
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// Provision is the unit operation that provision the underlying resources
  /// represented by a Unit. Can only execute if the Unit is not currently
  /// provisioned.
  /// Structure is documented below.
  late final pulumi.Output<UnitOperationProvision?> provision;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// UnitOperationState describes the current state of the unit operation.
  /// Possible values:
  /// UNIT_OPERATION_STATE_UNKNOWN
  /// UNIT_OPERATION_STATE_PENDING
  /// UNIT_OPERATION_STATE_SCHEDULED
  /// UNIT_OPERATION_STATE_RUNNING
  /// UNIT_OPERATION_STATE_SUCCEEDED
  /// UNIT_OPERATION_STATE_FAILED
  /// UNIT_OPERATION_STATE_CANCELLED
  late final pulumi.Output<String> state;

  /// The unique identifier of the resource. UID is unique in the time
  /// and space for this resource within the scope of the service. It is
  /// typically generated by the server on successful creation of a resource
  /// and must not be changed. UID is used to uniquely identify resources
  /// with resource name reuses. This should be a UUID4.
  late final pulumi.Output<String> uid;

  /// The Unit a given UnitOperation will act upon.
  late final pulumi.Output<String> unit;

  /// The ID value for the new unit operation.
  late final pulumi.Output<String> unitOperationId;

  /// The timestamp when the resource was last updated. Any
  /// change to the resource made by users must refresh this value.
  /// Changes to a resource made by the service should refresh this value.
  late final pulumi.Output<String> updateTime;

  /// Upgrade is the unit operation that upgrades a provisioned unit, which may
  /// also include the underlying resources represented by a Unit. Can only execute
  /// if the Unit is currently provisioned.
  /// Structure is documented below.
  late final pulumi.Output<UnitOperationUpgrade?> upgrade;

  /// If true, wait for the UnitOperation to reach a terminal state (SUCCEEDED, FAILED, CANCELLED)
  /// before completing the apply.
  late final pulumi.Output<bool?> waitForCompletion;

  /// Creates a new [UnitOperation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [UnitOperation]. {@macro pulumi_saasruntime_unit_operation_unit_operation_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  UnitOperation(
    String name, {
    UnitOperationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:saasruntime/unitOperation:UnitOperation',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    annotations = registerOutput<Map<String, String>?>('annotations');
    conditions = registerOutput<List<Map<String, dynamic>>>('conditions');
    createTime = registerOutput<String>('createTime');
    deprovision = registerOutput<Map<String, dynamic>?>('deprovision');
    effectiveAnnotations = registerOutput<Map<String, String>>(
      'effectiveAnnotations',
    );
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    engineState = registerOutput<String>('engineState');
    errorCategory = registerOutput<String>('errorCategory');
    etag = registerOutput<String>('etag');
    labels = registerOutput<Map<String, String>?>('labels');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    provision = registerOutput<UnitOperationProvision?>(
      'provision',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return UnitOperationProvision.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    state = registerOutput<String>('state');
    uid = registerOutput<String>('uid');
    unit = registerOutput<String>('unit');
    unitOperationId = registerOutput<String>('unitOperationId');
    updateTime = registerOutput<String>('updateTime');
    upgrade = registerOutput<UnitOperationUpgrade?>(
      'upgrade',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return UnitOperationUpgrade.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    waitForCompletion = registerOutput<bool?>('waitForCompletion');
  }

  /// Gets an existing [UnitOperation] resource's state with the given [name] and [id].
  static UnitOperation get(
    String name,
    pulumi.Input<String> id, {
    UnitOperationState? state,
  }) {
    return UnitOperation._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  UnitOperation._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:saasruntime/unitOperation:UnitOperation',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    annotations = registerOutput<Map<String, String>?>('annotations');
    conditions = registerOutput<List<Map<String, dynamic>>>('conditions');
    createTime = registerOutput<String>('createTime');
    deprovision = registerOutput<Map<String, dynamic>?>('deprovision');
    effectiveAnnotations = registerOutput<Map<String, String>>(
      'effectiveAnnotations',
    );
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    engineState = registerOutput<String>('engineState');
    errorCategory = registerOutput<String>('errorCategory');
    etag = registerOutput<String>('etag');
    labels = registerOutput<Map<String, String>?>('labels');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    provision = registerOutput<UnitOperationProvision?>(
      'provision',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return UnitOperationProvision.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.state = registerOutput<String>('state');
    uid = registerOutput<String>('uid');
    unit = registerOutput<String>('unit');
    unitOperationId = registerOutput<String>('unitOperationId');
    updateTime = registerOutput<String>('updateTime');
    upgrade = registerOutput<UnitOperationUpgrade?>(
      'upgrade',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return UnitOperationUpgrade.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    waitForCompletion = registerOutput<bool?>('waitForCompletion');
  }
}
