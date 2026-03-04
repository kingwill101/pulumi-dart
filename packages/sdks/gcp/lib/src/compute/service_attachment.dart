import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_attachment_args.dart';
import 'service_attachment_state.dart';
import 'service_attachment_tunneling_config.dart';

/// Represents a ServiceAttachment resource.
///
///
/// To get more information about ServiceAttachment, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/beta/serviceAttachments)
/// * How-to Guides
/// * [Configuring Private Service Connect to access services](https://cloud.google.com/vpc/docs/configure-private-service-connect-services)
///
/// ## Example Usage
///
/// ### Service Attachment Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const producerServiceHealthCheck = new gcp.compute.HealthCheck("producer_service_health_check", {
///     name: "producer-service-health-check",
///     checkIntervalSec: 1,
///     timeoutSec: 1,
///     tcpHealthCheck: {
///         port: 80,
///     },
/// });
/// const producerServiceBackend = new gcp.compute.RegionBackendService("producer_service_backend", {
///     name: "producer-service",
///     region: "us-west2",
///     healthChecks: producerServiceHealthCheck.id,
/// });
/// const pscIlbNetwork = new gcp.compute.Network("psc_ilb_network", {
///     name: "psc-ilb-network",
///     autoCreateSubnetworks: false,
/// });
/// const pscIlbProducerSubnetwork = new gcp.compute.Subnetwork("psc_ilb_producer_subnetwork", {
///     name: "psc-ilb-producer-subnetwork",
///     region: "us-west2",
///     network: pscIlbNetwork.id,
///     ipCidrRange: "10.0.0.0/16",
/// });
/// const pscIlbTargetService = new gcp.compute.ForwardingRule("psc_ilb_target_service", {
///     name: "producer-forwarding-rule",
///     region: "us-west2",
///     loadBalancingScheme: "INTERNAL",
///     backendService: producerServiceBackend.id,
///     allPorts: true,
///     network: pscIlbNetwork.name,
///     subnetwork: pscIlbProducerSubnetwork.name,
/// });
/// const pscIlbNat = new gcp.compute.Subnetwork("psc_ilb_nat", {
///     name: "psc-ilb-nat",
///     region: "us-west2",
///     network: pscIlbNetwork.id,
///     purpose: "PRIVATE_SERVICE_CONNECT",
///     ipCidrRange: "10.1.0.0/16",
/// });
/// const pscIlbServiceAttachment = new gcp.compute.ServiceAttachment("psc_ilb_service_attachment", {
///     name: "my-psc-ilb",
///     region: "us-west2",
///     description: "A service attachment configured with Terraform",
///     domainNames: ["gcp.tfacc.hashicorptest.com."],
///     enableProxyProtocol: true,
///     connectionPreference: "ACCEPT_AUTOMATIC",
///     natSubnets: [pscIlbNat.id],
///     targetService: pscIlbTargetService.id,
/// });
/// const pscIlbConsumerAddress = new gcp.compute.Address("psc_ilb_consumer_address", {
///     name: "psc-ilb-consumer-address",
///     region: "us-west2",
///     subnetwork: "default",
///     addressType: "INTERNAL",
/// });
/// const pscIlbConsumer = new gcp.compute.ForwardingRule("psc_ilb_consumer", {
///     name: "psc-ilb-consumer-forwarding-rule",
///     region: "us-west2",
///     target: pscIlbServiceAttachment.id,
///     loadBalancingScheme: "",
///     network: "default",
///     ipAddress: pscIlbConsumerAddress.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// producer_service_health_check = gcp.compute.HealthCheck("producer_service_health_check",
///     name="producer-service-health-check",
///     check_interval_sec=1,
///     timeout_sec=1,
///     tcp_health_check={
///         "port": 80,
///     })
/// producer_service_backend = gcp.compute.RegionBackendService("producer_service_backend",
///     name="producer-service",
///     region="us-west2",
///     health_checks=producer_service_health_check.id)
/// psc_ilb_network = gcp.compute.Network("psc_ilb_network",
///     name="psc-ilb-network",
///     auto_create_subnetworks=False)
/// psc_ilb_producer_subnetwork = gcp.compute.Subnetwork("psc_ilb_producer_subnetwork",
///     name="psc-ilb-producer-subnetwork",
///     region="us-west2",
///     network=psc_ilb_network.id,
///     ip_cidr_range="10.0.0.0/16")
/// psc_ilb_target_service = gcp.compute.ForwardingRule("psc_ilb_target_service",
///     name="producer-forwarding-rule",
///     region="us-west2",
///     load_balancing_scheme="INTERNAL",
///     backend_service=producer_service_backend.id,
///     all_ports=True,
///     network=psc_ilb_network.name,
///     subnetwork=psc_ilb_producer_subnetwork.name)
/// psc_ilb_nat = gcp.compute.Subnetwork("psc_ilb_nat",
///     name="psc-ilb-nat",
///     region="us-west2",
///     network=psc_ilb_network.id,
///     purpose="PRIVATE_SERVICE_CONNECT",
///     ip_cidr_range="10.1.0.0/16")
/// psc_ilb_service_attachment = gcp.compute.ServiceAttachment("psc_ilb_service_attachment",
///     name="my-psc-ilb",
///     region="us-west2",
///     description="A service attachment configured with Terraform",
///     domain_names=["gcp.tfacc.hashicorptest.com."],
///     enable_proxy_protocol=True,
///     connection_preference="ACCEPT_AUTOMATIC",
///     nat_subnets=[psc_ilb_nat.id],
///     target_service=psc_ilb_target_service.id)
/// psc_ilb_consumer_address = gcp.compute.Address("psc_ilb_consumer_address",
///     name="psc-ilb-consumer-address",
///     region="us-west2",
///     subnetwork="default",
///     address_type="INTERNAL")
/// psc_ilb_consumer = gcp.compute.ForwardingRule("psc_ilb_consumer",
///     name="psc-ilb-consumer-forwarding-rule",
///     region="us-west2",
///     target=psc_ilb_service_attachment.id,
///     load_balancing_scheme="",
///     network="default",
///     ip_address=psc_ilb_consumer_address.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var producerServiceHealthCheck = new Gcp.Compute.HealthCheck("producer_service_health_check", new()
///     {
///         Name = "producer-service-health-check",
///         CheckIntervalSec = 1,
///         TimeoutSec = 1,
///         TcpHealthCheck = new Gcp.Compute.Inputs.HealthCheckTcpHealthCheckArgs
///         {
///             Port = 80,
///         },
///     });
///
///     var producerServiceBackend = new Gcp.Compute.RegionBackendService("producer_service_backend", new()
///     {
///         Name = "producer-service",
///         Region = "us-west2",
///         HealthChecks = producerServiceHealthCheck.Id,
///     });
///
///     var pscIlbNetwork = new Gcp.Compute.Network("psc_ilb_network", new()
///     {
///         Name = "psc-ilb-network",
///         AutoCreateSubnetworks = false,
///     });
///
///     var pscIlbProducerSubnetwork = new Gcp.Compute.Subnetwork("psc_ilb_producer_subnetwork", new()
///     {
///         Name = "psc-ilb-producer-subnetwork",
///         Region = "us-west2",
///         Network = pscIlbNetwork.Id,
///         IpCidrRange = "10.0.0.0/16",
///     });
///
///     var pscIlbTargetService = new Gcp.Compute.ForwardingRule("psc_ilb_target_service", new()
///     {
///         Name = "producer-forwarding-rule",
///         Region = "us-west2",
///         LoadBalancingScheme = "INTERNAL",
///         BackendService = producerServiceBackend.Id,
///         AllPorts = true,
///         Network = pscIlbNetwork.Name,
///         Subnetwork = pscIlbProducerSubnetwork.Name,
///     });
///
///     var pscIlbNat = new Gcp.Compute.Subnetwork("psc_ilb_nat", new()
///     {
///         Name = "psc-ilb-nat",
///         Region = "us-west2",
///         Network = pscIlbNetwork.Id,
///         Purpose = "PRIVATE_SERVICE_CONNECT",
///         IpCidrRange = "10.1.0.0/16",
///     });
///
///     var pscIlbServiceAttachment = new Gcp.Compute.ServiceAttachment("psc_ilb_service_attachment", new()
///     {
///         Name = "my-psc-ilb",
///         Region = "us-west2",
///         Description = "A service attachment configured with Terraform",
///         DomainNames = new[]
///         {
///             "gcp.tfacc.hashicorptest.com.",
///         },
///         EnableProxyProtocol = true,
///         ConnectionPreference = "ACCEPT_AUTOMATIC",
///         NatSubnets = new[]
///         {
///             pscIlbNat.Id,
///         },
///         TargetService = pscIlbTargetService.Id,
///     });
///
///     var pscIlbConsumerAddress = new Gcp.Compute.Address("psc_ilb_consumer_address", new()
///     {
///         Name = "psc-ilb-consumer-address",
///         Region = "us-west2",
///         Subnetwork = "default",
///         AddressType = "INTERNAL",
///     });
///
///     var pscIlbConsumer = new Gcp.Compute.ForwardingRule("psc_ilb_consumer", new()
///     {
///         Name = "psc-ilb-consumer-forwarding-rule",
///         Region = "us-west2",
///         Target = pscIlbServiceAttachment.Id,
///         LoadBalancingScheme = "",
///         Network = "default",
///         IpAddress = pscIlbConsumerAddress.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		producerServiceHealthCheck, err := compute.NewHealthCheck(ctx, "producer_service_health_check", &compute.HealthCheckArgs{
/// 			Name:             pulumi.String("producer-service-health-check"),
/// 			CheckIntervalSec: pulumi.Int(1),
/// 			TimeoutSec:       pulumi.Int(1),
/// 			TcpHealthCheck: &compute.HealthCheckTcpHealthCheckArgs{
/// 				Port: pulumi.Int(80),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		producerServiceBackend, err := compute.NewRegionBackendService(ctx, "producer_service_backend", &compute.RegionBackendServiceArgs{
/// 			Name:         pulumi.String("producer-service"),
/// 			Region:       pulumi.String("us-west2"),
/// 			HealthChecks: producerServiceHealthCheck.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		pscIlbNetwork, err := compute.NewNetwork(ctx, "psc_ilb_network", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("psc-ilb-network"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		pscIlbProducerSubnetwork, err := compute.NewSubnetwork(ctx, "psc_ilb_producer_subnetwork", &compute.SubnetworkArgs{
/// 			Name:        pulumi.String("psc-ilb-producer-subnetwork"),
/// 			Region:      pulumi.String("us-west2"),
/// 			Network:     pscIlbNetwork.ID(),
/// 			IpCidrRange: pulumi.String("10.0.0.0/16"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		pscIlbTargetService, err := compute.NewForwardingRule(ctx, "psc_ilb_target_service", &compute.ForwardingRuleArgs{
/// 			Name:                pulumi.String("producer-forwarding-rule"),
/// 			Region:              pulumi.String("us-west2"),
/// 			LoadBalancingScheme: pulumi.String("INTERNAL"),
/// 			BackendService:      producerServiceBackend.ID(),
/// 			AllPorts:            pulumi.Bool(true),
/// 			Network:             pscIlbNetwork.Name,
/// 			Subnetwork:          pscIlbProducerSubnetwork.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		pscIlbNat, err := compute.NewSubnetwork(ctx, "psc_ilb_nat", &compute.SubnetworkArgs{
/// 			Name:        pulumi.String("psc-ilb-nat"),
/// 			Region:      pulumi.String("us-west2"),
/// 			Network:     pscIlbNetwork.ID(),
/// 			Purpose:     pulumi.String("PRIVATE_SERVICE_CONNECT"),
/// 			IpCidrRange: pulumi.String("10.1.0.0/16"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		pscIlbServiceAttachment, err := compute.NewServiceAttachment(ctx, "psc_ilb_service_attachment", &compute.ServiceAttachmentArgs{
/// 			Name:        pulumi.String("my-psc-ilb"),
/// 			Region:      pulumi.String("us-west2"),
/// 			Description: pulumi.String("A service attachment configured with Terraform"),
/// 			DomainNames: pulumi.StringArray{
/// 				pulumi.String("gcp.tfacc.hashicorptest.com."),
/// 			},
/// 			EnableProxyProtocol:  pulumi.Bool(true),
/// 			ConnectionPreference: pulumi.String("ACCEPT_AUTOMATIC"),
/// 			NatSubnets: pulumi.StringArray{
/// 				pscIlbNat.ID(),
/// 			},
/// 			TargetService: pscIlbTargetService.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		pscIlbConsumerAddress, err := compute.NewAddress(ctx, "psc_ilb_consumer_address", &compute.AddressArgs{
/// 			Name:        pulumi.String("psc-ilb-consumer-address"),
/// 			Region:      pulumi.String("us-west2"),
/// 			Subnetwork:  pulumi.String("default"),
/// 			AddressType: pulumi.String("INTERNAL"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewForwardingRule(ctx, "psc_ilb_consumer", &compute.ForwardingRuleArgs{
/// 			Name:                pulumi.String("psc-ilb-consumer-forwarding-rule"),
/// 			Region:              pulumi.String("us-west2"),
/// 			Target:              pscIlbServiceAttachment.ID(),
/// 			LoadBalancingScheme: pulumi.String(""),
/// 			Network:             pulumi.String("default"),
/// 			IpAddress:           pscIlbConsumerAddress.ID(),
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
/// import com.pulumi.gcp.compute.HealthCheck;
/// import com.pulumi.gcp.compute.HealthCheckArgs;
/// import com.pulumi.gcp.compute.inputs.HealthCheckTcpHealthCheckArgs;
/// import com.pulumi.gcp.compute.RegionBackendService;
/// import com.pulumi.gcp.compute.RegionBackendServiceArgs;
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.compute.Subnetwork;
/// import com.pulumi.gcp.compute.SubnetworkArgs;
/// import com.pulumi.gcp.compute.ForwardingRule;
/// import com.pulumi.gcp.compute.ForwardingRuleArgs;
/// import com.pulumi.gcp.compute.ServiceAttachment;
/// import com.pulumi.gcp.compute.ServiceAttachmentArgs;
/// import com.pulumi.gcp.compute.Address;
/// import com.pulumi.gcp.compute.AddressArgs;
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
///         var producerServiceHealthCheck = new HealthCheck("producerServiceHealthCheck", HealthCheckArgs.builder()
///             .name("producer-service-health-check")
///             .checkIntervalSec(1)
///             .timeoutSec(1)
///             .tcpHealthCheck(HealthCheckTcpHealthCheckArgs.builder()
///                 .port(80)
///                 .build())
///             .build());
///
///         var producerServiceBackend = new RegionBackendService("producerServiceBackend", RegionBackendServiceArgs.builder()
///             .name("producer-service")
///             .region("us-west2")
///             .healthChecks(producerServiceHealthCheck.id())
///             .build());
///
///         var pscIlbNetwork = new Network("pscIlbNetwork", NetworkArgs.builder()
///             .name("psc-ilb-network")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var pscIlbProducerSubnetwork = new Subnetwork("pscIlbProducerSubnetwork", SubnetworkArgs.builder()
///             .name("psc-ilb-producer-subnetwork")
///             .region("us-west2")
///             .network(pscIlbNetwork.id())
///             .ipCidrRange("10.0.0.0/16")
///             .build());
///
///         var pscIlbTargetService = new ForwardingRule("pscIlbTargetService", ForwardingRuleArgs.builder()
///             .name("producer-forwarding-rule")
///             .region("us-west2")
///             .loadBalancingScheme("INTERNAL")
///             .backendService(producerServiceBackend.id())
///             .allPorts(true)
///             .network(pscIlbNetwork.name())
///             .subnetwork(pscIlbProducerSubnetwork.name())
///             .build());
///
///         var pscIlbNat = new Subnetwork("pscIlbNat", SubnetworkArgs.builder()
///             .name("psc-ilb-nat")
///             .region("us-west2")
///             .network(pscIlbNetwork.id())
///             .purpose("PRIVATE_SERVICE_CONNECT")
///             .ipCidrRange("10.1.0.0/16")
///             .build());
///
///         var pscIlbServiceAttachment = new ServiceAttachment("pscIlbServiceAttachment", ServiceAttachmentArgs.builder()
///             .name("my-psc-ilb")
///             .region("us-west2")
///             .description("A service attachment configured with Terraform")
///             .domainNames("gcp.tfacc.hashicorptest.com.")
///             .enableProxyProtocol(true)
///             .connectionPreference("ACCEPT_AUTOMATIC")
///             .natSubnets(pscIlbNat.id())
///             .targetService(pscIlbTargetService.id())
///             .build());
///
///         var pscIlbConsumerAddress = new Address("pscIlbConsumerAddress", AddressArgs.builder()
///             .name("psc-ilb-consumer-address")
///             .region("us-west2")
///             .subnetwork("default")
///             .addressType("INTERNAL")
///             .build());
///
///         var pscIlbConsumer = new ForwardingRule("pscIlbConsumer", ForwardingRuleArgs.builder()
///             .name("psc-ilb-consumer-forwarding-rule")
///             .region("us-west2")
///             .target(pscIlbServiceAttachment.id())
///             .loadBalancingScheme("")
///             .network("default")
///             .ipAddress(pscIlbConsumerAddress.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   pscIlbServiceAttachment:
///     type: gcp:compute:ServiceAttachment
///     name: psc_ilb_service_attachment
///     properties:
///       name: my-psc-ilb
///       region: us-west2
///       description: A service attachment configured with Terraform
///       domainNames:
///         - gcp.tfacc.hashicorptest.com.
///       enableProxyProtocol: true
///       connectionPreference: ACCEPT_AUTOMATIC
///       natSubnets:
///         - ${pscIlbNat.id}
///       targetService: ${pscIlbTargetService.id}
///   pscIlbConsumerAddress:
///     type: gcp:compute:Address
///     name: psc_ilb_consumer_address
///     properties:
///       name: psc-ilb-consumer-address
///       region: us-west2
///       subnetwork: default
///       addressType: INTERNAL
///   pscIlbConsumer:
///     type: gcp:compute:ForwardingRule
///     name: psc_ilb_consumer
///     properties:
///       name: psc-ilb-consumer-forwarding-rule
///       region: us-west2
///       target: ${pscIlbServiceAttachment.id}
///       loadBalancingScheme: ""
///       network: default
///       ipAddress: ${pscIlbConsumerAddress.id}
///   pscIlbTargetService:
///     type: gcp:compute:ForwardingRule
///     name: psc_ilb_target_service
///     properties:
///       name: producer-forwarding-rule
///       region: us-west2
///       loadBalancingScheme: INTERNAL
///       backendService: ${producerServiceBackend.id}
///       allPorts: true
///       network: ${pscIlbNetwork.name}
///       subnetwork: ${pscIlbProducerSubnetwork.name}
///   producerServiceBackend:
///     type: gcp:compute:RegionBackendService
///     name: producer_service_backend
///     properties:
///       name: producer-service
///       region: us-west2
///       healthChecks: ${producerServiceHealthCheck.id}
///   producerServiceHealthCheck:
///     type: gcp:compute:HealthCheck
///     name: producer_service_health_check
///     properties:
///       name: producer-service-health-check
///       checkIntervalSec: 1
///       timeoutSec: 1
///       tcpHealthCheck:
///         port: '80'
///   pscIlbNetwork:
///     type: gcp:compute:Network
///     name: psc_ilb_network
///     properties:
///       name: psc-ilb-network
///       autoCreateSubnetworks: false
///   pscIlbProducerSubnetwork:
///     type: gcp:compute:Subnetwork
///     name: psc_ilb_producer_subnetwork
///     properties:
///       name: psc-ilb-producer-subnetwork
///       region: us-west2
///       network: ${pscIlbNetwork.id}
///       ipCidrRange: 10.0.0.0/16
///   pscIlbNat:
///     type: gcp:compute:Subnetwork
///     name: psc_ilb_nat
///     properties:
///       name: psc-ilb-nat
///       region: us-west2
///       network: ${pscIlbNetwork.id}
///       purpose: PRIVATE_SERVICE_CONNECT
///       ipCidrRange: 10.1.0.0/16
/// ```
///
/// ### Service Attachment Explicit Projects
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const producerServiceHealthCheck = new gcp.compute.HealthCheck("producer_service_health_check", {
///     name: "producer-service-health-check",
///     checkIntervalSec: 1,
///     timeoutSec: 1,
///     tcpHealthCheck: {
///         port: 80,
///     },
/// });
/// const producerServiceBackend = new gcp.compute.RegionBackendService("producer_service_backend", {
///     name: "producer-service",
///     region: "us-west2",
///     healthChecks: producerServiceHealthCheck.id,
/// });
/// const pscIlbNetwork = new gcp.compute.Network("psc_ilb_network", {
///     name: "psc-ilb-network",
///     autoCreateSubnetworks: false,
/// });
/// const pscIlbProducerSubnetwork = new gcp.compute.Subnetwork("psc_ilb_producer_subnetwork", {
///     name: "psc-ilb-producer-subnetwork",
///     region: "us-west2",
///     network: pscIlbNetwork.id,
///     ipCidrRange: "10.0.0.0/16",
/// });
/// const pscIlbTargetService = new gcp.compute.ForwardingRule("psc_ilb_target_service", {
///     name: "producer-forwarding-rule",
///     region: "us-west2",
///     loadBalancingScheme: "INTERNAL",
///     backendService: producerServiceBackend.id,
///     allPorts: true,
///     network: pscIlbNetwork.name,
///     subnetwork: pscIlbProducerSubnetwork.name,
/// });
/// const pscIlbNat = new gcp.compute.Subnetwork("psc_ilb_nat", {
///     name: "psc-ilb-nat",
///     region: "us-west2",
///     network: pscIlbNetwork.id,
///     purpose: "PRIVATE_SERVICE_CONNECT",
///     ipCidrRange: "10.1.0.0/16",
/// });
/// const pscIlbServiceAttachment = new gcp.compute.ServiceAttachment("psc_ilb_service_attachment", {
///     name: "my-psc-ilb",
///     region: "us-west2",
///     description: "A service attachment configured with Terraform",
///     domainNames: ["gcp.tfacc.hashicorptest.com."],
///     enableProxyProtocol: true,
///     connectionPreference: "ACCEPT_MANUAL",
///     natSubnets: [pscIlbNat.id],
///     targetService: pscIlbTargetService.id,
///     consumerRejectLists: [
///         "673497134629",
///         "482878270665",
///     ],
///     consumerAcceptLists: [{
///         projectIdOrNum: "658859330310",
///         connectionLimit: 4,
///     }],
/// });
/// const pscIlbConsumerAddress = new gcp.compute.Address("psc_ilb_consumer_address", {
///     name: "psc-ilb-consumer-address",
///     region: "us-west2",
///     subnetwork: "default",
///     addressType: "INTERNAL",
/// });
/// const pscIlbConsumer = new gcp.compute.ForwardingRule("psc_ilb_consumer", {
///     name: "psc-ilb-consumer-forwarding-rule",
///     region: "us-west2",
///     target: pscIlbServiceAttachment.id,
///     loadBalancingScheme: "",
///     network: "default",
///     ipAddress: pscIlbConsumerAddress.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// producer_service_health_check = gcp.compute.HealthCheck("producer_service_health_check",
///     name="producer-service-health-check",
///     check_interval_sec=1,
///     timeout_sec=1,
///     tcp_health_check={
///         "port": 80,
///     })
/// producer_service_backend = gcp.compute.RegionBackendService("producer_service_backend",
///     name="producer-service",
///     region="us-west2",
///     health_checks=producer_service_health_check.id)
/// psc_ilb_network = gcp.compute.Network("psc_ilb_network",
///     name="psc-ilb-network",
///     auto_create_subnetworks=False)
/// psc_ilb_producer_subnetwork = gcp.compute.Subnetwork("psc_ilb_producer_subnetwork",
///     name="psc-ilb-producer-subnetwork",
///     region="us-west2",
///     network=psc_ilb_network.id,
///     ip_cidr_range="10.0.0.0/16")
/// psc_ilb_target_service = gcp.compute.ForwardingRule("psc_ilb_target_service",
///     name="producer-forwarding-rule",
///     region="us-west2",
///     load_balancing_scheme="INTERNAL",
///     backend_service=producer_service_backend.id,
///     all_ports=True,
///     network=psc_ilb_network.name,
///     subnetwork=psc_ilb_producer_subnetwork.name)
/// psc_ilb_nat = gcp.compute.Subnetwork("psc_ilb_nat",
///     name="psc-ilb-nat",
///     region="us-west2",
///     network=psc_ilb_network.id,
///     purpose="PRIVATE_SERVICE_CONNECT",
///     ip_cidr_range="10.1.0.0/16")
/// psc_ilb_service_attachment = gcp.compute.ServiceAttachment("psc_ilb_service_attachment",
///     name="my-psc-ilb",
///     region="us-west2",
///     description="A service attachment configured with Terraform",
///     domain_names=["gcp.tfacc.hashicorptest.com."],
///     enable_proxy_protocol=True,
///     connection_preference="ACCEPT_MANUAL",
///     nat_subnets=[psc_ilb_nat.id],
///     target_service=psc_ilb_target_service.id,
///     consumer_reject_lists=[
///         "673497134629",
///         "482878270665",
///     ],
///     consumer_accept_lists=[{
///         "project_id_or_num": "658859330310",
///         "connection_limit": 4,
///     }])
/// psc_ilb_consumer_address = gcp.compute.Address("psc_ilb_consumer_address",
///     name="psc-ilb-consumer-address",
///     region="us-west2",
///     subnetwork="default",
///     address_type="INTERNAL")
/// psc_ilb_consumer = gcp.compute.ForwardingRule("psc_ilb_consumer",
///     name="psc-ilb-consumer-forwarding-rule",
///     region="us-west2",
///     target=psc_ilb_service_attachment.id,
///     load_balancing_scheme="",
///     network="default",
///     ip_address=psc_ilb_consumer_address.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var producerServiceHealthCheck = new Gcp.Compute.HealthCheck("producer_service_health_check", new()
///     {
///         Name = "producer-service-health-check",
///         CheckIntervalSec = 1,
///         TimeoutSec = 1,
///         TcpHealthCheck = new Gcp.Compute.Inputs.HealthCheckTcpHealthCheckArgs
///         {
///             Port = 80,
///         },
///     });
///
///     var producerServiceBackend = new Gcp.Compute.RegionBackendService("producer_service_backend", new()
///     {
///         Name = "producer-service",
///         Region = "us-west2",
///         HealthChecks = producerServiceHealthCheck.Id,
///     });
///
///     var pscIlbNetwork = new Gcp.Compute.Network("psc_ilb_network", new()
///     {
///         Name = "psc-ilb-network",
///         AutoCreateSubnetworks = false,
///     });
///
///     var pscIlbProducerSubnetwork = new Gcp.Compute.Subnetwork("psc_ilb_producer_subnetwork", new()
///     {
///         Name = "psc-ilb-producer-subnetwork",
///         Region = "us-west2",
///         Network = pscIlbNetwork.Id,
///         IpCidrRange = "10.0.0.0/16",
///     });
///
///     var pscIlbTargetService = new Gcp.Compute.ForwardingRule("psc_ilb_target_service", new()
///     {
///         Name = "producer-forwarding-rule",
///         Region = "us-west2",
///         LoadBalancingScheme = "INTERNAL",
///         BackendService = producerServiceBackend.Id,
///         AllPorts = true,
///         Network = pscIlbNetwork.Name,
///         Subnetwork = pscIlbProducerSubnetwork.Name,
///     });
///
///     var pscIlbNat = new Gcp.Compute.Subnetwork("psc_ilb_nat", new()
///     {
///         Name = "psc-ilb-nat",
///         Region = "us-west2",
///         Network = pscIlbNetwork.Id,
///         Purpose = "PRIVATE_SERVICE_CONNECT",
///         IpCidrRange = "10.1.0.0/16",
///     });
///
///     var pscIlbServiceAttachment = new Gcp.Compute.ServiceAttachment("psc_ilb_service_attachment", new()
///     {
///         Name = "my-psc-ilb",
///         Region = "us-west2",
///         Description = "A service attachment configured with Terraform",
///         DomainNames = new[]
///         {
///             "gcp.tfacc.hashicorptest.com.",
///         },
///         EnableProxyProtocol = true,
///         ConnectionPreference = "ACCEPT_MANUAL",
///         NatSubnets = new[]
///         {
///             pscIlbNat.Id,
///         },
///         TargetService = pscIlbTargetService.Id,
///         ConsumerRejectLists = new[]
///         {
///             "673497134629",
///             "482878270665",
///         },
///         ConsumerAcceptLists = new[]
///         {
///             new Gcp.Compute.Inputs.ServiceAttachmentConsumerAcceptListArgs
///             {
///                 ProjectIdOrNum = "658859330310",
///                 ConnectionLimit = 4,
///             },
///         },
///     });
///
///     var pscIlbConsumerAddress = new Gcp.Compute.Address("psc_ilb_consumer_address", new()
///     {
///         Name = "psc-ilb-consumer-address",
///         Region = "us-west2",
///         Subnetwork = "default",
///         AddressType = "INTERNAL",
///     });
///
///     var pscIlbConsumer = new Gcp.Compute.ForwardingRule("psc_ilb_consumer", new()
///     {
///         Name = "psc-ilb-consumer-forwarding-rule",
///         Region = "us-west2",
///         Target = pscIlbServiceAttachment.Id,
///         LoadBalancingScheme = "",
///         Network = "default",
///         IpAddress = pscIlbConsumerAddress.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		producerServiceHealthCheck, err := compute.NewHealthCheck(ctx, "producer_service_health_check", &compute.HealthCheckArgs{
/// 			Name:             pulumi.String("producer-service-health-check"),
/// 			CheckIntervalSec: pulumi.Int(1),
/// 			TimeoutSec:       pulumi.Int(1),
/// 			TcpHealthCheck: &compute.HealthCheckTcpHealthCheckArgs{
/// 				Port: pulumi.Int(80),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		producerServiceBackend, err := compute.NewRegionBackendService(ctx, "producer_service_backend", &compute.RegionBackendServiceArgs{
/// 			Name:         pulumi.String("producer-service"),
/// 			Region:       pulumi.String("us-west2"),
/// 			HealthChecks: producerServiceHealthCheck.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		pscIlbNetwork, err := compute.NewNetwork(ctx, "psc_ilb_network", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("psc-ilb-network"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		pscIlbProducerSubnetwork, err := compute.NewSubnetwork(ctx, "psc_ilb_producer_subnetwork", &compute.SubnetworkArgs{
/// 			Name:        pulumi.String("psc-ilb-producer-subnetwork"),
/// 			Region:      pulumi.String("us-west2"),
/// 			Network:     pscIlbNetwork.ID(),
/// 			IpCidrRange: pulumi.String("10.0.0.0/16"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		pscIlbTargetService, err := compute.NewForwardingRule(ctx, "psc_ilb_target_service", &compute.ForwardingRuleArgs{
/// 			Name:                pulumi.String("producer-forwarding-rule"),
/// 			Region:              pulumi.String("us-west2"),
/// 			LoadBalancingScheme: pulumi.String("INTERNAL"),
/// 			BackendService:      producerServiceBackend.ID(),
/// 			AllPorts:            pulumi.Bool(true),
/// 			Network:             pscIlbNetwork.Name,
/// 			Subnetwork:          pscIlbProducerSubnetwork.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		pscIlbNat, err := compute.NewSubnetwork(ctx, "psc_ilb_nat", &compute.SubnetworkArgs{
/// 			Name:        pulumi.String("psc-ilb-nat"),
/// 			Region:      pulumi.String("us-west2"),
/// 			Network:     pscIlbNetwork.ID(),
/// 			Purpose:     pulumi.String("PRIVATE_SERVICE_CONNECT"),
/// 			IpCidrRange: pulumi.String("10.1.0.0/16"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		pscIlbServiceAttachment, err := compute.NewServiceAttachment(ctx, "psc_ilb_service_attachment", &compute.ServiceAttachmentArgs{
/// 			Name:        pulumi.String("my-psc-ilb"),
/// 			Region:      pulumi.String("us-west2"),
/// 			Description: pulumi.String("A service attachment configured with Terraform"),
/// 			DomainNames: pulumi.StringArray{
/// 				pulumi.String("gcp.tfacc.hashicorptest.com."),
/// 			},
/// 			EnableProxyProtocol:  pulumi.Bool(true),
/// 			ConnectionPreference: pulumi.String("ACCEPT_MANUAL"),
/// 			NatSubnets: pulumi.StringArray{
/// 				pscIlbNat.ID(),
/// 			},
/// 			TargetService: pscIlbTargetService.ID(),
/// 			ConsumerRejectLists: pulumi.StringArray{
/// 				pulumi.String("673497134629"),
/// 				pulumi.String("482878270665"),
/// 			},
/// 			ConsumerAcceptLists: compute.ServiceAttachmentConsumerAcceptListArray{
/// 				&compute.ServiceAttachmentConsumerAcceptListArgs{
/// 					ProjectIdOrNum:  pulumi.String("658859330310"),
/// 					ConnectionLimit: pulumi.Int(4),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		pscIlbConsumerAddress, err := compute.NewAddress(ctx, "psc_ilb_consumer_address", &compute.AddressArgs{
/// 			Name:        pulumi.String("psc-ilb-consumer-address"),
/// 			Region:      pulumi.String("us-west2"),
/// 			Subnetwork:  pulumi.String("default"),
/// 			AddressType: pulumi.String("INTERNAL"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewForwardingRule(ctx, "psc_ilb_consumer", &compute.ForwardingRuleArgs{
/// 			Name:                pulumi.String("psc-ilb-consumer-forwarding-rule"),
/// 			Region:              pulumi.String("us-west2"),
/// 			Target:              pscIlbServiceAttachment.ID(),
/// 			LoadBalancingScheme: pulumi.String(""),
/// 			Network:             pulumi.String("default"),
/// 			IpAddress:           pscIlbConsumerAddress.ID(),
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
/// import com.pulumi.gcp.compute.HealthCheck;
/// import com.pulumi.gcp.compute.HealthCheckArgs;
/// import com.pulumi.gcp.compute.inputs.HealthCheckTcpHealthCheckArgs;
/// import com.pulumi.gcp.compute.RegionBackendService;
/// import com.pulumi.gcp.compute.RegionBackendServiceArgs;
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.compute.Subnetwork;
/// import com.pulumi.gcp.compute.SubnetworkArgs;
/// import com.pulumi.gcp.compute.ForwardingRule;
/// import com.pulumi.gcp.compute.ForwardingRuleArgs;
/// import com.pulumi.gcp.compute.ServiceAttachment;
/// import com.pulumi.gcp.compute.ServiceAttachmentArgs;
/// import com.pulumi.gcp.compute.inputs.ServiceAttachmentConsumerAcceptListArgs;
/// import com.pulumi.gcp.compute.Address;
/// import com.pulumi.gcp.compute.AddressArgs;
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
///         var producerServiceHealthCheck = new HealthCheck("producerServiceHealthCheck", HealthCheckArgs.builder()
///             .name("producer-service-health-check")
///             .checkIntervalSec(1)
///             .timeoutSec(1)
///             .tcpHealthCheck(HealthCheckTcpHealthCheckArgs.builder()
///                 .port(80)
///                 .build())
///             .build());
///
///         var producerServiceBackend = new RegionBackendService("producerServiceBackend", RegionBackendServiceArgs.builder()
///             .name("producer-service")
///             .region("us-west2")
///             .healthChecks(producerServiceHealthCheck.id())
///             .build());
///
///         var pscIlbNetwork = new Network("pscIlbNetwork", NetworkArgs.builder()
///             .name("psc-ilb-network")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var pscIlbProducerSubnetwork = new Subnetwork("pscIlbProducerSubnetwork", SubnetworkArgs.builder()
///             .name("psc-ilb-producer-subnetwork")
///             .region("us-west2")
///             .network(pscIlbNetwork.id())
///             .ipCidrRange("10.0.0.0/16")
///             .build());
///
///         var pscIlbTargetService = new ForwardingRule("pscIlbTargetService", ForwardingRuleArgs.builder()
///             .name("producer-forwarding-rule")
///             .region("us-west2")
///             .loadBalancingScheme("INTERNAL")
///             .backendService(producerServiceBackend.id())
///             .allPorts(true)
///             .network(pscIlbNetwork.name())
///             .subnetwork(pscIlbProducerSubnetwork.name())
///             .build());
///
///         var pscIlbNat = new Subnetwork("pscIlbNat", SubnetworkArgs.builder()
///             .name("psc-ilb-nat")
///             .region("us-west2")
///             .network(pscIlbNetwork.id())
///             .purpose("PRIVATE_SERVICE_CONNECT")
///             .ipCidrRange("10.1.0.0/16")
///             .build());
///
///         var pscIlbServiceAttachment = new ServiceAttachment("pscIlbServiceAttachment", ServiceAttachmentArgs.builder()
///             .name("my-psc-ilb")
///             .region("us-west2")
///             .description("A service attachment configured with Terraform")
///             .domainNames("gcp.tfacc.hashicorptest.com.")
///             .enableProxyProtocol(true)
///             .connectionPreference("ACCEPT_MANUAL")
///             .natSubnets(pscIlbNat.id())
///             .targetService(pscIlbTargetService.id())
///             .consumerRejectLists(
///                 "673497134629",
///                 "482878270665")
///             .consumerAcceptLists(ServiceAttachmentConsumerAcceptListArgs.builder()
///                 .projectIdOrNum("658859330310")
///                 .connectionLimit(4)
///                 .build())
///             .build());
///
///         var pscIlbConsumerAddress = new Address("pscIlbConsumerAddress", AddressArgs.builder()
///             .name("psc-ilb-consumer-address")
///             .region("us-west2")
///             .subnetwork("default")
///             .addressType("INTERNAL")
///             .build());
///
///         var pscIlbConsumer = new ForwardingRule("pscIlbConsumer", ForwardingRuleArgs.builder()
///             .name("psc-ilb-consumer-forwarding-rule")
///             .region("us-west2")
///             .target(pscIlbServiceAttachment.id())
///             .loadBalancingScheme("")
///             .network("default")
///             .ipAddress(pscIlbConsumerAddress.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   pscIlbServiceAttachment:
///     type: gcp:compute:ServiceAttachment
///     name: psc_ilb_service_attachment
///     properties:
///       name: my-psc-ilb
///       region: us-west2
///       description: A service attachment configured with Terraform
///       domainNames:
///         - gcp.tfacc.hashicorptest.com.
///       enableProxyProtocol: true
///       connectionPreference: ACCEPT_MANUAL
///       natSubnets:
///         - ${pscIlbNat.id}
///       targetService: ${pscIlbTargetService.id}
///       consumerRejectLists:
///         - '673497134629'
///         - '482878270665'
///       consumerAcceptLists:
///         - projectIdOrNum: '658859330310'
///           connectionLimit: 4
///   pscIlbConsumerAddress:
///     type: gcp:compute:Address
///     name: psc_ilb_consumer_address
///     properties:
///       name: psc-ilb-consumer-address
///       region: us-west2
///       subnetwork: default
///       addressType: INTERNAL
///   pscIlbConsumer:
///     type: gcp:compute:ForwardingRule
///     name: psc_ilb_consumer
///     properties:
///       name: psc-ilb-consumer-forwarding-rule
///       region: us-west2
///       target: ${pscIlbServiceAttachment.id}
///       loadBalancingScheme: ""
///       network: default
///       ipAddress: ${pscIlbConsumerAddress.id}
///   pscIlbTargetService:
///     type: gcp:compute:ForwardingRule
///     name: psc_ilb_target_service
///     properties:
///       name: producer-forwarding-rule
///       region: us-west2
///       loadBalancingScheme: INTERNAL
///       backendService: ${producerServiceBackend.id}
///       allPorts: true
///       network: ${pscIlbNetwork.name}
///       subnetwork: ${pscIlbProducerSubnetwork.name}
///   producerServiceBackend:
///     type: gcp:compute:RegionBackendService
///     name: producer_service_backend
///     properties:
///       name: producer-service
///       region: us-west2
///       healthChecks: ${producerServiceHealthCheck.id}
///   producerServiceHealthCheck:
///     type: gcp:compute:HealthCheck
///     name: producer_service_health_check
///     properties:
///       name: producer-service-health-check
///       checkIntervalSec: 1
///       timeoutSec: 1
///       tcpHealthCheck:
///         port: '80'
///   pscIlbNetwork:
///     type: gcp:compute:Network
///     name: psc_ilb_network
///     properties:
///       name: psc-ilb-network
///       autoCreateSubnetworks: false
///   pscIlbProducerSubnetwork:
///     type: gcp:compute:Subnetwork
///     name: psc_ilb_producer_subnetwork
///     properties:
///       name: psc-ilb-producer-subnetwork
///       region: us-west2
///       network: ${pscIlbNetwork.id}
///       ipCidrRange: 10.0.0.0/16
///   pscIlbNat:
///     type: gcp:compute:Subnetwork
///     name: psc_ilb_nat
///     properties:
///       name: psc-ilb-nat
///       region: us-west2
///       network: ${pscIlbNetwork.id}
///       purpose: PRIVATE_SERVICE_CONNECT
///       ipCidrRange: 10.1.0.0/16
/// ```
///
/// ### Service Attachment Explicit Networks
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const pscIlbConsumerNetwork = new gcp.compute.Network("psc_ilb_consumer_network", {
///     name: "psc-ilb-consumer-network",
///     autoCreateSubnetworks: false,
/// });
/// const producerServiceHealthCheck = new gcp.compute.HealthCheck("producer_service_health_check", {
///     name: "producer-service-health-check",
///     checkIntervalSec: 1,
///     timeoutSec: 1,
///     tcpHealthCheck: {
///         port: 80,
///     },
/// });
/// const producerServiceBackend = new gcp.compute.RegionBackendService("producer_service_backend", {
///     name: "producer-service",
///     region: "us-west2",
///     healthChecks: producerServiceHealthCheck.id,
/// });
/// const pscIlbNetwork = new gcp.compute.Network("psc_ilb_network", {
///     name: "psc-ilb-network",
///     autoCreateSubnetworks: false,
/// });
/// const pscIlbProducerSubnetwork = new gcp.compute.Subnetwork("psc_ilb_producer_subnetwork", {
///     name: "psc-ilb-producer-subnetwork",
///     region: "us-west2",
///     network: pscIlbNetwork.id,
///     ipCidrRange: "10.0.0.0/16",
/// });
/// const pscIlbTargetService = new gcp.compute.ForwardingRule("psc_ilb_target_service", {
///     name: "producer-forwarding-rule",
///     region: "us-west2",
///     loadBalancingScheme: "INTERNAL",
///     backendService: producerServiceBackend.id,
///     allPorts: true,
///     network: pscIlbNetwork.name,
///     subnetwork: pscIlbProducerSubnetwork.name,
/// });
/// const pscIlbNat = new gcp.compute.Subnetwork("psc_ilb_nat", {
///     name: "psc-ilb-nat",
///     region: "us-west2",
///     network: pscIlbNetwork.id,
///     purpose: "PRIVATE_SERVICE_CONNECT",
///     ipCidrRange: "10.1.0.0/16",
/// });
/// const pscIlbServiceAttachment = new gcp.compute.ServiceAttachment("psc_ilb_service_attachment", {
///     name: "my-psc-ilb",
///     region: "us-west2",
///     description: "A service attachment configured with Terraform",
///     enableProxyProtocol: false,
///     connectionPreference: "ACCEPT_MANUAL",
///     natSubnets: [pscIlbNat.id],
///     targetService: pscIlbTargetService.id,
///     consumerAcceptLists: [{
///         networkUrl: pscIlbConsumerNetwork.selfLink,
///         connectionLimit: 1,
///     }],
/// });
/// const pscIlbConsumerSubnetwork = new gcp.compute.Subnetwork("psc_ilb_consumer_subnetwork", {
///     name: "psc-ilb-consumer-network",
///     ipCidrRange: "10.0.0.0/16",
///     region: "us-west2",
///     network: pscIlbConsumerNetwork.id,
/// });
/// const pscIlbConsumerAddress = new gcp.compute.Address("psc_ilb_consumer_address", {
///     name: "psc-ilb-consumer-address",
///     region: "us-west2",
///     subnetwork: pscIlbConsumerSubnetwork.id,
///     addressType: "INTERNAL",
/// });
/// const pscIlbConsumer = new gcp.compute.ForwardingRule("psc_ilb_consumer", {
///     name: "psc-ilb-consumer-forwarding-rule",
///     region: "us-west2",
///     target: pscIlbServiceAttachment.id,
///     loadBalancingScheme: "",
///     network: pscIlbConsumerNetwork.id,
///     subnetwork: pscIlbConsumerSubnetwork.id,
///     ipAddress: pscIlbConsumerAddress.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// psc_ilb_consumer_network = gcp.compute.Network("psc_ilb_consumer_network",
///     name="psc-ilb-consumer-network",
///     auto_create_subnetworks=False)
/// producer_service_health_check = gcp.compute.HealthCheck("producer_service_health_check",
///     name="producer-service-health-check",
///     check_interval_sec=1,
///     timeout_sec=1,
///     tcp_health_check={
///         "port": 80,
///     })
/// producer_service_backend = gcp.compute.RegionBackendService("producer_service_backend",
///     name="producer-service",
///     region="us-west2",
///     health_checks=producer_service_health_check.id)
/// psc_ilb_network = gcp.compute.Network("psc_ilb_network",
///     name="psc-ilb-network",
///     auto_create_subnetworks=False)
/// psc_ilb_producer_subnetwork = gcp.compute.Subnetwork("psc_ilb_producer_subnetwork",
///     name="psc-ilb-producer-subnetwork",
///     region="us-west2",
///     network=psc_ilb_network.id,
///     ip_cidr_range="10.0.0.0/16")
/// psc_ilb_target_service = gcp.compute.ForwardingRule("psc_ilb_target_service",
///     name="producer-forwarding-rule",
///     region="us-west2",
///     load_balancing_scheme="INTERNAL",
///     backend_service=producer_service_backend.id,
///     all_ports=True,
///     network=psc_ilb_network.name,
///     subnetwork=psc_ilb_producer_subnetwork.name)
/// psc_ilb_nat = gcp.compute.Subnetwork("psc_ilb_nat",
///     name="psc-ilb-nat",
///     region="us-west2",
///     network=psc_ilb_network.id,
///     purpose="PRIVATE_SERVICE_CONNECT",
///     ip_cidr_range="10.1.0.0/16")
/// psc_ilb_service_attachment = gcp.compute.ServiceAttachment("psc_ilb_service_attachment",
///     name="my-psc-ilb",
///     region="us-west2",
///     description="A service attachment configured with Terraform",
///     enable_proxy_protocol=False,
///     connection_preference="ACCEPT_MANUAL",
///     nat_subnets=[psc_ilb_nat.id],
///     target_service=psc_ilb_target_service.id,
///     consumer_accept_lists=[{
///         "network_url": psc_ilb_consumer_network.self_link,
///         "connection_limit": 1,
///     }])
/// psc_ilb_consumer_subnetwork = gcp.compute.Subnetwork("psc_ilb_consumer_subnetwork",
///     name="psc-ilb-consumer-network",
///     ip_cidr_range="10.0.0.0/16",
///     region="us-west2",
///     network=psc_ilb_consumer_network.id)
/// psc_ilb_consumer_address = gcp.compute.Address("psc_ilb_consumer_address",
///     name="psc-ilb-consumer-address",
///     region="us-west2",
///     subnetwork=psc_ilb_consumer_subnetwork.id,
///     address_type="INTERNAL")
/// psc_ilb_consumer = gcp.compute.ForwardingRule("psc_ilb_consumer",
///     name="psc-ilb-consumer-forwarding-rule",
///     region="us-west2",
///     target=psc_ilb_service_attachment.id,
///     load_balancing_scheme="",
///     network=psc_ilb_consumer_network.id,
///     subnetwork=psc_ilb_consumer_subnetwork.id,
///     ip_address=psc_ilb_consumer_address.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var pscIlbConsumerNetwork = new Gcp.Compute.Network("psc_ilb_consumer_network", new()
///     {
///         Name = "psc-ilb-consumer-network",
///         AutoCreateSubnetworks = false,
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
///     });
///
///     var producerServiceBackend = new Gcp.Compute.RegionBackendService("producer_service_backend", new()
///     {
///         Name = "producer-service",
///         Region = "us-west2",
///         HealthChecks = producerServiceHealthCheck.Id,
///     });
///
///     var pscIlbNetwork = new Gcp.Compute.Network("psc_ilb_network", new()
///     {
///         Name = "psc-ilb-network",
///         AutoCreateSubnetworks = false,
///     });
///
///     var pscIlbProducerSubnetwork = new Gcp.Compute.Subnetwork("psc_ilb_producer_subnetwork", new()
///     {
///         Name = "psc-ilb-producer-subnetwork",
///         Region = "us-west2",
///         Network = pscIlbNetwork.Id,
///         IpCidrRange = "10.0.0.0/16",
///     });
///
///     var pscIlbTargetService = new Gcp.Compute.ForwardingRule("psc_ilb_target_service", new()
///     {
///         Name = "producer-forwarding-rule",
///         Region = "us-west2",
///         LoadBalancingScheme = "INTERNAL",
///         BackendService = producerServiceBackend.Id,
///         AllPorts = true,
///         Network = pscIlbNetwork.Name,
///         Subnetwork = pscIlbProducerSubnetwork.Name,
///     });
///
///     var pscIlbNat = new Gcp.Compute.Subnetwork("psc_ilb_nat", new()
///     {
///         Name = "psc-ilb-nat",
///         Region = "us-west2",
///         Network = pscIlbNetwork.Id,
///         Purpose = "PRIVATE_SERVICE_CONNECT",
///         IpCidrRange = "10.1.0.0/16",
///     });
///
///     var pscIlbServiceAttachment = new Gcp.Compute.ServiceAttachment("psc_ilb_service_attachment", new()
///     {
///         Name = "my-psc-ilb",
///         Region = "us-west2",
///         Description = "A service attachment configured with Terraform",
///         EnableProxyProtocol = false,
///         ConnectionPreference = "ACCEPT_MANUAL",
///         NatSubnets = new[]
///         {
///             pscIlbNat.Id,
///         },
///         TargetService = pscIlbTargetService.Id,
///         ConsumerAcceptLists = new[]
///         {
///             new Gcp.Compute.Inputs.ServiceAttachmentConsumerAcceptListArgs
///             {
///                 NetworkUrl = pscIlbConsumerNetwork.SelfLink,
///                 ConnectionLimit = 1,
///             },
///         },
///     });
///
///     var pscIlbConsumerSubnetwork = new Gcp.Compute.Subnetwork("psc_ilb_consumer_subnetwork", new()
///     {
///         Name = "psc-ilb-consumer-network",
///         IpCidrRange = "10.0.0.0/16",
///         Region = "us-west2",
///         Network = pscIlbConsumerNetwork.Id,
///     });
///
///     var pscIlbConsumerAddress = new Gcp.Compute.Address("psc_ilb_consumer_address", new()
///     {
///         Name = "psc-ilb-consumer-address",
///         Region = "us-west2",
///         Subnetwork = pscIlbConsumerSubnetwork.Id,
///         AddressType = "INTERNAL",
///     });
///
///     var pscIlbConsumer = new Gcp.Compute.ForwardingRule("psc_ilb_consumer", new()
///     {
///         Name = "psc-ilb-consumer-forwarding-rule",
///         Region = "us-west2",
///         Target = pscIlbServiceAttachment.Id,
///         LoadBalancingScheme = "",
///         Network = pscIlbConsumerNetwork.Id,
///         Subnetwork = pscIlbConsumerSubnetwork.Id,
///         IpAddress = pscIlbConsumerAddress.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		pscIlbConsumerNetwork, err := compute.NewNetwork(ctx, "psc_ilb_consumer_network", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("psc-ilb-consumer-network"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
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
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		producerServiceBackend, err := compute.NewRegionBackendService(ctx, "producer_service_backend", &compute.RegionBackendServiceArgs{
/// 			Name:         pulumi.String("producer-service"),
/// 			Region:       pulumi.String("us-west2"),
/// 			HealthChecks: producerServiceHealthCheck.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		pscIlbNetwork, err := compute.NewNetwork(ctx, "psc_ilb_network", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("psc-ilb-network"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		pscIlbProducerSubnetwork, err := compute.NewSubnetwork(ctx, "psc_ilb_producer_subnetwork", &compute.SubnetworkArgs{
/// 			Name:        pulumi.String("psc-ilb-producer-subnetwork"),
/// 			Region:      pulumi.String("us-west2"),
/// 			Network:     pscIlbNetwork.ID(),
/// 			IpCidrRange: pulumi.String("10.0.0.0/16"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		pscIlbTargetService, err := compute.NewForwardingRule(ctx, "psc_ilb_target_service", &compute.ForwardingRuleArgs{
/// 			Name:                pulumi.String("producer-forwarding-rule"),
/// 			Region:              pulumi.String("us-west2"),
/// 			LoadBalancingScheme: pulumi.String("INTERNAL"),
/// 			BackendService:      producerServiceBackend.ID(),
/// 			AllPorts:            pulumi.Bool(true),
/// 			Network:             pscIlbNetwork.Name,
/// 			Subnetwork:          pscIlbProducerSubnetwork.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		pscIlbNat, err := compute.NewSubnetwork(ctx, "psc_ilb_nat", &compute.SubnetworkArgs{
/// 			Name:        pulumi.String("psc-ilb-nat"),
/// 			Region:      pulumi.String("us-west2"),
/// 			Network:     pscIlbNetwork.ID(),
/// 			Purpose:     pulumi.String("PRIVATE_SERVICE_CONNECT"),
/// 			IpCidrRange: pulumi.String("10.1.0.0/16"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		pscIlbServiceAttachment, err := compute.NewServiceAttachment(ctx, "psc_ilb_service_attachment", &compute.ServiceAttachmentArgs{
/// 			Name:                 pulumi.String("my-psc-ilb"),
/// 			Region:               pulumi.String("us-west2"),
/// 			Description:          pulumi.String("A service attachment configured with Terraform"),
/// 			EnableProxyProtocol:  pulumi.Bool(false),
/// 			ConnectionPreference: pulumi.String("ACCEPT_MANUAL"),
/// 			NatSubnets: pulumi.StringArray{
/// 				pscIlbNat.ID(),
/// 			},
/// 			TargetService: pscIlbTargetService.ID(),
/// 			ConsumerAcceptLists: compute.ServiceAttachmentConsumerAcceptListArray{
/// 				&compute.ServiceAttachmentConsumerAcceptListArgs{
/// 					NetworkUrl:      pscIlbConsumerNetwork.SelfLink,
/// 					ConnectionLimit: pulumi.Int(1),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		pscIlbConsumerSubnetwork, err := compute.NewSubnetwork(ctx, "psc_ilb_consumer_subnetwork", &compute.SubnetworkArgs{
/// 			Name:        pulumi.String("psc-ilb-consumer-network"),
/// 			IpCidrRange: pulumi.String("10.0.0.0/16"),
/// 			Region:      pulumi.String("us-west2"),
/// 			Network:     pscIlbConsumerNetwork.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		pscIlbConsumerAddress, err := compute.NewAddress(ctx, "psc_ilb_consumer_address", &compute.AddressArgs{
/// 			Name:        pulumi.String("psc-ilb-consumer-address"),
/// 			Region:      pulumi.String("us-west2"),
/// 			Subnetwork:  pscIlbConsumerSubnetwork.ID(),
/// 			AddressType: pulumi.String("INTERNAL"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewForwardingRule(ctx, "psc_ilb_consumer", &compute.ForwardingRuleArgs{
/// 			Name:                pulumi.String("psc-ilb-consumer-forwarding-rule"),
/// 			Region:              pulumi.String("us-west2"),
/// 			Target:              pscIlbServiceAttachment.ID(),
/// 			LoadBalancingScheme: pulumi.String(""),
/// 			Network:             pscIlbConsumerNetwork.ID(),
/// 			Subnetwork:          pscIlbConsumerSubnetwork.ID(),
/// 			IpAddress:           pscIlbConsumerAddress.ID(),
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
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
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
/// import com.pulumi.gcp.compute.inputs.ServiceAttachmentConsumerAcceptListArgs;
/// import com.pulumi.gcp.compute.Address;
/// import com.pulumi.gcp.compute.AddressArgs;
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
///         var pscIlbConsumerNetwork = new Network("pscIlbConsumerNetwork", NetworkArgs.builder()
///             .name("psc-ilb-consumer-network")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var producerServiceHealthCheck = new HealthCheck("producerServiceHealthCheck", HealthCheckArgs.builder()
///             .name("producer-service-health-check")
///             .checkIntervalSec(1)
///             .timeoutSec(1)
///             .tcpHealthCheck(HealthCheckTcpHealthCheckArgs.builder()
///                 .port(80)
///                 .build())
///             .build());
///
///         var producerServiceBackend = new RegionBackendService("producerServiceBackend", RegionBackendServiceArgs.builder()
///             .name("producer-service")
///             .region("us-west2")
///             .healthChecks(producerServiceHealthCheck.id())
///             .build());
///
///         var pscIlbNetwork = new Network("pscIlbNetwork", NetworkArgs.builder()
///             .name("psc-ilb-network")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var pscIlbProducerSubnetwork = new Subnetwork("pscIlbProducerSubnetwork", SubnetworkArgs.builder()
///             .name("psc-ilb-producer-subnetwork")
///             .region("us-west2")
///             .network(pscIlbNetwork.id())
///             .ipCidrRange("10.0.0.0/16")
///             .build());
///
///         var pscIlbTargetService = new ForwardingRule("pscIlbTargetService", ForwardingRuleArgs.builder()
///             .name("producer-forwarding-rule")
///             .region("us-west2")
///             .loadBalancingScheme("INTERNAL")
///             .backendService(producerServiceBackend.id())
///             .allPorts(true)
///             .network(pscIlbNetwork.name())
///             .subnetwork(pscIlbProducerSubnetwork.name())
///             .build());
///
///         var pscIlbNat = new Subnetwork("pscIlbNat", SubnetworkArgs.builder()
///             .name("psc-ilb-nat")
///             .region("us-west2")
///             .network(pscIlbNetwork.id())
///             .purpose("PRIVATE_SERVICE_CONNECT")
///             .ipCidrRange("10.1.0.0/16")
///             .build());
///
///         var pscIlbServiceAttachment = new ServiceAttachment("pscIlbServiceAttachment", ServiceAttachmentArgs.builder()
///             .name("my-psc-ilb")
///             .region("us-west2")
///             .description("A service attachment configured with Terraform")
///             .enableProxyProtocol(false)
///             .connectionPreference("ACCEPT_MANUAL")
///             .natSubnets(pscIlbNat.id())
///             .targetService(pscIlbTargetService.id())
///             .consumerAcceptLists(ServiceAttachmentConsumerAcceptListArgs.builder()
///                 .networkUrl(pscIlbConsumerNetwork.selfLink())
///                 .connectionLimit(1)
///                 .build())
///             .build());
///
///         var pscIlbConsumerSubnetwork = new Subnetwork("pscIlbConsumerSubnetwork", SubnetworkArgs.builder()
///             .name("psc-ilb-consumer-network")
///             .ipCidrRange("10.0.0.0/16")
///             .region("us-west2")
///             .network(pscIlbConsumerNetwork.id())
///             .build());
///
///         var pscIlbConsumerAddress = new Address("pscIlbConsumerAddress", AddressArgs.builder()
///             .name("psc-ilb-consumer-address")
///             .region("us-west2")
///             .subnetwork(pscIlbConsumerSubnetwork.id())
///             .addressType("INTERNAL")
///             .build());
///
///         var pscIlbConsumer = new ForwardingRule("pscIlbConsumer", ForwardingRuleArgs.builder()
///             .name("psc-ilb-consumer-forwarding-rule")
///             .region("us-west2")
///             .target(pscIlbServiceAttachment.id())
///             .loadBalancingScheme("")
///             .network(pscIlbConsumerNetwork.id())
///             .subnetwork(pscIlbConsumerSubnetwork.id())
///             .ipAddress(pscIlbConsumerAddress.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   pscIlbServiceAttachment:
///     type: gcp:compute:ServiceAttachment
///     name: psc_ilb_service_attachment
///     properties:
///       name: my-psc-ilb
///       region: us-west2
///       description: A service attachment configured with Terraform
///       enableProxyProtocol: false
///       connectionPreference: ACCEPT_MANUAL
///       natSubnets:
///         - ${pscIlbNat.id}
///       targetService: ${pscIlbTargetService.id}
///       consumerAcceptLists:
///         - networkUrl: ${pscIlbConsumerNetwork.selfLink}
///           connectionLimit: 1
///   pscIlbConsumerNetwork:
///     type: gcp:compute:Network
///     name: psc_ilb_consumer_network
///     properties:
///       name: psc-ilb-consumer-network
///       autoCreateSubnetworks: false
///   pscIlbConsumerSubnetwork:
///     type: gcp:compute:Subnetwork
///     name: psc_ilb_consumer_subnetwork
///     properties:
///       name: psc-ilb-consumer-network
///       ipCidrRange: 10.0.0.0/16
///       region: us-west2
///       network: ${pscIlbConsumerNetwork.id}
///   pscIlbConsumerAddress:
///     type: gcp:compute:Address
///     name: psc_ilb_consumer_address
///     properties:
///       name: psc-ilb-consumer-address
///       region: us-west2
///       subnetwork: ${pscIlbConsumerSubnetwork.id}
///       addressType: INTERNAL
///   pscIlbConsumer:
///     type: gcp:compute:ForwardingRule
///     name: psc_ilb_consumer
///     properties:
///       name: psc-ilb-consumer-forwarding-rule
///       region: us-west2
///       target: ${pscIlbServiceAttachment.id}
///       loadBalancingScheme: ""
///       network: ${pscIlbConsumerNetwork.id}
///       subnetwork: ${pscIlbConsumerSubnetwork.id}
///       ipAddress: ${pscIlbConsumerAddress.id}
///   pscIlbTargetService:
///     type: gcp:compute:ForwardingRule
///     name: psc_ilb_target_service
///     properties:
///       name: producer-forwarding-rule
///       region: us-west2
///       loadBalancingScheme: INTERNAL
///       backendService: ${producerServiceBackend.id}
///       allPorts: true
///       network: ${pscIlbNetwork.name}
///       subnetwork: ${pscIlbProducerSubnetwork.name}
///   producerServiceBackend:
///     type: gcp:compute:RegionBackendService
///     name: producer_service_backend
///     properties:
///       name: producer-service
///       region: us-west2
///       healthChecks: ${producerServiceHealthCheck.id}
///   producerServiceHealthCheck:
///     type: gcp:compute:HealthCheck
///     name: producer_service_health_check
///     properties:
///       name: producer-service-health-check
///       checkIntervalSec: 1
///       timeoutSec: 1
///       tcpHealthCheck:
///         port: '80'
///   pscIlbNetwork:
///     type: gcp:compute:Network
///     name: psc_ilb_network
///     properties:
///       name: psc-ilb-network
///       autoCreateSubnetworks: false
///   pscIlbProducerSubnetwork:
///     type: gcp:compute:Subnetwork
///     name: psc_ilb_producer_subnetwork
///     properties:
///       name: psc-ilb-producer-subnetwork
///       region: us-west2
///       network: ${pscIlbNetwork.id}
///       ipCidrRange: 10.0.0.0/16
///   pscIlbNat:
///     type: gcp:compute:Subnetwork
///     name: psc_ilb_nat
///     properties:
///       name: psc-ilb-nat
///       region: us-west2
///       network: ${pscIlbNetwork.id}
///       purpose: PRIVATE_SERVICE_CONNECT
///       ipCidrRange: 10.1.0.0/16
/// ```
///
/// ### Service Attachment Reconcile Connections
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const producerServiceHealthCheck = new gcp.compute.HealthCheck("producer_service_health_check", {
///     name: "producer-service-health-check",
///     checkIntervalSec: 1,
///     timeoutSec: 1,
///     tcpHealthCheck: {
///         port: 80,
///     },
/// });
/// const producerServiceBackend = new gcp.compute.RegionBackendService("producer_service_backend", {
///     name: "producer-service",
///     region: "us-west2",
///     healthChecks: producerServiceHealthCheck.id,
/// });
/// const pscIlbNetwork = new gcp.compute.Network("psc_ilb_network", {
///     name: "psc-ilb-network",
///     autoCreateSubnetworks: false,
/// });
/// const pscIlbProducerSubnetwork = new gcp.compute.Subnetwork("psc_ilb_producer_subnetwork", {
///     name: "psc-ilb-producer-subnetwork",
///     region: "us-west2",
///     network: pscIlbNetwork.id,
///     ipCidrRange: "10.0.0.0/16",
/// });
/// const pscIlbTargetService = new gcp.compute.ForwardingRule("psc_ilb_target_service", {
///     name: "producer-forwarding-rule",
///     region: "us-west2",
///     loadBalancingScheme: "INTERNAL",
///     backendService: producerServiceBackend.id,
///     allPorts: true,
///     network: pscIlbNetwork.name,
///     subnetwork: pscIlbProducerSubnetwork.name,
/// });
/// const pscIlbNat = new gcp.compute.Subnetwork("psc_ilb_nat", {
///     name: "psc-ilb-nat",
///     region: "us-west2",
///     network: pscIlbNetwork.id,
///     purpose: "PRIVATE_SERVICE_CONNECT",
///     ipCidrRange: "10.1.0.0/16",
/// });
/// const pscIlbServiceAttachment = new gcp.compute.ServiceAttachment("psc_ilb_service_attachment", {
///     name: "my-psc-ilb",
///     region: "us-west2",
///     description: "A service attachment configured with Terraform",
///     domainNames: ["gcp.tfacc.hashicorptest.com."],
///     enableProxyProtocol: true,
///     connectionPreference: "ACCEPT_MANUAL",
///     natSubnets: [pscIlbNat.id],
///     targetService: pscIlbTargetService.id,
///     consumerRejectLists: [
///         "673497134629",
///         "482878270665",
///     ],
///     consumerAcceptLists: [{
///         projectIdOrNum: "658859330310",
///         connectionLimit: 4,
///     }],
///     reconcileConnections: false,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// producer_service_health_check = gcp.compute.HealthCheck("producer_service_health_check",
///     name="producer-service-health-check",
///     check_interval_sec=1,
///     timeout_sec=1,
///     tcp_health_check={
///         "port": 80,
///     })
/// producer_service_backend = gcp.compute.RegionBackendService("producer_service_backend",
///     name="producer-service",
///     region="us-west2",
///     health_checks=producer_service_health_check.id)
/// psc_ilb_network = gcp.compute.Network("psc_ilb_network",
///     name="psc-ilb-network",
///     auto_create_subnetworks=False)
/// psc_ilb_producer_subnetwork = gcp.compute.Subnetwork("psc_ilb_producer_subnetwork",
///     name="psc-ilb-producer-subnetwork",
///     region="us-west2",
///     network=psc_ilb_network.id,
///     ip_cidr_range="10.0.0.0/16")
/// psc_ilb_target_service = gcp.compute.ForwardingRule("psc_ilb_target_service",
///     name="producer-forwarding-rule",
///     region="us-west2",
///     load_balancing_scheme="INTERNAL",
///     backend_service=producer_service_backend.id,
///     all_ports=True,
///     network=psc_ilb_network.name,
///     subnetwork=psc_ilb_producer_subnetwork.name)
/// psc_ilb_nat = gcp.compute.Subnetwork("psc_ilb_nat",
///     name="psc-ilb-nat",
///     region="us-west2",
///     network=psc_ilb_network.id,
///     purpose="PRIVATE_SERVICE_CONNECT",
///     ip_cidr_range="10.1.0.0/16")
/// psc_ilb_service_attachment = gcp.compute.ServiceAttachment("psc_ilb_service_attachment",
///     name="my-psc-ilb",
///     region="us-west2",
///     description="A service attachment configured with Terraform",
///     domain_names=["gcp.tfacc.hashicorptest.com."],
///     enable_proxy_protocol=True,
///     connection_preference="ACCEPT_MANUAL",
///     nat_subnets=[psc_ilb_nat.id],
///     target_service=psc_ilb_target_service.id,
///     consumer_reject_lists=[
///         "673497134629",
///         "482878270665",
///     ],
///     consumer_accept_lists=[{
///         "project_id_or_num": "658859330310",
///         "connection_limit": 4,
///     }],
///     reconcile_connections=False)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var producerServiceHealthCheck = new Gcp.Compute.HealthCheck("producer_service_health_check", new()
///     {
///         Name = "producer-service-health-check",
///         CheckIntervalSec = 1,
///         TimeoutSec = 1,
///         TcpHealthCheck = new Gcp.Compute.Inputs.HealthCheckTcpHealthCheckArgs
///         {
///             Port = 80,
///         },
///     });
///
///     var producerServiceBackend = new Gcp.Compute.RegionBackendService("producer_service_backend", new()
///     {
///         Name = "producer-service",
///         Region = "us-west2",
///         HealthChecks = producerServiceHealthCheck.Id,
///     });
///
///     var pscIlbNetwork = new Gcp.Compute.Network("psc_ilb_network", new()
///     {
///         Name = "psc-ilb-network",
///         AutoCreateSubnetworks = false,
///     });
///
///     var pscIlbProducerSubnetwork = new Gcp.Compute.Subnetwork("psc_ilb_producer_subnetwork", new()
///     {
///         Name = "psc-ilb-producer-subnetwork",
///         Region = "us-west2",
///         Network = pscIlbNetwork.Id,
///         IpCidrRange = "10.0.0.0/16",
///     });
///
///     var pscIlbTargetService = new Gcp.Compute.ForwardingRule("psc_ilb_target_service", new()
///     {
///         Name = "producer-forwarding-rule",
///         Region = "us-west2",
///         LoadBalancingScheme = "INTERNAL",
///         BackendService = producerServiceBackend.Id,
///         AllPorts = true,
///         Network = pscIlbNetwork.Name,
///         Subnetwork = pscIlbProducerSubnetwork.Name,
///     });
///
///     var pscIlbNat = new Gcp.Compute.Subnetwork("psc_ilb_nat", new()
///     {
///         Name = "psc-ilb-nat",
///         Region = "us-west2",
///         Network = pscIlbNetwork.Id,
///         Purpose = "PRIVATE_SERVICE_CONNECT",
///         IpCidrRange = "10.1.0.0/16",
///     });
///
///     var pscIlbServiceAttachment = new Gcp.Compute.ServiceAttachment("psc_ilb_service_attachment", new()
///     {
///         Name = "my-psc-ilb",
///         Region = "us-west2",
///         Description = "A service attachment configured with Terraform",
///         DomainNames = new[]
///         {
///             "gcp.tfacc.hashicorptest.com.",
///         },
///         EnableProxyProtocol = true,
///         ConnectionPreference = "ACCEPT_MANUAL",
///         NatSubnets = new[]
///         {
///             pscIlbNat.Id,
///         },
///         TargetService = pscIlbTargetService.Id,
///         ConsumerRejectLists = new[]
///         {
///             "673497134629",
///             "482878270665",
///         },
///         ConsumerAcceptLists = new[]
///         {
///             new Gcp.Compute.Inputs.ServiceAttachmentConsumerAcceptListArgs
///             {
///                 ProjectIdOrNum = "658859330310",
///                 ConnectionLimit = 4,
///             },
///         },
///         ReconcileConnections = false,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		producerServiceHealthCheck, err := compute.NewHealthCheck(ctx, "producer_service_health_check", &compute.HealthCheckArgs{
/// 			Name:             pulumi.String("producer-service-health-check"),
/// 			CheckIntervalSec: pulumi.Int(1),
/// 			TimeoutSec:       pulumi.Int(1),
/// 			TcpHealthCheck: &compute.HealthCheckTcpHealthCheckArgs{
/// 				Port: pulumi.Int(80),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		producerServiceBackend, err := compute.NewRegionBackendService(ctx, "producer_service_backend", &compute.RegionBackendServiceArgs{
/// 			Name:         pulumi.String("producer-service"),
/// 			Region:       pulumi.String("us-west2"),
/// 			HealthChecks: producerServiceHealthCheck.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		pscIlbNetwork, err := compute.NewNetwork(ctx, "psc_ilb_network", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("psc-ilb-network"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		pscIlbProducerSubnetwork, err := compute.NewSubnetwork(ctx, "psc_ilb_producer_subnetwork", &compute.SubnetworkArgs{
/// 			Name:        pulumi.String("psc-ilb-producer-subnetwork"),
/// 			Region:      pulumi.String("us-west2"),
/// 			Network:     pscIlbNetwork.ID(),
/// 			IpCidrRange: pulumi.String("10.0.0.0/16"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		pscIlbTargetService, err := compute.NewForwardingRule(ctx, "psc_ilb_target_service", &compute.ForwardingRuleArgs{
/// 			Name:                pulumi.String("producer-forwarding-rule"),
/// 			Region:              pulumi.String("us-west2"),
/// 			LoadBalancingScheme: pulumi.String("INTERNAL"),
/// 			BackendService:      producerServiceBackend.ID(),
/// 			AllPorts:            pulumi.Bool(true),
/// 			Network:             pscIlbNetwork.Name,
/// 			Subnetwork:          pscIlbProducerSubnetwork.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		pscIlbNat, err := compute.NewSubnetwork(ctx, "psc_ilb_nat", &compute.SubnetworkArgs{
/// 			Name:        pulumi.String("psc-ilb-nat"),
/// 			Region:      pulumi.String("us-west2"),
/// 			Network:     pscIlbNetwork.ID(),
/// 			Purpose:     pulumi.String("PRIVATE_SERVICE_CONNECT"),
/// 			IpCidrRange: pulumi.String("10.1.0.0/16"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewServiceAttachment(ctx, "psc_ilb_service_attachment", &compute.ServiceAttachmentArgs{
/// 			Name:        pulumi.String("my-psc-ilb"),
/// 			Region:      pulumi.String("us-west2"),
/// 			Description: pulumi.String("A service attachment configured with Terraform"),
/// 			DomainNames: pulumi.StringArray{
/// 				pulumi.String("gcp.tfacc.hashicorptest.com."),
/// 			},
/// 			EnableProxyProtocol:  pulumi.Bool(true),
/// 			ConnectionPreference: pulumi.String("ACCEPT_MANUAL"),
/// 			NatSubnets: pulumi.StringArray{
/// 				pscIlbNat.ID(),
/// 			},
/// 			TargetService: pscIlbTargetService.ID(),
/// 			ConsumerRejectLists: pulumi.StringArray{
/// 				pulumi.String("673497134629"),
/// 				pulumi.String("482878270665"),
/// 			},
/// 			ConsumerAcceptLists: compute.ServiceAttachmentConsumerAcceptListArray{
/// 				&compute.ServiceAttachmentConsumerAcceptListArgs{
/// 					ProjectIdOrNum:  pulumi.String("658859330310"),
/// 					ConnectionLimit: pulumi.Int(4),
/// 				},
/// 			},
/// 			ReconcileConnections: pulumi.Bool(false),
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
/// import com.pulumi.gcp.compute.HealthCheck;
/// import com.pulumi.gcp.compute.HealthCheckArgs;
/// import com.pulumi.gcp.compute.inputs.HealthCheckTcpHealthCheckArgs;
/// import com.pulumi.gcp.compute.RegionBackendService;
/// import com.pulumi.gcp.compute.RegionBackendServiceArgs;
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.compute.Subnetwork;
/// import com.pulumi.gcp.compute.SubnetworkArgs;
/// import com.pulumi.gcp.compute.ForwardingRule;
/// import com.pulumi.gcp.compute.ForwardingRuleArgs;
/// import com.pulumi.gcp.compute.ServiceAttachment;
/// import com.pulumi.gcp.compute.ServiceAttachmentArgs;
/// import com.pulumi.gcp.compute.inputs.ServiceAttachmentConsumerAcceptListArgs;
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
///         var producerServiceHealthCheck = new HealthCheck("producerServiceHealthCheck", HealthCheckArgs.builder()
///             .name("producer-service-health-check")
///             .checkIntervalSec(1)
///             .timeoutSec(1)
///             .tcpHealthCheck(HealthCheckTcpHealthCheckArgs.builder()
///                 .port(80)
///                 .build())
///             .build());
///
///         var producerServiceBackend = new RegionBackendService("producerServiceBackend", RegionBackendServiceArgs.builder()
///             .name("producer-service")
///             .region("us-west2")
///             .healthChecks(producerServiceHealthCheck.id())
///             .build());
///
///         var pscIlbNetwork = new Network("pscIlbNetwork", NetworkArgs.builder()
///             .name("psc-ilb-network")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var pscIlbProducerSubnetwork = new Subnetwork("pscIlbProducerSubnetwork", SubnetworkArgs.builder()
///             .name("psc-ilb-producer-subnetwork")
///             .region("us-west2")
///             .network(pscIlbNetwork.id())
///             .ipCidrRange("10.0.0.0/16")
///             .build());
///
///         var pscIlbTargetService = new ForwardingRule("pscIlbTargetService", ForwardingRuleArgs.builder()
///             .name("producer-forwarding-rule")
///             .region("us-west2")
///             .loadBalancingScheme("INTERNAL")
///             .backendService(producerServiceBackend.id())
///             .allPorts(true)
///             .network(pscIlbNetwork.name())
///             .subnetwork(pscIlbProducerSubnetwork.name())
///             .build());
///
///         var pscIlbNat = new Subnetwork("pscIlbNat", SubnetworkArgs.builder()
///             .name("psc-ilb-nat")
///             .region("us-west2")
///             .network(pscIlbNetwork.id())
///             .purpose("PRIVATE_SERVICE_CONNECT")
///             .ipCidrRange("10.1.0.0/16")
///             .build());
///
///         var pscIlbServiceAttachment = new ServiceAttachment("pscIlbServiceAttachment", ServiceAttachmentArgs.builder()
///             .name("my-psc-ilb")
///             .region("us-west2")
///             .description("A service attachment configured with Terraform")
///             .domainNames("gcp.tfacc.hashicorptest.com.")
///             .enableProxyProtocol(true)
///             .connectionPreference("ACCEPT_MANUAL")
///             .natSubnets(pscIlbNat.id())
///             .targetService(pscIlbTargetService.id())
///             .consumerRejectLists(
///                 "673497134629",
///                 "482878270665")
///             .consumerAcceptLists(ServiceAttachmentConsumerAcceptListArgs.builder()
///                 .projectIdOrNum("658859330310")
///                 .connectionLimit(4)
///                 .build())
///             .reconcileConnections(false)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   pscIlbServiceAttachment:
///     type: gcp:compute:ServiceAttachment
///     name: psc_ilb_service_attachment
///     properties:
///       name: my-psc-ilb
///       region: us-west2
///       description: A service attachment configured with Terraform
///       domainNames:
///         - gcp.tfacc.hashicorptest.com.
///       enableProxyProtocol: true
///       connectionPreference: ACCEPT_MANUAL
///       natSubnets:
///         - ${pscIlbNat.id}
///       targetService: ${pscIlbTargetService.id}
///       consumerRejectLists:
///         - '673497134629'
///         - '482878270665'
///       consumerAcceptLists:
///         - projectIdOrNum: '658859330310'
///           connectionLimit: 4
///       reconcileConnections: false
///   pscIlbTargetService:
///     type: gcp:compute:ForwardingRule
///     name: psc_ilb_target_service
///     properties:
///       name: producer-forwarding-rule
///       region: us-west2
///       loadBalancingScheme: INTERNAL
///       backendService: ${producerServiceBackend.id}
///       allPorts: true
///       network: ${pscIlbNetwork.name}
///       subnetwork: ${pscIlbProducerSubnetwork.name}
///   producerServiceBackend:
///     type: gcp:compute:RegionBackendService
///     name: producer_service_backend
///     properties:
///       name: producer-service
///       region: us-west2
///       healthChecks: ${producerServiceHealthCheck.id}
///   producerServiceHealthCheck:
///     type: gcp:compute:HealthCheck
///     name: producer_service_health_check
///     properties:
///       name: producer-service-health-check
///       checkIntervalSec: 1
///       timeoutSec: 1
///       tcpHealthCheck:
///         port: '80'
///   pscIlbNetwork:
///     type: gcp:compute:Network
///     name: psc_ilb_network
///     properties:
///       name: psc-ilb-network
///       autoCreateSubnetworks: false
///   pscIlbProducerSubnetwork:
///     type: gcp:compute:Subnetwork
///     name: psc_ilb_producer_subnetwork
///     properties:
///       name: psc-ilb-producer-subnetwork
///       region: us-west2
///       network: ${pscIlbNetwork.id}
///       ipCidrRange: 10.0.0.0/16
///   pscIlbNat:
///     type: gcp:compute:Subnetwork
///     name: psc_ilb_nat
///     properties:
///       name: psc-ilb-nat
///       region: us-west2
///       network: ${pscIlbNetwork.id}
///       purpose: PRIVATE_SERVICE_CONNECT
///       ipCidrRange: 10.1.0.0/16
/// ```
///
/// ### Service Attachment Tunneling Config
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const producerServiceHealthCheck = new gcp.compute.HealthCheck("producer_service_health_check", {
///     name: "producer-service-health-check",
///     checkIntervalSec: 1,
///     timeoutSec: 1,
///     tcpHealthCheck: {
///         port: 80,
///     },
/// });
/// const producerServiceBackend = new gcp.compute.RegionBackendService("producer_service_backend", {
///     name: "producer-service",
///     region: "us-west2",
///     healthChecks: producerServiceHealthCheck.id,
/// });
/// const pscIlbNetwork = new gcp.compute.Network("psc_ilb_network", {
///     name: "psc-ilb-network",
///     autoCreateSubnetworks: false,
/// });
/// const pscIlbProducerSubnetwork = new gcp.compute.Subnetwork("psc_ilb_producer_subnetwork", {
///     name: "psc-ilb-producer-subnetwork",
///     region: "us-west2",
///     network: pscIlbNetwork.id,
///     ipCidrRange: "10.0.0.0/16",
/// });
/// const pscIlbTargetService = new gcp.compute.ForwardingRule("psc_ilb_target_service", {
///     name: "producer-forwarding-rule",
///     region: "us-west2",
///     loadBalancingScheme: "INTERNAL",
///     backendService: producerServiceBackend.id,
///     allPorts: true,
///     network: pscIlbNetwork.name,
///     subnetwork: pscIlbProducerSubnetwork.name,
/// });
/// const pscIlbNat = new gcp.compute.Subnetwork("psc_ilb_nat", {
///     name: "psc-ilb-nat",
///     region: "us-west2",
///     network: pscIlbNetwork.id,
///     purpose: "PRIVATE_SERVICE_CONNECT",
///     ipCidrRange: "10.1.0.0/16",
/// });
/// const pscIlbServiceAttachment = new gcp.compute.ServiceAttachment("psc_ilb_service_attachment", {
///     name: "my-psc-ilb",
///     region: "us-west2",
///     description: "A service attachment configured with tunneling",
///     enableProxyProtocol: false,
///     connectionPreference: "ACCEPT_AUTOMATIC",
///     natSubnets: [pscIlbNat.id],
///     targetService: pscIlbTargetService.id,
///     tunnelingConfig: {
///         routingMode: "REGIONAL",
///         encapsulationProfile: "IPV4",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// producer_service_health_check = gcp.compute.HealthCheck("producer_service_health_check",
///     name="producer-service-health-check",
///     check_interval_sec=1,
///     timeout_sec=1,
///     tcp_health_check={
///         "port": 80,
///     })
/// producer_service_backend = gcp.compute.RegionBackendService("producer_service_backend",
///     name="producer-service",
///     region="us-west2",
///     health_checks=producer_service_health_check.id)
/// psc_ilb_network = gcp.compute.Network("psc_ilb_network",
///     name="psc-ilb-network",
///     auto_create_subnetworks=False)
/// psc_ilb_producer_subnetwork = gcp.compute.Subnetwork("psc_ilb_producer_subnetwork",
///     name="psc-ilb-producer-subnetwork",
///     region="us-west2",
///     network=psc_ilb_network.id,
///     ip_cidr_range="10.0.0.0/16")
/// psc_ilb_target_service = gcp.compute.ForwardingRule("psc_ilb_target_service",
///     name="producer-forwarding-rule",
///     region="us-west2",
///     load_balancing_scheme="INTERNAL",
///     backend_service=producer_service_backend.id,
///     all_ports=True,
///     network=psc_ilb_network.name,
///     subnetwork=psc_ilb_producer_subnetwork.name)
/// psc_ilb_nat = gcp.compute.Subnetwork("psc_ilb_nat",
///     name="psc-ilb-nat",
///     region="us-west2",
///     network=psc_ilb_network.id,
///     purpose="PRIVATE_SERVICE_CONNECT",
///     ip_cidr_range="10.1.0.0/16")
/// psc_ilb_service_attachment = gcp.compute.ServiceAttachment("psc_ilb_service_attachment",
///     name="my-psc-ilb",
///     region="us-west2",
///     description="A service attachment configured with tunneling",
///     enable_proxy_protocol=False,
///     connection_preference="ACCEPT_AUTOMATIC",
///     nat_subnets=[psc_ilb_nat.id],
///     target_service=psc_ilb_target_service.id,
///     tunneling_config={
///         "routing_mode": "REGIONAL",
///         "encapsulation_profile": "IPV4",
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
///     var producerServiceHealthCheck = new Gcp.Compute.HealthCheck("producer_service_health_check", new()
///     {
///         Name = "producer-service-health-check",
///         CheckIntervalSec = 1,
///         TimeoutSec = 1,
///         TcpHealthCheck = new Gcp.Compute.Inputs.HealthCheckTcpHealthCheckArgs
///         {
///             Port = 80,
///         },
///     });
///
///     var producerServiceBackend = new Gcp.Compute.RegionBackendService("producer_service_backend", new()
///     {
///         Name = "producer-service",
///         Region = "us-west2",
///         HealthChecks = producerServiceHealthCheck.Id,
///     });
///
///     var pscIlbNetwork = new Gcp.Compute.Network("psc_ilb_network", new()
///     {
///         Name = "psc-ilb-network",
///         AutoCreateSubnetworks = false,
///     });
///
///     var pscIlbProducerSubnetwork = new Gcp.Compute.Subnetwork("psc_ilb_producer_subnetwork", new()
///     {
///         Name = "psc-ilb-producer-subnetwork",
///         Region = "us-west2",
///         Network = pscIlbNetwork.Id,
///         IpCidrRange = "10.0.0.0/16",
///     });
///
///     var pscIlbTargetService = new Gcp.Compute.ForwardingRule("psc_ilb_target_service", new()
///     {
///         Name = "producer-forwarding-rule",
///         Region = "us-west2",
///         LoadBalancingScheme = "INTERNAL",
///         BackendService = producerServiceBackend.Id,
///         AllPorts = true,
///         Network = pscIlbNetwork.Name,
///         Subnetwork = pscIlbProducerSubnetwork.Name,
///     });
///
///     var pscIlbNat = new Gcp.Compute.Subnetwork("psc_ilb_nat", new()
///     {
///         Name = "psc-ilb-nat",
///         Region = "us-west2",
///         Network = pscIlbNetwork.Id,
///         Purpose = "PRIVATE_SERVICE_CONNECT",
///         IpCidrRange = "10.1.0.0/16",
///     });
///
///     var pscIlbServiceAttachment = new Gcp.Compute.ServiceAttachment("psc_ilb_service_attachment", new()
///     {
///         Name = "my-psc-ilb",
///         Region = "us-west2",
///         Description = "A service attachment configured with tunneling",
///         EnableProxyProtocol = false,
///         ConnectionPreference = "ACCEPT_AUTOMATIC",
///         NatSubnets = new[]
///         {
///             pscIlbNat.Id,
///         },
///         TargetService = pscIlbTargetService.Id,
///         TunnelingConfig = new Gcp.Compute.Inputs.ServiceAttachmentTunnelingConfigArgs
///         {
///             RoutingMode = "REGIONAL",
///             EncapsulationProfile = "IPV4",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		producerServiceHealthCheck, err := compute.NewHealthCheck(ctx, "producer_service_health_check", &compute.HealthCheckArgs{
/// 			Name:             pulumi.String("producer-service-health-check"),
/// 			CheckIntervalSec: pulumi.Int(1),
/// 			TimeoutSec:       pulumi.Int(1),
/// 			TcpHealthCheck: &compute.HealthCheckTcpHealthCheckArgs{
/// 				Port: pulumi.Int(80),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		producerServiceBackend, err := compute.NewRegionBackendService(ctx, "producer_service_backend", &compute.RegionBackendServiceArgs{
/// 			Name:         pulumi.String("producer-service"),
/// 			Region:       pulumi.String("us-west2"),
/// 			HealthChecks: producerServiceHealthCheck.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		pscIlbNetwork, err := compute.NewNetwork(ctx, "psc_ilb_network", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("psc-ilb-network"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		pscIlbProducerSubnetwork, err := compute.NewSubnetwork(ctx, "psc_ilb_producer_subnetwork", &compute.SubnetworkArgs{
/// 			Name:        pulumi.String("psc-ilb-producer-subnetwork"),
/// 			Region:      pulumi.String("us-west2"),
/// 			Network:     pscIlbNetwork.ID(),
/// 			IpCidrRange: pulumi.String("10.0.0.0/16"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		pscIlbTargetService, err := compute.NewForwardingRule(ctx, "psc_ilb_target_service", &compute.ForwardingRuleArgs{
/// 			Name:                pulumi.String("producer-forwarding-rule"),
/// 			Region:              pulumi.String("us-west2"),
/// 			LoadBalancingScheme: pulumi.String("INTERNAL"),
/// 			BackendService:      producerServiceBackend.ID(),
/// 			AllPorts:            pulumi.Bool(true),
/// 			Network:             pscIlbNetwork.Name,
/// 			Subnetwork:          pscIlbProducerSubnetwork.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		pscIlbNat, err := compute.NewSubnetwork(ctx, "psc_ilb_nat", &compute.SubnetworkArgs{
/// 			Name:        pulumi.String("psc-ilb-nat"),
/// 			Region:      pulumi.String("us-west2"),
/// 			Network:     pscIlbNetwork.ID(),
/// 			Purpose:     pulumi.String("PRIVATE_SERVICE_CONNECT"),
/// 			IpCidrRange: pulumi.String("10.1.0.0/16"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewServiceAttachment(ctx, "psc_ilb_service_attachment", &compute.ServiceAttachmentArgs{
/// 			Name:                 pulumi.String("my-psc-ilb"),
/// 			Region:               pulumi.String("us-west2"),
/// 			Description:          pulumi.String("A service attachment configured with tunneling"),
/// 			EnableProxyProtocol:  pulumi.Bool(false),
/// 			ConnectionPreference: pulumi.String("ACCEPT_AUTOMATIC"),
/// 			NatSubnets: pulumi.StringArray{
/// 				pscIlbNat.ID(),
/// 			},
/// 			TargetService: pscIlbTargetService.ID(),
/// 			TunnelingConfig: &compute.ServiceAttachmentTunnelingConfigArgs{
/// 				RoutingMode:          pulumi.String("REGIONAL"),
/// 				EncapsulationProfile: pulumi.String("IPV4"),
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
/// import com.pulumi.gcp.compute.HealthCheck;
/// import com.pulumi.gcp.compute.HealthCheckArgs;
/// import com.pulumi.gcp.compute.inputs.HealthCheckTcpHealthCheckArgs;
/// import com.pulumi.gcp.compute.RegionBackendService;
/// import com.pulumi.gcp.compute.RegionBackendServiceArgs;
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.compute.Subnetwork;
/// import com.pulumi.gcp.compute.SubnetworkArgs;
/// import com.pulumi.gcp.compute.ForwardingRule;
/// import com.pulumi.gcp.compute.ForwardingRuleArgs;
/// import com.pulumi.gcp.compute.ServiceAttachment;
/// import com.pulumi.gcp.compute.ServiceAttachmentArgs;
/// import com.pulumi.gcp.compute.inputs.ServiceAttachmentTunnelingConfigArgs;
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
///         var producerServiceHealthCheck = new HealthCheck("producerServiceHealthCheck", HealthCheckArgs.builder()
///             .name("producer-service-health-check")
///             .checkIntervalSec(1)
///             .timeoutSec(1)
///             .tcpHealthCheck(HealthCheckTcpHealthCheckArgs.builder()
///                 .port(80)
///                 .build())
///             .build());
///
///         var producerServiceBackend = new RegionBackendService("producerServiceBackend", RegionBackendServiceArgs.builder()
///             .name("producer-service")
///             .region("us-west2")
///             .healthChecks(producerServiceHealthCheck.id())
///             .build());
///
///         var pscIlbNetwork = new Network("pscIlbNetwork", NetworkArgs.builder()
///             .name("psc-ilb-network")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var pscIlbProducerSubnetwork = new Subnetwork("pscIlbProducerSubnetwork", SubnetworkArgs.builder()
///             .name("psc-ilb-producer-subnetwork")
///             .region("us-west2")
///             .network(pscIlbNetwork.id())
///             .ipCidrRange("10.0.0.0/16")
///             .build());
///
///         var pscIlbTargetService = new ForwardingRule("pscIlbTargetService", ForwardingRuleArgs.builder()
///             .name("producer-forwarding-rule")
///             .region("us-west2")
///             .loadBalancingScheme("INTERNAL")
///             .backendService(producerServiceBackend.id())
///             .allPorts(true)
///             .network(pscIlbNetwork.name())
///             .subnetwork(pscIlbProducerSubnetwork.name())
///             .build());
///
///         var pscIlbNat = new Subnetwork("pscIlbNat", SubnetworkArgs.builder()
///             .name("psc-ilb-nat")
///             .region("us-west2")
///             .network(pscIlbNetwork.id())
///             .purpose("PRIVATE_SERVICE_CONNECT")
///             .ipCidrRange("10.1.0.0/16")
///             .build());
///
///         var pscIlbServiceAttachment = new ServiceAttachment("pscIlbServiceAttachment", ServiceAttachmentArgs.builder()
///             .name("my-psc-ilb")
///             .region("us-west2")
///             .description("A service attachment configured with tunneling")
///             .enableProxyProtocol(false)
///             .connectionPreference("ACCEPT_AUTOMATIC")
///             .natSubnets(pscIlbNat.id())
///             .targetService(pscIlbTargetService.id())
///             .tunnelingConfig(ServiceAttachmentTunnelingConfigArgs.builder()
///                 .routingMode("REGIONAL")
///                 .encapsulationProfile("IPV4")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   pscIlbServiceAttachment:
///     type: gcp:compute:ServiceAttachment
///     name: psc_ilb_service_attachment
///     properties:
///       name: my-psc-ilb
///       region: us-west2
///       description: A service attachment configured with tunneling
///       enableProxyProtocol: false
///       connectionPreference: ACCEPT_AUTOMATIC
///       natSubnets:
///         - ${pscIlbNat.id}
///       targetService: ${pscIlbTargetService.id}
///       tunnelingConfig:
///         routingMode: REGIONAL
///         encapsulationProfile: IPV4
///   pscIlbTargetService:
///     type: gcp:compute:ForwardingRule
///     name: psc_ilb_target_service
///     properties:
///       name: producer-forwarding-rule
///       region: us-west2
///       loadBalancingScheme: INTERNAL
///       backendService: ${producerServiceBackend.id}
///       allPorts: true
///       network: ${pscIlbNetwork.name}
///       subnetwork: ${pscIlbProducerSubnetwork.name}
///   producerServiceBackend:
///     type: gcp:compute:RegionBackendService
///     name: producer_service_backend
///     properties:
///       name: producer-service
///       region: us-west2
///       healthChecks: ${producerServiceHealthCheck.id}
///   producerServiceHealthCheck:
///     type: gcp:compute:HealthCheck
///     name: producer_service_health_check
///     properties:
///       name: producer-service-health-check
///       checkIntervalSec: 1
///       timeoutSec: 1
///       tcpHealthCheck:
///         port: '80'
///   pscIlbNetwork:
///     type: gcp:compute:Network
///     name: psc_ilb_network
///     properties:
///       name: psc-ilb-network
///       autoCreateSubnetworks: false
///   pscIlbProducerSubnetwork:
///     type: gcp:compute:Subnetwork
///     name: psc_ilb_producer_subnetwork
///     properties:
///       name: psc-ilb-producer-subnetwork
///       region: us-west2
///       network: ${pscIlbNetwork.id}
///       ipCidrRange: 10.0.0.0/16
///   pscIlbNat:
///     type: gcp:compute:Subnetwork
///     name: psc_ilb_nat
///     properties:
///       name: psc-ilb-nat
///       region: us-west2
///       network: ${pscIlbNetwork.id}
///       purpose: PRIVATE_SERVICE_CONNECT
///       ipCidrRange: 10.1.0.0/16
/// ```
///
/// ### Service Attachment Cross Region Ilb
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const healthCheck = new gcp.compute.HealthCheck("health_check", {
///     name: "sa",
///     checkIntervalSec: 1,
///     timeoutSec: 1,
///     tcpHealthCheck: {
///         port: 80,
///     },
/// });
/// const backendService = new gcp.compute.BackendService("backend_service", {
///     name: "sa",
///     loadBalancingScheme: "INTERNAL_MANAGED",
///     healthChecks: healthCheck.id,
/// });
/// const urlMap = new gcp.compute.URLMap("url_map", {
///     name: "sa",
///     description: "Url map.",
///     defaultService: backendService.id,
/// });
/// const httpProxy = new gcp.compute.TargetHttpProxy("http_proxy", {
///     name: "sa",
///     description: "a description",
///     urlMap: urlMap.id,
/// });
/// const network = new gcp.compute.Network("network", {
///     name: "sa",
///     autoCreateSubnetworks: false,
/// });
/// const subnetworkProxy = new gcp.compute.Subnetwork("subnetwork_proxy", {
///     name: "sa-proxy",
///     region: "us-central1",
///     network: network.id,
///     purpose: "GLOBAL_MANAGED_PROXY",
///     role: "ACTIVE",
///     ipCidrRange: "10.2.0.0/16",
/// });
/// const subnetwork = new gcp.compute.Subnetwork("subnetwork", {
///     name: "sa",
///     region: "us-central1",
///     network: network.id,
///     ipCidrRange: "10.0.0.0/16",
/// });
/// const forwardingRule = new gcp.compute.GlobalForwardingRule("forwarding_rule", {
///     name: "sa",
///     target: httpProxy.id,
///     network: network.id,
///     subnetwork: subnetwork.id,
///     portRange: "80",
///     loadBalancingScheme: "INTERNAL_MANAGED",
/// }, {
///     dependsOn: [subnetworkProxy],
/// });
/// const subnetworkPsc = new gcp.compute.Subnetwork("subnetwork_psc", {
///     name: "sa-psc",
///     region: "us-central1",
///     network: network.id,
///     purpose: "PRIVATE_SERVICE_CONNECT",
///     ipCidrRange: "10.1.0.0/16",
/// });
/// const pscIlbServiceAttachment = new gcp.compute.ServiceAttachment("psc_ilb_service_attachment", {
///     name: "sa",
///     region: "us-central1",
///     description: "A service attachment configured with Terraform",
///     connectionPreference: "ACCEPT_AUTOMATIC",
///     enableProxyProtocol: false,
///     natSubnets: [subnetworkPsc.id],
///     targetService: forwardingRule.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// health_check = gcp.compute.HealthCheck("health_check",
///     name="sa",
///     check_interval_sec=1,
///     timeout_sec=1,
///     tcp_health_check={
///         "port": 80,
///     })
/// backend_service = gcp.compute.BackendService("backend_service",
///     name="sa",
///     load_balancing_scheme="INTERNAL_MANAGED",
///     health_checks=health_check.id)
/// url_map = gcp.compute.URLMap("url_map",
///     name="sa",
///     description="Url map.",
///     default_service=backend_service.id)
/// http_proxy = gcp.compute.TargetHttpProxy("http_proxy",
///     name="sa",
///     description="a description",
///     url_map=url_map.id)
/// network = gcp.compute.Network("network",
///     name="sa",
///     auto_create_subnetworks=False)
/// subnetwork_proxy = gcp.compute.Subnetwork("subnetwork_proxy",
///     name="sa-proxy",
///     region="us-central1",
///     network=network.id,
///     purpose="GLOBAL_MANAGED_PROXY",
///     role="ACTIVE",
///     ip_cidr_range="10.2.0.0/16")
/// subnetwork = gcp.compute.Subnetwork("subnetwork",
///     name="sa",
///     region="us-central1",
///     network=network.id,
///     ip_cidr_range="10.0.0.0/16")
/// forwarding_rule = gcp.compute.GlobalForwardingRule("forwarding_rule",
///     name="sa",
///     target=http_proxy.id,
///     network=network.id,
///     subnetwork=subnetwork.id,
///     port_range="80",
///     load_balancing_scheme="INTERNAL_MANAGED",
///     opts = pulumi.ResourceOptions(depends_on=[subnetwork_proxy]))
/// subnetwork_psc = gcp.compute.Subnetwork("subnetwork_psc",
///     name="sa-psc",
///     region="us-central1",
///     network=network.id,
///     purpose="PRIVATE_SERVICE_CONNECT",
///     ip_cidr_range="10.1.0.0/16")
/// psc_ilb_service_attachment = gcp.compute.ServiceAttachment("psc_ilb_service_attachment",
///     name="sa",
///     region="us-central1",
///     description="A service attachment configured with Terraform",
///     connection_preference="ACCEPT_AUTOMATIC",
///     enable_proxy_protocol=False,
///     nat_subnets=[subnetwork_psc.id],
///     target_service=forwarding_rule.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var healthCheck = new Gcp.Compute.HealthCheck("health_check", new()
///     {
///         Name = "sa",
///         CheckIntervalSec = 1,
///         TimeoutSec = 1,
///         TcpHealthCheck = new Gcp.Compute.Inputs.HealthCheckTcpHealthCheckArgs
///         {
///             Port = 80,
///         },
///     });
///
///     var backendService = new Gcp.Compute.BackendService("backend_service", new()
///     {
///         Name = "sa",
///         LoadBalancingScheme = "INTERNAL_MANAGED",
///         HealthChecks = healthCheck.Id,
///     });
///
///     var urlMap = new Gcp.Compute.URLMap("url_map", new()
///     {
///         Name = "sa",
///         Description = "Url map.",
///         DefaultService = backendService.Id,
///     });
///
///     var httpProxy = new Gcp.Compute.TargetHttpProxy("http_proxy", new()
///     {
///         Name = "sa",
///         Description = "a description",
///         UrlMap = urlMap.Id,
///     });
///
///     var network = new Gcp.Compute.Network("network", new()
///     {
///         Name = "sa",
///         AutoCreateSubnetworks = false,
///     });
///
///     var subnetworkProxy = new Gcp.Compute.Subnetwork("subnetwork_proxy", new()
///     {
///         Name = "sa-proxy",
///         Region = "us-central1",
///         Network = network.Id,
///         Purpose = "GLOBAL_MANAGED_PROXY",
///         Role = "ACTIVE",
///         IpCidrRange = "10.2.0.0/16",
///     });
///
///     var subnetwork = new Gcp.Compute.Subnetwork("subnetwork", new()
///     {
///         Name = "sa",
///         Region = "us-central1",
///         Network = network.Id,
///         IpCidrRange = "10.0.0.0/16",
///     });
///
///     var forwardingRule = new Gcp.Compute.GlobalForwardingRule("forwarding_rule", new()
///     {
///         Name = "sa",
///         Target = httpProxy.Id,
///         Network = network.Id,
///         Subnetwork = subnetwork.Id,
///         PortRange = "80",
///         LoadBalancingScheme = "INTERNAL_MANAGED",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             subnetworkProxy,
///         },
///     });
///
///     var subnetworkPsc = new Gcp.Compute.Subnetwork("subnetwork_psc", new()
///     {
///         Name = "sa-psc",
///         Region = "us-central1",
///         Network = network.Id,
///         Purpose = "PRIVATE_SERVICE_CONNECT",
///         IpCidrRange = "10.1.0.0/16",
///     });
///
///     var pscIlbServiceAttachment = new Gcp.Compute.ServiceAttachment("psc_ilb_service_attachment", new()
///     {
///         Name = "sa",
///         Region = "us-central1",
///         Description = "A service attachment configured with Terraform",
///         ConnectionPreference = "ACCEPT_AUTOMATIC",
///         EnableProxyProtocol = false,
///         NatSubnets = new[]
///         {
///             subnetworkPsc.Id,
///         },
///         TargetService = forwardingRule.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		healthCheck, err := compute.NewHealthCheck(ctx, "health_check", &compute.HealthCheckArgs{
/// 			Name:             pulumi.String("sa"),
/// 			CheckIntervalSec: pulumi.Int(1),
/// 			TimeoutSec:       pulumi.Int(1),
/// 			TcpHealthCheck: &compute.HealthCheckTcpHealthCheckArgs{
/// 				Port: pulumi.Int(80),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		backendService, err := compute.NewBackendService(ctx, "backend_service", &compute.BackendServiceArgs{
/// 			Name:                pulumi.String("sa"),
/// 			LoadBalancingScheme: pulumi.String("INTERNAL_MANAGED"),
/// 			HealthChecks:        healthCheck.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		urlMap, err := compute.NewURLMap(ctx, "url_map", &compute.URLMapArgs{
/// 			Name:           pulumi.String("sa"),
/// 			Description:    pulumi.String("Url map."),
/// 			DefaultService: backendService.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		httpProxy, err := compute.NewTargetHttpProxy(ctx, "http_proxy", &compute.TargetHttpProxyArgs{
/// 			Name:        pulumi.String("sa"),
/// 			Description: pulumi.String("a description"),
/// 			UrlMap:      urlMap.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		network, err := compute.NewNetwork(ctx, "network", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("sa"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		subnetworkProxy, err := compute.NewSubnetwork(ctx, "subnetwork_proxy", &compute.SubnetworkArgs{
/// 			Name:        pulumi.String("sa-proxy"),
/// 			Region:      pulumi.String("us-central1"),
/// 			Network:     network.ID(),
/// 			Purpose:     pulumi.String("GLOBAL_MANAGED_PROXY"),
/// 			Role:        pulumi.String("ACTIVE"),
/// 			IpCidrRange: pulumi.String("10.2.0.0/16"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		subnetwork, err := compute.NewSubnetwork(ctx, "subnetwork", &compute.SubnetworkArgs{
/// 			Name:        pulumi.String("sa"),
/// 			Region:      pulumi.String("us-central1"),
/// 			Network:     network.ID(),
/// 			IpCidrRange: pulumi.String("10.0.0.0/16"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		forwardingRule, err := compute.NewGlobalForwardingRule(ctx, "forwarding_rule", &compute.GlobalForwardingRuleArgs{
/// 			Name:                pulumi.String("sa"),
/// 			Target:              httpProxy.ID(),
/// 			Network:             network.ID(),
/// 			Subnetwork:          subnetwork.ID(),
/// 			PortRange:           pulumi.String("80"),
/// 			LoadBalancingScheme: pulumi.String("INTERNAL_MANAGED"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			subnetworkProxy,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		subnetworkPsc, err := compute.NewSubnetwork(ctx, "subnetwork_psc", &compute.SubnetworkArgs{
/// 			Name:        pulumi.String("sa-psc"),
/// 			Region:      pulumi.String("us-central1"),
/// 			Network:     network.ID(),
/// 			Purpose:     pulumi.String("PRIVATE_SERVICE_CONNECT"),
/// 			IpCidrRange: pulumi.String("10.1.0.0/16"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewServiceAttachment(ctx, "psc_ilb_service_attachment", &compute.ServiceAttachmentArgs{
/// 			Name:                 pulumi.String("sa"),
/// 			Region:               pulumi.String("us-central1"),
/// 			Description:          pulumi.String("A service attachment configured with Terraform"),
/// 			ConnectionPreference: pulumi.String("ACCEPT_AUTOMATIC"),
/// 			EnableProxyProtocol:  pulumi.Bool(false),
/// 			NatSubnets: pulumi.StringArray{
/// 				subnetworkPsc.ID(),
/// 			},
/// 			TargetService: forwardingRule.ID(),
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
/// import com.pulumi.gcp.compute.HealthCheck;
/// import com.pulumi.gcp.compute.HealthCheckArgs;
/// import com.pulumi.gcp.compute.inputs.HealthCheckTcpHealthCheckArgs;
/// import com.pulumi.gcp.compute.BackendService;
/// import com.pulumi.gcp.compute.BackendServiceArgs;
/// import com.pulumi.gcp.compute.URLMap;
/// import com.pulumi.gcp.compute.URLMapArgs;
/// import com.pulumi.gcp.compute.TargetHttpProxy;
/// import com.pulumi.gcp.compute.TargetHttpProxyArgs;
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.compute.Subnetwork;
/// import com.pulumi.gcp.compute.SubnetworkArgs;
/// import com.pulumi.gcp.compute.GlobalForwardingRule;
/// import com.pulumi.gcp.compute.GlobalForwardingRuleArgs;
/// import com.pulumi.gcp.compute.ServiceAttachment;
/// import com.pulumi.gcp.compute.ServiceAttachmentArgs;
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
///         var healthCheck = new HealthCheck("healthCheck", HealthCheckArgs.builder()
///             .name("sa")
///             .checkIntervalSec(1)
///             .timeoutSec(1)
///             .tcpHealthCheck(HealthCheckTcpHealthCheckArgs.builder()
///                 .port(80)
///                 .build())
///             .build());
///
///         var backendService = new BackendService("backendService", BackendServiceArgs.builder()
///             .name("sa")
///             .loadBalancingScheme("INTERNAL_MANAGED")
///             .healthChecks(healthCheck.id())
///             .build());
///
///         var urlMap = new URLMap("urlMap", URLMapArgs.builder()
///             .name("sa")
///             .description("Url map.")
///             .defaultService(backendService.id())
///             .build());
///
///         var httpProxy = new TargetHttpProxy("httpProxy", TargetHttpProxyArgs.builder()
///             .name("sa")
///             .description("a description")
///             .urlMap(urlMap.id())
///             .build());
///
///         var network = new Network("network", NetworkArgs.builder()
///             .name("sa")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var subnetworkProxy = new Subnetwork("subnetworkProxy", SubnetworkArgs.builder()
///             .name("sa-proxy")
///             .region("us-central1")
///             .network(network.id())
///             .purpose("GLOBAL_MANAGED_PROXY")
///             .role("ACTIVE")
///             .ipCidrRange("10.2.0.0/16")
///             .build());
///
///         var subnetwork = new Subnetwork("subnetwork", SubnetworkArgs.builder()
///             .name("sa")
///             .region("us-central1")
///             .network(network.id())
///             .ipCidrRange("10.0.0.0/16")
///             .build());
///
///         var forwardingRule = new GlobalForwardingRule("forwardingRule", GlobalForwardingRuleArgs.builder()
///             .name("sa")
///             .target(httpProxy.id())
///             .network(network.id())
///             .subnetwork(subnetwork.id())
///             .portRange("80")
///             .loadBalancingScheme("INTERNAL_MANAGED")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(subnetworkProxy)
///                 .build());
///
///         var subnetworkPsc = new Subnetwork("subnetworkPsc", SubnetworkArgs.builder()
///             .name("sa-psc")
///             .region("us-central1")
///             .network(network.id())
///             .purpose("PRIVATE_SERVICE_CONNECT")
///             .ipCidrRange("10.1.0.0/16")
///             .build());
///
///         var pscIlbServiceAttachment = new ServiceAttachment("pscIlbServiceAttachment", ServiceAttachmentArgs.builder()
///             .name("sa")
///             .region("us-central1")
///             .description("A service attachment configured with Terraform")
///             .connectionPreference("ACCEPT_AUTOMATIC")
///             .enableProxyProtocol(false)
///             .natSubnets(subnetworkPsc.id())
///             .targetService(forwardingRule.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   pscIlbServiceAttachment:
///     type: gcp:compute:ServiceAttachment
///     name: psc_ilb_service_attachment
///     properties:
///       name: sa
///       region: us-central1
///       description: A service attachment configured with Terraform
///       connectionPreference: ACCEPT_AUTOMATIC
///       enableProxyProtocol: false
///       natSubnets:
///         - ${subnetworkPsc.id}
///       targetService: ${forwardingRule.id}
///   forwardingRule:
///     type: gcp:compute:GlobalForwardingRule
///     name: forwarding_rule
///     properties:
///       name: sa
///       target: ${httpProxy.id}
///       network: ${network.id}
///       subnetwork: ${subnetwork.id}
///       portRange: '80'
///       loadBalancingScheme: INTERNAL_MANAGED
///     options:
///       dependsOn:
///         - ${subnetworkProxy}
///   httpProxy:
///     type: gcp:compute:TargetHttpProxy
///     name: http_proxy
///     properties:
///       name: sa
///       description: a description
///       urlMap: ${urlMap.id}
///   urlMap:
///     type: gcp:compute:URLMap
///     name: url_map
///     properties:
///       name: sa
///       description: Url map.
///       defaultService: ${backendService.id}
///   backendService:
///     type: gcp:compute:BackendService
///     name: backend_service
///     properties:
///       name: sa
///       loadBalancingScheme: INTERNAL_MANAGED
///       healthChecks: ${healthCheck.id}
///   healthCheck:
///     type: gcp:compute:HealthCheck
///     name: health_check
///     properties:
///       name: sa
///       checkIntervalSec: 1
///       timeoutSec: 1
///       tcpHealthCheck:
///         port: '80'
///   subnetworkPsc:
///     type: gcp:compute:Subnetwork
///     name: subnetwork_psc
///     properties:
///       name: sa-psc
///       region: us-central1
///       network: ${network.id}
///       purpose: PRIVATE_SERVICE_CONNECT
///       ipCidrRange: 10.1.0.0/16
///   subnetworkProxy:
///     type: gcp:compute:Subnetwork
///     name: subnetwork_proxy
///     properties:
///       name: sa-proxy
///       region: us-central1
///       network: ${network.id}
///       purpose: GLOBAL_MANAGED_PROXY
///       role: ACTIVE
///       ipCidrRange: 10.2.0.0/16
///   subnetwork:
///     type: gcp:compute:Subnetwork
///     properties:
///       name: sa
///       region: us-central1
///       network: ${network.id}
///       ipCidrRange: 10.0.0.0/16
///   network:
///     type: gcp:compute:Network
///     properties:
///       name: sa
///       autoCreateSubnetworks: false
/// ```
///
///
/// ## Import
///
/// ServiceAttachment can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/regions/{{region}}/serviceAttachments/{{name}}`
///
/// * `{{project}}/{{region}}/{{name}}`
///
/// * `{{region}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, ServiceAttachment can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/serviceAttachment:ServiceAttachment default projects/{{project}}/regions/{{region}}/serviceAttachments/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/serviceAttachment:ServiceAttachment default {{project}}/{{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/serviceAttachment:ServiceAttachment default {{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/serviceAttachment:ServiceAttachment default {{name}}
/// ```
class ServiceAttachment extends pulumi.CustomResource {
  /// An array of the consumer forwarding rules connected to this service
  /// attachment.
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>> connectedEndpoints;

  /// The connection preference to use for this service attachment. Valid
  /// values include "ACCEPT_AUTOMATIC", "ACCEPT_MANUAL".
  late final pulumi.Output<String> connectionPreference;

  /// An array of projects that are allowed to connect to this service
  /// attachment.
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>?> consumerAcceptLists;

  /// An array of projects that are not allowed to connect to this service
  /// attachment.
  late final pulumi.Output<List<String>?> consumerRejectLists;

  /// An optional description of this resource.
  late final pulumi.Output<String?> description;

  /// If specified, the domain name will be used during the integration between
  /// the PSC connected endpoints and the Cloud DNS. For example, this is a
  /// valid domain name: "p.mycompany.com.". Current max number of domain names
  /// supported is 1.
  late final pulumi.Output<List<String>?> domainNames;

  /// If true, enable the proxy protocol which is for supplying client TCP/IP
  /// address data in TCP connections that traverse proxies on their way to
  /// destination servers.
  late final pulumi.Output<bool> enableProxyProtocol;

  /// Fingerprint of this resource. This field is used internally during
  /// updates of this resource.
  late final pulumi.Output<String> fingerprint;

  /// Name of the resource. The name must be 1-63 characters long, and
  /// comply with RFC1035. Specifically, the name must be 1-63 characters
  /// long and match the regular expression `a-z?`
  /// which means the first character must be a lowercase letter, and all
  /// following characters must be a dash, lowercase letter, or digit,
  /// except the last character, which cannot be a dash.
  late final pulumi.Output<String> name;

  /// An array of subnets that is provided for NAT in this service attachment.
  late final pulumi.Output<List<String>> natSubnets;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The number of consumer spokes that connected Private Service Connect endpoints can be propagated to through Network Connectivity Center.
  /// This limit lets the service producer limit how many propagated Private Service Connect connections can be established to this service attachment from a single consumer.
  /// If the connection preference of the service attachment is ACCEPT_MANUAL, the limit applies to each project or network that is listed in the consumer accept list.
  /// If the connection preference of the service attachment is ACCEPT_AUTOMATIC, the limit applies to each project that contains a connected endpoint.
  /// If unspecified, the default propagated connection limit is 250. To explicitly send a zero value, set `send_propagated_connection_limit_if_zero = true`.
  late final pulumi.Output<int> propagatedConnectionLimit;

  /// An 128-bit global unique ID of the PSC service attachment.
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>> pscServiceAttachmentIds;

  /// This flag determines whether a consumer accept/reject list change can reconcile the statuses of existing ACCEPTED or REJECTED PSC endpoints.
  /// If false, connection policy update will only affect existing PENDING PSC endpoints. Existing ACCEPTED/REJECTED endpoints will remain untouched regardless how the connection policy is modified .
  /// If true, update will affect both PENDING and ACCEPTED/REJECTED PSC endpoints. For example, an ACCEPTED PSC endpoint will be moved to REJECTED if its project is added to the reject list.
  late final pulumi.Output<bool> reconcileConnections;

  /// URL of the region where the resource resides.
  late final pulumi.Output<String> region;

  /// The URI of the created resource.
  late final pulumi.Output<String> selfLink;

  /// Controls the behavior of propagated_connection_limit.
  /// When false, setting propagated_connection_limit to zero causes the provider to use to the API's default value.
  /// When true, the provider will set propagated_connection_limit to zero.
  /// Defaults to false.
  late final pulumi.Output<bool?> sendPropagatedConnectionLimitIfZero;

  /// If true, show NAT IPs of all connected endpoints.
  late final pulumi.Output<bool?> showNatIps;

  /// The URL of a service serving the endpoint identified by this service attachment.
  late final pulumi.Output<String> targetService;

  /// Tunneling configuration for this service attachment.
  /// Structure is documented below.
  late final pulumi.Output<ServiceAttachmentTunnelingConfig?> tunnelingConfig;

  /// Creates a new [ServiceAttachment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ServiceAttachment]. {@macro pulumi_compute_service_attachment_service_attachment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ServiceAttachment(
    String name, {
    ServiceAttachmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:compute/serviceAttachment:ServiceAttachment',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    connectedEndpoints = registerOutput<List<Map<String, dynamic>>>(
      'connectedEndpoints',
    );
    connectionPreference = registerOutput<String>('connectionPreference');
    consumerAcceptLists = registerOutput<List<Map<String, dynamic>>?>(
      'consumerAcceptLists',
    );
    consumerRejectLists = registerOutput<List<String>?>('consumerRejectLists');
    description = registerOutput<String?>('description');
    domainNames = registerOutput<List<String>?>('domainNames');
    enableProxyProtocol = registerOutput<bool>('enableProxyProtocol');
    fingerprint = registerOutput<String>('fingerprint');
    this.name = registerOutput<String>('name');
    natSubnets = registerOutput<List<String>>('natSubnets');
    project = registerOutput<String>('project');
    propagatedConnectionLimit = registerOutput<int>(
      'propagatedConnectionLimit',
    );
    pscServiceAttachmentIds = registerOutput<List<Map<String, dynamic>>>(
      'pscServiceAttachmentIds',
    );
    reconcileConnections = registerOutput<bool>('reconcileConnections');
    region = registerOutput<String>('region');
    selfLink = registerOutput<String>('selfLink');
    sendPropagatedConnectionLimitIfZero = registerOutput<bool?>(
      'sendPropagatedConnectionLimitIfZero',
    );
    showNatIps = registerOutput<bool?>('showNatIps');
    targetService = registerOutput<String>('targetService');
    tunnelingConfig = registerOutput<ServiceAttachmentTunnelingConfig?>(
      'tunnelingConfig',
    );
  }

  /// Gets an existing [ServiceAttachment] resource's state with the given [name] and [id].
  static ServiceAttachment get(
    String name,
    pulumi.Input<String> id, {
    ServiceAttachmentState? state,
  }) {
    return ServiceAttachment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ServiceAttachment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:compute/serviceAttachment:ServiceAttachment',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    connectedEndpoints = registerOutput<List<Map<String, dynamic>>>(
      'connectedEndpoints',
    );
    connectionPreference = registerOutput<String>('connectionPreference');
    consumerAcceptLists = registerOutput<List<Map<String, dynamic>>?>(
      'consumerAcceptLists',
    );
    consumerRejectLists = registerOutput<List<String>?>('consumerRejectLists');
    description = registerOutput<String?>('description');
    domainNames = registerOutput<List<String>?>('domainNames');
    enableProxyProtocol = registerOutput<bool>('enableProxyProtocol');
    fingerprint = registerOutput<String>('fingerprint');
    this.name = registerOutput<String>('name');
    natSubnets = registerOutput<List<String>>('natSubnets');
    project = registerOutput<String>('project');
    propagatedConnectionLimit = registerOutput<int>(
      'propagatedConnectionLimit',
    );
    pscServiceAttachmentIds = registerOutput<List<Map<String, dynamic>>>(
      'pscServiceAttachmentIds',
    );
    reconcileConnections = registerOutput<bool>('reconcileConnections');
    region = registerOutput<String>('region');
    selfLink = registerOutput<String>('selfLink');
    sendPropagatedConnectionLimitIfZero = registerOutput<bool?>(
      'sendPropagatedConnectionLimitIfZero',
    );
    showNatIps = registerOutput<bool?>('showNatIps');
    targetService = registerOutput<String>('targetService');
    tunnelingConfig = registerOutput<ServiceAttachmentTunnelingConfig?>(
      'tunnelingConfig',
    );
  }
}
