import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta.dart';
import 'deployment_args.dart';
import 'deployment_spec.dart';
import 'deployment_status.dart';

/// Deployment enables declarative updates for Pods and ReplicaSets.
///
/// This resource waits until its status is ready before registering success
/// for create/update, and populating output properties from the current state of the resource.
/// The following conditions are used to determine whether the resource creation has
/// succeeded or failed:
///
/// 1. The Deployment has begun to be updated by the Deployment controller. If the current
/// generation of the Deployment is &gt; 1, then this means that the current generation must
/// be different from the generation reported by the last outputs.
/// 2. There exists a ReplicaSet whose revision is equal to the current revision of the
/// Deployment.
/// 3. The Deployment's '.status.conditions' has a status of type 'Available' whose 'status'
/// member is set to 'True'.
/// 4. If the Deployment has generation &gt; 1, then '.status.conditions' has a status of type
/// 'Progressing', whose 'status' member is set to 'True', and whose 'reason' is
/// 'NewReplicaSetAvailable'. For generation &lt;= 1, this status field does not exist,
/// because it doesn't do a rollout (i.e., it simply creates the Deployment and
/// corresponding ReplicaSet), and therefore there is no rollout to mark as 'Progressing'.
///
/// If the Deployment has not reached a Ready state after 10 minutes, it will
/// time out and mark the resource update as Failed. You can override the default timeout value
/// by setting the 'customTimeouts' option on the resource.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create a Deployment with auto-naming
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as kubernetes from "@pulumi/kubernetes";
///
/// const deployment = new kubernetes.apps.v1.Deployment("deployment", {
///     metadata: {
///         labels: {
///             app: "nginx",
///         },
///     },
///     spec: {
///         replicas: 3,
///         selector: {
///             matchLabels: {
///                 app: "nginx",
///             },
///         },
///         template: {
///             metadata: {
///                 labels: {
///                     app: "nginx",
///                 },
///             },
///             spec: {
///                 containers: [{
///                     image: "nginx:1.14.2",
///                     name: "nginx",
///                     ports: [{
///                         containerPort: 80,
///                     }],
///                 }],
///             },
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_kubernetes as kubernetes
///
/// deployment = kubernetes.apps.v1.Deployment("deployment",
///     metadata=kubernetes.meta.v1.ObjectMetaArgs(
///         labels={
///             "app": "nginx",
///         },
///     ),
///     spec=kubernetes.apps.v1.DeploymentSpecArgs(
///         replicas=3,
///         selector=kubernetes.meta.v1.LabelSelectorArgs(
///             match_labels={
///                 "app": "nginx",
///             },
///         ),
///         template=kubernetes.core.v1.PodTemplateSpecArgs(
///             metadata=kubernetes.meta.v1.ObjectMetaArgs(
///                 labels={
///                     "app": "nginx",
///                 },
///             ),
///             spec=kubernetes.core.v1.PodSpecArgs(
///                 containers=[kubernetes.core.v1.ContainerArgs(
///                     image="nginx:1.14.2",
///                     name="nginx",
///                     ports=[kubernetes.core.v1.ContainerPortArgs(
///                         container_port=80,
///                     )],
///                 )],
///             ),
///         ),
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
///     var deployment = new Kubernetes.Apps.V1.Deployment("deployment", new()
///     {
///         Metadata = new Kubernetes.Types.Inputs.Meta.V1.ObjectMetaArgs
///         {
///             Labels =
///             {
///                 { "app", "nginx" },
///             },
///         },
///         Spec = new Kubernetes.Types.Inputs.Apps.V1.DeploymentSpecArgs
///         {
///             Replicas = 3,
///             Selector = new Kubernetes.Types.Inputs.Meta.V1.LabelSelectorArgs
///             {
///                 MatchLabels =
///                 {
///                     { "app", "nginx" },
///                 },
///             },
///             Template = new Kubernetes.Types.Inputs.Core.V1.PodTemplateSpecArgs
///             {
///                 Metadata = new Kubernetes.Types.Inputs.Meta.V1.ObjectMetaArgs
///                 {
///                     Labels =
///                     {
///                         { "app", "nginx" },
///                     },
///                 },
///                 Spec = new Kubernetes.Types.Inputs.Core.V1.PodSpecArgs
///                 {
///                     Containers = new[]
///                     {
///                         new Kubernetes.Types.Inputs.Core.V1.ContainerArgs
///                         {
///                             Image = "nginx:1.14.2",
///                             Name = "nginx",
///                             Ports = new[]
///                             {
///                                 new Kubernetes.Types.Inputs.Core.V1.ContainerPortArgs
///                                 {
///                                     ContainerPortValue = 80,
///                                 },
///                             },
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
/// 	appsv1 "github.com/pulumi/pulumi-kubernetes/sdk/v4/go/kubernetes/apps/v1"
/// 	corev1 "github.com/pulumi/pulumi-kubernetes/sdk/v4/go/kubernetes/core/v1"
/// 	metav1 "github.com/pulumi/pulumi-kubernetes/sdk/v4/go/kubernetes/meta/v1"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := appsv1.NewDeployment(ctx, "deployment", &appsv1.DeploymentArgs{
/// 			Metadata: &metav1.ObjectMetaArgs{
/// 				Labels: pulumi.StringMap{
/// 					"app": pulumi.String("nginx"),
/// 				},
/// 			},
/// 			Spec: &appsv1.DeploymentSpecArgs{
/// 				Replicas: pulumi.Int(3),
/// 				Selector: &metav1.LabelSelectorArgs{
/// 					MatchLabels: pulumi.StringMap{
/// 						"app": pulumi.String("nginx"),
/// 					},
/// 				},
/// 				Template: &corev1.PodTemplateSpecArgs{
/// 					Metadata: &metav1.ObjectMetaArgs{
/// 						Labels: pulumi.StringMap{
/// 							"app": pulumi.String("nginx"),
/// 						},
/// 					},
/// 					Spec: &corev1.PodSpecArgs{
/// 						Containers: corev1.ContainerArray{
/// 							&corev1.ContainerArgs{
/// 								Image: pulumi.String("nginx:1.14.2"),
/// 								Name:  pulumi.String("nginx"),
/// 								Ports: corev1.ContainerPortArray{
/// 									&corev1.ContainerPortArgs{
/// 										ContainerPort: pulumi.Int(80),
/// 									},
/// 								},
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
/// import com.pulumi.kubernetes.apps_v1.Deployment;
/// import com.pulumi.kubernetes.apps_v1.DeploymentArgs;
/// import com.pulumi.kubernetes.meta_v1.inputs.ObjectMetaArgs;
/// import com.pulumi.kubernetes.apps_v1.inputs.DeploymentSpecArgs;
/// import com.pulumi.kubernetes.meta_v1.inputs.LabelSelectorArgs;
/// import com.pulumi.kubernetes.core_v1.inputs.PodTemplateSpecArgs;
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
///         var deployment = new Deployment("deployment", DeploymentArgs.builder()
///             .metadata(ObjectMetaArgs.builder()
///                 .labels(Map.of("app", "nginx"))
///                 .build())
///             .spec(DeploymentSpecArgs.builder()
///                 .replicas(3)
///                 .selector(LabelSelectorArgs.builder()
///                     .matchLabels(Map.of("app", "nginx"))
///                     .build())
///                 .template(PodTemplateSpecArgs.builder()
///                     .metadata(ObjectMetaArgs.builder()
///                         .labels(Map.of("app", "nginx"))
///                         .build())
///                     .spec(PodSpecArgs.builder()
///                         .containers(ContainerArgs.builder()
///                             .image("nginx:1.14.2")
///                             .name("nginx")
///                             .ports(ContainerPortArgs.builder()
///                                 .containerPort(80)
///                                 .build())
///                             .build())
///                         .build())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// description: Create a Deployment with auto-naming
/// name: yaml-example
/// resources:
///     deployment:
///         properties:
///             metadata:
///                 labels:
///                     app: nginx
///             spec:
///                 replicas: 3
///                 selector:
///                     matchLabels:
///                         app: nginx
///                 template:
///                     metadata:
///                         labels:
///                             app: nginx
///                     spec:
///                         containers:
///                             - image: nginx:1.14.2
///                               name: nginx
///                               ports:
///                                 - containerPort: 80
///         type: kubernetes:apps/v1:Deployment
/// runtime: yaml
/// ```
/// {{% /example %}}
/// {{% example %}}
/// ### Create a Deployment with a user-specified name
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as kubernetes from "@pulumi/kubernetes";
///
/// const deployment = new kubernetes.apps.v1.Deployment("deployment", {
///     metadata: {
///         labels: {
///             app: "nginx",
///         },
///         name: "nginx-deployment",
///     },
///     spec: {
///         replicas: 3,
///         selector: {
///             matchLabels: {
///                 app: "nginx",
///             },
///         },
///         template: {
///             metadata: {
///                 labels: {
///                     app: "nginx",
///                 },
///             },
///             spec: {
///                 containers: [{
///                     image: "nginx:1.14.2",
///                     name: "nginx",
///                     ports: [{
///                         containerPort: 80,
///                     }],
///                 }],
///             },
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_kubernetes as kubernetes
///
/// deployment = kubernetes.apps.v1.Deployment("deployment",
///     metadata=kubernetes.meta.v1.ObjectMetaArgs(
///         labels={
///             "app": "nginx",
///         },
///         name="nginx-deployment",
///     ),
///     spec=kubernetes.apps.v1.DeploymentSpecArgs(
///         replicas=3,
///         selector=kubernetes.meta.v1.LabelSelectorArgs(
///             match_labels={
///                 "app": "nginx",
///             },
///         ),
///         template=kubernetes.core.v1.PodTemplateSpecArgs(
///             metadata=kubernetes.meta.v1.ObjectMetaArgs(
///                 labels={
///                     "app": "nginx",
///                 },
///             ),
///             spec=kubernetes.core.v1.PodSpecArgs(
///                 containers=[kubernetes.core.v1.ContainerArgs(
///                     image="nginx:1.14.2",
///                     name="nginx",
///                     ports=[kubernetes.core.v1.ContainerPortArgs(
///                         container_port=80,
///                     )],
///                 )],
///             ),
///         ),
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
///     var deployment = new Kubernetes.Apps.V1.Deployment("deployment", new()
///     {
///         Metadata = new Kubernetes.Types.Inputs.Meta.V1.ObjectMetaArgs
///         {
///             Labels =
///             {
///                 { "app", "nginx" },
///             },
///             Name = "nginx-deployment",
///         },
///         Spec = new Kubernetes.Types.Inputs.Apps.V1.DeploymentSpecArgs
///         {
///             Replicas = 3,
///             Selector = new Kubernetes.Types.Inputs.Meta.V1.LabelSelectorArgs
///             {
///                 MatchLabels =
///                 {
///                     { "app", "nginx" },
///                 },
///             },
///             Template = new Kubernetes.Types.Inputs.Core.V1.PodTemplateSpecArgs
///             {
///                 Metadata = new Kubernetes.Types.Inputs.Meta.V1.ObjectMetaArgs
///                 {
///                     Labels =
///                     {
///                         { "app", "nginx" },
///                     },
///                 },
///                 Spec = new Kubernetes.Types.Inputs.Core.V1.PodSpecArgs
///                 {
///                     Containers = new[]
///                     {
///                         new Kubernetes.Types.Inputs.Core.V1.ContainerArgs
///                         {
///                             Image = "nginx:1.14.2",
///                             Name = "nginx",
///                             Ports = new[]
///                             {
///                                 new Kubernetes.Types.Inputs.Core.V1.ContainerPortArgs
///                                 {
///                                     ContainerPortValue = 80,
///                                 },
///                             },
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
/// 	appsv1 "github.com/pulumi/pulumi-kubernetes/sdk/v4/go/kubernetes/apps/v1"
/// 	corev1 "github.com/pulumi/pulumi-kubernetes/sdk/v4/go/kubernetes/core/v1"
/// 	metav1 "github.com/pulumi/pulumi-kubernetes/sdk/v4/go/kubernetes/meta/v1"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := appsv1.NewDeployment(ctx, "deployment", &appsv1.DeploymentArgs{
/// 			Metadata: &metav1.ObjectMetaArgs{
/// 				Labels: pulumi.StringMap{
/// 					"app": pulumi.String("nginx"),
/// 				},
/// 				Name: pulumi.String("nginx-deployment"),
/// 			},
/// 			Spec: &appsv1.DeploymentSpecArgs{
/// 				Replicas: pulumi.Int(3),
/// 				Selector: &metav1.LabelSelectorArgs{
/// 					MatchLabels: pulumi.StringMap{
/// 						"app": pulumi.String("nginx"),
/// 					},
/// 				},
/// 				Template: &corev1.PodTemplateSpecArgs{
/// 					Metadata: &metav1.ObjectMetaArgs{
/// 						Labels: pulumi.StringMap{
/// 							"app": pulumi.String("nginx"),
/// 						},
/// 					},
/// 					Spec: &corev1.PodSpecArgs{
/// 						Containers: corev1.ContainerArray{
/// 							&corev1.ContainerArgs{
/// 								Image: pulumi.String("nginx:1.14.2"),
/// 								Name:  pulumi.String("nginx"),
/// 								Ports: corev1.ContainerPortArray{
/// 									&corev1.ContainerPortArgs{
/// 										ContainerPort: pulumi.Int(80),
/// 									},
/// 								},
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
/// import com.pulumi.kubernetes.apps_v1.Deployment;
/// import com.pulumi.kubernetes.apps_v1.DeploymentArgs;
/// import com.pulumi.kubernetes.meta_v1.inputs.ObjectMetaArgs;
/// import com.pulumi.kubernetes.apps_v1.inputs.DeploymentSpecArgs;
/// import com.pulumi.kubernetes.meta_v1.inputs.LabelSelectorArgs;
/// import com.pulumi.kubernetes.core_v1.inputs.PodTemplateSpecArgs;
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
///         var deployment = new Deployment("deployment", DeploymentArgs.builder()
///             .metadata(ObjectMetaArgs.builder()
///                 .labels(Map.of("app", "nginx"))
///                 .name("nginx-deployment")
///                 .build())
///             .spec(DeploymentSpecArgs.builder()
///                 .replicas(3)
///                 .selector(LabelSelectorArgs.builder()
///                     .matchLabels(Map.of("app", "nginx"))
///                     .build())
///                 .template(PodTemplateSpecArgs.builder()
///                     .metadata(ObjectMetaArgs.builder()
///                         .labels(Map.of("app", "nginx"))
///                         .build())
///                     .spec(PodSpecArgs.builder()
///                         .containers(ContainerArgs.builder()
///                             .image("nginx:1.14.2")
///                             .name("nginx")
///                             .ports(ContainerPortArgs.builder()
///                                 .containerPort(80)
///                                 .build())
///                             .build())
///                         .build())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// description: Create a Deployment with a user-specified name
/// name: yaml-example
/// resources:
///     deployment:
///         properties:
///             metadata:
///                 labels:
///                     app: nginx
///                 name: nginx-deployment
///             spec:
///                 replicas: 3
///                 selector:
///                     matchLabels:
///                         app: nginx
///                 template:
///                     metadata:
///                         labels:
///                             app: nginx
///                     spec:
///                         containers:
///                             - image: nginx:1.14.2
///                               name: nginx
///                               ports:
///                                 - containerPort: 80
///         type: kubernetes:apps/v1:Deployment
/// runtime: yaml
/// ```
/// {{% /example %}}
/// {{% /examples %}}
class DeploymentAppsV1 extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String> apiVersion;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String> kind;

  /// Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  late final pulumi.Output<ObjectMeta> metadata;

  /// Specification of the desired behavior of the Deployment.
  late final pulumi.Output<DeploymentSpec> spec;

  /// Most recently observed status of the Deployment.
  late final pulumi.Output<DeploymentStatus?> status;

  /// Creates a new [DeploymentAppsV1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DeploymentAppsV1]. {@macro pulumi_apps_v1_deployment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DeploymentAppsV1(
    String name, {
    DeploymentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'kubernetes:apps/v1:Deployment',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    apiVersion = registerOutput<String>('apiVersion');
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ObjectMeta>(
      'metadata',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ObjectMeta.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    spec = registerOutput<DeploymentSpec>(
      'spec',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return DeploymentSpec.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    status = registerOutput<DeploymentStatus?>(
      'status',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return DeploymentStatus.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
  }
}
