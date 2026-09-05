import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_template_advanced_machine_features.dart';
import 'instance_template_args.dart';
import 'instance_template_confidential_instance_config.dart';
import 'instance_template_disk.dart';
import 'instance_template_guest_accelerator.dart';
import 'instance_template_network_interface.dart';
import 'instance_template_network_performance_config.dart';
import 'instance_template_reservation_affinity.dart';
import 'instance_template_scheduling.dart';
import 'instance_template_service_account.dart';
import 'instance_template_shielded_instance_config.dart';
import 'instance_template_state.dart';
import 'instance_template_workload_identity_config.dart';

/// &gt; **Note**: Global instance templates can be used in any region. To lower the impact of outages outside your region and gain data residency within your region, use google_compute_region_instance_template.
///
/// Manages a VM instance template resource within GCE. For more information see
/// [the official documentation](https://cloud.google.com/compute/docs/instance-templates)
/// and
/// [API](https://cloud.google.com/compute/docs/reference/latest/instanceTemplates).
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.serviceaccount.Account("default", {
///     accountId: "service-account-id",
///     displayName: "Service Account",
/// });
/// const myImage = gcp.compute.getImage({
///     family: "debian-11",
///     project: "debian-cloud",
/// });
/// const foobar = new gcp.compute.Disk("foobar", {
///     name: "existing-disk",
///     image: myImage.then(myImage => myImage.selfLink),
///     size: 10,
///     type: "pd-ssd",
///     zone: "us-central1-a",
/// });
/// const dailyBackup = new gcp.compute.ResourcePolicy("daily_backup", {
///     name: "every-day-4am",
///     region: "us-central1",
///     snapshotSchedulePolicy: {
///         schedule: {
///             dailySchedule: {
///                 daysInCycle: 1,
///                 startTime: "04:00",
///             },
///         },
///     },
/// });
/// const defaultInstanceTemplate = new gcp.compute.InstanceTemplate("default", {
///     name: "appserver-template",
///     description: "This template is used to create app server instances.",
///     tags: [
///         "foo",
///         "bar",
///     ],
///     labels: {
///         environment: "dev",
///     },
///     instanceDescription: "description assigned to instances",
///     machineType: "e2-medium",
///     canIpForward: false,
///     scheduling: {
///         automaticRestart: true,
///         onHostMaintenance: "MIGRATE",
///     },
///     disks: [
///         {
///             sourceImage: "debian-cloud/debian-11",
///             autoDelete: true,
///             boot: true,
///             resourcePolicies: dailyBackup.id,
///         },
///         {
///             source: foobar.name,
///             autoDelete: false,
///             boot: false,
///         },
///     ],
///     networkInterfaces: [{
///         network: "default",
///     }],
///     metadata: {
///         foo: "bar",
///     },
///     serviceAccount: {
///         email: _default.email,
///         scopes: ["cloud-platform"],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.serviceaccount.Account("default",
///     account_id="service-account-id",
///     display_name="Service Account")
/// my_image = gcp.compute.get_image(family="debian-11",
///     project="debian-cloud")
/// foobar = gcp.compute.Disk("foobar",
///     name="existing-disk",
///     image=my_image.self_link,
///     size=10,
///     type="pd-ssd",
///     zone="us-central1-a")
/// daily_backup = gcp.compute.ResourcePolicy("daily_backup",
///     name="every-day-4am",
///     region="us-central1",
///     snapshot_schedule_policy={
///         "schedule": {
///             "daily_schedule": {
///                 "days_in_cycle": 1,
///                 "start_time": "04:00",
///             },
///         },
///     })
/// default_instance_template = gcp.compute.InstanceTemplate("default",
///     name="appserver-template",
///     description="This template is used to create app server instances.",
///     tags=[
///         "foo",
///         "bar",
///     ],
///     labels={
///         "environment": "dev",
///     },
///     instance_description="description assigned to instances",
///     machine_type="e2-medium",
///     can_ip_forward=False,
///     scheduling={
///         "automatic_restart": True,
///         "on_host_maintenance": "MIGRATE",
///     },
///     disks=[
///         {
///             "source_image": "debian-cloud/debian-11",
///             "auto_delete": True,
///             "boot": True,
///             "resource_policies": daily_backup.id,
///         },
///         {
///             "source": foobar.name,
///             "auto_delete": False,
///             "boot": False,
///         },
///     ],
///     network_interfaces=[{
///         "network": "default",
///     }],
///     metadata={
///         "foo": "bar",
///     },
///     service_account={
///         "email": default.email,
///         "scopes": ["cloud-platform"],
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
///     var @default = new Gcp.ServiceAccount.Account("default", new()
///     {
///         AccountId = "service-account-id",
///         DisplayName = "Service Account",
///     });
///
///     var myImage = Gcp.Compute.GetImage.Invoke(new()
///     {
///         Family = "debian-11",
///         Project = "debian-cloud",
///     });
///
///     var foobar = new Gcp.Compute.Disk("foobar", new()
///     {
///         Name = "existing-disk",
///         Image = myImage.Apply(getImageResult => getImageResult.SelfLink),
///         Size = 10,
///         Type = "pd-ssd",
///         Zone = "us-central1-a",
///     });
///
///     var dailyBackup = new Gcp.Compute.ResourcePolicy("daily_backup", new()
///     {
///         Name = "every-day-4am",
///         Region = "us-central1",
///         SnapshotSchedulePolicy = new Gcp.Compute.Inputs.ResourcePolicySnapshotSchedulePolicyArgs
///         {
///             Schedule = new Gcp.Compute.Inputs.ResourcePolicySnapshotSchedulePolicyScheduleArgs
///             {
///                 DailySchedule = new Gcp.Compute.Inputs.ResourcePolicySnapshotSchedulePolicyScheduleDailyScheduleArgs
///                 {
///                     DaysInCycle = 1,
///                     StartTime = "04:00",
///                 },
///             },
///         },
///     });
///
///     var defaultInstanceTemplate = new Gcp.Compute.InstanceTemplate("default", new()
///     {
///         Name = "appserver-template",
///         Description = "This template is used to create app server instances.",
///         Tags = new[]
///         {
///             "foo",
///             "bar",
///         },
///         Labels =
///         {
///             { "environment", "dev" },
///         },
///         InstanceDescription = "description assigned to instances",
///         MachineType = "e2-medium",
///         CanIpForward = false,
///         Scheduling = new Gcp.Compute.Inputs.InstanceTemplateSchedulingArgs
///         {
///             AutomaticRestart = true,
///             OnHostMaintenance = "MIGRATE",
///         },
///         Disks = new[]
///         {
///             new Gcp.Compute.Inputs.InstanceTemplateDiskArgs
///             {
///                 SourceImage = "debian-cloud/debian-11",
///                 AutoDelete = true,
///                 Boot = true,
///                 ResourcePolicies = dailyBackup.Id,
///             },
///             new Gcp.Compute.Inputs.InstanceTemplateDiskArgs
///             {
///                 Source = foobar.Name,
///                 AutoDelete = false,
///                 Boot = false,
///             },
///         },
///         NetworkInterfaces = new[]
///         {
///             new Gcp.Compute.Inputs.InstanceTemplateNetworkInterfaceArgs
///             {
///                 Network = "default",
///             },
///         },
///         Metadata =
///         {
///             { "foo", "bar" },
///         },
///         ServiceAccount = new Gcp.Compute.Inputs.InstanceTemplateServiceAccountArgs
///         {
///             Email = @default.Email,
///             Scopes = new[]
///             {
///                 "cloud-platform",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/serviceaccount"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := serviceaccount.NewAccount(ctx, "default", &serviceaccount.AccountArgs{
/// 			AccountId:   pulumi.String("service-account-id"),
/// 			DisplayName: pulumi.String("Service Account"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		myImage, err := compute.LookupImage(ctx, &compute.LookupImageArgs{
/// 			Family:  pulumi.StringRef("debian-11"),
/// 			Project: pulumi.StringRef("debian-cloud"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		foobar, err := compute.NewDisk(ctx, "foobar", &compute.DiskArgs{
/// 			Name:  pulumi.String("existing-disk"),
/// 			Image: pulumi.String(myImage.SelfLink),
/// 			Size:  pulumi.Int(10),
/// 			Type:  pulumi.String("pd-ssd"),
/// 			Zone:  pulumi.String("us-central1-a"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		dailyBackup, err := compute.NewResourcePolicy(ctx, "daily_backup", &compute.ResourcePolicyArgs{
/// 			Name:   pulumi.String("every-day-4am"),
/// 			Region: pulumi.String("us-central1"),
/// 			SnapshotSchedulePolicy: &compute.ResourcePolicySnapshotSchedulePolicyArgs{
/// 				Schedule: &compute.ResourcePolicySnapshotSchedulePolicyScheduleArgs{
/// 					DailySchedule: &compute.ResourcePolicySnapshotSchedulePolicyScheduleDailyScheduleArgs{
/// 						DaysInCycle: pulumi.Int(1),
/// 						StartTime:   pulumi.String("04:00"),
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewInstanceTemplate(ctx, "default", &compute.InstanceTemplateArgs{
/// 			Name:        pulumi.String("appserver-template"),
/// 			Description: pulumi.String("This template is used to create app server instances."),
/// 			Tags: pulumi.StringArray{
/// 				pulumi.String("foo"),
/// 				pulumi.String("bar"),
/// 			},
/// 			Labels: pulumi.StringMap{
/// 				"environment": pulumi.String("dev"),
/// 			},
/// 			InstanceDescription: pulumi.String("description assigned to instances"),
/// 			MachineType:         pulumi.String("e2-medium"),
/// 			CanIpForward:        pulumi.Bool(false),
/// 			Scheduling: &compute.InstanceTemplateSchedulingArgs{
/// 				AutomaticRestart:  pulumi.Bool(true),
/// 				OnHostMaintenance: pulumi.String("MIGRATE"),
/// 			},
/// 			Disks: compute.InstanceTemplateDiskArray{
/// 				&compute.InstanceTemplateDiskArgs{
/// 					SourceImage:      pulumi.String("debian-cloud/debian-11"),
/// 					AutoDelete:       pulumi.Bool(true),
/// 					Boot:             pulumi.Bool(true),
/// 					ResourcePolicies: dailyBackup.ID().ToIDOutput().ToStringOutput(),
/// 				},
/// 				&compute.InstanceTemplateDiskArgs{
/// 					Source:     foobar.Name,
/// 					AutoDelete: pulumi.Bool(false),
/// 					Boot:       pulumi.Bool(false),
/// 				},
/// 			},
/// 			NetworkInterfaces: compute.InstanceTemplateNetworkInterfaceArray{
/// 				&compute.InstanceTemplateNetworkInterfaceArgs{
/// 					Network: pulumi.String("default"),
/// 				},
/// 			},
/// 			Metadata: pulumi.StringMap{
/// 				"foo": pulumi.String("bar"),
/// 			},
/// 			ServiceAccount: &compute.InstanceTemplateServiceAccountArgs{
/// 				Email: _default.Email,
/// 				Scopes: pulumi.StringArray{
/// 					pulumi.String("cloud-platform"),
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
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_compute_getimage" "myImage" {
///   family  = "debian-11"
///   project = "debian-cloud"
/// }
///
/// resource "gcp_serviceaccount_account" "default" {
///   account_id   = "service-account-id"
///   display_name = "Service Account"
/// }
/// resource "gcp_compute_instancetemplate" "default" {
///   name        = "appserver-template"
///   description = "This template is used to create app server instances."
///   tags        = ["foo", "bar"]
///   labels = {
///     "environment" = "dev"
///   }
///   instance_description = "description assigned to instances"
///   machine_type         = "e2-medium"
///   can_ip_forward       = false
///   scheduling = {
///     automatic_restart   = true
///     on_host_maintenance = "MIGRATE"
///   }
///   disks {
///     source_image      = "debian-cloud/debian-11"
///     auto_delete       = true
///     boot              = true
///     resource_policies = gcp_compute_resourcepolicy.daily_backup.id
///   }
///   disks {
///     source      = gcp_compute_disk.foobar.name
///     auto_delete = false
///     boot        = false
///   }
///   // backup the disk every day
///   // backup the disk every day
///   // Instance Templates reference disks by name, not self link
///   network_interfaces {
///     network = "default"
///   }
///   metadata = {
///     "foo" = "bar"
///   }
///   service_account = {
///     email  = gcp_serviceaccount_account.default.email
///     scopes = ["cloud-platform"]
///   }
/// }
/// resource "gcp_compute_disk" "foobar" {
///   name  = "existing-disk"
///   image = data.gcp_compute_getimage.myImage.self_link
///   size  = 10
///   type  = "pd-ssd"
///   zone  = "us-central1-a"
/// }
/// resource "gcp_compute_resourcepolicy" "daily_backup" {
///   name   = "every-day-4am"
///   region = "us-central1"
///   snapshot_schedule_policy = {
///     schedule = {
///       daily_schedule = {
///         days_in_cycle = 1
///         start_time    = "04:00"
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
/// import com.pulumi.gcp.serviceaccount.Account;
/// import com.pulumi.gcp.serviceaccount.AccountArgs;
/// import com.pulumi.gcp.compute.ComputeFunctions;
/// import com.pulumi.gcp.compute.inputs.GetImageArgs;
/// import com.pulumi.gcp.compute.Disk;
/// import com.pulumi.gcp.compute.DiskArgs;
/// import com.pulumi.gcp.compute.ResourcePolicy;
/// import com.pulumi.gcp.compute.ResourcePolicyArgs;
/// import com.pulumi.gcp.compute.inputs.ResourcePolicySnapshotSchedulePolicyArgs;
/// import com.pulumi.gcp.compute.inputs.ResourcePolicySnapshotSchedulePolicyScheduleArgs;
/// import com.pulumi.gcp.compute.inputs.ResourcePolicySnapshotSchedulePolicyScheduleDailyScheduleArgs;
/// import com.pulumi.gcp.compute.InstanceTemplate;
/// import com.pulumi.gcp.compute.InstanceTemplateArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceTemplateSchedulingArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceTemplateDiskArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceTemplateNetworkInterfaceArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceTemplateServiceAccountArgs;
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
///         var default_ = new Account("default", AccountArgs.builder()
///             .accountId("service-account-id")
///             .displayName("Service Account")
///             .build());
///
///         final var myImage = ComputeFunctions.getImage(GetImageArgs.builder()
///             .family("debian-11")
///             .project("debian-cloud")
///             .build());
///
///         var foobar = new Disk("foobar", DiskArgs.builder()
///             .name("existing-disk")
///             .image(myImage.selfLink())
///             .size(10)
///             .type("pd-ssd")
///             .zone("us-central1-a")
///             .build());
///
///         var dailyBackup = new ResourcePolicy("dailyBackup", ResourcePolicyArgs.builder()
///             .name("every-day-4am")
///             .region("us-central1")
///             .snapshotSchedulePolicy(ResourcePolicySnapshotSchedulePolicyArgs.builder()
///                 .schedule(ResourcePolicySnapshotSchedulePolicyScheduleArgs.builder()
///                     .dailySchedule(ResourcePolicySnapshotSchedulePolicyScheduleDailyScheduleArgs.builder()
///                         .daysInCycle(1)
///                         .startTime("04:00")
///                         .build())
///                     .build())
///                 .build())
///             .build());
///
///         var defaultInstanceTemplate = new InstanceTemplate("defaultInstanceTemplate", InstanceTemplateArgs.builder()
///             .name("appserver-template")
///             .description("This template is used to create app server instances.")
///             .tags(
///                 "foo",
///                 "bar")
///             .labels(Map.of("environment", "dev"))
///             .instanceDescription("description assigned to instances")
///             .machineType("e2-medium")
///             .canIpForward(false)
///             .scheduling(InstanceTemplateSchedulingArgs.builder()
///                 .automaticRestart(true)
///                 .onHostMaintenance("MIGRATE")
///                 .build())
///             .disks(
///                 InstanceTemplateDiskArgs.builder()
///                     .sourceImage("debian-cloud/debian-11")
///                     .autoDelete(true)
///                     .boot(true)
///                     .resourcePolicies(dailyBackup.id())
///                     .build(),
///                 InstanceTemplateDiskArgs.builder()
///                     .source(foobar.name())
///                     .autoDelete(false)
///                     .boot(false)
///                     .build())
///             .networkInterfaces(InstanceTemplateNetworkInterfaceArgs.builder()
///                 .network("default")
///                 .build())
///             .metadata(Map.of("foo", "bar"))
///             .serviceAccount(InstanceTemplateServiceAccountArgs.builder()
///                 .email(default_.email())
///                 .scopes("cloud-platform")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:serviceaccount:Account
///     properties:
///       accountId: service-account-id
///       displayName: Service Account
///   defaultInstanceTemplate:
///     type: gcp:compute:InstanceTemplate
///     name: default
///     properties:
///       name: appserver-template
///       description: This template is used to create app server instances.
///       tags:
///         - foo
///         - bar
///       labels:
///         environment: dev
///       instanceDescription: description assigned to instances
///       machineType: e2-medium
///       canIpForward: false
///       scheduling:
///         automaticRestart: true
///         onHostMaintenance: MIGRATE
///       disks:
///         - sourceImage: debian-cloud/debian-11
///           autoDelete: true
///           boot: true
///           resourcePolicies: ${dailyBackup.id}
///         - source: ${foobar.name}
///           autoDelete: false
///           boot: false
///       networkInterfaces:
///         - network: default
///       metadata:
///         foo: bar
///       serviceAccount:
///         email: ${default.email}
///         scopes:
///           - cloud-platform
///   foobar:
///     type: gcp:compute:Disk
///     properties:
///       name: existing-disk
///       image: ${myImage.selfLink}
///       size: 10
///       type: pd-ssd
///       zone: us-central1-a
///   dailyBackup:
///     type: gcp:compute:ResourcePolicy
///     name: daily_backup
///     properties:
///       name: every-day-4am
///       region: us-central1
///       snapshotSchedulePolicy:
///         schedule:
///           dailySchedule:
///             daysInCycle: 1
///             startTime: 04:00
/// variables:
///   myImage:
///     fn::invoke:
///       function: gcp:compute:getImage
///       arguments:
///         family: debian-11
///         project: debian-cloud
/// ```
///
///
/// ### Automatic Envoy Deployment
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = gcp.compute.getDefaultServiceAccount({});
/// const myImage = gcp.compute.getImage({
///     family: "debian-11",
///     project: "debian-cloud",
/// });
/// const foobar = new gcp.compute.InstanceTemplate("foobar", {
///     name: "appserver-template",
///     machineType: "e2-medium",
///     canIpForward: false,
///     tags: [
///         "foo",
///         "bar",
///     ],
///     disks: [{
///         sourceImage: myImage.then(myImage => myImage.selfLink),
///         autoDelete: true,
///         boot: true,
///     }],
///     networkInterfaces: [{
///         network: "default",
///     }],
///     scheduling: {
///         preemptible: false,
///         automaticRestart: true,
///     },
///     metadata: {
///         "gce-software-declaration": `{
///   \\"softwareRecipes\\": [{
///     \\"name\\": \\"install-gce-service-proxy-agent\\",
///     \\"desired_state\\": \\"INSTALLED\\",
///     \\"installSteps\\": [{
///       \\"scriptRun\\": {
///         \\"script\\": \\"#! /bin/bash\\
/// ZONE=(curl --silent http://metadata.google.internal/computeMetadata/v1/instance/zone -H Metadata-Flavor:Google | cut -d/ -f4 )\\
/// export SERVICE_PROXY_AGENT_DIRECTORY=(mktemp -d)\\
/// sudo gsutil cp   gs://gce-service-proxy-\\"ZONE\\"/service-proxy-agent/releases/service-proxy-agent-0.2.tgz   \\"SERVICE_PROXY_AGENT_DIRECTORY\\"   || sudo gsutil cp     gs://gce-service-proxy/service-proxy-agent/releases/service-proxy-agent-0.2.tgz     \\"SERVICE_PROXY_AGENT_DIRECTORY\\"\\
/// sudo tar -xzf \\"SERVICE_PROXY_AGENT_DIRECTORY\\"/service-proxy-agent-0.2.tgz -C \\"SERVICE_PROXY_AGENT_DIRECTORY\\"\\
/// \\"SERVICE_PROXY_AGENT_DIRECTORY\\"/service-proxy-agent/service-proxy-agent-bootstrap.sh\\"
///       }
///     }]
///   }]
/// }
/// `,
///         "gce-service-proxy": `{
///   \\"api-version\\": \\"0.2\\",
///   \\"proxy-spec\\": {
///     \\"proxy-port\\": 15001,
///     \\"network\\": \\"my-network\\",
///     \\"tracing\\": \\"ON\\",
///     \\"access-log\\": \\"/var/log/envoy/access.log\\"
///   }
///   \\"service\\": {
///     \\"serving-ports\\": [80, 81]
///   },
///  \\"labels\\": {
///    \\"app_name\\": \\"bookserver_app\\",
///    \\"app_version\\": \\"STABLE\\"
///   }
/// }
/// `,
///         "enable-guest-attributes": "true",
///         "enable-osconfig": "true",
///     },
///     serviceAccount: {
///         email: _default.then(_default => _default.email),
///         scopes: ["cloud-platform"],
///     },
///     labels: {
///         "gce-service-proxy": "on",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.compute.get_default_service_account()
/// my_image = gcp.compute.get_image(family="debian-11",
///     project="debian-cloud")
/// foobar = gcp.compute.InstanceTemplate("foobar",
///     name="appserver-template",
///     machine_type="e2-medium",
///     can_ip_forward=False,
///     tags=[
///         "foo",
///         "bar",
///     ],
///     disks=[{
///         "source_image": my_image.self_link,
///         "auto_delete": True,
///         "boot": True,
///     }],
///     network_interfaces=[{
///         "network": "default",
///     }],
///     scheduling={
///         "preemptible": False,
///         "automatic_restart": True,
///     },
///     metadata={
///         "gce-software-declaration": """{
///   \"softwareRecipes\": [{
///     \"name\": \"install-gce-service-proxy-agent\",
///     \"desired_state\": \"INSTALLED\",
///     \"installSteps\": [{
///       \"scriptRun\": {
///         \"script\": \"#! /bin/bash\
/// ZONE=$(curl --silent http://metadata.google.internal/computeMetadata/v1/instance/zone -H Metadata-Flavor:Google | cut -d/ -f4 )\
/// export SERVICE_PROXY_AGENT_DIRECTORY=$(mktemp -d)\
/// sudo gsutil cp   gs://gce-service-proxy-\"$ZONE\"/service-proxy-agent/releases/service-proxy-agent-0.2.tgz   \"$SERVICE_PROXY_AGENT_DIRECTORY\"   || sudo gsutil cp     gs://gce-service-proxy/service-proxy-agent/releases/service-proxy-agent-0.2.tgz     \"$SERVICE_PROXY_AGENT_DIRECTORY\"\
/// sudo tar -xzf \"$SERVICE_PROXY_AGENT_DIRECTORY\"/service-proxy-agent-0.2.tgz -C \"$SERVICE_PROXY_AGENT_DIRECTORY\"\
/// \"$SERVICE_PROXY_AGENT_DIRECTORY\"/service-proxy-agent/service-proxy-agent-bootstrap.sh\"
///       }
///     }]
///   }]
/// }
/// """,
///         "gce-service-proxy": """{
///   \"api-version\": \"0.2\",
///   \"proxy-spec\": {
///     \"proxy-port\": 15001,
///     \"network\": \"my-network\",
///     \"tracing\": \"ON\",
///     \"access-log\": \"/var/log/envoy/access.log\"
///   }
///   \"service\": {
///     \"serving-ports\": [80, 81]
///   },
///  \"labels\": {
///    \"app_name\": \"bookserver_app\",
///    \"app_version\": \"STABLE\"
///   }
/// }
/// """,
///         "enable-guest-attributes": "true",
///         "enable-osconfig": "true",
///     },
///     service_account={
///         "email": default.email,
///         "scopes": ["cloud-platform"],
///     },
///     labels={
///         "gce-service-proxy": "on",
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
///     var @default = Gcp.Compute.GetDefaultServiceAccount.Invoke();
///
///     var myImage = Gcp.Compute.GetImage.Invoke(new()
///     {
///         Family = "debian-11",
///         Project = "debian-cloud",
///     });
///
///     var foobar = new Gcp.Compute.InstanceTemplate("foobar", new()
///     {
///         Name = "appserver-template",
///         MachineType = "e2-medium",
///         CanIpForward = false,
///         Tags = new[]
///         {
///             "foo",
///             "bar",
///         },
///         Disks = new[]
///         {
///             new Gcp.Compute.Inputs.InstanceTemplateDiskArgs
///             {
///                 SourceImage = myImage.Apply(getImageResult => getImageResult.SelfLink),
///                 AutoDelete = true,
///                 Boot = true,
///             },
///         },
///         NetworkInterfaces = new[]
///         {
///             new Gcp.Compute.Inputs.InstanceTemplateNetworkInterfaceArgs
///             {
///                 Network = "default",
///             },
///         },
///         Scheduling = new Gcp.Compute.Inputs.InstanceTemplateSchedulingArgs
///         {
///             Preemptible = false,
///             AutomaticRestart = true,
///         },
///         Metadata =
///         {
///             { "gce-software-declaration", @"{
///   \""softwareRecipes\"": [{
///     \""name\"": \""install-gce-service-proxy-agent\"",
///     \""desired_state\"": \""INSTALLED\"",
///     \""installSteps\"": [{
///       \""scriptRun\"": {
///         \""script\"": \""#! /bin/bash\
/// ZONE=$(curl --silent http://metadata.google.internal/computeMetadata/v1/instance/zone -H Metadata-Flavor:Google | cut -d/ -f4 )\
/// export SERVICE_PROXY_AGENT_DIRECTORY=$(mktemp -d)\
/// sudo gsutil cp   gs://gce-service-proxy-\""$ZONE\""/service-proxy-agent/releases/service-proxy-agent-0.2.tgz   \""$SERVICE_PROXY_AGENT_DIRECTORY\""   || sudo gsutil cp     gs://gce-service-proxy/service-proxy-agent/releases/service-proxy-agent-0.2.tgz     \""$SERVICE_PROXY_AGENT_DIRECTORY\""\
/// sudo tar -xzf \""$SERVICE_PROXY_AGENT_DIRECTORY\""/service-proxy-agent-0.2.tgz -C \""$SERVICE_PROXY_AGENT_DIRECTORY\""\
/// \""$SERVICE_PROXY_AGENT_DIRECTORY\""/service-proxy-agent/service-proxy-agent-bootstrap.sh\""
///       }
///     }]
///   }]
/// }
/// " },
///             { "gce-service-proxy", @"{
///   \""api-version\"": \""0.2\"",
///   \""proxy-spec\"": {
///     \""proxy-port\"": 15001,
///     \""network\"": \""my-network\"",
///     \""tracing\"": \""ON\"",
///     \""access-log\"": \""/var/log/envoy/access.log\""
///   }
///   \""service\"": {
///     \""serving-ports\"": [80, 81]
///   },
///  \""labels\"": {
///    \""app_name\"": \""bookserver_app\"",
///    \""app_version\"": \""STABLE\""
///   }
/// }
/// " },
///             { "enable-guest-attributes", "true" },
///             { "enable-osconfig", "true" },
///         },
///         ServiceAccount = new Gcp.Compute.Inputs.InstanceTemplateServiceAccountArgs
///         {
///             Email = @default.Apply(@default => @default.Apply(getDefaultServiceAccountResult => getDefaultServiceAccountResult.Email)),
///             Scopes = new[]
///             {
///                 "cloud-platform",
///             },
///         },
///         Labels =
///         {
///             { "gce-service-proxy", "on" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := compute.GetDefaultServiceAccount(ctx, &compute.GetDefaultServiceAccountArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		myImage, err := compute.LookupImage(ctx, &compute.LookupImageArgs{
/// 			Family:  pulumi.StringRef("debian-11"),
/// 			Project: pulumi.StringRef("debian-cloud"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewInstanceTemplate(ctx, "foobar", &compute.InstanceTemplateArgs{
/// 			Name:         pulumi.String("appserver-template"),
/// 			MachineType:  pulumi.String("e2-medium"),
/// 			CanIpForward: pulumi.Bool(false),
/// 			Tags: pulumi.StringArray{
/// 				pulumi.String("foo"),
/// 				pulumi.String("bar"),
/// 			},
/// 			Disks: compute.InstanceTemplateDiskArray{
/// 				&compute.InstanceTemplateDiskArgs{
/// 					SourceImage: pulumi.String(myImage.SelfLink),
/// 					AutoDelete:  pulumi.Bool(true),
/// 					Boot:        pulumi.Bool(true),
/// 				},
/// 			},
/// 			NetworkInterfaces: compute.InstanceTemplateNetworkInterfaceArray{
/// 				&compute.InstanceTemplateNetworkInterfaceArgs{
/// 					Network: pulumi.String("default"),
/// 				},
/// 			},
/// 			Scheduling: &compute.InstanceTemplateSchedulingArgs{
/// 				Preemptible:      pulumi.Bool(false),
/// 				AutomaticRestart: pulumi.Bool(true),
/// 			},
/// 			Metadata: pulumi.StringMap{
/// 				"gce-software-declaration": pulumi.String(`{
///   \"softwareRecipes\": [{
///     \"name\": \"install-gce-service-proxy-agent\",
///     \"desired_state\": \"INSTALLED\",
///     \"installSteps\": [{
///       \"scriptRun\": {
///         \"script\": \"#! /bin/bash\
/// ZONE=$(curl --silent http://metadata.google.internal/computeMetadata/v1/instance/zone -H Metadata-Flavor:Google | cut -d/ -f4 )\
/// export SERVICE_PROXY_AGENT_DIRECTORY=$(mktemp -d)\
/// sudo gsutil cp   gs://gce-service-proxy-\"$ZONE\"/service-proxy-agent/releases/service-proxy-agent-0.2.tgz   \"$SERVICE_PROXY_AGENT_DIRECTORY\"   || sudo gsutil cp     gs://gce-service-proxy/service-proxy-agent/releases/service-proxy-agent-0.2.tgz     \"$SERVICE_PROXY_AGENT_DIRECTORY\"\
/// sudo tar -xzf \"$SERVICE_PROXY_AGENT_DIRECTORY\"/service-proxy-agent-0.2.tgz -C \"$SERVICE_PROXY_AGENT_DIRECTORY\"\
/// \"$SERVICE_PROXY_AGENT_DIRECTORY\"/service-proxy-agent/service-proxy-agent-bootstrap.sh\"
///       }
///     }]
///   }]
/// }
/// `),
/// 				"gce-service-proxy": pulumi.String(`{
///   \"api-version\": \"0.2\",
///   \"proxy-spec\": {
///     \"proxy-port\": 15001,
///     \"network\": \"my-network\",
///     \"tracing\": \"ON\",
///     \"access-log\": \"/var/log/envoy/access.log\"
///   }
///   \"service\": {
///     \"serving-ports\": [80, 81]
///   },
///  \"labels\": {
///    \"app_name\": \"bookserver_app\",
///    \"app_version\": \"STABLE\"
///   }
/// }
/// `),
/// 				"enable-guest-attributes": pulumi.String("true"),
/// 				"enable-osconfig":         pulumi.String("true"),
/// 			},
/// 			ServiceAccount: &compute.InstanceTemplateServiceAccountArgs{
/// 				Email: pulumi.String(_default.Email),
/// 				Scopes: pulumi.StringArray{
/// 					pulumi.String("cloud-platform"),
/// 				},
/// 			},
/// 			Labels: pulumi.StringMap{
/// 				"gce-service-proxy": pulumi.String("on"),
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
/// data "gcp_compute_getdefaultserviceaccount" "default" {
/// }
/// data "gcp_compute_getimage" "myImage" {
///   family  = "debian-11"
///   project = "debian-cloud"
/// }
///
/// resource "gcp_compute_instancetemplate" "foobar" {
///   name           = "appserver-template"
///   machine_type   = "e2-medium"
///   can_ip_forward = false
///   tags           = ["foo", "bar"]
///   disks {
///     source_image = data.gcp_compute_getimage.myImage.self_link
///     auto_delete  = true
///     boot         = true
///   }
///   network_interfaces {
///     network = "default"
///   }
///   scheduling = {
///     preemptible       = false
///     automatic_restart = true
///   }
///   metadata = {
///     "gce-software-declaration" = "{\n  \\\"softwareRecipes\\\": [{\n    \\\"name\\\": \\\"install-gce-service-proxy-agent\\\",\n    \\\"desired_state\\\": \\\"INSTALLED\\\",\n    \\\"installSteps\\\": [{\n      \\\"scriptRun\\\": {\n        \\\"script\\\": \\\"#! /bin/bash\\\nZONE=$(curl --silent http://metadata.google.internal/computeMetadata/v1/instance/zone -H Metadata-Flavor:Google | cut -d/ -f4 )\\\nexport SERVICE_PROXY_AGENT_DIRECTORY=$(mktemp -d)\\\nsudo gsutil cp   gs://gce-service-proxy-\\\"$ZONE\\\"/service-proxy-agent/releases/service-proxy-agent-0.2.tgz   \\\"$SERVICE_PROXY_AGENT_DIRECTORY\\\"   || sudo gsutil cp     gs://gce-service-proxy/service-proxy-agent/releases/service-proxy-agent-0.2.tgz     \\\"$SERVICE_PROXY_AGENT_DIRECTORY\\\"\\\nsudo tar -xzf \\\"$SERVICE_PROXY_AGENT_DIRECTORY\\\"/service-proxy-agent-0.2.tgz -C \\\"$SERVICE_PROXY_AGENT_DIRECTORY\\\"\\\n\\\"$SERVICE_PROXY_AGENT_DIRECTORY\\\"/service-proxy-agent/service-proxy-agent-bootstrap.sh\\\"\n      }\n    }]\n  }]\n}\n"
///     "gce-service-proxy"        = "{\n  \\\"api-version\\\": \\\"0.2\\\",\n  \\\"proxy-spec\\\": {\n    \\\"proxy-port\\\": 15001,\n    \\\"network\\\": \\\"my-network\\\",\n    \\\"tracing\\\": \\\"ON\\\",\n    \\\"access-log\\\": \\\"/var/log/envoy/access.log\\\"\n  }\n  \\\"service\\\": {\n    \\\"serving-ports\\\": [80, 81]\n  },\n \\\"labels\\\": {\n   \\\"app_name\\\": \\\"bookserver_app\\\",\n   \\\"app_version\\\": \\\"STABLE\\\"\n  }\n}\n"
///     "enable-guest-attributes"  = "true"
///     "enable-osconfig"          = "true"
///   }
///   service_account = {
///     email  = data.gcp_compute_getdefaultserviceaccount.default.email
///     scopes = ["cloud-platform"]
///   }
///   labels = {
///     "gce-service-proxy" = "on"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.ComputeFunctions;
/// import com.pulumi.gcp.compute.inputs.GetDefaultServiceAccountArgs;
/// import com.pulumi.gcp.compute.inputs.GetImageArgs;
/// import com.pulumi.gcp.compute.InstanceTemplate;
/// import com.pulumi.gcp.compute.InstanceTemplateArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceTemplateDiskArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceTemplateNetworkInterfaceArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceTemplateSchedulingArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceTemplateServiceAccountArgs;
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
///         final var default = ComputeFunctions.getDefaultServiceAccount(GetDefaultServiceAccountArgs.builder()
///             .build());
///
///         final var myImage = ComputeFunctions.getImage(GetImageArgs.builder()
///             .family("debian-11")
///             .project("debian-cloud")
///             .build());
///
///         var foobar = new InstanceTemplate("foobar", InstanceTemplateArgs.builder()
///             .name("appserver-template")
///             .machineType("e2-medium")
///             .canIpForward(false)
///             .tags(
///                 "foo",
///                 "bar")
///             .disks(InstanceTemplateDiskArgs.builder()
///                 .sourceImage(myImage.selfLink())
///                 .autoDelete(true)
///                 .boot(true)
///                 .build())
///             .networkInterfaces(InstanceTemplateNetworkInterfaceArgs.builder()
///                 .network("default")
///                 .build())
///             .scheduling(InstanceTemplateSchedulingArgs.builder()
///                 .preemptible(false)
///                 .automaticRestart(true)
///                 .build())
///             .metadata(Map.ofEntries(
///                 Map.entry("gce-software-declaration", """
/// {
///   \"softwareRecipes\": [{
///     \"name\": \"install-gce-service-proxy-agent\",
///     \"desired_state\": \"INSTALLED\",
///     \"installSteps\": [{
///       \"scriptRun\": {
///         \"script\": \"#! /bin/bash\
/// ZONE=$(curl --silent http://metadata.google.internal/computeMetadata/v1/instance/zone -H Metadata-Flavor:Google | cut -d/ -f4 )\
/// export SERVICE_PROXY_AGENT_DIRECTORY=$(mktemp -d)\
/// sudo gsutil cp   gs://gce-service-proxy-\"$ZONE\"/service-proxy-agent/releases/service-proxy-agent-0.2.tgz   \"$SERVICE_PROXY_AGENT_DIRECTORY\"   || sudo gsutil cp     gs://gce-service-proxy/service-proxy-agent/releases/service-proxy-agent-0.2.tgz     \"$SERVICE_PROXY_AGENT_DIRECTORY\"\
/// sudo tar -xzf \"$SERVICE_PROXY_AGENT_DIRECTORY\"/service-proxy-agent-0.2.tgz -C \"$SERVICE_PROXY_AGENT_DIRECTORY\"\
/// \"$SERVICE_PROXY_AGENT_DIRECTORY\"/service-proxy-agent/service-proxy-agent-bootstrap.sh\"
///       }
///     }]
///   }]
/// }
///                 """),
///                 Map.entry("gce-service-proxy", """
/// {
///   \"api-version\": \"0.2\",
///   \"proxy-spec\": {
///     \"proxy-port\": 15001,
///     \"network\": \"my-network\",
///     \"tracing\": \"ON\",
///     \"access-log\": \"/var/log/envoy/access.log\"
///   }
///   \"service\": {
///     \"serving-ports\": [80, 81]
///   },
///  \"labels\": {
///    \"app_name\": \"bookserver_app\",
///    \"app_version\": \"STABLE\"
///   }
/// }
///                 """),
///                 Map.entry("enable-guest-attributes", "true"),
///                 Map.entry("enable-osconfig", "true")
///             ))
///             .serviceAccount(InstanceTemplateServiceAccountArgs.builder()
///                 .email(default_.email())
///                 .scopes("cloud-platform")
///                 .build())
///             .labels(Map.of("gce-service-proxy", "on"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foobar:
///     type: gcp:compute:InstanceTemplate
///     properties:
///       name: appserver-template
///       machineType: e2-medium
///       canIpForward: false
///       tags:
///         - foo
///         - bar
///       disks:
///         - sourceImage: ${myImage.selfLink}
///           autoDelete: true
///           boot: true
///       networkInterfaces:
///         - network: default
///       scheduling:
///         preemptible: false
///         automaticRestart: true
///       metadata:
///         gce-software-declaration: |
///           {
///             \"softwareRecipes\": [{
///               \"name\": \"install-gce-service-proxy-agent\",
///               \"desired_state\": \"INSTALLED\",
///               \"installSteps\": [{
///                 \"scriptRun\": {
///                   \"script\": \"#! /bin/bash\
///           ZONE=$(curl --silent http://metadata.google.internal/computeMetadata/v1/instance/zone -H Metadata-Flavor:Google | cut -d/ -f4 )\
///           export SERVICE_PROXY_AGENT_DIRECTORY=$(mktemp -d)\
///           sudo gsutil cp   gs://gce-service-proxy-\"$ZONE\"/service-proxy-agent/releases/service-proxy-agent-0.2.tgz   \"$SERVICE_PROXY_AGENT_DIRECTORY\"   || sudo gsutil cp     gs://gce-service-proxy/service-proxy-agent/releases/service-proxy-agent-0.2.tgz     \"$SERVICE_PROXY_AGENT_DIRECTORY\"\
///           sudo tar -xzf \"$SERVICE_PROXY_AGENT_DIRECTORY\"/service-proxy-agent-0.2.tgz -C \"$SERVICE_PROXY_AGENT_DIRECTORY\"\
///           \"$SERVICE_PROXY_AGENT_DIRECTORY\"/service-proxy-agent/service-proxy-agent-bootstrap.sh\"
///                 }
///               }]
///             }]
///           }
///         gce-service-proxy: |
///           {
///             \"api-version\": \"0.2\",
///             \"proxy-spec\": {
///               \"proxy-port\": 15001,
///               \"network\": \"my-network\",
///               \"tracing\": \"ON\",
///               \"access-log\": \"/var/log/envoy/access.log\"
///             }
///             \"service\": {
///               \"serving-ports\": [80, 81]
///             },
///            \"labels\": {
///              \"app_name\": \"bookserver_app\",
///              \"app_version\": \"STABLE\"
///             }
///           }
///         enable-guest-attributes: 'true'
///         enable-osconfig: 'true'
///       serviceAccount:
///         email: ${default.email}
///         scopes:
///           - cloud-platform
///       labels:
///         gce-service-proxy: on
/// variables:
///   default:
///     fn::invoke:
///       function: gcp:compute:getDefaultServiceAccount
///       arguments: {}
///   myImage:
///     fn::invoke:
///       function: gcp:compute:getImage
///       arguments:
///         family: debian-11
///         project: debian-cloud
/// ```
///
///
///
/// ### Confidential Computing
///
/// Example with [Confidential Mode](https://cloud.google.com/confidential-computing/confidential-vm/docs/confidential-vm-overview) activated.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.serviceaccount.Account("default", {
///     accountId: "my-custom-sa",
///     displayName: "Custom SA for VM Instance",
/// });
/// const confidentialInstanceTemplate = new gcp.compute.InstanceTemplate("confidential_instance_template", {
///     networkInterfaces: [{
///         accessConfigs: [{}],
///         network: "default",
///     }],
///     name: "my-confidential-instance-template",
///     region: "us-central1",
///     machineType: "n2d-standard-2",
///     minCpuPlatform: "AMD Milan",
///     confidentialInstanceConfig: {
///         enableConfidentialCompute: true,
///         confidentialInstanceType: "SEV",
///     },
///     disks: [{
///         sourceImage: "ubuntu-os-cloud/ubuntu-2204-lts",
///     }],
///     serviceAccount: {
///         email: _default.email,
///         scopes: ["cloud-platform"],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.serviceaccount.Account("default",
///     account_id="my-custom-sa",
///     display_name="Custom SA for VM Instance")
/// confidential_instance_template = gcp.compute.InstanceTemplate("confidential_instance_template",
///     network_interfaces=[{
///         "access_configs": [{}],
///         "network": "default",
///     }],
///     name="my-confidential-instance-template",
///     region="us-central1",
///     machine_type="n2d-standard-2",
///     min_cpu_platform="AMD Milan",
///     confidential_instance_config={
///         "enable_confidential_compute": True,
///         "confidential_instance_type": "SEV",
///     },
///     disks=[{
///         "source_image": "ubuntu-os-cloud/ubuntu-2204-lts",
///     }],
///     service_account={
///         "email": default.email,
///         "scopes": ["cloud-platform"],
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
///     var @default = new Gcp.ServiceAccount.Account("default", new()
///     {
///         AccountId = "my-custom-sa",
///         DisplayName = "Custom SA for VM Instance",
///     });
///
///     var confidentialInstanceTemplate = new Gcp.Compute.InstanceTemplate("confidential_instance_template", new()
///     {
///         NetworkInterfaces = new[]
///         {
///             new Gcp.Compute.Inputs.InstanceTemplateNetworkInterfaceArgs
///             {
///                 AccessConfigs = new[]
///                 {
///                     null,
///                 },
///                 Network = "default",
///             },
///         },
///         Name = "my-confidential-instance-template",
///         Region = "us-central1",
///         MachineType = "n2d-standard-2",
///         MinCpuPlatform = "AMD Milan",
///         ConfidentialInstanceConfig = new Gcp.Compute.Inputs.InstanceTemplateConfidentialInstanceConfigArgs
///         {
///             EnableConfidentialCompute = true,
///             ConfidentialInstanceType = "SEV",
///         },
///         Disks = new[]
///         {
///             new Gcp.Compute.Inputs.InstanceTemplateDiskArgs
///             {
///                 SourceImage = "ubuntu-os-cloud/ubuntu-2204-lts",
///             },
///         },
///         ServiceAccount = new Gcp.Compute.Inputs.InstanceTemplateServiceAccountArgs
///         {
///             Email = @default.Email,
///             Scopes = new[]
///             {
///                 "cloud-platform",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/serviceaccount"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := serviceaccount.NewAccount(ctx, "default", &serviceaccount.AccountArgs{
/// 			AccountId:   pulumi.String("my-custom-sa"),
/// 			DisplayName: pulumi.String("Custom SA for VM Instance"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewInstanceTemplate(ctx, "confidential_instance_template", &compute.InstanceTemplateArgs{
/// 			NetworkInterfaces: compute.InstanceTemplateNetworkInterfaceArray{
/// 				&compute.InstanceTemplateNetworkInterfaceArgs{
/// 					AccessConfigs: compute.InstanceTemplateNetworkInterfaceAccessConfigArray{
/// 						&compute.InstanceTemplateNetworkInterfaceAccessConfigArgs{},
/// 					},
/// 					Network: pulumi.String("default"),
/// 				},
/// 			},
/// 			Name:           pulumi.String("my-confidential-instance-template"),
/// 			Region:         pulumi.String("us-central1"),
/// 			MachineType:    pulumi.String("n2d-standard-2"),
/// 			MinCpuPlatform: pulumi.String("AMD Milan"),
/// 			ConfidentialInstanceConfig: &compute.InstanceTemplateConfidentialInstanceConfigArgs{
/// 				EnableConfidentialCompute: pulumi.Bool(true),
/// 				ConfidentialInstanceType:  pulumi.String("SEV"),
/// 			},
/// 			Disks: compute.InstanceTemplateDiskArray{
/// 				&compute.InstanceTemplateDiskArgs{
/// 					SourceImage: pulumi.String("ubuntu-os-cloud/ubuntu-2204-lts"),
/// 				},
/// 			},
/// 			ServiceAccount: &compute.InstanceTemplateServiceAccountArgs{
/// 				Email: _default.Email,
/// 				Scopes: pulumi.StringArray{
/// 					pulumi.String("cloud-platform"),
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
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_serviceaccount_account" "default" {
///   account_id   = "my-custom-sa"
///   display_name = "Custom SA for VM Instance"
/// }
/// resource "gcp_compute_instancetemplate" "confidential_instance_template" {
///   network_interfaces {
///     access_configs {
///     }
///     network = "default"
///   }
///   name             = "my-confidential-instance-template"
///   region           = "us-central1"
///   machine_type     = "n2d-standard-2"
///   min_cpu_platform = "AMD Milan"
///   confidential_instance_config = {
///     enable_confidential_compute = true
///     confidential_instance_type  = "SEV"
///   }
///   disks {
///     source_image = "ubuntu-os-cloud/ubuntu-2204-lts"
///   }
///   service_account = {
///     email  = gcp_serviceaccount_account.default.email
///     scopes = ["cloud-platform"]
///   }
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
/// import com.pulumi.gcp.compute.InstanceTemplate;
/// import com.pulumi.gcp.compute.InstanceTemplateArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceTemplateNetworkInterfaceArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceTemplateNetworkInterfaceAccessConfigArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceTemplateConfidentialInstanceConfigArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceTemplateDiskArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceTemplateServiceAccountArgs;
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
///         var default_ = new Account("default", AccountArgs.builder()
///             .accountId("my-custom-sa")
///             .displayName("Custom SA for VM Instance")
///             .build());
///
///         var confidentialInstanceTemplate = new InstanceTemplate("confidentialInstanceTemplate", InstanceTemplateArgs.builder()
///             .networkInterfaces(InstanceTemplateNetworkInterfaceArgs.builder()
///                 .accessConfigs(InstanceTemplateNetworkInterfaceAccessConfigArgs.builder()
///                     .build())
///                 .network("default")
///                 .build())
///             .name("my-confidential-instance-template")
///             .region("us-central1")
///             .machineType("n2d-standard-2")
///             .minCpuPlatform("AMD Milan")
///             .confidentialInstanceConfig(InstanceTemplateConfidentialInstanceConfigArgs.builder()
///                 .enableConfidentialCompute(true)
///                 .confidentialInstanceType("SEV")
///                 .build())
///             .disks(InstanceTemplateDiskArgs.builder()
///                 .sourceImage("ubuntu-os-cloud/ubuntu-2204-lts")
///                 .build())
///             .serviceAccount(InstanceTemplateServiceAccountArgs.builder()
///                 .email(default_.email())
///                 .scopes("cloud-platform")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:serviceaccount:Account
///     properties:
///       accountId: my-custom-sa
///       displayName: Custom SA for VM Instance
///   confidentialInstanceTemplate:
///     type: gcp:compute:InstanceTemplate
///     name: confidential_instance_template
///     properties:
///       networkInterfaces:
///         - accessConfigs:
///             - {}
///           network: default
///       name: my-confidential-instance-template
///       region: us-central1
///       machineType: n2d-standard-2
///       minCpuPlatform: AMD Milan
///       confidentialInstanceConfig:
///         enableConfidentialCompute: true
///         confidentialInstanceType: SEV
///       disks:
///         - sourceImage: ubuntu-os-cloud/ubuntu-2204-lts
///       serviceAccount:
///         email: ${default.email}
///         scopes:
///           - cloud-platform
/// ```
///
///
/// ## Deploying the Latest Image
///
/// A common way to use instance templates and managed instance groups is to deploy the
/// latest image in a family, usually the latest build of your application. There are two
/// ways to do this in the provider, and they have their pros and cons. The difference ends
/// up being in how "latest" is interpreted. You can either deploy the latest image available
/// when the provider runs, or you can have each instance check what the latest image is when
/// it's being created, either as part of a scaling event or being rebuilt by the instance
/// group manager.
///
/// If you're not sure, we recommend deploying the latest image available when the provider runs,
/// because this means all the instances in your group will be based on the same image, always,
/// and means that no upgrades or changes to your instances happen outside of a `pulumi up`.
/// You can achieve this by using the `gcp.compute.Image`
/// data source, which will retrieve the latest image on every `pulumi apply`, and will update
/// the template to use that specific image:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const myImage = gcp.compute.getImage({
///     family: "debian-11",
///     project: "debian-cloud",
/// });
/// const instanceTemplate = new gcp.compute.InstanceTemplate("instance_template", {
///     namePrefix: "instance-template-",
///     machineType: "e2-medium",
///     region: "us-central1",
///     disks: [{
///         sourceImage: myImage.then(myImage => myImage.selfLink),
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_image = gcp.compute.get_image(family="debian-11",
///     project="debian-cloud")
/// instance_template = gcp.compute.InstanceTemplate("instance_template",
///     name_prefix="instance-template-",
///     machine_type="e2-medium",
///     region="us-central1",
///     disks=[{
///         "source_image": my_image.self_link,
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
///     var myImage = Gcp.Compute.GetImage.Invoke(new()
///     {
///         Family = "debian-11",
///         Project = "debian-cloud",
///     });
///
///     var instanceTemplate = new Gcp.Compute.InstanceTemplate("instance_template", new()
///     {
///         NamePrefix = "instance-template-",
///         MachineType = "e2-medium",
///         Region = "us-central1",
///         Disks = new[]
///         {
///             new Gcp.Compute.Inputs.InstanceTemplateDiskArgs
///             {
///                 SourceImage = myImage.Apply(getImageResult => getImageResult.SelfLink),
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		myImage, err := compute.LookupImage(ctx, &compute.LookupImageArgs{
/// 			Family:  pulumi.StringRef("debian-11"),
/// 			Project: pulumi.StringRef("debian-cloud"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewInstanceTemplate(ctx, "instance_template", &compute.InstanceTemplateArgs{
/// 			NamePrefix:  pulumi.String("instance-template-"),
/// 			MachineType: pulumi.String("e2-medium"),
/// 			Region:      pulumi.String("us-central1"),
/// 			Disks: compute.InstanceTemplateDiskArray{
/// 				&compute.InstanceTemplateDiskArgs{
/// 					SourceImage: pulumi.String(myImage.SelfLink),
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
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_compute_getimage" "myImage" {
///   family  = "debian-11"
///   project = "debian-cloud"
/// }
///
/// resource "gcp_compute_instancetemplate" "instance_template" {
///   name_prefix  = "instance-template-"
///   machine_type = "e2-medium"
///   region       = "us-central1"
///   disks {
///     source_image = data.gcp_compute_getimage.myImage.self_link
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.ComputeFunctions;
/// import com.pulumi.gcp.compute.inputs.GetImageArgs;
/// import com.pulumi.gcp.compute.InstanceTemplate;
/// import com.pulumi.gcp.compute.InstanceTemplateArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceTemplateDiskArgs;
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
///         final var myImage = ComputeFunctions.getImage(GetImageArgs.builder()
///             .family("debian-11")
///             .project("debian-cloud")
///             .build());
///
///         var instanceTemplate = new InstanceTemplate("instanceTemplate", InstanceTemplateArgs.builder()
///             .namePrefix("instance-template-")
///             .machineType("e2-medium")
///             .region("us-central1")
///             .disks(InstanceTemplateDiskArgs.builder()
///                 .sourceImage(myImage.selfLink())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   instanceTemplate:
///     type: gcp:compute:InstanceTemplate
///     name: instance_template
///     properties:
///       namePrefix: instance-template-
///       machineType: e2-medium
///       region: us-central1
///       disks:
///         - sourceImage: ${myImage.selfLink}
/// variables:
///   myImage:
///     fn::invoke:
///       function: gcp:compute:getImage
///       arguments:
///         family: debian-11
///         project: debian-cloud
/// ```
///
///
/// To have instances update to the latest on every scaling event or instance re-creation,
/// use the family as the image for the disk, and it will use GCP's default behavior, setting
/// the image for the template to the family:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const instanceTemplate = new gcp.compute.InstanceTemplate("instance_template", {
///     namePrefix: "instance-template-",
///     machineType: "e2-medium",
///     region: "us-central1",
///     disks: [{
///         sourceImage: "debian-cloud/debian-11",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// instance_template = gcp.compute.InstanceTemplate("instance_template",
///     name_prefix="instance-template-",
///     machine_type="e2-medium",
///     region="us-central1",
///     disks=[{
///         "source_image": "debian-cloud/debian-11",
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
///     var instanceTemplate = new Gcp.Compute.InstanceTemplate("instance_template", new()
///     {
///         NamePrefix = "instance-template-",
///         MachineType = "e2-medium",
///         Region = "us-central1",
///         Disks = new[]
///         {
///             new Gcp.Compute.Inputs.InstanceTemplateDiskArgs
///             {
///                 SourceImage = "debian-cloud/debian-11",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewInstanceTemplate(ctx, "instance_template", &compute.InstanceTemplateArgs{
/// 			NamePrefix:  pulumi.String("instance-template-"),
/// 			MachineType: pulumi.String("e2-medium"),
/// 			Region:      pulumi.String("us-central1"),
/// 			Disks: compute.InstanceTemplateDiskArray{
/// 				&compute.InstanceTemplateDiskArgs{
/// 					SourceImage: pulumi.String("debian-cloud/debian-11"),
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
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_compute_instancetemplate" "instance_template" {
///   name_prefix  = "instance-template-"
///   machine_type = "e2-medium"
///   region       = "us-central1"
///   disks {
///     source_image = "debian-cloud/debian-11"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.InstanceTemplate;
/// import com.pulumi.gcp.compute.InstanceTemplateArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceTemplateDiskArgs;
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
///         var instanceTemplate = new InstanceTemplate("instanceTemplate", InstanceTemplateArgs.builder()
///             .namePrefix("instance-template-")
///             .machineType("e2-medium")
///             .region("us-central1")
///             .disks(InstanceTemplateDiskArgs.builder()
///                 .sourceImage("debian-cloud/debian-11")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   instanceTemplate:
///     type: gcp:compute:InstanceTemplate
///     name: instance_template
///     properties:
///       namePrefix: instance-template-
///       machineType: e2-medium
///       region: us-central1
///       disks:
///         - sourceImage: debian-cloud/debian-11
/// ```
///
///
/// ## Import
///
/// Instance templates can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/global/instanceTemplates/{{name}}`
/// * `{{project}}/{{name}}`
/// * `{{name}}`
///
///
/// When using the `pulumi import` command, instance templates can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/instanceTemplate:InstanceTemplate default projects/{{project}}/global/instanceTemplates/{{name}}
/// $ pulumi import gcp:compute/instanceTemplate:InstanceTemplate default {{project}}/{{name}}
/// $ pulumi import gcp:compute/instanceTemplate:InstanceTemplate default {{name}}
/// ```
class InstanceTemplate extends pulumi.CustomResource {
  /// Configure Nested Virtualisation and Simultaneous Hyper Threading on this VM. Structure is documented below
  late final pulumi.Output<InstanceTemplateAdvancedMachineFeatures?> advancedMachineFeatures;
  /// Whether to allow sending and receiving of
  /// packets with non-matching source or destination IPs. This defaults to false.
  late final pulumi.Output<bool?> canIpForward;
  /// Enable [Confidential Mode](https://cloud.google.com/compute/confidential-vm/docs/about-cvm) on this VM. Structure is documented below
  late final pulumi.Output<InstanceTemplateConfidentialInstanceConfig> confidentialInstanceConfig;
  /// Creation timestamp in RFC3339 text format.
  late final pulumi.Output<String> creationTimestamp;
  /// A brief description of this resource.
  late final pulumi.Output<String?> description;
  /// Disks to attach to instances created from this template.
  /// This can be specified multiple times for multiple disks. Structure is
  /// documented below.
  late final pulumi.Output<List<InstanceTemplateDisk>> disks;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// ) Enable [Virtual Displays](https://cloud.google.com/compute/docs/instances/enable-instance-virtual-display#verify_display_driver) on this instance.
  /// **Note**: `allowStoppingForUpdate` must be set to true in order to update this field.
  late final pulumi.Output<bool?> enableDisplay;
  /// List of the type and count of accelerator cards attached to the instance. Structure documented below.
  late final pulumi.Output<List<InstanceTemplateGuestAccelerator>?> guestAccelerators;
  /// A brief description to use for instances
  /// created from this template.
  late final pulumi.Output<String?> instanceDescription;
  /// Action to be taken when a customer's encryption key is revoked. Supports `STOP` and `NONE`, with `NONE` being the default.
  late final pulumi.Output<String?> keyRevocationActionType;
  /// A set of key/value label pairs to assign to instances
  /// created from this template.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field 'effective_labels' for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// The machine type to create.
  ///
  /// To create a machine with a [custom type](https://cloud.google.com/dataproc/docs/concepts/compute/custom-machine-types) (such as extended memory), format the value like `custom-VCPUS-MEM_IN_MB` like `custom-6-20480` for 6 vCPU and 20GB of RAM.
  ///
  /// More advanced machine types like [z3](https://cloud.google.com/compute/docs/storage-optimized-machines) will
  /// create disks that cannot be managed by Terraform by default. You can account for that by using `lifecycle.ignore_changes` or adding these disks into your config.
  ///
  /// - - -
  late final pulumi.Output<String> machineType;
  /// Metadata key/value pairs to make available from
  /// within instances created from this template.
  late final pulumi.Output<Map<String, String>?> metadata;
  /// The unique fingerprint of the metadata.
  late final pulumi.Output<String> metadataFingerprint;
  /// An alternative to using the
  /// startup-script metadata key, mostly to match the computeInstance resource.
  /// This replaces the startup-script metadata key on the created instance and
  /// thus the two mechanisms are not allowed to be used simultaneously.
  late final pulumi.Output<String?> metadataStartupScript;
  /// Specifies a minimum CPU platform. Applicable values are the friendly names of CPU platforms, such as
  /// `Intel Haswell` or `Intel Skylake`. See the complete list [here](https://cloud.google.com/compute/docs/instances/specify-min-cpu-platform).
  late final pulumi.Output<String?> minCpuPlatform;
  /// The name of the instance template. If you leave
  /// this blank, the provider will auto-generate a unique name.
  late final pulumi.Output<String> name;
  /// Creates a unique name beginning with the specified
  /// prefix. Conflicts with `name`. Max length is 54 characters.
  /// Prefixes with lengths longer than 37 characters will use a shortened
  /// UUID that will be more prone to collisions.
  ///
  /// Resulting name for a `namePrefix` &lt;= 37 characters:
  /// `namePrefix` + YYYYmmddHHSSssss + 8 digit incremental counter
  /// Resulting name for a `namePrefix` 38 - 54 characters:
  /// `namePrefix` + YYmmdd + 3 digit incremental counter
  late final pulumi.Output<String> namePrefix;
  /// Networks to attach to instances created from
  /// this template. This can be specified multiple times for multiple networks.
  /// Structure is documented below.
  late final pulumi.Output<List<InstanceTemplateNetworkInterface>?> networkInterfaces;
  /// (Optional, Configures network performance settings for the instance created from the
  /// template. Structure is documented below. **Note**: `machineType`
  /// must be a [supported type](https://cloud.google.com/compute/docs/networking/configure-vm-with-high-bandwidth-configuration),
  /// the `image` used must include the [`GVNIC`](https://cloud.google.com/compute/docs/networking/using-gvnic#create-instance-gvnic-image)
  /// in `guest-os-features`, and `network_interface.0.nic-type` must be `GVNIC`
  /// in order for this setting to take effect.
  late final pulumi.Output<InstanceTemplateNetworkPerformanceConfig?> networkPerformanceConfig;
  /// numeric identifier of the resource.
  late final pulumi.Output<String> numericId;
  /// Beta key/value pair represents partner metadata assigned to instance template where key represent a defined namespace and value is a json string represent the entries associted with the namespace.
  late final pulumi.Output<Map<String, String>?> partnerMetadata;
  /// The ID of the project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// An instance template is a global resource that is not
  /// bound to a zone or a region. However, you can still specify some regional
  /// resources in an instance template, which restricts the template to the
  /// region where that resource resides. For example, a custom `subnetwork`
  /// resource is tied to a specific region. Defaults to the region of the
  /// Provider if no value is given.
  late final pulumi.Output<String> region;
  /// Specifies the reservations that this instance can consume from.
  /// Structure is documented below.
  late final pulumi.Output<InstanceTemplateReservationAffinity?> reservationAffinity;
  /// A set of key/value resource manager tag pairs to bind to the instances. Keys must be in the format tagKeys/{tag_key_id}, and values are in the format tagValues/456.
  late final pulumi.Output<Map<String, String>?> resourceManagerTags;
  /// - A list of selfLinks of resource policies to attach to the instance. Modifying this list will cause the instance to recreate. Currently a max of 1 resource policy is supported.
  late final pulumi.Output<String?> resourcePolicies;
  /// The scheduling strategy to use. More details about
  /// this configuration option are detailed below.
  late final pulumi.Output<InstanceTemplateScheduling> scheduling;
  /// The URI of the created resource.
  late final pulumi.Output<String> selfLink;
  /// A special URI of the created resource that uniquely identifies this instance template with the following format: `projects/{{project}}/global/instanceTemplates/{{name}}?uniqueId={{uniqueId}}`
  /// Referencing an instance template via this attribute prevents Time of Check to Time of Use attacks when the instance template resides in a shared/untrusted environment.
  late final pulumi.Output<String> selfLinkUnique;
  /// Service account to attach to the instance. Structure is documented below.
  late final pulumi.Output<InstanceTemplateServiceAccount?> serviceAccount;
  /// Enable [Shielded VM](https://cloud.google.com/security/shielded-cloud/shielded-vm) on this instance. Shielded VM provides verifiable integrity to prevent against malware and rootkits. Defaults to disabled. Structure is documented below.
  /// **Note**: `shieldedInstanceConfig` can only be used with boot images with shielded vm support. See the complete list [here](https://cloud.google.com/compute/docs/images#shielded-images).
  late final pulumi.Output<InstanceTemplateShieldedInstanceConfig> shieldedInstanceConfig;
  /// Tags to attach to the instance.
  late final pulumi.Output<List<String>?> tags;
  /// The unique fingerprint of the tags.
  late final pulumi.Output<String> tagsFingerprint;
  /// Workload Identity Config. More details about
  /// this configuration option are detailed below.
  late final pulumi.Output<InstanceTemplateWorkloadIdentityConfig?> workloadIdentityConfig;

  /// Creates a new [InstanceTemplate].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [InstanceTemplate]. {@macro pulumi_compute_instance_template_instance_template_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  InstanceTemplate(
    String name, {
    InstanceTemplateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/instanceTemplate:InstanceTemplate',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.36.1').merge(options),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        ) {
    advancedMachineFeatures = registerOutput<InstanceTemplateAdvancedMachineFeatures?>('advancedMachineFeatures', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceTemplateAdvancedMachineFeatures.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    canIpForward = registerOutput<bool?>('canIpForward');
    confidentialInstanceConfig = registerOutput<InstanceTemplateConfidentialInstanceConfig>('confidentialInstanceConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceTemplateConfidentialInstanceConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    creationTimestamp = registerOutput<String>('creationTimestamp');
    description = registerOutput<String?>('description');
    disks = registerOutput<List<InstanceTemplateDisk>>('disks', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<InstanceTemplateDisk>(guardedValue, (value) => InstanceTemplateDisk.fromMap((value as Map).cast<String, dynamic>())); });
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    enableDisplay = registerOutput<bool?>('enableDisplay');
    guestAccelerators = registerOutput<List<InstanceTemplateGuestAccelerator>?>('guestAccelerators', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<InstanceTemplateGuestAccelerator>(guardedValue, (value) => InstanceTemplateGuestAccelerator.fromMap((value as Map).cast<String, dynamic>())); });
    instanceDescription = registerOutput<String?>('instanceDescription');
    keyRevocationActionType = registerOutput<String?>('keyRevocationActionType');
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    machineType = registerOutput<String>('machineType');
    metadata = registerOutput<Map<String, String>?>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    metadataFingerprint = registerOutput<String>('metadataFingerprint');
    metadataStartupScript = registerOutput<String?>('metadataStartupScript');
    minCpuPlatform = registerOutput<String?>('minCpuPlatform');
    this.name = registerOutput<String>('name');
    namePrefix = registerOutput<String>('namePrefix');
    networkInterfaces = registerOutput<List<InstanceTemplateNetworkInterface>?>('networkInterfaces', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<InstanceTemplateNetworkInterface>(guardedValue, (value) => InstanceTemplateNetworkInterface.fromMap((value as Map).cast<String, dynamic>())); });
    networkPerformanceConfig = registerOutput<InstanceTemplateNetworkPerformanceConfig?>('networkPerformanceConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceTemplateNetworkPerformanceConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    numericId = registerOutput<String>('numericId');
    partnerMetadata = registerOutput<Map<String, String>?>('partnerMetadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    region = registerOutput<String>('region');
    reservationAffinity = registerOutput<InstanceTemplateReservationAffinity?>('reservationAffinity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceTemplateReservationAffinity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    resourceManagerTags = registerOutput<Map<String, String>?>('resourceManagerTags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    resourcePolicies = registerOutput<String?>('resourcePolicies');
    scheduling = registerOutput<InstanceTemplateScheduling>('scheduling', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceTemplateScheduling.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    selfLink = registerOutput<String>('selfLink');
    selfLinkUnique = registerOutput<String>('selfLinkUnique');
    serviceAccount = registerOutput<InstanceTemplateServiceAccount?>('serviceAccount', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceTemplateServiceAccount.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    shieldedInstanceConfig = registerOutput<InstanceTemplateShieldedInstanceConfig>('shieldedInstanceConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceTemplateShieldedInstanceConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<List<String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    tagsFingerprint = registerOutput<String>('tagsFingerprint');
    workloadIdentityConfig = registerOutput<InstanceTemplateWorkloadIdentityConfig?>('workloadIdentityConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceTemplateWorkloadIdentityConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [InstanceTemplate] resource's state with the given [name] and [id].
  static InstanceTemplate get(
    String name,
    pulumi.Input<String> id, {
    InstanceTemplateState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return InstanceTemplate._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  InstanceTemplate._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/instanceTemplate:InstanceTemplate',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    advancedMachineFeatures = registerOutput<InstanceTemplateAdvancedMachineFeatures?>('advancedMachineFeatures', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceTemplateAdvancedMachineFeatures.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    canIpForward = registerOutput<bool?>('canIpForward');
    confidentialInstanceConfig = registerOutput<InstanceTemplateConfidentialInstanceConfig>('confidentialInstanceConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceTemplateConfidentialInstanceConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    creationTimestamp = registerOutput<String>('creationTimestamp');
    description = registerOutput<String?>('description');
    disks = registerOutput<List<InstanceTemplateDisk>>('disks', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<InstanceTemplateDisk>(guardedValue, (value) => InstanceTemplateDisk.fromMap((value as Map).cast<String, dynamic>())); });
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    enableDisplay = registerOutput<bool?>('enableDisplay');
    guestAccelerators = registerOutput<List<InstanceTemplateGuestAccelerator>?>('guestAccelerators', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<InstanceTemplateGuestAccelerator>(guardedValue, (value) => InstanceTemplateGuestAccelerator.fromMap((value as Map).cast<String, dynamic>())); });
    instanceDescription = registerOutput<String?>('instanceDescription');
    keyRevocationActionType = registerOutput<String?>('keyRevocationActionType');
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    machineType = registerOutput<String>('machineType');
    metadata = registerOutput<Map<String, String>?>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    metadataFingerprint = registerOutput<String>('metadataFingerprint');
    metadataStartupScript = registerOutput<String?>('metadataStartupScript');
    minCpuPlatform = registerOutput<String?>('minCpuPlatform');
    this.name = registerOutput<String>('name');
    namePrefix = registerOutput<String>('namePrefix');
    networkInterfaces = registerOutput<List<InstanceTemplateNetworkInterface>?>('networkInterfaces', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<InstanceTemplateNetworkInterface>(guardedValue, (value) => InstanceTemplateNetworkInterface.fromMap((value as Map).cast<String, dynamic>())); });
    networkPerformanceConfig = registerOutput<InstanceTemplateNetworkPerformanceConfig?>('networkPerformanceConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceTemplateNetworkPerformanceConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    numericId = registerOutput<String>('numericId');
    partnerMetadata = registerOutput<Map<String, String>?>('partnerMetadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    region = registerOutput<String>('region');
    reservationAffinity = registerOutput<InstanceTemplateReservationAffinity?>('reservationAffinity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceTemplateReservationAffinity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    resourceManagerTags = registerOutput<Map<String, String>?>('resourceManagerTags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    resourcePolicies = registerOutput<String?>('resourcePolicies');
    scheduling = registerOutput<InstanceTemplateScheduling>('scheduling', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceTemplateScheduling.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    selfLink = registerOutput<String>('selfLink');
    selfLinkUnique = registerOutput<String>('selfLinkUnique');
    serviceAccount = registerOutput<InstanceTemplateServiceAccount?>('serviceAccount', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceTemplateServiceAccount.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    shieldedInstanceConfig = registerOutput<InstanceTemplateShieldedInstanceConfig>('shieldedInstanceConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceTemplateShieldedInstanceConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<List<String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    tagsFingerprint = registerOutput<String>('tagsFingerprint');
    workloadIdentityConfig = registerOutput<InstanceTemplateWorkloadIdentityConfig?>('workloadIdentityConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceTemplateWorkloadIdentityConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [InstanceTemplate] resource.
  InstanceTemplate.reference(String urn)
    : super(
        'gcp:compute/instanceTemplate:InstanceTemplate',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        isResourceReference: true,
      ) {
    advancedMachineFeatures = registerOutput<InstanceTemplateAdvancedMachineFeatures?>('advancedMachineFeatures', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceTemplateAdvancedMachineFeatures.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    canIpForward = registerOutput<bool?>('canIpForward');
    confidentialInstanceConfig = registerOutput<InstanceTemplateConfidentialInstanceConfig>('confidentialInstanceConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceTemplateConfidentialInstanceConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    creationTimestamp = registerOutput<String>('creationTimestamp');
    description = registerOutput<String?>('description');
    disks = registerOutput<List<InstanceTemplateDisk>>('disks', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<InstanceTemplateDisk>(guardedValue, (value) => InstanceTemplateDisk.fromMap((value as Map).cast<String, dynamic>())); });
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    enableDisplay = registerOutput<bool?>('enableDisplay');
    guestAccelerators = registerOutput<List<InstanceTemplateGuestAccelerator>?>('guestAccelerators', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<InstanceTemplateGuestAccelerator>(guardedValue, (value) => InstanceTemplateGuestAccelerator.fromMap((value as Map).cast<String, dynamic>())); });
    instanceDescription = registerOutput<String?>('instanceDescription');
    keyRevocationActionType = registerOutput<String?>('keyRevocationActionType');
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    machineType = registerOutput<String>('machineType');
    metadata = registerOutput<Map<String, String>?>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    metadataFingerprint = registerOutput<String>('metadataFingerprint');
    metadataStartupScript = registerOutput<String?>('metadataStartupScript');
    minCpuPlatform = registerOutput<String?>('minCpuPlatform');
    this.name = registerOutput<String>('name');
    namePrefix = registerOutput<String>('namePrefix');
    networkInterfaces = registerOutput<List<InstanceTemplateNetworkInterface>?>('networkInterfaces', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<InstanceTemplateNetworkInterface>(guardedValue, (value) => InstanceTemplateNetworkInterface.fromMap((value as Map).cast<String, dynamic>())); });
    networkPerformanceConfig = registerOutput<InstanceTemplateNetworkPerformanceConfig?>('networkPerformanceConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceTemplateNetworkPerformanceConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    numericId = registerOutput<String>('numericId');
    partnerMetadata = registerOutput<Map<String, String>?>('partnerMetadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    region = registerOutput<String>('region');
    reservationAffinity = registerOutput<InstanceTemplateReservationAffinity?>('reservationAffinity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceTemplateReservationAffinity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    resourceManagerTags = registerOutput<Map<String, String>?>('resourceManagerTags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    resourcePolicies = registerOutput<String?>('resourcePolicies');
    scheduling = registerOutput<InstanceTemplateScheduling>('scheduling', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceTemplateScheduling.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    selfLink = registerOutput<String>('selfLink');
    selfLinkUnique = registerOutput<String>('selfLinkUnique');
    serviceAccount = registerOutput<InstanceTemplateServiceAccount?>('serviceAccount', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceTemplateServiceAccount.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    shieldedInstanceConfig = registerOutput<InstanceTemplateShieldedInstanceConfig>('shieldedInstanceConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceTemplateShieldedInstanceConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<List<String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    tagsFingerprint = registerOutput<String>('tagsFingerprint');
    workloadIdentityConfig = registerOutput<InstanceTemplateWorkloadIdentityConfig?>('workloadIdentityConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceTemplateWorkloadIdentityConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
