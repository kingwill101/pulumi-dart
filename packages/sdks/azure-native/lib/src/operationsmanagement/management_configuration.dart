import 'package:pulumi/pulumi.dart' as pulumi;
import 'management_configuration_args.dart';
import 'management_configuration_properties_response.dart';

/// The container for solution.
///
/// Uses Azure REST API version 2015-11-01-preview. In version 2.x of the Azure Native provider, it used API version 2015-11-01-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ManagementConfigurationCreate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var managementConfiguration = new AzureNative.OperationsManagement.ManagementConfiguration("managementConfiguration", new()
///     {
///         Location = "East US",
///         ManagementConfigurationName = "managementConfiguration1",
///         ResourceGroupName = "rg1",
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
/// 	operationsmanagement "github.com/pulumi/pulumi-azure-native-sdk/operationsmanagement/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := operationsmanagement.NewManagementConfiguration(ctx, "managementConfiguration", &operationsmanagement.ManagementConfigurationArgs{
/// 			Location:                    pulumi.String("East US"),
/// 			ManagementConfigurationName: pulumi.String("managementConfiguration1"),
/// 			ResourceGroupName:           pulumi.String("rg1"),
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
/// import com.pulumi.azurenative.operationsmanagement.ManagementConfiguration;
/// import com.pulumi.azurenative.operationsmanagement.ManagementConfigurationArgs;
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
///         var managementConfiguration = new ManagementConfiguration("managementConfiguration", ManagementConfigurationArgs.builder()
///             .location("East US")
///             .managementConfigurationName("managementConfiguration1")
///             .resourceGroupName("rg1")
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
/// const managementConfiguration = new azure_native.operationsmanagement.ManagementConfiguration("managementConfiguration", {
///     location: "East US",
///     managementConfigurationName: "managementConfiguration1",
///     resourceGroupName: "rg1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// management_configuration = azure_native.operationsmanagement.ManagementConfiguration("managementConfiguration",
///     location="East US",
///     management_configuration_name="managementConfiguration1",
///     resource_group_name="rg1")
///
/// ```
///
/// ```yaml
/// resources:
///   managementConfiguration:
///     type: azure-native:operationsmanagement:ManagementConfiguration
///     properties:
///       location: East US
///       managementConfigurationName: managementConfiguration1
///       resourceGroupName: rg1
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
/// $ pulumi import azure-native:operationsmanagement:ManagementConfiguration managementConfiguration1 /subscriptions/{subscriptionId}/resourcegroups/{resourceGroupName}/providers/Microsoft.OperationsManagement/ManagementConfigurations/{managementConfigurationName}
/// ```
class ManagementConfiguration extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Resource location
  late final pulumi.Output<String?> location;
  /// Resource name.
  late final pulumi.Output<String> name;
  /// Properties for ManagementConfiguration object supported by the OperationsManagement resource provider.
  late final pulumi.Output<ManagementConfigurationPropertiesResponse> properties;
  /// Resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [ManagementConfiguration].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ManagementConfiguration]. {@macro pulumi_operationsmanagement_management_configuration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ManagementConfiguration(
    String name, {
    ManagementConfigurationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:operationsmanagement:ManagementConfiguration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<ManagementConfigurationPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagementConfigurationPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
