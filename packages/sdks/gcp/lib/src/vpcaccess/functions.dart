import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_connector_args.dart';
import 'get_connector_result.dart';

/// Get a Serverless VPC Access connector.
///
/// To get more information about Connector, see:
///
/// * [API documentation](https://cloud.google.com/vpc/docs/reference/vpcaccess/rest/v1/projects.locations.connectors)
/// * How-to Guides
/// * [Configuring Serverless VPC Access](https://cloud.google.com/vpc/docs/configure-serverless-vpc-access)
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const sample = gcp.vpcaccess.getConnector({
///     name: "vpc-con",
/// });
/// const connector = new gcp.vpcaccess.Connector("connector", {
///     name: "vpc-con",
///     ipCidrRange: "10.8.0.0/28",
///     network: "default",
///     region: "us-central1",
///     minInstances: 2,
///     maxInstances: 3,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// sample = gcp.vpcaccess.get_connector(name="vpc-con")
/// connector = gcp.vpcaccess.Connector("connector",
///     name="vpc-con",
///     ip_cidr_range="10.8.0.0/28",
///     network="default",
///     region="us-central1",
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
///     var sample = Gcp.VpcAccess.GetConnector.Invoke(new()
///     {
///         Name = "vpc-con",
///     });
///
///     var connector = new Gcp.VpcAccess.Connector("connector", new()
///     {
///         Name = "vpc-con",
///         IpCidrRange = "10.8.0.0/28",
///         Network = "default",
///         Region = "us-central1",
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
/// 		_, err := vpcaccess.LookupConnector(ctx, &vpcaccess.LookupConnectorArgs{
/// 			Name: "vpc-con",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = vpcaccess.NewConnector(ctx, "connector", &vpcaccess.ConnectorArgs{
/// 			Name:         pulumi.String("vpc-con"),
/// 			IpCidrRange:  pulumi.String("10.8.0.0/28"),
/// 			Network:      pulumi.String("default"),
/// 			Region:       pulumi.String("us-central1"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_vpcaccess_getconnector" "sample" {
///   name = "vpc-con"
/// }
///
/// resource "gcp_vpcaccess_connector" "connector" {
///   name          = "vpc-con"
///   ip_cidr_range = "10.8.0.0/28"
///   network       = "default"
///   region        = "us-central1"
///   min_instances = 2
///   max_instances = 3
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.vpcaccess.VpcaccessFunctions;
/// import com.pulumi.gcp.vpcaccess.inputs.GetConnectorArgs;
/// import com.pulumi.gcp.vpcaccess.Connector;
/// import com.pulumi.gcp.vpcaccess.ConnectorArgs;
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
///         final var sample = VpcaccessFunctions.getConnector(GetConnectorArgs.builder()
///             .name("vpc-con")
///             .build());
///
///         var connector = new Connector("connector", ConnectorArgs.builder()
///             .name("vpc-con")
///             .ipCidrRange("10.8.0.0/28")
///             .network("default")
///             .region("us-central1")
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
///       region: us-central1
///       minInstances: 2
///       maxInstances: 3
/// variables:
///   sample:
///     fn::invoke:
///       function: gcp:vpcaccess:getConnector
///       arguments:
///         name: vpc-con
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_vpcaccess_get_connector_get_connector_args_doc}
/// [options] Invoke options controlling this call.
Future<GetConnectorResult> getConnector(
  GetConnectorArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:vpcaccess/getConnector:getConnector',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConnectorResult.fromMap(result);
}

pulumi.Output<GetConnectorResult> getConnectorOutput(
  GetConnectorArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:vpcaccess/getConnector:getConnector',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetConnectorResult.fromMap);
}
