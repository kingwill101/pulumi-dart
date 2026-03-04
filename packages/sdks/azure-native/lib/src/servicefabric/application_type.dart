import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_type_args.dart';
import 'system_data_response.dart';

/// The application type name resource
///
/// Uses Azure REST API version 2024-11-01-preview. In version 2.x of the Azure Native provider, it used API version 2024-11-01-preview.
///
/// Other available API versions: 2025-03-01-preview, 2025-06-01-preview, 2025-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native servicefabric [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Put an application type
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var applicationType = new AzureNative.ServiceFabric.ApplicationType("applicationType", new()
///     {
///         ApplicationTypeName = "myAppType",
///         ClusterName = "myCluster",
///         Location = "eastus",
///         ResourceGroupName = "resRg",
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
/// 	servicefabric "github.com/pulumi/pulumi-azure-native-sdk/servicefabric/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := servicefabric.NewApplicationType(ctx, "applicationType", &servicefabric.ApplicationTypeArgs{
/// 			ApplicationTypeName: pulumi.String("myAppType"),
/// 			ClusterName:         pulumi.String("myCluster"),
/// 			Location:            pulumi.String("eastus"),
/// 			ResourceGroupName:   pulumi.String("resRg"),
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
/// import com.pulumi.azurenative.servicefabric.ApplicationType;
/// import com.pulumi.azurenative.servicefabric.ApplicationTypeArgs;
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
///         var applicationType = new ApplicationType("applicationType", ApplicationTypeArgs.builder()
///             .applicationTypeName("myAppType")
///             .clusterName("myCluster")
///             .location("eastus")
///             .resourceGroupName("resRg")
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
/// const applicationType = new azure_native.servicefabric.ApplicationType("applicationType", {
///     applicationTypeName: "myAppType",
///     clusterName: "myCluster",
///     location: "eastus",
///     resourceGroupName: "resRg",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// application_type = azure_native.servicefabric.ApplicationType("applicationType",
///     application_type_name="myAppType",
///     cluster_name="myCluster",
///     location="eastus",
///     resource_group_name="resRg")
///
/// ```
///
/// ```yaml
/// resources:
///   applicationType:
///     type: azure-native:servicefabric:ApplicationType
///     properties:
///       applicationTypeName: myAppType
///       clusterName: myCluster
///       location: eastus
///       resourceGroupName: resRg
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
/// $ pulumi import azure-native:servicefabric:ApplicationType myAppType /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ServiceFabric/managedClusters/{clusterName}/applicationTypes/{applicationTypeName}
/// ```
class ApplicationType extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The geo-location where the resource lives
  late final pulumi.Output<String?> location;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// The current deployment or provisioning state, which only appears in the response.
  late final pulumi.Output<String> provisioningState;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [ApplicationType].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ApplicationType]. {@macro pulumi_servicefabric_application_type_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ApplicationType(
    String name, {
    ApplicationTypeArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:servicefabric:ApplicationType',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData');
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
