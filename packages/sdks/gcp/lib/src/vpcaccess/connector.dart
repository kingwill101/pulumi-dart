import 'package:pulumi/pulumi.dart' as pulumi;
import 'connector_args.dart';
import 'connector_state.dart';
import 'connector_subnet.dart';

/// Serverless VPC Access connector resource.
///
///
/// To get more information about Connector, see:
///
/// * [API documentation](https://cloud.google.com/vpc/docs/reference/vpcaccess/rest/v1/projects.locations.connectors)
/// * How-to Guides
/// * [Configuring Serverless VPC Access](https://cloud.google.com/vpc/docs/configure-serverless-vpc-access)
///
/// ## Example Usage
///
/// ### Vpc Access Connector
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const connector = new gcp.vpcaccess.Connector("connector", {
///     name: "vpc-con",
///     ipCidrRange: "10.8.0.0/28",
///     network: "default",
///     minInstances: 2,
///     maxInstances: 3,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// connector = gcp.vpcaccess.Connector("connector",
///     name="vpc-con",
///     ip_cidr_range="10.8.0.0/28",
///     network="default",
///     min_instances=2,
///     max_instances=3)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var connector = new Gcp.VpcAccess.Connector("connector", new()
///     {
///         Name = "vpc-con",
///         IpCidrRange = "10.8.0.0/28",
///         Network = "default",
///         MinInstances = 2,
///         MaxInstances = 3,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/vpcaccess"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := vpcaccess.NewConnector(ctx, "connector", &vpcaccess.ConnectorArgs{
/// 			Name:         pulumi.String("vpc-con"),
/// 			IpCidrRange:  pulumi.String("10.8.0.0/28"),
/// 			Network:      pulumi.String("default"),
/// 			MinInstances: pulumi.Int(2),
/// 			MaxInstances: pulumi.Int(3),
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
/// import com.pulumi.gcp.vpcaccess.Connector;
/// import com.pulumi.gcp.vpcaccess.ConnectorArgs;
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
///         var connector = new Connector("connector", ConnectorArgs.builder()
///             .name("vpc-con")
///             .ipCidrRange("10.8.0.0/28")
///             .network("default")
///             .minInstances(2)
///             .maxInstances(3)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   connector:
///     type: gcp:vpcaccess:Connector
///     properties:
///       name: vpc-con
///       ipCidrRange: 10.8.0.0/28
///       network: default
///       minInstances: 2
///       maxInstances: 3
/// ```
///
/// ### Vpc Access Connector Shared Vpc
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const customTest = new gcp.compute.Subnetwork("custom_test", {
///     name: "vpc-con",
///     ipCidrRange: "10.2.0.0/28",
///     region: "us-central1",
///     network: "default",
/// });
/// const connector = new gcp.vpcaccess.Connector("connector", {
///     name: "vpc-con",
///     subnet: {
///         name: customTest.name,
///     },
///     machineType: "e2-standard-4",
///     minInstances: 2,
///     maxInstances: 3,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// custom_test = gcp.compute.Subnetwork("custom_test",
///     name="vpc-con",
///     ip_cidr_range="10.2.0.0/28",
///     region="us-central1",
///     network="default")
/// connector = gcp.vpcaccess.Connector("connector",
///     name="vpc-con",
///     subnet={
///         "name": custom_test.name,
///     },
///     machine_type="e2-standard-4",
///     min_instances=2,
///     max_instances=3)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var customTest = new Gcp.Compute.Subnetwork("custom_test", new()
///     {
///         Name = "vpc-con",
///         IpCidrRange = "10.2.0.0/28",
///         Region = "us-central1",
///         Network = "default",
///     });
///
///     var connector = new Gcp.VpcAccess.Connector("connector", new()
///     {
///         Name = "vpc-con",
///         Subnet = new Gcp.VpcAccess.Inputs.ConnectorSubnetArgs
///         {
///             Name = customTest.Name,
///         },
///         MachineType = "e2-standard-4",
///         MinInstances = 2,
///         MaxInstances = 3,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/vpcaccess"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		customTest, err := compute.NewSubnetwork(ctx, "custom_test", &compute.SubnetworkArgs{
/// 			Name:        pulumi.String("vpc-con"),
/// 			IpCidrRange: pulumi.String("10.2.0.0/28"),
/// 			Region:      pulumi.String("us-central1"),
/// 			Network:     pulumi.String("default"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = vpcaccess.NewConnector(ctx, "connector", &vpcaccess.ConnectorArgs{
/// 			Name: pulumi.String("vpc-con"),
/// 			Subnet: &vpcaccess.ConnectorSubnetArgs{
/// 				Name: customTest.Name,
/// 			},
/// 			MachineType:  pulumi.String("e2-standard-4"),
/// 			MinInstances: pulumi.Int(2),
/// 			MaxInstances: pulumi.Int(3),
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
/// import com.pulumi.gcp.compute.Subnetwork;
/// import com.pulumi.gcp.compute.SubnetworkArgs;
/// import com.pulumi.gcp.vpcaccess.Connector;
/// import com.pulumi.gcp.vpcaccess.ConnectorArgs;
/// import com.pulumi.gcp.vpcaccess.inputs.ConnectorSubnetArgs;
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
///         var customTest = new Subnetwork("customTest", SubnetworkArgs.builder()
///             .name("vpc-con")
///             .ipCidrRange("10.2.0.0/28")
///             .region("us-central1")
///             .network("default")
///             .build());
///
///         var connector = new Connector("connector", ConnectorArgs.builder()
///             .name("vpc-con")
///             .subnet(ConnectorSubnetArgs.builder()
///                 .name(customTest.name())
///                 .build())
///             .machineType("e2-standard-4")
///             .minInstances(2)
///             .maxInstances(3)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   connector:
///     type: gcp:vpcaccess:Connector
///     properties:
///       name: vpc-con
///       subnet:
///         name: ${customTest.name}
///       machineType: e2-standard-4
///       minInstances: 2
///       maxInstances: 3
///   customTest:
///     type: gcp:compute:Subnetwork
///     name: custom_test
///     properties:
///       name: vpc-con
///       ipCidrRange: 10.2.0.0/28
///       region: us-central1
///       network: default
/// ```
///
///
/// ## Import
///
/// Connector can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{region}}/connectors/{{name}}`
///
/// * `{{project}}/{{region}}/{{name}}`
///
/// * `{{region}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, Connector can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:vpcaccess/connector:Connector default projects/{{project}}/locations/{{region}}/connectors/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:vpcaccess/connector:Connector default {{project}}/{{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:vpcaccess/connector:Connector default {{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:vpcaccess/connector:Connector default {{name}}
/// ```
class Connector extends pulumi.CustomResource {
  /// List of projects using the connector.
  late final pulumi.Output<List<String>> connectedProjects;
  /// The range of internal addresses that follows RFC 4632 notation. Example: `10.132.0.0/28`.
  late final pulumi.Output<String?> ipCidrRange;
  /// Machine type of VM Instance underlying connector. Default is e2-micro
  late final pulumi.Output<String?> machineType;
  /// Maximum value of instances in autoscaling group underlying the connector. Value must be between 3 and 10, inclusive. Must be
  /// higher than the value specified by min_instances. Required alongside `min_instances` if not using `min_throughput`/`max_throughput`.
  late final pulumi.Output<int> maxInstances;
  /// Maximum throughput of the connector in Mbps, must be greater than `min_throughput`. Default is 300. Refers to the expected throughput
  /// when using an e2-micro machine type. Value must be a multiple of 100 from 300 through 1000. Must be higher than the value specified by
  /// min_throughput. Only one of `max_throughput` and `max_instances` can be specified. The use of max_throughput is discouraged in favor of max_instances.
  late final pulumi.Output<int> maxThroughput;
  /// Minimum value of instances in autoscaling group underlying the connector. Value must be between 2 and 9, inclusive. Must be
  /// lower than the value specified by max_instances. Required alongside `max_instances` if not using `min_throughput`/`max_throughput`.
  late final pulumi.Output<int> minInstances;
  /// Minimum throughput of the connector in Mbps. Default and min is 200. Refers to the expected throughput when using an e2-micro machine type.
  /// Value must be a multiple of 100 from 200 through 900. Must be lower than the value specified by max_throughput.
  /// Only one of `min_throughput` and `min_instances` can be specified. The use of min_throughput is discouraged in favor of min_instances.
  late final pulumi.Output<int> minThroughput;
  /// The name of the resource (Max 25 characters).
  late final pulumi.Output<String> name;
  /// Name or self_link of the VPC network. Required if `ip_cidr_range` is set.
  late final pulumi.Output<String> network;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// Region where the VPC Access connector resides. If it is not provided, the provider region is used.
  late final pulumi.Output<String> region;
  /// The fully qualified name of this VPC connector
  late final pulumi.Output<String> selfLink;
  /// State of the VPC access connector.
  late final pulumi.Output<String> state;
  /// The subnet in which to house the connector
  /// Structure is documented below.
  late final pulumi.Output<ConnectorSubnet?> subnet;

  /// Creates a new [Connector].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Connector]. {@macro pulumi_vpcaccess_connector_connector_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Connector(
    String name, {
    ConnectorArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:vpcaccess/connector:Connector',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    connectedProjects = registerOutput<List<String>>('connectedProjects');
    ipCidrRange = registerOutput<String?>('ipCidrRange');
    machineType = registerOutput<String?>('machineType');
    maxInstances = registerOutput<int>('maxInstances');
    maxThroughput = registerOutput<int>('maxThroughput');
    minInstances = registerOutput<int>('minInstances');
    minThroughput = registerOutput<int>('minThroughput');
    this.name = registerOutput<String>('name');
    network = registerOutput<String>('network');
    project = registerOutput<String>('project');
    region = registerOutput<String>('region');
    selfLink = registerOutput<String>('selfLink');
    state = registerOutput<String>('state');
    subnet = registerOutput<ConnectorSubnet?>('subnet', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ConnectorSubnet.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [Connector] resource's state with the given [name] and [id].
  static Connector get(
    String name,
    pulumi.Input<String> id, {
    ConnectorState? state,
  }) {
    return Connector._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Connector._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:vpcaccess/connector:Connector',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    connectedProjects = registerOutput<List<String>>('connectedProjects');
    ipCidrRange = registerOutput<String?>('ipCidrRange');
    machineType = registerOutput<String?>('machineType');
    maxInstances = registerOutput<int>('maxInstances');
    maxThroughput = registerOutput<int>('maxThroughput');
    minInstances = registerOutput<int>('minInstances');
    minThroughput = registerOutput<int>('minThroughput');
    this.name = registerOutput<String>('name');
    network = registerOutput<String>('network');
    project = registerOutput<String>('project');
    region = registerOutput<String>('region');
    selfLink = registerOutput<String>('selfLink');
    this.state = registerOutput<String>('state');
    subnet = registerOutput<ConnectorSubnet?>('subnet', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ConnectorSubnet.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
