import 'package:pulumi/pulumi.dart' as pulumi;
import 'console_args.dart';
import 'console_properties_response.dart';

/// Cloud shell console
///
/// Uses Azure REST API version 2018-10-01. In version 2.x of the Azure Native provider, it used API version 2018-10-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### PutConsole
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var console = new AzureNative.Portal.Console("console", new()
///     {
///         ConsoleName = "default",
///         Properties = new AzureNative.Portal.Inputs.ConsoleCreatePropertiesArgs
///         {
///             OsType = AzureNative.Portal.OsType.Linux,
///         },
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
/// 	portal "github.com/pulumi/pulumi-azure-native-sdk/portal/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := portal.NewConsole(ctx, "console", &portal.ConsoleArgs{
/// 			ConsoleName: pulumi.String("default"),
/// 			Properties: &portal.ConsoleCreatePropertiesArgs{
/// 				OsType: pulumi.String(portal.OsTypeLinux),
/// 			},
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_portal_console" "console" {
///   console_name = "default"
///   properties = {
///     os_type = "Linux"
///   }
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
/// import com.pulumi.azurenative.portal.Console;
/// import com.pulumi.azurenative.portal.ConsoleArgs;
/// import com.pulumi.azurenative.portal.inputs.ConsoleCreatePropertiesArgs;
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
///         var console = new Console("console", ConsoleArgs.builder()
///             .consoleName("default")
///             .properties(ConsoleCreatePropertiesArgs.builder()
///                 .osType("Linux")
///                 .build())
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
/// const console = new azure_native.portal.Console("console", {
///     consoleName: "default",
///     properties: {
///         osType: azure_native.portal.OsType.Linux,
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// console = azure_native.portal.Console("console",
///     console_name="default",
///     properties={
///         "os_type": azure_native.portal.OsType.LINUX,
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   console:
///     type: azure-native:portal:Console
///     properties:
///       consoleName: default
///       properties:
///         osType: Linux
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
/// $ pulumi import azure-native:portal:Console myresource1 /providers/Microsoft.Portal/consoles/{consoleName}
/// ```
class Console extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Cloud shell console properties.
  late final pulumi.Output<ConsolePropertiesResponse> properties;

  /// Creates a new [Console].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Console]. {@macro pulumi_portal_console_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Console(
    String name, {
    ConsoleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:portal:Console',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    properties = registerOutput<ConsolePropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ConsolePropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [Console] resource.
  Console.reference(String urn)
    : super(
        'azure-native:portal:Console',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    properties = registerOutput<ConsolePropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ConsolePropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
