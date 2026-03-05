import 'package:pulumi/pulumi.dart' as pulumi;
import 'console_properties_response.dart';
import 'console_with_location_args.dart';

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
///     var consoleWithLocation = new AzureNative.Portal.ConsoleWithLocation("consoleWithLocation", new()
///     {
///         ConsoleName = "default",
///         Location = "eastus",
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
/// 		_, err := portal.NewConsoleWithLocation(ctx, "consoleWithLocation", &portal.ConsoleWithLocationArgs{
/// 			ConsoleName: pulumi.String("default"),
/// 			Location:    pulumi.String("eastus"),
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
/// import com.pulumi.azurenative.portal.ConsoleWithLocation;
/// import com.pulumi.azurenative.portal.ConsoleWithLocationArgs;
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
///         var consoleWithLocation = new ConsoleWithLocation("consoleWithLocation", ConsoleWithLocationArgs.builder()
///             .consoleName("default")
///             .location("eastus")
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
/// const consoleWithLocation = new azure_native.portal.ConsoleWithLocation("consoleWithLocation", {
///     consoleName: "default",
///     location: "eastus",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// console_with_location = azure_native.portal.ConsoleWithLocation("consoleWithLocation",
///     console_name="default",
///     location="eastus")
///
/// ```
///
/// ```yaml
/// resources:
///   consoleWithLocation:
///     type: azure-native:portal:ConsoleWithLocation
///     properties:
///       consoleName: default
///       location: eastus
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
/// $ pulumi import azure-native:portal:ConsoleWithLocation myresource1 /providers/Microsoft.Portal/locations/{location}/consoles/{consoleName}
/// ```
class ConsoleWithLocation extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Cloud shell console properties.
  late final pulumi.Output<ConsolePropertiesResponse> properties;

  /// Creates a new [ConsoleWithLocation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ConsoleWithLocation]. {@macro pulumi_portal_console_with_location_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ConsoleWithLocation(
    String name, {
    ConsoleWithLocationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:portal:ConsoleWithLocation',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    properties = registerOutput<ConsolePropertiesResponse>(
      'properties',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ConsolePropertiesResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
  }
}
