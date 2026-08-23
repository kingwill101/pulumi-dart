import 'package:pulumi/pulumi.dart' as pulumi;
import 'region_instance_template_advanced_machine_features.dart';
import 'region_instance_template_args.dart';
import 'region_instance_template_confidential_instance_config.dart';
import 'region_instance_template_network_performance_config.dart';
import 'region_instance_template_reservation_affinity.dart';
import 'region_instance_template_scheduling.dart';
import 'region_instance_template_service_account.dart';
import 'region_instance_template_shielded_instance_config.dart';
import 'region_instance_template_state.dart';
import 'region_instance_template_workload_identity_config.dart';

/// Manages a VM instance template resource within GCE. For more information see
/// [the official documentation](https://cloud.google.com/compute/docs/instance-templates)
/// and
/// [API](https://cloud.google.com/compute/docs/reference/rest/v1/regionInstanceTemplates).
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
/// const disk = new gcp.compute.Disk("disk", {
///     name: "foo",
///     image: myImage.then(myImage => myImage.selfLink),
///     size: 10,
///     type: "pd-ssd",
///     zone: "us-central1-a",
/// });
/// const snapDisk = new gcp.compute.Snapshot("snap_disk", {
///     name: "snapDisk",
///     sourceDisk: disk.name,
///     zone: "us-central1-a",
/// });
/// const foobar = new gcp.compute.RegionDisk("foobar", {
///     name: "existing-disk",
///     snapshot: snapDisk.id,
///     type: "pd-ssd",
///     region: "us-central1",
///     physicalBlockSizeBytes: 4096,
///     replicaZones: [
///         "us-central1-a",
///         "us-central1-f",
///     ],
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
/// const defaultRegionInstanceTemplate = new gcp.compute.RegionInstanceTemplate("default", {
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
///             source: foobar.selfLink,
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
/// disk = gcp.compute.Disk("disk",
///     name="foo",
///     image=my_image.self_link,
///     size=10,
///     type="pd-ssd",
///     zone="us-central1-a")
/// snap_disk = gcp.compute.Snapshot("snap_disk",
///     name="snapDisk",
///     source_disk=disk.name,
///     zone="us-central1-a")
/// foobar = gcp.compute.RegionDisk("foobar",
///     name="existing-disk",
///     snapshot=snap_disk.id,
///     type="pd-ssd",
///     region="us-central1",
///     physical_block_size_bytes=4096,
///     replica_zones=[
///         "us-central1-a",
///         "us-central1-f",
///     ])
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
/// default_region_instance_template = gcp.compute.RegionInstanceTemplate("default",
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
///             "source": foobar.self_link,
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
///     var disk = new Gcp.Compute.Disk("disk", new()
///     {
///         Name = "foo",
///         Image = myImage.Apply(getImageResult => getImageResult.SelfLink),
///         Size = 10,
///         Type = "pd-ssd",
///         Zone = "us-central1-a",
///     });
///
///     var snapDisk = new Gcp.Compute.Snapshot("snap_disk", new()
///     {
///         Name = "snapDisk",
///         SourceDisk = disk.Name,
///         Zone = "us-central1-a",
///     });
///
///     var foobar = new Gcp.Compute.RegionDisk("foobar", new()
///     {
///         Name = "existing-disk",
///         Snapshot = snapDisk.Id,
///         Type = "pd-ssd",
///         Region = "us-central1",
///         PhysicalBlockSizeBytes = 4096,
///         ReplicaZones = new[]
///         {
///             "us-central1-a",
///             "us-central1-f",
///         },
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
///     var defaultRegionInstanceTemplate = new Gcp.Compute.RegionInstanceTemplate("default", new()
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
///         Scheduling = new Gcp.Compute.Inputs.RegionInstanceTemplateSchedulingArgs
///         {
///             AutomaticRestart = true,
///             OnHostMaintenance = "MIGRATE",
///         },
///         Disks = new[]
///         {
///             new Gcp.Compute.Inputs.RegionInstanceTemplateDiskArgs
///             {
///                 SourceImage = "debian-cloud/debian-11",
///                 AutoDelete = true,
///                 Boot = true,
///                 ResourcePolicies = dailyBackup.Id,
///             },
///             new Gcp.Compute.Inputs.RegionInstanceTemplateDiskArgs
///             {
///                 Source = foobar.SelfLink,
///                 AutoDelete = false,
///                 Boot = false,
///             },
///         },
///         NetworkInterfaces = new[]
///         {
///             new Gcp.Compute.Inputs.RegionInstanceTemplateNetworkInterfaceArgs
///             {
///                 Network = "default",
///             },
///         },
///         Metadata =
///         {
///             { "foo", "bar" },
///         },
///         ServiceAccount = new Gcp.Compute.Inputs.RegionInstanceTemplateServiceAccountArgs
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
/// 		disk, err := compute.NewDisk(ctx, "disk", &compute.DiskArgs{
/// 			Name:  pulumi.String("foo"),
/// 			Image: pulumi.String(myImage.SelfLink),
/// 			Size:  pulumi.Int(10),
/// 			Type:  pulumi.String("pd-ssd"),
/// 			Zone:  pulumi.String("us-central1-a"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		snapDisk, err := compute.NewSnapshot(ctx, "snap_disk", &compute.SnapshotArgs{
/// 			Name:       pulumi.String("snapDisk"),
/// 			SourceDisk: disk.Name,
/// 			Zone:       pulumi.String("us-central1-a"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		foobar, err := compute.NewRegionDisk(ctx, "foobar", &compute.RegionDiskArgs{
/// 			Name:                   pulumi.String("existing-disk"),
/// 			Snapshot:               snapDisk.ID().ToIDOutput().ToStringOutput(),
/// 			Type:                   pulumi.String("pd-ssd"),
/// 			Region:                 pulumi.String("us-central1"),
/// 			PhysicalBlockSizeBytes: pulumi.Int(4096),
/// 			ReplicaZones: pulumi.StringArray{
/// 				pulumi.String("us-central1-a"),
/// 				pulumi.String("us-central1-f"),
/// 			},
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
/// 		_, err = compute.NewRegionInstanceTemplate(ctx, "default", &compute.RegionInstanceTemplateArgs{
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
/// 			Scheduling: &compute.RegionInstanceTemplateSchedulingArgs{
/// 				AutomaticRestart:  pulumi.Bool(true),
/// 				OnHostMaintenance: pulumi.String("MIGRATE"),
/// 			},
/// 			Disks: compute.RegionInstanceTemplateDiskArray{
/// 				&compute.RegionInstanceTemplateDiskArgs{
/// 					SourceImage:      pulumi.String("debian-cloud/debian-11"),
/// 					AutoDelete:       pulumi.Bool(true),
/// 					Boot:             pulumi.Bool(true),
/// 					ResourcePolicies: dailyBackup.ID().ToIDOutput().ToStringOutput(),
/// 				},
/// 				&compute.RegionInstanceTemplateDiskArgs{
/// 					Source:     foobar.SelfLink,
/// 					AutoDelete: pulumi.Bool(false),
/// 					Boot:       pulumi.Bool(false),
/// 				},
/// 			},
/// 			NetworkInterfaces: compute.RegionInstanceTemplateNetworkInterfaceArray{
/// 				&compute.RegionInstanceTemplateNetworkInterfaceArgs{
/// 					Network: pulumi.String("default"),
/// 				},
/// 			},
/// 			Metadata: pulumi.StringMap{
/// 				"foo": pulumi.String("bar"),
/// 			},
/// 			ServiceAccount: &compute.RegionInstanceTemplateServiceAccountArgs{
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
/// resource "gcp_compute_regioninstancetemplate" "default" {
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
///     source      = gcp_compute_regiondisk.foobar.self_link
///     auto_delete = false
///     boot        = false
///   }
///   // backup the disk every day
///   // backup the disk every day
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
/// resource "gcp_compute_regiondisk" "foobar" {
///   name                      = "existing-disk"
///   snapshot                  = gcp_compute_snapshot.snap_disk.id
///   type                      = "pd-ssd"
///   region                    = "us-central1"
///   physical_block_size_bytes = 4096
///   replica_zones             = ["us-central1-a", "us-central1-f"]
/// }
/// resource "gcp_compute_disk" "disk" {
///   name  = "foo"
///   image = data.gcp_compute_getimage.myImage.self_link
///   size  = 10
///   type  = "pd-ssd"
///   zone  = "us-central1-a"
/// }
/// resource "gcp_compute_snapshot" "snap_disk" {
///   name        = "snapDisk"
///   source_disk = gcp_compute_disk.disk.name
///   zone        = "us-central1-a"
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
/// import com.pulumi.gcp.compute.Snapshot;
/// import com.pulumi.gcp.compute.SnapshotArgs;
/// import com.pulumi.gcp.compute.RegionDisk;
/// import com.pulumi.gcp.compute.RegionDiskArgs;
/// import com.pulumi.gcp.compute.ResourcePolicy;
/// import com.pulumi.gcp.compute.ResourcePolicyArgs;
/// import com.pulumi.gcp.compute.inputs.ResourcePolicySnapshotSchedulePolicyArgs;
/// import com.pulumi.gcp.compute.inputs.ResourcePolicySnapshotSchedulePolicyScheduleArgs;
/// import com.pulumi.gcp.compute.inputs.ResourcePolicySnapshotSchedulePolicyScheduleDailyScheduleArgs;
/// import com.pulumi.gcp.compute.RegionInstanceTemplate;
/// import com.pulumi.gcp.compute.RegionInstanceTemplateArgs;
/// import com.pulumi.gcp.compute.inputs.RegionInstanceTemplateSchedulingArgs;
/// import com.pulumi.gcp.compute.inputs.RegionInstanceTemplateDiskArgs;
/// import com.pulumi.gcp.compute.inputs.RegionInstanceTemplateNetworkInterfaceArgs;
/// import com.pulumi.gcp.compute.inputs.RegionInstanceTemplateServiceAccountArgs;
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
///         var disk = new Disk("disk", DiskArgs.builder()
///             .name("foo")
///             .image(myImage.selfLink())
///             .size(10)
///             .type("pd-ssd")
///             .zone("us-central1-a")
///             .build());
///
///         var snapDisk = new Snapshot("snapDisk", SnapshotArgs.builder()
///             .name("snapDisk")
///             .sourceDisk(disk.name())
///             .zone("us-central1-a")
///             .build());
///
///         var foobar = new RegionDisk("foobar", RegionDiskArgs.builder()
///             .name("existing-disk")
///             .snapshot(snapDisk.id())
///             .type("pd-ssd")
///             .region("us-central1")
///             .physicalBlockSizeBytes(4096)
///             .replicaZones(
///                 "us-central1-a",
///                 "us-central1-f")
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
///         var defaultRegionInstanceTemplate = new RegionInstanceTemplate("defaultRegionInstanceTemplate", RegionInstanceTemplateArgs.builder()
///             .name("appserver-template")
///             .description("This template is used to create app server instances.")
///             .tags(
///                 "foo",
///                 "bar")
///             .labels(Map.of("environment", "dev"))
///             .instanceDescription("description assigned to instances")
///             .machineType("e2-medium")
///             .canIpForward(false)
///             .scheduling(RegionInstanceTemplateSchedulingArgs.builder()
///                 .automaticRestart(true)
///                 .onHostMaintenance("MIGRATE")
///                 .build())
///             .disks(
///                 RegionInstanceTemplateDiskArgs.builder()
///                     .sourceImage("debian-cloud/debian-11")
///                     .autoDelete(true)
///                     .boot(true)
///                     .resourcePolicies(dailyBackup.id())
///                     .build(),
///                 RegionInstanceTemplateDiskArgs.builder()
///                     .source(foobar.selfLink())
///                     .autoDelete(false)
///                     .boot(false)
///                     .build())
///             .networkInterfaces(RegionInstanceTemplateNetworkInterfaceArgs.builder()
///                 .network("default")
///                 .build())
///             .metadata(Map.of("foo", "bar"))
///             .serviceAccount(RegionInstanceTemplateServiceAccountArgs.builder()
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
///   defaultRegionInstanceTemplate:
///     type: gcp:compute:RegionInstanceTemplate
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
///         - source: ${foobar.selfLink}
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
///     type: gcp:compute:RegionDisk
///     properties:
///       name: existing-disk
///       snapshot: ${snapDisk.id}
///       type: pd-ssd
///       region: us-central1
///       physicalBlockSizeBytes: 4096
///       replicaZones:
///         - us-central1-a
///         - us-central1-f
///   disk:
///     type: gcp:compute:Disk
///     properties:
///       name: foo
///       image: ${myImage.selfLink}
///       size: 10
///       type: pd-ssd
///       zone: us-central1-a
///   snapDisk:
///     type: gcp:compute:Snapshot
///     name: snap_disk
///     properties:
///       name: snapDisk
///       sourceDisk: ${disk.name}
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
/// const foobar = new gcp.compute.RegionInstanceTemplate("foobar", {
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
/// foobar = gcp.compute.RegionInstanceTemplate("foobar",
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
///     var foobar = new Gcp.Compute.RegionInstanceTemplate("foobar", new()
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
///             new Gcp.Compute.Inputs.RegionInstanceTemplateDiskArgs
///             {
///                 SourceImage = myImage.Apply(getImageResult => getImageResult.SelfLink),
///                 AutoDelete = true,
///                 Boot = true,
///             },
///         },
///         NetworkInterfaces = new[]
///         {
///             new Gcp.Compute.Inputs.RegionInstanceTemplateNetworkInterfaceArgs
///             {
///                 Network = "default",
///             },
///         },
///         Scheduling = new Gcp.Compute.Inputs.RegionInstanceTemplateSchedulingArgs
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
///         ServiceAccount = new Gcp.Compute.Inputs.RegionInstanceTemplateServiceAccountArgs
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
/// 		_, err = compute.NewRegionInstanceTemplate(ctx, "foobar", &compute.RegionInstanceTemplateArgs{
/// 			Name:         pulumi.String("appserver-template"),
/// 			MachineType:  pulumi.String("e2-medium"),
/// 			CanIpForward: pulumi.Bool(false),
/// 			Tags: pulumi.StringArray{
/// 				pulumi.String("foo"),
/// 				pulumi.String("bar"),
/// 			},
/// 			Disks: compute.RegionInstanceTemplateDiskArray{
/// 				&compute.RegionInstanceTemplateDiskArgs{
/// 					SourceImage: pulumi.String(myImage.SelfLink),
/// 					AutoDelete:  pulumi.Bool(true),
/// 					Boot:        pulumi.Bool(true),
/// 				},
/// 			},
/// 			NetworkInterfaces: compute.RegionInstanceTemplateNetworkInterfaceArray{
/// 				&compute.RegionInstanceTemplateNetworkInterfaceArgs{
/// 					Network: pulumi.String("default"),
/// 				},
/// 			},
/// 			Scheduling: &compute.RegionInstanceTemplateSchedulingArgs{
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
/// 			ServiceAccount: &compute.RegionInstanceTemplateServiceAccountArgs{
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
/// resource "gcp_compute_regioninstancetemplate" "foobar" {
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
/// import com.pulumi.gcp.compute.RegionInstanceTemplate;
/// import com.pulumi.gcp.compute.RegionInstanceTemplateArgs;
/// import com.pulumi.gcp.compute.inputs.RegionInstanceTemplateDiskArgs;
/// import com.pulumi.gcp.compute.inputs.RegionInstanceTemplateNetworkInterfaceArgs;
/// import com.pulumi.gcp.compute.inputs.RegionInstanceTemplateSchedulingArgs;
/// import com.pulumi.gcp.compute.inputs.RegionInstanceTemplateServiceAccountArgs;
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
///         var foobar = new RegionInstanceTemplate("foobar", RegionInstanceTemplateArgs.builder()
///             .name("appserver-template")
///             .machineType("e2-medium")
///             .canIpForward(false)
///             .tags(
///                 "foo",
///                 "bar")
///             .disks(RegionInstanceTemplateDiskArgs.builder()
///                 .sourceImage(myImage.selfLink())
///                 .autoDelete(true)
///                 .boot(true)
///                 .build())
///             .networkInterfaces(RegionInstanceTemplateNetworkInterfaceArgs.builder()
///                 .network("default")
///                 .build())
///             .scheduling(RegionInstanceTemplateSchedulingArgs.builder()
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
///             .serviceAccount(RegionInstanceTemplateServiceAccountArgs.builder()
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
///     type: gcp:compute:RegionInstanceTemplate
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
/// ## Deploying the Latest Image
///
/// A common way to use instance templates and managed instance groups is to deploy the
/// latest image in a family, usually the latest build of your application. There are two
/// ways to do this in Terraform, and they have their pros and cons. The difference ends
/// up being in how "latest" is interpreted. You can either deploy the latest image available
/// when Terraform runs, or you can have each instance check what the latest image is when
/// it's being created, either as part of a scaling event or being rebuilt by the instance
/// group manager.
///
/// If you're not sure, we recommend deploying the latest image available when Terraform runs,
/// because this means all the instances in your group will be based on the same image, always,
/// and means that no upgrades or changes to your instances happen outside of a `pulumi up`.
/// You can achieve this by using the `gcp.compute.Image`
/// data source, which will retrieve the latest image on every `pulumi up`, and will update
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
/// const instanceTemplate = new gcp.compute.RegionInstanceTemplate("instance_template", {
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
/// instance_template = gcp.compute.RegionInstanceTemplate("instance_template",
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
///     var instanceTemplate = new Gcp.Compute.RegionInstanceTemplate("instance_template", new()
///     {
///         NamePrefix = "instance-template-",
///         MachineType = "e2-medium",
///         Region = "us-central1",
///         Disks = new[]
///         {
///             new Gcp.Compute.Inputs.RegionInstanceTemplateDiskArgs
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
/// 		_, err = compute.NewRegionInstanceTemplate(ctx, "instance_template", &compute.RegionInstanceTemplateArgs{
/// 			NamePrefix:  pulumi.String("instance-template-"),
/// 			MachineType: pulumi.String("e2-medium"),
/// 			Region:      pulumi.String("us-central1"),
/// 			Disks: compute.RegionInstanceTemplateDiskArray{
/// 				&compute.RegionInstanceTemplateDiskArgs{
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
/// resource "gcp_compute_regioninstancetemplate" "instance_template" {
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
/// import com.pulumi.gcp.compute.RegionInstanceTemplate;
/// import com.pulumi.gcp.compute.RegionInstanceTemplateArgs;
/// import com.pulumi.gcp.compute.inputs.RegionInstanceTemplateDiskArgs;
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
///         var instanceTemplate = new RegionInstanceTemplate("instanceTemplate", RegionInstanceTemplateArgs.builder()
///             .namePrefix("instance-template-")
///             .machineType("e2-medium")
///             .region("us-central1")
///             .disks(RegionInstanceTemplateDiskArgs.builder()
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
///     type: gcp:compute:RegionInstanceTemplate
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
/// const instanceTemplate = new gcp.compute.RegionInstanceTemplate("instance_template", {
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
/// instance_template = gcp.compute.RegionInstanceTemplate("instance_template",
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
///     var instanceTemplate = new Gcp.Compute.RegionInstanceTemplate("instance_template", new()
///     {
///         NamePrefix = "instance-template-",
///         MachineType = "e2-medium",
///         Region = "us-central1",
///         Disks = new[]
///         {
///             new Gcp.Compute.Inputs.RegionInstanceTemplateDiskArgs
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
/// 		_, err := compute.NewRegionInstanceTemplate(ctx, "instance_template", &compute.RegionInstanceTemplateArgs{
/// 			NamePrefix:  pulumi.String("instance-template-"),
/// 			MachineType: pulumi.String("e2-medium"),
/// 			Region:      pulumi.String("us-central1"),
/// 			Disks: compute.RegionInstanceTemplateDiskArray{
/// 				&compute.RegionInstanceTemplateDiskArgs{
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
/// resource "gcp_compute_regioninstancetemplate" "instance_template" {
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
/// import com.pulumi.gcp.compute.RegionInstanceTemplate;
/// import com.pulumi.gcp.compute.RegionInstanceTemplateArgs;
/// import com.pulumi.gcp.compute.inputs.RegionInstanceTemplateDiskArgs;
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
///         var instanceTemplate = new RegionInstanceTemplate("instanceTemplate", RegionInstanceTemplateArgs.builder()
///             .namePrefix("instance-template-")
///             .machineType("e2-medium")
///             .region("us-central1")
///             .disks(RegionInstanceTemplateDiskArgs.builder()
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
///     type: gcp:compute:RegionInstanceTemplate
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
/// * `projects/{{project}}/regions/{{region}}/instanceTemplates/{{name}}`
/// * `{{project}}/{{name}}`
/// * `{{name}}`
///
///
/// When using the `pulumi import` command, instance templates can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/regionInstanceTemplate:RegionInstanceTemplate default projects/{{project}}/regions/{{region}}/instanceTemplates/{{name}}
/// $ pulumi import gcp:compute/regionInstanceTemplate:RegionInstanceTemplate default {{project}}/{{name}}
/// $ pulumi import gcp:compute/regionInstanceTemplate:RegionInstanceTemplate default {{name}}
/// ```
class RegionInstanceTemplate extends pulumi.CustomResource {
  /// Configure Nested Virtualisation and Simultaneous Hyper Threading on this VM. Structure is documented below
  late final pulumi.Output<RegionInstanceTemplateAdvancedMachineFeatures?> advancedMachineFeatures;
  /// Whether to allow sending and receiving of
  /// packets with non-matching source or destination IPs. This defaults to false.
  late final pulumi.Output<bool?> canIpForward;
  /// Enable [Confidential Mode](https://cloud.google.com/compute/confidential-vm/docs/about-cvm) on this VM. Structure is documented below
  late final pulumi.Output<RegionInstanceTemplateConfidentialInstanceConfig> confidentialInstanceConfig;
  /// Creation timestamp in RFC3339 text format.
  late final pulumi.Output<String> creationTimestamp;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to "DELETE".
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// A brief description of this resource.
  late final pulumi.Output<String?> description;
  /// Disks to attach to instances created from this template.
  /// This can be specified multiple times for multiple disks. Structure is
  /// documented below.
  late final pulumi.Output<List<Map<String, dynamic>>> disks;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// Enable [Virtual Displays](https://cloud.google.com/compute/docs/instances/enable-instance-virtual-display#verify_display_driver) on this instance.
  /// **Note**: `allowStoppingForUpdate` must be set to true in order to update this field.
  late final pulumi.Output<bool?> enableDisplay;
  /// List of the type and count of accelerator cards attached to the instance. Structure documented below.
  late final pulumi.Output<List<Map<String, dynamic>>?> guestAccelerators;
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
  /// this blank, Terraform will auto-generate a unique name.
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
  late final pulumi.Output<List<Map<String, dynamic>>?> networkInterfaces;
  /// Configures network performance settings for the instance created from the
  /// template. Structure is documented below. **Note**: `machineType`
  /// must be a [supported type](https://cloud.google.com/compute/docs/networking/configure-vm-with-high-bandwidth-configuration),
  /// the `image` used must include the [`GVNIC`](https://cloud.google.com/compute/docs/networking/using-gvnic#create-instance-gvnic-image)
  /// in `guest-os-features`, and `network_interface.0.nic-type` must be `GVNIC`
  /// in order for this setting to take effect.
  late final pulumi.Output<RegionInstanceTemplateNetworkPerformanceConfig?> networkPerformanceConfig;
  /// numeric identifier of the resource.
  late final pulumi.Output<String> numericId;
  /// Beta key/value pair represents partner metadata assigned to instance template where key represent a defined namespace and value is a json string represent the entries associted with the namespace.
  late final pulumi.Output<Map<String, String>?> partnerMetadata;
  /// The ID of the project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// The Region in which the resource belongs.
  /// If region is not provided, the provider region is used.
  late final pulumi.Output<String> region;
  /// Specifies the reservations that this instance can consume from.
  /// Structure is documented below.
  late final pulumi.Output<RegionInstanceTemplateReservationAffinity?> reservationAffinity;
  /// A set of key/value resource manager tag pairs to bind to the instance. Keys must be in the format tagKeys/{tag_key_id}, and values are in the format tagValues/456.
  late final pulumi.Output<Map<String, String>?> resourceManagerTags;
  /// - A list of selfLinks of resource policies to attach to the instance. Modifying this list will cause the instance to recreate. Currently a max of 1 resource policy is supported.
  late final pulumi.Output<String?> resourcePolicies;
  /// The scheduling strategy to use. More details about
  /// this configuration option are detailed below.
  late final pulumi.Output<RegionInstanceTemplateScheduling> scheduling;
  /// The URI of the created resource.
  late final pulumi.Output<String> selfLink;
  /// Service account to attach to the instance. Structure is documented below.
  late final pulumi.Output<RegionInstanceTemplateServiceAccount?> serviceAccount;
  /// Enable [Shielded VM](https://cloud.google.com/security/shielded-cloud/shielded-vm) on this instance. Shielded VM provides verifiable integrity to prevent against malware and rootkits. Defaults to disabled. Structure is documented below.
  /// **Note**: `shieldedInstanceConfig` can only be used with boot images with shielded vm support. See the complete list [here](https://cloud.google.com/compute/docs/images#shielded-images).
  late final pulumi.Output<RegionInstanceTemplateShieldedInstanceConfig> shieldedInstanceConfig;
  /// Tags to attach to the instance.
  late final pulumi.Output<List<String>?> tags;
  /// The unique fingerprint of the tags.
  late final pulumi.Output<String> tagsFingerprint;
  /// Workload Identity Config. More details about
  /// this configuration option are detailed below.
  late final pulumi.Output<RegionInstanceTemplateWorkloadIdentityConfig?> workloadIdentityConfig;

  /// Creates a new [RegionInstanceTemplate].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RegionInstanceTemplate]. {@macro pulumi_compute_region_instance_template_region_instance_template_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RegionInstanceTemplate(
    String name, {
    RegionInstanceTemplateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/regionInstanceTemplate:RegionInstanceTemplate',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    advancedMachineFeatures = registerOutput<RegionInstanceTemplateAdvancedMachineFeatures?>('advancedMachineFeatures', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RegionInstanceTemplateAdvancedMachineFeatures.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    canIpForward = registerOutput<bool?>('canIpForward');
    confidentialInstanceConfig = registerOutput<RegionInstanceTemplateConfidentialInstanceConfig>('confidentialInstanceConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RegionInstanceTemplateConfidentialInstanceConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    creationTimestamp = registerOutput<String>('creationTimestamp');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    disks = registerOutput<List<Map<String, dynamic>>>('disks');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    enableDisplay = registerOutput<bool?>('enableDisplay');
    guestAccelerators = registerOutput<List<Map<String, dynamic>>?>('guestAccelerators');
    instanceDescription = registerOutput<String?>('instanceDescription');
    keyRevocationActionType = registerOutput<String?>('keyRevocationActionType');
    labels = registerOutput<Map<String, String>?>('labels');
    machineType = registerOutput<String>('machineType');
    metadata = registerOutput<Map<String, String>?>('metadata');
    metadataFingerprint = registerOutput<String>('metadataFingerprint');
    metadataStartupScript = registerOutput<String?>('metadataStartupScript');
    minCpuPlatform = registerOutput<String?>('minCpuPlatform');
    this.name = registerOutput<String>('name');
    namePrefix = registerOutput<String>('namePrefix');
    networkInterfaces = registerOutput<List<Map<String, dynamic>>?>('networkInterfaces');
    networkPerformanceConfig = registerOutput<RegionInstanceTemplateNetworkPerformanceConfig?>('networkPerformanceConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RegionInstanceTemplateNetworkPerformanceConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    numericId = registerOutput<String>('numericId');
    partnerMetadata = registerOutput<Map<String, String>?>('partnerMetadata');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    region = registerOutput<String>('region');
    reservationAffinity = registerOutput<RegionInstanceTemplateReservationAffinity?>('reservationAffinity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RegionInstanceTemplateReservationAffinity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    resourceManagerTags = registerOutput<Map<String, String>?>('resourceManagerTags');
    resourcePolicies = registerOutput<String?>('resourcePolicies');
    scheduling = registerOutput<RegionInstanceTemplateScheduling>('scheduling', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RegionInstanceTemplateScheduling.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    selfLink = registerOutput<String>('selfLink');
    serviceAccount = registerOutput<RegionInstanceTemplateServiceAccount?>('serviceAccount', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RegionInstanceTemplateServiceAccount.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    shieldedInstanceConfig = registerOutput<RegionInstanceTemplateShieldedInstanceConfig>('shieldedInstanceConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RegionInstanceTemplateShieldedInstanceConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<List<String>?>('tags');
    tagsFingerprint = registerOutput<String>('tagsFingerprint');
    workloadIdentityConfig = registerOutput<RegionInstanceTemplateWorkloadIdentityConfig?>('workloadIdentityConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RegionInstanceTemplateWorkloadIdentityConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [RegionInstanceTemplate] resource's state with the given [name] and [id].
  static RegionInstanceTemplate get(
    String name,
    pulumi.Input<String> id, {
    RegionInstanceTemplateState? state,
  }) {
    return RegionInstanceTemplate._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  RegionInstanceTemplate._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/regionInstanceTemplate:RegionInstanceTemplate',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    advancedMachineFeatures = registerOutput<RegionInstanceTemplateAdvancedMachineFeatures?>('advancedMachineFeatures', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RegionInstanceTemplateAdvancedMachineFeatures.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    canIpForward = registerOutput<bool?>('canIpForward');
    confidentialInstanceConfig = registerOutput<RegionInstanceTemplateConfidentialInstanceConfig>('confidentialInstanceConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RegionInstanceTemplateConfidentialInstanceConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    creationTimestamp = registerOutput<String>('creationTimestamp');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    disks = registerOutput<List<Map<String, dynamic>>>('disks');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    enableDisplay = registerOutput<bool?>('enableDisplay');
    guestAccelerators = registerOutput<List<Map<String, dynamic>>?>('guestAccelerators');
    instanceDescription = registerOutput<String?>('instanceDescription');
    keyRevocationActionType = registerOutput<String?>('keyRevocationActionType');
    labels = registerOutput<Map<String, String>?>('labels');
    machineType = registerOutput<String>('machineType');
    metadata = registerOutput<Map<String, String>?>('metadata');
    metadataFingerprint = registerOutput<String>('metadataFingerprint');
    metadataStartupScript = registerOutput<String?>('metadataStartupScript');
    minCpuPlatform = registerOutput<String?>('minCpuPlatform');
    this.name = registerOutput<String>('name');
    namePrefix = registerOutput<String>('namePrefix');
    networkInterfaces = registerOutput<List<Map<String, dynamic>>?>('networkInterfaces');
    networkPerformanceConfig = registerOutput<RegionInstanceTemplateNetworkPerformanceConfig?>('networkPerformanceConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RegionInstanceTemplateNetworkPerformanceConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    numericId = registerOutput<String>('numericId');
    partnerMetadata = registerOutput<Map<String, String>?>('partnerMetadata');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    region = registerOutput<String>('region');
    reservationAffinity = registerOutput<RegionInstanceTemplateReservationAffinity?>('reservationAffinity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RegionInstanceTemplateReservationAffinity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    resourceManagerTags = registerOutput<Map<String, String>?>('resourceManagerTags');
    resourcePolicies = registerOutput<String?>('resourcePolicies');
    scheduling = registerOutput<RegionInstanceTemplateScheduling>('scheduling', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RegionInstanceTemplateScheduling.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    selfLink = registerOutput<String>('selfLink');
    serviceAccount = registerOutput<RegionInstanceTemplateServiceAccount?>('serviceAccount', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RegionInstanceTemplateServiceAccount.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    shieldedInstanceConfig = registerOutput<RegionInstanceTemplateShieldedInstanceConfig>('shieldedInstanceConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RegionInstanceTemplateShieldedInstanceConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<List<String>?>('tags');
    tagsFingerprint = registerOutput<String>('tagsFingerprint');
    workloadIdentityConfig = registerOutput<RegionInstanceTemplateWorkloadIdentityConfig?>('workloadIdentityConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RegionInstanceTemplateWorkloadIdentityConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
