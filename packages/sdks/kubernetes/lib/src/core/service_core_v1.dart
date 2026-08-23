import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta.dart';
import 'service_args.dart';
import 'service_spec.dart';
import 'service_status.dart';

/// Service is a named abstraction of software service (for example, mysql) consisting of local port (for example 3306) that the proxy listens on, and the selector that determines which pods will answer requests sent through the proxy.
///
/// This resource waits until its status is ready before registering success
/// for create/update, and populating output properties from the current state of the resource.
/// The following conditions are used to determine whether the resource creation has
/// succeeded or failed:
///
/// 1. Service object exists.
/// 2. Related Endpoint objects are created. Each time we get an update, wait 10 seconds
/// for any stragglers.
/// 3. There are no "not ready" endpoints -- unless the Service is an "empty
/// headless" Service [1], a Service with '.spec.type: ExternalName', or a Service
/// without a selector.
/// 4. External IP address is allocated (if Service has '.spec.type: LoadBalancer').
///
/// If the Service has not reached a Ready state after 10 minutes, it will
/// time out and mark the resource update as Failed. You can override the default timeout value
/// by setting the 'customTimeouts' option on the resource.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create a Service with auto-naming
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as kubernetes from "@pulumi/kubernetes";
///
/// const service = new kubernetes.core.v1.Service("service", {spec: {
///     ports: [{
///         port: 80,
///         protocol: "TCP",
///         targetPort: 9376,
///     }],
///     selector: {
///         app: "MyApp",
///     },
/// }});
/// ```
/// ```python
/// import pulumi
/// import pulumi_kubernetes as kubernetes
///
/// service = kubernetes.core.v1.Service("service", spec=kubernetes.core.v1.ServiceSpecArgs(
///     ports=[kubernetes.core.v1.ServicePortArgs(
///         port=80,
///         protocol="TCP",
///         target_port=9376,
///     )],
///     selector={
///         "app": "MyApp",
///     },
/// ))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Kubernetes = Pulumi.Kubernetes;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var service = new Kubernetes.Core.V1.Service("service", new()
///     {
///         Spec = new Kubernetes.Types.Inputs.Core.V1.ServiceSpecArgs
///         {
///             Ports = new[]
///             {
///                 new Kubernetes.Types.Inputs.Core.V1.ServicePortArgs
///                 {
///                     Port = 80,
///                     Protocol = "TCP",
///                     TargetPort = 9376,
///                 },
///             },
///             Selector =
///             {
///                 { "app", "MyApp" },
///             },
///         },
///     });
///
/// });
///
/// ```
/// ```go
/// package main
///
/// import (
/// 	corev1 "github.com/pulumi/pulumi-kubernetes/sdk/v4/go/kubernetes/core/v1"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := corev1.NewService(ctx, "service", &corev1.ServiceArgs{
/// 			Spec: &corev1.ServiceSpecArgs{
/// 				Ports: corev1.ServicePortArray{
/// 					&corev1.ServicePortArgs{
/// 						Port:       pulumi.Int(80),
/// 						Protocol:   pulumi.String("TCP"),
/// 						TargetPort: pulumi.Any(9376),
/// 					},
/// 				},
/// 				Selector: pulumi.StringMap{
/// 					"app": pulumi.String("MyApp"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.kubernetes.core_v1.Service;
/// import com.pulumi.kubernetes.core_v1.ServiceArgs;
/// import com.pulumi.kubernetes.core_v1.inputs.ServiceSpecArgs;
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
///         var service = new Service("service", ServiceArgs.builder()
///             .spec(ServiceSpecArgs.builder()
///                 .ports(ServicePortArgs.builder()
///                     .port(80)
///                     .protocol("TCP")
///                     .targetPort(9376)
///                     .build())
///                 .selector(Map.of("app", "MyApp"))
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// description: Create a Service with auto-naming
/// name: yaml-example
/// resources:
///     service:
///         properties:
///             spec:
///                 ports:
///                     - port: 80
///                       protocol: TCP
///                       targetPort: 9376
///                 selector:
///                     app: MyApp
///         type: kubernetes:core/v1:Service
/// runtime: yaml
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     kubernetes = {
///       source = "pulumi/kubernetes"
///     }
///   }
/// }
///
/// resource "kubernetes_core_v1_service" "service" {
///   spec = {
///     ports = [{
///       port        = 80
///       protocol    = "TCP"
///       target_port = 9376
///     }]
///     selector = {
///       app = "MyApp"
///     }
///   }
/// }
/// ```
/// {{% /example %}}
/// {{% example %}}
/// ### Create a Service with a user-specified name
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as kubernetes from "@pulumi/kubernetes";
///
/// const service = new kubernetes.core.v1.Service("service", {
///     metadata: {
///         name: "my-service",
///     },
///     spec: {
///         ports: [{
///             port: 80,
///             protocol: "TCP",
///             targetPort: 9376,
///         }],
///         selector: {
///             app: "MyApp",
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_kubernetes as kubernetes
///
/// service = kubernetes.core.v1.Service("service",
///     metadata=kubernetes.meta.v1.ObjectMetaArgs(
///         name="my-service",
///     ),
///     spec=kubernetes.core.v1.ServiceSpecArgs(
///         ports=[kubernetes.core.v1.ServicePortArgs(
///             port=80,
///             protocol="TCP",
///             target_port=9376,
///         )],
///         selector={
///             "app": "MyApp",
///         },
///     ))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Kubernetes = Pulumi.Kubernetes;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var service = new Kubernetes.Core.V1.Service("service", new()
///     {
///         Metadata = new Kubernetes.Types.Inputs.Meta.V1.ObjectMetaArgs
///         {
///             Name = "my-service",
///         },
///         Spec = new Kubernetes.Types.Inputs.Core.V1.ServiceSpecArgs
///         {
///             Ports = new[]
///             {
///                 new Kubernetes.Types.Inputs.Core.V1.ServicePortArgs
///                 {
///                     Port = 80,
///                     Protocol = "TCP",
///                     TargetPort = 9376,
///                 },
///             },
///             Selector =
///             {
///                 { "app", "MyApp" },
///             },
///         },
///     });
///
/// });
///
/// ```
/// ```go
/// package main
///
/// import (
/// 	corev1 "github.com/pulumi/pulumi-kubernetes/sdk/v4/go/kubernetes/core/v1"
/// 	metav1 "github.com/pulumi/pulumi-kubernetes/sdk/v4/go/kubernetes/meta/v1"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := corev1.NewService(ctx, "service", &corev1.ServiceArgs{
/// 			Metadata: &metav1.ObjectMetaArgs{
/// 				Name: pulumi.String("my-service"),
/// 			},
/// 			Spec: &corev1.ServiceSpecArgs{
/// 				Ports: corev1.ServicePortArray{
/// 					&corev1.ServicePortArgs{
/// 						Port:       pulumi.Int(80),
/// 						Protocol:   pulumi.String("TCP"),
/// 						TargetPort: pulumi.Any(9376),
/// 					},
/// 				},
/// 				Selector: pulumi.StringMap{
/// 					"app": pulumi.String("MyApp"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.kubernetes.core_v1.Service;
/// import com.pulumi.kubernetes.core_v1.ServiceArgs;
/// import com.pulumi.kubernetes.meta_v1.inputs.ObjectMetaArgs;
/// import com.pulumi.kubernetes.core_v1.inputs.ServiceSpecArgs;
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
///         var service = new Service("service", ServiceArgs.builder()
///             .metadata(ObjectMetaArgs.builder()
///                 .name("my-service")
///                 .build())
///             .spec(ServiceSpecArgs.builder()
///                 .ports(ServicePortArgs.builder()
///                     .port(80)
///                     .protocol("TCP")
///                     .targetPort(9376)
///                     .build())
///                 .selector(Map.of("app", "MyApp"))
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// description: Create a Service with a user-specified name
/// name: yaml-example
/// resources:
///     service:
///         properties:
///             metadata:
///                 name: my-service
///             spec:
///                 ports:
///                     - port: 80
///                       protocol: TCP
///                       targetPort: 9376
///                 selector:
///                     app: MyApp
///         type: kubernetes:core/v1:Service
/// runtime: yaml
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     kubernetes = {
///       source = "pulumi/kubernetes"
///     }
///   }
/// }
///
/// resource "kubernetes_core_v1_service" "service" {
///   metadata = {
///     name = "my-service"
///   }
///   spec = {
///     ports = [{
///       port        = 80
///       protocol    = "TCP"
///       target_port = 9376
///     }]
///     selector = {
///       app = "MyApp"
///     }
///   }
/// }
/// ```
/// {{% /example %}}
/// {{% /examples %}}
class ServiceCoreV1 extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String> apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String> kind;
  /// Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  late final pulumi.Output<ObjectMeta> metadata;
  /// Spec defines the behavior of a service. https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
  late final pulumi.Output<ServiceSpec> spec;
  /// Most recently observed status of the service. Populated by the system. Read-only. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
  late final pulumi.Output<ServiceStatus?> status;

  /// Creates a new [ServiceCoreV1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ServiceCoreV1]. {@macro pulumi_core_v1_service_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ServiceCoreV1(
    String name, {
    ServiceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'kubernetes:core/v1:Service',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiVersion = registerOutput<String>('apiVersion');
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ObjectMeta>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ObjectMeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    spec = registerOutput<ServiceSpec>('spec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServiceSpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    status = registerOutput<ServiceStatus?>('status', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServiceStatus.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
