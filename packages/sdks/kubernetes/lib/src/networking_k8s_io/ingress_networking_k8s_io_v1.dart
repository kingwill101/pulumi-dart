import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta.dart';
import 'ingress_args.dart';
import 'ingress_spec.dart';
import 'ingress_status.dart';

/// Ingress is a collection of rules that allow inbound connections to reach the endpoints defined by a backend. An Ingress can be configured to give services externally-reachable urls, load balance traffic, terminate SSL, offer name based virtual hosting etc.
///
/// This resource waits until its status is ready before registering success
/// for create/update, and populating output properties from the current state of the resource.
/// The following conditions are used to determine whether the resource creation has
/// succeeded or failed:
///
/// 1.  Ingress object exists.
/// 2.  Endpoint objects exist with matching names for each Ingress path (except when Service
/// type is ExternalName).
/// 3.  Ingress entry exists for '.status.loadBalancer.ingress'.
///
/// If the Ingress has not reached a Ready state after 10 minutes, it will
/// time out and mark the resource update as Failed. You can override the default timeout value
/// by setting the 'customTimeouts' option on the resource.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create an Ingress with auto-naming
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as kubernetes from "@pulumi/kubernetes";
///
/// const ingress = new kubernetes.networking.v1.Ingress("ingress", {
///     metadata: {
///         annotations: {
///             "nginx.ingress.kubernetes.io/rewrite-target": "/",
///         },
///     },
///     spec: {
///         rules: [{
///             http: {
///                 paths: [{
///                     backend: {
///                         service: {
///                             name: "test",
///                             port: {
///                                 number: 80,
///                             },
///                         },
///                     },
///                     path: "/testpath",
///                     pathType: "Prefix",
///                 }],
///             },
///         }],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_kubernetes as kubernetes
///
/// ingress = kubernetes.networking.v1.Ingress("ingress",
///     metadata=kubernetes.meta.v1.ObjectMetaArgs(
///         annotations={
///             "nginx.ingress.kubernetes.io/rewrite-target": "/",
///         },
///     ),
///     spec=kubernetes.networking.v1.IngressSpecArgs(
///         rules=[kubernetes.networking.v1.IngressRuleArgs(
///             http=kubernetes.networking.v1.HTTPIngressRuleValueArgs(
///                 paths=[kubernetes.networking.v1.HTTPIngressPathArgs(
///                     backend=kubernetes.networking.v1.IngressBackendArgs(
///                         service=kubernetes.networking.v1.IngressServiceBackendArgs(
///                             name="test",
///                             port=kubernetes.networking.v1.ServiceBackendPortArgs(
///                                 number=80,
///                             ),
///                         ),
///                     ),
///                     path="/testpath",
///                     path_type="Prefix",
///                 )],
///             ),
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
///     var ingress = new Kubernetes.Networking.V1.Ingress("ingress", new()
///     {
///         Metadata = new Kubernetes.Types.Inputs.Meta.V1.ObjectMetaArgs
///         {
///             Annotations =
///             {
///                 { "nginx.ingress.kubernetes.io/rewrite-target", "/" },
///             },
///         },
///         Spec = new Kubernetes.Types.Inputs.Networking.V1.IngressSpecArgs
///         {
///             Rules = new[]
///             {
///                 new Kubernetes.Types.Inputs.Networking.V1.IngressRuleArgs
///                 {
///                     Http = new Kubernetes.Types.Inputs.Networking.V1.HTTPIngressRuleValueArgs
///                     {
///                         Paths = new[]
///                         {
///                             new Kubernetes.Types.Inputs.Networking.V1.HTTPIngressPathArgs
///                             {
///                                 Backend = new Kubernetes.Types.Inputs.Networking.V1.IngressBackendArgs
///                                 {
///                                     Service = new Kubernetes.Types.Inputs.Networking.V1.IngressServiceBackendArgs
///                                     {
///                                         Name = "test",
///                                         Port = new Kubernetes.Types.Inputs.Networking.V1.ServiceBackendPortArgs
///                                         {
///                                             Number = 80,
///                                         },
///                                     },
///                                 },
///                                 Path = "/testpath",
///                                 PathType = "Prefix",
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
/// 	metav1 "github.com/pulumi/pulumi-kubernetes/sdk/v4/go/kubernetes/meta/v1"
/// 	networkingv1 "github.com/pulumi/pulumi-kubernetes/sdk/v4/go/kubernetes/networking/v1"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := networkingv1.NewIngress(ctx, "ingress", &networkingv1.IngressArgs{
/// 			Metadata: &metav1.ObjectMetaArgs{
/// 				Annotations: pulumi.StringMap{
/// 					"nginx.ingress.kubernetes.io/rewrite-target": pulumi.String("/"),
/// 				},
/// 			},
/// 			Spec: &networkingv1.IngressSpecArgs{
/// 				Rules: networkingv1.IngressRuleArray{
/// 					&networkingv1.IngressRuleArgs{
/// 						Http: &networkingv1.HTTPIngressRuleValueArgs{
/// 							Paths: networkingv1.HTTPIngressPathArray{
/// 								&networkingv1.HTTPIngressPathArgs{
/// 									Backend: &networkingv1.IngressBackendArgs{
/// 										Service: &networkingv1.IngressServiceBackendArgs{
/// 											Name: pulumi.String("test"),
/// 											Port: &networkingv1.ServiceBackendPortArgs{
/// 												Number: pulumi.Int(80),
/// 											},
/// 										},
/// 									},
/// 									Path:     pulumi.String("/testpath"),
/// 									PathType: pulumi.String("Prefix"),
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
/// import com.pulumi.kubernetes.networking.k8s.io_v1.Ingress;
/// import com.pulumi.kubernetes.networking.k8s.io_v1.IngressArgs;
/// import com.pulumi.kubernetes.meta_v1.inputs.ObjectMetaArgs;
/// import com.pulumi.kubernetes.networking.k8s.io_v1.inputs.IngressSpecArgs;
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
///         var ingress = new Ingress("ingress", IngressArgs.builder()
///             .metadata(ObjectMetaArgs.builder()
///                 .annotations(Map.of("nginx.ingress.kubernetes.io/rewrite-target", "/"))
///                 .build())
///             .spec(IngressSpecArgs.builder()
///                 .rules(IngressRuleArgs.builder()
///                     .http(HTTPIngressRuleValueArgs.builder()
///                         .paths(HTTPIngressPathArgs.builder()
///                             .backend(IngressBackendArgs.builder()
///                                 .service(IngressServiceBackendArgs.builder()
///                                     .name("test")
///                                     .port(ServiceBackendPortArgs.builder()
///                                         .number(80)
///                                         .build())
///                                     .build())
///                                 .build())
///                             .path("/testpath")
///                             .pathType("Prefix")
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
/// description: Create an Ingress with auto-naming
/// name: yaml-example
/// resources:
///     ingress:
///         properties:
///             metadata:
///                 annotations:
///                     nginx.ingress.kubernetes.io/rewrite-target: /
///             spec:
///                 rules:
///                     - http:
///                         paths:
///                             - backend:
///                                 service:
///                                     name: test
///                                     port:
///                                         number: 80
///                               path: /testpath
///                               pathType: Prefix
///         type: kubernetes:networking.k8s.io/v1:Ingress
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
/// resource "kubernetes_networking.k8s.io_v1_ingress" "ingress" {
///   metadata = {
///     annotations = {
///       "nginx.ingress.kubernetes.io/rewrite-target" = "/"
///     }
///   }
///   spec = {
///     rules = [{
///       http = {
///         paths = [{
///           backend = {
///             service = {
///               name = "test"
///               port = {
///                 number = 80
///               }
///             }
///           }
///           path      = "/testpath"
///           path_type = "Prefix"
///         }]
///       }
///     }]
///   }
/// }
/// ```
/// {{% /example %}}
/// {{% example %}}
/// ### Create an Ingress with a user-specified name
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as kubernetes from "@pulumi/kubernetes";
///
/// const ingress = new kubernetes.networking.v1.Ingress("ingress", {
///     metadata: {
///         annotations: {
///             "nginx.ingress.kubernetes.io/rewrite-target": "/",
///         },
///         name: "minimal-ingress",
///     },
///     spec: {
///         rules: [{
///             http: {
///                 paths: [{
///                     backend: {
///                         service: {
///                             name: "test",
///                             port: {
///                                 number: 80,
///                             },
///                         },
///                     },
///                     path: "/testpath",
///                     pathType: "Prefix",
///                 }],
///             },
///         }],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_kubernetes as kubernetes
///
/// ingress = kubernetes.networking.v1.Ingress("ingress",
///     metadata=kubernetes.meta.v1.ObjectMetaArgs(
///         annotations={
///             "nginx.ingress.kubernetes.io/rewrite-target": "/",
///         },
///         name="minimal-ingress",
///     ),
///     spec=kubernetes.networking.v1.IngressSpecArgs(
///         rules=[kubernetes.networking.v1.IngressRuleArgs(
///             http=kubernetes.networking.v1.HTTPIngressRuleValueArgs(
///                 paths=[kubernetes.networking.v1.HTTPIngressPathArgs(
///                     backend=kubernetes.networking.v1.IngressBackendArgs(
///                         service=kubernetes.networking.v1.IngressServiceBackendArgs(
///                             name="test",
///                             port=kubernetes.networking.v1.ServiceBackendPortArgs(
///                                 number=80,
///                             ),
///                         ),
///                     ),
///                     path="/testpath",
///                     path_type="Prefix",
///                 )],
///             ),
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
///     var ingress = new Kubernetes.Networking.V1.Ingress("ingress", new()
///     {
///         Metadata = new Kubernetes.Types.Inputs.Meta.V1.ObjectMetaArgs
///         {
///             Annotations =
///             {
///                 { "nginx.ingress.kubernetes.io/rewrite-target", "/" },
///             },
///             Name = "minimal-ingress",
///         },
///         Spec = new Kubernetes.Types.Inputs.Networking.V1.IngressSpecArgs
///         {
///             Rules = new[]
///             {
///                 new Kubernetes.Types.Inputs.Networking.V1.IngressRuleArgs
///                 {
///                     Http = new Kubernetes.Types.Inputs.Networking.V1.HTTPIngressRuleValueArgs
///                     {
///                         Paths = new[]
///                         {
///                             new Kubernetes.Types.Inputs.Networking.V1.HTTPIngressPathArgs
///                             {
///                                 Backend = new Kubernetes.Types.Inputs.Networking.V1.IngressBackendArgs
///                                 {
///                                     Service = new Kubernetes.Types.Inputs.Networking.V1.IngressServiceBackendArgs
///                                     {
///                                         Name = "test",
///                                         Port = new Kubernetes.Types.Inputs.Networking.V1.ServiceBackendPortArgs
///                                         {
///                                             Number = 80,
///                                         },
///                                     },
///                                 },
///                                 Path = "/testpath",
///                                 PathType = "Prefix",
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
/// 	metav1 "github.com/pulumi/pulumi-kubernetes/sdk/v4/go/kubernetes/meta/v1"
/// 	networkingv1 "github.com/pulumi/pulumi-kubernetes/sdk/v4/go/kubernetes/networking/v1"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := networkingv1.NewIngress(ctx, "ingress", &networkingv1.IngressArgs{
/// 			Metadata: &metav1.ObjectMetaArgs{
/// 				Annotations: pulumi.StringMap{
/// 					"nginx.ingress.kubernetes.io/rewrite-target": pulumi.String("/"),
/// 				},
/// 				Name: pulumi.String("minimal-ingress"),
/// 			},
/// 			Spec: &networkingv1.IngressSpecArgs{
/// 				Rules: networkingv1.IngressRuleArray{
/// 					&networkingv1.IngressRuleArgs{
/// 						Http: &networkingv1.HTTPIngressRuleValueArgs{
/// 							Paths: networkingv1.HTTPIngressPathArray{
/// 								&networkingv1.HTTPIngressPathArgs{
/// 									Backend: &networkingv1.IngressBackendArgs{
/// 										Service: &networkingv1.IngressServiceBackendArgs{
/// 											Name: pulumi.String("test"),
/// 											Port: &networkingv1.ServiceBackendPortArgs{
/// 												Number: pulumi.Int(80),
/// 											},
/// 										},
/// 									},
/// 									Path:     pulumi.String("/testpath"),
/// 									PathType: pulumi.String("Prefix"),
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
/// import com.pulumi.kubernetes.networking.k8s.io_v1.Ingress;
/// import com.pulumi.kubernetes.networking.k8s.io_v1.IngressArgs;
/// import com.pulumi.kubernetes.meta_v1.inputs.ObjectMetaArgs;
/// import com.pulumi.kubernetes.networking.k8s.io_v1.inputs.IngressSpecArgs;
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
///         var ingress = new Ingress("ingress", IngressArgs.builder()
///             .metadata(ObjectMetaArgs.builder()
///                 .annotations(Map.of("nginx.ingress.kubernetes.io/rewrite-target", "/"))
///                 .name("minimal-ingress")
///                 .build())
///             .spec(IngressSpecArgs.builder()
///                 .rules(IngressRuleArgs.builder()
///                     .http(HTTPIngressRuleValueArgs.builder()
///                         .paths(HTTPIngressPathArgs.builder()
///                             .backend(IngressBackendArgs.builder()
///                                 .service(IngressServiceBackendArgs.builder()
///                                     .name("test")
///                                     .port(ServiceBackendPortArgs.builder()
///                                         .number(80)
///                                         .build())
///                                     .build())
///                                 .build())
///                             .path("/testpath")
///                             .pathType("Prefix")
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
/// description: Create an Ingress with a user-specified name
/// name: yaml-example
/// resources:
///     ingress:
///         properties:
///             metadata:
///                 annotations:
///                     nginx.ingress.kubernetes.io/rewrite-target: /
///                 name: minimal-ingress
///             spec:
///                 rules:
///                     - http:
///                         paths:
///                             - backend:
///                                 service:
///                                     name: test
///                                     port:
///                                         number: 80
///                               path: /testpath
///                               pathType: Prefix
///         type: kubernetes:networking.k8s.io/v1:Ingress
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
/// resource "kubernetes_networking.k8s.io_v1_ingress" "ingress" {
///   metadata = {
///     annotations = {
///       "nginx.ingress.kubernetes.io/rewrite-target" = "/"
///     }
///     name = "minimal-ingress"
///   }
///   spec = {
///     rules = [{
///       http = {
///         paths = [{
///           backend = {
///             service = {
///               name = "test"
///               port = {
///                 number = 80
///               }
///             }
///           }
///           path      = "/testpath"
///           path_type = "Prefix"
///         }]
///       }
///     }]
///   }
/// }
/// ```
/// {{% /example %}}
/// {{% /examples %}}
class IngressNetworkingK8sIoV1 extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String> apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String> kind;
  /// metadata is the standard object metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  late final pulumi.Output<ObjectMeta> metadata;
  /// spec is the desired state of the Ingress. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
  late final pulumi.Output<IngressSpec> spec;
  /// status is the current state of the Ingress. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
  late final pulumi.Output<IngressStatus?> status;

  /// Creates a new [IngressNetworkingK8sIoV1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [IngressNetworkingK8sIoV1]. {@macro pulumi_networking_k8s_io_v1_ingress_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  IngressNetworkingK8sIoV1(
    String name, {
    IngressArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'kubernetes:networking.k8s.io/v1:Ingress',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiVersion = registerOutput<String>('apiVersion');
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ObjectMeta>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ObjectMeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    spec = registerOutput<IngressSpec>('spec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IngressSpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    status = registerOutput<IngressStatus?>('status', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IngressStatus.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [IngressNetworkingK8sIoV1] resource.
  IngressNetworkingK8sIoV1.reference(String urn)
    : super(
        'kubernetes:networking.k8s.io/v1:Ingress',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    apiVersion = registerOutput<String>('apiVersion');
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ObjectMeta>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ObjectMeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    spec = registerOutput<IngressSpec>('spec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IngressSpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    status = registerOutput<IngressStatus?>('status', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IngressStatus.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
