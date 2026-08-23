import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_cluster_application_type_version_args.dart';
import 'system_data_response.dart';

/// An application type version resource for the specified application type name resource.
///
/// Uses Azure REST API version 2024-04-01. In version 2.x of the Azure Native provider, it used API version 2023-03-01-preview.
///
/// Other available API versions: 2023-03-01-preview, 2023-07-01-preview, 2023-09-01-preview, 2023-11-01-preview, 2023-12-01-preview, 2024-02-01-preview, 2024-06-01-preview, 2024-09-01-preview, 2024-11-01-preview, 2025-03-01-preview, 2025-06-01-preview, 2025-10-01-preview, 2026-02-01, 2026-05-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native servicefabric [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Put an application type version
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var managedClusterApplicationTypeVersion = new AzureNative.ServiceFabric.ManagedClusterApplicationTypeVersion("managedClusterApplicationTypeVersion", new()
///     {
///         AppPackageUrl = "http://fakelink.test.com/MyAppType",
///         ApplicationTypeName = "myAppType",
///         ClusterName = "myCluster",
///         Location = "eastus",
///         ResourceGroupName = "resRg",
///         Version = "1.0",
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
/// 		_, err := servicefabric.NewManagedClusterApplicationTypeVersion(ctx, "managedClusterApplicationTypeVersion", &servicefabric.ManagedClusterApplicationTypeVersionArgs{
/// 			AppPackageUrl:       pulumi.String("http://fakelink.test.com/MyAppType"),
/// 			ApplicationTypeName: pulumi.String("myAppType"),
/// 			ClusterName:         pulumi.String("myCluster"),
/// 			Location:            pulumi.String("eastus"),
/// 			ResourceGroupName:   pulumi.String("resRg"),
/// 			Version:             pulumi.String("1.0"),
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
/// resource "azure-native_servicefabric_managedclusterapplicationtypeversion" "managedClusterApplicationTypeVersion" {
///   app_package_url       = "http://fakelink.test.com/MyAppType"
///   application_type_name = "myAppType"
///   cluster_name          = "myCluster"
///   location              = "eastus"
///   resource_group_name   = "resRg"
///   version               = "1.0"
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
/// import com.pulumi.azurenative.servicefabric.ManagedClusterApplicationTypeVersion;
/// import com.pulumi.azurenative.servicefabric.ManagedClusterApplicationTypeVersionArgs;
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
///         var managedClusterApplicationTypeVersion = new ManagedClusterApplicationTypeVersion("managedClusterApplicationTypeVersion", ManagedClusterApplicationTypeVersionArgs.builder()
///             .appPackageUrl("http://fakelink.test.com/MyAppType")
///             .applicationTypeName("myAppType")
///             .clusterName("myCluster")
///             .location("eastus")
///             .resourceGroupName("resRg")
///             .version("1.0")
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
/// const managedClusterApplicationTypeVersion = new azure_native.servicefabric.ManagedClusterApplicationTypeVersion("managedClusterApplicationTypeVersion", {
///     appPackageUrl: "http://fakelink.test.com/MyAppType",
///     applicationTypeName: "myAppType",
///     clusterName: "myCluster",
///     location: "eastus",
///     resourceGroupName: "resRg",
///     version: "1.0",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// managed_cluster_application_type_version = azure_native.servicefabric.ManagedClusterApplicationTypeVersion("managedClusterApplicationTypeVersion",
///     app_package_url="http://fakelink.test.com/MyAppType",
///     application_type_name="myAppType",
///     cluster_name="myCluster",
///     location="eastus",
///     resource_group_name="resRg",
///     version="1.0")
///
/// ```
///
/// ```yaml
/// resources:
///   managedClusterApplicationTypeVersion:
///     type: azure-native:servicefabric:ManagedClusterApplicationTypeVersion
///     properties:
///       appPackageUrl: http://fakelink.test.com/MyAppType
///       applicationTypeName: myAppType
///       clusterName: myCluster
///       location: eastus
///       resourceGroupName: resRg
///       version: '1.0'
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
/// $ pulumi import azure-native:servicefabric:ManagedClusterApplicationTypeVersion 1.0 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ServiceFabric/managedclusters/{clusterName}/applicationTypes/{applicationTypeName}/versions/{version}
/// ```
class ManagedClusterApplicationTypeVersion extends pulumi.CustomResource {
  /// The URL to the application package
  late final pulumi.Output<String> appPackageUrl;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Resource location depends on the parent resource.
  late final pulumi.Output<String?> location;
  /// Azure resource name.
  late final pulumi.Output<String> name;
  /// The current deployment or provisioning state, which only appears in the response
  late final pulumi.Output<String> provisioningState;
  /// Metadata pertaining to creation and last modification of the resource.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Azure resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Azure resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [ManagedClusterApplicationTypeVersion].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ManagedClusterApplicationTypeVersion]. {@macro pulumi_servicefabric_managed_cluster_application_type_version_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ManagedClusterApplicationTypeVersion(
    String name, {
    ManagedClusterApplicationTypeVersionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:servicefabric:ManagedClusterApplicationTypeVersion',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    appPackageUrl = registerOutput<String>('appPackageUrl');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
