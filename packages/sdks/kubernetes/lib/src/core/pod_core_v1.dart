import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta.dart';
import 'pod_args.dart';
import 'pod_spec.dart';
import 'pod_status.dart';

/// Pod is a collection of containers that can run on a host. This resource is created by clients and scheduled onto hosts.
///
/// This resource waits until its status is ready before registering success
/// for create/update, and populating output properties from the current state of the resource.
/// The following conditions are used to determine whether the resource creation has
/// succeeded or failed:
///
/// 1. The Pod is scheduled ("PodScheduled"" '.status.condition' is true).
/// 2. The Pod is initialized ("Initialized" '.status.condition' is true).
/// 3. The Pod is ready ("Ready" '.status.condition' is true) and the '.status.phase' is
/// set to "Running".
/// Or (for Jobs): The Pod succeeded ('.status.phase' set to "Succeeded").
///
/// If the Pod has not reached a Ready state after 10 minutes, it will
/// time out and mark the resource update as Failed. You can override the default timeout value
/// by setting the 'customTimeouts' option on the resource.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create a Pod with auto-naming
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as kubernetes from "@pulumi/kubernetes";
///
/// const pod = new kubernetes.core.v1.Pod("pod", {spec: {
///     containers: [{
///         image: "nginx:1.14.2",
///         name: "nginx",
///         ports: [{
///             containerPort: 80,
///         }],
///     }],
/// }});
/// ```
/// ```python
/// import pulumi
/// import pulumi_kubernetes as kubernetes
///
/// pod = kubernetes.core.v1.Pod("pod", spec=kubernetes.core.v1.PodSpecArgs(
///     containers=[kubernetes.core.v1.ContainerArgs(
///         image="nginx:1.14.2",
///         name="nginx",
///         ports=[kubernetes.core.v1.ContainerPortArgs(
///             container_port=80,
///         )],
///     )],
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
///     var pod = new Kubernetes.Core.V1.Pod("pod", new()
///     {
///         Spec = new Kubernetes.Types.Inputs.Core.V1.PodSpecArgs
///         {
///             Containers = new[]
///             {
///                 new Kubernetes.Types.Inputs.Core.V1.ContainerArgs
///                 {
///                     Image = "nginx:1.14.2",
///                     Name = "nginx",
///                     Ports = new[]
///                     {
///                         new Kubernetes.Types.Inputs.Core.V1.ContainerPortArgs
///                         {
///                             ContainerPortValue = 80,
///                         },
///                     },
///                 },
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
/// 		_, err := corev1.NewPod(ctx, "pod", &corev1.PodArgs{
/// 			Spec: &corev1.PodSpecArgs{
/// 				Containers: corev1.ContainerArray{
/// 					&corev1.ContainerArgs{
/// 						Image: pulumi.String("nginx:1.14.2"),
/// 						Name:  pulumi.String("nginx"),
/// 						Ports: corev1.ContainerPortArray{
/// 							&corev1.ContainerPortArgs{
/// 								ContainerPort: pulumi.Int(80),
/// 							},
/// 						},
/// 					},
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
/// import com.pulumi.kubernetes.core_v1.Pod;
/// import com.pulumi.kubernetes.core_v1.PodArgs;
/// import com.pulumi.kubernetes.core_v1.inputs.PodSpecArgs;
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
///         var pod = new Pod("pod", PodArgs.builder()
///             .spec(PodSpecArgs.builder()
///                 .containers(ContainerArgs.builder()
///                     .image("nginx:1.14.2")
///                     .name("nginx")
///                     .ports(ContainerPortArgs.builder()
///                         .containerPort(80)
///                         .build())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// description: Create a Pod with auto-naming
/// name: yaml-example
/// resources:
///     pod:
///         properties:
///             spec:
///                 containers:
///                     - image: nginx:1.14.2
///                       name: nginx
///                       ports:
///                         - containerPort: 80
///         type: kubernetes:core/v1:Pod
/// runtime: yaml
/// ```
/// {{% /example %}}
/// {{% example %}}
/// ### Create a Pod with a user-specified name
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as kubernetes from "@pulumi/kubernetes";
///
/// const pod = new kubernetes.core.v1.Pod("pod", {
///     metadata: {
///         name: "nginx",
///     },
///     spec: {
///         containers: [{
///             image: "nginx:1.14.2",
///             name: "nginx",
///             ports: [{
///                 containerPort: 80,
///             }],
///         }],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_kubernetes as kubernetes
///
/// pod = kubernetes.core.v1.Pod("pod",
///     metadata=kubernetes.meta.v1.ObjectMetaArgs(
///         name="nginx",
///     ),
///     spec=kubernetes.core.v1.PodSpecArgs(
///         containers=[kubernetes.core.v1.ContainerArgs(
///             image="nginx:1.14.2",
///             name="nginx",
///             ports=[kubernetes.core.v1.ContainerPortArgs(
///                 container_port=80,
///             )],
///         )],
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
///     var pod = new Kubernetes.Core.V1.Pod("pod", new()
///     {
///         Metadata = new Kubernetes.Types.Inputs.Meta.V1.ObjectMetaArgs
///         {
///             Name = "nginx",
///         },
///         Spec = new Kubernetes.Types.Inputs.Core.V1.PodSpecArgs
///         {
///             Containers = new[]
///             {
///                 new Kubernetes.Types.Inputs.Core.V1.ContainerArgs
///                 {
///                     Image = "nginx:1.14.2",
///                     Name = "nginx",
///                     Ports = new[]
///                     {
///                         new Kubernetes.Types.Inputs.Core.V1.ContainerPortArgs
///                         {
///                             ContainerPortValue = 80,
///                         },
///                     },
///                 },
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
/// 		_, err := corev1.NewPod(ctx, "pod", &corev1.PodArgs{
/// 			Metadata: &metav1.ObjectMetaArgs{
/// 				Name: pulumi.String("nginx"),
/// 			},
/// 			Spec: &corev1.PodSpecArgs{
/// 				Containers: corev1.ContainerArray{
/// 					&corev1.ContainerArgs{
/// 						Image: pulumi.String("nginx:1.14.2"),
/// 						Name:  pulumi.String("nginx"),
/// 						Ports: corev1.ContainerPortArray{
/// 							&corev1.ContainerPortArgs{
/// 								ContainerPort: pulumi.Int(80),
/// 							},
/// 						},
/// 					},
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
/// import com.pulumi.kubernetes.core_v1.Pod;
/// import com.pulumi.kubernetes.core_v1.PodArgs;
/// import com.pulumi.kubernetes.meta_v1.inputs.ObjectMetaArgs;
/// import com.pulumi.kubernetes.core_v1.inputs.PodSpecArgs;
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
///         var pod = new Pod("pod", PodArgs.builder()
///             .metadata(ObjectMetaArgs.builder()
///                 .name("nginx")
///                 .build())
///             .spec(PodSpecArgs.builder()
///                 .containers(ContainerArgs.builder()
///                     .image("nginx:1.14.2")
///                     .name("nginx")
///                     .ports(ContainerPortArgs.builder()
///                         .containerPort(80)
///                         .build())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// description: Create a Pod with a user-specified name
/// name: yaml-example
/// resources:
///     pod:
///         properties:
///             metadata:
///                 name: nginx
///             spec:
///                 containers:
///                     - image: nginx:1.14.2
///                       name: nginx
///                       ports:
///                         - containerPort: 80
///         type: kubernetes:core/v1:Pod
/// runtime: yaml
/// ```
/// {{% /example %}}
/// {{% /examples %}}
class PodCoreV1 extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String> apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String> kind;
  /// Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  late final pulumi.Output<ObjectMeta> metadata;
  /// Specification of the desired behavior of the pod. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
  late final pulumi.Output<PodSpec> spec;
  /// Most recently observed status of the pod. This data may not be up to date. Populated by the system. Read-only. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
  late final pulumi.Output<PodStatus?> status;

  /// Creates a new [PodCoreV1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PodCoreV1]. {@macro pulumi_core_v1_pod_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PodCoreV1(
    String name, {
    PodArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'kubernetes:core/v1:Pod',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiVersion = registerOutput<String>('apiVersion');
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ObjectMeta>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ObjectMeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    spec = registerOutput<PodSpec>('spec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PodSpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    status = registerOutput<PodStatus?>('status', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PodStatus.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
