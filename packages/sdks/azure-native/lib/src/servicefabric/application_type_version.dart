import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_type_version_args.dart';
import 'system_data_response.dart';

/// An application type version resource for the specified application type name resource.
///
/// Uses Azure REST API version 2024-11-01-preview. In version 2.x of the Azure Native provider, it used API version 2024-11-01-preview.
///
/// Other available API versions: 2025-03-01-preview, 2025-06-01-preview, 2025-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native servicefabric [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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
///     var applicationTypeVersion = new AzureNative.ServiceFabric.ApplicationTypeVersion("applicationTypeVersion", new()
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
/// 		_, err := servicefabric.NewApplicationTypeVersion(ctx, "applicationTypeVersion", &servicefabric.ApplicationTypeVersionArgs{
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.servicefabric.ApplicationTypeVersion;
/// import com.pulumi.azurenative.servicefabric.ApplicationTypeVersionArgs;
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
///         var applicationTypeVersion = new ApplicationTypeVersion("applicationTypeVersion", ApplicationTypeVersionArgs.builder()
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
/// const applicationTypeVersion = new azure_native.servicefabric.ApplicationTypeVersion("applicationTypeVersion", {
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
/// application_type_version = azure_native.servicefabric.ApplicationTypeVersion("applicationTypeVersion",
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
///   applicationTypeVersion:
///     type: azure-native:servicefabric:ApplicationTypeVersion
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
/// $ pulumi import azure-native:servicefabric:ApplicationTypeVersion 1.0 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ServiceFabric/managedClusters/{clusterName}/applicationTypes/{applicationTypeName}/versions/{version}
/// ```
class ApplicationTypeVersion extends pulumi.CustomResource {
  /// The URL to the application package
  late final pulumi.Output<String> appPackageUrl;

  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The geo-location where the resource lives
  late final pulumi.Output<String?> location;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// The current deployment or provisioning state, which only appears in the response
  late final pulumi.Output<String> provisioningState;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [ApplicationTypeVersion].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ApplicationTypeVersion]. {@macro pulumi_servicefabric_application_type_version_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ApplicationTypeVersion(
    String name, {
    ApplicationTypeVersionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:servicefabric:ApplicationTypeVersion',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    appPackageUrl = registerOutput<String>('appPackageUrl');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>(
      'systemData',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SystemDataResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
