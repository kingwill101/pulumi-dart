import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta.dart';
import 'job_args.dart';
import 'job_spec.dart';
import 'job_status.dart';

/// Job represents the configuration of a single job.
///
/// This resource waits until its status is ready before registering success
/// for create/update, and populating output properties from the current state of the resource.
/// The following conditions are used to determine whether the resource creation has
/// succeeded or failed:
///
/// 1. The Job's '.status.startTime' is set, which indicates that the Job has started running.
/// 2. The Job's '.status.conditions' has a status of type 'Complete', and a 'status' set
/// to 'True'.
/// 3. The Job's '.status.conditions' do not have a status of type 'Failed', with a
/// 'status' set to 'True'. If this condition is set, we should fail the Job immediately.
///
/// If the Job has not reached a Ready state after 10 minutes, it will
/// time out and mark the resource update as Failed. You can override the default timeout value
/// by setting the 'customTimeouts' option on the resource.
///
/// By default, if a resource failed to become ready in a previous update,
/// Pulumi will continue to wait for readiness on the next update. If you would prefer
/// to schedule a replacement for an unready resource on the next update, you can add the
/// "pulumi.com/replaceUnready": "true" annotation to the resource definition.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create a Job with auto-naming
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as kubernetes from "@pulumi/kubernetes";
///
/// const job = new kubernetes.batch.v1.Job("job", {
///     metadata: undefined,
///     spec: {
///         backoffLimit: 4,
///         template: {
///             spec: {
///                 containers: [{
///                     command: [
///                         "perl",
///                         "-Mbignum=bpi",
///                         "-wle",
///                         "print bpi(2000)",
///                     ],
///                     image: "perl",
///                     name: "pi",
///                 }],
///                 restartPolicy: "Never",
///             },
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_kubernetes as kubernetes
///
/// job = kubernetes.batch.v1.Job("job",
///     metadata=None,
///     spec=kubernetes.batch.v1.JobSpecArgs(
///         backoff_limit=4,
///         template=kubernetes.core.v1.PodTemplateSpecArgs(
///             spec=kubernetes.core.v1.PodSpecArgs(
///                 containers=[kubernetes.core.v1.ContainerArgs(
///                     command=[
///                         "perl",
///                         "-Mbignum=bpi",
///                         "-wle",
///                         "print bpi(2000)",
///                     ],
///                     image="perl",
///                     name="pi",
///                 )],
///                 restart_policy="Never",
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
///     var job = new Kubernetes.Batch.V1.Job("job", new()
///     {
///         Metadata = null,
///         Spec = new Kubernetes.Types.Inputs.Batch.V1.JobSpecArgs
///         {
///             BackoffLimit = 4,
///             Template = new Kubernetes.Types.Inputs.Core.V1.PodTemplateSpecArgs
///             {
///                 Spec = new Kubernetes.Types.Inputs.Core.V1.PodSpecArgs
///                 {
///                     Containers = new[]
///                     {
///                         new Kubernetes.Types.Inputs.Core.V1.ContainerArgs
///                         {
///                             Command = new[]
///                             {
///                                 "perl",
///                                 "-Mbignum=bpi",
///                                 "-wle",
///                                 "print bpi(2000)",
///                             },
///                             Image = "perl",
///                             Name = "pi",
///                         },
///                     },
///                     RestartPolicy = "Never",
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
/// 	batchv1 "github.com/pulumi/pulumi-kubernetes/sdk/v4/go/kubernetes/batch/v1"
/// 	corev1 "github.com/pulumi/pulumi-kubernetes/sdk/v4/go/kubernetes/core/v1"
/// 	metav1 "github.com/pulumi/pulumi-kubernetes/sdk/v4/go/kubernetes/meta/v1"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := batchv1.NewJob(ctx, "job", &batchv1.JobArgs{
/// 			Metadata: nil,
/// 			Spec: &batchv1.JobSpecArgs{
/// 				BackoffLimit: pulumi.Int(4),
/// 				Template: &corev1.PodTemplateSpecArgs{
/// 					Spec: &corev1.PodSpecArgs{
/// 						Containers: corev1.ContainerArray{
/// 							&corev1.ContainerArgs{
/// 								Command: pulumi.StringArray{
/// 									pulumi.String("perl"),
/// 									pulumi.String("-Mbignum=bpi"),
/// 									pulumi.String("-wle"),
/// 									pulumi.String("print bpi(2000)"),
/// 								},
/// 								Image: pulumi.String("perl"),
/// 								Name:  pulumi.String("pi"),
/// 							},
/// 						},
/// 						RestartPolicy: pulumi.String("Never"),
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
/// import com.pulumi.kubernetes.batch_v1.Job;
/// import com.pulumi.kubernetes.batch_v1.JobArgs;
/// import com.pulumi.kubernetes.batch_v1.inputs.JobSpecArgs;
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
///         var job = new Job("job", JobArgs.builder()
///             .metadata(null)
///             .spec(JobSpecArgs.builder()
///                 .backoffLimit(4)
///                 .template(PodTemplateSpecArgs.builder()
///                     .spec(PodSpecArgs.builder()
///                         .containers(ContainerArgs.builder()
///                             .command(
///                                 "perl",
///                                 "-Mbignum=bpi",
///                                 "-wle",
///                                 "print bpi(2000)")
///                             .image("perl")
///                             .name("pi")
///                             .build())
///                         .restartPolicy("Never")
///                         .build())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// description: Create a Job with auto-naming
/// name: yaml-example
/// resources:
///     job:
///         properties:
///             metadata: null
///             spec:
///                 backoffLimit: 4
///                 template:
///                     spec:
///                         containers:
///                             - command:
///                                 - perl
///                                 - -Mbignum=bpi
///                                 - -wle
///                                 - print bpi(2000)
///                               image: perl
///                               name: pi
///                         restartPolicy: Never
///         type: kubernetes:batch/v1:Job
/// runtime: yaml
/// ```
/// {{% /example %}}
/// {{% example %}}
/// ### Create a Job with a user-specified name
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as kubernetes from "@pulumi/kubernetes";
///
/// const job = new kubernetes.batch.v1.Job("job", {
///     metadata: {
///         name: "pi",
///     },
///     spec: {
///         backoffLimit: 4,
///         template: {
///             spec: {
///                 containers: [{
///                     command: [
///                         "perl",
///                         "-Mbignum=bpi",
///                         "-wle",
///                         "print bpi(2000)",
///                     ],
///                     image: "perl",
///                     name: "pi",
///                 }],
///                 restartPolicy: "Never",
///             },
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_kubernetes as kubernetes
///
/// job = kubernetes.batch.v1.Job("job",
///     metadata=kubernetes.meta.v1.ObjectMetaArgs(
///         name="pi",
///     ),
///     spec=kubernetes.batch.v1.JobSpecArgs(
///         backoff_limit=4,
///         template=kubernetes.core.v1.PodTemplateSpecArgs(
///             spec=kubernetes.core.v1.PodSpecArgs(
///                 containers=[kubernetes.core.v1.ContainerArgs(
///                     command=[
///                         "perl",
///                         "-Mbignum=bpi",
///                         "-wle",
///                         "print bpi(2000)",
///                     ],
///                     image="perl",
///                     name="pi",
///                 )],
///                 restart_policy="Never",
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
///     var job = new Kubernetes.Batch.V1.Job("job", new()
///     {
///         Metadata = new Kubernetes.Types.Inputs.Meta.V1.ObjectMetaArgs
///         {
///             Name = "pi",
///         },
///         Spec = new Kubernetes.Types.Inputs.Batch.V1.JobSpecArgs
///         {
///             BackoffLimit = 4,
///             Template = new Kubernetes.Types.Inputs.Core.V1.PodTemplateSpecArgs
///             {
///                 Spec = new Kubernetes.Types.Inputs.Core.V1.PodSpecArgs
///                 {
///                     Containers = new[]
///                     {
///                         new Kubernetes.Types.Inputs.Core.V1.ContainerArgs
///                         {
///                             Command = new[]
///                             {
///                                 "perl",
///                                 "-Mbignum=bpi",
///                                 "-wle",
///                                 "print bpi(2000)",
///                             },
///                             Image = "perl",
///                             Name = "pi",
///                         },
///                     },
///                     RestartPolicy = "Never",
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
/// 	batchv1 "github.com/pulumi/pulumi-kubernetes/sdk/v4/go/kubernetes/batch/v1"
/// 	corev1 "github.com/pulumi/pulumi-kubernetes/sdk/v4/go/kubernetes/core/v1"
/// 	metav1 "github.com/pulumi/pulumi-kubernetes/sdk/v4/go/kubernetes/meta/v1"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := batchv1.NewJob(ctx, "job", &batchv1.JobArgs{
/// 			Metadata: &metav1.ObjectMetaArgs{
/// 				Name: pulumi.String("pi"),
/// 			},
/// 			Spec: &batchv1.JobSpecArgs{
/// 				BackoffLimit: pulumi.Int(4),
/// 				Template: &corev1.PodTemplateSpecArgs{
/// 					Spec: &corev1.PodSpecArgs{
/// 						Containers: corev1.ContainerArray{
/// 							&corev1.ContainerArgs{
/// 								Command: pulumi.StringArray{
/// 									pulumi.String("perl"),
/// 									pulumi.String("-Mbignum=bpi"),
/// 									pulumi.String("-wle"),
/// 									pulumi.String("print bpi(2000)"),
/// 								},
/// 								Image: pulumi.String("perl"),
/// 								Name:  pulumi.String("pi"),
/// 							},
/// 						},
/// 						RestartPolicy: pulumi.String("Never"),
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
/// import com.pulumi.kubernetes.batch_v1.Job;
/// import com.pulumi.kubernetes.batch_v1.JobArgs;
/// import com.pulumi.kubernetes.meta_v1.inputs.ObjectMetaArgs;
/// import com.pulumi.kubernetes.batch_v1.inputs.JobSpecArgs;
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
///         var job = new Job("job", JobArgs.builder()
///             .metadata(ObjectMetaArgs.builder()
///                 .name("pi")
///                 .build())
///             .spec(JobSpecArgs.builder()
///                 .backoffLimit(4)
///                 .template(PodTemplateSpecArgs.builder()
///                     .spec(PodSpecArgs.builder()
///                         .containers(ContainerArgs.builder()
///                             .command(
///                                 "perl",
///                                 "-Mbignum=bpi",
///                                 "-wle",
///                                 "print bpi(2000)")
///                             .image("perl")
///                             .name("pi")
///                             .build())
///                         .restartPolicy("Never")
///                         .build())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// description: Create a Job with a user-specified name
/// name: yaml-example
/// resources:
///     job:
///         properties:
///             metadata:
///                 name: pi
///             spec:
///                 backoffLimit: 4
///                 template:
///                     spec:
///                         containers:
///                             - command:
///                                 - perl
///                                 - -Mbignum=bpi
///                                 - -wle
///                                 - print bpi(2000)
///                               image: perl
///                               name: pi
///                         restartPolicy: Never
///         type: kubernetes:batch/v1:Job
/// runtime: yaml
/// ```
/// {{% /example %}}
/// {{% /examples %}}
class JobBatchV1 extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String> apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String> kind;
  /// Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  late final pulumi.Output<ObjectMeta> metadata;
  /// Specification of the desired behavior of a job. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
  late final pulumi.Output<JobSpec> spec;
  /// Current status of a job. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
  late final pulumi.Output<JobStatus?> status;

  /// Creates a new [JobBatchV1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [JobBatchV1]. {@macro pulumi_batch_v1_job_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  JobBatchV1(
    String name, {
    JobArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'kubernetes:batch/v1:Job',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiVersion = registerOutput<String>('apiVersion');
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ObjectMeta>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ObjectMeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    spec = registerOutput<JobSpec>('spec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return JobSpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    status = registerOutput<JobStatus?>('status', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return JobStatus.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
