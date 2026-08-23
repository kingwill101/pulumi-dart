import 'package:pulumi/pulumi.dart' as pulumi;
import 'project_sink_args.dart';
import 'project_sink_bigquery_options.dart';
import 'project_sink_state.dart';

/// Manages a project-level logging sink. For more information see:
///
/// * [API documentation](https://cloud.google.com/logging/docs/reference/v2/rest/v2/projects.sinks)
/// * How-to Guides
/// * [Exporting Logs](https://cloud.google.com/logging/docs/export)
///
/// &gt; You can specify exclusions for log sinks created by terraform by using the exclusions field of `gcp.logging.FolderSink`
///
/// &gt; **Note:** You must have [granted the "Logs Configuration Writer"](https://cloud.google.com/logging/docs/access-control) IAM role (`roles/logging.configWriter`) to the credentials used with this provider.
///
/// &gt; **Note** You must [enable the Cloud Resource Manager API](https://console.cloud.google.com/apis/library/cloudresourcemanager.googleapis.com)
///
/// &gt; **Note:** The `_Default` and `_Required` logging sinks are automatically created for a given project and cannot be deleted. Creating a resource of this type will acquire and update the resource that already exists at the desired location. These sinks cannot be removed so deleting this resource will remove the sink config from your terraform state but will leave the logging sink unchanged. The sinks that are currently automatically created are "_Default" and "_Required".
///
///
/// ## Example Usage
///
/// ### Basic Sink
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const my_sink = new gcp.logging.ProjectSink("my-sink", {
///     name: "my-pubsub-instance-sink",
///     destination: "pubsub.googleapis.com/projects/my-project/topics/instance-activity",
///     filter: "resource.type = gce_instance AND severity >= WARNING",
///     uniqueWriterIdentity: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_sink = gcp.logging.ProjectSink("my-sink",
///     name="my-pubsub-instance-sink",
///     destination="pubsub.googleapis.com/projects/my-project/topics/instance-activity",
///     filter="resource.type = gce_instance AND severity >= WARNING",
///     unique_writer_identity=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var my_sink = new Gcp.Logging.ProjectSink("my-sink", new()
///     {
///         Name = "my-pubsub-instance-sink",
///         Destination = "pubsub.googleapis.com/projects/my-project/topics/instance-activity",
///         Filter = "resource.type = gce_instance AND severity >= WARNING",
///         UniqueWriterIdentity = true,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/logging"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := logging.NewProjectSink(ctx, "my-sink", &logging.ProjectSinkArgs{
/// 			Name:                 pulumi.String("my-pubsub-instance-sink"),
/// 			Destination:          pulumi.String("pubsub.googleapis.com/projects/my-project/topics/instance-activity"),
/// 			Filter:               pulumi.String("resource.type = gce_instance AND severity >= WARNING"),
/// 			UniqueWriterIdentity: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_logging_projectsink" "my-sink" {
///   name                   = "my-pubsub-instance-sink"
///   destination            = "pubsub.googleapis.com/projects/my-project/topics/instance-activity"
///   filter                 = "resource.type = gce_instance AND severity >= WARNING"
///   unique_writer_identity = true
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.logging.ProjectSink;
/// import com.pulumi.gcp.logging.ProjectSinkArgs;
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
///         var my_sink = new ProjectSink("my-sink", ProjectSinkArgs.builder()
///             .name("my-pubsub-instance-sink")
///             .destination("pubsub.googleapis.com/projects/my-project/topics/instance-activity")
///             .filter("resource.type = gce_instance AND severity >= WARNING")
///             .uniqueWriterIdentity(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   my-sink:
///     type: gcp:logging:ProjectSink
///     properties:
///       name: my-pubsub-instance-sink
///       destination: pubsub.googleapis.com/projects/my-project/topics/instance-activity
///       filter: resource.type = gce_instance AND severity >= WARNING
///       uniqueWriterIdentity: true
/// ```
///
///
/// ### Cloud Storage Bucket Destination
///
/// A more complete example follows: this creates a compute instance, as well as a log sink that logs all activity to a
/// cloud storage bucket. Because we are using `uniqueWriterIdentity`, we must grant it access to the bucket.
///
/// Note that this grant requires the "Project IAM Admin" IAM role (`roles/resourcemanager.projectIamAdmin`) granted to the
/// credentials used with Terraform.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// // Our logged compute instance
/// const my_logged_instance = new gcp.compute.Instance("my-logged-instance", {
///     networkInterfaces: [{
///         accessConfigs: [{}],
///         network: "default",
///     }],
///     name: "my-instance",
///     machineType: "e2-medium",
///     zone: "us-central1-a",
///     bootDisk: {
///         initializeParams: {
///             image: "debian-cloud/debian-11",
///         },
///     },
/// });
/// // A gcs bucket to store logs in
/// const gcs_bucket = new gcp.storage.Bucket("gcs-bucket", {
///     name: "my-unique-logging-bucket",
///     location: "US",
/// });
/// // Our sink; this logs all activity related to our "my-logged-instance" instance
/// const instance_sink = new gcp.logging.ProjectSink("instance-sink", {
///     name: "my-instance-sink",
///     description: "some explanation on what this is",
///     destination: pulumi.interpolate`storage.googleapis.com/${gcs_bucket.name}`,
///     filter: pulumi.interpolate`resource.type = gce_instance AND resource.labels.instance_id = "${my_logged_instance.instanceId}"`,
///     uniqueWriterIdentity: true,
/// });
/// // Because our sink uses a unique_writer, we must grant that writer access to the bucket.
/// const gcs_bucket_writer = new gcp.projects.IAMBinding("gcs-bucket-writer", {
///     project: "your-project-id",
///     role: "roles/storage.objectCreator",
///     members: [instance_sink.writerIdentity],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// # Our logged compute instance
/// my_logged_instance = gcp.compute.Instance("my-logged-instance",
///     network_interfaces=[{
///         "access_configs": [{}],
///         "network": "default",
///     }],
///     name="my-instance",
///     machine_type="e2-medium",
///     zone="us-central1-a",
///     boot_disk={
///         "initialize_params": {
///             "image": "debian-cloud/debian-11",
///         },
///     })
/// # A gcs bucket to store logs in
/// gcs_bucket = gcp.storage.Bucket("gcs-bucket",
///     name="my-unique-logging-bucket",
///     location="US")
/// # Our sink; this logs all activity related to our "my-logged-instance" instance
/// instance_sink = gcp.logging.ProjectSink("instance-sink",
///     name="my-instance-sink",
///     description="some explanation on what this is",
///     destination=gcs_bucket.name.apply(lambda name: f"storage.googleapis.com/{name}"),
///     filter=my_logged_instance.instance_id.apply(lambda instance_id: f"resource.type = gce_instance AND resource.labels.instance_id = \"{instance_id}\""),
///     unique_writer_identity=True)
/// # Because our sink uses a unique_writer, we must grant that writer access to the bucket.
/// gcs_bucket_writer = gcp.projects.IAMBinding("gcs-bucket-writer",
///     project="your-project-id",
///     role="roles/storage.objectCreator",
///     members=[instance_sink.writer_identity])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     // Our logged compute instance
///     var my_logged_instance = new Gcp.Compute.Instance("my-logged-instance", new()
///     {
///         NetworkInterfaces = new[]
///         {
///             new Gcp.Compute.Inputs.InstanceNetworkInterfaceArgs
///             {
///                 AccessConfigs = new[]
///                 {
///                     null,
///                 },
///                 Network = "default",
///             },
///         },
///         Name = "my-instance",
///         MachineType = "e2-medium",
///         Zone = "us-central1-a",
///         BootDisk = new Gcp.Compute.Inputs.InstanceBootDiskArgs
///         {
///             InitializeParams = new Gcp.Compute.Inputs.InstanceBootDiskInitializeParamsArgs
///             {
///                 Image = "debian-cloud/debian-11",
///             },
///         },
///     });
///
///     // A gcs bucket to store logs in
///     var gcs_bucket = new Gcp.Storage.Bucket("gcs-bucket", new()
///     {
///         Name = "my-unique-logging-bucket",
///         Location = "US",
///     });
///
///     // Our sink; this logs all activity related to our "my-logged-instance" instance
///     var instance_sink = new Gcp.Logging.ProjectSink("instance-sink", new()
///     {
///         Name = "my-instance-sink",
///         Description = "some explanation on what this is",
///         Destination = gcs_bucket.Name.Apply(name => $"storage.googleapis.com/{name}"),
///         Filter = my_logged_instance.InstanceId.Apply(instanceId => $"resource.type = gce_instance AND resource.labels.instance_id = \"{instanceId}\""),
///         UniqueWriterIdentity = true,
///     });
///
///     // Because our sink uses a unique_writer, we must grant that writer access to the bucket.
///     var gcs_bucket_writer = new Gcp.Projects.IAMBinding("gcs-bucket-writer", new()
///     {
///         Project = "your-project-id",
///         Role = "roles/storage.objectCreator",
///         Members = new[]
///         {
///             instance_sink.WriterIdentity,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/logging"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/projects"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		// Our logged compute instance
/// 		my_logged_instance, err := compute.NewInstance(ctx, "my-logged-instance", &compute.InstanceArgs{
/// 			NetworkInterfaces: compute.InstanceNetworkInterfaceArray{
/// 				&compute.InstanceNetworkInterfaceArgs{
/// 					AccessConfigs: compute.InstanceNetworkInterfaceAccessConfigArray{
/// 						&compute.InstanceNetworkInterfaceAccessConfigArgs{},
/// 					},
/// 					Network: pulumi.String("default"),
/// 				},
/// 			},
/// 			Name:        pulumi.String("my-instance"),
/// 			MachineType: pulumi.String("e2-medium"),
/// 			Zone:        pulumi.String("us-central1-a"),
/// 			BootDisk: &compute.InstanceBootDiskArgs{
/// 				InitializeParams: &compute.InstanceBootDiskInitializeParamsArgs{
/// 					Image: pulumi.String("debian-cloud/debian-11"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// A gcs bucket to store logs in
/// 		gcs_bucket, err := storage.NewBucket(ctx, "gcs-bucket", &storage.BucketArgs{
/// 			Name:     pulumi.String("my-unique-logging-bucket"),
/// 			Location: pulumi.String("US"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Our sink; this logs all activity related to our "my-logged-instance" instance
/// 		instance_sink, err := logging.NewProjectSink(ctx, "instance-sink", &logging.ProjectSinkArgs{
/// 			Name:        pulumi.String("my-instance-sink"),
/// 			Description: pulumi.String("some explanation on what this is"),
/// 			Destination: gcs_bucket.Name.ApplyT(func(name string) (string, error) {
/// 				return fmt.Sprintf("storage.googleapis.com/%v", name), nil
/// 			}).(pulumi.StringOutput),
/// 			Filter: my_logged_instance.InstanceId.ApplyT(func(instanceId string) (string, error) {
/// 				return fmt.Sprintf("resource.type = gce_instance AND resource.labels.instance_id = \"%v\"", instanceId), nil
/// 			}).(pulumi.StringOutput),
/// 			UniqueWriterIdentity: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Because our sink uses a unique_writer, we must grant that writer access to the bucket.
/// 		_, err = projects.NewIAMBinding(ctx, "gcs-bucket-writer", &projects.IAMBindingArgs{
/// 			Project: pulumi.String("your-project-id"),
/// 			Role:    pulumi.String("roles/storage.objectCreator"),
/// 			Members: pulumi.StringArray{
/// 				instance_sink.WriterIdentity,
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
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// # Our logged compute instance
/// resource "gcp_compute_instance" "my-logged-instance" {
///   network_interfaces {
///     access_configs {
///     }
///     network = "default"
///   }
///   name         = "my-instance"
///   machine_type = "e2-medium"
///   zone         = "us-central1-a"
///   boot_disk = {
///     initialize_params = {
///       image = "debian-cloud/debian-11"
///     }
///   }
/// }
/// # A gcs bucket to store logs in
/// resource "gcp_storage_bucket" "gcs-bucket" {
///   name     = "my-unique-logging-bucket"
///   location = "US"
/// }
/// # Our sink; this logs all activity related to our "my-logged-instance" instance
/// resource "gcp_logging_projectsink" "instance-sink" {
///   name                   = "my-instance-sink"
///   description            = "some explanation on what this is"
///   destination            ="storage.googleapis.com/${gcp_storage_bucket.gcs-bucket.name}"
///   filter                 ="resource.type = gce_instance AND resource.labels.instance_id = "${gcp_compute_instance.my-logged-instance.instance_id}""
///   unique_writer_identity = true
/// }
/// # Because our sink uses a unique_writer, we must grant that writer access to the bucket.
/// resource "gcp_projects_iambinding" "gcs-bucket-writer" {
///   project = "your-project-id"
///   role    = "roles/storage.objectCreator"
///   members = [gcp_logging_projectsink.instance-sink.writer_identity]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.Instance;
/// import com.pulumi.gcp.compute.InstanceArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceNetworkInterfaceArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceNetworkInterfaceAccessConfigArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceBootDiskArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceBootDiskInitializeParamsArgs;
/// import com.pulumi.gcp.storage.Bucket;
/// import com.pulumi.gcp.storage.BucketArgs;
/// import com.pulumi.gcp.logging.ProjectSink;
/// import com.pulumi.gcp.logging.ProjectSinkArgs;
/// import com.pulumi.gcp.projects.IAMBinding;
/// import com.pulumi.gcp.projects.IAMBindingArgs;
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
///         // Our logged compute instance
///         var my_logged_instance = new Instance("my-logged-instance", InstanceArgs.builder()
///             .networkInterfaces(InstanceNetworkInterfaceArgs.builder()
///                 .accessConfigs(InstanceNetworkInterfaceAccessConfigArgs.builder()
///                     .build())
///                 .network("default")
///                 .build())
///             .name("my-instance")
///             .machineType("e2-medium")
///             .zone("us-central1-a")
///             .bootDisk(InstanceBootDiskArgs.builder()
///                 .initializeParams(InstanceBootDiskInitializeParamsArgs.builder()
///                     .image("debian-cloud/debian-11")
///                     .build())
///                 .build())
///             .build());
///
///         // A gcs bucket to store logs in
///         var gcs_bucket = new Bucket("gcs-bucket", BucketArgs.builder()
///             .name("my-unique-logging-bucket")
///             .location("US")
///             .build());
///
///         // Our sink; this logs all activity related to our "my-logged-instance" instance
///         var instance_sink = new ProjectSink("instance-sink", ProjectSinkArgs.builder()
///             .name("my-instance-sink")
///             .description("some explanation on what this is")
///             .destination(gcs_bucket.name().applyValue(_name -> String.format("storage.googleapis.com/%s", _name)))
///             .filter(my_logged_instance.instanceId().applyValue(_instanceId -> String.format("resource.type = gce_instance AND resource.labels.instance_id = \"%s\"", _instanceId)))
///             .uniqueWriterIdentity(true)
///             .build());
///
///         // Because our sink uses a unique_writer, we must grant that writer access to the bucket.
///         var gcs_bucket_writer = new IAMBinding("gcs-bucket-writer", IAMBindingArgs.builder()
///             .project("your-project-id")
///             .role("roles/storage.objectCreator")
///             .members(instance_sink.writerIdentity())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   # Our logged compute instance
///   my-logged-instance:
///     type: gcp:compute:Instance
///     properties:
///       networkInterfaces:
///         - accessConfigs:
///             - {}
///           network: default
///       name: my-instance
///       machineType: e2-medium
///       zone: us-central1-a
///       bootDisk:
///         initializeParams:
///           image: debian-cloud/debian-11
///   # A gcs bucket to store logs in
///   gcs-bucket:
///     type: gcp:storage:Bucket
///     properties:
///       name: my-unique-logging-bucket
///       location: US
///   # Our sink; this logs all activity related to our "my-logged-instance" instance
///   instance-sink:
///     type: gcp:logging:ProjectSink
///     properties:
///       name: my-instance-sink
///       description: some explanation on what this is
///       destination: storage.googleapis.com/${["gcs-bucket"].name}
///       filter: resource.type = gce_instance AND resource.labels.instance_id = "${["my-logged-instance"].instanceId}"
///       uniqueWriterIdentity: true
///   # Because our sink uses a unique_writer, we must grant that writer access to the bucket.
///   gcs-bucket-writer:
///     type: gcp:projects:IAMBinding
///     properties:
///       project: your-project-id
///       role: roles/storage.objectCreator
///       members:
///         - ${["instance-sink"].writerIdentity}
/// ```
///
///
/// ### User-Managed Service Account
///
/// The following example creates a sink that are configured with user-managed service accounts, by specifying
/// the `customWriterIdentity` field.
///
/// Note that you can only create a sink that uses a user-managed service account when the sink destination
/// is a log bucket.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const custom_sa = new gcp.serviceaccount.Account("custom-sa", {
///     project: "other-project-id",
///     accountId: "gce-log-bucket-sink",
///     displayName: "gce-log-bucket-sink",
/// });
/// // Create a sink that uses user-managed service account
/// const my_sink = new gcp.logging.ProjectSink("my-sink", {
///     name: "other-project-log-bucket-sink",
///     destination: "logging.googleapis.com/projects/other-project-id/locations/global/buckets/gce-logs",
///     filter: "resource.type = gce_instance AND severity >= WARNING",
///     uniqueWriterIdentity: true,
///     customWriterIdentity: custom_sa.email,
/// });
/// // grant writer access to the user-managed service account
/// const custom_sa_logbucket_binding = new gcp.projects.IAMMember("custom-sa-logbucket-binding", {
///     project: "destination-project-id",
///     role: "roles/logging.bucketWriter",
///     member: pulumi.interpolate`serviceAccount:${custom_sa.email}`,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// custom_sa = gcp.serviceaccount.Account("custom-sa",
///     project="other-project-id",
///     account_id="gce-log-bucket-sink",
///     display_name="gce-log-bucket-sink")
/// # Create a sink that uses user-managed service account
/// my_sink = gcp.logging.ProjectSink("my-sink",
///     name="other-project-log-bucket-sink",
///     destination="logging.googleapis.com/projects/other-project-id/locations/global/buckets/gce-logs",
///     filter="resource.type = gce_instance AND severity >= WARNING",
///     unique_writer_identity=True,
///     custom_writer_identity=custom_sa.email)
/// # grant writer access to the user-managed service account
/// custom_sa_logbucket_binding = gcp.projects.IAMMember("custom-sa-logbucket-binding",
///     project="destination-project-id",
///     role="roles/logging.bucketWriter",
///     member=custom_sa.email.apply(lambda email: f"serviceAccount:{email}"))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var custom_sa = new Gcp.ServiceAccount.Account("custom-sa", new()
///     {
///         Project = "other-project-id",
///         AccountId = "gce-log-bucket-sink",
///         DisplayName = "gce-log-bucket-sink",
///     });
///
///     // Create a sink that uses user-managed service account
///     var my_sink = new Gcp.Logging.ProjectSink("my-sink", new()
///     {
///         Name = "other-project-log-bucket-sink",
///         Destination = "logging.googleapis.com/projects/other-project-id/locations/global/buckets/gce-logs",
///         Filter = "resource.type = gce_instance AND severity >= WARNING",
///         UniqueWriterIdentity = true,
///         CustomWriterIdentity = custom_sa.Email,
///     });
///
///     // grant writer access to the user-managed service account
///     var custom_sa_logbucket_binding = new Gcp.Projects.IAMMember("custom-sa-logbucket-binding", new()
///     {
///         Project = "destination-project-id",
///         Role = "roles/logging.bucketWriter",
///         Member = custom_sa.Email.Apply(email => $"serviceAccount:{email}"),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/logging"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/projects"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/serviceaccount"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		custom_sa, err := serviceaccount.NewAccount(ctx, "custom-sa", &serviceaccount.AccountArgs{
/// 			Project:     pulumi.String("other-project-id"),
/// 			AccountId:   pulumi.String("gce-log-bucket-sink"),
/// 			DisplayName: pulumi.String("gce-log-bucket-sink"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Create a sink that uses user-managed service account
/// 		_, err = logging.NewProjectSink(ctx, "my-sink", &logging.ProjectSinkArgs{
/// 			Name:                 pulumi.String("other-project-log-bucket-sink"),
/// 			Destination:          pulumi.String("logging.googleapis.com/projects/other-project-id/locations/global/buckets/gce-logs"),
/// 			Filter:               pulumi.String("resource.type = gce_instance AND severity >= WARNING"),
/// 			UniqueWriterIdentity: pulumi.Bool(true),
/// 			CustomWriterIdentity: custom_sa.Email,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// grant writer access to the user-managed service account
/// 		_, err = projects.NewIAMMember(ctx, "custom-sa-logbucket-binding", &projects.IAMMemberArgs{
/// 			Project: pulumi.String("destination-project-id"),
/// 			Role:    pulumi.String("roles/logging.bucketWriter"),
/// 			Member: custom_sa.Email.ApplyT(func(email string) (string, error) {
/// 				return fmt.Sprintf("serviceAccount:%v", email), nil
/// 			}).(pulumi.StringOutput),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_serviceaccount_account" "custom-sa" {
///   project      = "other-project-id"
///   account_id   = "gce-log-bucket-sink"
///   display_name = "gce-log-bucket-sink"
/// }
/// # Create a sink that uses user-managed service account
/// resource "gcp_logging_projectsink" "my-sink" {
///   name                   = "other-project-log-bucket-sink"
///   destination            = "logging.googleapis.com/projects/other-project-id/locations/global/buckets/gce-logs"
///   filter                 = "resource.type = gce_instance AND severity >= WARNING"
///   unique_writer_identity = true
///   # Use a user-managed service account
///   custom_writer_identity = gcp_serviceaccount_account.custom-sa.email
/// }
/// # grant writer access to the user-managed service account
/// resource "gcp_projects_iammember" "custom-sa-logbucket-binding" {
///   project = "destination-project-id"
///   role    = "roles/logging.bucketWriter"
///   member  ="serviceAccount:${gcp_serviceaccount_account.custom-sa.email}"
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
/// import com.pulumi.gcp.logging.ProjectSink;
/// import com.pulumi.gcp.logging.ProjectSinkArgs;
/// import com.pulumi.gcp.projects.IAMMember;
/// import com.pulumi.gcp.projects.IAMMemberArgs;
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
///         var custom_sa = new Account("custom-sa", AccountArgs.builder()
///             .project("other-project-id")
///             .accountId("gce-log-bucket-sink")
///             .displayName("gce-log-bucket-sink")
///             .build());
///
///         // Create a sink that uses user-managed service account
///         var my_sink = new ProjectSink("my-sink", ProjectSinkArgs.builder()
///             .name("other-project-log-bucket-sink")
///             .destination("logging.googleapis.com/projects/other-project-id/locations/global/buckets/gce-logs")
///             .filter("resource.type = gce_instance AND severity >= WARNING")
///             .uniqueWriterIdentity(true)
///             .customWriterIdentity(custom_sa.email())
///             .build());
///
///         // grant writer access to the user-managed service account
///         var custom_sa_logbucket_binding = new IAMMember("custom-sa-logbucket-binding", IAMMemberArgs.builder()
///             .project("destination-project-id")
///             .role("roles/logging.bucketWriter")
///             .member(custom_sa.email().applyValue(_email -> String.format("serviceAccount:%s", _email)))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   custom-sa:
///     type: gcp:serviceaccount:Account
///     properties:
///       project: other-project-id
///       accountId: gce-log-bucket-sink
///       displayName: gce-log-bucket-sink
///   # Create a sink that uses user-managed service account
///   my-sink:
///     type: gcp:logging:ProjectSink
///     properties:
///       name: other-project-log-bucket-sink
///       destination: logging.googleapis.com/projects/other-project-id/locations/global/buckets/gce-logs
///       filter: resource.type = gce_instance AND severity >= WARNING
///       uniqueWriterIdentity: true # Use a user-managed service account
///       customWriterIdentity: ${["custom-sa"].email}
///   # grant writer access to the user-managed service account
///   custom-sa-logbucket-binding:
///     type: gcp:projects:IAMMember
///     properties:
///       project: destination-project-id
///       role: roles/logging.bucketWriter
///       member: serviceAccount:${["custom-sa"].email}
/// ```
///
///
/// The above example will create a log sink that route logs to destination GCP project using
/// an user-managed service account.
///
/// ### Sink Exclusions
///
/// The following example uses `exclusions` to filter logs that will not be exported. In this example logs are exported to a [log bucket](https://cloud.google.com/logging/docs/buckets) and there are 2 exclusions configured
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const log_bucket = new gcp.logging.ProjectSink("log-bucket", {
///     name: "my-logging-sink",
///     destination: "logging.googleapis.com/projects/my-project/locations/global/buckets/_Default",
///     exclusions: [
///         {
///             name: "nsexcllusion1",
///             description: "Exclude logs from namespace-1 in k8s",
///             filter: "resource.type = k8s_container resource.labels.namespace_name=\"namespace-1\" ",
///         },
///         {
///             name: "nsexcllusion2",
///             description: "Exclude logs from namespace-2 in k8s",
///             filter: "resource.type = k8s_container resource.labels.namespace_name=\"namespace-2\" ",
///         },
///     ],
///     uniqueWriterIdentity: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// log_bucket = gcp.logging.ProjectSink("log-bucket",
///     name="my-logging-sink",
///     destination="logging.googleapis.com/projects/my-project/locations/global/buckets/_Default",
///     exclusions=[
///         {
///             "name": "nsexcllusion1",
///             "description": "Exclude logs from namespace-1 in k8s",
///             "filter": "resource.type = k8s_container resource.labels.namespace_name=\"namespace-1\" ",
///         },
///         {
///             "name": "nsexcllusion2",
///             "description": "Exclude logs from namespace-2 in k8s",
///             "filter": "resource.type = k8s_container resource.labels.namespace_name=\"namespace-2\" ",
///         },
///     ],
///     unique_writer_identity=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var log_bucket = new Gcp.Logging.ProjectSink("log-bucket", new()
///     {
///         Name = "my-logging-sink",
///         Destination = "logging.googleapis.com/projects/my-project/locations/global/buckets/_Default",
///         Exclusions = new[]
///         {
///             new Gcp.Logging.Inputs.ProjectSinkExclusionArgs
///             {
///                 Name = "nsexcllusion1",
///                 Description = "Exclude logs from namespace-1 in k8s",
///                 Filter = "resource.type = k8s_container resource.labels.namespace_name=\"namespace-1\" ",
///             },
///             new Gcp.Logging.Inputs.ProjectSinkExclusionArgs
///             {
///                 Name = "nsexcllusion2",
///                 Description = "Exclude logs from namespace-2 in k8s",
///                 Filter = "resource.type = k8s_container resource.labels.namespace_name=\"namespace-2\" ",
///             },
///         },
///         UniqueWriterIdentity = true,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/logging"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := logging.NewProjectSink(ctx, "log-bucket", &logging.ProjectSinkArgs{
/// 			Name:        pulumi.String("my-logging-sink"),
/// 			Destination: pulumi.String("logging.googleapis.com/projects/my-project/locations/global/buckets/_Default"),
/// 			Exclusions: logging.ProjectSinkExclusionArray{
/// 				&logging.ProjectSinkExclusionArgs{
/// 					Name:        pulumi.String("nsexcllusion1"),
/// 					Description: pulumi.String("Exclude logs from namespace-1 in k8s"),
/// 					Filter:      pulumi.String("resource.type = k8s_container resource.labels.namespace_name=\"namespace-1\" "),
/// 				},
/// 				&logging.ProjectSinkExclusionArgs{
/// 					Name:        pulumi.String("nsexcllusion2"),
/// 					Description: pulumi.String("Exclude logs from namespace-2 in k8s"),
/// 					Filter:      pulumi.String("resource.type = k8s_container resource.labels.namespace_name=\"namespace-2\" "),
/// 				},
/// 			},
/// 			UniqueWriterIdentity: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_logging_projectsink" "log-bucket" {
///   name        = "my-logging-sink"
///   destination = "logging.googleapis.com/projects/my-project/locations/global/buckets/_Default"
///   exclusions {
///     name        = "nsexcllusion1"
///     description = "Exclude logs from namespace-1 in k8s"
///     filter      = "resource.type = k8s_container resource.labels.namespace_name=\"namespace-1\" "
///   }
///   exclusions {
///     name        = "nsexcllusion2"
///     description = "Exclude logs from namespace-2 in k8s"
///     filter      = "resource.type = k8s_container resource.labels.namespace_name=\"namespace-2\" "
///   }
///   unique_writer_identity = true
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.logging.ProjectSink;
/// import com.pulumi.gcp.logging.ProjectSinkArgs;
/// import com.pulumi.gcp.logging.inputs.ProjectSinkExclusionArgs;
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
///         var log_bucket = new ProjectSink("log-bucket", ProjectSinkArgs.builder()
///             .name("my-logging-sink")
///             .destination("logging.googleapis.com/projects/my-project/locations/global/buckets/_Default")
///             .exclusions(
///                 ProjectSinkExclusionArgs.builder()
///                     .name("nsexcllusion1")
///                     .description("Exclude logs from namespace-1 in k8s")
///                     .filter("resource.type = k8s_container resource.labels.namespace_name=\"namespace-1\" ")
///                     .build(),
///                 ProjectSinkExclusionArgs.builder()
///                     .name("nsexcllusion2")
///                     .description("Exclude logs from namespace-2 in k8s")
///                     .filter("resource.type = k8s_container resource.labels.namespace_name=\"namespace-2\" ")
///                     .build())
///             .uniqueWriterIdentity(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   log-bucket:
///     type: gcp:logging:ProjectSink
///     properties:
///       name: my-logging-sink
///       destination: logging.googleapis.com/projects/my-project/locations/global/buckets/_Default
///       exclusions:
///         - name: nsexcllusion1
///           description: Exclude logs from namespace-1 in k8s
///           filter: 'resource.type = k8s_container resource.labels.namespace_name="namespace-1" '
///         - name: nsexcllusion2
///           description: Exclude logs from namespace-2 in k8s
///           filter: 'resource.type = k8s_container resource.labels.namespace_name="namespace-2" '
///       uniqueWriterIdentity: true
/// ```
///
///
/// ## Import
///
/// Project-level logging sinks can be imported using their URI, e.g.
///
/// * `projects/{{project_id}}/sinks/{{name}}`
///
///
/// When using the `pulumi import` command, project-level logging sinks can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:logging/projectSink:ProjectSink default projects/{{project_id}}/sinks/{{name}}
/// ```
class ProjectSink extends pulumi.CustomResource {
  /// Options that affect sinks exporting data to BigQuery. Structure documented below.
  late final pulumi.Output<ProjectSinkBigqueryOptions> bigqueryOptions;
  /// A user managed service account that will be used to write
  /// the log entries. The format must be `serviceAccount:some@email`. This field can only be specified if you are
  /// routing logs to a destination outside this sink's project. If not specified, a Logging service account
  /// will automatically be generated.
  late final pulumi.Output<String?> customWriterIdentity;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to "DELETE".
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// A description of this sink. The maximum length of the description is 8000 characters.
  late final pulumi.Output<String?> description;
  /// The destination of the sink (or, in other words, where logs are written to). Can be a Cloud Storage bucket, a PubSub topic, a BigQuery dataset, a Cloud Logging bucket, or a Google Cloud project. Examples:
  ///
  /// - `storage.googleapis.com/[GCS_BUCKET]`
  /// - `bigquery.googleapis.com/projects/[PROJECT_ID]/datasets/[DATASET]`
  /// - `pubsub.googleapis.com/projects/[PROJECT_ID]/topics/[TOPIC_ID]`
  /// - `logging.googleapis.com/projects/[PROJECT_ID]/locations/global/buckets/[BUCKET_ID]`
  /// - `logging.googleapis.com/projects/[PROJECT_ID]`
  ///
  /// The writer associated with the sink must have access to write to the above resource.
  late final pulumi.Output<String> destination;
  /// If set to True, then this sink is disabled and it does not export any log entries.
  late final pulumi.Output<bool?> disabled;
  /// Log entries that match any of the exclusion filters will not be exported. If a log entry is matched by both `filter` and one of `exclusions.filter`, it will not be exported.  Can be repeated multiple times for multiple exclusions. Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>?> exclusions;
  /// The filter to apply when exporting logs. Only log entries that match the filter are exported.
  /// See [Advanced Log Filters](https://cloud.google.com/logging/docs/view/advanced_filters) for information on how to
  /// write a filter.
  late final pulumi.Output<String?> filter;
  /// The name of the logging sink. Logging automatically creates two sinks: `_Required` and `_Default`.
  late final pulumi.Output<String> name;
  /// The ID of the project to create the sink in. If omitted, the project associated with the provider is
  /// used.
  late final pulumi.Output<String> project;
  /// Whether to use a service agent as the `writerIdentity` for this sink. If `false`,
  /// `writerIdentity` is `serviceAccount:cloud-logs@system.gserviceaccount.com` and the sink's destination must be in the
  /// same project as the sink. If `true` (the default), `writerIdentity` is a service agent shared by sinks with the same
  /// parent. You must set `uniqueWriterIdentity` to `true` to publish logs across projects or use `bigqueryOptions`.
  /// See the [`projects.sinks.create` API documentation](https://cloud.google.com/logging/docs/reference/v2/rest/v2/projects.sinks/create#query-parameters)
  /// for more information.
  late final pulumi.Output<bool?> uniqueWriterIdentity;
  /// The identity associated with this sink. This identity must be granted write access to the
  /// configured `destination`.
  late final pulumi.Output<String> writerIdentity;

  /// Creates a new [ProjectSink].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ProjectSink]. {@macro pulumi_logging_project_sink_project_sink_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ProjectSink(
    String name, {
    ProjectSinkArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:logging/projectSink:ProjectSink',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    bigqueryOptions = registerOutput<ProjectSinkBigqueryOptions>('bigqueryOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ProjectSinkBigqueryOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    customWriterIdentity = registerOutput<String?>('customWriterIdentity');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    destination = registerOutput<String>('destination');
    disabled = registerOutput<bool?>('disabled');
    exclusions = registerOutput<List<Map<String, dynamic>>?>('exclusions');
    filter = registerOutput<String?>('filter');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    uniqueWriterIdentity = registerOutput<bool?>('uniqueWriterIdentity');
    writerIdentity = registerOutput<String>('writerIdentity');
  }

  /// Gets an existing [ProjectSink] resource's state with the given [name] and [id].
  static ProjectSink get(
    String name,
    pulumi.Input<String> id, {
    ProjectSinkState? state,
  }) {
    return ProjectSink._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ProjectSink._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:logging/projectSink:ProjectSink',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    bigqueryOptions = registerOutput<ProjectSinkBigqueryOptions>('bigqueryOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ProjectSinkBigqueryOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    customWriterIdentity = registerOutput<String?>('customWriterIdentity');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    destination = registerOutput<String>('destination');
    disabled = registerOutput<bool?>('disabled');
    exclusions = registerOutput<List<Map<String, dynamic>>?>('exclusions');
    filter = registerOutput<String?>('filter');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    uniqueWriterIdentity = registerOutput<bool?>('uniqueWriterIdentity');
    writerIdentity = registerOutput<String>('writerIdentity');
  }
}
