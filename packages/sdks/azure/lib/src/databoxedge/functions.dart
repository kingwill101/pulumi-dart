import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_device_args.dart';
import 'get_device_result.dart';

/// Get information about a Databox Edge Device.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.databoxedge.getDevice({
///     name: "example-device",
///     resourceGroupName: "example-rg",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.databoxedge.get_device(name="example-device",
///     resource_group_name="example-rg")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.DataboxEdge.GetDevice.Invoke(new()
///     {
///         Name = "example-device",
///         ResourceGroupName = "example-rg",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/databoxedge"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := databoxedge.LookupDevice(ctx, &databoxedge.LookupDeviceArgs{
/// 			Name:              "example-device",
/// 			ResourceGroupName: "example-rg",
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
///     azure = {
///       source = "pulumi/azure"
///     }
///   }
/// }
///
/// data "azure_databoxedge_getdevice" "example" {
///   name                = "example-device"
///   resource_group_name = "example-rg"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.databoxedge.DataboxedgeFunctions;
/// import com.pulumi.azure.databoxedge.inputs.GetDeviceArgs;
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
///         final var example = DataboxedgeFunctions.getDevice(GetDeviceArgs.builder()
///             .name("example-device")
///             .resourceGroupName("example-rg")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:databoxedge:getDevice
///       arguments:
///         name: example-device
///         resourceGroupName: example-rg
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.DataBoxEdge` - 2022-03-01
/// [args] Arguments passed to this invoke. {@macro pulumi_databoxedge_get_device_get_device_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDeviceResult> getDevice(
  GetDeviceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:databoxedge/getDevice:getDevice',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDeviceResult.fromMap(result);
}

pulumi.Output<GetDeviceResult> getDeviceOutput(
  GetDeviceArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure:databoxedge/getDevice:getDevice',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDeviceResult.fromMap);
}
