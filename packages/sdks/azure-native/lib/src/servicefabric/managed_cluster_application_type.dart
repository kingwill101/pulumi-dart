import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_cluster_application_type_args.dart';
import 'system_data_response.dart';

/// The application type name resource
///
/// Uses Azure REST API version 2024-04-01. In version 2.x of the Azure Native provider, it used API version 2023-03-01-preview.
///
/// Other available API versions: 2023-03-01-preview, 2023-07-01-preview, 2023-09-01-preview, 2023-11-01-preview, 2023-12-01-preview, 2024-02-01-preview, 2024-06-01-preview, 2024-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native servicefabric [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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
///     var managedClusterApplicationType = new AzureNative.ServiceFabric.ManagedClusterApplicationType("managedClusterApplicationType", new()
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
/// 		_, err := servicefabric.NewManagedClusterApplicationType(ctx, "managedClusterApplicationType", &servicefabric.ManagedClusterApplicationTypeArgs{
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
/// import com.pulumi.azurenative.servicefabric.ManagedClusterApplicationType;
/// import com.pulumi.azurenative.servicefabric.ManagedClusterApplicationTypeArgs;
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
///         var managedClusterApplicationType = new ManagedClusterApplicationType("managedClusterApplicationType", ManagedClusterApplicationTypeArgs.builder()
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
/// const managedClusterApplicationType = new azure_native.servicefabric.ManagedClusterApplicationType("managedClusterApplicationType", {
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
/// managed_cluster_application_type = azure_native.servicefabric.ManagedClusterApplicationType("managedClusterApplicationType",
///     application_type_name="myAppType",
///     cluster_name="myCluster",
///     location="eastus",
///     resource_group_name="resRg")
///
/// ```
///
/// ```yaml
/// resources:
///   managedClusterApplicationType:
///     type: azure-native:servicefabric:ManagedClusterApplicationType
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
/// $ pulumi import azure-native:servicefabric:ManagedClusterApplicationType myAppType /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ServiceFabric/managedclusters/{clusterName}/applicationTypes/{applicationTypeName}
/// ```
class ManagedClusterApplicationType extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Resource location depends on the parent resource.
  late final pulumi.Output<String?> location;
  /// Azure resource name.
  late final pulumi.Output<String> name;
  /// The current deployment or provisioning state, which only appears in the response.
  late final pulumi.Output<String> provisioningState;
  /// Metadata pertaining to creation and last modification of the resource.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Azure resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Azure resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [ManagedClusterApplicationType].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ManagedClusterApplicationType]. {@macro pulumi_servicefabric_managed_cluster_application_type_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ManagedClusterApplicationType(
    String name, {
    ManagedClusterApplicationTypeArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:servicefabric:ManagedClusterApplicationType',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
