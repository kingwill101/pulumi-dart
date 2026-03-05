import 'package:pulumi/pulumi.dart' as pulumi;
import 'serial_port_args.dart';

/// Represents the serial port of the parent resource.
///
/// Uses Azure REST API version 2018-05-01. In version 2.x of the Azure Native provider, it used API version 2018-05-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create a new serial port resource.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var serialPort = new AzureNative.SerialConsole.SerialPort("serialPort", new()
///     {
///         ParentResource = "myVM",
///         ParentResourceType = "virtualMachines",
///         ResourceGroupName = "myResourceGroup",
///         ResourceProviderNamespace = "Microsoft.Compute",
///         SerialPort = "0",
///         State = AzureNative.SerialConsole.SerialPortState.Enabled,
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	serialconsole "github.com/pulumi/pulumi-azure-native-sdk/serialconsole/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := serialconsole.NewSerialPort(ctx, "serialPort", &serialconsole.SerialPortArgs{
/// 			ParentResource:            pulumi.String("myVM"),
/// 			ParentResourceType:        pulumi.String("virtualMachines"),
/// 			ResourceGroupName:         pulumi.String("myResourceGroup"),
/// 			ResourceProviderNamespace: pulumi.String("Microsoft.Compute"),
/// 			SerialPort:                pulumi.String("0"),
/// 			State:                     serialconsole.SerialPortStateEnabled,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.serialconsole.SerialPort;
/// import com.pulumi.azurenative.serialconsole.SerialPortArgs;
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
///         var serialPort = new SerialPort("serialPort", SerialPortArgs.builder()
///             .parentResource("myVM")
///             .parentResourceType("virtualMachines")
///             .resourceGroupName("myResourceGroup")
///             .resourceProviderNamespace("Microsoft.Compute")
///             .serialPort("0")
///             .state("enabled")
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const serialPort = new azure_native.serialconsole.SerialPort("serialPort", {
///     parentResource: "myVM",
///     parentResourceType: "virtualMachines",
///     resourceGroupName: "myResourceGroup",
///     resourceProviderNamespace: "Microsoft.Compute",
///     serialPort: "0",
///     state: azure_native.serialconsole.SerialPortState.Enabled,
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// serial_port = azure_native.serialconsole.SerialPort("serialPort",
///     parent_resource="myVM",
///     parent_resource_type="virtualMachines",
///     resource_group_name="myResourceGroup",
///     resource_provider_namespace="Microsoft.Compute",
///     serial_port="0",
///     state=azure_native.serialconsole.SerialPortState.ENABLED)
///
/// ```
///
/// ```yaml
/// resources:
///   serialPort:
///     type: azure-native:serialconsole:SerialPort
///     properties:
///       parentResource: myVM
///       parentResourceType: virtualMachines
///       resourceGroupName: myResourceGroup
///       resourceProviderNamespace: Microsoft.Compute
///       serialPort: '0'
///       state: enabled
///
/// ```
///
/// {{% /example %}}
/// {{% /examples %}}
///
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:serialconsole:SerialPort 0 /subscriptions/{subscriptionId}/resourcegroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{parentResourceType}/{parentResource}/providers/Microsoft.SerialConsole/serialPorts/{serialPort}
/// ```
class SerialPort extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Resource name
  late final pulumi.Output<String> name;
  /// Specifies whether the port is enabled for a serial console connection.
  late final pulumi.Output<String?> state;
  /// Resource type
  late final pulumi.Output<String> type;

  /// Creates a new [SerialPort].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SerialPort]. {@macro pulumi_serialconsole_serial_port_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SerialPort(
    String name, {
    SerialPortArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:serialconsole:SerialPort',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    state = registerOutput<String?>('state');
    type = registerOutput<String>('type');
  }
}
