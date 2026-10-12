import 'package:pulumi/pulumi.dart' as pulumi;
import 'endpoint_attachment_args.dart';
import 'endpoint_attachment_state.dart';

/// An `EndpointAttachment` in Apigee is a resource that facilitates private connectivity between Apigee and backend services using Private Service Connect (PSC).
///
/// For more information, see the [Apigee documentation](https://docs.cloud.google.com/apigee/docs/api-platform/architecture/southbound-networking-patterns-endpoints).
///
///
/// To get more information about EndpointAttachment, see:
///
/// * [API documentation](https://cloud.google.com/apigee/docs/reference/apis/apigee/rest/v1/organizations.endpointAttachments/create)
/// * How-to Guides
/// * [Creating an environment](https://cloud.google.com/apigee/docs/api-platform/get-started/create-environment)
///
/// ## Example Usage
///
/// ### Apigee Endpoint Attachment Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const current = gcp.organizations.getClientConfig({});
/// const apigeeNetwork = new gcp.compute.Network("apigee_network", {
///     name: "apigee-network",
///     project: current.then(current => current.project),
/// });
/// const apigeeRange = new gcp.compute.GlobalAddress("apigee_range", {
///     name: "apigee-range",
///     purpose: "VPC_PEERING",
///     addressType: "INTERNAL",
///     prefixLength: 16,
///     network: apigeeNetwork.id,
///     project: current.then(current => current.project),
/// });
/// const apigeeVpcConnection = new gcp.servicenetworking.Connection("apigee_vpc_connection", {
///     network: apigeeNetwork.id,
///     service: "servicenetworking.googleapis.com",
///     reservedPeeringRanges: [apigeeRange.name],
/// });
/// const producerServiceHealthCheck = new gcp.compute.HealthCheck("producer_service_health_check", {
///     name: "producer-service-health-check",
///     checkIntervalSec: 1,
///     timeoutSec: 1,
///     tcpHealthCheck: {
///         port: 80,
///     },
///     project: current.then(current => current.project),
/// });
/// const producerServiceBackend = new gcp.compute.RegionBackendService("producer_service_backend", {
///     name: "producer-service",
///     region: "us-central1",
///     healthChecks: producerServiceHealthCheck.id,
///     project: current.then(current => current.project),
/// });
/// const pscIlbNetwork = new gcp.compute.Network("psc_ilb_network", {
///     name: "psc-ilb-network",
///     autoCreateSubnetworks: false,
///     project: current.then(current => current.project),
/// });
/// const pscIlbProducerSubnetwork = new gcp.compute.Subnetwork("psc_ilb_producer_subnetwork", {
///     name: "psc-ilb-producer-subnetwork",
///     region: "us-central1",
///     network: pscIlbNetwork.id,
///     ipCidrRange: "10.0.99.0/24",
///     project: current.then(current => current.project),
/// });
/// const pscIlbTargetService = new gcp.compute.ForwardingRule("psc_ilb_target_service", {
///     name: "producer-forwarding-rule",
///     region: "us-central1",
///     loadBalancingScheme: "INTERNAL",
///     backendService: producerServiceBackend.id,
///     allPorts: true,
///     network: pscIlbNetwork.name,
///     subnetwork: pscIlbProducerSubnetwork.name,
///     project: project.projectId,
/// });
/// const pscIlbNat = new gcp.compute.Subnetwork("psc_ilb_nat", {
///     name: "psc-ilb-nat",
///     region: "us-central1",
///     network: pscIlbNetwork.id,
///     purpose: "PRIVATE_SERVICE_CONNECT",
///     ipCidrRange: "10.0.199.0/24",
///     project: current.then(current => current.project),
/// });
/// const pscIlbServiceAttachment = new gcp.compute.ServiceAttachment("psc_ilb_service_attachment", {
///     name: "my-psc-ilb",
///     region: "us-central1",
///     description: "A service attachment configured with Terraform",
///     enableProxyProtocol: true,
///     connectionPreference: "ACCEPT_AUTOMATIC",
///     natSubnets: [pscIlbNat.id],
///     targetService: pscIlbTargetService.id,
///     project: current.then(current => current.project),
/// });
/// const apigeeOrg = new gcp.apigee.Organization("apigee_org", {
///     analyticsRegion: "us-central1",
///     projectId: current.then(current => current.project),
///     authorizedNetwork: apigeeNetwork.id,
/// }, {
///     dependsOn: [apigeeVpcConnection],
/// });
/// const apigeeEndpointAttachment = new gcp.apigee.EndpointAttachment("apigee_endpoint_attachment", {
///     orgId: apigeeOrg.id,
///     endpointAttachmentId: "tf-test_77884",
///     location: "us-central1",
///     serviceAttachment: pscIlbServiceAttachment.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// current = gcp.organizations.get_client_config()
/// apigee_network = gcp.compute.Network("apigee_network",
///     name="apigee-network",
///     project=current.project)
/// apigee_range = gcp.compute.GlobalAddress("apigee_range",
///     name="apigee-range",
///     purpose="VPC_PEERING",
///     address_type="INTERNAL",
///     prefix_length=16,
///     network=apigee_network.id,
///     project=current.project)
/// apigee_vpc_connection = gcp.servicenetworking.Connection("apigee_vpc_connection",
///     network=apigee_network.id,
///     service="servicenetworking.googleapis.com",
///     reserved_peering_ranges=[apigee_range.name])
/// producer_service_health_check = gcp.compute.HealthCheck("producer_service_health_check",
///     name="producer-service-health-check",
///     check_interval_sec=1,
///     timeout_sec=1,
///     tcp_health_check={
///         "port": 80,
///     },
///     project=current.project)
/// producer_service_backend = gcp.compute.RegionBackendService("producer_service_backend",
///     name="producer-service",
///     region="us-central1",
///     health_checks=producer_service_health_check.id,
///     project=current.project)
/// psc_ilb_network = gcp.compute.Network("psc_ilb_network",
///     name="psc-ilb-network",
///     auto_create_subnetworks=False,
///     project=current.project)
/// psc_ilb_producer_subnetwork = gcp.compute.Subnetwork("psc_ilb_producer_subnetwork",
///     name="psc-ilb-producer-subnetwork",
///     region="us-central1",
///     network=psc_ilb_network.id,
///     ip_cidr_range="10.0.99.0/24",
///     project=current.project)
/// psc_ilb_target_service = gcp.compute.ForwardingRule("psc_ilb_target_service",
///     name="producer-forwarding-rule",
///     region="us-central1",
///     load_balancing_scheme="INTERNAL",
///     backend_service=producer_service_backend.id,
///     all_ports=True,
///     network=psc_ilb_network.name,
///     subnetwork=psc_ilb_producer_subnetwork.name,
///     project=project["projectId"])
/// psc_ilb_nat = gcp.compute.Subnetwork("psc_ilb_nat",
///     name="psc-ilb-nat",
///     region="us-central1",
///     network=psc_ilb_network.id,
///     purpose="PRIVATE_SERVICE_CONNECT",
///     ip_cidr_range="10.0.199.0/24",
///     project=current.project)
/// psc_ilb_service_attachment = gcp.compute.ServiceAttachment("psc_ilb_service_attachment",
///     name="my-psc-ilb",
///     region="us-central1",
///     description="A service attachment configured with Terraform",
///     enable_proxy_protocol=True,
///     connection_preference="ACCEPT_AUTOMATIC",
///     nat_subnets=[psc_ilb_nat.id],
///     target_service=psc_ilb_target_service.id,
///     project=current.project)
/// apigee_org = gcp.apigee.Organization("apigee_org",
///     analytics_region="us-central1",
///     project_id=current.project,
///     authorized_network=apigee_network.id,
///     opts = pulumi.ResourceOptions(depends_on=[apigee_vpc_connection]))
/// apigee_endpoint_attachment = gcp.apigee.EndpointAttachment("apigee_endpoint_attachment",
///     org_id=apigee_org.id,
///     endpoint_attachment_id="tf-test_77884",
///     location="us-central1",
///     service_attachment=psc_ilb_service_attachment.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var current = Gcp.Organizations.GetClientConfig.Invoke();
///
///     var apigeeNetwork = new Gcp.Compute.Network("apigee_network", new()
///     {
///         Name = "apigee-network",
///         Project = current.Apply(getClientConfigResult => getClientConfigResult.Project),
///     });
///
///     var apigeeRange = new Gcp.Compute.GlobalAddress("apigee_range", new()
///     {
///         Name = "apigee-range",
///         Purpose = "VPC_PEERING",
///         AddressType = "INTERNAL",
///         PrefixLength = 16,
///         Network = apigeeNetwork.Id,
///         Project = current.Apply(getClientConfigResult => getClientConfigResult.Project),
///     });
///
///     var apigeeVpcConnection = new Gcp.ServiceNetworking.Connection("apigee_vpc_connection", new()
///     {
///         Network = apigeeNetwork.Id,
///         Service = "servicenetworking.googleapis.com",
///         ReservedPeeringRanges = new[]
///         {
///             apigeeRange.Name,
///         },
///     });
///
///     var producerServiceHealthCheck = new Gcp.Compute.HealthCheck("producer_service_health_check", new()
///     {
///         Name = "producer-service-health-check",
///         CheckIntervalSec = 1,
///         TimeoutSec = 1,
///         TcpHealthCheck = new Gcp.Compute.Inputs.HealthCheckTcpHealthCheckArgs
///         {
///             Port = 80,
///         },
///         Project = current.Apply(getClientConfigResult => getClientConfigResult.Project),
///     });
///
///     var producerServiceBackend = new Gcp.Compute.RegionBackendService("producer_service_backend", new()
///     {
///         Name = "producer-service",
///         Region = "us-central1",
///         HealthChecks = producerServiceHealthCheck.Id,
///         Project = current.Apply(getClientConfigResult => getClientConfigResult.Project),
///     });
///
///     var pscIlbNetwork = new Gcp.Compute.Network("psc_ilb_network", new()
///     {
///         Name = "psc-ilb-network",
///         AutoCreateSubnetworks = false,
///         Project = current.Apply(getClientConfigResult => getClientConfigResult.Project),
///     });
///
///     var pscIlbProducerSubnetwork = new Gcp.Compute.Subnetwork("psc_ilb_producer_subnetwork", new()
///     {
///         Name = "psc-ilb-producer-subnetwork",
///         Region = "us-central1",
///         Network = pscIlbNetwork.Id,
///         IpCidrRange = "10.0.99.0/24",
///         Project = current.Apply(getClientConfigResult => getClientConfigResult.Project),
///     });
///
///     var pscIlbTargetService = new Gcp.Compute.ForwardingRule("psc_ilb_target_service", new()
///     {
///         Name = "producer-forwarding-rule",
///         Region = "us-central1",
///         LoadBalancingScheme = "INTERNAL",
///         BackendService = producerServiceBackend.Id,
///         AllPorts = true,
///         Network = pscIlbNetwork.Name,
///         Subnetwork = pscIlbProducerSubnetwork.Name,
///         Project = project.ProjectId,
///     });
///
///     var pscIlbNat = new Gcp.Compute.Subnetwork("psc_ilb_nat", new()
///     {
///         Name = "psc-ilb-nat",
///         Region = "us-central1",
///         Network = pscIlbNetwork.Id,
///         Purpose = "PRIVATE_SERVICE_CONNECT",
///         IpCidrRange = "10.0.199.0/24",
///         Project = current.Apply(getClientConfigResult => getClientConfigResult.Project),
///     });
///
///     var pscIlbServiceAttachment = new Gcp.Compute.ServiceAttachment("psc_ilb_service_attachment", new()
///     {
///         Name = "my-psc-ilb",
///         Region = "us-central1",
///         Description = "A service attachment configured with Terraform",
///         EnableProxyProtocol = true,
///         ConnectionPreference = "ACCEPT_AUTOMATIC",
///         NatSubnets = new[]
///         {
///             pscIlbNat.Id,
///         },
///         TargetService = pscIlbTargetService.Id,
///         Project = current.Apply(getClientConfigResult => getClientConfigResult.Project),
///     });
///
///     var apigeeOrg = new Gcp.Apigee.Organization("apigee_org", new()
///     {
///         AnalyticsRegion = "us-central1",
///         ProjectId = current.Apply(getClientConfigResult => getClientConfigResult.Project),
///         AuthorizedNetwork = apigeeNetwork.Id,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             apigeeVpcConnection,
///         },
///     });
///
///     var apigeeEndpointAttachment = new Gcp.Apigee.EndpointAttachment("apigee_endpoint_attachment", new()
///     {
///         OrgId = apigeeOrg.Id,
///         EndpointAttachmentId = "tf-test_77884",
///         Location = "us-central1",
///         ServiceAttachment = pscIlbServiceAttachment.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/apigee"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/servicenetworking"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		current, err := organizations.GetClientConfig(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		apigeeNetwork, err := compute.NewNetwork(ctx, "apigee_network", &compute.NetworkArgs{
/// 			Name:    pulumi.String("apigee-network"),
/// 			Project: pulumi.String(current.Project),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		apigeeRange, err := compute.NewGlobalAddress(ctx, "apigee_range", &compute.GlobalAddressArgs{
/// 			Name:         pulumi.String("apigee-range"),
/// 			Purpose:      pulumi.String("VPC_PEERING"),
/// 			AddressType:  pulumi.String("INTERNAL"),
/// 			PrefixLength: pulumi.Int(16),
/// 			Network:      apigeeNetwork.ID().ToIDOutput().ToStringOutput(),
/// 			Project:      pulumi.String(current.Project),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		apigeeVpcConnection, err := servicenetworking.NewConnection(ctx, "apigee_vpc_connection", &servicenetworking.ConnectionArgs{
/// 			Network: apigeeNetwork.ID().ToIDOutput().ToStringOutput(),
/// 			Service: pulumi.String("servicenetworking.googleapis.com"),
/// 			ReservedPeeringRanges: pulumi.StringArray{
/// 				apigeeRange.Name,
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		producerServiceHealthCheck, err := compute.NewHealthCheck(ctx, "producer_service_health_check", &compute.HealthCheckArgs{
/// 			Name:             pulumi.String("producer-service-health-check"),
/// 			CheckIntervalSec: pulumi.Int(1),
/// 			TimeoutSec:       pulumi.Int(1),
/// 			TcpHealthCheck: &compute.HealthCheckTcpHealthCheckArgs{
/// 				Port: pulumi.Int(80),
/// 			},
/// 			Project: pulumi.String(current.Project),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		producerServiceBackend, err := compute.NewRegionBackendService(ctx, "producer_service_backend", &compute.RegionBackendServiceArgs{
/// 			Name:         pulumi.String("producer-service"),
/// 			Region:       pulumi.String("us-central1"),
/// 			HealthChecks: producerServiceHealthCheck.ID().ToIDOutput().ToStringOutput(),
/// 			Project:      pulumi.String(current.Project),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		pscIlbNetwork, err := compute.NewNetwork(ctx, "psc_ilb_network", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("psc-ilb-network"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 			Project:               pulumi.String(current.Project),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		pscIlbProducerSubnetwork, err := compute.NewSubnetwork(ctx, "psc_ilb_producer_subnetwork", &compute.SubnetworkArgs{
/// 			Name:        pulumi.String("psc-ilb-producer-subnetwork"),
/// 			Region:      pulumi.String("us-central1"),
/// 			Network:     pscIlbNetwork.ID().ToIDOutput().ToStringOutput(),
/// 			IpCidrRange: pulumi.String("10.0.99.0/24"),
/// 			Project:     pulumi.String(current.Project),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		pscIlbTargetService, err := compute.NewForwardingRule(ctx, "psc_ilb_target_service", &compute.ForwardingRuleArgs{
/// 			Name:                pulumi.String("producer-forwarding-rule"),
/// 			Region:              pulumi.String("us-central1"),
/// 			LoadBalancingScheme: pulumi.String("INTERNAL"),
/// 			BackendService:      producerServiceBackend.ID().ToIDOutput().ToStringOutput(),
/// 			AllPorts:            pulumi.Bool(true),
/// 			Network:             pscIlbNetwork.Name,
/// 			Subnetwork:          pscIlbProducerSubnetwork.Name,
/// 			Project:             pulumi.Any(project.ProjectId),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		pscIlbNat, err := compute.NewSubnetwork(ctx, "psc_ilb_nat", &compute.SubnetworkArgs{
/// 			Name:        pulumi.String("psc-ilb-nat"),
/// 			Region:      pulumi.String("us-central1"),
/// 			Network:     pscIlbNetwork.ID().ToIDOutput().ToStringOutput(),
/// 			Purpose:     pulumi.String("PRIVATE_SERVICE_CONNECT"),
/// 			IpCidrRange: pulumi.String("10.0.199.0/24"),
/// 			Project:     pulumi.String(current.Project),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		pscIlbServiceAttachment, err := compute.NewServiceAttachment(ctx, "psc_ilb_service_attachment", &compute.ServiceAttachmentArgs{
/// 			Name:                 pulumi.String("my-psc-ilb"),
/// 			Region:               pulumi.String("us-central1"),
/// 			Description:          pulumi.String("A service attachment configured with Terraform"),
/// 			EnableProxyProtocol:  pulumi.Bool(true),
/// 			ConnectionPreference: pulumi.String("ACCEPT_AUTOMATIC"),
/// 			NatSubnets: pulumi.StringArray{
/// 				pscIlbNat.ID().ToIDOutput().ToStringOutput(),
/// 			},
/// 			TargetService: pscIlbTargetService.ID().ToIDOutput().ToStringOutput(),
/// 			Project:       pulumi.String(current.Project),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		apigeeOrg, err := apigee.NewOrganization(ctx, "apigee_org", &apigee.OrganizationArgs{
/// 			AnalyticsRegion:   pulumi.String("us-central1"),
/// 			ProjectId:         pulumi.String(current.Project),
/// 			AuthorizedNetwork: apigeeNetwork.ID().ToIDOutput().ToStringOutput(),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			apigeeVpcConnection,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = apigee.NewEndpointAttachment(ctx, "apigee_endpoint_attachment", &apigee.EndpointAttachmentArgs{
/// 			OrgId:                apigeeOrg.ID().ToIDOutput().ToStringOutput(),
/// 			EndpointAttachmentId: pulumi.String("tf-test_77884"),
/// 			Location:             pulumi.String("us-central1"),
/// 			ServiceAttachment:    pscIlbServiceAttachment.ID().ToIDOutput().ToStringOutput(),
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
/// data "gcp_organizations_getclientconfig" "current" {
/// }
///
/// resource "gcp_compute_network" "apigee_network" {
///   name    = "apigee-network"
///   project = data.gcp_organizations_getclientconfig.current.project
/// }
/// resource "gcp_compute_globaladdress" "apigee_range" {
///   name          = "apigee-range"
///   purpose       = "VPC_PEERING"
///   address_type  = "INTERNAL"
///   prefix_length = 16
///   network       = gcp_compute_network.apigee_network.id
///   project       = data.gcp_organizations_getclientconfig.current.project
/// }
/// resource "gcp_servicenetworking_connection" "apigee_vpc_connection" {
///   network                 = gcp_compute_network.apigee_network.id
///   service                 = "servicenetworking.googleapis.com"
///   reserved_peering_ranges = [gcp_compute_globaladdress.apigee_range.name]
/// }
/// resource "gcp_compute_forwardingrule" "psc_ilb_target_service" {
///   name                  = "producer-forwarding-rule"
///   region                = "us-central1"
///   load_balancing_scheme = "INTERNAL"
///   backend_service       = gcp_compute_regionbackendservice.producer_service_backend.id
///   all_ports             = true
///   network               = gcp_compute_network.psc_ilb_network.name
///   subnetwork            = gcp_compute_subnetwork.psc_ilb_producer_subnetwork.name
///   project               = project.projectId
/// }
/// resource "gcp_compute_regionbackendservice" "producer_service_backend" {
///   name          = "producer-service"
///   region        = "us-central1"
///   health_checks = gcp_compute_healthcheck.producer_service_health_check.id
///   project       = data.gcp_organizations_getclientconfig.current.project
/// }
/// resource "gcp_compute_healthcheck" "producer_service_health_check" {
///   name               = "producer-service-health-check"
///   check_interval_sec = 1
///   timeout_sec        = 1
///   tcp_health_check = {
///     port = "80"
///   }
///   project = data.gcp_organizations_getclientconfig.current.project
/// }
/// resource "gcp_compute_network" "psc_ilb_network" {
///   name                    = "psc-ilb-network"
///   auto_create_subnetworks = false
///   project                 = data.gcp_organizations_getclientconfig.current.project
/// }
/// resource "gcp_compute_subnetwork" "psc_ilb_producer_subnetwork" {
///   name          = "psc-ilb-producer-subnetwork"
///   region        = "us-central1"
///   network       = gcp_compute_network.psc_ilb_network.id
///   ip_cidr_range = "10.0.99.0/24"
///   project       = data.gcp_organizations_getclientconfig.current.project
/// }
/// resource "gcp_compute_subnetwork" "psc_ilb_nat" {
///   name          = "psc-ilb-nat"
///   region        = "us-central1"
///   network       = gcp_compute_network.psc_ilb_network.id
///   purpose       = "PRIVATE_SERVICE_CONNECT"
///   ip_cidr_range = "10.0.199.0/24"
///   project       = data.gcp_organizations_getclientconfig.current.project
/// }
/// resource "gcp_compute_serviceattachment" "psc_ilb_service_attachment" {
///   name                  = "my-psc-ilb"
///   region                = "us-central1"
///   description           = "A service attachment configured with Terraform"
///   enable_proxy_protocol = true
///   connection_preference = "ACCEPT_AUTOMATIC"
///   nat_subnets           = [gcp_compute_subnetwork.psc_ilb_nat.id]
///   target_service        = gcp_compute_forwardingrule.psc_ilb_target_service.id
///   project               = data.gcp_organizations_getclientconfig.current.project
/// }
/// resource "gcp_apigee_organization" "apigee_org" {
///   depends_on         = [gcp_servicenetworking_connection.apigee_vpc_connection]
///   analytics_region   = "us-central1"
///   project_id         = data.gcp_organizations_getclientconfig.current.project
///   authorized_network = gcp_compute_network.apigee_network.id
/// }
/// resource "gcp_apigee_endpointattachment" "apigee_endpoint_attachment" {
///   org_id                 = gcp_apigee_organization.apigee_org.id
///   endpoint_attachment_id = "tf-test_77884"
///   location               = "us-central1"
///   service_attachment     = gcp_compute_serviceattachment.psc_ilb_service_attachment.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.compute.GlobalAddress;
/// import com.pulumi.gcp.compute.GlobalAddressArgs;
/// import com.pulumi.gcp.servicenetworking.Connection;
/// import com.pulumi.gcp.servicenetworking.ConnectionArgs;
/// import com.pulumi.gcp.compute.HealthCheck;
/// import com.pulumi.gcp.compute.HealthCheckArgs;
/// import com.pulumi.gcp.compute.inputs.HealthCheckTcpHealthCheckArgs;
/// import com.pulumi.gcp.compute.RegionBackendService;
/// import com.pulumi.gcp.compute.RegionBackendServiceArgs;
/// import com.pulumi.gcp.compute.Subnetwork;
/// import com.pulumi.gcp.compute.SubnetworkArgs;
/// import com.pulumi.gcp.compute.ForwardingRule;
/// import com.pulumi.gcp.compute.ForwardingRuleArgs;
/// import com.pulumi.gcp.compute.ServiceAttachment;
/// import com.pulumi.gcp.compute.ServiceAttachmentArgs;
/// import com.pulumi.gcp.apigee.Organization;
/// import com.pulumi.gcp.apigee.OrganizationArgs;
/// import com.pulumi.gcp.apigee.EndpointAttachment;
/// import com.pulumi.gcp.apigee.EndpointAttachmentArgs;
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
///         final var current = OrganizationsFunctions.getClientConfig(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         var apigeeNetwork = new Network("apigeeNetwork", NetworkArgs.builder()
///             .name("apigee-network")
///             .project(current.project())
///             .build());
///
///         var apigeeRange = new GlobalAddress("apigeeRange", GlobalAddressArgs.builder()
///             .name("apigee-range")
///             .purpose("VPC_PEERING")
///             .addressType("INTERNAL")
///             .prefixLength(16)
///             .network(apigeeNetwork.id())
///             .project(current.project())
///             .build());
///
///         var apigeeVpcConnection = new Connection("apigeeVpcConnection", ConnectionArgs.builder()
///             .network(apigeeNetwork.id())
///             .service("servicenetworking.googleapis.com")
///             .reservedPeeringRanges(apigeeRange.name())
///             .build());
///
///         var producerServiceHealthCheck = new HealthCheck("producerServiceHealthCheck", HealthCheckArgs.builder()
///             .name("producer-service-health-check")
///             .checkIntervalSec(1)
///             .timeoutSec(1)
///             .tcpHealthCheck(HealthCheckTcpHealthCheckArgs.builder()
///                 .port(80)
///                 .build())
///             .project(current.project())
///             .build());
///
///         var producerServiceBackend = new RegionBackendService("producerServiceBackend", RegionBackendServiceArgs.builder()
///             .name("producer-service")
///             .region("us-central1")
///             .healthChecks(producerServiceHealthCheck.id())
///             .project(current.project())
///             .build());
///
///         var pscIlbNetwork = new Network("pscIlbNetwork", NetworkArgs.builder()
///             .name("psc-ilb-network")
///             .autoCreateSubnetworks(false)
///             .project(current.project())
///             .build());
///
///         var pscIlbProducerSubnetwork = new Subnetwork("pscIlbProducerSubnetwork", SubnetworkArgs.builder()
///             .name("psc-ilb-producer-subnetwork")
///             .region("us-central1")
///             .network(pscIlbNetwork.id())
///             .ipCidrRange("10.0.99.0/24")
///             .project(current.project())
///             .build());
///
///         var pscIlbTargetService = new ForwardingRule("pscIlbTargetService", ForwardingRuleArgs.builder()
///             .name("producer-forwarding-rule")
///             .region("us-central1")
///             .loadBalancingScheme("INTERNAL")
///             .backendService(producerServiceBackend.id())
///             .allPorts(true)
///             .network(pscIlbNetwork.name())
///             .subnetwork(pscIlbProducerSubnetwork.name())
///             .project(project.get("projectId"))
///             .build());
///
///         var pscIlbNat = new Subnetwork("pscIlbNat", SubnetworkArgs.builder()
///             .name("psc-ilb-nat")
///             .region("us-central1")
///             .network(pscIlbNetwork.id())
///             .purpose("PRIVATE_SERVICE_CONNECT")
///             .ipCidrRange("10.0.199.0/24")
///             .project(current.project())
///             .build());
///
///         var pscIlbServiceAttachment = new ServiceAttachment("pscIlbServiceAttachment", ServiceAttachmentArgs.builder()
///             .name("my-psc-ilb")
///             .region("us-central1")
///             .description("A service attachment configured with Terraform")
///             .enableProxyProtocol(true)
///             .connectionPreference("ACCEPT_AUTOMATIC")
///             .natSubnets(pscIlbNat.id())
///             .targetService(pscIlbTargetService.id())
///             .project(current.project())
///             .build());
///
///         var apigeeOrg = new Organization("apigeeOrg", OrganizationArgs.builder()
///             .analyticsRegion("us-central1")
///             .projectId(current.project())
///             .authorizedNetwork(apigeeNetwork.id())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(apigeeVpcConnection)
///                 .build());
///
///         var apigeeEndpointAttachment = new EndpointAttachment("apigeeEndpointAttachment", EndpointAttachmentArgs.builder()
///             .orgId(apigeeOrg.id())
///             .endpointAttachmentId("tf-test_77884")
///             .location("us-central1")
///             .serviceAttachment(pscIlbServiceAttachment.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   apigeeNetwork:
///     type: gcp:compute:Network
///     name: apigee_network
///     properties:
///       name: apigee-network
///       project: ${current.project}
///   apigeeRange:
///     type: gcp:compute:GlobalAddress
///     name: apigee_range
///     properties:
///       name: apigee-range
///       purpose: VPC_PEERING
///       addressType: INTERNAL
///       prefixLength: 16
///       network: ${apigeeNetwork.id}
///       project: ${current.project}
///   apigeeVpcConnection:
///     type: gcp:servicenetworking:Connection
///     name: apigee_vpc_connection
///     properties:
///       network: ${apigeeNetwork.id}
///       service: servicenetworking.googleapis.com
///       reservedPeeringRanges:
///         - ${apigeeRange.name}
///   pscIlbTargetService:
///     type: gcp:compute:ForwardingRule
///     name: psc_ilb_target_service
///     properties:
///       name: producer-forwarding-rule
///       region: us-central1
///       loadBalancingScheme: INTERNAL
///       backendService: ${producerServiceBackend.id}
///       allPorts: true
///       network: ${pscIlbNetwork.name}
///       subnetwork: ${pscIlbProducerSubnetwork.name}
///       project: ${project.projectId}
///   producerServiceBackend:
///     type: gcp:compute:RegionBackendService
///     name: producer_service_backend
///     properties:
///       name: producer-service
///       region: us-central1
///       healthChecks: ${producerServiceHealthCheck.id}
///       project: ${current.project}
///   producerServiceHealthCheck:
///     type: gcp:compute:HealthCheck
///     name: producer_service_health_check
///     properties:
///       name: producer-service-health-check
///       checkIntervalSec: 1
///       timeoutSec: 1
///       tcpHealthCheck:
///         port: '80'
///       project: ${current.project}
///   pscIlbNetwork:
///     type: gcp:compute:Network
///     name: psc_ilb_network
///     properties:
///       name: psc-ilb-network
///       autoCreateSubnetworks: false
///       project: ${current.project}
///   pscIlbProducerSubnetwork:
///     type: gcp:compute:Subnetwork
///     name: psc_ilb_producer_subnetwork
///     properties:
///       name: psc-ilb-producer-subnetwork
///       region: us-central1
///       network: ${pscIlbNetwork.id}
///       ipCidrRange: 10.0.99.0/24
///       project: ${current.project}
///   pscIlbNat:
///     type: gcp:compute:Subnetwork
///     name: psc_ilb_nat
///     properties:
///       name: psc-ilb-nat
///       region: us-central1
///       network: ${pscIlbNetwork.id}
///       purpose: PRIVATE_SERVICE_CONNECT
///       ipCidrRange: 10.0.199.0/24
///       project: ${current.project}
///   pscIlbServiceAttachment:
///     type: gcp:compute:ServiceAttachment
///     name: psc_ilb_service_attachment
///     properties:
///       name: my-psc-ilb
///       region: us-central1
///       description: A service attachment configured with Terraform
///       enableProxyProtocol: true
///       connectionPreference: ACCEPT_AUTOMATIC
///       natSubnets:
///         - ${pscIlbNat.id}
///       targetService: ${pscIlbTargetService.id}
///       project: ${current.project}
///   apigeeOrg:
///     type: gcp:apigee:Organization
///     name: apigee_org
///     properties:
///       analyticsRegion: us-central1
///       projectId: ${current.project}
///       authorizedNetwork: ${apigeeNetwork.id}
///     options:
///       dependsOn:
///         - ${apigeeVpcConnection}
///   apigeeEndpointAttachment:
///     type: gcp:apigee:EndpointAttachment
///     name: apigee_endpoint_attachment
///     properties:
///       orgId: ${apigeeOrg.id}
///       endpointAttachmentId: tf-test_77884
///       location: us-central1
///       serviceAttachment: ${pscIlbServiceAttachment.id}
/// variables:
///   current:
///     fn::invoke:
///       function: gcp:organizations:getClientConfig
///       arguments: {}
/// ```
///
///
/// ## Import
///
/// EndpointAttachment can be imported using any of these accepted formats:
///
/// * `{{org_id}}/endpointAttachments/{{endpoint_attachment_id}}`
/// * `{{org_id}}/{{endpoint_attachment_id}}`
///
///
/// When using the `pulumi import` command, EndpointAttachment can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:apigee/endpointAttachment:EndpointAttachment default {{org_id}}/endpointAttachments/{{endpoint_attachment_id}}
/// $ pulumi import gcp:apigee/endpointAttachment:EndpointAttachment default {{org_id}}/{{endpoint_attachment_id}}
/// ```
class EndpointAttachment extends pulumi.CustomResource {
  /// State of the endpoint attachment connection to the service attachment.
  /// Possible values are: `CONNECTION_STATE_UNSPECIFIED`, `PENDING`, `ACCEPTED`, `REJECTED`, `CLOSED`.
  late final pulumi.Output<String> connectionState;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// ID of the endpoint attachment.
  late final pulumi.Output<String> endpointAttachmentId;
  /// Host that can be used in either HTTP Target Endpoint directly, or as the host in Target Server.
  late final pulumi.Output<String> host;
  /// The location of the endpoint attachment.
  late final pulumi.Output<String> location;
  /// Name of the Endpoint Attachment in the following format:
  /// organizations/{organization}/endpointAttachments/{endpointAttachment}.
  late final pulumi.Output<String> name;
  /// The Apigee Organization associated with the Apigee instance,
  /// in the format `organizations/{{org_name}}`.
  late final pulumi.Output<String> orgId;
  /// The resource URL of the service attachment in the format:
  /// `projects/*/regions/*/serviceAttachments/*`.
  late final pulumi.Output<String> serviceAttachment;

  /// Creates a new [EndpointAttachment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EndpointAttachment]. {@macro pulumi_apigee_endpoint_attachment_endpoint_attachment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EndpointAttachment(
    String name, {
    EndpointAttachmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:apigee/endpointAttachment:EndpointAttachment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '10.1.0').merge(options),
        ) {
    connectionState = registerOutput<String>('connectionState');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    endpointAttachmentId = registerOutput<String>('endpointAttachmentId');
    host = registerOutput<String>('host');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    orgId = registerOutput<String>('orgId');
    serviceAttachment = registerOutput<String>('serviceAttachment');
  }

  /// Gets an existing [EndpointAttachment] resource's state with the given [name] and [id].
  static EndpointAttachment get(
    String name,
    pulumi.Input<String> id, {
    EndpointAttachmentState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return EndpointAttachment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  EndpointAttachment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:apigee/endpointAttachment:EndpointAttachment',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    connectionState = registerOutput<String>('connectionState');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    endpointAttachmentId = registerOutput<String>('endpointAttachmentId');
    host = registerOutput<String>('host');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    orgId = registerOutput<String>('orgId');
    serviceAttachment = registerOutput<String>('serviceAttachment');
  }

  /// Creates a typed reference to an existing [EndpointAttachment] resource.
  EndpointAttachment.reference(String urn)
    : super(
        'gcp:apigee/endpointAttachment:EndpointAttachment',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    connectionState = registerOutput<String>('connectionState');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    endpointAttachmentId = registerOutput<String>('endpointAttachmentId');
    host = registerOutput<String>('host');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    orgId = registerOutput<String>('orgId');
    serviceAttachment = registerOutput<String>('serviceAttachment');
  }
}
