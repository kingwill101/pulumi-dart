import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_gateway_args.dart';
import 'get_gateway_result.dart';

/// Get information about a Network Services Gateway.
///
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = gcp.networkservices.getGateway({
///     location: defaultGoogleNetworkServicesGateway.location,
///     name: defaultGoogleNetworkServicesGateway.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.networkservices.get_gateway(location=default_google_network_services_gateway["location"],
///     name=default_google_network_services_gateway["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = Gcp.NetworkServices.GetGateway.Invoke(new()
///     {
///         Location = defaultGoogleNetworkServicesGateway.Location,
///         Name = defaultGoogleNetworkServicesGateway.Name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/networkservices"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := networkservices.LookupGateway(ctx, &networkservices.LookupGatewayArgs{
/// 			Location: defaultGoogleNetworkServicesGateway.Location,
/// 			Name:     defaultGoogleNetworkServicesGateway.Name,
/// 		}, nil)
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
/// data "gcp_networkservices_getgateway" "default" {
///   location = defaultGoogleNetworkServicesGateway.location
///   name     = defaultGoogleNetworkServicesGateway.name
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.networkservices.NetworkservicesFunctions;
/// import com.pulumi.gcp.networkservices.inputs.GetGatewayArgs;
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
///         final var default = NetworkservicesFunctions.getGateway(GetGatewayArgs.builder()
///             .location(defaultGoogleNetworkServicesGateway.get("location"))
///             .name(defaultGoogleNetworkServicesGateway.get("name"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   default:
///     fn::invoke:
///       function: gcp:networkservices:getGateway
///       arguments:
///         location: ${defaultGoogleNetworkServicesGateway.location}
///         name: ${defaultGoogleNetworkServicesGateway.name}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_networkservices_get_gateway_get_gateway_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGatewayResult> getGateway(
  GetGatewayArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:networkservices/getGateway:getGateway',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGatewayResult.fromMap(result);
}

pulumi.Output<GetGatewayResult> getGatewayOutput(
  GetGatewayArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:networkservices/getGateway:getGateway',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetGatewayResult.fromMap);
}
