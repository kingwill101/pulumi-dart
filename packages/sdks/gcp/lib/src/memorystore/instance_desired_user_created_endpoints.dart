import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_desired_user_created_endpoints_args.dart';
import 'instance_desired_user_created_endpoints_state.dart';

/// ## Example Usage
///
/// ### Memorystore Instance Desired User Created Endpoints
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const network1 = new gcp.compute.Network("network1", {
///     name: "net1",
///     autoCreateSubnetworks: false,
/// });
/// const subnetNetwork1 = new gcp.compute.Subnetwork("subnet_network1", {
///     name: "subnet-net1",
///     ipCidrRange: "10.0.0.248/29",
///     region: "us-central1",
///     network: network1.id,
/// });
/// const ip1Network1 = new gcp.compute.Address("ip1_network1", {
///     name: "ip1-net1",
///     region: "us-central1",
///     subnetwork: subnetNetwork1.id,
///     addressType: "INTERNAL",
///     purpose: "GCE_ENDPOINT",
/// });
/// //Valkey instance without endpoints
/// const instance_user_connInstance = new gcp.memorystore.Instance("instance-user-conn", {
///     instanceId: "instance-user-conn",
///     shardCount: 1,
///     location: "us-central1",
///     deletionProtectionEnabled: false,
/// });
/// const forwardingRule1Network1 = new gcp.compute.ForwardingRule("forwarding_rule1_network1", {
///     name: "fwd1-net1",
///     region: "us-central1",
///     ipAddress: ip1Network1.id,
///     loadBalancingScheme: "",
///     network: network1.id,
///     target: instance_user_connInstance.pscAttachmentDetails.apply(pscAttachmentDetails => pscAttachmentDetails[0].serviceAttachment),
/// });
/// const ip2Network1 = new gcp.compute.Address("ip2_network1", {
///     name: "ip2-net1",
///     region: "us-central1",
///     subnetwork: subnetNetwork1.id,
///     addressType: "INTERNAL",
///     purpose: "GCE_ENDPOINT",
/// });
/// const forwardingRule2Network1 = new gcp.compute.ForwardingRule("forwarding_rule2_network1", {
///     name: "fwd2-net1",
///     region: "us-central1",
///     ipAddress: ip2Network1.id,
///     loadBalancingScheme: "",
///     network: network1.id,
///     target: instance_user_connInstance.pscAttachmentDetails.apply(pscAttachmentDetails => pscAttachmentDetails[1].serviceAttachment),
/// });
/// const network2 = new gcp.compute.Network("network2", {
///     name: "network2",
///     autoCreateSubnetworks: false,
/// });
/// const subnetNetwork2 = new gcp.compute.Subnetwork("subnet_network2", {
///     name: "subnet-net2",
///     ipCidrRange: "10.0.0.248/29",
///     region: "us-central1",
///     network: network2.id,
/// });
/// const ip1Network2 = new gcp.compute.Address("ip1_network2", {
///     name: "ip1-net2",
///     region: "us-central1",
///     subnetwork: subnetNetwork2.id,
///     addressType: "INTERNAL",
///     purpose: "GCE_ENDPOINT",
/// });
/// const forwardingRule1Network2 = new gcp.compute.ForwardingRule("forwarding_rule1_network2", {
///     name: "fwd1-net2",
///     region: "us-central1",
///     ipAddress: ip1Network2.id,
///     loadBalancingScheme: "",
///     network: network2.id,
///     target: instance_user_connInstance.pscAttachmentDetails.apply(pscAttachmentDetails => pscAttachmentDetails[0].serviceAttachment),
/// });
/// const ip2Network2 = new gcp.compute.Address("ip2_network2", {
///     name: "ip2-net2",
///     region: "us-central1",
///     subnetwork: subnetNetwork2.id,
///     addressType: "INTERNAL",
///     purpose: "GCE_ENDPOINT",
/// });
/// const forwardingRule2Network2 = new gcp.compute.ForwardingRule("forwarding_rule2_network2", {
///     name: "fwd2-net2",
///     region: "us-central1",
///     ipAddress: ip2Network2.id,
///     loadBalancingScheme: "",
///     network: network2.id,
///     target: instance_user_connInstance.pscAttachmentDetails.apply(pscAttachmentDetails => pscAttachmentDetails[1].serviceAttachment),
/// });
/// const instance_user_conn = new gcp.memorystore.InstanceDesiredUserCreatedEndpoints("instance-user-conn", {
///     name: "instance-user-conn",
///     region: "us-central1",
///     desiredUserCreatedEndpoints: [
///         {
///             connections: [
///                 {
///                     pscConnection: {
///                         pscConnectionId: forwardingRule1Network1.pscConnectionId,
///                         ipAddress: ip1Network1.address,
///                         forwardingRule: forwardingRule1Network1.id,
///                         network: network1.id,
///                         serviceAttachment: instance_user_connInstance.pscAttachmentDetails.apply(pscAttachmentDetails => pscAttachmentDetails[0].serviceAttachment),
///                     },
///                 },
///                 {
///                     pscConnection: {
///                         pscConnectionId: forwardingRule2Network1.pscConnectionId,
///                         ipAddress: ip2Network1.address,
///                         forwardingRule: forwardingRule2Network1.id,
///                         network: network1.id,
///                         serviceAttachment: instance_user_connInstance.pscAttachmentDetails.apply(pscAttachmentDetails => pscAttachmentDetails[1].serviceAttachment),
///                     },
///                 },
///             ],
///         },
///         {
///             connections: [
///                 {
///                     pscConnection: {
///                         pscConnectionId: forwardingRule1Network2.pscConnectionId,
///                         ipAddress: ip1Network2.address,
///                         forwardingRule: forwardingRule1Network2.id,
///                         network: network2.id,
///                         serviceAttachment: instance_user_connInstance.pscAttachmentDetails.apply(pscAttachmentDetails => pscAttachmentDetails[0].serviceAttachment),
///                     },
///                 },
///                 {
///                     pscConnection: {
///                         pscConnectionId: forwardingRule2Network2.pscConnectionId,
///                         ipAddress: ip2Network2.address,
///                         forwardingRule: forwardingRule2Network2.id,
///                         network: network2.id,
///                         serviceAttachment: instance_user_connInstance.pscAttachmentDetails.apply(pscAttachmentDetails => pscAttachmentDetails[1].serviceAttachment),
///                     },
///                 },
///             ],
///         },
///     ],
/// });
/// const project = gcp.organizations.getProject({});
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// network1 = gcp.compute.Network("network1",
///     name="net1",
///     auto_create_subnetworks=False)
/// subnet_network1 = gcp.compute.Subnetwork("subnet_network1",
///     name="subnet-net1",
///     ip_cidr_range="10.0.0.248/29",
///     region="us-central1",
///     network=network1.id)
/// ip1_network1 = gcp.compute.Address("ip1_network1",
///     name="ip1-net1",
///     region="us-central1",
///     subnetwork=subnet_network1.id,
///     address_type="INTERNAL",
///     purpose="GCE_ENDPOINT")
/// #Valkey instance without endpoints
/// instance_user_conn_instance = gcp.memorystore.Instance("instance-user-conn",
///     instance_id="instance-user-conn",
///     shard_count=1,
///     location="us-central1",
///     deletion_protection_enabled=False)
/// forwarding_rule1_network1 = gcp.compute.ForwardingRule("forwarding_rule1_network1",
///     name="fwd1-net1",
///     region="us-central1",
///     ip_address=ip1_network1.id,
///     load_balancing_scheme="",
///     network=network1.id,
///     target=instance_user_conn_instance.psc_attachment_details[0].service_attachment)
/// ip2_network1 = gcp.compute.Address("ip2_network1",
///     name="ip2-net1",
///     region="us-central1",
///     subnetwork=subnet_network1.id,
///     address_type="INTERNAL",
///     purpose="GCE_ENDPOINT")
/// forwarding_rule2_network1 = gcp.compute.ForwardingRule("forwarding_rule2_network1",
///     name="fwd2-net1",
///     region="us-central1",
///     ip_address=ip2_network1.id,
///     load_balancing_scheme="",
///     network=network1.id,
///     target=instance_user_conn_instance.psc_attachment_details[1].service_attachment)
/// network2 = gcp.compute.Network("network2",
///     name="network2",
///     auto_create_subnetworks=False)
/// subnet_network2 = gcp.compute.Subnetwork("subnet_network2",
///     name="subnet-net2",
///     ip_cidr_range="10.0.0.248/29",
///     region="us-central1",
///     network=network2.id)
/// ip1_network2 = gcp.compute.Address("ip1_network2",
///     name="ip1-net2",
///     region="us-central1",
///     subnetwork=subnet_network2.id,
///     address_type="INTERNAL",
///     purpose="GCE_ENDPOINT")
/// forwarding_rule1_network2 = gcp.compute.ForwardingRule("forwarding_rule1_network2",
///     name="fwd1-net2",
///     region="us-central1",
///     ip_address=ip1_network2.id,
///     load_balancing_scheme="",
///     network=network2.id,
///     target=instance_user_conn_instance.psc_attachment_details[0].service_attachment)
/// ip2_network2 = gcp.compute.Address("ip2_network2",
///     name="ip2-net2",
///     region="us-central1",
///     subnetwork=subnet_network2.id,
///     address_type="INTERNAL",
///     purpose="GCE_ENDPOINT")
/// forwarding_rule2_network2 = gcp.compute.ForwardingRule("forwarding_rule2_network2",
///     name="fwd2-net2",
///     region="us-central1",
///     ip_address=ip2_network2.id,
///     load_balancing_scheme="",
///     network=network2.id,
///     target=instance_user_conn_instance.psc_attachment_details[1].service_attachment)
/// instance_user_conn = gcp.memorystore.InstanceDesiredUserCreatedEndpoints("instance-user-conn",
///     name="instance-user-conn",
///     region="us-central1",
///     desired_user_created_endpoints=[
///         {
///             "connections": [
///                 {
///                     "psc_connection": {
///                         "psc_connection_id": forwarding_rule1_network1.psc_connection_id,
///                         "ip_address": ip1_network1.address,
///                         "forwarding_rule": forwarding_rule1_network1.id,
///                         "network": network1.id,
///                         "service_attachment": instance_user_conn_instance.psc_attachment_details[0].service_attachment,
///                     },
///                 },
///                 {
///                     "psc_connection": {
///                         "psc_connection_id": forwarding_rule2_network1.psc_connection_id,
///                         "ip_address": ip2_network1.address,
///                         "forwarding_rule": forwarding_rule2_network1.id,
///                         "network": network1.id,
///                         "service_attachment": instance_user_conn_instance.psc_attachment_details[1].service_attachment,
///                     },
///                 },
///             ],
///         },
///         {
///             "connections": [
///                 {
///                     "psc_connection": {
///                         "psc_connection_id": forwarding_rule1_network2.psc_connection_id,
///                         "ip_address": ip1_network2.address,
///                         "forwarding_rule": forwarding_rule1_network2.id,
///                         "network": network2.id,
///                         "service_attachment": instance_user_conn_instance.psc_attachment_details[0].service_attachment,
///                     },
///                 },
///                 {
///                     "psc_connection": {
///                         "psc_connection_id": forwarding_rule2_network2.psc_connection_id,
///                         "ip_address": ip2_network2.address,
///                         "forwarding_rule": forwarding_rule2_network2.id,
///                         "network": network2.id,
///                         "service_attachment": instance_user_conn_instance.psc_attachment_details[1].service_attachment,
///                     },
///                 },
///             ],
///         },
///     ])
/// project = gcp.organizations.get_project()
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var network1 = new Gcp.Compute.Network("network1", new()
///     {
///         Name = "net1",
///         AutoCreateSubnetworks = false,
///     });
///
///     var subnetNetwork1 = new Gcp.Compute.Subnetwork("subnet_network1", new()
///     {
///         Name = "subnet-net1",
///         IpCidrRange = "10.0.0.248/29",
///         Region = "us-central1",
///         Network = network1.Id,
///     });
///
///     var ip1Network1 = new Gcp.Compute.Address("ip1_network1", new()
///     {
///         Name = "ip1-net1",
///         Region = "us-central1",
///         Subnetwork = subnetNetwork1.Id,
///         AddressType = "INTERNAL",
///         Purpose = "GCE_ENDPOINT",
///     });
///
///     //Valkey instance without endpoints
///     var instance_user_connInstance = new Gcp.MemoryStore.Instance("instance-user-conn", new()
///     {
///         InstanceId = "instance-user-conn",
///         ShardCount = 1,
///         Location = "us-central1",
///         DeletionProtectionEnabled = false,
///     });
///
///     var forwardingRule1Network1 = new Gcp.Compute.ForwardingRule("forwarding_rule1_network1", new()
///     {
///         Name = "fwd1-net1",
///         Region = "us-central1",
///         IpAddress = ip1Network1.Id,
///         LoadBalancingScheme = "",
///         Network = network1.Id,
///         Target = instance_user_connInstance.PscAttachmentDetails.Apply(pscAttachmentDetails => pscAttachmentDetails[0].ServiceAttachment),
///     });
///
///     var ip2Network1 = new Gcp.Compute.Address("ip2_network1", new()
///     {
///         Name = "ip2-net1",
///         Region = "us-central1",
///         Subnetwork = subnetNetwork1.Id,
///         AddressType = "INTERNAL",
///         Purpose = "GCE_ENDPOINT",
///     });
///
///     var forwardingRule2Network1 = new Gcp.Compute.ForwardingRule("forwarding_rule2_network1", new()
///     {
///         Name = "fwd2-net1",
///         Region = "us-central1",
///         IpAddress = ip2Network1.Id,
///         LoadBalancingScheme = "",
///         Network = network1.Id,
///         Target = instance_user_connInstance.PscAttachmentDetails.Apply(pscAttachmentDetails => pscAttachmentDetails[1].ServiceAttachment),
///     });
///
///     var network2 = new Gcp.Compute.Network("network2", new()
///     {
///         Name = "network2",
///         AutoCreateSubnetworks = false,
///     });
///
///     var subnetNetwork2 = new Gcp.Compute.Subnetwork("subnet_network2", new()
///     {
///         Name = "subnet-net2",
///         IpCidrRange = "10.0.0.248/29",
///         Region = "us-central1",
///         Network = network2.Id,
///     });
///
///     var ip1Network2 = new Gcp.Compute.Address("ip1_network2", new()
///     {
///         Name = "ip1-net2",
///         Region = "us-central1",
///         Subnetwork = subnetNetwork2.Id,
///         AddressType = "INTERNAL",
///         Purpose = "GCE_ENDPOINT",
///     });
///
///     var forwardingRule1Network2 = new Gcp.Compute.ForwardingRule("forwarding_rule1_network2", new()
///     {
///         Name = "fwd1-net2",
///         Region = "us-central1",
///         IpAddress = ip1Network2.Id,
///         LoadBalancingScheme = "",
///         Network = network2.Id,
///         Target = instance_user_connInstance.PscAttachmentDetails.Apply(pscAttachmentDetails => pscAttachmentDetails[0].ServiceAttachment),
///     });
///
///     var ip2Network2 = new Gcp.Compute.Address("ip2_network2", new()
///     {
///         Name = "ip2-net2",
///         Region = "us-central1",
///         Subnetwork = subnetNetwork2.Id,
///         AddressType = "INTERNAL",
///         Purpose = "GCE_ENDPOINT",
///     });
///
///     var forwardingRule2Network2 = new Gcp.Compute.ForwardingRule("forwarding_rule2_network2", new()
///     {
///         Name = "fwd2-net2",
///         Region = "us-central1",
///         IpAddress = ip2Network2.Id,
///         LoadBalancingScheme = "",
///         Network = network2.Id,
///         Target = instance_user_connInstance.PscAttachmentDetails.Apply(pscAttachmentDetails => pscAttachmentDetails[1].ServiceAttachment),
///     });
///
///     var instance_user_conn = new Gcp.MemoryStore.InstanceDesiredUserCreatedEndpoints("instance-user-conn", new()
///     {
///         Name = "instance-user-conn",
///         Region = "us-central1",
///         DesiredUserCreatedEndpoints = new[]
///         {
///             new Gcp.MemoryStore.Inputs.InstanceDesiredUserCreatedEndpointsDesiredUserCreatedEndpointArgs
///             {
///                 Connections = new[]
///                 {
///                     new Gcp.MemoryStore.Inputs.InstanceDesiredUserCreatedEndpointsDesiredUserCreatedEndpointConnectionArgs
///                     {
///                         PscConnection = new Gcp.MemoryStore.Inputs.InstanceDesiredUserCreatedEndpointsDesiredUserCreatedEndpointConnectionPscConnectionArgs
///                         {
///                             PscConnectionId = forwardingRule1Network1.PscConnectionId,
///                             IpAddress = ip1Network1.IPAddress,
///                             ForwardingRule = forwardingRule1Network1.Id,
///                             Network = network1.Id,
///                             ServiceAttachment = instance_user_connInstance.PscAttachmentDetails.Apply(pscAttachmentDetails => pscAttachmentDetails[0].ServiceAttachment),
///                         },
///                     },
///                     new Gcp.MemoryStore.Inputs.InstanceDesiredUserCreatedEndpointsDesiredUserCreatedEndpointConnectionArgs
///                     {
///                         PscConnection = new Gcp.MemoryStore.Inputs.InstanceDesiredUserCreatedEndpointsDesiredUserCreatedEndpointConnectionPscConnectionArgs
///                         {
///                             PscConnectionId = forwardingRule2Network1.PscConnectionId,
///                             IpAddress = ip2Network1.IPAddress,
///                             ForwardingRule = forwardingRule2Network1.Id,
///                             Network = network1.Id,
///                             ServiceAttachment = instance_user_connInstance.PscAttachmentDetails.Apply(pscAttachmentDetails => pscAttachmentDetails[1].ServiceAttachment),
///                         },
///                     },
///                 },
///             },
///             new Gcp.MemoryStore.Inputs.InstanceDesiredUserCreatedEndpointsDesiredUserCreatedEndpointArgs
///             {
///                 Connections = new[]
///                 {
///                     new Gcp.MemoryStore.Inputs.InstanceDesiredUserCreatedEndpointsDesiredUserCreatedEndpointConnectionArgs
///                     {
///                         PscConnection = new Gcp.MemoryStore.Inputs.InstanceDesiredUserCreatedEndpointsDesiredUserCreatedEndpointConnectionPscConnectionArgs
///                         {
///                             PscConnectionId = forwardingRule1Network2.PscConnectionId,
///                             IpAddress = ip1Network2.IPAddress,
///                             ForwardingRule = forwardingRule1Network2.Id,
///                             Network = network2.Id,
///                             ServiceAttachment = instance_user_connInstance.PscAttachmentDetails.Apply(pscAttachmentDetails => pscAttachmentDetails[0].ServiceAttachment),
///                         },
///                     },
///                     new Gcp.MemoryStore.Inputs.InstanceDesiredUserCreatedEndpointsDesiredUserCreatedEndpointConnectionArgs
///                     {
///                         PscConnection = new Gcp.MemoryStore.Inputs.InstanceDesiredUserCreatedEndpointsDesiredUserCreatedEndpointConnectionPscConnectionArgs
///                         {
///                             PscConnectionId = forwardingRule2Network2.PscConnectionId,
///                             IpAddress = ip2Network2.IPAddress,
///                             ForwardingRule = forwardingRule2Network2.Id,
///                             Network = network2.Id,
///                             ServiceAttachment = instance_user_connInstance.PscAttachmentDetails.Apply(pscAttachmentDetails => pscAttachmentDetails[1].ServiceAttachment),
///                         },
///                     },
///                 },
///             },
///         },
///     });
///
///     var project = Gcp.Organizations.GetProject.Invoke();
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/memorystore"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		network1, err := compute.NewNetwork(ctx, "network1", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("net1"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		subnetNetwork1, err := compute.NewSubnetwork(ctx, "subnet_network1", &compute.SubnetworkArgs{
/// 			Name:        pulumi.String("subnet-net1"),
/// 			IpCidrRange: pulumi.String("10.0.0.248/29"),
/// 			Region:      pulumi.String("us-central1"),
/// 			Network:     network1.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ip1Network1, err := compute.NewAddress(ctx, "ip1_network1", &compute.AddressArgs{
/// 			Name:        pulumi.String("ip1-net1"),
/// 			Region:      pulumi.String("us-central1"),
/// 			Subnetwork:  subnetNetwork1.ID(),
/// 			AddressType: pulumi.String("INTERNAL"),
/// 			Purpose:     pulumi.String("GCE_ENDPOINT"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Valkey instance without endpoints
/// 		instance_user_connInstance, err := memorystore.NewInstance(ctx, "instance-user-conn", &memorystore.InstanceArgs{
/// 			InstanceId:                pulumi.String("instance-user-conn"),
/// 			ShardCount:                pulumi.Int(1),
/// 			Location:                  pulumi.String("us-central1"),
/// 			DeletionProtectionEnabled: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		forwardingRule1Network1, err := compute.NewForwardingRule(ctx, "forwarding_rule1_network1", &compute.ForwardingRuleArgs{
/// 			Name:                pulumi.String("fwd1-net1"),
/// 			Region:              pulumi.String("us-central1"),
/// 			IpAddress:           ip1Network1.ID(),
/// 			LoadBalancingScheme: pulumi.String(""),
/// 			Network:             network1.ID(),
/// 			Target: pulumi.String(instance_user_connInstance.PscAttachmentDetails.ApplyT(func(pscAttachmentDetails []memorystore.InstancePscAttachmentDetail) (*string, error) {
/// 				return &pscAttachmentDetails[0].ServiceAttachment, nil
/// 			}).(pulumi.StringPtrOutput)),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ip2Network1, err := compute.NewAddress(ctx, "ip2_network1", &compute.AddressArgs{
/// 			Name:        pulumi.String("ip2-net1"),
/// 			Region:      pulumi.String("us-central1"),
/// 			Subnetwork:  subnetNetwork1.ID(),
/// 			AddressType: pulumi.String("INTERNAL"),
/// 			Purpose:     pulumi.String("GCE_ENDPOINT"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		forwardingRule2Network1, err := compute.NewForwardingRule(ctx, "forwarding_rule2_network1", &compute.ForwardingRuleArgs{
/// 			Name:                pulumi.String("fwd2-net1"),
/// 			Region:              pulumi.String("us-central1"),
/// 			IpAddress:           ip2Network1.ID(),
/// 			LoadBalancingScheme: pulumi.String(""),
/// 			Network:             network1.ID(),
/// 			Target: pulumi.String(instance_user_connInstance.PscAttachmentDetails.ApplyT(func(pscAttachmentDetails []memorystore.InstancePscAttachmentDetail) (*string, error) {
/// 				return &pscAttachmentDetails[1].ServiceAttachment, nil
/// 			}).(pulumi.StringPtrOutput)),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		network2, err := compute.NewNetwork(ctx, "network2", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("network2"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		subnetNetwork2, err := compute.NewSubnetwork(ctx, "subnet_network2", &compute.SubnetworkArgs{
/// 			Name:        pulumi.String("subnet-net2"),
/// 			IpCidrRange: pulumi.String("10.0.0.248/29"),
/// 			Region:      pulumi.String("us-central1"),
/// 			Network:     network2.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ip1Network2, err := compute.NewAddress(ctx, "ip1_network2", &compute.AddressArgs{
/// 			Name:        pulumi.String("ip1-net2"),
/// 			Region:      pulumi.String("us-central1"),
/// 			Subnetwork:  subnetNetwork2.ID(),
/// 			AddressType: pulumi.String("INTERNAL"),
/// 			Purpose:     pulumi.String("GCE_ENDPOINT"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		forwardingRule1Network2, err := compute.NewForwardingRule(ctx, "forwarding_rule1_network2", &compute.ForwardingRuleArgs{
/// 			Name:                pulumi.String("fwd1-net2"),
/// 			Region:              pulumi.String("us-central1"),
/// 			IpAddress:           ip1Network2.ID(),
/// 			LoadBalancingScheme: pulumi.String(""),
/// 			Network:             network2.ID(),
/// 			Target: pulumi.String(instance_user_connInstance.PscAttachmentDetails.ApplyT(func(pscAttachmentDetails []memorystore.InstancePscAttachmentDetail) (*string, error) {
/// 				return &pscAttachmentDetails[0].ServiceAttachment, nil
/// 			}).(pulumi.StringPtrOutput)),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ip2Network2, err := compute.NewAddress(ctx, "ip2_network2", &compute.AddressArgs{
/// 			Name:        pulumi.String("ip2-net2"),
/// 			Region:      pulumi.String("us-central1"),
/// 			Subnetwork:  subnetNetwork2.ID(),
/// 			AddressType: pulumi.String("INTERNAL"),
/// 			Purpose:     pulumi.String("GCE_ENDPOINT"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		forwardingRule2Network2, err := compute.NewForwardingRule(ctx, "forwarding_rule2_network2", &compute.ForwardingRuleArgs{
/// 			Name:                pulumi.String("fwd2-net2"),
/// 			Region:              pulumi.String("us-central1"),
/// 			IpAddress:           ip2Network2.ID(),
/// 			LoadBalancingScheme: pulumi.String(""),
/// 			Network:             network2.ID(),
/// 			Target: pulumi.String(instance_user_connInstance.PscAttachmentDetails.ApplyT(func(pscAttachmentDetails []memorystore.InstancePscAttachmentDetail) (*string, error) {
/// 				return &pscAttachmentDetails[1].ServiceAttachment, nil
/// 			}).(pulumi.StringPtrOutput)),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = memorystore.NewInstanceDesiredUserCreatedEndpoints(ctx, "instance-user-conn", &memorystore.InstanceDesiredUserCreatedEndpointsArgs{
/// 			Name:   pulumi.String("instance-user-conn"),
/// 			Region: pulumi.String("us-central1"),
/// 			DesiredUserCreatedEndpoints: memorystore.InstanceDesiredUserCreatedEndpointsDesiredUserCreatedEndpointArray{
/// 				&memorystore.InstanceDesiredUserCreatedEndpointsDesiredUserCreatedEndpointArgs{
/// 					Connections: memorystore.InstanceDesiredUserCreatedEndpointsDesiredUserCreatedEndpointConnectionArray{
/// 						&memorystore.InstanceDesiredUserCreatedEndpointsDesiredUserCreatedEndpointConnectionArgs{
/// 							PscConnection: &memorystore.InstanceDesiredUserCreatedEndpointsDesiredUserCreatedEndpointConnectionPscConnectionArgs{
/// 								PscConnectionId: forwardingRule1Network1.PscConnectionId,
/// 								IpAddress:       ip1Network1.Address,
/// 								ForwardingRule:  forwardingRule1Network1.ID(),
/// 								Network:         network1.ID(),
/// 								ServiceAttachment: instance_user_connInstance.PscAttachmentDetails.ApplyT(func(pscAttachmentDetails []memorystore.InstancePscAttachmentDetail) (*string, error) {
/// 									return &pscAttachmentDetails[0].ServiceAttachment, nil
/// 								}).(pulumi.StringPtrOutput),
/// 							},
/// 						},
/// 						&memorystore.InstanceDesiredUserCreatedEndpointsDesiredUserCreatedEndpointConnectionArgs{
/// 							PscConnection: &memorystore.InstanceDesiredUserCreatedEndpointsDesiredUserCreatedEndpointConnectionPscConnectionArgs{
/// 								PscConnectionId: forwardingRule2Network1.PscConnectionId,
/// 								IpAddress:       ip2Network1.Address,
/// 								ForwardingRule:  forwardingRule2Network1.ID(),
/// 								Network:         network1.ID(),
/// 								ServiceAttachment: instance_user_connInstance.PscAttachmentDetails.ApplyT(func(pscAttachmentDetails []memorystore.InstancePscAttachmentDetail) (*string, error) {
/// 									return &pscAttachmentDetails[1].ServiceAttachment, nil
/// 								}).(pulumi.StringPtrOutput),
/// 							},
/// 						},
/// 					},
/// 				},
/// 				&memorystore.InstanceDesiredUserCreatedEndpointsDesiredUserCreatedEndpointArgs{
/// 					Connections: memorystore.InstanceDesiredUserCreatedEndpointsDesiredUserCreatedEndpointConnectionArray{
/// 						&memorystore.InstanceDesiredUserCreatedEndpointsDesiredUserCreatedEndpointConnectionArgs{
/// 							PscConnection: &memorystore.InstanceDesiredUserCreatedEndpointsDesiredUserCreatedEndpointConnectionPscConnectionArgs{
/// 								PscConnectionId: forwardingRule1Network2.PscConnectionId,
/// 								IpAddress:       ip1Network2.Address,
/// 								ForwardingRule:  forwardingRule1Network2.ID(),
/// 								Network:         network2.ID(),
/// 								ServiceAttachment: instance_user_connInstance.PscAttachmentDetails.ApplyT(func(pscAttachmentDetails []memorystore.InstancePscAttachmentDetail) (*string, error) {
/// 									return &pscAttachmentDetails[0].ServiceAttachment, nil
/// 								}).(pulumi.StringPtrOutput),
/// 							},
/// 						},
/// 						&memorystore.InstanceDesiredUserCreatedEndpointsDesiredUserCreatedEndpointConnectionArgs{
/// 							PscConnection: &memorystore.InstanceDesiredUserCreatedEndpointsDesiredUserCreatedEndpointConnectionPscConnectionArgs{
/// 								PscConnectionId: forwardingRule2Network2.PscConnectionId,
/// 								IpAddress:       ip2Network2.Address,
/// 								ForwardingRule:  forwardingRule2Network2.ID(),
/// 								Network:         network2.ID(),
/// 								ServiceAttachment: instance_user_connInstance.PscAttachmentDetails.ApplyT(func(pscAttachmentDetails []memorystore.InstancePscAttachmentDetail) (*string, error) {
/// 									return &pscAttachmentDetails[1].ServiceAttachment, nil
/// 								}).(pulumi.StringPtrOutput),
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
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
/// import com.pulumi.gcp.compute.Subnetwork;
/// import com.pulumi.gcp.compute.SubnetworkArgs;
/// import com.pulumi.gcp.compute.Address;
/// import com.pulumi.gcp.compute.AddressArgs;
/// import com.pulumi.gcp.memorystore.Instance;
/// import com.pulumi.gcp.memorystore.InstanceArgs;
/// import com.pulumi.gcp.compute.ForwardingRule;
/// import com.pulumi.gcp.compute.ForwardingRuleArgs;
/// import com.pulumi.gcp.memorystore.InstanceDesiredUserCreatedEndpoints;
/// import com.pulumi.gcp.memorystore.InstanceDesiredUserCreatedEndpointsArgs;
/// import com.pulumi.gcp.memorystore.inputs.InstanceDesiredUserCreatedEndpointsDesiredUserCreatedEndpointArgs;
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
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
///         var network1 = new Network("network1", NetworkArgs.builder()
///             .name("net1")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var subnetNetwork1 = new Subnetwork("subnetNetwork1", SubnetworkArgs.builder()
///             .name("subnet-net1")
///             .ipCidrRange("10.0.0.248/29")
///             .region("us-central1")
///             .network(network1.id())
///             .build());
///
///         var ip1Network1 = new Address("ip1Network1", AddressArgs.builder()
///             .name("ip1-net1")
///             .region("us-central1")
///             .subnetwork(subnetNetwork1.id())
///             .addressType("INTERNAL")
///             .purpose("GCE_ENDPOINT")
///             .build());
///
///         //Valkey instance without endpoints
///         var instance_user_connInstance = new Instance("instance-user-connInstance", InstanceArgs.builder()
///             .instanceId("instance-user-conn")
///             .shardCount(1)
///             .location("us-central1")
///             .deletionProtectionEnabled(false)
///             .build());
///
///         var forwardingRule1Network1 = new ForwardingRule("forwardingRule1Network1", ForwardingRuleArgs.builder()
///             .name("fwd1-net1")
///             .region("us-central1")
///             .ipAddress(ip1Network1.id())
///             .loadBalancingScheme("")
///             .network(network1.id())
///             .target(instance_user_connInstance.pscAttachmentDetails().applyValue(_pscAttachmentDetails -> _pscAttachmentDetails[0].serviceAttachment()))
///             .build());
///
///         var ip2Network1 = new Address("ip2Network1", AddressArgs.builder()
///             .name("ip2-net1")
///             .region("us-central1")
///             .subnetwork(subnetNetwork1.id())
///             .addressType("INTERNAL")
///             .purpose("GCE_ENDPOINT")
///             .build());
///
///         var forwardingRule2Network1 = new ForwardingRule("forwardingRule2Network1", ForwardingRuleArgs.builder()
///             .name("fwd2-net1")
///             .region("us-central1")
///             .ipAddress(ip2Network1.id())
///             .loadBalancingScheme("")
///             .network(network1.id())
///             .target(instance_user_connInstance.pscAttachmentDetails().applyValue(_pscAttachmentDetails -> _pscAttachmentDetails[1].serviceAttachment()))
///             .build());
///
///         var network2 = new Network("network2", NetworkArgs.builder()
///             .name("network2")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var subnetNetwork2 = new Subnetwork("subnetNetwork2", SubnetworkArgs.builder()
///             .name("subnet-net2")
///             .ipCidrRange("10.0.0.248/29")
///             .region("us-central1")
///             .network(network2.id())
///             .build());
///
///         var ip1Network2 = new Address("ip1Network2", AddressArgs.builder()
///             .name("ip1-net2")
///             .region("us-central1")
///             .subnetwork(subnetNetwork2.id())
///             .addressType("INTERNAL")
///             .purpose("GCE_ENDPOINT")
///             .build());
///
///         var forwardingRule1Network2 = new ForwardingRule("forwardingRule1Network2", ForwardingRuleArgs.builder()
///             .name("fwd1-net2")
///             .region("us-central1")
///             .ipAddress(ip1Network2.id())
///             .loadBalancingScheme("")
///             .network(network2.id())
///             .target(instance_user_connInstance.pscAttachmentDetails().applyValue(_pscAttachmentDetails -> _pscAttachmentDetails[0].serviceAttachment()))
///             .build());
///
///         var ip2Network2 = new Address("ip2Network2", AddressArgs.builder()
///             .name("ip2-net2")
///             .region("us-central1")
///             .subnetwork(subnetNetwork2.id())
///             .addressType("INTERNAL")
///             .purpose("GCE_ENDPOINT")
///             .build());
///
///         var forwardingRule2Network2 = new ForwardingRule("forwardingRule2Network2", ForwardingRuleArgs.builder()
///             .name("fwd2-net2")
///             .region("us-central1")
///             .ipAddress(ip2Network2.id())
///             .loadBalancingScheme("")
///             .network(network2.id())
///             .target(instance_user_connInstance.pscAttachmentDetails().applyValue(_pscAttachmentDetails -> _pscAttachmentDetails[1].serviceAttachment()))
///             .build());
///
///         var instance_user_conn = new InstanceDesiredUserCreatedEndpoints("instance-user-conn", InstanceDesiredUserCreatedEndpointsArgs.builder()
///             .name("instance-user-conn")
///             .region("us-central1")
///             .desiredUserCreatedEndpoints(
///                 InstanceDesiredUserCreatedEndpointsDesiredUserCreatedEndpointArgs.builder()
///                     .connections(
///                         InstanceDesiredUserCreatedEndpointsDesiredUserCreatedEndpointConnectionArgs.builder()
///                             .pscConnection(InstanceDesiredUserCreatedEndpointsDesiredUserCreatedEndpointConnectionPscConnectionArgs.builder()
///                                 .pscConnectionId(forwardingRule1Network1.pscConnectionId())
///                                 .ipAddress(ip1Network1.address())
///                                 .forwardingRule(forwardingRule1Network1.id())
///                                 .network(network1.id())
///                                 .serviceAttachment(instance_user_connInstance.pscAttachmentDetails().applyValue(_pscAttachmentDetails -> _pscAttachmentDetails[0].serviceAttachment()))
///                                 .build())
///                             .build(),
///                         InstanceDesiredUserCreatedEndpointsDesiredUserCreatedEndpointConnectionArgs.builder()
///                             .pscConnection(InstanceDesiredUserCreatedEndpointsDesiredUserCreatedEndpointConnectionPscConnectionArgs.builder()
///                                 .pscConnectionId(forwardingRule2Network1.pscConnectionId())
///                                 .ipAddress(ip2Network1.address())
///                                 .forwardingRule(forwardingRule2Network1.id())
///                                 .network(network1.id())
///                                 .serviceAttachment(instance_user_connInstance.pscAttachmentDetails().applyValue(_pscAttachmentDetails -> _pscAttachmentDetails[1].serviceAttachment()))
///                                 .build())
///                             .build())
///                     .build(),
///                 InstanceDesiredUserCreatedEndpointsDesiredUserCreatedEndpointArgs.builder()
///                     .connections(
///                         InstanceDesiredUserCreatedEndpointsDesiredUserCreatedEndpointConnectionArgs.builder()
///                             .pscConnection(InstanceDesiredUserCreatedEndpointsDesiredUserCreatedEndpointConnectionPscConnectionArgs.builder()
///                                 .pscConnectionId(forwardingRule1Network2.pscConnectionId())
///                                 .ipAddress(ip1Network2.address())
///                                 .forwardingRule(forwardingRule1Network2.id())
///                                 .network(network2.id())
///                                 .serviceAttachment(instance_user_connInstance.pscAttachmentDetails().applyValue(_pscAttachmentDetails -> _pscAttachmentDetails[0].serviceAttachment()))
///                                 .build())
///                             .build(),
///                         InstanceDesiredUserCreatedEndpointsDesiredUserCreatedEndpointConnectionArgs.builder()
///                             .pscConnection(InstanceDesiredUserCreatedEndpointsDesiredUserCreatedEndpointConnectionPscConnectionArgs.builder()
///                                 .pscConnectionId(forwardingRule2Network2.pscConnectionId())
///                                 .ipAddress(ip2Network2.address())
///                                 .forwardingRule(forwardingRule2Network2.id())
///                                 .network(network2.id())
///                                 .serviceAttachment(instance_user_connInstance.pscAttachmentDetails().applyValue(_pscAttachmentDetails -> _pscAttachmentDetails[1].serviceAttachment()))
///                                 .build())
///                             .build())
///                     .build())
///             .build());
///
///         final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   instance-user-conn:
///     type: gcp:memorystore:InstanceDesiredUserCreatedEndpoints
///     properties:
///       name: instance-user-conn
///       region: us-central1
///       desiredUserCreatedEndpoints:
///         - connections:
///             - pscConnection:
///                 pscConnectionId: ${forwardingRule1Network1.pscConnectionId}
///                 ipAddress: ${ip1Network1.address}
///                 forwardingRule: ${forwardingRule1Network1.id}
///                 network: ${network1.id}
///                 serviceAttachment: ${["instance-user-connInstance"].pscAttachmentDetails[0].serviceAttachment}
///             - pscConnection:
///                 pscConnectionId: ${forwardingRule2Network1.pscConnectionId}
///                 ipAddress: ${ip2Network1.address}
///                 forwardingRule: ${forwardingRule2Network1.id}
///                 network: ${network1.id}
///                 serviceAttachment: ${["instance-user-connInstance"].pscAttachmentDetails[1].serviceAttachment}
///         - connections:
///             - pscConnection:
///                 pscConnectionId: ${forwardingRule1Network2.pscConnectionId}
///                 ipAddress: ${ip1Network2.address}
///                 forwardingRule: ${forwardingRule1Network2.id}
///                 network: ${network2.id}
///                 serviceAttachment: ${["instance-user-connInstance"].pscAttachmentDetails[0].serviceAttachment}
///             - pscConnection:
///                 pscConnectionId: ${forwardingRule2Network2.pscConnectionId}
///                 ipAddress: ${ip2Network2.address}
///                 forwardingRule: ${forwardingRule2Network2.id}
///                 network: ${network2.id}
///                 serviceAttachment: ${["instance-user-connInstance"].pscAttachmentDetails[1].serviceAttachment}
///   forwardingRule1Network1:
///     type: gcp:compute:ForwardingRule
///     name: forwarding_rule1_network1
///     properties:
///       name: fwd1-net1
///       region: us-central1
///       ipAddress: ${ip1Network1.id}
///       loadBalancingScheme: ""
///       network: ${network1.id}
///       target: ${["instance-user-connInstance"].pscAttachmentDetails[0].serviceAttachment}
///   forwardingRule2Network1:
///     type: gcp:compute:ForwardingRule
///     name: forwarding_rule2_network1
///     properties:
///       name: fwd2-net1
///       region: us-central1
///       ipAddress: ${ip2Network1.id}
///       loadBalancingScheme: ""
///       network: ${network1.id}
///       target: ${["instance-user-connInstance"].pscAttachmentDetails[1].serviceAttachment}
///   ip1Network1:
///     type: gcp:compute:Address
///     name: ip1_network1
///     properties:
///       name: ip1-net1
///       region: us-central1
///       subnetwork: ${subnetNetwork1.id}
///       addressType: INTERNAL
///       purpose: GCE_ENDPOINT
///   ip2Network1:
///     type: gcp:compute:Address
///     name: ip2_network1
///     properties:
///       name: ip2-net1
///       region: us-central1
///       subnetwork: ${subnetNetwork1.id}
///       addressType: INTERNAL
///       purpose: GCE_ENDPOINT
///   subnetNetwork1:
///     type: gcp:compute:Subnetwork
///     name: subnet_network1
///     properties:
///       name: subnet-net1
///       ipCidrRange: 10.0.0.248/29
///       region: us-central1
///       network: ${network1.id}
///   network1:
///     type: gcp:compute:Network
///     properties:
///       name: net1
///       autoCreateSubnetworks: false
///   forwardingRule1Network2:
///     type: gcp:compute:ForwardingRule
///     name: forwarding_rule1_network2
///     properties:
///       name: fwd1-net2
///       region: us-central1
///       ipAddress: ${ip1Network2.id}
///       loadBalancingScheme: ""
///       network: ${network2.id}
///       target: ${["instance-user-connInstance"].pscAttachmentDetails[0].serviceAttachment}
///   forwardingRule2Network2:
///     type: gcp:compute:ForwardingRule
///     name: forwarding_rule2_network2
///     properties:
///       name: fwd2-net2
///       region: us-central1
///       ipAddress: ${ip2Network2.id}
///       loadBalancingScheme: ""
///       network: ${network2.id}
///       target: ${["instance-user-connInstance"].pscAttachmentDetails[1].serviceAttachment}
///   ip1Network2:
///     type: gcp:compute:Address
///     name: ip1_network2
///     properties:
///       name: ip1-net2
///       region: us-central1
///       subnetwork: ${subnetNetwork2.id}
///       addressType: INTERNAL
///       purpose: GCE_ENDPOINT
///   ip2Network2:
///     type: gcp:compute:Address
///     name: ip2_network2
///     properties:
///       name: ip2-net2
///       region: us-central1
///       subnetwork: ${subnetNetwork2.id}
///       addressType: INTERNAL
///       purpose: GCE_ENDPOINT
///   # Valkey instance without endpoints
///   instance-user-connInstance:
///     type: gcp:memorystore:Instance
///     name: instance-user-conn
///     properties:
///       instanceId: instance-user-conn
///       shardCount: 1
///       location: us-central1
///       deletionProtectionEnabled: false
///   subnetNetwork2:
///     type: gcp:compute:Subnetwork
///     name: subnet_network2
///     properties:
///       name: subnet-net2
///       ipCidrRange: 10.0.0.248/29
///       region: us-central1
///       network: ${network2.id}
///   network2:
///     type: gcp:compute:Network
///     properties:
///       name: network2
///       autoCreateSubnetworks: false
/// variables:
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
/// ### Memorystore Instance Desired User And Auto Created Endpoints
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const network2 = new gcp.compute.Network("network2", {
///     name: "network2",
///     autoCreateSubnetworks: false,
/// });
/// const subnetNetwork2 = new gcp.compute.Subnetwork("subnet_network2", {
///     name: "subnet-net2",
///     ipCidrRange: "10.0.0.248/29",
///     region: "us-central1",
///     network: network2.id,
/// });
/// const ip1Network2 = new gcp.compute.Address("ip1_network2", {
///     name: "ip1-net2",
///     region: "us-central1",
///     subnetwork: subnetNetwork2.id,
///     addressType: "INTERNAL",
///     purpose: "GCE_ENDPOINT",
/// });
/// const network1 = new gcp.compute.Network("network1", {
///     name: "net1",
///     autoCreateSubnetworks: false,
/// });
/// const subnetNetwork1 = new gcp.compute.Subnetwork("subnet_network1", {
///     name: "subnet-net1",
///     ipCidrRange: "10.0.0.248/29",
///     region: "us-central1",
///     network: network1.id,
/// });
/// const _default = new gcp.networkconnectivity.ServiceConnectionPolicy("default", {
///     name: "scpolicy",
///     location: "us-central1",
///     serviceClass: "gcp-memorystore",
///     description: "my basic service connection policy",
///     network: network1.id,
///     pscConfig: {
///         subnetworks: [subnetNetwork1.id],
///     },
/// });
/// const project = gcp.organizations.getProject({});
/// //valkey instance with endpoints
/// const instance_user_auto_connInstance = new gcp.memorystore.Instance("instance-user-auto-conn", {
///     instanceId: "instance-user-auto-conn",
///     shardCount: 1,
///     desiredAutoCreatedEndpoints: [{
///         network: network1.id,
///         projectId: project.then(project => project.projectId),
///     }],
///     location: "us-central1",
///     deletionProtectionEnabled: false,
/// }, {
///     dependsOn: [_default],
/// });
/// const forwardingRule1Network2 = new gcp.compute.ForwardingRule("forwarding_rule1_network2", {
///     name: "fwd1-net2",
///     region: "us-central1",
///     ipAddress: ip1Network2.id,
///     loadBalancingScheme: "",
///     network: network2.id,
///     target: instance_user_auto_connInstance.pscAttachmentDetails.apply(pscAttachmentDetails => pscAttachmentDetails[0].serviceAttachment),
/// });
/// const ip2Network2 = new gcp.compute.Address("ip2_network2", {
///     name: "ip2-net2",
///     region: "us-central1",
///     subnetwork: subnetNetwork2.id,
///     addressType: "INTERNAL",
///     purpose: "GCE_ENDPOINT",
/// });
/// const forwardingRule2Network2 = new gcp.compute.ForwardingRule("forwarding_rule2_network2", {
///     name: "fwd2-net2",
///     region: "us-central1",
///     ipAddress: ip2Network2.id,
///     loadBalancingScheme: "",
///     network: network2.id,
///     target: instance_user_auto_connInstance.pscAttachmentDetails.apply(pscAttachmentDetails => pscAttachmentDetails[1].serviceAttachment),
/// });
/// const instance_user_auto_conn = new gcp.memorystore.InstanceDesiredUserCreatedEndpoints("instance-user-auto-conn", {
///     name: "instance-user-auto-conn",
///     region: "us-central1",
///     desiredUserCreatedEndpoints: [{
///         connections: [
///             {
///                 pscConnection: {
///                     pscConnectionId: forwardingRule1Network2.pscConnectionId,
///                     ipAddress: ip1Network2.address,
///                     forwardingRule: forwardingRule1Network2.id,
///                     network: network2.id,
///                     serviceAttachment: instance_user_auto_connInstance.pscAttachmentDetails.apply(pscAttachmentDetails => pscAttachmentDetails[0].serviceAttachment),
///                 },
///             },
///             {
///                 pscConnection: {
///                     pscConnectionId: forwardingRule2Network2.pscConnectionId,
///                     ipAddress: ip2Network2.address,
///                     forwardingRule: forwardingRule2Network2.id,
///                     network: network2.id,
///                     serviceAttachment: instance_user_auto_connInstance.pscAttachmentDetails.apply(pscAttachmentDetails => pscAttachmentDetails[1].serviceAttachment),
///                 },
///             },
///         ],
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// network2 = gcp.compute.Network("network2",
///     name="network2",
///     auto_create_subnetworks=False)
/// subnet_network2 = gcp.compute.Subnetwork("subnet_network2",
///     name="subnet-net2",
///     ip_cidr_range="10.0.0.248/29",
///     region="us-central1",
///     network=network2.id)
/// ip1_network2 = gcp.compute.Address("ip1_network2",
///     name="ip1-net2",
///     region="us-central1",
///     subnetwork=subnet_network2.id,
///     address_type="INTERNAL",
///     purpose="GCE_ENDPOINT")
/// network1 = gcp.compute.Network("network1",
///     name="net1",
///     auto_create_subnetworks=False)
/// subnet_network1 = gcp.compute.Subnetwork("subnet_network1",
///     name="subnet-net1",
///     ip_cidr_range="10.0.0.248/29",
///     region="us-central1",
///     network=network1.id)
/// default = gcp.networkconnectivity.ServiceConnectionPolicy("default",
///     name="scpolicy",
///     location="us-central1",
///     service_class="gcp-memorystore",
///     description="my basic service connection policy",
///     network=network1.id,
///     psc_config={
///         "subnetworks": [subnet_network1.id],
///     })
/// project = gcp.organizations.get_project()
/// #valkey instance with endpoints
/// instance_user_auto_conn_instance = gcp.memorystore.Instance("instance-user-auto-conn",
///     instance_id="instance-user-auto-conn",
///     shard_count=1,
///     desired_auto_created_endpoints=[{
///         "network": network1.id,
///         "project_id": project.project_id,
///     }],
///     location="us-central1",
///     deletion_protection_enabled=False,
///     opts = pulumi.ResourceOptions(depends_on=[default]))
/// forwarding_rule1_network2 = gcp.compute.ForwardingRule("forwarding_rule1_network2",
///     name="fwd1-net2",
///     region="us-central1",
///     ip_address=ip1_network2.id,
///     load_balancing_scheme="",
///     network=network2.id,
///     target=instance_user_auto_conn_instance.psc_attachment_details[0].service_attachment)
/// ip2_network2 = gcp.compute.Address("ip2_network2",
///     name="ip2-net2",
///     region="us-central1",
///     subnetwork=subnet_network2.id,
///     address_type="INTERNAL",
///     purpose="GCE_ENDPOINT")
/// forwarding_rule2_network2 = gcp.compute.ForwardingRule("forwarding_rule2_network2",
///     name="fwd2-net2",
///     region="us-central1",
///     ip_address=ip2_network2.id,
///     load_balancing_scheme="",
///     network=network2.id,
///     target=instance_user_auto_conn_instance.psc_attachment_details[1].service_attachment)
/// instance_user_auto_conn = gcp.memorystore.InstanceDesiredUserCreatedEndpoints("instance-user-auto-conn",
///     name="instance-user-auto-conn",
///     region="us-central1",
///     desired_user_created_endpoints=[{
///         "connections": [
///             {
///                 "psc_connection": {
///                     "psc_connection_id": forwarding_rule1_network2.psc_connection_id,
///                     "ip_address": ip1_network2.address,
///                     "forwarding_rule": forwarding_rule1_network2.id,
///                     "network": network2.id,
///                     "service_attachment": instance_user_auto_conn_instance.psc_attachment_details[0].service_attachment,
///                 },
///             },
///             {
///                 "psc_connection": {
///                     "psc_connection_id": forwarding_rule2_network2.psc_connection_id,
///                     "ip_address": ip2_network2.address,
///                     "forwarding_rule": forwarding_rule2_network2.id,
///                     "network": network2.id,
///                     "service_attachment": instance_user_auto_conn_instance.psc_attachment_details[1].service_attachment,
///                 },
///             },
///         ],
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var network2 = new Gcp.Compute.Network("network2", new()
///     {
///         Name = "network2",
///         AutoCreateSubnetworks = false,
///     });
///
///     var subnetNetwork2 = new Gcp.Compute.Subnetwork("subnet_network2", new()
///     {
///         Name = "subnet-net2",
///         IpCidrRange = "10.0.0.248/29",
///         Region = "us-central1",
///         Network = network2.Id,
///     });
///
///     var ip1Network2 = new Gcp.Compute.Address("ip1_network2", new()
///     {
///         Name = "ip1-net2",
///         Region = "us-central1",
///         Subnetwork = subnetNetwork2.Id,
///         AddressType = "INTERNAL",
///         Purpose = "GCE_ENDPOINT",
///     });
///
///     var network1 = new Gcp.Compute.Network("network1", new()
///     {
///         Name = "net1",
///         AutoCreateSubnetworks = false,
///     });
///
///     var subnetNetwork1 = new Gcp.Compute.Subnetwork("subnet_network1", new()
///     {
///         Name = "subnet-net1",
///         IpCidrRange = "10.0.0.248/29",
///         Region = "us-central1",
///         Network = network1.Id,
///     });
///
///     var @default = new Gcp.NetworkConnectivity.ServiceConnectionPolicy("default", new()
///     {
///         Name = "scpolicy",
///         Location = "us-central1",
///         ServiceClass = "gcp-memorystore",
///         Description = "my basic service connection policy",
///         Network = network1.Id,
///         PscConfig = new Gcp.NetworkConnectivity.Inputs.ServiceConnectionPolicyPscConfigArgs
///         {
///             Subnetworks = new[]
///             {
///                 subnetNetwork1.Id,
///             },
///         },
///     });
///
///     var project = Gcp.Organizations.GetProject.Invoke();
///
///     //valkey instance with endpoints
///     var instance_user_auto_connInstance = new Gcp.MemoryStore.Instance("instance-user-auto-conn", new()
///     {
///         InstanceId = "instance-user-auto-conn",
///         ShardCount = 1,
///         DesiredAutoCreatedEndpoints = new[]
///         {
///             new Gcp.MemoryStore.Inputs.InstanceDesiredAutoCreatedEndpointArgs
///             {
///                 Network = network1.Id,
///                 ProjectId = project.Apply(getProjectResult => getProjectResult.ProjectId),
///             },
///         },
///         Location = "us-central1",
///         DeletionProtectionEnabled = false,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             @default,
///         },
///     });
///
///     var forwardingRule1Network2 = new Gcp.Compute.ForwardingRule("forwarding_rule1_network2", new()
///     {
///         Name = "fwd1-net2",
///         Region = "us-central1",
///         IpAddress = ip1Network2.Id,
///         LoadBalancingScheme = "",
///         Network = network2.Id,
///         Target = instance_user_auto_connInstance.PscAttachmentDetails.Apply(pscAttachmentDetails => pscAttachmentDetails[0].ServiceAttachment),
///     });
///
///     var ip2Network2 = new Gcp.Compute.Address("ip2_network2", new()
///     {
///         Name = "ip2-net2",
///         Region = "us-central1",
///         Subnetwork = subnetNetwork2.Id,
///         AddressType = "INTERNAL",
///         Purpose = "GCE_ENDPOINT",
///     });
///
///     var forwardingRule2Network2 = new Gcp.Compute.ForwardingRule("forwarding_rule2_network2", new()
///     {
///         Name = "fwd2-net2",
///         Region = "us-central1",
///         IpAddress = ip2Network2.Id,
///         LoadBalancingScheme = "",
///         Network = network2.Id,
///         Target = instance_user_auto_connInstance.PscAttachmentDetails.Apply(pscAttachmentDetails => pscAttachmentDetails[1].ServiceAttachment),
///     });
///
///     var instance_user_auto_conn = new Gcp.MemoryStore.InstanceDesiredUserCreatedEndpoints("instance-user-auto-conn", new()
///     {
///         Name = "instance-user-auto-conn",
///         Region = "us-central1",
///         DesiredUserCreatedEndpoints = new[]
///         {
///             new Gcp.MemoryStore.Inputs.InstanceDesiredUserCreatedEndpointsDesiredUserCreatedEndpointArgs
///             {
///                 Connections = new[]
///                 {
///                     new Gcp.MemoryStore.Inputs.InstanceDesiredUserCreatedEndpointsDesiredUserCreatedEndpointConnectionArgs
///                     {
///                         PscConnection = new Gcp.MemoryStore.Inputs.InstanceDesiredUserCreatedEndpointsDesiredUserCreatedEndpointConnectionPscConnectionArgs
///                         {
///                             PscConnectionId = forwardingRule1Network2.PscConnectionId,
///                             IpAddress = ip1Network2.IPAddress,
///                             ForwardingRule = forwardingRule1Network2.Id,
///                             Network = network2.Id,
///                             ServiceAttachment = instance_user_auto_connInstance.PscAttachmentDetails.Apply(pscAttachmentDetails => pscAttachmentDetails[0].ServiceAttachment),
///                         },
///                     },
///                     new Gcp.MemoryStore.Inputs.InstanceDesiredUserCreatedEndpointsDesiredUserCreatedEndpointConnectionArgs
///                     {
///                         PscConnection = new Gcp.MemoryStore.Inputs.InstanceDesiredUserCreatedEndpointsDesiredUserCreatedEndpointConnectionPscConnectionArgs
///                         {
///                             PscConnectionId = forwardingRule2Network2.PscConnectionId,
///                             IpAddress = ip2Network2.IPAddress,
///                             ForwardingRule = forwardingRule2Network2.Id,
///                             Network = network2.Id,
///                             ServiceAttachment = instance_user_auto_connInstance.PscAttachmentDetails.Apply(pscAttachmentDetails => pscAttachmentDetails[1].ServiceAttachment),
///                         },
///                     },
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/memorystore"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/networkconnectivity"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		network2, err := compute.NewNetwork(ctx, "network2", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("network2"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		subnetNetwork2, err := compute.NewSubnetwork(ctx, "subnet_network2", &compute.SubnetworkArgs{
/// 			Name:        pulumi.String("subnet-net2"),
/// 			IpCidrRange: pulumi.String("10.0.0.248/29"),
/// 			Region:      pulumi.String("us-central1"),
/// 			Network:     network2.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ip1Network2, err := compute.NewAddress(ctx, "ip1_network2", &compute.AddressArgs{
/// 			Name:        pulumi.String("ip1-net2"),
/// 			Region:      pulumi.String("us-central1"),
/// 			Subnetwork:  subnetNetwork2.ID(),
/// 			AddressType: pulumi.String("INTERNAL"),
/// 			Purpose:     pulumi.String("GCE_ENDPOINT"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		network1, err := compute.NewNetwork(ctx, "network1", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("net1"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		subnetNetwork1, err := compute.NewSubnetwork(ctx, "subnet_network1", &compute.SubnetworkArgs{
/// 			Name:        pulumi.String("subnet-net1"),
/// 			IpCidrRange: pulumi.String("10.0.0.248/29"),
/// 			Region:      pulumi.String("us-central1"),
/// 			Network:     network1.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_default, err := networkconnectivity.NewServiceConnectionPolicy(ctx, "default", &networkconnectivity.ServiceConnectionPolicyArgs{
/// 			Name:         pulumi.String("scpolicy"),
/// 			Location:     pulumi.String("us-central1"),
/// 			ServiceClass: pulumi.String("gcp-memorystore"),
/// 			Description:  pulumi.String("my basic service connection policy"),
/// 			Network:      network1.ID(),
/// 			PscConfig: &networkconnectivity.ServiceConnectionPolicyPscConfigArgs{
/// 				Subnetworks: pulumi.StringArray{
/// 					subnetNetwork1.ID(),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// valkey instance with endpoints
/// 		instance_user_auto_connInstance, err := memorystore.NewInstance(ctx, "instance-user-auto-conn", &memorystore.InstanceArgs{
/// 			InstanceId: pulumi.String("instance-user-auto-conn"),
/// 			ShardCount: pulumi.Int(1),
/// 			DesiredAutoCreatedEndpoints: memorystore.InstanceDesiredAutoCreatedEndpointArray{
/// 				&memorystore.InstanceDesiredAutoCreatedEndpointArgs{
/// 					Network:   network1.ID(),
/// 					ProjectId: pulumi.String(project.ProjectId),
/// 				},
/// 			},
/// 			Location:                  pulumi.String("us-central1"),
/// 			DeletionProtectionEnabled: pulumi.Bool(false),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			_default,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		forwardingRule1Network2, err := compute.NewForwardingRule(ctx, "forwarding_rule1_network2", &compute.ForwardingRuleArgs{
/// 			Name:                pulumi.String("fwd1-net2"),
/// 			Region:              pulumi.String("us-central1"),
/// 			IpAddress:           ip1Network2.ID(),
/// 			LoadBalancingScheme: pulumi.String(""),
/// 			Network:             network2.ID(),
/// 			Target: pulumi.String(instance_user_auto_connInstance.PscAttachmentDetails.ApplyT(func(pscAttachmentDetails []memorystore.InstancePscAttachmentDetail) (*string, error) {
/// 				return &pscAttachmentDetails[0].ServiceAttachment, nil
/// 			}).(pulumi.StringPtrOutput)),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ip2Network2, err := compute.NewAddress(ctx, "ip2_network2", &compute.AddressArgs{
/// 			Name:        pulumi.String("ip2-net2"),
/// 			Region:      pulumi.String("us-central1"),
/// 			Subnetwork:  subnetNetwork2.ID(),
/// 			AddressType: pulumi.String("INTERNAL"),
/// 			Purpose:     pulumi.String("GCE_ENDPOINT"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		forwardingRule2Network2, err := compute.NewForwardingRule(ctx, "forwarding_rule2_network2", &compute.ForwardingRuleArgs{
/// 			Name:                pulumi.String("fwd2-net2"),
/// 			Region:              pulumi.String("us-central1"),
/// 			IpAddress:           ip2Network2.ID(),
/// 			LoadBalancingScheme: pulumi.String(""),
/// 			Network:             network2.ID(),
/// 			Target: pulumi.String(instance_user_auto_connInstance.PscAttachmentDetails.ApplyT(func(pscAttachmentDetails []memorystore.InstancePscAttachmentDetail) (*string, error) {
/// 				return &pscAttachmentDetails[1].ServiceAttachment, nil
/// 			}).(pulumi.StringPtrOutput)),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = memorystore.NewInstanceDesiredUserCreatedEndpoints(ctx, "instance-user-auto-conn", &memorystore.InstanceDesiredUserCreatedEndpointsArgs{
/// 			Name:   pulumi.String("instance-user-auto-conn"),
/// 			Region: pulumi.String("us-central1"),
/// 			DesiredUserCreatedEndpoints: memorystore.InstanceDesiredUserCreatedEndpointsDesiredUserCreatedEndpointArray{
/// 				&memorystore.InstanceDesiredUserCreatedEndpointsDesiredUserCreatedEndpointArgs{
/// 					Connections: memorystore.InstanceDesiredUserCreatedEndpointsDesiredUserCreatedEndpointConnectionArray{
/// 						&memorystore.InstanceDesiredUserCreatedEndpointsDesiredUserCreatedEndpointConnectionArgs{
/// 							PscConnection: &memorystore.InstanceDesiredUserCreatedEndpointsDesiredUserCreatedEndpointConnectionPscConnectionArgs{
/// 								PscConnectionId: forwardingRule1Network2.PscConnectionId,
/// 								IpAddress:       ip1Network2.Address,
/// 								ForwardingRule:  forwardingRule1Network2.ID(),
/// 								Network:         network2.ID(),
/// 								ServiceAttachment: instance_user_auto_connInstance.PscAttachmentDetails.ApplyT(func(pscAttachmentDetails []memorystore.InstancePscAttachmentDetail) (*string, error) {
/// 									return &pscAttachmentDetails[0].ServiceAttachment, nil
/// 								}).(pulumi.StringPtrOutput),
/// 							},
/// 						},
/// 						&memorystore.InstanceDesiredUserCreatedEndpointsDesiredUserCreatedEndpointConnectionArgs{
/// 							PscConnection: &memorystore.InstanceDesiredUserCreatedEndpointsDesiredUserCreatedEndpointConnectionPscConnectionArgs{
/// 								PscConnectionId: forwardingRule2Network2.PscConnectionId,
/// 								IpAddress:       ip2Network2.Address,
/// 								ForwardingRule:  forwardingRule2Network2.ID(),
/// 								Network:         network2.ID(),
/// 								ServiceAttachment: instance_user_auto_connInstance.PscAttachmentDetails.ApplyT(func(pscAttachmentDetails []memorystore.InstancePscAttachmentDetail) (*string, error) {
/// 									return &pscAttachmentDetails[1].ServiceAttachment, nil
/// 								}).(pulumi.StringPtrOutput),
/// 							},
/// 						},
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
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.compute.Subnetwork;
/// import com.pulumi.gcp.compute.SubnetworkArgs;
/// import com.pulumi.gcp.compute.Address;
/// import com.pulumi.gcp.compute.AddressArgs;
/// import com.pulumi.gcp.networkconnectivity.ServiceConnectionPolicy;
/// import com.pulumi.gcp.networkconnectivity.ServiceConnectionPolicyArgs;
/// import com.pulumi.gcp.networkconnectivity.inputs.ServiceConnectionPolicyPscConfigArgs;
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
/// import com.pulumi.gcp.memorystore.Instance;
/// import com.pulumi.gcp.memorystore.InstanceArgs;
/// import com.pulumi.gcp.memorystore.inputs.InstanceDesiredAutoCreatedEndpointArgs;
/// import com.pulumi.gcp.compute.ForwardingRule;
/// import com.pulumi.gcp.compute.ForwardingRuleArgs;
/// import com.pulumi.gcp.memorystore.InstanceDesiredUserCreatedEndpoints;
/// import com.pulumi.gcp.memorystore.InstanceDesiredUserCreatedEndpointsArgs;
/// import com.pulumi.gcp.memorystore.inputs.InstanceDesiredUserCreatedEndpointsDesiredUserCreatedEndpointArgs;
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
///         var network2 = new Network("network2", NetworkArgs.builder()
///             .name("network2")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var subnetNetwork2 = new Subnetwork("subnetNetwork2", SubnetworkArgs.builder()
///             .name("subnet-net2")
///             .ipCidrRange("10.0.0.248/29")
///             .region("us-central1")
///             .network(network2.id())
///             .build());
///
///         var ip1Network2 = new Address("ip1Network2", AddressArgs.builder()
///             .name("ip1-net2")
///             .region("us-central1")
///             .subnetwork(subnetNetwork2.id())
///             .addressType("INTERNAL")
///             .purpose("GCE_ENDPOINT")
///             .build());
///
///         var network1 = new Network("network1", NetworkArgs.builder()
///             .name("net1")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var subnetNetwork1 = new Subnetwork("subnetNetwork1", SubnetworkArgs.builder()
///             .name("subnet-net1")
///             .ipCidrRange("10.0.0.248/29")
///             .region("us-central1")
///             .network(network1.id())
///             .build());
///
///         var default_ = new ServiceConnectionPolicy("default", ServiceConnectionPolicyArgs.builder()
///             .name("scpolicy")
///             .location("us-central1")
///             .serviceClass("gcp-memorystore")
///             .description("my basic service connection policy")
///             .network(network1.id())
///             .pscConfig(ServiceConnectionPolicyPscConfigArgs.builder()
///                 .subnetworks(subnetNetwork1.id())
///                 .build())
///             .build());
///
///         final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
///             .build());
///
///         //valkey instance with endpoints
///         var instance_user_auto_connInstance = new Instance("instance-user-auto-connInstance", InstanceArgs.builder()
///             .instanceId("instance-user-auto-conn")
///             .shardCount(1)
///             .desiredAutoCreatedEndpoints(InstanceDesiredAutoCreatedEndpointArgs.builder()
///                 .network(network1.id())
///                 .projectId(project.projectId())
///                 .build())
///             .location("us-central1")
///             .deletionProtectionEnabled(false)
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(default_)
///                 .build());
///
///         var forwardingRule1Network2 = new ForwardingRule("forwardingRule1Network2", ForwardingRuleArgs.builder()
///             .name("fwd1-net2")
///             .region("us-central1")
///             .ipAddress(ip1Network2.id())
///             .loadBalancingScheme("")
///             .network(network2.id())
///             .target(instance_user_auto_connInstance.pscAttachmentDetails().applyValue(_pscAttachmentDetails -> _pscAttachmentDetails[0].serviceAttachment()))
///             .build());
///
///         var ip2Network2 = new Address("ip2Network2", AddressArgs.builder()
///             .name("ip2-net2")
///             .region("us-central1")
///             .subnetwork(subnetNetwork2.id())
///             .addressType("INTERNAL")
///             .purpose("GCE_ENDPOINT")
///             .build());
///
///         var forwardingRule2Network2 = new ForwardingRule("forwardingRule2Network2", ForwardingRuleArgs.builder()
///             .name("fwd2-net2")
///             .region("us-central1")
///             .ipAddress(ip2Network2.id())
///             .loadBalancingScheme("")
///             .network(network2.id())
///             .target(instance_user_auto_connInstance.pscAttachmentDetails().applyValue(_pscAttachmentDetails -> _pscAttachmentDetails[1].serviceAttachment()))
///             .build());
///
///         var instance_user_auto_conn = new InstanceDesiredUserCreatedEndpoints("instance-user-auto-conn", InstanceDesiredUserCreatedEndpointsArgs.builder()
///             .name("instance-user-auto-conn")
///             .region("us-central1")
///             .desiredUserCreatedEndpoints(InstanceDesiredUserCreatedEndpointsDesiredUserCreatedEndpointArgs.builder()
///                 .connections(
///                     InstanceDesiredUserCreatedEndpointsDesiredUserCreatedEndpointConnectionArgs.builder()
///                         .pscConnection(InstanceDesiredUserCreatedEndpointsDesiredUserCreatedEndpointConnectionPscConnectionArgs.builder()
///                             .pscConnectionId(forwardingRule1Network2.pscConnectionId())
///                             .ipAddress(ip1Network2.address())
///                             .forwardingRule(forwardingRule1Network2.id())
///                             .network(network2.id())
///                             .serviceAttachment(instance_user_auto_connInstance.pscAttachmentDetails().applyValue(_pscAttachmentDetails -> _pscAttachmentDetails[0].serviceAttachment()))
///                             .build())
///                         .build(),
///                     InstanceDesiredUserCreatedEndpointsDesiredUserCreatedEndpointConnectionArgs.builder()
///                         .pscConnection(InstanceDesiredUserCreatedEndpointsDesiredUserCreatedEndpointConnectionPscConnectionArgs.builder()
///                             .pscConnectionId(forwardingRule2Network2.pscConnectionId())
///                             .ipAddress(ip2Network2.address())
///                             .forwardingRule(forwardingRule2Network2.id())
///                             .network(network2.id())
///                             .serviceAttachment(instance_user_auto_connInstance.pscAttachmentDetails().applyValue(_pscAttachmentDetails -> _pscAttachmentDetails[1].serviceAttachment()))
///                             .build())
///                         .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   instance-user-auto-conn:
///     type: gcp:memorystore:InstanceDesiredUserCreatedEndpoints
///     properties:
///       name: instance-user-auto-conn
///       region: us-central1
///       desiredUserCreatedEndpoints:
///         - connections:
///             - pscConnection:
///                 pscConnectionId: ${forwardingRule1Network2.pscConnectionId}
///                 ipAddress: ${ip1Network2.address}
///                 forwardingRule: ${forwardingRule1Network2.id}
///                 network: ${network2.id}
///                 serviceAttachment: ${["instance-user-auto-connInstance"].pscAttachmentDetails[0].serviceAttachment}
///             - pscConnection:
///                 pscConnectionId: ${forwardingRule2Network2.pscConnectionId}
///                 ipAddress: ${ip2Network2.address}
///                 forwardingRule: ${forwardingRule2Network2.id}
///                 network: ${network2.id}
///                 serviceAttachment: ${["instance-user-auto-connInstance"].pscAttachmentDetails[1].serviceAttachment}
///   forwardingRule1Network2:
///     type: gcp:compute:ForwardingRule
///     name: forwarding_rule1_network2
///     properties:
///       name: fwd1-net2
///       region: us-central1
///       ipAddress: ${ip1Network2.id}
///       loadBalancingScheme: ""
///       network: ${network2.id}
///       target: ${["instance-user-auto-connInstance"].pscAttachmentDetails[0].serviceAttachment}
///   forwardingRule2Network2:
///     type: gcp:compute:ForwardingRule
///     name: forwarding_rule2_network2
///     properties:
///       name: fwd2-net2
///       region: us-central1
///       ipAddress: ${ip2Network2.id}
///       loadBalancingScheme: ""
///       network: ${network2.id}
///       target: ${["instance-user-auto-connInstance"].pscAttachmentDetails[1].serviceAttachment}
///   ip1Network2:
///     type: gcp:compute:Address
///     name: ip1_network2
///     properties:
///       name: ip1-net2
///       region: us-central1
///       subnetwork: ${subnetNetwork2.id}
///       addressType: INTERNAL
///       purpose: GCE_ENDPOINT
///   ip2Network2:
///     type: gcp:compute:Address
///     name: ip2_network2
///     properties:
///       name: ip2-net2
///       region: us-central1
///       subnetwork: ${subnetNetwork2.id}
///       addressType: INTERNAL
///       purpose: GCE_ENDPOINT
///   subnetNetwork2:
///     type: gcp:compute:Subnetwork
///     name: subnet_network2
///     properties:
///       name: subnet-net2
///       ipCidrRange: 10.0.0.248/29
///       region: us-central1
///       network: ${network2.id}
///   network2:
///     type: gcp:compute:Network
///     properties:
///       name: network2
///       autoCreateSubnetworks: false
///   # valkey instance with endpoints
///   instance-user-auto-connInstance:
///     type: gcp:memorystore:Instance
///     name: instance-user-auto-conn
///     properties:
///       instanceId: instance-user-auto-conn
///       shardCount: 1
///       desiredAutoCreatedEndpoints:
///         - network: ${network1.id}
///           projectId: ${project.projectId}
///       location: us-central1
///       deletionProtectionEnabled: false
///     options:
///       dependsOn:
///         - ${default}
///   default:
///     type: gcp:networkconnectivity:ServiceConnectionPolicy
///     properties:
///       name: scpolicy
///       location: us-central1
///       serviceClass: gcp-memorystore
///       description: my basic service connection policy
///       network: ${network1.id}
///       pscConfig:
///         subnetworks:
///           - ${subnetNetwork1.id}
///   subnetNetwork1:
///     type: gcp:compute:Subnetwork
///     name: subnet_network1
///     properties:
///       name: subnet-net1
///       ipCidrRange: 10.0.0.248/29
///       region: us-central1
///       network: ${network1.id}
///   network1:
///     type: gcp:compute:Network
///     properties:
///       name: net1
///       autoCreateSubnetworks: false
/// variables:
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
///
/// ## Import
///
/// InstanceDesiredUserCreatedEndpoints can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{region}}/instances/{{name}}`
///
/// * `{{project}}/{{region}}/{{name}}`
///
/// * `{{region}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, InstanceDesiredUserCreatedEndpoints can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:memorystore/instanceDesiredUserCreatedEndpoints:InstanceDesiredUserCreatedEndpoints default projects/{{project}}/locations/{{region}}/instances/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:memorystore/instanceDesiredUserCreatedEndpoints:InstanceDesiredUserCreatedEndpoints default {{project}}/{{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:memorystore/instanceDesiredUserCreatedEndpoints:InstanceDesiredUserCreatedEndpoints default {{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:memorystore/instanceDesiredUserCreatedEndpoints:InstanceDesiredUserCreatedEndpoints default {{name}}
/// ```
class InstanceDesiredUserCreatedEndpoints extends pulumi.CustomResource {
  /// A list of desired user endpoints
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>?> desiredUserCreatedEndpoints;
  /// The name of the Memorystore instance these endpoints should be added to.
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The name of the region of the Memorystore instance these endpoints should be added to.
  late final pulumi.Output<String> region;

  /// Creates a new [InstanceDesiredUserCreatedEndpoints].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [InstanceDesiredUserCreatedEndpoints]. {@macro pulumi_memorystore_instance_desired_user_created_endpoints_instance_desired_user_created_endpoints_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  InstanceDesiredUserCreatedEndpoints(
    String name, {
    InstanceDesiredUserCreatedEndpointsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:memorystore/instanceDesiredUserCreatedEndpoints:InstanceDesiredUserCreatedEndpoints',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    desiredUserCreatedEndpoints = registerOutput<List<Map<String, dynamic>>?>('desiredUserCreatedEndpoints');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    region = registerOutput<String>('region');
  }

  /// Gets an existing [InstanceDesiredUserCreatedEndpoints] resource's state with the given [name] and [id].
  static InstanceDesiredUserCreatedEndpoints get(
    String name,
    pulumi.Input<String> id, {
    InstanceDesiredUserCreatedEndpointsState? state,
  }) {
    return InstanceDesiredUserCreatedEndpoints._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  InstanceDesiredUserCreatedEndpoints._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:memorystore/instanceDesiredUserCreatedEndpoints:InstanceDesiredUserCreatedEndpoints',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    desiredUserCreatedEndpoints = registerOutput<List<Map<String, dynamic>>?>('desiredUserCreatedEndpoints');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    region = registerOutput<String>('region');
  }
}
