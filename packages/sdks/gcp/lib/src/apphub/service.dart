import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_args.dart';
import 'service_attributes.dart';
import 'service_service_property.dart';
import 'service_service_reference.dart';
import 'service_state.dart';

/// Service is a network/api interface that exposes some functionality to clients for consumption over the network. Service typically has one or more Workloads behind it. It registers identified service to the Application.
///
///
///
/// ## Example Usage
///
/// ### Apphub Service Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as time from "@pulumiverse/time";
///
/// const application = new gcp.apphub.Application("application", {
///     location: "us-central1",
///     applicationId: "example-application-1",
///     scope: {
///         type: "REGIONAL",
///     },
/// });
/// const serviceProject = new gcp.organizations.Project("service_project", {
///     projectId: "project-1",
///     name: "Service Project",
///     orgId: "123456789",
///     billingAccount: "000000-0000000-0000000-000000",
///     deletionPolicy: "DELETE",
/// });
/// // Enable Compute API
/// const computeServiceProject = new gcp.projects.Service("compute_service_project", {
///     project: serviceProject.projectId,
///     service: "compute.googleapis.com",
/// });
/// const wait120s = new time.Sleep("wait_120s", {createDuration: "120s"}, {
///     dependsOn: [computeServiceProject],
/// });
/// const serviceProjectAttachment = new gcp.apphub.ServiceProjectAttachment("service_project_attachment", {serviceProjectAttachmentId: serviceProject.projectId}, {
///     dependsOn: [wait120s],
/// });
/// // VPC network
/// const ilbNetwork = new gcp.compute.Network("ilb_network", {
///     name: "l7-ilb-network",
///     project: serviceProject.projectId,
///     autoCreateSubnetworks: false,
/// }, {
///     dependsOn: [wait120s],
/// });
/// // backend subnet
/// const ilbSubnet = new gcp.compute.Subnetwork("ilb_subnet", {
///     name: "l7-ilb-subnet",
///     project: serviceProject.projectId,
///     ipCidrRange: "10.0.1.0/24",
///     region: "us-central1",
///     network: ilbNetwork.id,
/// });
/// // health check
/// const _default = new gcp.compute.HealthCheck("default", {
///     name: "l7-ilb-hc",
///     project: serviceProject.projectId,
///     checkIntervalSec: 1,
///     timeoutSec: 1,
///     tcpHealthCheck: {
///         port: 80,
///     },
/// }, {
///     dependsOn: [wait120s],
/// });
/// // backend service
/// const backend = new gcp.compute.RegionBackendService("backend", {
///     name: "l7-ilb-backend-subnet",
///     project: serviceProject.projectId,
///     region: "us-central1",
///     healthChecks: _default.id,
/// });
/// // forwarding rule
/// const forwardingRule = new gcp.compute.ForwardingRule("forwarding_rule", {
///     name: "l7-ilb-forwarding-rule",
///     project: serviceProject.projectId,
///     region: "us-central1",
///     ipVersion: "IPV4",
///     loadBalancingScheme: "INTERNAL",
///     allPorts: true,
///     backendService: backend.id,
///     network: ilbNetwork.id,
///     subnetwork: ilbSubnet.id,
/// });
/// // discovered service block
/// const catalog_service = gcp.apphub.getDiscoveredServiceOutput({
///     location: "us-central1",
///     serviceUri: pulumi.interpolate`//compute.googleapis.com/${forwardingRule.id}`,
/// });
/// const wait120sForResourceIngestion = new time.Sleep("wait_120s_for_resource_ingestion", {createDuration: "120s"}, {
///     dependsOn: [forwardingRule],
/// });
/// const example = new gcp.apphub.Service("example", {
///     location: "us-central1",
///     applicationId: application.applicationId,
///     serviceId: forwardingRule.name,
///     discoveredService: catalog_service.apply(catalog_service => catalog_service.name),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumiverse_time as time
///
/// application = gcp.apphub.Application("application",
///     location="us-central1",
///     application_id="example-application-1",
///     scope={
///         "type": "REGIONAL",
///     })
/// service_project = gcp.organizations.Project("service_project",
///     project_id="project-1",
///     name="Service Project",
///     org_id="123456789",
///     billing_account="000000-0000000-0000000-000000",
///     deletion_policy="DELETE")
/// # Enable Compute API
/// compute_service_project = gcp.projects.Service("compute_service_project",
///     project=service_project.project_id,
///     service="compute.googleapis.com")
/// wait120s = time.Sleep("wait_120s", create_duration="120s",
/// opts = pulumi.ResourceOptions(depends_on=[compute_service_project]))
/// service_project_attachment = gcp.apphub.ServiceProjectAttachment("service_project_attachment", service_project_attachment_id=service_project.project_id,
/// opts = pulumi.ResourceOptions(depends_on=[wait120s]))
/// # VPC network
/// ilb_network = gcp.compute.Network("ilb_network",
///     name="l7-ilb-network",
///     project=service_project.project_id,
///     auto_create_subnetworks=False,
///     opts = pulumi.ResourceOptions(depends_on=[wait120s]))
/// # backend subnet
/// ilb_subnet = gcp.compute.Subnetwork("ilb_subnet",
///     name="l7-ilb-subnet",
///     project=service_project.project_id,
///     ip_cidr_range="10.0.1.0/24",
///     region="us-central1",
///     network=ilb_network.id)
/// # health check
/// default = gcp.compute.HealthCheck("default",
///     name="l7-ilb-hc",
///     project=service_project.project_id,
///     check_interval_sec=1,
///     timeout_sec=1,
///     tcp_health_check={
///         "port": 80,
///     },
///     opts = pulumi.ResourceOptions(depends_on=[wait120s]))
/// # backend service
/// backend = gcp.compute.RegionBackendService("backend",
///     name="l7-ilb-backend-subnet",
///     project=service_project.project_id,
///     region="us-central1",
///     health_checks=default.id)
/// # forwarding rule
/// forwarding_rule = gcp.compute.ForwardingRule("forwarding_rule",
///     name="l7-ilb-forwarding-rule",
///     project=service_project.project_id,
///     region="us-central1",
///     ip_version="IPV4",
///     load_balancing_scheme="INTERNAL",
///     all_ports=True,
///     backend_service=backend.id,
///     network=ilb_network.id,
///     subnetwork=ilb_subnet.id)
/// # discovered service block
/// catalog_service = gcp.apphub.get_discovered_service_output(location="us-central1",
///     service_uri=forwarding_rule.id.apply(lambda id: f"//compute.googleapis.com/{id}"))
/// wait120s_for_resource_ingestion = time.Sleep("wait_120s_for_resource_ingestion", create_duration="120s",
/// opts = pulumi.ResourceOptions(depends_on=[forwarding_rule]))
/// example = gcp.apphub.Service("example",
///     location="us-central1",
///     application_id=application.application_id,
///     service_id=forwarding_rule.name,
///     discovered_service=catalog_service.name)
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
///     var application = new Gcp.Apphub.Application("application", new()
///     {
///         Location = "us-central1",
///         ApplicationId = "example-application-1",
///         Scope = new Gcp.Apphub.Inputs.ApplicationScopeArgs
///         {
///             Type = "REGIONAL",
///         },
///     });
///
///     var serviceProject = new Gcp.Organizations.Project("service_project", new()
///     {
///         ProjectId = "project-1",
///         Name = "Service Project",
///         OrgId = "123456789",
///         BillingAccount = "000000-0000000-0000000-000000",
///         DeletionPolicy = "DELETE",
///     });
///
///     // Enable Compute API
///     var computeServiceProject = new Gcp.Projects.Service("compute_service_project", new()
///     {
///         Project = serviceProject.ProjectId,
///         ServiceName = "compute.googleapis.com",
///     });
///
///     var wait120s = new Time.Sleep("wait_120s", new()
///     {
///         CreateDuration = "120s",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             computeServiceProject,
///         },
///     });
///
///     var serviceProjectAttachment = new Gcp.Apphub.ServiceProjectAttachment("service_project_attachment", new()
///     {
///         ServiceProjectAttachmentId = serviceProject.ProjectId,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             wait120s,
///         },
///     });
///
///     // VPC network
///     var ilbNetwork = new Gcp.Compute.Network("ilb_network", new()
///     {
///         Name = "l7-ilb-network",
///         Project = serviceProject.ProjectId,
///         AutoCreateSubnetworks = false,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             wait120s,
///         },
///     });
///
///     // backend subnet
///     var ilbSubnet = new Gcp.Compute.Subnetwork("ilb_subnet", new()
///     {
///         Name = "l7-ilb-subnet",
///         Project = serviceProject.ProjectId,
///         IpCidrRange = "10.0.1.0/24",
///         Region = "us-central1",
///         Network = ilbNetwork.Id,
///     });
///
///     // health check
///     var @default = new Gcp.Compute.HealthCheck("default", new()
///     {
///         Name = "l7-ilb-hc",
///         Project = serviceProject.ProjectId,
///         CheckIntervalSec = 1,
///         TimeoutSec = 1,
///         TcpHealthCheck = new Gcp.Compute.Inputs.HealthCheckTcpHealthCheckArgs
///         {
///             Port = 80,
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             wait120s,
///         },
///     });
///
///     // backend service
///     var backend = new Gcp.Compute.RegionBackendService("backend", new()
///     {
///         Name = "l7-ilb-backend-subnet",
///         Project = serviceProject.ProjectId,
///         Region = "us-central1",
///         HealthChecks = @default.Id,
///     });
///
///     // forwarding rule
///     var forwardingRule = new Gcp.Compute.ForwardingRule("forwarding_rule", new()
///     {
///         Name = "l7-ilb-forwarding-rule",
///         Project = serviceProject.ProjectId,
///         Region = "us-central1",
///         IpVersion = "IPV4",
///         LoadBalancingScheme = "INTERNAL",
///         AllPorts = true,
///         BackendService = backend.Id,
///         Network = ilbNetwork.Id,
///         Subnetwork = ilbSubnet.Id,
///     });
///
///     // discovered service block
///     var catalog_service = Gcp.Apphub.GetDiscoveredService.Invoke(new()
///     {
///         Location = "us-central1",
///         ServiceUri = $"//compute.googleapis.com/{forwardingRule.Id}",
///     });
///
///     var wait120sForResourceIngestion = new Time.Sleep("wait_120s_for_resource_ingestion", new()
///     {
///         CreateDuration = "120s",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             forwardingRule,
///         },
///     });
///
///     var example = new Gcp.Apphub.Service("example", new()
///     {
///         Location = "us-central1",
///         ApplicationId = application.ApplicationId,
///         ServiceId = forwardingRule.Name,
///         DiscoveredService = catalog_service.Apply(catalog_service => catalog_service.Apply(getDiscoveredServiceResult => getDiscoveredServiceResult.Name)),
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/apphub"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/projects"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumiverse/pulumi-time/sdk/go/time"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		application, err := apphub.NewApplication(ctx, "application", &apphub.ApplicationArgs{
/// 			Location:      pulumi.String("us-central1"),
/// 			ApplicationId: pulumi.String("example-application-1"),
/// 			Scope: &apphub.ApplicationScopeArgs{
/// 				Type: pulumi.String("REGIONAL"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		serviceProject, err := organizations.NewProject(ctx, "service_project", &organizations.ProjectArgs{
/// 			ProjectId:      pulumi.String("project-1"),
/// 			Name:           pulumi.String("Service Project"),
/// 			OrgId:          pulumi.String("123456789"),
/// 			BillingAccount: pulumi.String("000000-0000000-0000000-000000"),
/// 			DeletionPolicy: pulumi.String("DELETE"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Enable Compute API
/// 		computeServiceProject, err := projects.NewService(ctx, "compute_service_project", &projects.ServiceArgs{
/// 			Project: serviceProject.ProjectId,
/// 			Service: pulumi.String("compute.googleapis.com"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		wait120s, err := time.NewSleep(ctx, "wait_120s", &time.SleepArgs{
/// 			CreateDuration: pulumi.String("120s"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			computeServiceProject,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = apphub.NewServiceProjectAttachment(ctx, "service_project_attachment", &apphub.ServiceProjectAttachmentArgs{
/// 			ServiceProjectAttachmentId: serviceProject.ProjectId,
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			wait120s,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// VPC network
/// 		ilbNetwork, err := compute.NewNetwork(ctx, "ilb_network", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("l7-ilb-network"),
/// 			Project:               serviceProject.ProjectId,
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			wait120s,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// backend subnet
/// 		ilbSubnet, err := compute.NewSubnetwork(ctx, "ilb_subnet", &compute.SubnetworkArgs{
/// 			Name:        pulumi.String("l7-ilb-subnet"),
/// 			Project:     serviceProject.ProjectId,
/// 			IpCidrRange: pulumi.String("10.0.1.0/24"),
/// 			Region:      pulumi.String("us-central1"),
/// 			Network:     ilbNetwork.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// health check
/// 		_default, err := compute.NewHealthCheck(ctx, "default", &compute.HealthCheckArgs{
/// 			Name:             pulumi.String("l7-ilb-hc"),
/// 			Project:          serviceProject.ProjectId,
/// 			CheckIntervalSec: pulumi.Int(1),
/// 			TimeoutSec:       pulumi.Int(1),
/// 			TcpHealthCheck: &compute.HealthCheckTcpHealthCheckArgs{
/// 				Port: pulumi.Int(80),
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			wait120s,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// backend service
/// 		backend, err := compute.NewRegionBackendService(ctx, "backend", &compute.RegionBackendServiceArgs{
/// 			Name:         pulumi.String("l7-ilb-backend-subnet"),
/// 			Project:      serviceProject.ProjectId,
/// 			Region:       pulumi.String("us-central1"),
/// 			HealthChecks: _default.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// forwarding rule
/// 		forwardingRule, err := compute.NewForwardingRule(ctx, "forwarding_rule", &compute.ForwardingRuleArgs{
/// 			Name:                pulumi.String("l7-ilb-forwarding-rule"),
/// 			Project:             serviceProject.ProjectId,
/// 			Region:              pulumi.String("us-central1"),
/// 			IpVersion:           pulumi.String("IPV4"),
/// 			LoadBalancingScheme: pulumi.String("INTERNAL"),
/// 			AllPorts:            pulumi.Bool(true),
/// 			BackendService:      backend.ID(),
/// 			Network:             ilbNetwork.ID(),
/// 			Subnetwork:          ilbSubnet.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// discovered service block
/// 		catalog_service := apphub.GetDiscoveredServiceOutput(ctx, apphub.GetDiscoveredServiceOutputArgs{
/// 			Location: pulumi.String("us-central1"),
/// 			ServiceUri: forwardingRule.ID().ApplyT(func(id string) (string, error) {
/// 				return fmt.Sprintf("//compute.googleapis.com/%v", id), nil
/// 			}).(pulumi.StringOutput),
/// 		}, nil)
/// 		_, err = time.NewSleep(ctx, "wait_120s_for_resource_ingestion", &time.SleepArgs{
/// 			CreateDuration: pulumi.String("120s"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			forwardingRule,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = apphub.NewService(ctx, "example", &apphub.ServiceArgs{
/// 			Location:      pulumi.String("us-central1"),
/// 			ApplicationId: application.ApplicationId,
/// 			ServiceId:     forwardingRule.Name,
/// 			DiscoveredService: pulumi.String(catalog_service.ApplyT(func(catalog_service apphub.GetDiscoveredServiceResult) (*string, error) {
/// 				return &catalog_service.Name, nil
/// 			}).(pulumi.StringPtrOutput)),
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
/// import com.pulumi.gcp.apphub.Application;
/// import com.pulumi.gcp.apphub.ApplicationArgs;
/// import com.pulumi.gcp.apphub.inputs.ApplicationScopeArgs;
/// import com.pulumi.gcp.organizations.Project;
/// import com.pulumi.gcp.organizations.ProjectArgs;
/// import com.pulumiverse.time.Sleep;
/// import com.pulumiverse.time.SleepArgs;
/// import com.pulumi.gcp.apphub.ServiceProjectAttachment;
/// import com.pulumi.gcp.apphub.ServiceProjectAttachmentArgs;
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.compute.Subnetwork;
/// import com.pulumi.gcp.compute.SubnetworkArgs;
/// import com.pulumi.gcp.compute.HealthCheck;
/// import com.pulumi.gcp.compute.HealthCheckArgs;
/// import com.pulumi.gcp.compute.inputs.HealthCheckTcpHealthCheckArgs;
/// import com.pulumi.gcp.compute.RegionBackendService;
/// import com.pulumi.gcp.compute.RegionBackendServiceArgs;
/// import com.pulumi.gcp.compute.ForwardingRule;
/// import com.pulumi.gcp.compute.ForwardingRuleArgs;
/// import com.pulumi.gcp.apphub.ApphubFunctions;
/// import com.pulumi.gcp.apphub.inputs.GetDiscoveredServiceArgs;
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
///         var application = new Application("application", ApplicationArgs.builder()
///             .location("us-central1")
///             .applicationId("example-application-1")
///             .scope(ApplicationScopeArgs.builder()
///                 .type("REGIONAL")
///                 .build())
///             .build());
///
///         var serviceProject = new Project("serviceProject", ProjectArgs.builder()
///             .projectId("project-1")
///             .name("Service Project")
///             .orgId("123456789")
///             .billingAccount("000000-0000000-0000000-000000")
///             .deletionPolicy("DELETE")
///             .build());
///
///         // Enable Compute API
///         var computeServiceProject = new com.pulumi.gcp.projects.Service("computeServiceProject", com.pulumi.gcp.projects.ServiceArgs.builder()
///             .project(serviceProject.projectId())
///             .service("compute.googleapis.com")
///             .build());
///
///         var wait120s = new Sleep("wait120s", SleepArgs.builder()
///             .createDuration("120s")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(computeServiceProject)
///                 .build());
///
///         var serviceProjectAttachment = new ServiceProjectAttachment("serviceProjectAttachment", ServiceProjectAttachmentArgs.builder()
///             .serviceProjectAttachmentId(serviceProject.projectId())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(wait120s)
///                 .build());
///
///         // VPC network
///         var ilbNetwork = new Network("ilbNetwork", NetworkArgs.builder()
///             .name("l7-ilb-network")
///             .project(serviceProject.projectId())
///             .autoCreateSubnetworks(false)
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(wait120s)
///                 .build());
///
///         // backend subnet
///         var ilbSubnet = new Subnetwork("ilbSubnet", SubnetworkArgs.builder()
///             .name("l7-ilb-subnet")
///             .project(serviceProject.projectId())
///             .ipCidrRange("10.0.1.0/24")
///             .region("us-central1")
///             .network(ilbNetwork.id())
///             .build());
///
///         // health check
///         var default_ = new HealthCheck("default", HealthCheckArgs.builder()
///             .name("l7-ilb-hc")
///             .project(serviceProject.projectId())
///             .checkIntervalSec(1)
///             .timeoutSec(1)
///             .tcpHealthCheck(HealthCheckTcpHealthCheckArgs.builder()
///                 .port(80)
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(wait120s)
///                 .build());
///
///         // backend service
///         var backend = new RegionBackendService("backend", RegionBackendServiceArgs.builder()
///             .name("l7-ilb-backend-subnet")
///             .project(serviceProject.projectId())
///             .region("us-central1")
///             .healthChecks(default_.id())
///             .build());
///
///         // forwarding rule
///         var forwardingRule = new ForwardingRule("forwardingRule", ForwardingRuleArgs.builder()
///             .name("l7-ilb-forwarding-rule")
///             .project(serviceProject.projectId())
///             .region("us-central1")
///             .ipVersion("IPV4")
///             .loadBalancingScheme("INTERNAL")
///             .allPorts(true)
///             .backendService(backend.id())
///             .network(ilbNetwork.id())
///             .subnetwork(ilbSubnet.id())
///             .build());
///
///         // discovered service block
///         final var catalog-service = ApphubFunctions.getDiscoveredService(GetDiscoveredServiceArgs.builder()
///             .location("us-central1")
///             .serviceUri(forwardingRule.id().applyValue(_id -> String.format("//compute.googleapis.com/%s", _id)))
///             .build());
///
///         var wait120sForResourceIngestion = new Sleep("wait120sForResourceIngestion", SleepArgs.builder()
///             .createDuration("120s")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(forwardingRule)
///                 .build());
///
///         var example = new com.pulumi.gcp.apphub.Service("example", com.pulumi.gcp.apphub.ServiceArgs.builder()
///             .location("us-central1")
///             .applicationId(application.applicationId())
///             .serviceId(forwardingRule.name())
///             .discoveredService(catalog_service.applyValue(_catalog_service -> _catalog_service.name()))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   application:
///     type: gcp:apphub:Application
///     properties:
///       location: us-central1
///       applicationId: example-application-1
///       scope:
///         type: REGIONAL
///   serviceProject:
///     type: gcp:organizations:Project
///     name: service_project
///     properties:
///       projectId: project-1
///       name: Service Project
///       orgId: '123456789'
///       billingAccount: 000000-0000000-0000000-000000
///       deletionPolicy: DELETE
///   # Enable Compute API
///   computeServiceProject:
///     type: gcp:projects:Service
///     name: compute_service_project
///     properties:
///       project: ${serviceProject.projectId}
///       service: compute.googleapis.com
///   wait120s:
///     type: time:Sleep
///     name: wait_120s
///     properties:
///       createDuration: 120s
///     options:
///       dependsOn:
///         - ${computeServiceProject}
///   serviceProjectAttachment:
///     type: gcp:apphub:ServiceProjectAttachment
///     name: service_project_attachment
///     properties:
///       serviceProjectAttachmentId: ${serviceProject.projectId}
///     options:
///       dependsOn:
///         - ${wait120s}
///   wait120sForResourceIngestion:
///     type: time:Sleep
///     name: wait_120s_for_resource_ingestion
///     properties:
///       createDuration: 120s
///     options:
///       dependsOn:
///         - ${forwardingRule}
///   example:
///     type: gcp:apphub:Service
///     properties:
///       location: us-central1
///       applicationId: ${application.applicationId}
///       serviceId: ${forwardingRule.name}
///       discoveredService: ${["catalog-service"].name}
///   # VPC network
///   ilbNetwork:
///     type: gcp:compute:Network
///     name: ilb_network
///     properties:
///       name: l7-ilb-network
///       project: ${serviceProject.projectId}
///       autoCreateSubnetworks: false
///     options:
///       dependsOn:
///         - ${wait120s}
///   # backend subnet
///   ilbSubnet:
///     type: gcp:compute:Subnetwork
///     name: ilb_subnet
///     properties:
///       name: l7-ilb-subnet
///       project: ${serviceProject.projectId}
///       ipCidrRange: 10.0.1.0/24
///       region: us-central1
///       network: ${ilbNetwork.id}
///   # forwarding rule
///   forwardingRule:
///     type: gcp:compute:ForwardingRule
///     name: forwarding_rule
///     properties:
///       name: l7-ilb-forwarding-rule
///       project: ${serviceProject.projectId}
///       region: us-central1
///       ipVersion: IPV4
///       loadBalancingScheme: INTERNAL
///       allPorts: true
///       backendService: ${backend.id}
///       network: ${ilbNetwork.id}
///       subnetwork: ${ilbSubnet.id}
///   # backend service
///   backend:
///     type: gcp:compute:RegionBackendService
///     properties:
///       name: l7-ilb-backend-subnet
///       project: ${serviceProject.projectId}
///       region: us-central1
///       healthChecks: ${default.id}
///   # health check
///   default:
///     type: gcp:compute:HealthCheck
///     properties:
///       name: l7-ilb-hc
///       project: ${serviceProject.projectId}
///       checkIntervalSec: 1
///       timeoutSec: 1
///       tcpHealthCheck:
///         port: '80'
///     options:
///       dependsOn:
///         - ${wait120s}
/// variables:
///   # discovered service block
///   catalog-service:
///     fn::invoke:
///       function: gcp:apphub:getDiscoveredService
///       arguments:
///         location: us-central1
///         serviceUri: //compute.googleapis.com/${forwardingRule.id}
/// ```
///
/// ### Apphub Service Full
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as time from "@pulumiverse/time";
///
/// const application = new gcp.apphub.Application("application", {
///     location: "us-central1",
///     applicationId: "example-application-1",
///     scope: {
///         type: "REGIONAL",
///     },
/// });
/// const serviceProject = new gcp.organizations.Project("service_project", {
///     projectId: "project-1",
///     name: "Service Project",
///     orgId: "123456789",
///     billingAccount: "000000-0000000-0000000-000000",
///     deletionPolicy: "DELETE",
/// });
/// // Enable Compute API
/// const computeServiceProject = new gcp.projects.Service("compute_service_project", {
///     project: serviceProject.projectId,
///     service: "compute.googleapis.com",
/// });
/// const wait120s = new time.Sleep("wait_120s", {createDuration: "120s"}, {
///     dependsOn: [computeServiceProject],
/// });
/// const serviceProjectAttachment = new gcp.apphub.ServiceProjectAttachment("service_project_attachment", {serviceProjectAttachmentId: serviceProject.projectId}, {
///     dependsOn: [wait120s],
/// });
/// // VPC network
/// const ilbNetwork = new gcp.compute.Network("ilb_network", {
///     name: "l7-ilb-network",
///     project: serviceProject.projectId,
///     autoCreateSubnetworks: false,
/// }, {
///     dependsOn: [wait120s],
/// });
/// // backend subnet
/// const ilbSubnet = new gcp.compute.Subnetwork("ilb_subnet", {
///     name: "l7-ilb-subnet",
///     project: serviceProject.projectId,
///     ipCidrRange: "10.0.1.0/24",
///     region: "us-central1",
///     network: ilbNetwork.id,
/// });
/// // health check
/// const _default = new gcp.compute.HealthCheck("default", {
///     name: "l7-ilb-hc",
///     project: serviceProject.projectId,
///     checkIntervalSec: 1,
///     timeoutSec: 1,
///     tcpHealthCheck: {
///         port: 80,
///     },
/// }, {
///     dependsOn: [wait120s],
/// });
/// // backend service
/// const backend = new gcp.compute.RegionBackendService("backend", {
///     name: "l7-ilb-backend-subnet",
///     project: serviceProject.projectId,
///     region: "us-central1",
///     healthChecks: _default.id,
/// });
/// // forwarding rule
/// const forwardingRule = new gcp.compute.ForwardingRule("forwarding_rule", {
///     name: "l7-ilb-forwarding-rule",
///     project: serviceProject.projectId,
///     region: "us-central1",
///     ipVersion: "IPV4",
///     loadBalancingScheme: "INTERNAL",
///     allPorts: true,
///     backendService: backend.id,
///     network: ilbNetwork.id,
///     subnetwork: ilbSubnet.id,
/// });
/// // discovered service block
/// const catalog_service = gcp.apphub.getDiscoveredServiceOutput({
///     location: "us-central1",
///     serviceUri: pulumi.interpolate`//compute.googleapis.com/${forwardingRule.id}`,
/// });
/// const wait120sForResourceIngestion = new time.Sleep("wait_120s_for_resource_ingestion", {createDuration: "120s"}, {
///     dependsOn: [forwardingRule],
/// });
/// const example = new gcp.apphub.Service("example", {
///     location: "us-central1",
///     applicationId: application.applicationId,
///     serviceId: forwardingRule.name,
///     discoveredService: catalog_service.apply(catalog_service => catalog_service.name),
///     displayName: "Example Service Full",
///     description: "Register service for testing",
///     attributes: {
///         environment: {
///             type: "STAGING",
///         },
///         criticality: {
///             type: "MISSION_CRITICAL",
///         },
///         businessOwners: [{
///             displayName: "Alice",
///             email: "alice@google.com",
///         }],
///         developerOwners: [{
///             displayName: "Bob",
///             email: "bob@google.com",
///         }],
///         operatorOwners: [{
///             displayName: "Charlie",
///             email: "charlie@google.com",
///         }],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumiverse_time as time
///
/// application = gcp.apphub.Application("application",
///     location="us-central1",
///     application_id="example-application-1",
///     scope={
///         "type": "REGIONAL",
///     })
/// service_project = gcp.organizations.Project("service_project",
///     project_id="project-1",
///     name="Service Project",
///     org_id="123456789",
///     billing_account="000000-0000000-0000000-000000",
///     deletion_policy="DELETE")
/// # Enable Compute API
/// compute_service_project = gcp.projects.Service("compute_service_project",
///     project=service_project.project_id,
///     service="compute.googleapis.com")
/// wait120s = time.Sleep("wait_120s", create_duration="120s",
/// opts = pulumi.ResourceOptions(depends_on=[compute_service_project]))
/// service_project_attachment = gcp.apphub.ServiceProjectAttachment("service_project_attachment", service_project_attachment_id=service_project.project_id,
/// opts = pulumi.ResourceOptions(depends_on=[wait120s]))
/// # VPC network
/// ilb_network = gcp.compute.Network("ilb_network",
///     name="l7-ilb-network",
///     project=service_project.project_id,
///     auto_create_subnetworks=False,
///     opts = pulumi.ResourceOptions(depends_on=[wait120s]))
/// # backend subnet
/// ilb_subnet = gcp.compute.Subnetwork("ilb_subnet",
///     name="l7-ilb-subnet",
///     project=service_project.project_id,
///     ip_cidr_range="10.0.1.0/24",
///     region="us-central1",
///     network=ilb_network.id)
/// # health check
/// default = gcp.compute.HealthCheck("default",
///     name="l7-ilb-hc",
///     project=service_project.project_id,
///     check_interval_sec=1,
///     timeout_sec=1,
///     tcp_health_check={
///         "port": 80,
///     },
///     opts = pulumi.ResourceOptions(depends_on=[wait120s]))
/// # backend service
/// backend = gcp.compute.RegionBackendService("backend",
///     name="l7-ilb-backend-subnet",
///     project=service_project.project_id,
///     region="us-central1",
///     health_checks=default.id)
/// # forwarding rule
/// forwarding_rule = gcp.compute.ForwardingRule("forwarding_rule",
///     name="l7-ilb-forwarding-rule",
///     project=service_project.project_id,
///     region="us-central1",
///     ip_version="IPV4",
///     load_balancing_scheme="INTERNAL",
///     all_ports=True,
///     backend_service=backend.id,
///     network=ilb_network.id,
///     subnetwork=ilb_subnet.id)
/// # discovered service block
/// catalog_service = gcp.apphub.get_discovered_service_output(location="us-central1",
///     service_uri=forwarding_rule.id.apply(lambda id: f"//compute.googleapis.com/{id}"))
/// wait120s_for_resource_ingestion = time.Sleep("wait_120s_for_resource_ingestion", create_duration="120s",
/// opts = pulumi.ResourceOptions(depends_on=[forwarding_rule]))
/// example = gcp.apphub.Service("example",
///     location="us-central1",
///     application_id=application.application_id,
///     service_id=forwarding_rule.name,
///     discovered_service=catalog_service.name,
///     display_name="Example Service Full",
///     description="Register service for testing",
///     attributes={
///         "environment": {
///             "type": "STAGING",
///         },
///         "criticality": {
///             "type": "MISSION_CRITICAL",
///         },
///         "business_owners": [{
///             "display_name": "Alice",
///             "email": "alice@google.com",
///         }],
///         "developer_owners": [{
///             "display_name": "Bob",
///             "email": "bob@google.com",
///         }],
///         "operator_owners": [{
///             "display_name": "Charlie",
///             "email": "charlie@google.com",
///         }],
///     })
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
///     var application = new Gcp.Apphub.Application("application", new()
///     {
///         Location = "us-central1",
///         ApplicationId = "example-application-1",
///         Scope = new Gcp.Apphub.Inputs.ApplicationScopeArgs
///         {
///             Type = "REGIONAL",
///         },
///     });
///
///     var serviceProject = new Gcp.Organizations.Project("service_project", new()
///     {
///         ProjectId = "project-1",
///         Name = "Service Project",
///         OrgId = "123456789",
///         BillingAccount = "000000-0000000-0000000-000000",
///         DeletionPolicy = "DELETE",
///     });
///
///     // Enable Compute API
///     var computeServiceProject = new Gcp.Projects.Service("compute_service_project", new()
///     {
///         Project = serviceProject.ProjectId,
///         ServiceName = "compute.googleapis.com",
///     });
///
///     var wait120s = new Time.Sleep("wait_120s", new()
///     {
///         CreateDuration = "120s",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             computeServiceProject,
///         },
///     });
///
///     var serviceProjectAttachment = new Gcp.Apphub.ServiceProjectAttachment("service_project_attachment", new()
///     {
///         ServiceProjectAttachmentId = serviceProject.ProjectId,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             wait120s,
///         },
///     });
///
///     // VPC network
///     var ilbNetwork = new Gcp.Compute.Network("ilb_network", new()
///     {
///         Name = "l7-ilb-network",
///         Project = serviceProject.ProjectId,
///         AutoCreateSubnetworks = false,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             wait120s,
///         },
///     });
///
///     // backend subnet
///     var ilbSubnet = new Gcp.Compute.Subnetwork("ilb_subnet", new()
///     {
///         Name = "l7-ilb-subnet",
///         Project = serviceProject.ProjectId,
///         IpCidrRange = "10.0.1.0/24",
///         Region = "us-central1",
///         Network = ilbNetwork.Id,
///     });
///
///     // health check
///     var @default = new Gcp.Compute.HealthCheck("default", new()
///     {
///         Name = "l7-ilb-hc",
///         Project = serviceProject.ProjectId,
///         CheckIntervalSec = 1,
///         TimeoutSec = 1,
///         TcpHealthCheck = new Gcp.Compute.Inputs.HealthCheckTcpHealthCheckArgs
///         {
///             Port = 80,
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             wait120s,
///         },
///     });
///
///     // backend service
///     var backend = new Gcp.Compute.RegionBackendService("backend", new()
///     {
///         Name = "l7-ilb-backend-subnet",
///         Project = serviceProject.ProjectId,
///         Region = "us-central1",
///         HealthChecks = @default.Id,
///     });
///
///     // forwarding rule
///     var forwardingRule = new Gcp.Compute.ForwardingRule("forwarding_rule", new()
///     {
///         Name = "l7-ilb-forwarding-rule",
///         Project = serviceProject.ProjectId,
///         Region = "us-central1",
///         IpVersion = "IPV4",
///         LoadBalancingScheme = "INTERNAL",
///         AllPorts = true,
///         BackendService = backend.Id,
///         Network = ilbNetwork.Id,
///         Subnetwork = ilbSubnet.Id,
///     });
///
///     // discovered service block
///     var catalog_service = Gcp.Apphub.GetDiscoveredService.Invoke(new()
///     {
///         Location = "us-central1",
///         ServiceUri = $"//compute.googleapis.com/{forwardingRule.Id}",
///     });
///
///     var wait120sForResourceIngestion = new Time.Sleep("wait_120s_for_resource_ingestion", new()
///     {
///         CreateDuration = "120s",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             forwardingRule,
///         },
///     });
///
///     var example = new Gcp.Apphub.Service("example", new()
///     {
///         Location = "us-central1",
///         ApplicationId = application.ApplicationId,
///         ServiceId = forwardingRule.Name,
///         DiscoveredService = catalog_service.Apply(catalog_service => catalog_service.Apply(getDiscoveredServiceResult => getDiscoveredServiceResult.Name)),
///         DisplayName = "Example Service Full",
///         Description = "Register service for testing",
///         Attributes = new Gcp.Apphub.Inputs.ServiceAttributesArgs
///         {
///             Environment = new Gcp.Apphub.Inputs.ServiceAttributesEnvironmentArgs
///             {
///                 Type = "STAGING",
///             },
///             Criticality = new Gcp.Apphub.Inputs.ServiceAttributesCriticalityArgs
///             {
///                 Type = "MISSION_CRITICAL",
///             },
///             BusinessOwners = new[]
///             {
///                 new Gcp.Apphub.Inputs.ServiceAttributesBusinessOwnerArgs
///                 {
///                     DisplayName = "Alice",
///                     Email = "alice@google.com",
///                 },
///             },
///             DeveloperOwners = new[]
///             {
///                 new Gcp.Apphub.Inputs.ServiceAttributesDeveloperOwnerArgs
///                 {
///                     DisplayName = "Bob",
///                     Email = "bob@google.com",
///                 },
///             },
///             OperatorOwners = new[]
///             {
///                 new Gcp.Apphub.Inputs.ServiceAttributesOperatorOwnerArgs
///                 {
///                     DisplayName = "Charlie",
///                     Email = "charlie@google.com",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/apphub"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/projects"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumiverse/pulumi-time/sdk/go/time"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		application, err := apphub.NewApplication(ctx, "application", &apphub.ApplicationArgs{
/// 			Location:      pulumi.String("us-central1"),
/// 			ApplicationId: pulumi.String("example-application-1"),
/// 			Scope: &apphub.ApplicationScopeArgs{
/// 				Type: pulumi.String("REGIONAL"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		serviceProject, err := organizations.NewProject(ctx, "service_project", &organizations.ProjectArgs{
/// 			ProjectId:      pulumi.String("project-1"),
/// 			Name:           pulumi.String("Service Project"),
/// 			OrgId:          pulumi.String("123456789"),
/// 			BillingAccount: pulumi.String("000000-0000000-0000000-000000"),
/// 			DeletionPolicy: pulumi.String("DELETE"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Enable Compute API
/// 		computeServiceProject, err := projects.NewService(ctx, "compute_service_project", &projects.ServiceArgs{
/// 			Project: serviceProject.ProjectId,
/// 			Service: pulumi.String("compute.googleapis.com"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		wait120s, err := time.NewSleep(ctx, "wait_120s", &time.SleepArgs{
/// 			CreateDuration: pulumi.String("120s"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			computeServiceProject,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = apphub.NewServiceProjectAttachment(ctx, "service_project_attachment", &apphub.ServiceProjectAttachmentArgs{
/// 			ServiceProjectAttachmentId: serviceProject.ProjectId,
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			wait120s,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// VPC network
/// 		ilbNetwork, err := compute.NewNetwork(ctx, "ilb_network", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("l7-ilb-network"),
/// 			Project:               serviceProject.ProjectId,
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			wait120s,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// backend subnet
/// 		ilbSubnet, err := compute.NewSubnetwork(ctx, "ilb_subnet", &compute.SubnetworkArgs{
/// 			Name:        pulumi.String("l7-ilb-subnet"),
/// 			Project:     serviceProject.ProjectId,
/// 			IpCidrRange: pulumi.String("10.0.1.0/24"),
/// 			Region:      pulumi.String("us-central1"),
/// 			Network:     ilbNetwork.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// health check
/// 		_default, err := compute.NewHealthCheck(ctx, "default", &compute.HealthCheckArgs{
/// 			Name:             pulumi.String("l7-ilb-hc"),
/// 			Project:          serviceProject.ProjectId,
/// 			CheckIntervalSec: pulumi.Int(1),
/// 			TimeoutSec:       pulumi.Int(1),
/// 			TcpHealthCheck: &compute.HealthCheckTcpHealthCheckArgs{
/// 				Port: pulumi.Int(80),
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			wait120s,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// backend service
/// 		backend, err := compute.NewRegionBackendService(ctx, "backend", &compute.RegionBackendServiceArgs{
/// 			Name:         pulumi.String("l7-ilb-backend-subnet"),
/// 			Project:      serviceProject.ProjectId,
/// 			Region:       pulumi.String("us-central1"),
/// 			HealthChecks: _default.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// forwarding rule
/// 		forwardingRule, err := compute.NewForwardingRule(ctx, "forwarding_rule", &compute.ForwardingRuleArgs{
/// 			Name:                pulumi.String("l7-ilb-forwarding-rule"),
/// 			Project:             serviceProject.ProjectId,
/// 			Region:              pulumi.String("us-central1"),
/// 			IpVersion:           pulumi.String("IPV4"),
/// 			LoadBalancingScheme: pulumi.String("INTERNAL"),
/// 			AllPorts:            pulumi.Bool(true),
/// 			BackendService:      backend.ID(),
/// 			Network:             ilbNetwork.ID(),
/// 			Subnetwork:          ilbSubnet.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// discovered service block
/// 		catalog_service := apphub.GetDiscoveredServiceOutput(ctx, apphub.GetDiscoveredServiceOutputArgs{
/// 			Location: pulumi.String("us-central1"),
/// 			ServiceUri: forwardingRule.ID().ApplyT(func(id string) (string, error) {
/// 				return fmt.Sprintf("//compute.googleapis.com/%v", id), nil
/// 			}).(pulumi.StringOutput),
/// 		}, nil)
/// 		_, err = time.NewSleep(ctx, "wait_120s_for_resource_ingestion", &time.SleepArgs{
/// 			CreateDuration: pulumi.String("120s"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			forwardingRule,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = apphub.NewService(ctx, "example", &apphub.ServiceArgs{
/// 			Location:      pulumi.String("us-central1"),
/// 			ApplicationId: application.ApplicationId,
/// 			ServiceId:     forwardingRule.Name,
/// 			DiscoveredService: pulumi.String(catalog_service.ApplyT(func(catalog_service apphub.GetDiscoveredServiceResult) (*string, error) {
/// 				return &catalog_service.Name, nil
/// 			}).(pulumi.StringPtrOutput)),
/// 			DisplayName: pulumi.String("Example Service Full"),
/// 			Description: pulumi.String("Register service for testing"),
/// 			Attributes: &apphub.ServiceAttributesArgs{
/// 				Environment: &apphub.ServiceAttributesEnvironmentArgs{
/// 					Type: pulumi.String("STAGING"),
/// 				},
/// 				Criticality: &apphub.ServiceAttributesCriticalityArgs{
/// 					Type: pulumi.String("MISSION_CRITICAL"),
/// 				},
/// 				BusinessOwners: apphub.ServiceAttributesBusinessOwnerArray{
/// 					&apphub.ServiceAttributesBusinessOwnerArgs{
/// 						DisplayName: pulumi.String("Alice"),
/// 						Email:       pulumi.String("alice@google.com"),
/// 					},
/// 				},
/// 				DeveloperOwners: apphub.ServiceAttributesDeveloperOwnerArray{
/// 					&apphub.ServiceAttributesDeveloperOwnerArgs{
/// 						DisplayName: pulumi.String("Bob"),
/// 						Email:       pulumi.String("bob@google.com"),
/// 					},
/// 				},
/// 				OperatorOwners: apphub.ServiceAttributesOperatorOwnerArray{
/// 					&apphub.ServiceAttributesOperatorOwnerArgs{
/// 						DisplayName: pulumi.String("Charlie"),
/// 						Email:       pulumi.String("charlie@google.com"),
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
/// import com.pulumi.gcp.apphub.Application;
/// import com.pulumi.gcp.apphub.ApplicationArgs;
/// import com.pulumi.gcp.apphub.inputs.ApplicationScopeArgs;
/// import com.pulumi.gcp.organizations.Project;
/// import com.pulumi.gcp.organizations.ProjectArgs;
/// import com.pulumiverse.time.Sleep;
/// import com.pulumiverse.time.SleepArgs;
/// import com.pulumi.gcp.apphub.ServiceProjectAttachment;
/// import com.pulumi.gcp.apphub.ServiceProjectAttachmentArgs;
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.compute.Subnetwork;
/// import com.pulumi.gcp.compute.SubnetworkArgs;
/// import com.pulumi.gcp.compute.HealthCheck;
/// import com.pulumi.gcp.compute.HealthCheckArgs;
/// import com.pulumi.gcp.compute.inputs.HealthCheckTcpHealthCheckArgs;
/// import com.pulumi.gcp.compute.RegionBackendService;
/// import com.pulumi.gcp.compute.RegionBackendServiceArgs;
/// import com.pulumi.gcp.compute.ForwardingRule;
/// import com.pulumi.gcp.compute.ForwardingRuleArgs;
/// import com.pulumi.gcp.apphub.ApphubFunctions;
/// import com.pulumi.gcp.apphub.inputs.GetDiscoveredServiceArgs;
/// import com.pulumi.gcp.apphub.inputs.ServiceAttributesArgs;
/// import com.pulumi.gcp.apphub.inputs.ServiceAttributesEnvironmentArgs;
/// import com.pulumi.gcp.apphub.inputs.ServiceAttributesCriticalityArgs;
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
///         var application = new Application("application", ApplicationArgs.builder()
///             .location("us-central1")
///             .applicationId("example-application-1")
///             .scope(ApplicationScopeArgs.builder()
///                 .type("REGIONAL")
///                 .build())
///             .build());
///
///         var serviceProject = new Project("serviceProject", ProjectArgs.builder()
///             .projectId("project-1")
///             .name("Service Project")
///             .orgId("123456789")
///             .billingAccount("000000-0000000-0000000-000000")
///             .deletionPolicy("DELETE")
///             .build());
///
///         // Enable Compute API
///         var computeServiceProject = new com.pulumi.gcp.projects.Service("computeServiceProject", com.pulumi.gcp.projects.ServiceArgs.builder()
///             .project(serviceProject.projectId())
///             .service("compute.googleapis.com")
///             .build());
///
///         var wait120s = new Sleep("wait120s", SleepArgs.builder()
///             .createDuration("120s")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(computeServiceProject)
///                 .build());
///
///         var serviceProjectAttachment = new ServiceProjectAttachment("serviceProjectAttachment", ServiceProjectAttachmentArgs.builder()
///             .serviceProjectAttachmentId(serviceProject.projectId())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(wait120s)
///                 .build());
///
///         // VPC network
///         var ilbNetwork = new Network("ilbNetwork", NetworkArgs.builder()
///             .name("l7-ilb-network")
///             .project(serviceProject.projectId())
///             .autoCreateSubnetworks(false)
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(wait120s)
///                 .build());
///
///         // backend subnet
///         var ilbSubnet = new Subnetwork("ilbSubnet", SubnetworkArgs.builder()
///             .name("l7-ilb-subnet")
///             .project(serviceProject.projectId())
///             .ipCidrRange("10.0.1.0/24")
///             .region("us-central1")
///             .network(ilbNetwork.id())
///             .build());
///
///         // health check
///         var default_ = new HealthCheck("default", HealthCheckArgs.builder()
///             .name("l7-ilb-hc")
///             .project(serviceProject.projectId())
///             .checkIntervalSec(1)
///             .timeoutSec(1)
///             .tcpHealthCheck(HealthCheckTcpHealthCheckArgs.builder()
///                 .port(80)
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(wait120s)
///                 .build());
///
///         // backend service
///         var backend = new RegionBackendService("backend", RegionBackendServiceArgs.builder()
///             .name("l7-ilb-backend-subnet")
///             .project(serviceProject.projectId())
///             .region("us-central1")
///             .healthChecks(default_.id())
///             .build());
///
///         // forwarding rule
///         var forwardingRule = new ForwardingRule("forwardingRule", ForwardingRuleArgs.builder()
///             .name("l7-ilb-forwarding-rule")
///             .project(serviceProject.projectId())
///             .region("us-central1")
///             .ipVersion("IPV4")
///             .loadBalancingScheme("INTERNAL")
///             .allPorts(true)
///             .backendService(backend.id())
///             .network(ilbNetwork.id())
///             .subnetwork(ilbSubnet.id())
///             .build());
///
///         // discovered service block
///         final var catalog-service = ApphubFunctions.getDiscoveredService(GetDiscoveredServiceArgs.builder()
///             .location("us-central1")
///             .serviceUri(forwardingRule.id().applyValue(_id -> String.format("//compute.googleapis.com/%s", _id)))
///             .build());
///
///         var wait120sForResourceIngestion = new Sleep("wait120sForResourceIngestion", SleepArgs.builder()
///             .createDuration("120s")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(forwardingRule)
///                 .build());
///
///         var example = new com.pulumi.gcp.apphub.Service("example", com.pulumi.gcp.apphub.ServiceArgs.builder()
///             .location("us-central1")
///             .applicationId(application.applicationId())
///             .serviceId(forwardingRule.name())
///             .discoveredService(catalog_service.applyValue(_catalog_service -> _catalog_service.name()))
///             .displayName("Example Service Full")
///             .description("Register service for testing")
///             .attributes(ServiceAttributesArgs.builder()
///                 .environment(ServiceAttributesEnvironmentArgs.builder()
///                     .type("STAGING")
///                     .build())
///                 .criticality(ServiceAttributesCriticalityArgs.builder()
///                     .type("MISSION_CRITICAL")
///                     .build())
///                 .businessOwners(ServiceAttributesBusinessOwnerArgs.builder()
///                     .displayName("Alice")
///                     .email("alice@google.com")
///                     .build())
///                 .developerOwners(ServiceAttributesDeveloperOwnerArgs.builder()
///                     .displayName("Bob")
///                     .email("bob@google.com")
///                     .build())
///                 .operatorOwners(ServiceAttributesOperatorOwnerArgs.builder()
///                     .displayName("Charlie")
///                     .email("charlie@google.com")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   application:
///     type: gcp:apphub:Application
///     properties:
///       location: us-central1
///       applicationId: example-application-1
///       scope:
///         type: REGIONAL
///   serviceProject:
///     type: gcp:organizations:Project
///     name: service_project
///     properties:
///       projectId: project-1
///       name: Service Project
///       orgId: '123456789'
///       billingAccount: 000000-0000000-0000000-000000
///       deletionPolicy: DELETE
///   # Enable Compute API
///   computeServiceProject:
///     type: gcp:projects:Service
///     name: compute_service_project
///     properties:
///       project: ${serviceProject.projectId}
///       service: compute.googleapis.com
///   wait120s:
///     type: time:Sleep
///     name: wait_120s
///     properties:
///       createDuration: 120s
///     options:
///       dependsOn:
///         - ${computeServiceProject}
///   serviceProjectAttachment:
///     type: gcp:apphub:ServiceProjectAttachment
///     name: service_project_attachment
///     properties:
///       serviceProjectAttachmentId: ${serviceProject.projectId}
///     options:
///       dependsOn:
///         - ${wait120s}
///   wait120sForResourceIngestion:
///     type: time:Sleep
///     name: wait_120s_for_resource_ingestion
///     properties:
///       createDuration: 120s
///     options:
///       dependsOn:
///         - ${forwardingRule}
///   example:
///     type: gcp:apphub:Service
///     properties:
///       location: us-central1
///       applicationId: ${application.applicationId}
///       serviceId: ${forwardingRule.name}
///       discoveredService: ${["catalog-service"].name}
///       displayName: Example Service Full
///       description: Register service for testing
///       attributes:
///         environment:
///           type: STAGING
///         criticality:
///           type: MISSION_CRITICAL
///         businessOwners:
///           - displayName: Alice
///             email: alice@google.com
///         developerOwners:
///           - displayName: Bob
///             email: bob@google.com
///         operatorOwners:
///           - displayName: Charlie
///             email: charlie@google.com
///   # VPC network
///   ilbNetwork:
///     type: gcp:compute:Network
///     name: ilb_network
///     properties:
///       name: l7-ilb-network
///       project: ${serviceProject.projectId}
///       autoCreateSubnetworks: false
///     options:
///       dependsOn:
///         - ${wait120s}
///   # backend subnet
///   ilbSubnet:
///     type: gcp:compute:Subnetwork
///     name: ilb_subnet
///     properties:
///       name: l7-ilb-subnet
///       project: ${serviceProject.projectId}
///       ipCidrRange: 10.0.1.0/24
///       region: us-central1
///       network: ${ilbNetwork.id}
///   # forwarding rule
///   forwardingRule:
///     type: gcp:compute:ForwardingRule
///     name: forwarding_rule
///     properties:
///       name: l7-ilb-forwarding-rule
///       project: ${serviceProject.projectId}
///       region: us-central1
///       ipVersion: IPV4
///       loadBalancingScheme: INTERNAL
///       allPorts: true
///       backendService: ${backend.id}
///       network: ${ilbNetwork.id}
///       subnetwork: ${ilbSubnet.id}
///   # backend service
///   backend:
///     type: gcp:compute:RegionBackendService
///     properties:
///       name: l7-ilb-backend-subnet
///       project: ${serviceProject.projectId}
///       region: us-central1
///       healthChecks: ${default.id}
///   # health check
///   default:
///     type: gcp:compute:HealthCheck
///     properties:
///       name: l7-ilb-hc
///       project: ${serviceProject.projectId}
///       checkIntervalSec: 1
///       timeoutSec: 1
///       tcpHealthCheck:
///         port: '80'
///     options:
///       dependsOn:
///         - ${wait120s}
/// variables:
///   # discovered service block
///   catalog-service:
///     fn::invoke:
///       function: gcp:apphub:getDiscoveredService
///       arguments:
///         location: us-central1
///         serviceUri: //compute.googleapis.com/${forwardingRule.id}
/// ```
///
///
/// ## Import
///
/// Service can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/applications/{{application_id}}/services/{{service_id}}`
///
/// * `{{project}}/{{location}}/{{application_id}}/{{service_id}}`
///
/// * `{{location}}/{{application_id}}/{{service_id}}`
///
/// When using the `pulumi import` command, Service can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:apphub/service:Service default projects/{{project}}/locations/{{location}}/applications/{{application_id}}/services/{{service_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:apphub/service:Service default {{project}}/{{location}}/{{application_id}}/{{service_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:apphub/service:Service default {{location}}/{{application_id}}/{{service_id}}
/// ```
class Service extends pulumi.CustomResource {
  /// Part of `parent`.  Full resource name of a parent Application. Example: projects/{HOST_PROJECT_ID}/locations/{LOCATION}/applications/{APPLICATION_ID}
  late final pulumi.Output<String> applicationId;
  /// Consumer provided attributes.
  /// Structure is documented below.
  late final pulumi.Output<ServiceAttributes?> attributes;
  /// Output only. Create time.
  late final pulumi.Output<String> createTime;
  /// User-defined description of a Service.
  late final pulumi.Output<String?> description;
  /// Immutable. The resource name of the original discovered service.
  late final pulumi.Output<String> discoveredService;
  /// User-defined name for the Service.
  late final pulumi.Output<String?> displayName;
  /// Part of `parent`.  Full resource name of a parent Application. Example: projects/{HOST_PROJECT_ID}/locations/{LOCATION}/applications/{APPLICATION_ID}
  late final pulumi.Output<String> location;
  /// Identifier. The resource name of a Service. Format:
  /// "projects/{host-project-id}/locations/{location}/applications/{application-id}/services/{service-id}"
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The Service identifier.
  late final pulumi.Output<String> serviceId;
  /// Properties of an underlying cloud resource that can comprise a Service.
  /// Structure is documented below.
  late final pulumi.Output<List<ServiceServiceProperty>> serviceProperties;
  /// Reference to an underlying networking resource that can comprise a Service.
  /// Structure is documented below.
  late final pulumi.Output<List<ServiceServiceReference>> serviceReferences;
  /// Output only. Service state. Possible values: STATE_UNSPECIFIED CREATING ACTIVE DELETING DETACHED
  late final pulumi.Output<String> state;
  /// Output only. A universally unique identifier (UUID) for the `Service` in the UUID4
  /// format.
  late final pulumi.Output<String> uid;
  /// Output only. Update time.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [Service].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Service]. {@macro pulumi_apphub_service_service_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Service(
    String name, {
    ServiceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:apphub/service:Service',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.applicationId = registerOutput<String>('applicationId');
    this.attributes = registerOutput<ServiceAttributes?>('attributes');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.discoveredService = registerOutput<String>('discoveredService');
    this.displayName = registerOutput<String?>('displayName');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.serviceId = registerOutput<String>('serviceId');
    this.serviceProperties = registerOutput<List<ServiceServiceProperty>>('serviceProperties');
    this.serviceReferences = registerOutput<List<ServiceServiceReference>>('serviceReferences');
    this.state = registerOutput<String>('state');
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [Service] resource's state with the given [name] and [id].
  static Service get(
    String name,
    pulumi.Input<String> id, {
    ServiceState? state,
  }) {
    return Service._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Service._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:apphub/service:Service',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.applicationId = registerOutput<String>('applicationId');
    this.attributes = registerOutput<ServiceAttributes?>('attributes');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.discoveredService = registerOutput<String>('discoveredService');
    this.displayName = registerOutput<String?>('displayName');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.serviceId = registerOutput<String>('serviceId');
    this.serviceProperties = registerOutput<List<ServiceServiceProperty>>('serviceProperties');
    this.serviceReferences = registerOutput<List<ServiceServiceReference>>('serviceReferences');
    this.state = registerOutput<String>('state');
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
