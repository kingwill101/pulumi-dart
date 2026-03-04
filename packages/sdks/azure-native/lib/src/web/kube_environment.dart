import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_logs_configuration_response.dart';
import 'arc_configuration_response.dart';
import 'container_apps_configuration_response.dart';
import 'extended_location_response.dart';
import 'kube_environment_args.dart';

/// A Kubernetes cluster specialized for web workloads by Azure App Service
///
/// Uses Azure REST API version 2024-04-01. In version 2.x of the Azure Native provider, it used API version 2022-09-01.
///
/// Other available API versions: 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-11-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create kube environments
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var kubeEnvironment = new AzureNative.Web.KubeEnvironment("kubeEnvironment", new()
///     {
///         Location = "East US",
///         Name = "testkubeenv",
///         ResourceGroupName = "examplerg",
///         StaticIp = "1.2.3.4",
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
/// 	web "github.com/pulumi/pulumi-azure-native-sdk/web/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := web.NewKubeEnvironment(ctx, "kubeEnvironment", &web.KubeEnvironmentArgs{
/// 			Location:          pulumi.String("East US"),
/// 			Name:              pulumi.String("testkubeenv"),
/// 			ResourceGroupName: pulumi.String("examplerg"),
/// 			StaticIp:          pulumi.String("1.2.3.4"),
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
/// import com.pulumi.azurenative.web.KubeEnvironment;
/// import com.pulumi.azurenative.web.KubeEnvironmentArgs;
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
///         var kubeEnvironment = new KubeEnvironment("kubeEnvironment", KubeEnvironmentArgs.builder()
///             .location("East US")
///             .name("testkubeenv")
///             .resourceGroupName("examplerg")
///             .staticIp("1.2.3.4")
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
/// const kubeEnvironment = new azure_native.web.KubeEnvironment("kubeEnvironment", {
///     location: "East US",
///     name: "testkubeenv",
///     resourceGroupName: "examplerg",
///     staticIp: "1.2.3.4",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// kube_environment = azure_native.web.KubeEnvironment("kubeEnvironment",
///     location="East US",
///     name="testkubeenv",
///     resource_group_name="examplerg",
///     static_ip="1.2.3.4")
///
/// ```
///
/// ```yaml
/// resources:
///   kubeEnvironment:
///     type: azure-native:web:KubeEnvironment
///     properties:
///       location: East US
///       name: testkubeenv
///       resourceGroupName: examplerg
///       staticIp: 1.2.3.4
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
/// $ pulumi import azure-native:web:KubeEnvironment testkubeenv /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Web/kubeEnvironments/{name}
/// ```
class KubeEnvironment extends pulumi.CustomResource {
  late final pulumi.Output<String?> aksResourceID;

  /// Cluster configuration which enables the log daemon to export
  /// app logs to a destination. Currently only "log-analytics" is
  /// supported
  late final pulumi.Output<AppLogsConfigurationResponse?> appLogsConfiguration;

  /// Cluster configuration which determines the ARC cluster
  /// components types. Eg: Choosing between BuildService kind,
  /// FrontEnd Service ArtifactsStorageType etc.
  late final pulumi.Output<ArcConfigurationResponse?> arcConfiguration;

  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Cluster configuration for Container Apps Environments to configure Dapr Instrumentation Key and VNET Configuration
  late final pulumi.Output<ContainerAppsConfigurationResponse?>
  containerAppsConfiguration;

  /// Default Domain Name for the cluster
  late final pulumi.Output<String> defaultDomain;

  /// Any errors that occurred during deployment or deployment validation
  late final pulumi.Output<String> deploymentErrors;

  /// Type of Kubernetes Environment. Only supported for Container App Environments with value as Managed
  late final pulumi.Output<String?> environmentType;

  /// Extended Location.
  late final pulumi.Output<ExtendedLocationResponse?> extendedLocation;

  /// Only visible within Vnet/Subnet
  late final pulumi.Output<bool?> internalLoadBalancerEnabled;

  /// Kind of resource. If the resource is an app, you can refer to https://github.com/Azure/app-service-linux-docs/blob/master/Things_You_Should_Know/kind_property.md#app-service-resource-kind-reference for details supported values for kind.
  late final pulumi.Output<String?> kind;

  /// Resource Location.
  late final pulumi.Output<String> location;

  /// Resource Name.
  late final pulumi.Output<String> name;

  /// Provisioning state of the Kubernetes Environment.
  late final pulumi.Output<String> provisioningState;

  /// Static IP of the KubeEnvironment
  late final pulumi.Output<String?> staticIp;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [KubeEnvironment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [KubeEnvironment]. {@macro pulumi_web_kube_environment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  KubeEnvironment(
    String name, {
    KubeEnvironmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:web:KubeEnvironment',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    aksResourceID = registerOutput<String?>('aksResourceID');
    appLogsConfiguration = registerOutput<AppLogsConfigurationResponse?>(
      'appLogsConfiguration',
    );
    arcConfiguration = registerOutput<ArcConfigurationResponse?>(
      'arcConfiguration',
    );
    azureApiVersion = registerOutput<String>('azureApiVersion');
    containerAppsConfiguration =
        registerOutput<ContainerAppsConfigurationResponse?>(
          'containerAppsConfiguration',
        );
    defaultDomain = registerOutput<String>('defaultDomain');
    deploymentErrors = registerOutput<String>('deploymentErrors');
    environmentType = registerOutput<String?>('environmentType');
    extendedLocation = registerOutput<ExtendedLocationResponse?>(
      'extendedLocation',
    );
    internalLoadBalancerEnabled = registerOutput<bool?>(
      'internalLoadBalancerEnabled',
    );
    kind = registerOutput<String?>('kind');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    staticIp = registerOutput<String?>('staticIp');
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
