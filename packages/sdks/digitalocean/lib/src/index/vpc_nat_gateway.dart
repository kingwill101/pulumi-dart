import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpc_nat_gateway_args.dart';
import 'vpc_nat_gateway_state.dart';

/// Provides a DigitalOcean VPC NAT Gateway resource. This can be used to create, modify,
/// read and delete VPC NAT Gateways.
///
/// NOTE: VPC NAT Gateway is currently in Private Preview.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const my_vpc = new digitalocean.Vpc("my-vpc", {
///     name: "terraform-example",
///     region: "nyc3",
/// });
/// const my_vpc_nat_gateway = new digitalocean.VpcNatGateway("my-vpc-nat-gateway", {
///     name: "terraform-example",
///     type: "PUBLIC",
///     region: "nyc3",
///     size: 1,
///     vpcs: [{
///         vpcUuid: my_vpc.id,
///     }],
///     udpTimeoutSeconds: 30,
///     icmpTimeoutSeconds: 30,
///     tcpTimeoutSeconds: 30,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// my_vpc = digitalocean.Vpc("my-vpc",
///     name="terraform-example",
///     region="nyc3")
/// my_vpc_nat_gateway = digitalocean.VpcNatGateway("my-vpc-nat-gateway",
///     name="terraform-example",
///     type="PUBLIC",
///     region="nyc3",
///     size=1,
///     vpcs=[{
///         "vpc_uuid": my_vpc.id,
///     }],
///     udp_timeout_seconds=30,
///     icmp_timeout_seconds=30,
///     tcp_timeout_seconds=30)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var my_vpc = new DigitalOcean.Vpc("my-vpc", new()
///     {
///         Name = "terraform-example",
///         Region = "nyc3",
///     });
///
///     var my_vpc_nat_gateway = new DigitalOcean.VpcNatGateway("my-vpc-nat-gateway", new()
///     {
///         Name = "terraform-example",
///         Type = "PUBLIC",
///         Region = "nyc3",
///         Size = 1,
///         Vpcs = new[]
///         {
///             new DigitalOcean.Inputs.VpcNatGatewayVpcArgs
///             {
///                 VpcUuid = my_vpc.Id,
///             },
///         },
///         UdpTimeoutSeconds = 30,
///         IcmpTimeoutSeconds = 30,
///         TcpTimeoutSeconds = 30,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-digitalocean/sdk/v4/go/digitalocean"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		my_vpc, err := digitalocean.NewVpc(ctx, "my-vpc", &digitalocean.VpcArgs{
/// 			Name:   pulumi.String("terraform-example"),
/// 			Region: pulumi.String("nyc3"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = digitalocean.NewVpcNatGateway(ctx, "my-vpc-nat-gateway", &digitalocean.VpcNatGatewayArgs{
/// 			Name:   pulumi.String("terraform-example"),
/// 			Type:   pulumi.String("PUBLIC"),
/// 			Region: pulumi.String("nyc3"),
/// 			Size:   pulumi.Int(1),
/// 			Vpcs: digitalocean.VpcNatGatewayVpcArray{
/// 				&digitalocean.VpcNatGatewayVpcArgs{
/// 					VpcUuid: my_vpc.ID(),
/// 				},
/// 			},
/// 			UdpTimeoutSeconds:  pulumi.Int(30),
/// 			IcmpTimeoutSeconds: pulumi.Int(30),
/// 			TcpTimeoutSeconds:  pulumi.Int(30),
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
/// import com.pulumi.digitalocean.Vpc;
/// import com.pulumi.digitalocean.VpcArgs;
/// import com.pulumi.digitalocean.VpcNatGateway;
/// import com.pulumi.digitalocean.VpcNatGatewayArgs;
/// import com.pulumi.digitalocean.inputs.VpcNatGatewayVpcArgs;
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
///         var my_vpc = new Vpc("my-vpc", VpcArgs.builder()
///             .name("terraform-example")
///             .region("nyc3")
///             .build());
///
///         var my_vpc_nat_gateway = new VpcNatGateway("my-vpc-nat-gateway", VpcNatGatewayArgs.builder()
///             .name("terraform-example")
///             .type("PUBLIC")
///             .region("nyc3")
///             .size(1)
///             .vpcs(VpcNatGatewayVpcArgs.builder()
///                 .vpcUuid(my_vpc.id())
///                 .build())
///             .udpTimeoutSeconds(30)
///             .icmpTimeoutSeconds(30)
///             .tcpTimeoutSeconds(30)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   my-vpc:
///     type: digitalocean:Vpc
///     properties:
///       name: terraform-example
///       region: nyc3
///   my-vpc-nat-gateway:
///     type: digitalocean:VpcNatGateway
///     properties:
///       name: terraform-example
///       type: PUBLIC
///       region: nyc3
///       size: '1'
///       vpcs:
///         - vpcUuid: ${["my-vpc"].id}
///       udpTimeoutSeconds: 30
///       icmpTimeoutSeconds: 30
///       tcpTimeoutSeconds: 30
/// ```
///
///
/// ## Import
///
/// VPC NAT Gateways can be imported using their `id`, e.g.
///
/// ```sh
/// $ pulumi import digitalocean:index/vpcNatGateway:VpcNatGateway my-vpc-nat-gateway-id 38e66834-d741-47ec-88e7-c70cbdcz0445
/// ```
class VpcNatGateway extends pulumi.CustomResource {
  /// Created at timestamp for the VPC NAT Gateway.
  late final pulumi.Output<String> createdAt;
  /// Embeds the list of public egresses assigned to the VPC NAT Gateway: resolves as list of
  /// `public_gateways` embedding the reserved `ipv4` addresses.
  late final pulumi.Output<List<Map<String, dynamic>>> egresses;
  /// The egress timeout value for ICMP connections of the VPC NAT Gateway.
  late final pulumi.Output<int> icmpTimeoutSeconds;
  /// The name of the VPC NAT Gateway.
  late final pulumi.Output<String> name;
  /// ID of the project to which the VPC NAT Gateway will be assigned.
  late final pulumi.Output<String> projectId;
  /// The region for the VPC NAT Gateway.
  late final pulumi.Output<String> region;
  /// The size of the VPC NAT Gateway.
  late final pulumi.Output<int> size;
  /// State of the VPC NAT Gateway
  late final pulumi.Output<String> state;
  /// The egress timeout value for TCP connections of the VPC NAT Gateway.
  late final pulumi.Output<int> tcpTimeoutSeconds;
  /// The type of the VPC NAT Gateway.
  late final pulumi.Output<String> type;
  /// The egress timeout value for UDP connections of the VPC NAT Gateway.
  late final pulumi.Output<int> udpTimeoutSeconds;
  /// Updated at timestamp for the VPC NAT Gateway.
  late final pulumi.Output<String> updatedAt;
  /// The ingress VPC configuration of the VPC NAT Gateway, the supported arguments are
  /// documented below.
  late final pulumi.Output<List<Map<String, dynamic>>> vpcs;

  /// Creates a new [VpcNatGateway].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VpcNatGateway]. {@macro pulumi_index_vpc_nat_gateway_vpc_nat_gateway_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VpcNatGateway(
    String name, {
    VpcNatGatewayArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'digitalocean:index/vpcNatGateway:VpcNatGateway',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createdAt = registerOutput<String>('createdAt');
    egresses = registerOutput<List<Map<String, dynamic>>>('egresses');
    icmpTimeoutSeconds = registerOutput<int>('icmpTimeoutSeconds');
    this.name = registerOutput<String>('name');
    projectId = registerOutput<String>('projectId');
    region = registerOutput<String>('region');
    size = registerOutput<int>('size');
    state = registerOutput<String>('state');
    tcpTimeoutSeconds = registerOutput<int>('tcpTimeoutSeconds');
    type = registerOutput<String>('type');
    udpTimeoutSeconds = registerOutput<int>('udpTimeoutSeconds');
    updatedAt = registerOutput<String>('updatedAt');
    vpcs = registerOutput<List<Map<String, dynamic>>>('vpcs');
  }

  /// Gets an existing [VpcNatGateway] resource's state with the given [name] and [id].
  static VpcNatGateway get(
    String name,
    pulumi.Input<String> id, {
    VpcNatGatewayState? state,
  }) {
    return VpcNatGateway._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  VpcNatGateway._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'digitalocean:index/vpcNatGateway:VpcNatGateway',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createdAt = registerOutput<String>('createdAt');
    egresses = registerOutput<List<Map<String, dynamic>>>('egresses');
    icmpTimeoutSeconds = registerOutput<int>('icmpTimeoutSeconds');
    this.name = registerOutput<String>('name');
    projectId = registerOutput<String>('projectId');
    region = registerOutput<String>('region');
    size = registerOutput<int>('size');
    this.state = registerOutput<String>('state');
    tcpTimeoutSeconds = registerOutput<int>('tcpTimeoutSeconds');
    type = registerOutput<String>('type');
    udpTimeoutSeconds = registerOutput<int>('udpTimeoutSeconds');
    updatedAt = registerOutput<String>('updatedAt');
    vpcs = registerOutput<List<Map<String, dynamic>>>('vpcs');
  }
}
