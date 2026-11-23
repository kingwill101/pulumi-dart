import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_args.dart';
import 'instance_condition.dart';
import 'instance_container.dart';
import 'instance_container_status.dart';
import 'instance_sandboxes.dart';
import 'instance_state.dart';
import 'instance_terminal_condition.dart';
import 'instance_volume.dart';

/// An Instance represents a single group of containers running in a region.
///
///
/// To get more information about Instance, see:
///
/// * [API documentation](https://cloud.google.com/run/docs/reference/rest/v2/projects.locations.instances)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/run/docs/)
///
///
/// ## Example Usage
///
/// ### Cloudrunv2 Instance Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.cloudrunv2.Instance("default", {
///     name: "cloudrun-instance",
///     location: "us-west4",
///     containers: [{
///         image: "us-docker.pkg.dev/cloudrun/container/hello",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.cloudrunv2.Instance("default",
///     name="cloudrun-instance",
///     location="us-west4",
///     containers=[{
///         "image": "us-docker.pkg.dev/cloudrun/container/hello",
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.CloudRunV2.Instance("default", new()
///     {
///         Name = "cloudrun-instance",
///         Location = "us-west4",
///         Containers = new[]
///         {
///             new Gcp.CloudRunV2.Inputs.InstanceContainerArgs
///             {
///                 Image = "us-docker.pkg.dev/cloudrun/container/hello",
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/cloudrunv2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudrunv2.NewInstance(ctx, "default", &cloudrunv2.InstanceArgs{
/// 			Name:     pulumi.String("cloudrun-instance"),
/// 			Location: pulumi.String("us-west4"),
/// 			Containers: cloudrunv2.InstanceContainerArray{
/// 				&cloudrunv2.InstanceContainerArgs{
/// 					Image: pulumi.String("us-docker.pkg.dev/cloudrun/container/hello"),
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
/// ```hcl
/// terraform {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_cloudrunv2_instance" "default" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   name     = "cloudrun-instance"
///   location = "us-west4"
///   containers {
///     image = "us-docker.pkg.dev/cloudrun/container/hello"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.cloudrunv2.Instance;
/// import com.pulumi.gcp.cloudrunv2.InstanceArgs;
/// import com.pulumi.gcp.cloudrunv2.inputs.InstanceContainerArgs;
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
///         var default_ = new Instance("default", InstanceArgs.builder()
///             .name("cloudrun-instance")
///             .location("us-west4")
///             .containers(InstanceContainerArgs.builder()
///                 .image("us-docker.pkg.dev/cloudrun/container/hello")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:cloudrunv2:Instance
///     properties:
///       name: cloudrun-instance
///       location: us-west4
///       containers:
///         - image: us-docker.pkg.dev/cloudrun/container/hello
/// ```
///
///
/// ### Cloudrunv2 Instance Limits
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.cloudrunv2.Instance("default", {
///     name: "cloudrun-instance",
///     location: "us-west4",
///     containers: [{
///         image: "us-docker.pkg.dev/cloudrun/container/hello",
///         resources: {
///             limits: {
///                 cpu: "2",
///                 memory: "1024Mi",
///             },
///         },
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.cloudrunv2.Instance("default",
///     name="cloudrun-instance",
///     location="us-west4",
///     containers=[{
///         "image": "us-docker.pkg.dev/cloudrun/container/hello",
///         "resources": {
///             "limits": {
///                 "cpu": "2",
///                 "memory": "1024Mi",
///             },
///         },
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.CloudRunV2.Instance("default", new()
///     {
///         Name = "cloudrun-instance",
///         Location = "us-west4",
///         Containers = new[]
///         {
///             new Gcp.CloudRunV2.Inputs.InstanceContainerArgs
///             {
///                 Image = "us-docker.pkg.dev/cloudrun/container/hello",
///                 Resources = new Gcp.CloudRunV2.Inputs.InstanceContainerResourcesArgs
///                 {
///                     Limits =
///                     {
///                         { "cpu", "2" },
///                         { "memory", "1024Mi" },
///                     },
///                 },
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/cloudrunv2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudrunv2.NewInstance(ctx, "default", &cloudrunv2.InstanceArgs{
/// 			Name:     pulumi.String("cloudrun-instance"),
/// 			Location: pulumi.String("us-west4"),
/// 			Containers: cloudrunv2.InstanceContainerArray{
/// 				&cloudrunv2.InstanceContainerArgs{
/// 					Image: pulumi.String("us-docker.pkg.dev/cloudrun/container/hello"),
/// 					Resources: &cloudrunv2.InstanceContainerResourcesArgs{
/// 						Limits: pulumi.StringMap{
/// 							"cpu":    pulumi.String("2"),
/// 							"memory": pulumi.String("1024Mi"),
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
/// ```hcl
/// terraform {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_cloudrunv2_instance" "default" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   name     = "cloudrun-instance"
///   location = "us-west4"
///   containers {
///     image = "us-docker.pkg.dev/cloudrun/container/hello"
///     resources = {
///       limits = {
///         "cpu"    = "2"
///         "memory" = "1024Mi"
///       }
///     }
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.cloudrunv2.Instance;
/// import com.pulumi.gcp.cloudrunv2.InstanceArgs;
/// import com.pulumi.gcp.cloudrunv2.inputs.InstanceContainerArgs;
/// import com.pulumi.gcp.cloudrunv2.inputs.InstanceContainerResourcesArgs;
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
///         var default_ = new Instance("default", InstanceArgs.builder()
///             .name("cloudrun-instance")
///             .location("us-west4")
///             .containers(InstanceContainerArgs.builder()
///                 .image("us-docker.pkg.dev/cloudrun/container/hello")
///                 .resources(InstanceContainerResourcesArgs.builder()
///                     .limits(Map.ofEntries(
///                         Map.entry("cpu", "2"),
///                         Map.entry("memory", "1024Mi")
///                     ))
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:cloudrunv2:Instance
///     properties:
///       name: cloudrun-instance
///       location: us-west4
///       containers:
///         - image: us-docker.pkg.dev/cloudrun/container/hello
///           resources:
///             limits:
///               cpu: '2'
///               memory: 1024Mi
/// ```
///
///
/// ### Cloudrunv2 Instance Full
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.cloudrunv2.Instance("default", {
///     name: "cloudrun-instance",
///     location: "us-west4",
///     ingress: "INGRESS_TRAFFIC_ALL",
///     restartPolicy: "ON_FAILURE",
///     launchStage: "GA",
///     defaultUriDisabled: true,
///     invokerIamDisabled: true,
///     labels: {
///         env: "staging",
///     },
///     annotations: {
///         "test-annotation": "initial-value",
///     },
///     containers: [{
///         image: "us-docker.pkg.dev/cloudrun/container/hello",
///         ports: [{
///             containerPort: 8080,
///         }],
///         resources: {
///             limits: {
///                 cpu: "1",
///                 memory: "1024Mi",
///             },
///         },
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.cloudrunv2.Instance("default",
///     name="cloudrun-instance",
///     location="us-west4",
///     ingress="INGRESS_TRAFFIC_ALL",
///     restart_policy="ON_FAILURE",
///     launch_stage="GA",
///     default_uri_disabled=True,
///     invoker_iam_disabled=True,
///     labels={
///         "env": "staging",
///     },
///     annotations={
///         "test-annotation": "initial-value",
///     },
///     containers=[{
///         "image": "us-docker.pkg.dev/cloudrun/container/hello",
///         "ports": [{
///             "container_port": 8080,
///         }],
///         "resources": {
///             "limits": {
///                 "cpu": "1",
///                 "memory": "1024Mi",
///             },
///         },
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.CloudRunV2.Instance("default", new()
///     {
///         Name = "cloudrun-instance",
///         Location = "us-west4",
///         Ingress = "INGRESS_TRAFFIC_ALL",
///         RestartPolicy = "ON_FAILURE",
///         LaunchStage = "GA",
///         DefaultUriDisabled = true,
///         InvokerIamDisabled = true,
///         Labels =
///         {
///             { "env", "staging" },
///         },
///         Annotations =
///         {
///             { "test-annotation", "initial-value" },
///         },
///         Containers = new[]
///         {
///             new Gcp.CloudRunV2.Inputs.InstanceContainerArgs
///             {
///                 Image = "us-docker.pkg.dev/cloudrun/container/hello",
///                 Ports = new[]
///                 {
///                     new Gcp.CloudRunV2.Inputs.InstanceContainerPortArgs
///                     {
///                         ContainerPort = 8080,
///                     },
///                 },
///                 Resources = new Gcp.CloudRunV2.Inputs.InstanceContainerResourcesArgs
///                 {
///                     Limits =
///                     {
///                         { "cpu", "1" },
///                         { "memory", "1024Mi" },
///                     },
///                 },
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/cloudrunv2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudrunv2.NewInstance(ctx, "default", &cloudrunv2.InstanceArgs{
/// 			Name:               pulumi.String("cloudrun-instance"),
/// 			Location:           pulumi.String("us-west4"),
/// 			Ingress:            pulumi.String("INGRESS_TRAFFIC_ALL"),
/// 			RestartPolicy:      pulumi.String("ON_FAILURE"),
/// 			LaunchStage:        pulumi.String("GA"),
/// 			DefaultUriDisabled: pulumi.Bool(true),
/// 			InvokerIamDisabled: pulumi.Bool(true),
/// 			Labels: pulumi.StringMap{
/// 				"env": pulumi.String("staging"),
/// 			},
/// 			Annotations: pulumi.StringMap{
/// 				"test-annotation": pulumi.String("initial-value"),
/// 			},
/// 			Containers: cloudrunv2.InstanceContainerArray{
/// 				&cloudrunv2.InstanceContainerArgs{
/// 					Image: pulumi.String("us-docker.pkg.dev/cloudrun/container/hello"),
/// 					Ports: cloudrunv2.InstanceContainerPortArray{
/// 						&cloudrunv2.InstanceContainerPortArgs{
/// 							ContainerPort: pulumi.Int(8080),
/// 						},
/// 					},
/// 					Resources: &cloudrunv2.InstanceContainerResourcesArgs{
/// 						Limits: pulumi.StringMap{
/// 							"cpu":    pulumi.String("1"),
/// 							"memory": pulumi.String("1024Mi"),
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
/// ```hcl
/// terraform {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_cloudrunv2_instance" "default" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   name                 = "cloudrun-instance"
///   location             = "us-west4"
///   ingress              = "INGRESS_TRAFFIC_ALL"
///   restart_policy       = "ON_FAILURE"
///   launch_stage         = "GA"
///   default_uri_disabled = true
///   invoker_iam_disabled = true
///   labels = {
///     "env" = "staging"
///   }
///   annotations = {
///     "test-annotation" = "initial-value"
///   }
///   containers {
///     image = "us-docker.pkg.dev/cloudrun/container/hello"
///     ports {
///       container_port = 8080
///     }
///     resources = {
///       limits = {
///         "cpu"    = "1"
///         "memory" = "1024Mi"
///       }
///     }
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.cloudrunv2.Instance;
/// import com.pulumi.gcp.cloudrunv2.InstanceArgs;
/// import com.pulumi.gcp.cloudrunv2.inputs.InstanceContainerArgs;
/// import com.pulumi.gcp.cloudrunv2.inputs.InstanceContainerPortArgs;
/// import com.pulumi.gcp.cloudrunv2.inputs.InstanceContainerResourcesArgs;
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
///         var default_ = new Instance("default", InstanceArgs.builder()
///             .name("cloudrun-instance")
///             .location("us-west4")
///             .ingress("INGRESS_TRAFFIC_ALL")
///             .restartPolicy("ON_FAILURE")
///             .launchStage("GA")
///             .defaultUriDisabled(true)
///             .invokerIamDisabled(true)
///             .labels(Map.of("env", "staging"))
///             .annotations(Map.of("test-annotation", "initial-value"))
///             .containers(InstanceContainerArgs.builder()
///                 .image("us-docker.pkg.dev/cloudrun/container/hello")
///                 .ports(InstanceContainerPortArgs.builder()
///                     .containerPort(8080)
///                     .build())
///                 .resources(InstanceContainerResourcesArgs.builder()
///                     .limits(Map.ofEntries(
///                         Map.entry("cpu", "1"),
///                         Map.entry("memory", "1024Mi")
///                     ))
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:cloudrunv2:Instance
///     properties:
///       name: cloudrun-instance
///       location: us-west4
///       ingress: INGRESS_TRAFFIC_ALL
///       restartPolicy: ON_FAILURE
///       launchStage: GA
///       defaultUriDisabled: true
///       invokerIamDisabled: true
///       labels:
///         env: staging
///       annotations:
///         test-annotation: initial-value
///       containers:
///         - image: us-docker.pkg.dev/cloudrun/container/hello
///           ports:
///             - containerPort: 8080
///           resources:
///             limits:
///               cpu: '1'
///               memory: 1024Mi
/// ```
///
///
/// ### Cloudrunv2 Instance Container Config
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.cloudrunv2.Instance("default", {
///     name: "cloudrun-instance",
///     location: "us-west4",
///     client: "terraform",
///     clientVersion: "1.0.0",
///     containers: [{
///         name: "custom-container",
///         image: "us-docker.pkg.dev/cloudrun/container/hello",
///         commands: ["/server"],
///         args: ["--port=8080"],
///         workingDir: "/",
///         ports: [{
///             name: "http1",
///             containerPort: 8080,
///         }],
///         envs: [{
///             name: "CUSTOM_ENV",
///             value: "custom_value",
///         }],
///         volumeMounts: [{
///             name: "empty-dir-volume",
///             mountPath: "/mnt",
///             subPath: "sub",
///         }],
///     }],
///     volumes: [{
///         name: "empty-dir-volume",
///         emptyDir: {
///             medium: "MEMORY",
///             sizeLimit: "128Mi",
///         },
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.cloudrunv2.Instance("default",
///     name="cloudrun-instance",
///     location="us-west4",
///     client="terraform",
///     client_version="1.0.0",
///     containers=[{
///         "name": "custom-container",
///         "image": "us-docker.pkg.dev/cloudrun/container/hello",
///         "commands": ["/server"],
///         "args": ["--port=8080"],
///         "working_dir": "/",
///         "ports": [{
///             "name": "http1",
///             "container_port": 8080,
///         }],
///         "envs": [{
///             "name": "CUSTOM_ENV",
///             "value": "custom_value",
///         }],
///         "volume_mounts": [{
///             "name": "empty-dir-volume",
///             "mount_path": "/mnt",
///             "sub_path": "sub",
///         }],
///     }],
///     volumes=[{
///         "name": "empty-dir-volume",
///         "empty_dir": {
///             "medium": "MEMORY",
///             "size_limit": "128Mi",
///         },
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.CloudRunV2.Instance("default", new()
///     {
///         Name = "cloudrun-instance",
///         Location = "us-west4",
///         Client = "terraform",
///         ClientVersion = "1.0.0",
///         Containers = new[]
///         {
///             new Gcp.CloudRunV2.Inputs.InstanceContainerArgs
///             {
///                 Name = "custom-container",
///                 Image = "us-docker.pkg.dev/cloudrun/container/hello",
///                 Commands = new[]
///                 {
///                     "/server",
///                 },
///                 Args = new[]
///                 {
///                     "--port=8080",
///                 },
///                 WorkingDir = "/",
///                 Ports = new[]
///                 {
///                     new Gcp.CloudRunV2.Inputs.InstanceContainerPortArgs
///                     {
///                         Name = "http1",
///                         ContainerPort = 8080,
///                     },
///                 },
///                 Envs = new[]
///                 {
///                     new Gcp.CloudRunV2.Inputs.InstanceContainerEnvArgs
///                     {
///                         Name = "CUSTOM_ENV",
///                         Value = "custom_value",
///                     },
///                 },
///                 VolumeMounts = new[]
///                 {
///                     new Gcp.CloudRunV2.Inputs.InstanceContainerVolumeMountArgs
///                     {
///                         Name = "empty-dir-volume",
///                         MountPath = "/mnt",
///                         SubPath = "sub",
///                     },
///                 },
///             },
///         },
///         Volumes = new[]
///         {
///             new Gcp.CloudRunV2.Inputs.InstanceVolumeArgs
///             {
///                 Name = "empty-dir-volume",
///                 EmptyDir = new Gcp.CloudRunV2.Inputs.InstanceVolumeEmptyDirArgs
///                 {
///                     Medium = "MEMORY",
///                     SizeLimit = "128Mi",
///                 },
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/cloudrunv2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudrunv2.NewInstance(ctx, "default", &cloudrunv2.InstanceArgs{
/// 			Name:          pulumi.String("cloudrun-instance"),
/// 			Location:      pulumi.String("us-west4"),
/// 			Client:        pulumi.String("terraform"),
/// 			ClientVersion: pulumi.String("1.0.0"),
/// 			Containers: cloudrunv2.InstanceContainerArray{
/// 				&cloudrunv2.InstanceContainerArgs{
/// 					Name:  pulumi.String("custom-container"),
/// 					Image: pulumi.String("us-docker.pkg.dev/cloudrun/container/hello"),
/// 					Commands: pulumi.StringArray{
/// 						pulumi.String("/server"),
/// 					},
/// 					Args: pulumi.StringArray{
/// 						pulumi.String("--port=8080"),
/// 					},
/// 					WorkingDir: pulumi.String("/"),
/// 					Ports: cloudrunv2.InstanceContainerPortArray{
/// 						&cloudrunv2.InstanceContainerPortArgs{
/// 							Name:          pulumi.String("http1"),
/// 							ContainerPort: pulumi.Int(8080),
/// 						},
/// 					},
/// 					Envs: cloudrunv2.InstanceContainerEnvArray{
/// 						&cloudrunv2.InstanceContainerEnvArgs{
/// 							Name:  pulumi.String("CUSTOM_ENV"),
/// 							Value: pulumi.String("custom_value"),
/// 						},
/// 					},
/// 					VolumeMounts: cloudrunv2.InstanceContainerVolumeMountArray{
/// 						&cloudrunv2.InstanceContainerVolumeMountArgs{
/// 							Name:      pulumi.String("empty-dir-volume"),
/// 							MountPath: pulumi.String("/mnt"),
/// 							SubPath:   pulumi.String("sub"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			Volumes: cloudrunv2.InstanceVolumeArray{
/// 				&cloudrunv2.InstanceVolumeArgs{
/// 					Name: pulumi.String("empty-dir-volume"),
/// 					EmptyDir: &cloudrunv2.InstanceVolumeEmptyDirArgs{
/// 						Medium:    pulumi.String("MEMORY"),
/// 						SizeLimit: pulumi.String("128Mi"),
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
/// ```hcl
/// terraform {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_cloudrunv2_instance" "default" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   name           = "cloudrun-instance"
///   location       = "us-west4"
///   client         = "terraform"
///   client_version = "1.0.0"
///   containers {
///     name        = "custom-container"
///     image       = "us-docker.pkg.dev/cloudrun/container/hello"
///     commands    = ["/server"]
///     args        = ["--port=8080"]
///     working_dir = "/"
///     ports {
///       name           = "http1"
///       container_port = 8080
///     }
///     envs {
///       name  = "CUSTOM_ENV"
///       value = "custom_value"
///     }
///     volume_mounts {
///       name       = "empty-dir-volume"
///       mount_path = "/mnt"
///       sub_path   = "sub"
///     }
///   }
///   volumes {
///     name = "empty-dir-volume"
///     empty_dir = {
///       medium     = "MEMORY"
///       size_limit = "128Mi"
///     }
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.cloudrunv2.Instance;
/// import com.pulumi.gcp.cloudrunv2.InstanceArgs;
/// import com.pulumi.gcp.cloudrunv2.inputs.InstanceContainerArgs;
/// import com.pulumi.gcp.cloudrunv2.inputs.InstanceContainerPortArgs;
/// import com.pulumi.gcp.cloudrunv2.inputs.InstanceContainerEnvArgs;
/// import com.pulumi.gcp.cloudrunv2.inputs.InstanceContainerVolumeMountArgs;
/// import com.pulumi.gcp.cloudrunv2.inputs.InstanceVolumeArgs;
/// import com.pulumi.gcp.cloudrunv2.inputs.InstanceVolumeEmptyDirArgs;
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
///         var default_ = new Instance("default", InstanceArgs.builder()
///             .name("cloudrun-instance")
///             .location("us-west4")
///             .client("terraform")
///             .clientVersion("1.0.0")
///             .containers(InstanceContainerArgs.builder()
///                 .name("custom-container")
///                 .image("us-docker.pkg.dev/cloudrun/container/hello")
///                 .commands("/server")
///                 .args("--port=8080")
///                 .workingDir("/")
///                 .ports(InstanceContainerPortArgs.builder()
///                     .name("http1")
///                     .containerPort(8080)
///                     .build())
///                 .envs(InstanceContainerEnvArgs.builder()
///                     .name("CUSTOM_ENV")
///                     .value("custom_value")
///                     .build())
///                 .volumeMounts(InstanceContainerVolumeMountArgs.builder()
///                     .name("empty-dir-volume")
///                     .mountPath("/mnt")
///                     .subPath("sub")
///                     .build())
///                 .build())
///             .volumes(InstanceVolumeArgs.builder()
///                 .name("empty-dir-volume")
///                 .emptyDir(InstanceVolumeEmptyDirArgs.builder()
///                     .medium("MEMORY")
///                     .sizeLimit("128Mi")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:cloudrunv2:Instance
///     properties:
///       name: cloudrun-instance
///       location: us-west4
///       client: terraform
///       clientVersion: 1.0.0
///       containers:
///         - name: custom-container
///           image: us-docker.pkg.dev/cloudrun/container/hello
///           commands:
///             - /server
///           args:
///             - --port=8080
///           workingDir: /
///           ports:
///             - name: http1
///               containerPort: 8080
///           envs:
///             - name: CUSTOM_ENV
///               value: custom_value
///           volumeMounts:
///             - name: empty-dir-volume
///               mountPath: /mnt
///               subPath: sub
///       volumes:
///         - name: empty-dir-volume
///           emptyDir:
///             medium: MEMORY
///             sizeLimit: 128Mi
/// ```
///
///
/// ### Cloudrunv2 Instance Probes
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.cloudrunv2.Instance("default", {
///     name: "cloudrun-instance",
///     location: "us-west4",
///     containers: [{
///         image: "us-docker.pkg.dev/cloudrun/container/hello",
///         startupProbe: {
///             initialDelaySeconds: 0,
///             timeoutSeconds: 1,
///             periodSeconds: 3,
///             failureThreshold: 1,
///             tcpSocket: {
///                 port: 8080,
///             },
///         },
///         livenessProbe: {
///             initialDelaySeconds: 0,
///             timeoutSeconds: 1,
///             periodSeconds: 3,
///             failureThreshold: 1,
///             httpGet: {
///                 path: "/",
///                 port: 8080,
///                 httpHeaders: [{
///                     name: "Custom-Header",
///                     value: "Custom-Value",
///                 }],
///             },
///         },
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.cloudrunv2.Instance("default",
///     name="cloudrun-instance",
///     location="us-west4",
///     containers=[{
///         "image": "us-docker.pkg.dev/cloudrun/container/hello",
///         "startup_probe": {
///             "initial_delay_seconds": 0,
///             "timeout_seconds": 1,
///             "period_seconds": 3,
///             "failure_threshold": 1,
///             "tcp_socket": {
///                 "port": 8080,
///             },
///         },
///         "liveness_probe": {
///             "initial_delay_seconds": 0,
///             "timeout_seconds": 1,
///             "period_seconds": 3,
///             "failure_threshold": 1,
///             "http_get": {
///                 "path": "/",
///                 "port": 8080,
///                 "http_headers": [{
///                     "name": "Custom-Header",
///                     "value": "Custom-Value",
///                 }],
///             },
///         },
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.CloudRunV2.Instance("default", new()
///     {
///         Name = "cloudrun-instance",
///         Location = "us-west4",
///         Containers = new[]
///         {
///             new Gcp.CloudRunV2.Inputs.InstanceContainerArgs
///             {
///                 Image = "us-docker.pkg.dev/cloudrun/container/hello",
///                 StartupProbe = new Gcp.CloudRunV2.Inputs.InstanceContainerStartupProbeArgs
///                 {
///                     InitialDelaySeconds = 0,
///                     TimeoutSeconds = 1,
///                     PeriodSeconds = 3,
///                     FailureThreshold = 1,
///                     TcpSocket = new Gcp.CloudRunV2.Inputs.InstanceContainerStartupProbeTcpSocketArgs
///                     {
///                         Port = 8080,
///                     },
///                 },
///                 LivenessProbe = new Gcp.CloudRunV2.Inputs.InstanceContainerLivenessProbeArgs
///                 {
///                     InitialDelaySeconds = 0,
///                     TimeoutSeconds = 1,
///                     PeriodSeconds = 3,
///                     FailureThreshold = 1,
///                     HttpGet = new Gcp.CloudRunV2.Inputs.InstanceContainerLivenessProbeHttpGetArgs
///                     {
///                         Path = "/",
///                         Port = 8080,
///                         HttpHeaders = new[]
///                         {
///                             new Gcp.CloudRunV2.Inputs.InstanceContainerLivenessProbeHttpGetHttpHeaderArgs
///                             {
///                                 Name = "Custom-Header",
///                                 Value = "Custom-Value",
///                             },
///                         },
///                     },
///                 },
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/cloudrunv2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudrunv2.NewInstance(ctx, "default", &cloudrunv2.InstanceArgs{
/// 			Name:     pulumi.String("cloudrun-instance"),
/// 			Location: pulumi.String("us-west4"),
/// 			Containers: cloudrunv2.InstanceContainerArray{
/// 				&cloudrunv2.InstanceContainerArgs{
/// 					Image: pulumi.String("us-docker.pkg.dev/cloudrun/container/hello"),
/// 					StartupProbe: &cloudrunv2.InstanceContainerStartupProbeArgs{
/// 						InitialDelaySeconds: pulumi.Int(0),
/// 						TimeoutSeconds:      pulumi.Int(1),
/// 						PeriodSeconds:       pulumi.Int(3),
/// 						FailureThreshold:    pulumi.Int(1),
/// 						TcpSocket: &cloudrunv2.InstanceContainerStartupProbeTcpSocketArgs{
/// 							Port: pulumi.Int(8080),
/// 						},
/// 					},
/// 					LivenessProbe: &cloudrunv2.InstanceContainerLivenessProbeArgs{
/// 						InitialDelaySeconds: pulumi.Int(0),
/// 						TimeoutSeconds:      pulumi.Int(1),
/// 						PeriodSeconds:       pulumi.Int(3),
/// 						FailureThreshold:    pulumi.Int(1),
/// 						HttpGet: &cloudrunv2.InstanceContainerLivenessProbeHttpGetArgs{
/// 							Path: pulumi.String("/"),
/// 							Port: pulumi.Int(8080),
/// 							HttpHeaders: cloudrunv2.InstanceContainerLivenessProbeHttpGetHttpHeaderArray{
/// 								&cloudrunv2.InstanceContainerLivenessProbeHttpGetHttpHeaderArgs{
/// 									Name:  pulumi.String("Custom-Header"),
/// 									Value: pulumi.String("Custom-Value"),
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
/// ```hcl
/// terraform {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_cloudrunv2_instance" "default" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   name     = "cloudrun-instance"
///   location = "us-west4"
///   containers {
///     image = "us-docker.pkg.dev/cloudrun/container/hello"
///     startup_probe = {
///       initial_delay_seconds = 0
///       timeout_seconds       = 1
///       period_seconds        = 3
///       failure_threshold     = 1
///       tcp_socket = {
///         port = 8080
///       }
///     }
///     liveness_probe = {
///       initial_delay_seconds = 0
///       timeout_seconds       = 1
///       period_seconds        = 3
///       failure_threshold     = 1
///       http_get = {
///         path = "/"
///         port = 8080
///         http_headers = [{
///           name  = "Custom-Header"
///           value = "Custom-Value"
///         }]
///       }
///     }
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.cloudrunv2.Instance;
/// import com.pulumi.gcp.cloudrunv2.InstanceArgs;
/// import com.pulumi.gcp.cloudrunv2.inputs.InstanceContainerArgs;
/// import com.pulumi.gcp.cloudrunv2.inputs.InstanceContainerStartupProbeArgs;
/// import com.pulumi.gcp.cloudrunv2.inputs.InstanceContainerStartupProbeTcpSocketArgs;
/// import com.pulumi.gcp.cloudrunv2.inputs.InstanceContainerLivenessProbeArgs;
/// import com.pulumi.gcp.cloudrunv2.inputs.InstanceContainerLivenessProbeHttpGetArgs;
/// import com.pulumi.gcp.cloudrunv2.inputs.InstanceContainerLivenessProbeHttpGetHttpHeaderArgs;
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
///         var default_ = new Instance("default", InstanceArgs.builder()
///             .name("cloudrun-instance")
///             .location("us-west4")
///             .containers(InstanceContainerArgs.builder()
///                 .image("us-docker.pkg.dev/cloudrun/container/hello")
///                 .startupProbe(InstanceContainerStartupProbeArgs.builder()
///                     .initialDelaySeconds(0)
///                     .timeoutSeconds(1)
///                     .periodSeconds(3)
///                     .failureThreshold(1)
///                     .tcpSocket(InstanceContainerStartupProbeTcpSocketArgs.builder()
///                         .port(8080)
///                         .build())
///                     .build())
///                 .livenessProbe(InstanceContainerLivenessProbeArgs.builder()
///                     .initialDelaySeconds(0)
///                     .timeoutSeconds(1)
///                     .periodSeconds(3)
///                     .failureThreshold(1)
///                     .httpGet(InstanceContainerLivenessProbeHttpGetArgs.builder()
///                         .path("/")
///                         .port(8080)
///                         .httpHeaders(InstanceContainerLivenessProbeHttpGetHttpHeaderArgs.builder()
///                             .name("Custom-Header")
///                             .value("Custom-Value")
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
/// resources:
///   default:
///     type: gcp:cloudrunv2:Instance
///     properties:
///       name: cloudrun-instance
///       location: us-west4
///       containers:
///         - image: us-docker.pkg.dev/cloudrun/container/hello
///           startupProbe:
///             initialDelaySeconds: 0
///             timeoutSeconds: 1
///             periodSeconds: 3
///             failureThreshold: 1
///             tcpSocket:
///               port: 8080
///           livenessProbe:
///             initialDelaySeconds: 0
///             timeoutSeconds: 1
///             periodSeconds: 3
///             failureThreshold: 1
///             httpGet:
///               path: /
///               port: 8080
///               httpHeaders:
///                 - name: Custom-Header
///                   value: Custom-Value
/// ```
///
///
/// ### Cloudrunv2 Instance Probes Grpc
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.cloudrunv2.Instance("default", {
///     name: "cloudrun-instance",
///     location: "us-west4",
///     containers: [{
///         image: "us-docker.pkg.dev/cloudrun/container/hello",
///         startupProbe: {
///             initialDelaySeconds: 0,
///             timeoutSeconds: 1,
///             periodSeconds: 3,
///             failureThreshold: 1,
///             grpc: {
///                 port: 8080,
///                 service: "my-service",
///             },
///         },
///         livenessProbe: {
///             initialDelaySeconds: 0,
///             timeoutSeconds: 1,
///             periodSeconds: 3,
///             failureThreshold: 1,
///             grpc: {
///                 port: 8080,
///                 service: "my-service",
///             },
///         },
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.cloudrunv2.Instance("default",
///     name="cloudrun-instance",
///     location="us-west4",
///     containers=[{
///         "image": "us-docker.pkg.dev/cloudrun/container/hello",
///         "startup_probe": {
///             "initial_delay_seconds": 0,
///             "timeout_seconds": 1,
///             "period_seconds": 3,
///             "failure_threshold": 1,
///             "grpc": {
///                 "port": 8080,
///                 "service": "my-service",
///             },
///         },
///         "liveness_probe": {
///             "initial_delay_seconds": 0,
///             "timeout_seconds": 1,
///             "period_seconds": 3,
///             "failure_threshold": 1,
///             "grpc": {
///                 "port": 8080,
///                 "service": "my-service",
///             },
///         },
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.CloudRunV2.Instance("default", new()
///     {
///         Name = "cloudrun-instance",
///         Location = "us-west4",
///         Containers = new[]
///         {
///             new Gcp.CloudRunV2.Inputs.InstanceContainerArgs
///             {
///                 Image = "us-docker.pkg.dev/cloudrun/container/hello",
///                 StartupProbe = new Gcp.CloudRunV2.Inputs.InstanceContainerStartupProbeArgs
///                 {
///                     InitialDelaySeconds = 0,
///                     TimeoutSeconds = 1,
///                     PeriodSeconds = 3,
///                     FailureThreshold = 1,
///                     Grpc = new Gcp.CloudRunV2.Inputs.InstanceContainerStartupProbeGrpcArgs
///                     {
///                         Port = 8080,
///                         Service = "my-service",
///                     },
///                 },
///                 LivenessProbe = new Gcp.CloudRunV2.Inputs.InstanceContainerLivenessProbeArgs
///                 {
///                     InitialDelaySeconds = 0,
///                     TimeoutSeconds = 1,
///                     PeriodSeconds = 3,
///                     FailureThreshold = 1,
///                     Grpc = new Gcp.CloudRunV2.Inputs.InstanceContainerLivenessProbeGrpcArgs
///                     {
///                         Port = 8080,
///                         Service = "my-service",
///                     },
///                 },
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/cloudrunv2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudrunv2.NewInstance(ctx, "default", &cloudrunv2.InstanceArgs{
/// 			Name:     pulumi.String("cloudrun-instance"),
/// 			Location: pulumi.String("us-west4"),
/// 			Containers: cloudrunv2.InstanceContainerArray{
/// 				&cloudrunv2.InstanceContainerArgs{
/// 					Image: pulumi.String("us-docker.pkg.dev/cloudrun/container/hello"),
/// 					StartupProbe: &cloudrunv2.InstanceContainerStartupProbeArgs{
/// 						InitialDelaySeconds: pulumi.Int(0),
/// 						TimeoutSeconds:      pulumi.Int(1),
/// 						PeriodSeconds:       pulumi.Int(3),
/// 						FailureThreshold:    pulumi.Int(1),
/// 						Grpc: &cloudrunv2.InstanceContainerStartupProbeGrpcArgs{
/// 							Port:    pulumi.Int(8080),
/// 							Service: pulumi.String("my-service"),
/// 						},
/// 					},
/// 					LivenessProbe: &cloudrunv2.InstanceContainerLivenessProbeArgs{
/// 						InitialDelaySeconds: pulumi.Int(0),
/// 						TimeoutSeconds:      pulumi.Int(1),
/// 						PeriodSeconds:       pulumi.Int(3),
/// 						FailureThreshold:    pulumi.Int(1),
/// 						Grpc: &cloudrunv2.InstanceContainerLivenessProbeGrpcArgs{
/// 							Port:    pulumi.Int(8080),
/// 							Service: pulumi.String("my-service"),
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
/// ```hcl
/// terraform {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_cloudrunv2_instance" "default" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   name     = "cloudrun-instance"
///   location = "us-west4"
///   containers {
///     image = "us-docker.pkg.dev/cloudrun/container/hello"
///     startup_probe = {
///       initial_delay_seconds = 0
///       timeout_seconds       = 1
///       period_seconds        = 3
///       failure_threshold     = 1
///       grpc = {
///         port    = 8080
///         service = "my-service"
///       }
///     }
///     liveness_probe = {
///       initial_delay_seconds = 0
///       timeout_seconds       = 1
///       period_seconds        = 3
///       failure_threshold     = 1
///       grpc = {
///         port    = 8080
///         service = "my-service"
///       }
///     }
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.cloudrunv2.Instance;
/// import com.pulumi.gcp.cloudrunv2.InstanceArgs;
/// import com.pulumi.gcp.cloudrunv2.inputs.InstanceContainerArgs;
/// import com.pulumi.gcp.cloudrunv2.inputs.InstanceContainerStartupProbeArgs;
/// import com.pulumi.gcp.cloudrunv2.inputs.InstanceContainerStartupProbeGrpcArgs;
/// import com.pulumi.gcp.cloudrunv2.inputs.InstanceContainerLivenessProbeArgs;
/// import com.pulumi.gcp.cloudrunv2.inputs.InstanceContainerLivenessProbeGrpcArgs;
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
///         var default_ = new Instance("default", InstanceArgs.builder()
///             .name("cloudrun-instance")
///             .location("us-west4")
///             .containers(InstanceContainerArgs.builder()
///                 .image("us-docker.pkg.dev/cloudrun/container/hello")
///                 .startupProbe(InstanceContainerStartupProbeArgs.builder()
///                     .initialDelaySeconds(0)
///                     .timeoutSeconds(1)
///                     .periodSeconds(3)
///                     .failureThreshold(1)
///                     .grpc(InstanceContainerStartupProbeGrpcArgs.builder()
///                         .port(8080)
///                         .service("my-service")
///                         .build())
///                     .build())
///                 .livenessProbe(InstanceContainerLivenessProbeArgs.builder()
///                     .initialDelaySeconds(0)
///                     .timeoutSeconds(1)
///                     .periodSeconds(3)
///                     .failureThreshold(1)
///                     .grpc(InstanceContainerLivenessProbeGrpcArgs.builder()
///                         .port(8080)
///                         .service("my-service")
///                         .build())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:cloudrunv2:Instance
///     properties:
///       name: cloudrun-instance
///       location: us-west4
///       containers:
///         - image: us-docker.pkg.dev/cloudrun/container/hello
///           startupProbe:
///             initialDelaySeconds: 0
///             timeoutSeconds: 1
///             periodSeconds: 3
///             failureThreshold: 1
///             grpc:
///               port: 8080
///               service: my-service
///           livenessProbe:
///             initialDelaySeconds: 0
///             timeoutSeconds: 1
///             periodSeconds: 3
///             failureThreshold: 1
///             grpc:
///               port: 8080
///               service: my-service
/// ```
///
///
/// ### Cloudrunv2 Instance Secret
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const secret = new gcp.secretmanager.Secret("secret", {
///     secretId: "secret",
///     replication: {
///         auto: {},
///     },
/// });
/// const secret_version_data = new gcp.secretmanager.SecretVersion("secret-version-data", {
///     secret: secret.name,
///     secretData: "secret-data",
/// });
/// const project = gcp.organizations.getProject({});
/// const secret_access = new gcp.secretmanager.SecretIamMember("secret-access", {
///     secretId: secret.id,
///     role: "roles/secretmanager.secretAccessor",
///     member: project.then(project => `serviceAccount:${project.number}-compute@developer.gserviceaccount.com`),
/// }, {
///     dependsOn: [secret],
/// });
/// const _default = new gcp.cloudrunv2.Instance("default", {
///     name: "cloudrun-instance",
///     location: "us-west4",
///     containers: [{
///         image: "us-docker.pkg.dev/cloudrun/container/hello",
///         envs: [{
///             name: "SECRET_ENV",
///             valueSource: {
///                 secretKeyRef: {
///                     secret: secret.secretId,
///                     version: "1",
///                 },
///             },
///         }],
///         volumeMounts: [{
///             name: "secret-volume",
///             mountPath: "/secrets",
///         }],
///     }],
///     volumes: [{
///         name: "secret-volume",
///         secret: {
///             secret: secret.secretId,
///             defaultMode: 292,
///             items: [{
///                 path: "my-secret",
///                 version: "1",
///                 mode: 292,
///             }],
///         },
///     }],
/// }, {
///     dependsOn: [
///         secret_version_data,
///         secret_access,
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// secret = gcp.secretmanager.Secret("secret",
///     secret_id="secret",
///     replication={
///         "auto": {},
///     })
/// secret_version_data = gcp.secretmanager.SecretVersion("secret-version-data",
///     secret=secret.name,
///     secret_data="secret-data")
/// project = gcp.organizations.get_project()
/// secret_access = gcp.secretmanager.SecretIamMember("secret-access",
///     secret_id=secret.id,
///     role="roles/secretmanager.secretAccessor",
///     member=f"serviceAccount:{project.number}-compute@developer.gserviceaccount.com",
///     opts = pulumi.ResourceOptions(depends_on=[secret]))
/// default = gcp.cloudrunv2.Instance("default",
///     name="cloudrun-instance",
///     location="us-west4",
///     containers=[{
///         "image": "us-docker.pkg.dev/cloudrun/container/hello",
///         "envs": [{
///             "name": "SECRET_ENV",
///             "value_source": {
///                 "secret_key_ref": {
///                     "secret": secret.secret_id,
///                     "version": "1",
///                 },
///             },
///         }],
///         "volume_mounts": [{
///             "name": "secret-volume",
///             "mount_path": "/secrets",
///         }],
///     }],
///     volumes=[{
///         "name": "secret-volume",
///         "secret": {
///             "secret": secret.secret_id,
///             "default_mode": 292,
///             "items": [{
///                 "path": "my-secret",
///                 "version": "1",
///                 "mode": 292,
///             }],
///         },
///     }],
///     opts = pulumi.ResourceOptions(depends_on=[
///             secret_version_data,
///             secret_access,
///         ]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var secret = new Gcp.SecretManager.Secret("secret", new()
///     {
///         SecretId = "secret",
///         Replication = new Gcp.SecretManager.Inputs.SecretReplicationArgs
///         {
///             Auto = null,
///         },
///     });
///
///     var secret_version_data = new Gcp.SecretManager.SecretVersion("secret-version-data", new()
///     {
///         Secret = secret.Name,
///         SecretData = "secret-data",
///     });
///
///     var project = Gcp.Organizations.GetProject.Invoke();
///
///     var secret_access = new Gcp.SecretManager.SecretIamMember("secret-access", new()
///     {
///         SecretId = secret.Id,
///         Role = "roles/secretmanager.secretAccessor",
///         Member = $"serviceAccount:{project.Apply(getProjectResult => getProjectResult.Number)}-compute@developer.gserviceaccount.com",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             secret,
///         },
///     });
///
///     var @default = new Gcp.CloudRunV2.Instance("default", new()
///     {
///         Name = "cloudrun-instance",
///         Location = "us-west4",
///         Containers = new[]
///         {
///             new Gcp.CloudRunV2.Inputs.InstanceContainerArgs
///             {
///                 Image = "us-docker.pkg.dev/cloudrun/container/hello",
///                 Envs = new[]
///                 {
///                     new Gcp.CloudRunV2.Inputs.InstanceContainerEnvArgs
///                     {
///                         Name = "SECRET_ENV",
///                         ValueSource = new Gcp.CloudRunV2.Inputs.InstanceContainerEnvValueSourceArgs
///                         {
///                             SecretKeyRef = new Gcp.CloudRunV2.Inputs.InstanceContainerEnvValueSourceSecretKeyRefArgs
///                             {
///                                 Secret = secret.SecretId,
///                                 Version = "1",
///                             },
///                         },
///                     },
///                 },
///                 VolumeMounts = new[]
///                 {
///                     new Gcp.CloudRunV2.Inputs.InstanceContainerVolumeMountArgs
///                     {
///                         Name = "secret-volume",
///                         MountPath = "/secrets",
///                     },
///                 },
///             },
///         },
///         Volumes = new[]
///         {
///             new Gcp.CloudRunV2.Inputs.InstanceVolumeArgs
///             {
///                 Name = "secret-volume",
///                 Secret = new Gcp.CloudRunV2.Inputs.InstanceVolumeSecretArgs
///                 {
///                     Secret = secret.SecretId,
///                     DefaultMode = 292,
///                     Items = new[]
///                     {
///                         new Gcp.CloudRunV2.Inputs.InstanceVolumeSecretItemArgs
///                         {
///                             Path = "my-secret",
///                             Version = "1",
///                             Mode = 292,
///                         },
///                     },
///                 },
///             },
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             secret_version_data,
///             secret_access,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/cloudrunv2"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/secretmanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		secret, err := secretmanager.NewSecret(ctx, "secret", &secretmanager.SecretArgs{
/// 			SecretId: pulumi.String("secret"),
/// 			Replication: &secretmanager.SecretReplicationArgs{
/// 				Auto: &secretmanager.SecretReplicationAutoArgs{},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		secret_version_data, err := secretmanager.NewSecretVersion(ctx, "secret-version-data", &secretmanager.SecretVersionArgs{
/// 			Secret:     secret.Name,
/// 			SecretData: pulumi.String("secret-data"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		secret_access, err := secretmanager.NewSecretIamMember(ctx, "secret-access", &secretmanager.SecretIamMemberArgs{
/// 			SecretId: secret.ID(),
/// 			Role:     pulumi.String("roles/secretmanager.secretAccessor"),
/// 			Member:   pulumi.Sprintf("serviceAccount:%v-compute@developer.gserviceaccount.com", project.Number),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			secret,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cloudrunv2.NewInstance(ctx, "default", &cloudrunv2.InstanceArgs{
/// 			Name:     pulumi.String("cloudrun-instance"),
/// 			Location: pulumi.String("us-west4"),
/// 			Containers: cloudrunv2.InstanceContainerArray{
/// 				&cloudrunv2.InstanceContainerArgs{
/// 					Image: pulumi.String("us-docker.pkg.dev/cloudrun/container/hello"),
/// 					Envs: cloudrunv2.InstanceContainerEnvArray{
/// 						&cloudrunv2.InstanceContainerEnvArgs{
/// 							Name: pulumi.String("SECRET_ENV"),
/// 							ValueSource: &cloudrunv2.InstanceContainerEnvValueSourceArgs{
/// 								SecretKeyRef: &cloudrunv2.InstanceContainerEnvValueSourceSecretKeyRefArgs{
/// 									Secret:  secret.SecretId,
/// 									Version: pulumi.String("1"),
/// 								},
/// 							},
/// 						},
/// 					},
/// 					VolumeMounts: cloudrunv2.InstanceContainerVolumeMountArray{
/// 						&cloudrunv2.InstanceContainerVolumeMountArgs{
/// 							Name:      pulumi.String("secret-volume"),
/// 							MountPath: pulumi.String("/secrets"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			Volumes: cloudrunv2.InstanceVolumeArray{
/// 				&cloudrunv2.InstanceVolumeArgs{
/// 					Name: pulumi.String("secret-volume"),
/// 					Secret: &cloudrunv2.InstanceVolumeSecretArgs{
/// 						Secret:      secret.SecretId,
/// 						DefaultMode: pulumi.Int(292),
/// 						Items: cloudrunv2.InstanceVolumeSecretItemArray{
/// 							&cloudrunv2.InstanceVolumeSecretItemArgs{
/// 								Path:    pulumi.String("my-secret"),
/// 								Version: pulumi.String("1"),
/// 								Mode:    pulumi.Int(292),
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			secret_version_data,
/// 			secret_access,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// terraform {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_organizations_project" "project" {
/// }
///
/// resource "gcp_cloudrunv2_instance" "default" {
///   depends_on = [gcp_secretmanager_secret_version.secret-version-data, gcp_secretmanager_secret_iam_member.secret-access]
///   lifecycle {
///     create_before_destroy = true
///   }
///   name     = "cloudrun-instance"
///   location = "us-west4"
///   containers {
///     image = "us-docker.pkg.dev/cloudrun/container/hello"
///     envs {
///       name = "SECRET_ENV"
///       value_source = {
///         secret_key_ref = {
///           secret  = gcp_secretmanager_secret.secret.secret_id
///           version = "1"
///         }
///       }
///     }
///     volume_mounts {
///       name       = "secret-volume"
///       mount_path = "/secrets"
///     }
///   }
///   volumes {
///     name = "secret-volume"
///     secret = {
///       secret       = gcp_secretmanager_secret.secret.secret_id
///       default_mode = 292
///       items = [{
///         path    = "my-secret"
///         version = "1"
///         mode    = 292
///       }]
///     }
///   }
/// }
/// resource "gcp_secretmanager_secret" "secret" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   secret_id = "secret"
///   replication = {
///     auto = {}
///   }
/// }
/// resource "gcp_secretmanager_secret_version" "secret-version-data" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   secret      = gcp_secretmanager_secret.secret.name
///   secret_data = "secret-data"
/// }
/// resource "gcp_secretmanager_secret_iam_member" "secret-access" {
///   depends_on = [gcp_secretmanager_secret.secret]
///   lifecycle {
///     create_before_destroy = true
///   }
///   secret_id = gcp_secretmanager_secret.secret.id
///   role      = "roles/secretmanager.secretAccessor"
///   member    ="serviceAccount:${data.gcp_organizations_project.project.number}-compute@developer.gserviceaccount.com"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.secretmanager.Secret;
/// import com.pulumi.gcp.secretmanager.SecretArgs;
/// import com.pulumi.gcp.secretmanager.inputs.SecretReplicationArgs;
/// import com.pulumi.gcp.secretmanager.inputs.SecretReplicationAutoArgs;
/// import com.pulumi.gcp.secretmanager.SecretVersion;
/// import com.pulumi.gcp.secretmanager.SecretVersionArgs;
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
/// import com.pulumi.gcp.secretmanager.SecretIamMember;
/// import com.pulumi.gcp.secretmanager.SecretIamMemberArgs;
/// import com.pulumi.gcp.cloudrunv2.Instance;
/// import com.pulumi.gcp.cloudrunv2.InstanceArgs;
/// import com.pulumi.gcp.cloudrunv2.inputs.InstanceContainerArgs;
/// import com.pulumi.gcp.cloudrunv2.inputs.InstanceContainerEnvArgs;
/// import com.pulumi.gcp.cloudrunv2.inputs.InstanceContainerEnvValueSourceArgs;
/// import com.pulumi.gcp.cloudrunv2.inputs.InstanceContainerEnvValueSourceSecretKeyRefArgs;
/// import com.pulumi.gcp.cloudrunv2.inputs.InstanceContainerVolumeMountArgs;
/// import com.pulumi.gcp.cloudrunv2.inputs.InstanceVolumeArgs;
/// import com.pulumi.gcp.cloudrunv2.inputs.InstanceVolumeSecretArgs;
/// import com.pulumi.gcp.cloudrunv2.inputs.InstanceVolumeSecretItemArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var secret = new Secret("secret", SecretArgs.builder()
///             .secretId("secret")
///             .replication(SecretReplicationArgs.builder()
///                 .auto(SecretReplicationAutoArgs.builder()
///                     .build())
///                 .build())
///             .build());
///
///         var secret_version_data = new SecretVersion("secret-version-data", SecretVersionArgs.builder()
///             .secret(secret.name())
///             .secretData("secret-data")
///             .build());
///
///         final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
///             .build());
///
///         var secret_access = new SecretIamMember("secret-access", SecretIamMemberArgs.builder()
///             .secretId(secret.id())
///             .role("roles/secretmanager.secretAccessor")
///             .member(String.format("serviceAccount:%s-compute@developer.gserviceaccount.com", project.number()))
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(secret)
///                 .build());
///
///         var default_ = new Instance("default", InstanceArgs.builder()
///             .name("cloudrun-instance")
///             .location("us-west4")
///             .containers(InstanceContainerArgs.builder()
///                 .image("us-docker.pkg.dev/cloudrun/container/hello")
///                 .envs(InstanceContainerEnvArgs.builder()
///                     .name("SECRET_ENV")
///                     .valueSource(InstanceContainerEnvValueSourceArgs.builder()
///                         .secretKeyRef(InstanceContainerEnvValueSourceSecretKeyRefArgs.builder()
///                             .secret(secret.secretId())
///                             .version("1")
///                             .build())
///                         .build())
///                     .build())
///                 .volumeMounts(InstanceContainerVolumeMountArgs.builder()
///                     .name("secret-volume")
///                     .mountPath("/secrets")
///                     .build())
///                 .build())
///             .volumes(InstanceVolumeArgs.builder()
///                 .name("secret-volume")
///                 .secret(InstanceVolumeSecretArgs.builder()
///                     .secret(secret.secretId())
///                     .defaultMode(292)
///                     .items(InstanceVolumeSecretItemArgs.builder()
///                         .path("my-secret")
///                         .version("1")
///                         .mode(292)
///                         .build())
///                     .build())
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(
///                     secret_version_data,
///                     secret_access)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:cloudrunv2:Instance
///     properties:
///       name: cloudrun-instance
///       location: us-west4
///       containers:
///         - image: us-docker.pkg.dev/cloudrun/container/hello
///           envs:
///             - name: SECRET_ENV
///               valueSource:
///                 secretKeyRef:
///                   secret: ${secret.secretId}
///                   version: '1'
///           volumeMounts:
///             - name: secret-volume
///               mountPath: /secrets
///       volumes:
///         - name: secret-volume
///           secret:
///             secret: ${secret.secretId}
///             defaultMode: 292
///             items:
///               - path: my-secret
///                 version: '1'
///                 mode: 292
///     options:
///       dependsOn:
///         - ${["secret-version-data"]}
///         - ${["secret-access"]}
///   secret:
///     type: gcp:secretmanager:Secret
///     properties:
///       secretId: secret
///       replication:
///         auto: {}
///   secret-version-data:
///     type: gcp:secretmanager:SecretVersion
///     properties:
///       secret: ${secret.name}
///       secretData: secret-data
///   secret-access:
///     type: gcp:secretmanager:SecretIamMember
///     properties:
///       secretId: ${secret.id}
///       role: roles/secretmanager.secretAccessor
///       member: serviceAccount:${project.number}-compute@developer.gserviceaccount.com
///     options:
///       dependsOn:
///         - ${secret}
/// variables:
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
///
/// ### Cloudrunv2 Instance Service Account
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const serviceAccount = new gcp.serviceaccount.Account("service_account", {
///     accountId: "test-sa",
///     displayName: "Test Service Account",
/// });
/// const _default = new gcp.cloudrunv2.Instance("default", {
///     name: "cloudrun-instance",
///     location: "us-west4",
///     serviceAccount: serviceAccount.email,
///     containers: [{
///         image: "us-docker.pkg.dev/cloudrun/container/hello",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// service_account = gcp.serviceaccount.Account("service_account",
///     account_id="test-sa",
///     display_name="Test Service Account")
/// default = gcp.cloudrunv2.Instance("default",
///     name="cloudrun-instance",
///     location="us-west4",
///     service_account=service_account.email,
///     containers=[{
///         "image": "us-docker.pkg.dev/cloudrun/container/hello",
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var serviceAccount = new Gcp.ServiceAccount.Account("service_account", new()
///     {
///         AccountId = "test-sa",
///         DisplayName = "Test Service Account",
///     });
///
///     var @default = new Gcp.CloudRunV2.Instance("default", new()
///     {
///         Name = "cloudrun-instance",
///         Location = "us-west4",
///         ServiceAccount = serviceAccount.Email,
///         Containers = new[]
///         {
///             new Gcp.CloudRunV2.Inputs.InstanceContainerArgs
///             {
///                 Image = "us-docker.pkg.dev/cloudrun/container/hello",
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/cloudrunv2"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/serviceaccount"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		serviceAccount, err := serviceaccount.NewAccount(ctx, "service_account", &serviceaccount.AccountArgs{
/// 			AccountId:   pulumi.String("test-sa"),
/// 			DisplayName: pulumi.String("Test Service Account"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cloudrunv2.NewInstance(ctx, "default", &cloudrunv2.InstanceArgs{
/// 			Name:           pulumi.String("cloudrun-instance"),
/// 			Location:       pulumi.String("us-west4"),
/// 			ServiceAccount: serviceAccount.Email,
/// 			Containers: cloudrunv2.InstanceContainerArray{
/// 				&cloudrunv2.InstanceContainerArgs{
/// 					Image: pulumi.String("us-docker.pkg.dev/cloudrun/container/hello"),
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
/// ```hcl
/// terraform {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_cloudrunv2_instance" "default" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   name            = "cloudrun-instance"
///   location        = "us-west4"
///   service_account = gcp_serviceaccount_account.service_account.email
///   containers {
///     image = "us-docker.pkg.dev/cloudrun/container/hello"
///   }
/// }
/// resource "gcp_serviceaccount_account" "service_account" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   account_id   = "test-sa"
///   display_name = "Test Service Account"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.serviceaccount.Account;
/// import com.pulumi.gcp.serviceaccount.AccountArgs;
/// import com.pulumi.gcp.cloudrunv2.Instance;
/// import com.pulumi.gcp.cloudrunv2.InstanceArgs;
/// import com.pulumi.gcp.cloudrunv2.inputs.InstanceContainerArgs;
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
///         var serviceAccount = new Account("serviceAccount", AccountArgs.builder()
///             .accountId("test-sa")
///             .displayName("Test Service Account")
///             .build());
///
///         var default_ = new Instance("default", InstanceArgs.builder()
///             .name("cloudrun-instance")
///             .location("us-west4")
///             .serviceAccount(serviceAccount.email())
///             .containers(InstanceContainerArgs.builder()
///                 .image("us-docker.pkg.dev/cloudrun/container/hello")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:cloudrunv2:Instance
///     properties:
///       name: cloudrun-instance
///       location: us-west4
///       serviceAccount: ${serviceAccount.email}
///       containers:
///         - image: us-docker.pkg.dev/cloudrun/container/hello
///   serviceAccount:
///     type: gcp:serviceaccount:Account
///     name: service_account
///     properties:
///       accountId: test-sa
///       displayName: Test Service Account
/// ```
///
///
/// ### Cloudrunv2 Instance Volumes External
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.storage.Bucket("default", {
///     name: "cr-gcs",
///     location: "US",
///     uniformBucketLevelAccess: true,
///     forceDestroy: true,
/// });
/// const defaultInstance = new gcp.cloudrunv2.Instance("default", {
///     name: "cloudrun-instance",
///     location: "us-west4",
///     containers: [{
///         image: "us-docker.pkg.dev/cloudrun/container/hello",
///         volumeMounts: [{
///             name: "gcs-volume",
///             mountPath: "/mnt/gcs",
///         }],
///     }],
///     volumes: [{
///         name: "gcs-volume",
///         gcs: {
///             bucket: _default.name,
///             readOnly: false,
///             mountOptions: ["log-severity=info"],
///         },
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.storage.Bucket("default",
///     name="cr-gcs",
///     location="US",
///     uniform_bucket_level_access=True,
///     force_destroy=True)
/// default_instance = gcp.cloudrunv2.Instance("default",
///     name="cloudrun-instance",
///     location="us-west4",
///     containers=[{
///         "image": "us-docker.pkg.dev/cloudrun/container/hello",
///         "volume_mounts": [{
///             "name": "gcs-volume",
///             "mount_path": "/mnt/gcs",
///         }],
///     }],
///     volumes=[{
///         "name": "gcs-volume",
///         "gcs": {
///             "bucket": default.name,
///             "read_only": False,
///             "mount_options": ["log-severity=info"],
///         },
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.Storage.Bucket("default", new()
///     {
///         Name = "cr-gcs",
///         Location = "US",
///         UniformBucketLevelAccess = true,
///         ForceDestroy = true,
///     });
///
///     var defaultInstance = new Gcp.CloudRunV2.Instance("default", new()
///     {
///         Name = "cloudrun-instance",
///         Location = "us-west4",
///         Containers = new[]
///         {
///             new Gcp.CloudRunV2.Inputs.InstanceContainerArgs
///             {
///                 Image = "us-docker.pkg.dev/cloudrun/container/hello",
///                 VolumeMounts = new[]
///                 {
///                     new Gcp.CloudRunV2.Inputs.InstanceContainerVolumeMountArgs
///                     {
///                         Name = "gcs-volume",
///                         MountPath = "/mnt/gcs",
///                     },
///                 },
///             },
///         },
///         Volumes = new[]
///         {
///             new Gcp.CloudRunV2.Inputs.InstanceVolumeArgs
///             {
///                 Name = "gcs-volume",
///                 Gcs = new Gcp.CloudRunV2.Inputs.InstanceVolumeGcsArgs
///                 {
///                     Bucket = @default.Name,
///                     ReadOnly = false,
///                     MountOptions = new[]
///                     {
///                         "log-severity=info",
///                     },
///                 },
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/cloudrunv2"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := storage.NewBucket(ctx, "default", &storage.BucketArgs{
/// 			Name:                     pulumi.String("cr-gcs"),
/// 			Location:                 pulumi.String("US"),
/// 			UniformBucketLevelAccess: pulumi.Bool(true),
/// 			ForceDestroy:             pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cloudrunv2.NewInstance(ctx, "default", &cloudrunv2.InstanceArgs{
/// 			Name:     pulumi.String("cloudrun-instance"),
/// 			Location: pulumi.String("us-west4"),
/// 			Containers: cloudrunv2.InstanceContainerArray{
/// 				&cloudrunv2.InstanceContainerArgs{
/// 					Image: pulumi.String("us-docker.pkg.dev/cloudrun/container/hello"),
/// 					VolumeMounts: cloudrunv2.InstanceContainerVolumeMountArray{
/// 						&cloudrunv2.InstanceContainerVolumeMountArgs{
/// 							Name:      pulumi.String("gcs-volume"),
/// 							MountPath: pulumi.String("/mnt/gcs"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			Volumes: cloudrunv2.InstanceVolumeArray{
/// 				&cloudrunv2.InstanceVolumeArgs{
/// 					Name: pulumi.String("gcs-volume"),
/// 					Gcs: &cloudrunv2.InstanceVolumeGcsArgs{
/// 						Bucket:   _default.Name,
/// 						ReadOnly: pulumi.Bool(false),
/// 						MountOptions: pulumi.StringArray{
/// 							pulumi.String("log-severity=info"),
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
/// ```hcl
/// terraform {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_storage_bucket" "default" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   name                        = "cr-gcs"
///   location                    = "US"
///   uniform_bucket_level_access = true
///   force_destroy               = true
/// }
/// resource "gcp_cloudrunv2_instance" "default" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   name     = "cloudrun-instance"
///   location = "us-west4"
///   containers {
///     image = "us-docker.pkg.dev/cloudrun/container/hello"
///     volume_mounts {
///       name       = "gcs-volume"
///       mount_path = "/mnt/gcs"
///     }
///   }
///   volumes {
///     name = "gcs-volume"
///     gcs = {
///       bucket        = gcp_storage_bucket.default.name
///       read_only     = false
///       mount_options = ["log-severity=info"]
///     }
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.storage.Bucket;
/// import com.pulumi.gcp.storage.BucketArgs;
/// import com.pulumi.gcp.cloudrunv2.Instance;
/// import com.pulumi.gcp.cloudrunv2.InstanceArgs;
/// import com.pulumi.gcp.cloudrunv2.inputs.InstanceContainerArgs;
/// import com.pulumi.gcp.cloudrunv2.inputs.InstanceContainerVolumeMountArgs;
/// import com.pulumi.gcp.cloudrunv2.inputs.InstanceVolumeArgs;
/// import com.pulumi.gcp.cloudrunv2.inputs.InstanceVolumeGcsArgs;
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
///         var default_ = new Bucket("default", BucketArgs.builder()
///             .name("cr-gcs")
///             .location("US")
///             .uniformBucketLevelAccess(true)
///             .forceDestroy(true)
///             .build());
///
///         var defaultInstance = new Instance("defaultInstance", InstanceArgs.builder()
///             .name("cloudrun-instance")
///             .location("us-west4")
///             .containers(InstanceContainerArgs.builder()
///                 .image("us-docker.pkg.dev/cloudrun/container/hello")
///                 .volumeMounts(InstanceContainerVolumeMountArgs.builder()
///                     .name("gcs-volume")
///                     .mountPath("/mnt/gcs")
///                     .build())
///                 .build())
///             .volumes(InstanceVolumeArgs.builder()
///                 .name("gcs-volume")
///                 .gcs(InstanceVolumeGcsArgs.builder()
///                     .bucket(default_.name())
///                     .readOnly(false)
///                     .mountOptions("log-severity=info")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:storage:Bucket
///     properties:
///       name: cr-gcs
///       location: US
///       uniformBucketLevelAccess: true
///       forceDestroy: true
///   defaultInstance:
///     type: gcp:cloudrunv2:Instance
///     name: default
///     properties:
///       name: cloudrun-instance
///       location: us-west4
///       containers:
///         - image: us-docker.pkg.dev/cloudrun/container/hello
///           volumeMounts:
///             - name: gcs-volume
///               mountPath: /mnt/gcs
///       volumes:
///         - name: gcs-volume
///           gcs:
///             bucket: ${default.name}
///             readOnly: false
///             mountOptions:
///               - log-severity=info
/// ```
///
///
/// ### Cloudrunv2 Instance Cmek
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.cloudrunv2.Instance("default", {
///     name: "cloudrun-instance",
///     location: "us-west4",
///     encryptionKey: "my-key",
///     encryptionKeyRevocationAction: "SHUTDOWN",
///     encryptionKeyShutdownDuration: "3600s",
///     containers: [{
///         image: "us-docker.pkg.dev/cloudrun/container/hello",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.cloudrunv2.Instance("default",
///     name="cloudrun-instance",
///     location="us-west4",
///     encryption_key="my-key",
///     encryption_key_revocation_action="SHUTDOWN",
///     encryption_key_shutdown_duration="3600s",
///     containers=[{
///         "image": "us-docker.pkg.dev/cloudrun/container/hello",
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.CloudRunV2.Instance("default", new()
///     {
///         Name = "cloudrun-instance",
///         Location = "us-west4",
///         EncryptionKey = "my-key",
///         EncryptionKeyRevocationAction = "SHUTDOWN",
///         EncryptionKeyShutdownDuration = "3600s",
///         Containers = new[]
///         {
///             new Gcp.CloudRunV2.Inputs.InstanceContainerArgs
///             {
///                 Image = "us-docker.pkg.dev/cloudrun/container/hello",
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/cloudrunv2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudrunv2.NewInstance(ctx, "default", &cloudrunv2.InstanceArgs{
/// 			Name:                          pulumi.String("cloudrun-instance"),
/// 			Location:                      pulumi.String("us-west4"),
/// 			EncryptionKey:                 pulumi.String("my-key"),
/// 			EncryptionKeyRevocationAction: pulumi.String("SHUTDOWN"),
/// 			EncryptionKeyShutdownDuration: pulumi.String("3600s"),
/// 			Containers: cloudrunv2.InstanceContainerArray{
/// 				&cloudrunv2.InstanceContainerArgs{
/// 					Image: pulumi.String("us-docker.pkg.dev/cloudrun/container/hello"),
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
/// ```hcl
/// terraform {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_cloudrunv2_instance" "default" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   name                             = "cloudrun-instance"
///   location                         = "us-west4"
///   encryption_key                   = "my-key"
///   encryption_key_revocation_action = "SHUTDOWN"
///   encryption_key_shutdown_duration = "3600s"
///   containers {
///     image = "us-docker.pkg.dev/cloudrun/container/hello"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.cloudrunv2.Instance;
/// import com.pulumi.gcp.cloudrunv2.InstanceArgs;
/// import com.pulumi.gcp.cloudrunv2.inputs.InstanceContainerArgs;
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
///         var default_ = new Instance("default", InstanceArgs.builder()
///             .name("cloudrun-instance")
///             .location("us-west4")
///             .encryptionKey("my-key")
///             .encryptionKeyRevocationAction("SHUTDOWN")
///             .encryptionKeyShutdownDuration("3600s")
///             .containers(InstanceContainerArgs.builder()
///                 .image("us-docker.pkg.dev/cloudrun/container/hello")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:cloudrunv2:Instance
///     properties:
///       name: cloudrun-instance
///       location: us-west4
///       encryptionKey: my-key
///       encryptionKeyRevocationAction: SHUTDOWN
///       encryptionKeyShutdownDuration: 3600s
///       containers:
///         - image: us-docker.pkg.dev/cloudrun/container/hello
/// ```
///
///
/// ### Cloudrunv2 Instance Sandbox Templates
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.cloudrunv2.Instance("default", {
///     name: "cloudrun-instance",
///     location: "us-west4",
///     launchStage: "BETA",
///     containers: [{
///         image: "us-docker.pkg.dev/cloudrun/container/hello",
///         sandboxLauncher: true,
///     }],
///     sandboxes: {
///         templates: [{
///             name: "hello",
///             image: "us-docker.pkg.dev/cloudrun/container/hello",
///         }],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.cloudrunv2.Instance("default",
///     name="cloudrun-instance",
///     location="us-west4",
///     launch_stage="BETA",
///     containers=[{
///         "image": "us-docker.pkg.dev/cloudrun/container/hello",
///         "sandbox_launcher": True,
///     }],
///     sandboxes={
///         "templates": [{
///             "name": "hello",
///             "image": "us-docker.pkg.dev/cloudrun/container/hello",
///         }],
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.CloudRunV2.Instance("default", new()
///     {
///         Name = "cloudrun-instance",
///         Location = "us-west4",
///         LaunchStage = "BETA",
///         Containers = new[]
///         {
///             new Gcp.CloudRunV2.Inputs.InstanceContainerArgs
///             {
///                 Image = "us-docker.pkg.dev/cloudrun/container/hello",
///                 SandboxLauncher = true,
///             },
///         },
///         Sandboxes = new Gcp.CloudRunV2.Inputs.InstanceSandboxesArgs
///         {
///             Templates = new[]
///             {
///                 new Gcp.CloudRunV2.Inputs.InstanceSandboxesTemplateArgs
///                 {
///                     Name = "hello",
///                     Image = "us-docker.pkg.dev/cloudrun/container/hello",
///                 },
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/cloudrunv2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudrunv2.NewInstance(ctx, "default", &cloudrunv2.InstanceArgs{
/// 			Name:        pulumi.String("cloudrun-instance"),
/// 			Location:    pulumi.String("us-west4"),
/// 			LaunchStage: pulumi.String("BETA"),
/// 			Containers: cloudrunv2.InstanceContainerArray{
/// 				&cloudrunv2.InstanceContainerArgs{
/// 					Image:           pulumi.String("us-docker.pkg.dev/cloudrun/container/hello"),
/// 					SandboxLauncher: pulumi.Bool(true),
/// 				},
/// 			},
/// 			Sandboxes: &cloudrunv2.InstanceSandboxesArgs{
/// 				Templates: cloudrunv2.InstanceSandboxesTemplateArray{
/// 					&cloudrunv2.InstanceSandboxesTemplateArgs{
/// 						Name:  pulumi.String("hello"),
/// 						Image: pulumi.String("us-docker.pkg.dev/cloudrun/container/hello"),
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
/// ```hcl
/// terraform {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_cloudrunv2_instance" "default" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   name         = "cloudrun-instance"
///   location     = "us-west4"
///   launch_stage = "BETA"
///   containers {
///     image            = "us-docker.pkg.dev/cloudrun/container/hello"
///     sandbox_launcher = true
///   }
///   sandboxes = {
///     templates = [{
///       name  = "hello"
///       image = "us-docker.pkg.dev/cloudrun/container/hello"
///     }]
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.cloudrunv2.Instance;
/// import com.pulumi.gcp.cloudrunv2.InstanceArgs;
/// import com.pulumi.gcp.cloudrunv2.inputs.InstanceContainerArgs;
/// import com.pulumi.gcp.cloudrunv2.inputs.InstanceSandboxesArgs;
/// import com.pulumi.gcp.cloudrunv2.inputs.InstanceSandboxesTemplateArgs;
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
///         var default_ = new Instance("default", InstanceArgs.builder()
///             .name("cloudrun-instance")
///             .location("us-west4")
///             .launchStage("BETA")
///             .containers(InstanceContainerArgs.builder()
///                 .image("us-docker.pkg.dev/cloudrun/container/hello")
///                 .sandboxLauncher(true)
///                 .build())
///             .sandboxes(InstanceSandboxesArgs.builder()
///                 .templates(InstanceSandboxesTemplateArgs.builder()
///                     .name("hello")
///                     .image("us-docker.pkg.dev/cloudrun/container/hello")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:cloudrunv2:Instance
///     properties:
///       name: cloudrun-instance
///       location: us-west4
///       launchStage: BETA
///       containers:
///         - image: us-docker.pkg.dev/cloudrun/container/hello
///           sandboxLauncher: true
///       sandboxes:
///         templates:
///           - name: hello
///             image: us-docker.pkg.dev/cloudrun/container/hello
/// ```
///
///
/// ## Import
///
/// Instance can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/instances/{{name}}`
/// * `{{project}}/{{location}}/{{name}}`
/// * `{{location}}/{{name}}`
///
///
/// When using the `pulumi import` command, Instance can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:cloudrunv2/instance:Instance default projects/{{project}}/locations/{{location}}/instances/{{name}}
/// $ pulumi import gcp:cloudrunv2/instance:Instance default {{project}}/{{location}}/{{name}}
/// $ pulumi import gcp:cloudrunv2/instance:Instance default {{location}}/{{name}}
/// ```
class Instance extends pulumi.CustomResource {
  /// Unstructured key value map that may be set by external tools to store and arbitrary metadata. They are not queryable and should be preserved when modifying objects.
  /// Cloud Run API v2 does not support annotations with `run.googleapis.com`, `cloud.googleapis.com`, `serving.knative.dev`, or `autoscaling.knative.dev` namespaces, and they will be rejected in new resources.
  /// This field follows Kubernetes annotations' namespacing, limits, and rules.
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effectiveAnnotations` for all of the annotations present on the resource.
  late final pulumi.Output<Map<String, String>?> annotations;
  /// Arbitrary identifier for the API client.
  late final pulumi.Output<String> client;
  /// Arbitrary version identifier for the API client.
  late final pulumi.Output<String> clientVersion;
  /// The Conditions of all other associated sub-resources. They contain additional diagnostics information in case the Instance does not reach its Serving state. See comments in reconciling for additional information on reconciliation process in Cloud Run.
  /// Structure is documented below.
  late final pulumi.Output<List<InstanceCondition>> conditions;
  /// Status information for each of the specified containers. The status includes the resolved digest for specified images.
  /// Structure is documented below.
  late final pulumi.Output<List<InstanceContainerStatus>> containerStatuses;
  /// Holds the single container that defines the unit of execution for this Instance.
  /// Structure is documented below.
  late final pulumi.Output<List<InstanceContainer>> containers;
  /// The creation time.
  late final pulumi.Output<String> createTime;
  /// Email address of the authenticated creator.
  late final pulumi.Output<String> creator;
  /// Disables public resolution of the default URI of this Instance.
  late final pulumi.Output<bool?> defaultUriDisabled;
  /// The deletion time.
  late final pulumi.Output<String> deleteTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// All of annotations (key/value pairs) present on the resource in GCP, including the annotations configured through Terraform, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveAnnotations;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// A reference to a customer managed encryption key (CMEK) to use to encrypt this container image. For more information, go to https://cloud.google.com/run/docs/securing/using-cmek
  late final pulumi.Output<String?> encryptionKey;
  /// The action to take if the encryption key is revoked.
  /// Possible values are: `PREVENT_NEW`, `SHUTDOWN`.
  late final pulumi.Output<String?> encryptionKeyRevocationAction;
  /// If encryptionKeyRevocationAction is SHUTDOWN, the duration before shutting down all instances. The minimum increment is 1 hour.
  /// A duration in seconds with up to nine fractional digits, ending with 's'. Example: "3.5s".
  late final pulumi.Output<String?> encryptionKeyShutdownDuration;
  /// A system-generated fingerprint for this version of the resource. May be used to detect modification conflict during updates.
  late final pulumi.Output<String> etag;
  /// For a deleted resource, the time after which it will be permanently deleted.
  late final pulumi.Output<String> expireTime;
  /// A number that monotonically increases every time the user modifies the desired state. Please note that unlike v1, this is an int64 value. As with most Google APIs, its JSON representation will be a string instead of an integer.
  late final pulumi.Output<String> generation;
  /// Provides the ingress settings for this Instance. On output, returns the currently observed ingress settings, or INGRESS_TRAFFIC_UNSPECIFIED if no revision is active.
  /// Possible values are: `INGRESS_TRAFFIC_ALL`, `INGRESS_TRAFFIC_INTERNAL_ONLY`, `INGRESS_TRAFFIC_INTERNAL_LOAD_BALANCER`.
  late final pulumi.Output<String> ingress;
  /// Disables IAM permission check for run.routes.invoke for callers of this Instance. For more information, visit https://cloud.google.com/run/docs/securing/managing-access#invoker_check.
  late final pulumi.Output<bool?> invokerIamDisabled;
  /// Unstructured key value map that can be used to organize and categorize objects. User-provided labels are shared with Google's billing system, so they can be used to filter, or break down billing charges by team, component,
  /// environment, state, etc. For more information, visit https://docs.cloud.google.com/resource-manager/docs/creating-managing-labels or https://cloud.google.com/run/docs/configuring/labels.
  /// Cloud Run API v2 does not support labels with `run.googleapis.com`, `cloud.googleapis.com`, `serving.knative.dev`, or `autoscaling.knative.dev` namespaces, and they will be rejected.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// Email address of the last authenticated modifier.
  late final pulumi.Output<String> lastModifier;
  /// The launch stage as defined by [Google Cloud Platform Launch Stages](https://cloud.google.com/products#product-launch-stages). Cloud Run supports ALPHA, BETA, and GA. If no value is specified, GA is assumed. Set the launch stage to a preview stage on input to allow use of preview features in that stage. On read (or output), describes whether the resource uses preview features.
  /// For example, if ALPHA is provided as input, but only BETA and GA-level features are used, this field will be BETA on output.
  /// Possible values are: `UNIMPLEMENTED`, `PRELAUNCH`, `EARLY_ACCESS`, `ALPHA`, `BETA`, `GA`, `DEPRECATED`.
  late final pulumi.Output<String> launchStage;
  /// The location of the cloud run instance
  late final pulumi.Output<String> location;
  /// The Google Console URI to obtain logs for the Instance.
  late final pulumi.Output<String> logUri;
  /// Name of the Instance.
  late final pulumi.Output<String> name;
  /// The generation of this Instance currently serving traffic. See comments in reconciling for additional information on reconciliation process in Cloud Run. Please note that unlike v1, this is an int64 value. As with most Google APIs, its JSON representation will be a string instead of an integer.
  late final pulumi.Output<String> observedGeneration;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// Returns true if the Instance is currently being acted upon by the system to bring it into the desired state.
  /// When a new Instance is created, or an existing one is updated, Cloud Run will asynchronously perform all necessary steps to bring the Instance to the desired serving state. This process is called reconciliation. While reconciliation is in process, observedGeneration will have a transient value that might mismatch the intended state: Once reconciliation is over (and this field is false), there are two possible outcomes: reconciliation succeeded and the serving state matches the Instance, or there was an error, and reconciliation failed. This state can be found in terminalCondition.state.
  late final pulumi.Output<bool> reconciling;
  /// Restart policy for the Instance. If not provided, the default is ON_FAILURE.
  /// Possible values are: `ALWAYS`, `ON_FAILURE`, `NEVER`.
  late final pulumi.Output<String> restartPolicy;
  /// Configuration for sandboxes.
  /// Structure is documented below.
  late final pulumi.Output<InstanceSandboxes?> sandboxes;
  /// Reserved for future use. True if this service satisfies zone separation.
  late final pulumi.Output<bool> satisfiesPzs;
  /// Email address of the IAM service account associated with the Instance. The service account represents the identity of the running Instance, and determines what permissions the instance has.
  late final pulumi.Output<String> serviceAccount;
  /// The Condition of this Instance, containing its readiness status, and detailed error information in case it did not reach a serving state. See comments in reconciling for additional information on reconciliation process in Cloud Run.
  /// Structure is documented below.
  late final pulumi.Output<List<InstanceTerminalCondition>> terminalConditions;
  /// Server assigned unique identifier for the instance. The value is a UUID4 string and guaranteed to remain unchanged until the resource is deleted.
  late final pulumi.Output<String> uid;
  /// The last-modified time.
  late final pulumi.Output<String> updateTime;
  /// All URLs serving traffic for this Instance.
  late final pulumi.Output<List<String>> urls;
  /// A list of Volumes to make available to containers.
  /// Structure is documented below.
  late final pulumi.Output<List<InstanceVolume>?> volumes;

  /// Creates a new [Instance].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Instance]. {@macro pulumi_cloudrunv2_instance_instance_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Instance(
    String name, {
    InstanceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:cloudrunv2/instance:Instance',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '10.5.0').merge(options),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        ) {
    annotations = registerOutput<Map<String, String>?>('annotations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    client = registerOutput<String>('client');
    clientVersion = registerOutput<String>('clientVersion');
    conditions = registerOutput<List<InstanceCondition>>('conditions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<InstanceCondition>(guardedValue, (value) => InstanceCondition.fromMap((value as Map).cast<String, dynamic>())); });
    containerStatuses = registerOutput<List<InstanceContainerStatus>>('containerStatuses', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<InstanceContainerStatus>(guardedValue, (value) => InstanceContainerStatus.fromMap((value as Map).cast<String, dynamic>())); });
    containers = registerOutput<List<InstanceContainer>>('containers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<InstanceContainer>(guardedValue, (value) => InstanceContainer.fromMap((value as Map).cast<String, dynamic>())); });
    createTime = registerOutput<String>('createTime');
    creator = registerOutput<String>('creator');
    defaultUriDisabled = registerOutput<bool?>('defaultUriDisabled');
    deleteTime = registerOutput<String>('deleteTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    effectiveAnnotations = registerOutput<Map<String, String>>('effectiveAnnotations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    encryptionKey = registerOutput<String?>('encryptionKey');
    encryptionKeyRevocationAction = registerOutput<String?>('encryptionKeyRevocationAction');
    encryptionKeyShutdownDuration = registerOutput<String?>('encryptionKeyShutdownDuration');
    etag = registerOutput<String>('etag');
    expireTime = registerOutput<String>('expireTime');
    generation = registerOutput<String>('generation');
    ingress = registerOutput<String>('ingress');
    invokerIamDisabled = registerOutput<bool?>('invokerIamDisabled');
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    lastModifier = registerOutput<String>('lastModifier');
    launchStage = registerOutput<String>('launchStage');
    location = registerOutput<String>('location');
    logUri = registerOutput<String>('logUri');
    this.name = registerOutput<String>('name');
    observedGeneration = registerOutput<String>('observedGeneration');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    reconciling = registerOutput<bool>('reconciling');
    restartPolicy = registerOutput<String>('restartPolicy');
    sandboxes = registerOutput<InstanceSandboxes?>('sandboxes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceSandboxes.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    satisfiesPzs = registerOutput<bool>('satisfiesPzs');
    serviceAccount = registerOutput<String>('serviceAccount');
    terminalConditions = registerOutput<List<InstanceTerminalCondition>>('terminalConditions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<InstanceTerminalCondition>(guardedValue, (value) => InstanceTerminalCondition.fromMap((value as Map).cast<String, dynamic>())); });
    uid = registerOutput<String>('uid');
    updateTime = registerOutput<String>('updateTime');
    urls = registerOutput<List<String>>('urls', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    volumes = registerOutput<List<InstanceVolume>?>('volumes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<InstanceVolume>(guardedValue, (value) => InstanceVolume.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Gets an existing [Instance] resource's state with the given [name] and [id].
  static Instance get(
    String name,
    pulumi.Input<String> id, {
    InstanceState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Instance._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Instance._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:cloudrunv2/instance:Instance',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    annotations = registerOutput<Map<String, String>?>('annotations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    client = registerOutput<String>('client');
    clientVersion = registerOutput<String>('clientVersion');
    conditions = registerOutput<List<InstanceCondition>>('conditions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<InstanceCondition>(guardedValue, (value) => InstanceCondition.fromMap((value as Map).cast<String, dynamic>())); });
    containerStatuses = registerOutput<List<InstanceContainerStatus>>('containerStatuses', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<InstanceContainerStatus>(guardedValue, (value) => InstanceContainerStatus.fromMap((value as Map).cast<String, dynamic>())); });
    containers = registerOutput<List<InstanceContainer>>('containers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<InstanceContainer>(guardedValue, (value) => InstanceContainer.fromMap((value as Map).cast<String, dynamic>())); });
    createTime = registerOutput<String>('createTime');
    creator = registerOutput<String>('creator');
    defaultUriDisabled = registerOutput<bool?>('defaultUriDisabled');
    deleteTime = registerOutput<String>('deleteTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    effectiveAnnotations = registerOutput<Map<String, String>>('effectiveAnnotations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    encryptionKey = registerOutput<String?>('encryptionKey');
    encryptionKeyRevocationAction = registerOutput<String?>('encryptionKeyRevocationAction');
    encryptionKeyShutdownDuration = registerOutput<String?>('encryptionKeyShutdownDuration');
    etag = registerOutput<String>('etag');
    expireTime = registerOutput<String>('expireTime');
    generation = registerOutput<String>('generation');
    ingress = registerOutput<String>('ingress');
    invokerIamDisabled = registerOutput<bool?>('invokerIamDisabled');
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    lastModifier = registerOutput<String>('lastModifier');
    launchStage = registerOutput<String>('launchStage');
    location = registerOutput<String>('location');
    logUri = registerOutput<String>('logUri');
    this.name = registerOutput<String>('name');
    observedGeneration = registerOutput<String>('observedGeneration');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    reconciling = registerOutput<bool>('reconciling');
    restartPolicy = registerOutput<String>('restartPolicy');
    sandboxes = registerOutput<InstanceSandboxes?>('sandboxes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceSandboxes.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    satisfiesPzs = registerOutput<bool>('satisfiesPzs');
    serviceAccount = registerOutput<String>('serviceAccount');
    terminalConditions = registerOutput<List<InstanceTerminalCondition>>('terminalConditions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<InstanceTerminalCondition>(guardedValue, (value) => InstanceTerminalCondition.fromMap((value as Map).cast<String, dynamic>())); });
    uid = registerOutput<String>('uid');
    updateTime = registerOutput<String>('updateTime');
    urls = registerOutput<List<String>>('urls', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    volumes = registerOutput<List<InstanceVolume>?>('volumes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<InstanceVolume>(guardedValue, (value) => InstanceVolume.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Creates a typed reference to an existing [Instance] resource.
  Instance.reference(String urn)
    : super(
        'gcp:cloudrunv2/instance:Instance',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        isResourceReference: true,
      ) {
    annotations = registerOutput<Map<String, String>?>('annotations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    client = registerOutput<String>('client');
    clientVersion = registerOutput<String>('clientVersion');
    conditions = registerOutput<List<InstanceCondition>>('conditions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<InstanceCondition>(guardedValue, (value) => InstanceCondition.fromMap((value as Map).cast<String, dynamic>())); });
    containerStatuses = registerOutput<List<InstanceContainerStatus>>('containerStatuses', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<InstanceContainerStatus>(guardedValue, (value) => InstanceContainerStatus.fromMap((value as Map).cast<String, dynamic>())); });
    containers = registerOutput<List<InstanceContainer>>('containers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<InstanceContainer>(guardedValue, (value) => InstanceContainer.fromMap((value as Map).cast<String, dynamic>())); });
    createTime = registerOutput<String>('createTime');
    creator = registerOutput<String>('creator');
    defaultUriDisabled = registerOutput<bool?>('defaultUriDisabled');
    deleteTime = registerOutput<String>('deleteTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    effectiveAnnotations = registerOutput<Map<String, String>>('effectiveAnnotations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    encryptionKey = registerOutput<String?>('encryptionKey');
    encryptionKeyRevocationAction = registerOutput<String?>('encryptionKeyRevocationAction');
    encryptionKeyShutdownDuration = registerOutput<String?>('encryptionKeyShutdownDuration');
    etag = registerOutput<String>('etag');
    expireTime = registerOutput<String>('expireTime');
    generation = registerOutput<String>('generation');
    ingress = registerOutput<String>('ingress');
    invokerIamDisabled = registerOutput<bool?>('invokerIamDisabled');
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    lastModifier = registerOutput<String>('lastModifier');
    launchStage = registerOutput<String>('launchStage');
    location = registerOutput<String>('location');
    logUri = registerOutput<String>('logUri');
    this.name = registerOutput<String>('name');
    observedGeneration = registerOutput<String>('observedGeneration');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    reconciling = registerOutput<bool>('reconciling');
    restartPolicy = registerOutput<String>('restartPolicy');
    sandboxes = registerOutput<InstanceSandboxes?>('sandboxes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceSandboxes.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    satisfiesPzs = registerOutput<bool>('satisfiesPzs');
    serviceAccount = registerOutput<String>('serviceAccount');
    terminalConditions = registerOutput<List<InstanceTerminalCondition>>('terminalConditions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<InstanceTerminalCondition>(guardedValue, (value) => InstanceTerminalCondition.fromMap((value as Map).cast<String, dynamic>())); });
    uid = registerOutput<String>('uid');
    updateTime = registerOutput<String>('updateTime');
    urls = registerOutput<List<String>>('urls', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    volumes = registerOutput<List<InstanceVolume>?>('volumes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<InstanceVolume>(guardedValue, (value) => InstanceVolume.fromMap((value as Map).cast<String, dynamic>())); });
  }
}
