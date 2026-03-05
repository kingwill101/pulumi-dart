import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_args.dart';
import 'diagnostics_description_response.dart';

/// This type describes an application resource.
///
/// Uses Azure REST API version 2018-09-01-preview. In version 2.x of the Azure Native provider, it used API version 2018-09-01-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### CreateOrUpdateApplication
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var application = new AzureNative.ServiceFabricMesh.Application("application", new()
///     {
///         ApplicationResourceName = "sampleApplication",
///         Description = "Service Fabric Mesh sample application.",
///         Location = "EastUS",
///         ResourceGroupName = "sbz_demo",
///         Services = new[]
///         {
///             new AzureNative.ServiceFabricMesh.Inputs.ServiceResourceDescriptionArgs
///             {
///                 CodePackages = new[]
///                 {
///                     new AzureNative.ServiceFabricMesh.Inputs.ContainerCodePackagePropertiesArgs
///                     {
///                         Endpoints = new[]
///                         {
///                             new AzureNative.ServiceFabricMesh.Inputs.EndpointPropertiesArgs
///                             {
///                                 Name = "helloWorldListener",
///                                 Port = 80,
///                             },
///                         },
///                         Image = "seabreeze/sbz-helloworld:1.0-alpine",
///                         Name = "helloWorldCode",
///                         Resources = new AzureNative.ServiceFabricMesh.Inputs.ResourceRequirementsArgs
///                         {
///                             Requests = new AzureNative.ServiceFabricMesh.Inputs.ResourceRequestsArgs
///                             {
///                                 Cpu = 1,
///                                 MemoryInGB = 1,
///                             },
///                         },
///                     },
///                 },
///                 Description = "SeaBreeze Hello World Service.",
///                 Name = "helloWorldService",
///                 NetworkRefs = new[]
///                 {
///                     new AzureNative.ServiceFabricMesh.Inputs.NetworkRefArgs
///                     {
///                         EndpointRefs = new[]
///                         {
///                             new AzureNative.ServiceFabricMesh.Inputs.EndpointRefArgs
///                             {
///                                 Name = "helloWorldListener",
///                             },
///                         },
///                         Name = "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/sbz_demo/providers/Microsoft.ServiceFabricMesh/networks/sampleNetwork",
///                     },
///                 },
///                 OsType = AzureNative.ServiceFabricMesh.OperatingSystemType.Linux,
///                 ReplicaCount = 1,
///             },
///         },
///         Tags = null,
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
/// 	servicefabricmesh "github.com/pulumi/pulumi-azure-native-sdk/servicefabricmesh/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := servicefabricmesh.NewApplication(ctx, "application", &servicefabricmesh.ApplicationArgs{
/// 			ApplicationResourceName: pulumi.String("sampleApplication"),
/// 			Description:             pulumi.String("Service Fabric Mesh sample application."),
/// 			Location:                pulumi.String("EastUS"),
/// 			ResourceGroupName:       pulumi.String("sbz_demo"),
/// 			Services: servicefabricmesh.ServiceResourceDescriptionArray{
/// 				&servicefabricmesh.ServiceResourceDescriptionArgs{
/// 					CodePackages: servicefabricmesh.ContainerCodePackagePropertiesArray{
/// 						&servicefabricmesh.ContainerCodePackagePropertiesArgs{
/// 							Endpoints: servicefabricmesh.EndpointPropertiesArray{
/// 								&servicefabricmesh.EndpointPropertiesArgs{
/// 									Name: pulumi.String("helloWorldListener"),
/// 									Port: pulumi.Int(80),
/// 								},
/// 							},
/// 							Image: pulumi.String("seabreeze/sbz-helloworld:1.0-alpine"),
/// 							Name:  pulumi.String("helloWorldCode"),
/// 							Resources: &servicefabricmesh.ResourceRequirementsArgs{
/// 								Requests: &servicefabricmesh.ResourceRequestsArgs{
/// 									Cpu:        pulumi.Float64(1),
/// 									MemoryInGB: pulumi.Float64(1),
/// 								},
/// 							},
/// 						},
/// 					},
/// 					Description: pulumi.String("SeaBreeze Hello World Service."),
/// 					Name:        pulumi.String("helloWorldService"),
/// 					NetworkRefs: servicefabricmesh.NetworkRefArray{
/// 						&servicefabricmesh.NetworkRefArgs{
/// 							EndpointRefs: servicefabricmesh.EndpointRefArray{
/// 								&servicefabricmesh.EndpointRefArgs{
/// 									Name: pulumi.String("helloWorldListener"),
/// 								},
/// 							},
/// 							Name: pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/sbz_demo/providers/Microsoft.ServiceFabricMesh/networks/sampleNetwork"),
/// 						},
/// 					},
/// 					OsType:       pulumi.String(servicefabricmesh.OperatingSystemTypeLinux),
/// 					ReplicaCount: pulumi.Int(1),
/// 				},
/// 			},
/// 			Tags: pulumi.StringMap{},
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
/// import com.pulumi.azurenative.servicefabricmesh.Application;
/// import com.pulumi.azurenative.servicefabricmesh.ApplicationArgs;
/// import com.pulumi.azurenative.servicefabricmesh.inputs.ServiceResourceDescriptionArgs;
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
///         var application = new Application("application", ApplicationArgs.builder()
///             .applicationResourceName("sampleApplication")
///             .description("Service Fabric Mesh sample application.")
///             .location("EastUS")
///             .resourceGroupName("sbz_demo")
///             .services(ServiceResourceDescriptionArgs.builder()
///                 .codePackages(ContainerCodePackagePropertiesArgs.builder()
///                     .endpoints(EndpointPropertiesArgs.builder()
///                         .name("helloWorldListener")
///                         .port(80)
///                         .build())
///                     .image("seabreeze/sbz-helloworld:1.0-alpine")
///                     .name("helloWorldCode")
///                     .resources(ResourceRequirementsArgs.builder()
///                         .requests(ResourceRequestsArgs.builder()
///                             .cpu(1.0)
///                             .memoryInGB(1.0)
///                             .build())
///                         .build())
///                     .build())
///                 .description("SeaBreeze Hello World Service.")
///                 .name("helloWorldService")
///                 .networkRefs(NetworkRefArgs.builder()
///                     .endpointRefs(EndpointRefArgs.builder()
///                         .name("helloWorldListener")
///                         .build())
///                     .name("/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/sbz_demo/providers/Microsoft.ServiceFabricMesh/networks/sampleNetwork")
///                     .build())
///                 .osType("Linux")
///                 .replicaCount(1)
///                 .build())
///             .tags(Map.ofEntries(
///             ))
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
/// const application = new azure_native.servicefabricmesh.Application("application", {
///     applicationResourceName: "sampleApplication",
///     description: "Service Fabric Mesh sample application.",
///     location: "EastUS",
///     resourceGroupName: "sbz_demo",
///     services: [{
///         codePackages: [{
///             endpoints: [{
///                 name: "helloWorldListener",
///                 port: 80,
///             }],
///             image: "seabreeze/sbz-helloworld:1.0-alpine",
///             name: "helloWorldCode",
///             resources: {
///                 requests: {
///                     cpu: 1,
///                     memoryInGB: 1,
///                 },
///             },
///         }],
///         description: "SeaBreeze Hello World Service.",
///         name: "helloWorldService",
///         networkRefs: [{
///             endpointRefs: [{
///                 name: "helloWorldListener",
///             }],
///             name: "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/sbz_demo/providers/Microsoft.ServiceFabricMesh/networks/sampleNetwork",
///         }],
///         osType: azure_native.servicefabricmesh.OperatingSystemType.Linux,
///         replicaCount: 1,
///     }],
///     tags: {},
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// application = azure_native.servicefabricmesh.Application("application",
///     application_resource_name="sampleApplication",
///     description="Service Fabric Mesh sample application.",
///     location="EastUS",
///     resource_group_name="sbz_demo",
///     services=[{
///         "code_packages": [{
///             "endpoints": [{
///                 "name": "helloWorldListener",
///                 "port": 80,
///             }],
///             "image": "seabreeze/sbz-helloworld:1.0-alpine",
///             "name": "helloWorldCode",
///             "resources": {
///                 "requests": {
///                     "cpu": 1,
///                     "memory_in_gb": 1,
///                 },
///             },
///         }],
///         "description": "SeaBreeze Hello World Service.",
///         "name": "helloWorldService",
///         "network_refs": [{
///             "endpoint_refs": [{
///                 "name": "helloWorldListener",
///             }],
///             "name": "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/sbz_demo/providers/Microsoft.ServiceFabricMesh/networks/sampleNetwork",
///         }],
///         "os_type": azure_native.servicefabricmesh.OperatingSystemType.LINUX,
///         "replica_count": 1,
///     }],
///     tags={})
///
/// ```
///
/// ```yaml
/// resources:
///   application:
///     type: azure-native:servicefabricmesh:Application
///     properties:
///       applicationResourceName: sampleApplication
///       description: Service Fabric Mesh sample application.
///       location: EastUS
///       resourceGroupName: sbz_demo
///       services:
///         - codePackages:
///             - endpoints:
///                 - name: helloWorldListener
///                   port: 80
///               image: seabreeze/sbz-helloworld:1.0-alpine
///               name: helloWorldCode
///               resources:
///                 requests:
///                   cpu: 1
///                   memoryInGB: 1
///           description: SeaBreeze Hello World Service.
///           name: helloWorldService
///           networkRefs:
///             - endpointRefs:
///                 - name: helloWorldListener
///               name: /subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/sbz_demo/providers/Microsoft.ServiceFabricMesh/networks/sampleNetwork
///           osType: Linux
///           replicaCount: 1
///       tags: {}
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
/// $ pulumi import azure-native:servicefabricmesh:Application sampleApplication /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ServiceFabricMesh/applications/{applicationResourceName}
/// ```
class Application extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Internal - used by Visual Studio to setup the debugging session on the local development environment.
  late final pulumi.Output<String?> debugParams;

  /// User readable description of the application.
  late final pulumi.Output<String?> description;

  /// Describes the diagnostics definition and usage for an application resource.
  late final pulumi.Output<DiagnosticsDescriptionResponse?> diagnostics;

  /// Describes the health state of an application resource.
  late final pulumi.Output<String> healthState;

  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// State of the resource.
  late final pulumi.Output<String> provisioningState;

  /// Names of the services in the application.
  late final pulumi.Output<List<String>> serviceNames;

  /// Describes the services in the application. This property is used to create or modify services of the application. On get only the name of the service is returned. The service description can be obtained by querying for the service resource.
  late final pulumi.Output<List<Map<String, dynamic>>?> services;

  /// Status of the application.
  late final pulumi.Output<String> status;

  /// Gives additional information about the current status of the application.
  late final pulumi.Output<String> statusDetails;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the resource. Ex- Microsoft.Compute/virtualMachines or Microsoft.Storage/storageAccounts.
  late final pulumi.Output<String> type;

  /// When the application's health state is not 'Ok', this additional details from service fabric Health Manager for the user to know why the application is marked unhealthy.
  late final pulumi.Output<String> unhealthyEvaluation;

  /// Creates a new [Application].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Application]. {@macro pulumi_servicefabricmesh_application_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Application(
    String name, {
    ApplicationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:servicefabricmesh:Application',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    debugParams = registerOutput<String?>('debugParams');
    description = registerOutput<String?>('description');
    diagnostics = registerOutput<DiagnosticsDescriptionResponse?>(
      'diagnostics',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return DiagnosticsDescriptionResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    healthState = registerOutput<String>('healthState');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    serviceNames = registerOutput<List<String>>('serviceNames');
    services = registerOutput<List<Map<String, dynamic>>?>('services');
    status = registerOutput<String>('status');
    statusDetails = registerOutput<String>('statusDetails');
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
    unhealthyEvaluation = registerOutput<String>('unhealthyEvaluation');
  }
}
