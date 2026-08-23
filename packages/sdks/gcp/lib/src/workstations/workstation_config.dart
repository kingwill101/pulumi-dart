import 'package:pulumi/pulumi.dart' as pulumi;
import 'workstation_config_args.dart';
import 'workstation_config_container.dart';
import 'workstation_config_encryption_key.dart';
import 'workstation_config_host.dart';
import 'workstation_config_state.dart';

/// A set of configuration options describing how a workstation will be run. Workstation configurations are intended to be shared across multiple workstations.
///
///
/// To get more information about WorkstationConfig, see:
///
/// * [API documentation](https://cloud.google.com/workstations/docs/reference/rest/v1/projects.locations.workstationClusters.workstationConfigs/create)
/// * How-to Guides
/// * [Workstations](https://cloud.google.com/workstations/docs/)
///
/// ## Example Usage
///
/// ### Workstation Config Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const tagKey1 = new gcp.tags.TagKey("tag_key1", {
///     parent: "organizations/123456789",
///     shortName: "keyname",
/// });
/// const tagValue1 = new gcp.tags.TagValue("tag_value1", {
///     parent: tagKey1.id,
///     shortName: "valuename",
/// });
/// const _default = new gcp.compute.Network("default", {
///     name: "workstation-cluster",
///     autoCreateSubnetworks: false,
/// });
/// const defaultSubnetwork = new gcp.compute.Subnetwork("default", {
///     name: "workstation-cluster",
///     ipCidrRange: "10.0.0.0/24",
///     region: "us-central1",
///     network: _default.name,
/// });
/// const defaultWorkstationCluster = new gcp.workstations.WorkstationCluster("default", {
///     workstationClusterId: "workstation-cluster",
///     network: _default.id,
///     subnetwork: defaultSubnetwork.id,
///     location: "us-central1",
///     labels: {
///         label: "key",
///     },
///     annotations: {
///         "label-one": "value-one",
///     },
/// });
/// const defaultWorkstationConfig = new gcp.workstations.WorkstationConfig("default", {
///     workstationConfigId: "workstation-config",
///     workstationClusterId: defaultWorkstationCluster.workstationClusterId,
///     location: "us-central1",
///     idleTimeout: "600s",
///     runningTimeout: "21600s",
///     replicaZones: [
///         "us-central1-a",
///         "us-central1-b",
///     ],
///     annotations: {
///         "label-one": "value-one",
///     },
///     labels: {
///         label: "key",
///     },
///     maxUsableWorkstations: 1,
///     host: {
///         gceInstance: {
///             machineType: "e2-standard-4",
///             bootDiskSizeGb: 35,
///             disablePublicIpAddresses: true,
///             disableSsh: false,
///             vmTags: pulumi.all([tagKey1.id, tagValue1.id]).apply(([tagKey1Id, tagValue1Id]) => {
///                 [tagKey1Id]: tagValue1Id,
///             }),
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// tag_key1 = gcp.tags.TagKey("tag_key1",
///     parent="organizations/123456789",
///     short_name="keyname")
/// tag_value1 = gcp.tags.TagValue("tag_value1",
///     parent=tag_key1.id,
///     short_name="valuename")
/// default = gcp.compute.Network("default",
///     name="workstation-cluster",
///     auto_create_subnetworks=False)
/// default_subnetwork = gcp.compute.Subnetwork("default",
///     name="workstation-cluster",
///     ip_cidr_range="10.0.0.0/24",
///     region="us-central1",
///     network=default.name)
/// default_workstation_cluster = gcp.workstations.WorkstationCluster("default",
///     workstation_cluster_id="workstation-cluster",
///     network=default.id,
///     subnetwork=default_subnetwork.id,
///     location="us-central1",
///     labels={
///         "label": "key",
///     },
///     annotations={
///         "label-one": "value-one",
///     })
/// default_workstation_config = gcp.workstations.WorkstationConfig("default",
///     workstation_config_id="workstation-config",
///     workstation_cluster_id=default_workstation_cluster.workstation_cluster_id,
///     location="us-central1",
///     idle_timeout="600s",
///     running_timeout="21600s",
///     replica_zones=[
///         "us-central1-a",
///         "us-central1-b",
///     ],
///     annotations={
///         "label-one": "value-one",
///     },
///     labels={
///         "label": "key",
///     },
///     max_usable_workstations=1,
///     host={
///         "gce_instance": {
///             "machine_type": "e2-standard-4",
///             "boot_disk_size_gb": 35,
///             "disable_public_ip_addresses": True,
///             "disable_ssh": False,
///             "vm_tags": pulumi.Output.all(
///                 tagKey1Id=tag_key1.id,
///                 tagValue1Id=tag_value1.id
/// ).apply(lambda resolved_outputs: {
///                 str(resolved_outputs['tagKey1Id']): resolved_outputs['tagValue1Id'],
///             })
/// ,
///         },
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
///     var tagKey1 = new Gcp.Tags.TagKey("tag_key1", new()
///     {
///         Parent = "organizations/123456789",
///         ShortName = "keyname",
///     });
///
///     var tagValue1 = new Gcp.Tags.TagValue("tag_value1", new()
///     {
///         Parent = tagKey1.Id,
///         ShortName = "valuename",
///     });
///
///     var @default = new Gcp.Compute.Network("default", new()
///     {
///         Name = "workstation-cluster",
///         AutoCreateSubnetworks = false,
///     });
///
///     var defaultSubnetwork = new Gcp.Compute.Subnetwork("default", new()
///     {
///         Name = "workstation-cluster",
///         IpCidrRange = "10.0.0.0/24",
///         Region = "us-central1",
///         Network = @default.Name,
///     });
///
///     var defaultWorkstationCluster = new Gcp.Workstations.WorkstationCluster("default", new()
///     {
///         WorkstationClusterId = "workstation-cluster",
///         Network = @default.Id,
///         Subnetwork = defaultSubnetwork.Id,
///         Location = "us-central1",
///         Labels =
///         {
///             { "label", "key" },
///         },
///         Annotations =
///         {
///             { "label-one", "value-one" },
///         },
///     });
///
///     var defaultWorkstationConfig = new Gcp.Workstations.WorkstationConfig("default", new()
///     {
///         WorkstationConfigId = "workstation-config",
///         WorkstationClusterId = defaultWorkstationCluster.WorkstationClusterId,
///         Location = "us-central1",
///         IdleTimeout = "600s",
///         RunningTimeout = "21600s",
///         ReplicaZones = new[]
///         {
///             "us-central1-a",
///             "us-central1-b",
///         },
///         Annotations =
///         {
///             { "label-one", "value-one" },
///         },
///         Labels =
///         {
///             { "label", "key" },
///         },
///         MaxUsableWorkstations = 1,
///         Host = new Gcp.Workstations.Inputs.WorkstationConfigHostArgs
///         {
///             GceInstance = new Gcp.Workstations.Inputs.WorkstationConfigHostGceInstanceArgs
///             {
///                 MachineType = "e2-standard-4",
///                 BootDiskSizeGb = 35,
///                 DisablePublicIpAddresses = true,
///                 DisableSsh = false,
///                 VmTags = Output.Tuple(tagKey1.Id, tagValue1.Id).Apply(values =>
///                 {
///                     var tagKey1Id = values.Item1;
///                     var tagValue1Id = values.Item2;
///                     return
///                     {
///                         { tagKey1Id, tagValue1Id },
///                     };
///                 }),
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/tags"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/workstations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		tagKey1, err := tags.NewTagKey(ctx, "tag_key1", &tags.TagKeyArgs{
/// 			Parent:    pulumi.String("organizations/123456789"),
/// 			ShortName: pulumi.String("keyname"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tagValue1, err := tags.NewTagValue(ctx, "tag_value1", &tags.TagValueArgs{
/// 			Parent:    tagKey1.ID().ToIDOutput().ToStringOutput(),
/// 			ShortName: pulumi.String("valuename"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_default, err := compute.NewNetwork(ctx, "default", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("workstation-cluster"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultSubnetwork, err := compute.NewSubnetwork(ctx, "default", &compute.SubnetworkArgs{
/// 			Name:        pulumi.String("workstation-cluster"),
/// 			IpCidrRange: pulumi.String("10.0.0.0/24"),
/// 			Region:      pulumi.String("us-central1"),
/// 			Network:     _default.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultWorkstationCluster, err := workstations.NewWorkstationCluster(ctx, "default", &workstations.WorkstationClusterArgs{
/// 			WorkstationClusterId: pulumi.String("workstation-cluster"),
/// 			Network:              _default.ID().ToIDOutput().ToStringOutput(),
/// 			Subnetwork:           defaultSubnetwork.ID().ToIDOutput().ToStringOutput(),
/// 			Location:             pulumi.String("us-central1"),
/// 			Labels: pulumi.StringMap{
/// 				"label": pulumi.String("key"),
/// 			},
/// 			Annotations: pulumi.StringMap{
/// 				"label-one": pulumi.String("value-one"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = workstations.NewWorkstationConfig(ctx, "default", &workstations.WorkstationConfigArgs{
/// 			WorkstationConfigId:  pulumi.String("workstation-config"),
/// 			WorkstationClusterId: defaultWorkstationCluster.WorkstationClusterId,
/// 			Location:             pulumi.String("us-central1"),
/// 			IdleTimeout:          pulumi.String("600s"),
/// 			RunningTimeout:       pulumi.String("21600s"),
/// 			ReplicaZones: pulumi.StringArray{
/// 				pulumi.String("us-central1-a"),
/// 				pulumi.String("us-central1-b"),
/// 			},
/// 			Annotations: pulumi.StringMap{
/// 				"label-one": pulumi.String("value-one"),
/// 			},
/// 			Labels: pulumi.StringMap{
/// 				"label": pulumi.String("key"),
/// 			},
/// 			MaxUsableWorkstations: pulumi.Int(1),
/// 			Host: &workstations.WorkstationConfigHostArgs{
/// 				GceInstance: &workstations.WorkstationConfigHostGceInstanceArgs{
/// 					MachineType:              pulumi.String("e2-standard-4"),
/// 					BootDiskSizeGb:           pulumi.Int(35),
/// 					DisablePublicIpAddresses: pulumi.Bool(true),
/// 					DisableSsh:               pulumi.Bool(false),
/// 					VmTags: pulumi.StringMap(pulumi.All(tagKey1.ID(), tagValue1.ID()).ApplyT(func(_args []interface{}) (map[string]pulumi.ID, error) {
/// 						tagKey1Id := _args[0].(pulumi.ID)
/// 						tagValue1Id := _args[1].(pulumi.ID)
/// 						return map[string]pulumi.ID(pulumi.String(tagKey1Id).ApplyT(func(__convert string) (map[string]pulumi.ID, error) {
/// 							return map[string]pulumi.ID{
/// 								__convert: tagValue1Id,
/// 							}, nil
/// 						}).(pulumi.IDMapOutput)), nil
/// 					}).(pulumi.IDMapOutput)),
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
/// resource "gcp_tags_tagkey" "tag_key1" {
///   parent     = "organizations/123456789"
///   short_name = "keyname"
/// }
/// resource "gcp_tags_tagvalue" "tag_value1" {
///   parent     = gcp_tags_tagkey.tag_key1.id
///   short_name = "valuename"
/// }
/// resource "gcp_compute_network" "default" {
///   name                    = "workstation-cluster"
///   auto_create_subnetworks = false
/// }
/// resource "gcp_compute_subnetwork" "default" {
///   name          = "workstation-cluster"
///   ip_cidr_range = "10.0.0.0/24"
///   region        = "us-central1"
///   network       = gcp_compute_network.default.name
/// }
/// resource "gcp_workstations_workstationcluster" "default" {
///   workstation_cluster_id = "workstation-cluster"
///   network                = gcp_compute_network.default.id
///   subnetwork             = gcp_compute_subnetwork.default.id
///   location               = "us-central1"
///   labels = {
///     "label" = "key"
///   }
///   annotations = {
///     "label-one" = "value-one"
///   }
/// }
/// resource "gcp_workstations_workstationconfig" "default" {
///   workstation_config_id  = "workstation-config"
///   workstation_cluster_id = gcp_workstations_workstationcluster.default.workstation_cluster_id
///   location               = "us-central1"
///   idle_timeout           = "600s"
///   running_timeout        = "21600s"
///   replica_zones          = ["us-central1-a", "us-central1-b"]
///   annotations = {
///     "label-one" = "value-one"
///   }
///   labels = {
///     "label" = "key"
///   }
///   max_usable_workstations = 1
///   host = {
///     gce_instance = {
///       machine_type                = "e2-standard-4"
///       boot_disk_size_gb           = 35
///       disable_public_ip_addresses = true
///       disable_ssh                 = false
///       vm_tags = {
///         gcp_tags_tagkey.tag_key1.id = gcp_tags_tagvalue.tag_value1.id
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
/// import com.pulumi.gcp.tags.TagKey;
/// import com.pulumi.gcp.tags.TagKeyArgs;
/// import com.pulumi.gcp.tags.TagValue;
/// import com.pulumi.gcp.tags.TagValueArgs;
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.compute.Subnetwork;
/// import com.pulumi.gcp.compute.SubnetworkArgs;
/// import com.pulumi.gcp.workstations.WorkstationCluster;
/// import com.pulumi.gcp.workstations.WorkstationClusterArgs;
/// import com.pulumi.gcp.workstations.WorkstationConfig;
/// import com.pulumi.gcp.workstations.WorkstationConfigArgs;
/// import com.pulumi.gcp.workstations.inputs.WorkstationConfigHostArgs;
/// import com.pulumi.gcp.workstations.inputs.WorkstationConfigHostGceInstanceArgs;
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
///         var tagKey1 = new TagKey("tagKey1", TagKeyArgs.builder()
///             .parent("organizations/123456789")
///             .shortName("keyname")
///             .build());
///
///         var tagValue1 = new TagValue("tagValue1", TagValueArgs.builder()
///             .parent(tagKey1.id())
///             .shortName("valuename")
///             .build());
///
///         var default_ = new Network("default", NetworkArgs.builder()
///             .name("workstation-cluster")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var defaultSubnetwork = new Subnetwork("defaultSubnetwork", SubnetworkArgs.builder()
///             .name("workstation-cluster")
///             .ipCidrRange("10.0.0.0/24")
///             .region("us-central1")
///             .network(default_.name())
///             .build());
///
///         var defaultWorkstationCluster = new WorkstationCluster("defaultWorkstationCluster", WorkstationClusterArgs.builder()
///             .workstationClusterId("workstation-cluster")
///             .network(default_.id())
///             .subnetwork(defaultSubnetwork.id())
///             .location("us-central1")
///             .labels(Map.of("label", "key"))
///             .annotations(Map.of("label-one", "value-one"))
///             .build());
///
///         var defaultWorkstationConfig = new WorkstationConfig("defaultWorkstationConfig", WorkstationConfigArgs.builder()
///             .workstationConfigId("workstation-config")
///             .workstationClusterId(defaultWorkstationCluster.workstationClusterId())
///             .location("us-central1")
///             .idleTimeout("600s")
///             .runningTimeout("21600s")
///             .replicaZones(
///                 "us-central1-a",
///                 "us-central1-b")
///             .annotations(Map.of("label-one", "value-one"))
///             .labels(Map.of("label", "key"))
///             .maxUsableWorkstations(1)
///             .host(WorkstationConfigHostArgs.builder()
///                 .gceInstance(WorkstationConfigHostGceInstanceArgs.builder()
///                     .machineType("e2-standard-4")
///                     .bootDiskSizeGb(35)
///                     .disablePublicIpAddresses(true)
///                     .disableSsh(false)
///                     .vmTags(Output.tuple(tagKey1.id(), tagValue1.id()).applyValue(values -> {
///                         var tagKey1Id = values.t1;
///                         var tagValue1Id = values.t2;
///                         return tagKey1Id.applyValue(___convert -> Map.of(___convert, tagValue1Id));
///                     }))
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   tagKey1:
///     type: gcp:tags:TagKey
///     name: tag_key1
///     properties:
///       parent: organizations/123456789
///       shortName: keyname
///   tagValue1:
///     type: gcp:tags:TagValue
///     name: tag_value1
///     properties:
///       parent: ${tagKey1.id}
///       shortName: valuename
///   default:
///     type: gcp:compute:Network
///     properties:
///       name: workstation-cluster
///       autoCreateSubnetworks: false
///   defaultSubnetwork:
///     type: gcp:compute:Subnetwork
///     name: default
///     properties:
///       name: workstation-cluster
///       ipCidrRange: 10.0.0.0/24
///       region: us-central1
///       network: ${default.name}
///   defaultWorkstationCluster:
///     type: gcp:workstations:WorkstationCluster
///     name: default
///     properties:
///       workstationClusterId: workstation-cluster
///       network: ${default.id}
///       subnetwork: ${defaultSubnetwork.id}
///       location: us-central1
///       labels:
///         label: key
///       annotations:
///         label-one: value-one
///   defaultWorkstationConfig:
///     type: gcp:workstations:WorkstationConfig
///     name: default
///     properties:
///       workstationConfigId: workstation-config
///       workstationClusterId: ${defaultWorkstationCluster.workstationClusterId}
///       location: us-central1
///       idleTimeout: 600s
///       runningTimeout: 21600s
///       replicaZones:
///         - us-central1-a
///         - us-central1-b
///       annotations:
///         label-one: value-one
///       labels:
///         label: key
///       maxUsableWorkstations: 1
///       host:
///         gceInstance:
///           machineType: e2-standard-4
///           bootDiskSizeGb: 35
///           disablePublicIpAddresses: true
///           disableSsh: false
///           vmTags:
///             ${tagKey1.id}: ${tagValue1.id}
/// ```
///
/// ### Workstation Config Container
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.compute.Network("default", {
///     name: "workstation-cluster",
///     autoCreateSubnetworks: false,
/// });
/// const defaultSubnetwork = new gcp.compute.Subnetwork("default", {
///     name: "workstation-cluster",
///     ipCidrRange: "10.0.0.0/24",
///     region: "us-central1",
///     network: _default.name,
/// });
/// const defaultWorkstationCluster = new gcp.workstations.WorkstationCluster("default", {
///     workstationClusterId: "workstation-cluster",
///     network: _default.id,
///     subnetwork: defaultSubnetwork.id,
///     location: "us-central1",
///     labels: {
///         label: "key",
///     },
///     annotations: {
///         "label-one": "value-one",
///     },
/// });
/// const defaultWorkstationConfig = new gcp.workstations.WorkstationConfig("default", {
///     workstationConfigId: "workstation-config",
///     workstationClusterId: defaultWorkstationCluster.workstationClusterId,
///     location: "us-central1",
///     host: {
///         gceInstance: {
///             machineType: "n1-standard-4",
///             bootDiskSizeGb: 35,
///             disablePublicIpAddresses: true,
///             enableNestedVirtualization: true,
///         },
///     },
///     container: {
///         image: "intellij",
///         env: {
///             NAME: "FOO",
///             BABE: "bar",
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.compute.Network("default",
///     name="workstation-cluster",
///     auto_create_subnetworks=False)
/// default_subnetwork = gcp.compute.Subnetwork("default",
///     name="workstation-cluster",
///     ip_cidr_range="10.0.0.0/24",
///     region="us-central1",
///     network=default.name)
/// default_workstation_cluster = gcp.workstations.WorkstationCluster("default",
///     workstation_cluster_id="workstation-cluster",
///     network=default.id,
///     subnetwork=default_subnetwork.id,
///     location="us-central1",
///     labels={
///         "label": "key",
///     },
///     annotations={
///         "label-one": "value-one",
///     })
/// default_workstation_config = gcp.workstations.WorkstationConfig("default",
///     workstation_config_id="workstation-config",
///     workstation_cluster_id=default_workstation_cluster.workstation_cluster_id,
///     location="us-central1",
///     host={
///         "gce_instance": {
///             "machine_type": "n1-standard-4",
///             "boot_disk_size_gb": 35,
///             "disable_public_ip_addresses": True,
///             "enable_nested_virtualization": True,
///         },
///     },
///     container={
///         "image": "intellij",
///         "env": {
///             "NAME": "FOO",
///             "BABE": "bar",
///         },
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
///     var @default = new Gcp.Compute.Network("default", new()
///     {
///         Name = "workstation-cluster",
///         AutoCreateSubnetworks = false,
///     });
///
///     var defaultSubnetwork = new Gcp.Compute.Subnetwork("default", new()
///     {
///         Name = "workstation-cluster",
///         IpCidrRange = "10.0.0.0/24",
///         Region = "us-central1",
///         Network = @default.Name,
///     });
///
///     var defaultWorkstationCluster = new Gcp.Workstations.WorkstationCluster("default", new()
///     {
///         WorkstationClusterId = "workstation-cluster",
///         Network = @default.Id,
///         Subnetwork = defaultSubnetwork.Id,
///         Location = "us-central1",
///         Labels =
///         {
///             { "label", "key" },
///         },
///         Annotations =
///         {
///             { "label-one", "value-one" },
///         },
///     });
///
///     var defaultWorkstationConfig = new Gcp.Workstations.WorkstationConfig("default", new()
///     {
///         WorkstationConfigId = "workstation-config",
///         WorkstationClusterId = defaultWorkstationCluster.WorkstationClusterId,
///         Location = "us-central1",
///         Host = new Gcp.Workstations.Inputs.WorkstationConfigHostArgs
///         {
///             GceInstance = new Gcp.Workstations.Inputs.WorkstationConfigHostGceInstanceArgs
///             {
///                 MachineType = "n1-standard-4",
///                 BootDiskSizeGb = 35,
///                 DisablePublicIpAddresses = true,
///                 EnableNestedVirtualization = true,
///             },
///         },
///         Container = new Gcp.Workstations.Inputs.WorkstationConfigContainerArgs
///         {
///             Image = "intellij",
///             Env =
///             {
///                 { "NAME", "FOO" },
///                 { "BABE", "bar" },
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/workstations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := compute.NewNetwork(ctx, "default", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("workstation-cluster"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultSubnetwork, err := compute.NewSubnetwork(ctx, "default", &compute.SubnetworkArgs{
/// 			Name:        pulumi.String("workstation-cluster"),
/// 			IpCidrRange: pulumi.String("10.0.0.0/24"),
/// 			Region:      pulumi.String("us-central1"),
/// 			Network:     _default.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultWorkstationCluster, err := workstations.NewWorkstationCluster(ctx, "default", &workstations.WorkstationClusterArgs{
/// 			WorkstationClusterId: pulumi.String("workstation-cluster"),
/// 			Network:              _default.ID().ToIDOutput().ToStringOutput(),
/// 			Subnetwork:           defaultSubnetwork.ID().ToIDOutput().ToStringOutput(),
/// 			Location:             pulumi.String("us-central1"),
/// 			Labels: pulumi.StringMap{
/// 				"label": pulumi.String("key"),
/// 			},
/// 			Annotations: pulumi.StringMap{
/// 				"label-one": pulumi.String("value-one"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = workstations.NewWorkstationConfig(ctx, "default", &workstations.WorkstationConfigArgs{
/// 			WorkstationConfigId:  pulumi.String("workstation-config"),
/// 			WorkstationClusterId: defaultWorkstationCluster.WorkstationClusterId,
/// 			Location:             pulumi.String("us-central1"),
/// 			Host: &workstations.WorkstationConfigHostArgs{
/// 				GceInstance: &workstations.WorkstationConfigHostGceInstanceArgs{
/// 					MachineType:                pulumi.String("n1-standard-4"),
/// 					BootDiskSizeGb:             pulumi.Int(35),
/// 					DisablePublicIpAddresses:   pulumi.Bool(true),
/// 					EnableNestedVirtualization: pulumi.Bool(true),
/// 				},
/// 			},
/// 			Container: &workstations.WorkstationConfigContainerArgs{
/// 				Image: pulumi.String("intellij"),
/// 				Env: pulumi.StringMap{
/// 					"NAME": pulumi.String("FOO"),
/// 					"BABE": pulumi.String("bar"),
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
/// resource "gcp_compute_network" "default" {
///   name                    = "workstation-cluster"
///   auto_create_subnetworks = false
/// }
/// resource "gcp_compute_subnetwork" "default" {
///   name          = "workstation-cluster"
///   ip_cidr_range = "10.0.0.0/24"
///   region        = "us-central1"
///   network       = gcp_compute_network.default.name
/// }
/// resource "gcp_workstations_workstationcluster" "default" {
///   workstation_cluster_id = "workstation-cluster"
///   network                = gcp_compute_network.default.id
///   subnetwork             = gcp_compute_subnetwork.default.id
///   location               = "us-central1"
///   labels = {
///     "label" = "key"
///   }
///   annotations = {
///     "label-one" = "value-one"
///   }
/// }
/// resource "gcp_workstations_workstationconfig" "default" {
///   workstation_config_id  = "workstation-config"
///   workstation_cluster_id = gcp_workstations_workstationcluster.default.workstation_cluster_id
///   location               = "us-central1"
///   host = {
///     gce_instance = {
///       machine_type                 = "n1-standard-4"
///       boot_disk_size_gb            = 35
///       disable_public_ip_addresses  = true
///       enable_nested_virtualization = true
///     }
///   }
///   container = {
///     image = "intellij"
///     env = {
///       "NAME" = "FOO"
///       "BABE" = "bar"
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
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.compute.Subnetwork;
/// import com.pulumi.gcp.compute.SubnetworkArgs;
/// import com.pulumi.gcp.workstations.WorkstationCluster;
/// import com.pulumi.gcp.workstations.WorkstationClusterArgs;
/// import com.pulumi.gcp.workstations.WorkstationConfig;
/// import com.pulumi.gcp.workstations.WorkstationConfigArgs;
/// import com.pulumi.gcp.workstations.inputs.WorkstationConfigHostArgs;
/// import com.pulumi.gcp.workstations.inputs.WorkstationConfigHostGceInstanceArgs;
/// import com.pulumi.gcp.workstations.inputs.WorkstationConfigContainerArgs;
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
///         var default_ = new Network("default", NetworkArgs.builder()
///             .name("workstation-cluster")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var defaultSubnetwork = new Subnetwork("defaultSubnetwork", SubnetworkArgs.builder()
///             .name("workstation-cluster")
///             .ipCidrRange("10.0.0.0/24")
///             .region("us-central1")
///             .network(default_.name())
///             .build());
///
///         var defaultWorkstationCluster = new WorkstationCluster("defaultWorkstationCluster", WorkstationClusterArgs.builder()
///             .workstationClusterId("workstation-cluster")
///             .network(default_.id())
///             .subnetwork(defaultSubnetwork.id())
///             .location("us-central1")
///             .labels(Map.of("label", "key"))
///             .annotations(Map.of("label-one", "value-one"))
///             .build());
///
///         var defaultWorkstationConfig = new WorkstationConfig("defaultWorkstationConfig", WorkstationConfigArgs.builder()
///             .workstationConfigId("workstation-config")
///             .workstationClusterId(defaultWorkstationCluster.workstationClusterId())
///             .location("us-central1")
///             .host(WorkstationConfigHostArgs.builder()
///                 .gceInstance(WorkstationConfigHostGceInstanceArgs.builder()
///                     .machineType("n1-standard-4")
///                     .bootDiskSizeGb(35)
///                     .disablePublicIpAddresses(true)
///                     .enableNestedVirtualization(true)
///                     .build())
///                 .build())
///             .container(WorkstationConfigContainerArgs.builder()
///                 .image("intellij")
///                 .env(Map.ofEntries(
///                     Map.entry("NAME", "FOO"),
///                     Map.entry("BABE", "bar")
///                 ))
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:compute:Network
///     properties:
///       name: workstation-cluster
///       autoCreateSubnetworks: false
///   defaultSubnetwork:
///     type: gcp:compute:Subnetwork
///     name: default
///     properties:
///       name: workstation-cluster
///       ipCidrRange: 10.0.0.0/24
///       region: us-central1
///       network: ${default.name}
///   defaultWorkstationCluster:
///     type: gcp:workstations:WorkstationCluster
///     name: default
///     properties:
///       workstationClusterId: workstation-cluster
///       network: ${default.id}
///       subnetwork: ${defaultSubnetwork.id}
///       location: us-central1
///       labels:
///         label: key
///       annotations:
///         label-one: value-one
///   defaultWorkstationConfig:
///     type: gcp:workstations:WorkstationConfig
///     name: default
///     properties:
///       workstationConfigId: workstation-config
///       workstationClusterId: ${defaultWorkstationCluster.workstationClusterId}
///       location: us-central1
///       host:
///         gceInstance:
///           machineType: n1-standard-4
///           bootDiskSizeGb: 35
///           disablePublicIpAddresses: true
///           enableNestedVirtualization: true
///       container:
///         image: intellij
///         env:
///           NAME: FOO
///           BABE: bar
/// ```
///
/// ### Workstation Config Hyperdisk
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.compute.Network("default", {
///     name: "workstation-cluster",
///     autoCreateSubnetworks: false,
/// });
/// const defaultSubnetwork = new gcp.compute.Subnetwork("default", {
///     name: "workstation-cluster",
///     ipCidrRange: "10.0.0.0/24",
///     region: "us-central1",
///     network: _default.name,
/// });
/// const defaultWorkstationCluster = new gcp.workstations.WorkstationCluster("default", {
///     workstationClusterId: "workstation-cluster",
///     network: _default.id,
///     subnetwork: defaultSubnetwork.id,
///     location: "us-central1",
/// });
/// const defaultWorkstationConfig = new gcp.workstations.WorkstationConfig("default", {
///     workstationConfigId: "workstation-config",
///     workstationClusterId: defaultWorkstationCluster.workstationClusterId,
///     location: "us-central1",
///     host: {
///         gceInstance: {
///             machineType: "c3-standard-22",
///         },
///     },
///     persistentDirectories: [{
///         mountPath: "/home",
///         gceHd: {
///             sizeGb: 200,
///             reclaimPolicy: "DELETE",
///             archiveTimeout: "3600s",
///         },
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.compute.Network("default",
///     name="workstation-cluster",
///     auto_create_subnetworks=False)
/// default_subnetwork = gcp.compute.Subnetwork("default",
///     name="workstation-cluster",
///     ip_cidr_range="10.0.0.0/24",
///     region="us-central1",
///     network=default.name)
/// default_workstation_cluster = gcp.workstations.WorkstationCluster("default",
///     workstation_cluster_id="workstation-cluster",
///     network=default.id,
///     subnetwork=default_subnetwork.id,
///     location="us-central1")
/// default_workstation_config = gcp.workstations.WorkstationConfig("default",
///     workstation_config_id="workstation-config",
///     workstation_cluster_id=default_workstation_cluster.workstation_cluster_id,
///     location="us-central1",
///     host={
///         "gce_instance": {
///             "machine_type": "c3-standard-22",
///         },
///     },
///     persistent_directories=[{
///         "mount_path": "/home",
///         "gce_hd": {
///             "size_gb": 200,
///             "reclaim_policy": "DELETE",
///             "archive_timeout": "3600s",
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
///     var @default = new Gcp.Compute.Network("default", new()
///     {
///         Name = "workstation-cluster",
///         AutoCreateSubnetworks = false,
///     });
///
///     var defaultSubnetwork = new Gcp.Compute.Subnetwork("default", new()
///     {
///         Name = "workstation-cluster",
///         IpCidrRange = "10.0.0.0/24",
///         Region = "us-central1",
///         Network = @default.Name,
///     });
///
///     var defaultWorkstationCluster = new Gcp.Workstations.WorkstationCluster("default", new()
///     {
///         WorkstationClusterId = "workstation-cluster",
///         Network = @default.Id,
///         Subnetwork = defaultSubnetwork.Id,
///         Location = "us-central1",
///     });
///
///     var defaultWorkstationConfig = new Gcp.Workstations.WorkstationConfig("default", new()
///     {
///         WorkstationConfigId = "workstation-config",
///         WorkstationClusterId = defaultWorkstationCluster.WorkstationClusterId,
///         Location = "us-central1",
///         Host = new Gcp.Workstations.Inputs.WorkstationConfigHostArgs
///         {
///             GceInstance = new Gcp.Workstations.Inputs.WorkstationConfigHostGceInstanceArgs
///             {
///                 MachineType = "c3-standard-22",
///             },
///         },
///         PersistentDirectories = new[]
///         {
///             new Gcp.Workstations.Inputs.WorkstationConfigPersistentDirectoryArgs
///             {
///                 MountPath = "/home",
///                 GceHd = new Gcp.Workstations.Inputs.WorkstationConfigPersistentDirectoryGceHdArgs
///                 {
///                     SizeGb = 200,
///                     ReclaimPolicy = "DELETE",
///                     ArchiveTimeout = "3600s",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/workstations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := compute.NewNetwork(ctx, "default", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("workstation-cluster"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultSubnetwork, err := compute.NewSubnetwork(ctx, "default", &compute.SubnetworkArgs{
/// 			Name:        pulumi.String("workstation-cluster"),
/// 			IpCidrRange: pulumi.String("10.0.0.0/24"),
/// 			Region:      pulumi.String("us-central1"),
/// 			Network:     _default.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultWorkstationCluster, err := workstations.NewWorkstationCluster(ctx, "default", &workstations.WorkstationClusterArgs{
/// 			WorkstationClusterId: pulumi.String("workstation-cluster"),
/// 			Network:              _default.ID().ToIDOutput().ToStringOutput(),
/// 			Subnetwork:           defaultSubnetwork.ID().ToIDOutput().ToStringOutput(),
/// 			Location:             pulumi.String("us-central1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = workstations.NewWorkstationConfig(ctx, "default", &workstations.WorkstationConfigArgs{
/// 			WorkstationConfigId:  pulumi.String("workstation-config"),
/// 			WorkstationClusterId: defaultWorkstationCluster.WorkstationClusterId,
/// 			Location:             pulumi.String("us-central1"),
/// 			Host: &workstations.WorkstationConfigHostArgs{
/// 				GceInstance: &workstations.WorkstationConfigHostGceInstanceArgs{
/// 					MachineType: pulumi.String("c3-standard-22"),
/// 				},
/// 			},
/// 			PersistentDirectories: workstations.WorkstationConfigPersistentDirectoryArray{
/// 				&workstations.WorkstationConfigPersistentDirectoryArgs{
/// 					MountPath: pulumi.String("/home"),
/// 					GceHd: &workstations.WorkstationConfigPersistentDirectoryGceHdArgs{
/// 						SizeGb:         pulumi.Int(200),
/// 						ReclaimPolicy:  pulumi.String("DELETE"),
/// 						ArchiveTimeout: pulumi.String("3600s"),
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
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_compute_network" "default" {
///   name                    = "workstation-cluster"
///   auto_create_subnetworks = false
/// }
/// resource "gcp_compute_subnetwork" "default" {
///   name          = "workstation-cluster"
///   ip_cidr_range = "10.0.0.0/24"
///   region        = "us-central1"
///   network       = gcp_compute_network.default.name
/// }
/// resource "gcp_workstations_workstationcluster" "default" {
///   workstation_cluster_id = "workstation-cluster"
///   network                = gcp_compute_network.default.id
///   subnetwork             = gcp_compute_subnetwork.default.id
///   location               = "us-central1"
/// }
/// resource "gcp_workstations_workstationconfig" "default" {
///   workstation_config_id  = "workstation-config"
///   workstation_cluster_id = gcp_workstations_workstationcluster.default.workstation_cluster_id
///   location               = "us-central1"
///   host = {
///     gce_instance = {
///       machine_type = "c3-standard-22"
///     }
///   }
///   # C3 machine types require Hyperdisk storage
///   persistent_directories {
///     mount_path = "/home"
///     gce_hd = {
///       size_gb         = 200
///       reclaim_policy  = "DELETE"
///       archive_timeout = "3600s"
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
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.compute.Subnetwork;
/// import com.pulumi.gcp.compute.SubnetworkArgs;
/// import com.pulumi.gcp.workstations.WorkstationCluster;
/// import com.pulumi.gcp.workstations.WorkstationClusterArgs;
/// import com.pulumi.gcp.workstations.WorkstationConfig;
/// import com.pulumi.gcp.workstations.WorkstationConfigArgs;
/// import com.pulumi.gcp.workstations.inputs.WorkstationConfigHostArgs;
/// import com.pulumi.gcp.workstations.inputs.WorkstationConfigHostGceInstanceArgs;
/// import com.pulumi.gcp.workstations.inputs.WorkstationConfigPersistentDirectoryArgs;
/// import com.pulumi.gcp.workstations.inputs.WorkstationConfigPersistentDirectoryGceHdArgs;
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
///         var default_ = new Network("default", NetworkArgs.builder()
///             .name("workstation-cluster")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var defaultSubnetwork = new Subnetwork("defaultSubnetwork", SubnetworkArgs.builder()
///             .name("workstation-cluster")
///             .ipCidrRange("10.0.0.0/24")
///             .region("us-central1")
///             .network(default_.name())
///             .build());
///
///         var defaultWorkstationCluster = new WorkstationCluster("defaultWorkstationCluster", WorkstationClusterArgs.builder()
///             .workstationClusterId("workstation-cluster")
///             .network(default_.id())
///             .subnetwork(defaultSubnetwork.id())
///             .location("us-central1")
///             .build());
///
///         var defaultWorkstationConfig = new WorkstationConfig("defaultWorkstationConfig", WorkstationConfigArgs.builder()
///             .workstationConfigId("workstation-config")
///             .workstationClusterId(defaultWorkstationCluster.workstationClusterId())
///             .location("us-central1")
///             .host(WorkstationConfigHostArgs.builder()
///                 .gceInstance(WorkstationConfigHostGceInstanceArgs.builder()
///                     .machineType("c3-standard-22")
///                     .build())
///                 .build())
///             .persistentDirectories(WorkstationConfigPersistentDirectoryArgs.builder()
///                 .mountPath("/home")
///                 .gceHd(WorkstationConfigPersistentDirectoryGceHdArgs.builder()
///                     .sizeGb(200)
///                     .reclaimPolicy("DELETE")
///                     .archiveTimeout("3600s")
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
///     type: gcp:compute:Network
///     properties:
///       name: workstation-cluster
///       autoCreateSubnetworks: false
///   defaultSubnetwork:
///     type: gcp:compute:Subnetwork
///     name: default
///     properties:
///       name: workstation-cluster
///       ipCidrRange: 10.0.0.0/24
///       region: us-central1
///       network: ${default.name}
///   defaultWorkstationCluster:
///     type: gcp:workstations:WorkstationCluster
///     name: default
///     properties:
///       workstationClusterId: workstation-cluster
///       network: ${default.id}
///       subnetwork: ${defaultSubnetwork.id}
///       location: us-central1
///   defaultWorkstationConfig:
///     type: gcp:workstations:WorkstationConfig
///     name: default
///     properties:
///       workstationConfigId: workstation-config
///       workstationClusterId: ${defaultWorkstationCluster.workstationClusterId}
///       location: us-central1
///       host:
///         gceInstance:
///           machineType: c3-standard-22
///       persistentDirectories:
///         - mountPath: /home
///           gceHd:
///             sizeGb: 200
///             reclaimPolicy: DELETE
///             archiveTimeout: 3600s
/// ```
///
/// ### Workstation Config Hyperdisk Source Snapshot
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const tagKey1 = new gcp.tags.TagKey("tag_key1", {
///     parent: "organizations/0123456789",
///     shortName: "keyname",
/// });
/// const tagValue1 = new gcp.tags.TagValue("tag_value1", {
///     parent: tagKey1.id,
///     shortName: "valuename",
/// });
/// const _default = new gcp.compute.Network("default", {
///     name: "workstation-cluster",
///     autoCreateSubnetworks: false,
/// });
/// const defaultSubnetwork = new gcp.compute.Subnetwork("default", {
///     name: "workstation-cluster",
///     ipCidrRange: "10.0.0.0/24",
///     region: "us-central1",
///     network: _default.name,
/// });
/// const mySourceDisk = new gcp.compute.Disk("my_source_disk", {
///     name: "workstation-config-source-disk",
///     size: 10,
///     type: "pd-ssd",
///     zone: "us-central1-a",
/// });
/// const mySourceSnapshot = new gcp.compute.Snapshot("my_source_snapshot", {
///     name: "workstation-config-source-snapshot",
///     sourceDisk: mySourceDisk.name,
///     zone: "us-central1-a",
/// });
/// const defaultWorkstationCluster = new gcp.workstations.WorkstationCluster("default", {
///     workstationClusterId: "workstation-cluster",
///     network: _default.id,
///     subnetwork: defaultSubnetwork.id,
///     location: "us-central1",
/// });
/// const defaultWorkstationConfig = new gcp.workstations.WorkstationConfig("default", {
///     workstationConfigId: "workstation-config",
///     workstationClusterId: defaultWorkstationCluster.workstationClusterId,
///     location: "us-central1",
///     host: {
///         gceInstance: {
///             machineType: "c3-standard-22",
///             bootDiskSizeGb: 35,
///             disablePublicIpAddresses: true,
///             vmTags: pulumi.all([tagKey1.id, tagValue1.id]).apply(([tagKey1Id, tagValue1Id]) => {
///                 [tagKey1Id]: tagValue1Id,
///             }),
///         },
///     },
///     persistentDirectories: [{
///         mountPath: "/home",
///         gceHd: {
///             sourceSnapshot: mySourceSnapshot.id,
///             reclaimPolicy: "DELETE",
///             archiveTimeout: "3600s",
///         },
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// tag_key1 = gcp.tags.TagKey("tag_key1",
///     parent="organizations/0123456789",
///     short_name="keyname")
/// tag_value1 = gcp.tags.TagValue("tag_value1",
///     parent=tag_key1.id,
///     short_name="valuename")
/// default = gcp.compute.Network("default",
///     name="workstation-cluster",
///     auto_create_subnetworks=False)
/// default_subnetwork = gcp.compute.Subnetwork("default",
///     name="workstation-cluster",
///     ip_cidr_range="10.0.0.0/24",
///     region="us-central1",
///     network=default.name)
/// my_source_disk = gcp.compute.Disk("my_source_disk",
///     name="workstation-config-source-disk",
///     size=10,
///     type="pd-ssd",
///     zone="us-central1-a")
/// my_source_snapshot = gcp.compute.Snapshot("my_source_snapshot",
///     name="workstation-config-source-snapshot",
///     source_disk=my_source_disk.name,
///     zone="us-central1-a")
/// default_workstation_cluster = gcp.workstations.WorkstationCluster("default",
///     workstation_cluster_id="workstation-cluster",
///     network=default.id,
///     subnetwork=default_subnetwork.id,
///     location="us-central1")
/// default_workstation_config = gcp.workstations.WorkstationConfig("default",
///     workstation_config_id="workstation-config",
///     workstation_cluster_id=default_workstation_cluster.workstation_cluster_id,
///     location="us-central1",
///     host={
///         "gce_instance": {
///             "machine_type": "c3-standard-22",
///             "boot_disk_size_gb": 35,
///             "disable_public_ip_addresses": True,
///             "vm_tags": pulumi.Output.all(
///                 tagKey1Id=tag_key1.id,
///                 tagValue1Id=tag_value1.id
/// ).apply(lambda resolved_outputs: {
///                 str(resolved_outputs['tagKey1Id']): resolved_outputs['tagValue1Id'],
///             })
/// ,
///         },
///     },
///     persistent_directories=[{
///         "mount_path": "/home",
///         "gce_hd": {
///             "source_snapshot": my_source_snapshot.id,
///             "reclaim_policy": "DELETE",
///             "archive_timeout": "3600s",
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
///     var tagKey1 = new Gcp.Tags.TagKey("tag_key1", new()
///     {
///         Parent = "organizations/0123456789",
///         ShortName = "keyname",
///     });
///
///     var tagValue1 = new Gcp.Tags.TagValue("tag_value1", new()
///     {
///         Parent = tagKey1.Id,
///         ShortName = "valuename",
///     });
///
///     var @default = new Gcp.Compute.Network("default", new()
///     {
///         Name = "workstation-cluster",
///         AutoCreateSubnetworks = false,
///     });
///
///     var defaultSubnetwork = new Gcp.Compute.Subnetwork("default", new()
///     {
///         Name = "workstation-cluster",
///         IpCidrRange = "10.0.0.0/24",
///         Region = "us-central1",
///         Network = @default.Name,
///     });
///
///     var mySourceDisk = new Gcp.Compute.Disk("my_source_disk", new()
///     {
///         Name = "workstation-config-source-disk",
///         Size = 10,
///         Type = "pd-ssd",
///         Zone = "us-central1-a",
///     });
///
///     var mySourceSnapshot = new Gcp.Compute.Snapshot("my_source_snapshot", new()
///     {
///         Name = "workstation-config-source-snapshot",
///         SourceDisk = mySourceDisk.Name,
///         Zone = "us-central1-a",
///     });
///
///     var defaultWorkstationCluster = new Gcp.Workstations.WorkstationCluster("default", new()
///     {
///         WorkstationClusterId = "workstation-cluster",
///         Network = @default.Id,
///         Subnetwork = defaultSubnetwork.Id,
///         Location = "us-central1",
///     });
///
///     var defaultWorkstationConfig = new Gcp.Workstations.WorkstationConfig("default", new()
///     {
///         WorkstationConfigId = "workstation-config",
///         WorkstationClusterId = defaultWorkstationCluster.WorkstationClusterId,
///         Location = "us-central1",
///         Host = new Gcp.Workstations.Inputs.WorkstationConfigHostArgs
///         {
///             GceInstance = new Gcp.Workstations.Inputs.WorkstationConfigHostGceInstanceArgs
///             {
///                 MachineType = "c3-standard-22",
///                 BootDiskSizeGb = 35,
///                 DisablePublicIpAddresses = true,
///                 VmTags = Output.Tuple(tagKey1.Id, tagValue1.Id).Apply(values =>
///                 {
///                     var tagKey1Id = values.Item1;
///                     var tagValue1Id = values.Item2;
///                     return
///                     {
///                         { tagKey1Id, tagValue1Id },
///                     };
///                 }),
///             },
///         },
///         PersistentDirectories = new[]
///         {
///             new Gcp.Workstations.Inputs.WorkstationConfigPersistentDirectoryArgs
///             {
///                 MountPath = "/home",
///                 GceHd = new Gcp.Workstations.Inputs.WorkstationConfigPersistentDirectoryGceHdArgs
///                 {
///                     SourceSnapshot = mySourceSnapshot.Id,
///                     ReclaimPolicy = "DELETE",
///                     ArchiveTimeout = "3600s",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/tags"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/workstations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		tagKey1, err := tags.NewTagKey(ctx, "tag_key1", &tags.TagKeyArgs{
/// 			Parent:    pulumi.String("organizations/0123456789"),
/// 			ShortName: pulumi.String("keyname"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tagValue1, err := tags.NewTagValue(ctx, "tag_value1", &tags.TagValueArgs{
/// 			Parent:    tagKey1.ID().ToIDOutput().ToStringOutput(),
/// 			ShortName: pulumi.String("valuename"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_default, err := compute.NewNetwork(ctx, "default", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("workstation-cluster"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultSubnetwork, err := compute.NewSubnetwork(ctx, "default", &compute.SubnetworkArgs{
/// 			Name:        pulumi.String("workstation-cluster"),
/// 			IpCidrRange: pulumi.String("10.0.0.0/24"),
/// 			Region:      pulumi.String("us-central1"),
/// 			Network:     _default.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		mySourceDisk, err := compute.NewDisk(ctx, "my_source_disk", &compute.DiskArgs{
/// 			Name: pulumi.String("workstation-config-source-disk"),
/// 			Size: pulumi.Int(10),
/// 			Type: pulumi.String("pd-ssd"),
/// 			Zone: pulumi.String("us-central1-a"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		mySourceSnapshot, err := compute.NewSnapshot(ctx, "my_source_snapshot", &compute.SnapshotArgs{
/// 			Name:       pulumi.String("workstation-config-source-snapshot"),
/// 			SourceDisk: mySourceDisk.Name,
/// 			Zone:       pulumi.String("us-central1-a"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultWorkstationCluster, err := workstations.NewWorkstationCluster(ctx, "default", &workstations.WorkstationClusterArgs{
/// 			WorkstationClusterId: pulumi.String("workstation-cluster"),
/// 			Network:              _default.ID().ToIDOutput().ToStringOutput(),
/// 			Subnetwork:           defaultSubnetwork.ID().ToIDOutput().ToStringOutput(),
/// 			Location:             pulumi.String("us-central1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = workstations.NewWorkstationConfig(ctx, "default", &workstations.WorkstationConfigArgs{
/// 			WorkstationConfigId:  pulumi.String("workstation-config"),
/// 			WorkstationClusterId: defaultWorkstationCluster.WorkstationClusterId,
/// 			Location:             pulumi.String("us-central1"),
/// 			Host: &workstations.WorkstationConfigHostArgs{
/// 				GceInstance: &workstations.WorkstationConfigHostGceInstanceArgs{
/// 					MachineType:              pulumi.String("c3-standard-22"),
/// 					BootDiskSizeGb:           pulumi.Int(35),
/// 					DisablePublicIpAddresses: pulumi.Bool(true),
/// 					VmTags: pulumi.StringMap(pulumi.All(tagKey1.ID(), tagValue1.ID()).ApplyT(func(_args []interface{}) (map[string]pulumi.ID, error) {
/// 						tagKey1Id := _args[0].(pulumi.ID)
/// 						tagValue1Id := _args[1].(pulumi.ID)
/// 						return map[string]pulumi.ID(pulumi.String(tagKey1Id).ApplyT(func(__convert string) (map[string]pulumi.ID, error) {
/// 							return map[string]pulumi.ID{
/// 								__convert: tagValue1Id,
/// 							}, nil
/// 						}).(pulumi.IDMapOutput)), nil
/// 					}).(pulumi.IDMapOutput)),
/// 				},
/// 			},
/// 			PersistentDirectories: workstations.WorkstationConfigPersistentDirectoryArray{
/// 				&workstations.WorkstationConfigPersistentDirectoryArgs{
/// 					MountPath: pulumi.String("/home"),
/// 					GceHd: &workstations.WorkstationConfigPersistentDirectoryGceHdArgs{
/// 						SourceSnapshot: mySourceSnapshot.ID().ToIDOutput().ToStringOutput(),
/// 						ReclaimPolicy:  pulumi.String("DELETE"),
/// 						ArchiveTimeout: pulumi.String("3600s"),
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
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_tags_tagkey" "tag_key1" {
///   parent     = "organizations/0123456789"
///   short_name = "keyname"
/// }
/// resource "gcp_tags_tagvalue" "tag_value1" {
///   parent     = gcp_tags_tagkey.tag_key1.id
///   short_name = "valuename"
/// }
/// resource "gcp_compute_network" "default" {
///   name                    = "workstation-cluster"
///   auto_create_subnetworks = false
/// }
/// resource "gcp_compute_subnetwork" "default" {
///   name          = "workstation-cluster"
///   ip_cidr_range = "10.0.0.0/24"
///   region        = "us-central1"
///   network       = gcp_compute_network.default.name
/// }
/// resource "gcp_compute_disk" "my_source_disk" {
///   name = "workstation-config-source-disk"
///   size = 10
///   type = "pd-ssd"
///   zone = "us-central1-a"
/// }
/// resource "gcp_compute_snapshot" "my_source_snapshot" {
///   name        = "workstation-config-source-snapshot"
///   source_disk = gcp_compute_disk.my_source_disk.name
///   zone        = "us-central1-a"
/// }
/// resource "gcp_workstations_workstationcluster" "default" {
///   workstation_cluster_id = "workstation-cluster"
///   network                = gcp_compute_network.default.id
///   subnetwork             = gcp_compute_subnetwork.default.id
///   location               = "us-central1"
/// }
/// resource "gcp_workstations_workstationconfig" "default" {
///   workstation_config_id  = "workstation-config"
///   workstation_cluster_id = gcp_workstations_workstationcluster.default.workstation_cluster_id
///   location               = "us-central1"
///   host = {
///     gce_instance = {
///       machine_type                = "c3-standard-22"
///       boot_disk_size_gb           = 35
///       disable_public_ip_addresses = true
///       vm_tags = {
///         gcp_tags_tagkey.tag_key1.id = gcp_tags_tagvalue.tag_value1.id
///       }
///     }
///   }
///   persistent_directories {
///     mount_path = "/home"
///     gce_hd = {
///       source_snapshot = gcp_compute_snapshot.my_source_snapshot.id
///       reclaim_policy  = "DELETE"
///       archive_timeout = "3600s"
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
/// import com.pulumi.gcp.tags.TagKey;
/// import com.pulumi.gcp.tags.TagKeyArgs;
/// import com.pulumi.gcp.tags.TagValue;
/// import com.pulumi.gcp.tags.TagValueArgs;
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.compute.Subnetwork;
/// import com.pulumi.gcp.compute.SubnetworkArgs;
/// import com.pulumi.gcp.compute.Disk;
/// import com.pulumi.gcp.compute.DiskArgs;
/// import com.pulumi.gcp.compute.Snapshot;
/// import com.pulumi.gcp.compute.SnapshotArgs;
/// import com.pulumi.gcp.workstations.WorkstationCluster;
/// import com.pulumi.gcp.workstations.WorkstationClusterArgs;
/// import com.pulumi.gcp.workstations.WorkstationConfig;
/// import com.pulumi.gcp.workstations.WorkstationConfigArgs;
/// import com.pulumi.gcp.workstations.inputs.WorkstationConfigHostArgs;
/// import com.pulumi.gcp.workstations.inputs.WorkstationConfigHostGceInstanceArgs;
/// import com.pulumi.gcp.workstations.inputs.WorkstationConfigPersistentDirectoryArgs;
/// import com.pulumi.gcp.workstations.inputs.WorkstationConfigPersistentDirectoryGceHdArgs;
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
///         var tagKey1 = new TagKey("tagKey1", TagKeyArgs.builder()
///             .parent("organizations/0123456789")
///             .shortName("keyname")
///             .build());
///
///         var tagValue1 = new TagValue("tagValue1", TagValueArgs.builder()
///             .parent(tagKey1.id())
///             .shortName("valuename")
///             .build());
///
///         var default_ = new Network("default", NetworkArgs.builder()
///             .name("workstation-cluster")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var defaultSubnetwork = new Subnetwork("defaultSubnetwork", SubnetworkArgs.builder()
///             .name("workstation-cluster")
///             .ipCidrRange("10.0.0.0/24")
///             .region("us-central1")
///             .network(default_.name())
///             .build());
///
///         var mySourceDisk = new Disk("mySourceDisk", DiskArgs.builder()
///             .name("workstation-config-source-disk")
///             .size(10)
///             .type("pd-ssd")
///             .zone("us-central1-a")
///             .build());
///
///         var mySourceSnapshot = new Snapshot("mySourceSnapshot", SnapshotArgs.builder()
///             .name("workstation-config-source-snapshot")
///             .sourceDisk(mySourceDisk.name())
///             .zone("us-central1-a")
///             .build());
///
///         var defaultWorkstationCluster = new WorkstationCluster("defaultWorkstationCluster", WorkstationClusterArgs.builder()
///             .workstationClusterId("workstation-cluster")
///             .network(default_.id())
///             .subnetwork(defaultSubnetwork.id())
///             .location("us-central1")
///             .build());
///
///         var defaultWorkstationConfig = new WorkstationConfig("defaultWorkstationConfig", WorkstationConfigArgs.builder()
///             .workstationConfigId("workstation-config")
///             .workstationClusterId(defaultWorkstationCluster.workstationClusterId())
///             .location("us-central1")
///             .host(WorkstationConfigHostArgs.builder()
///                 .gceInstance(WorkstationConfigHostGceInstanceArgs.builder()
///                     .machineType("c3-standard-22")
///                     .bootDiskSizeGb(35)
///                     .disablePublicIpAddresses(true)
///                     .vmTags(Output.tuple(tagKey1.id(), tagValue1.id()).applyValue(values -> {
///                         var tagKey1Id = values.t1;
///                         var tagValue1Id = values.t2;
///                         return tagKey1Id.applyValue(___convert -> Map.of(___convert, tagValue1Id));
///                     }))
///                     .build())
///                 .build())
///             .persistentDirectories(WorkstationConfigPersistentDirectoryArgs.builder()
///                 .mountPath("/home")
///                 .gceHd(WorkstationConfigPersistentDirectoryGceHdArgs.builder()
///                     .sourceSnapshot(mySourceSnapshot.id())
///                     .reclaimPolicy("DELETE")
///                     .archiveTimeout("3600s")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   tagKey1:
///     type: gcp:tags:TagKey
///     name: tag_key1
///     properties:
///       parent: organizations/0123456789
///       shortName: keyname
///   tagValue1:
///     type: gcp:tags:TagValue
///     name: tag_value1
///     properties:
///       parent: ${tagKey1.id}
///       shortName: valuename
///   default:
///     type: gcp:compute:Network
///     properties:
///       name: workstation-cluster
///       autoCreateSubnetworks: false
///   defaultSubnetwork:
///     type: gcp:compute:Subnetwork
///     name: default
///     properties:
///       name: workstation-cluster
///       ipCidrRange: 10.0.0.0/24
///       region: us-central1
///       network: ${default.name}
///   mySourceDisk:
///     type: gcp:compute:Disk
///     name: my_source_disk
///     properties:
///       name: workstation-config-source-disk
///       size: 10
///       type: pd-ssd
///       zone: us-central1-a
///   mySourceSnapshot:
///     type: gcp:compute:Snapshot
///     name: my_source_snapshot
///     properties:
///       name: workstation-config-source-snapshot
///       sourceDisk: ${mySourceDisk.name}
///       zone: us-central1-a
///   defaultWorkstationCluster:
///     type: gcp:workstations:WorkstationCluster
///     name: default
///     properties:
///       workstationClusterId: workstation-cluster
///       network: ${default.id}
///       subnetwork: ${defaultSubnetwork.id}
///       location: us-central1
///   defaultWorkstationConfig:
///     type: gcp:workstations:WorkstationConfig
///     name: default
///     properties:
///       workstationConfigId: workstation-config
///       workstationClusterId: ${defaultWorkstationCluster.workstationClusterId}
///       location: us-central1
///       host:
///         gceInstance:
///           machineType: c3-standard-22
///           bootDiskSizeGb: 35
///           disablePublicIpAddresses: true
///           vmTags:
///             ${tagKey1.id}: ${tagValue1.id}
///       persistentDirectories:
///         - mountPath: /home
///           gceHd:
///             sourceSnapshot: ${mySourceSnapshot.id}
///             reclaimPolicy: DELETE
///             archiveTimeout: 3600s
/// ```
///
/// ### Workstation Config Persistent Directories
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.compute.Network("default", {
///     name: "workstation-cluster",
///     autoCreateSubnetworks: false,
/// });
/// const defaultSubnetwork = new gcp.compute.Subnetwork("default", {
///     name: "workstation-cluster",
///     ipCidrRange: "10.0.0.0/24",
///     region: "us-central1",
///     network: _default.name,
/// });
/// const defaultWorkstationCluster = new gcp.workstations.WorkstationCluster("default", {
///     workstationClusterId: "workstation-cluster",
///     network: _default.id,
///     subnetwork: defaultSubnetwork.id,
///     location: "us-central1",
///     labels: {
///         label: "key",
///     },
///     annotations: {
///         "label-one": "value-one",
///     },
/// });
/// const defaultWorkstationConfig = new gcp.workstations.WorkstationConfig("default", {
///     workstationConfigId: "workstation-config",
///     workstationClusterId: defaultWorkstationCluster.workstationClusterId,
///     location: "us-central1",
///     host: {
///         gceInstance: {
///             machineType: "e2-standard-4",
///             bootDiskSizeGb: 35,
///             disablePublicIpAddresses: true,
///             shieldedInstanceConfig: {
///                 enableSecureBoot: true,
///                 enableVtpm: true,
///             },
///         },
///     },
///     persistentDirectories: [{
///         mountPath: "/home",
///         gcePd: {
///             sizeGb: 200,
///             fsType: "ext4",
///             diskType: "pd-standard",
///             reclaimPolicy: "DELETE",
///         },
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.compute.Network("default",
///     name="workstation-cluster",
///     auto_create_subnetworks=False)
/// default_subnetwork = gcp.compute.Subnetwork("default",
///     name="workstation-cluster",
///     ip_cidr_range="10.0.0.0/24",
///     region="us-central1",
///     network=default.name)
/// default_workstation_cluster = gcp.workstations.WorkstationCluster("default",
///     workstation_cluster_id="workstation-cluster",
///     network=default.id,
///     subnetwork=default_subnetwork.id,
///     location="us-central1",
///     labels={
///         "label": "key",
///     },
///     annotations={
///         "label-one": "value-one",
///     })
/// default_workstation_config = gcp.workstations.WorkstationConfig("default",
///     workstation_config_id="workstation-config",
///     workstation_cluster_id=default_workstation_cluster.workstation_cluster_id,
///     location="us-central1",
///     host={
///         "gce_instance": {
///             "machine_type": "e2-standard-4",
///             "boot_disk_size_gb": 35,
///             "disable_public_ip_addresses": True,
///             "shielded_instance_config": {
///                 "enable_secure_boot": True,
///                 "enable_vtpm": True,
///             },
///         },
///     },
///     persistent_directories=[{
///         "mount_path": "/home",
///         "gce_pd": {
///             "size_gb": 200,
///             "fs_type": "ext4",
///             "disk_type": "pd-standard",
///             "reclaim_policy": "DELETE",
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
///     var @default = new Gcp.Compute.Network("default", new()
///     {
///         Name = "workstation-cluster",
///         AutoCreateSubnetworks = false,
///     });
///
///     var defaultSubnetwork = new Gcp.Compute.Subnetwork("default", new()
///     {
///         Name = "workstation-cluster",
///         IpCidrRange = "10.0.0.0/24",
///         Region = "us-central1",
///         Network = @default.Name,
///     });
///
///     var defaultWorkstationCluster = new Gcp.Workstations.WorkstationCluster("default", new()
///     {
///         WorkstationClusterId = "workstation-cluster",
///         Network = @default.Id,
///         Subnetwork = defaultSubnetwork.Id,
///         Location = "us-central1",
///         Labels =
///         {
///             { "label", "key" },
///         },
///         Annotations =
///         {
///             { "label-one", "value-one" },
///         },
///     });
///
///     var defaultWorkstationConfig = new Gcp.Workstations.WorkstationConfig("default", new()
///     {
///         WorkstationConfigId = "workstation-config",
///         WorkstationClusterId = defaultWorkstationCluster.WorkstationClusterId,
///         Location = "us-central1",
///         Host = new Gcp.Workstations.Inputs.WorkstationConfigHostArgs
///         {
///             GceInstance = new Gcp.Workstations.Inputs.WorkstationConfigHostGceInstanceArgs
///             {
///                 MachineType = "e2-standard-4",
///                 BootDiskSizeGb = 35,
///                 DisablePublicIpAddresses = true,
///                 ShieldedInstanceConfig = new Gcp.Workstations.Inputs.WorkstationConfigHostGceInstanceShieldedInstanceConfigArgs
///                 {
///                     EnableSecureBoot = true,
///                     EnableVtpm = true,
///                 },
///             },
///         },
///         PersistentDirectories = new[]
///         {
///             new Gcp.Workstations.Inputs.WorkstationConfigPersistentDirectoryArgs
///             {
///                 MountPath = "/home",
///                 GcePd = new Gcp.Workstations.Inputs.WorkstationConfigPersistentDirectoryGcePdArgs
///                 {
///                     SizeGb = 200,
///                     FsType = "ext4",
///                     DiskType = "pd-standard",
///                     ReclaimPolicy = "DELETE",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/workstations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := compute.NewNetwork(ctx, "default", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("workstation-cluster"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultSubnetwork, err := compute.NewSubnetwork(ctx, "default", &compute.SubnetworkArgs{
/// 			Name:        pulumi.String("workstation-cluster"),
/// 			IpCidrRange: pulumi.String("10.0.0.0/24"),
/// 			Region:      pulumi.String("us-central1"),
/// 			Network:     _default.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultWorkstationCluster, err := workstations.NewWorkstationCluster(ctx, "default", &workstations.WorkstationClusterArgs{
/// 			WorkstationClusterId: pulumi.String("workstation-cluster"),
/// 			Network:              _default.ID().ToIDOutput().ToStringOutput(),
/// 			Subnetwork:           defaultSubnetwork.ID().ToIDOutput().ToStringOutput(),
/// 			Location:             pulumi.String("us-central1"),
/// 			Labels: pulumi.StringMap{
/// 				"label": pulumi.String("key"),
/// 			},
/// 			Annotations: pulumi.StringMap{
/// 				"label-one": pulumi.String("value-one"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = workstations.NewWorkstationConfig(ctx, "default", &workstations.WorkstationConfigArgs{
/// 			WorkstationConfigId:  pulumi.String("workstation-config"),
/// 			WorkstationClusterId: defaultWorkstationCluster.WorkstationClusterId,
/// 			Location:             pulumi.String("us-central1"),
/// 			Host: &workstations.WorkstationConfigHostArgs{
/// 				GceInstance: &workstations.WorkstationConfigHostGceInstanceArgs{
/// 					MachineType:              pulumi.String("e2-standard-4"),
/// 					BootDiskSizeGb:           pulumi.Int(35),
/// 					DisablePublicIpAddresses: pulumi.Bool(true),
/// 					ShieldedInstanceConfig: &workstations.WorkstationConfigHostGceInstanceShieldedInstanceConfigArgs{
/// 						EnableSecureBoot: pulumi.Bool(true),
/// 						EnableVtpm:       pulumi.Bool(true),
/// 					},
/// 				},
/// 			},
/// 			PersistentDirectories: workstations.WorkstationConfigPersistentDirectoryArray{
/// 				&workstations.WorkstationConfigPersistentDirectoryArgs{
/// 					MountPath: pulumi.String("/home"),
/// 					GcePd: &workstations.WorkstationConfigPersistentDirectoryGcePdArgs{
/// 						SizeGb:        pulumi.Int(200),
/// 						FsType:        pulumi.String("ext4"),
/// 						DiskType:      pulumi.String("pd-standard"),
/// 						ReclaimPolicy: pulumi.String("DELETE"),
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
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_compute_network" "default" {
///   name                    = "workstation-cluster"
///   auto_create_subnetworks = false
/// }
/// resource "gcp_compute_subnetwork" "default" {
///   name          = "workstation-cluster"
///   ip_cidr_range = "10.0.0.0/24"
///   region        = "us-central1"
///   network       = gcp_compute_network.default.name
/// }
/// resource "gcp_workstations_workstationcluster" "default" {
///   workstation_cluster_id = "workstation-cluster"
///   network                = gcp_compute_network.default.id
///   subnetwork             = gcp_compute_subnetwork.default.id
///   location               = "us-central1"
///   labels = {
///     "label" = "key"
///   }
///   annotations = {
///     "label-one" = "value-one"
///   }
/// }
/// resource "gcp_workstations_workstationconfig" "default" {
///   workstation_config_id  = "workstation-config"
///   workstation_cluster_id = gcp_workstations_workstationcluster.default.workstation_cluster_id
///   location               = "us-central1"
///   host = {
///     gce_instance = {
///       machine_type                = "e2-standard-4"
///       boot_disk_size_gb           = 35
///       disable_public_ip_addresses = true
///       shielded_instance_config = {
///         enable_secure_boot = true
///         enable_vtpm        = true
///       }
///     }
///   }
///   persistent_directories {
///     mount_path = "/home"
///     gce_pd = {
///       size_gb        = 200
///       fs_type        = "ext4"
///       disk_type      = "pd-standard"
///       reclaim_policy = "DELETE"
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
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.compute.Subnetwork;
/// import com.pulumi.gcp.compute.SubnetworkArgs;
/// import com.pulumi.gcp.workstations.WorkstationCluster;
/// import com.pulumi.gcp.workstations.WorkstationClusterArgs;
/// import com.pulumi.gcp.workstations.WorkstationConfig;
/// import com.pulumi.gcp.workstations.WorkstationConfigArgs;
/// import com.pulumi.gcp.workstations.inputs.WorkstationConfigHostArgs;
/// import com.pulumi.gcp.workstations.inputs.WorkstationConfigHostGceInstanceArgs;
/// import com.pulumi.gcp.workstations.inputs.WorkstationConfigHostGceInstanceShieldedInstanceConfigArgs;
/// import com.pulumi.gcp.workstations.inputs.WorkstationConfigPersistentDirectoryArgs;
/// import com.pulumi.gcp.workstations.inputs.WorkstationConfigPersistentDirectoryGcePdArgs;
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
///         var default_ = new Network("default", NetworkArgs.builder()
///             .name("workstation-cluster")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var defaultSubnetwork = new Subnetwork("defaultSubnetwork", SubnetworkArgs.builder()
///             .name("workstation-cluster")
///             .ipCidrRange("10.0.0.0/24")
///             .region("us-central1")
///             .network(default_.name())
///             .build());
///
///         var defaultWorkstationCluster = new WorkstationCluster("defaultWorkstationCluster", WorkstationClusterArgs.builder()
///             .workstationClusterId("workstation-cluster")
///             .network(default_.id())
///             .subnetwork(defaultSubnetwork.id())
///             .location("us-central1")
///             .labels(Map.of("label", "key"))
///             .annotations(Map.of("label-one", "value-one"))
///             .build());
///
///         var defaultWorkstationConfig = new WorkstationConfig("defaultWorkstationConfig", WorkstationConfigArgs.builder()
///             .workstationConfigId("workstation-config")
///             .workstationClusterId(defaultWorkstationCluster.workstationClusterId())
///             .location("us-central1")
///             .host(WorkstationConfigHostArgs.builder()
///                 .gceInstance(WorkstationConfigHostGceInstanceArgs.builder()
///                     .machineType("e2-standard-4")
///                     .bootDiskSizeGb(35)
///                     .disablePublicIpAddresses(true)
///                     .shieldedInstanceConfig(WorkstationConfigHostGceInstanceShieldedInstanceConfigArgs.builder()
///                         .enableSecureBoot(true)
///                         .enableVtpm(true)
///                         .build())
///                     .build())
///                 .build())
///             .persistentDirectories(WorkstationConfigPersistentDirectoryArgs.builder()
///                 .mountPath("/home")
///                 .gcePd(WorkstationConfigPersistentDirectoryGcePdArgs.builder()
///                     .sizeGb(200)
///                     .fsType("ext4")
///                     .diskType("pd-standard")
///                     .reclaimPolicy("DELETE")
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
///     type: gcp:compute:Network
///     properties:
///       name: workstation-cluster
///       autoCreateSubnetworks: false
///   defaultSubnetwork:
///     type: gcp:compute:Subnetwork
///     name: default
///     properties:
///       name: workstation-cluster
///       ipCidrRange: 10.0.0.0/24
///       region: us-central1
///       network: ${default.name}
///   defaultWorkstationCluster:
///     type: gcp:workstations:WorkstationCluster
///     name: default
///     properties:
///       workstationClusterId: workstation-cluster
///       network: ${default.id}
///       subnetwork: ${defaultSubnetwork.id}
///       location: us-central1
///       labels:
///         label: key
///       annotations:
///         label-one: value-one
///   defaultWorkstationConfig:
///     type: gcp:workstations:WorkstationConfig
///     name: default
///     properties:
///       workstationConfigId: workstation-config
///       workstationClusterId: ${defaultWorkstationCluster.workstationClusterId}
///       location: us-central1
///       host:
///         gceInstance:
///           machineType: e2-standard-4
///           bootDiskSizeGb: 35
///           disablePublicIpAddresses: true
///           shieldedInstanceConfig:
///             enableSecureBoot: true
///             enableVtpm: true
///       persistentDirectories:
///         - mountPath: /home
///           gcePd:
///             sizeGb: 200
///             fsType: ext4
///             diskType: pd-standard
///             reclaimPolicy: DELETE
/// ```
///
/// ### Workstation Config Source Snapshot
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.compute.Network("default", {
///     name: "workstation-cluster",
///     autoCreateSubnetworks: false,
/// });
/// const defaultSubnetwork = new gcp.compute.Subnetwork("default", {
///     name: "workstation-cluster",
///     ipCidrRange: "10.0.0.0/24",
///     region: "us-central1",
///     network: _default.name,
/// });
/// const mySourceDisk = new gcp.compute.Disk("my_source_disk", {
///     name: "workstation-config",
///     size: 10,
///     type: "pd-ssd",
///     zone: "us-central1-a",
/// });
/// const mySourceSnapshot = new gcp.compute.Snapshot("my_source_snapshot", {
///     name: "workstation-config",
///     sourceDisk: mySourceDisk.name,
///     zone: "us-central1-a",
/// });
/// const defaultWorkstationCluster = new gcp.workstations.WorkstationCluster("default", {
///     workstationClusterId: "workstation-cluster",
///     network: _default.id,
///     subnetwork: defaultSubnetwork.id,
///     location: "us-central1",
/// });
/// const defaultWorkstationConfig = new gcp.workstations.WorkstationConfig("default", {
///     workstationConfigId: "workstation-config",
///     workstationClusterId: defaultWorkstationCluster.workstationClusterId,
///     location: defaultWorkstationCluster.location,
///     persistentDirectories: [{
///         mountPath: "/home",
///         gcePd: {
///             sourceSnapshot: mySourceSnapshot.id,
///             reclaimPolicy: "DELETE",
///         },
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.compute.Network("default",
///     name="workstation-cluster",
///     auto_create_subnetworks=False)
/// default_subnetwork = gcp.compute.Subnetwork("default",
///     name="workstation-cluster",
///     ip_cidr_range="10.0.0.0/24",
///     region="us-central1",
///     network=default.name)
/// my_source_disk = gcp.compute.Disk("my_source_disk",
///     name="workstation-config",
///     size=10,
///     type="pd-ssd",
///     zone="us-central1-a")
/// my_source_snapshot = gcp.compute.Snapshot("my_source_snapshot",
///     name="workstation-config",
///     source_disk=my_source_disk.name,
///     zone="us-central1-a")
/// default_workstation_cluster = gcp.workstations.WorkstationCluster("default",
///     workstation_cluster_id="workstation-cluster",
///     network=default.id,
///     subnetwork=default_subnetwork.id,
///     location="us-central1")
/// default_workstation_config = gcp.workstations.WorkstationConfig("default",
///     workstation_config_id="workstation-config",
///     workstation_cluster_id=default_workstation_cluster.workstation_cluster_id,
///     location=default_workstation_cluster.location,
///     persistent_directories=[{
///         "mount_path": "/home",
///         "gce_pd": {
///             "source_snapshot": my_source_snapshot.id,
///             "reclaim_policy": "DELETE",
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
///     var @default = new Gcp.Compute.Network("default", new()
///     {
///         Name = "workstation-cluster",
///         AutoCreateSubnetworks = false,
///     });
///
///     var defaultSubnetwork = new Gcp.Compute.Subnetwork("default", new()
///     {
///         Name = "workstation-cluster",
///         IpCidrRange = "10.0.0.0/24",
///         Region = "us-central1",
///         Network = @default.Name,
///     });
///
///     var mySourceDisk = new Gcp.Compute.Disk("my_source_disk", new()
///     {
///         Name = "workstation-config",
///         Size = 10,
///         Type = "pd-ssd",
///         Zone = "us-central1-a",
///     });
///
///     var mySourceSnapshot = new Gcp.Compute.Snapshot("my_source_snapshot", new()
///     {
///         Name = "workstation-config",
///         SourceDisk = mySourceDisk.Name,
///         Zone = "us-central1-a",
///     });
///
///     var defaultWorkstationCluster = new Gcp.Workstations.WorkstationCluster("default", new()
///     {
///         WorkstationClusterId = "workstation-cluster",
///         Network = @default.Id,
///         Subnetwork = defaultSubnetwork.Id,
///         Location = "us-central1",
///     });
///
///     var defaultWorkstationConfig = new Gcp.Workstations.WorkstationConfig("default", new()
///     {
///         WorkstationConfigId = "workstation-config",
///         WorkstationClusterId = defaultWorkstationCluster.WorkstationClusterId,
///         Location = defaultWorkstationCluster.Location,
///         PersistentDirectories = new[]
///         {
///             new Gcp.Workstations.Inputs.WorkstationConfigPersistentDirectoryArgs
///             {
///                 MountPath = "/home",
///                 GcePd = new Gcp.Workstations.Inputs.WorkstationConfigPersistentDirectoryGcePdArgs
///                 {
///                     SourceSnapshot = mySourceSnapshot.Id,
///                     ReclaimPolicy = "DELETE",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/workstations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := compute.NewNetwork(ctx, "default", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("workstation-cluster"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultSubnetwork, err := compute.NewSubnetwork(ctx, "default", &compute.SubnetworkArgs{
/// 			Name:        pulumi.String("workstation-cluster"),
/// 			IpCidrRange: pulumi.String("10.0.0.0/24"),
/// 			Region:      pulumi.String("us-central1"),
/// 			Network:     _default.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		mySourceDisk, err := compute.NewDisk(ctx, "my_source_disk", &compute.DiskArgs{
/// 			Name: pulumi.String("workstation-config"),
/// 			Size: pulumi.Int(10),
/// 			Type: pulumi.String("pd-ssd"),
/// 			Zone: pulumi.String("us-central1-a"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		mySourceSnapshot, err := compute.NewSnapshot(ctx, "my_source_snapshot", &compute.SnapshotArgs{
/// 			Name:       pulumi.String("workstation-config"),
/// 			SourceDisk: mySourceDisk.Name,
/// 			Zone:       pulumi.String("us-central1-a"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultWorkstationCluster, err := workstations.NewWorkstationCluster(ctx, "default", &workstations.WorkstationClusterArgs{
/// 			WorkstationClusterId: pulumi.String("workstation-cluster"),
/// 			Network:              _default.ID().ToIDOutput().ToStringOutput(),
/// 			Subnetwork:           defaultSubnetwork.ID().ToIDOutput().ToStringOutput(),
/// 			Location:             pulumi.String("us-central1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = workstations.NewWorkstationConfig(ctx, "default", &workstations.WorkstationConfigArgs{
/// 			WorkstationConfigId:  pulumi.String("workstation-config"),
/// 			WorkstationClusterId: defaultWorkstationCluster.WorkstationClusterId,
/// 			Location:             defaultWorkstationCluster.Location,
/// 			PersistentDirectories: workstations.WorkstationConfigPersistentDirectoryArray{
/// 				&workstations.WorkstationConfigPersistentDirectoryArgs{
/// 					MountPath: pulumi.String("/home"),
/// 					GcePd: &workstations.WorkstationConfigPersistentDirectoryGcePdArgs{
/// 						SourceSnapshot: mySourceSnapshot.ID().ToIDOutput().ToStringOutput(),
/// 						ReclaimPolicy:  pulumi.String("DELETE"),
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
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_compute_network" "default" {
///   name                    = "workstation-cluster"
///   auto_create_subnetworks = false
/// }
/// resource "gcp_compute_subnetwork" "default" {
///   name          = "workstation-cluster"
///   ip_cidr_range = "10.0.0.0/24"
///   region        = "us-central1"
///   network       = gcp_compute_network.default.name
/// }
/// resource "gcp_compute_disk" "my_source_disk" {
///   name = "workstation-config"
///   size = 10
///   type = "pd-ssd"
///   zone = "us-central1-a"
/// }
/// resource "gcp_compute_snapshot" "my_source_snapshot" {
///   name        = "workstation-config"
///   source_disk = gcp_compute_disk.my_source_disk.name
///   zone        = "us-central1-a"
/// }
/// resource "gcp_workstations_workstationcluster" "default" {
///   workstation_cluster_id = "workstation-cluster"
///   network                = gcp_compute_network.default.id
///   subnetwork             = gcp_compute_subnetwork.default.id
///   location               = "us-central1"
/// }
/// resource "gcp_workstations_workstationconfig" "default" {
///   workstation_config_id  = "workstation-config"
///   workstation_cluster_id = gcp_workstations_workstationcluster.default.workstation_cluster_id
///   location               = gcp_workstations_workstationcluster.default.location
///   persistent_directories {
///     mount_path = "/home"
///     gce_pd = {
///       source_snapshot = gcp_compute_snapshot.my_source_snapshot.id
///       reclaim_policy  = "DELETE"
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
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.compute.Subnetwork;
/// import com.pulumi.gcp.compute.SubnetworkArgs;
/// import com.pulumi.gcp.compute.Disk;
/// import com.pulumi.gcp.compute.DiskArgs;
/// import com.pulumi.gcp.compute.Snapshot;
/// import com.pulumi.gcp.compute.SnapshotArgs;
/// import com.pulumi.gcp.workstations.WorkstationCluster;
/// import com.pulumi.gcp.workstations.WorkstationClusterArgs;
/// import com.pulumi.gcp.workstations.WorkstationConfig;
/// import com.pulumi.gcp.workstations.WorkstationConfigArgs;
/// import com.pulumi.gcp.workstations.inputs.WorkstationConfigPersistentDirectoryArgs;
/// import com.pulumi.gcp.workstations.inputs.WorkstationConfigPersistentDirectoryGcePdArgs;
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
///         var default_ = new Network("default", NetworkArgs.builder()
///             .name("workstation-cluster")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var defaultSubnetwork = new Subnetwork("defaultSubnetwork", SubnetworkArgs.builder()
///             .name("workstation-cluster")
///             .ipCidrRange("10.0.0.0/24")
///             .region("us-central1")
///             .network(default_.name())
///             .build());
///
///         var mySourceDisk = new Disk("mySourceDisk", DiskArgs.builder()
///             .name("workstation-config")
///             .size(10)
///             .type("pd-ssd")
///             .zone("us-central1-a")
///             .build());
///
///         var mySourceSnapshot = new Snapshot("mySourceSnapshot", SnapshotArgs.builder()
///             .name("workstation-config")
///             .sourceDisk(mySourceDisk.name())
///             .zone("us-central1-a")
///             .build());
///
///         var defaultWorkstationCluster = new WorkstationCluster("defaultWorkstationCluster", WorkstationClusterArgs.builder()
///             .workstationClusterId("workstation-cluster")
///             .network(default_.id())
///             .subnetwork(defaultSubnetwork.id())
///             .location("us-central1")
///             .build());
///
///         var defaultWorkstationConfig = new WorkstationConfig("defaultWorkstationConfig", WorkstationConfigArgs.builder()
///             .workstationConfigId("workstation-config")
///             .workstationClusterId(defaultWorkstationCluster.workstationClusterId())
///             .location(defaultWorkstationCluster.location())
///             .persistentDirectories(WorkstationConfigPersistentDirectoryArgs.builder()
///                 .mountPath("/home")
///                 .gcePd(WorkstationConfigPersistentDirectoryGcePdArgs.builder()
///                     .sourceSnapshot(mySourceSnapshot.id())
///                     .reclaimPolicy("DELETE")
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
///     type: gcp:compute:Network
///     properties:
///       name: workstation-cluster
///       autoCreateSubnetworks: false
///   defaultSubnetwork:
///     type: gcp:compute:Subnetwork
///     name: default
///     properties:
///       name: workstation-cluster
///       ipCidrRange: 10.0.0.0/24
///       region: us-central1
///       network: ${default.name}
///   mySourceDisk:
///     type: gcp:compute:Disk
///     name: my_source_disk
///     properties:
///       name: workstation-config
///       size: 10
///       type: pd-ssd
///       zone: us-central1-a
///   mySourceSnapshot:
///     type: gcp:compute:Snapshot
///     name: my_source_snapshot
///     properties:
///       name: workstation-config
///       sourceDisk: ${mySourceDisk.name}
///       zone: us-central1-a
///   defaultWorkstationCluster:
///     type: gcp:workstations:WorkstationCluster
///     name: default
///     properties:
///       workstationClusterId: workstation-cluster
///       network: ${default.id}
///       subnetwork: ${defaultSubnetwork.id}
///       location: us-central1
///   defaultWorkstationConfig:
///     type: gcp:workstations:WorkstationConfig
///     name: default
///     properties:
///       workstationConfigId: workstation-config
///       workstationClusterId: ${defaultWorkstationCluster.workstationClusterId}
///       location: ${defaultWorkstationCluster.location}
///       persistentDirectories:
///         - mountPath: /home
///           gcePd:
///             sourceSnapshot: ${mySourceSnapshot.id}
///             reclaimPolicy: DELETE
/// ```
///
/// ### Workstation Config Shielded Instance Config
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.compute.Network("default", {
///     name: "workstation-cluster",
///     autoCreateSubnetworks: false,
/// });
/// const defaultSubnetwork = new gcp.compute.Subnetwork("default", {
///     name: "workstation-cluster",
///     ipCidrRange: "10.0.0.0/24",
///     region: "us-central1",
///     network: _default.name,
/// });
/// const defaultWorkstationCluster = new gcp.workstations.WorkstationCluster("default", {
///     workstationClusterId: "workstation-cluster",
///     network: _default.id,
///     subnetwork: defaultSubnetwork.id,
///     location: "us-central1",
///     labels: {
///         label: "key",
///     },
///     annotations: {
///         "label-one": "value-one",
///     },
/// });
/// const defaultWorkstationConfig = new gcp.workstations.WorkstationConfig("default", {
///     workstationConfigId: "workstation-config",
///     workstationClusterId: defaultWorkstationCluster.workstationClusterId,
///     location: "us-central1",
///     host: {
///         gceInstance: {
///             machineType: "e2-standard-4",
///             bootDiskSizeGb: 35,
///             disablePublicIpAddresses: true,
///             shieldedInstanceConfig: {
///                 enableSecureBoot: true,
///                 enableVtpm: true,
///             },
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.compute.Network("default",
///     name="workstation-cluster",
///     auto_create_subnetworks=False)
/// default_subnetwork = gcp.compute.Subnetwork("default",
///     name="workstation-cluster",
///     ip_cidr_range="10.0.0.0/24",
///     region="us-central1",
///     network=default.name)
/// default_workstation_cluster = gcp.workstations.WorkstationCluster("default",
///     workstation_cluster_id="workstation-cluster",
///     network=default.id,
///     subnetwork=default_subnetwork.id,
///     location="us-central1",
///     labels={
///         "label": "key",
///     },
///     annotations={
///         "label-one": "value-one",
///     })
/// default_workstation_config = gcp.workstations.WorkstationConfig("default",
///     workstation_config_id="workstation-config",
///     workstation_cluster_id=default_workstation_cluster.workstation_cluster_id,
///     location="us-central1",
///     host={
///         "gce_instance": {
///             "machine_type": "e2-standard-4",
///             "boot_disk_size_gb": 35,
///             "disable_public_ip_addresses": True,
///             "shielded_instance_config": {
///                 "enable_secure_boot": True,
///                 "enable_vtpm": True,
///             },
///         },
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
///     var @default = new Gcp.Compute.Network("default", new()
///     {
///         Name = "workstation-cluster",
///         AutoCreateSubnetworks = false,
///     });
///
///     var defaultSubnetwork = new Gcp.Compute.Subnetwork("default", new()
///     {
///         Name = "workstation-cluster",
///         IpCidrRange = "10.0.0.0/24",
///         Region = "us-central1",
///         Network = @default.Name,
///     });
///
///     var defaultWorkstationCluster = new Gcp.Workstations.WorkstationCluster("default", new()
///     {
///         WorkstationClusterId = "workstation-cluster",
///         Network = @default.Id,
///         Subnetwork = defaultSubnetwork.Id,
///         Location = "us-central1",
///         Labels =
///         {
///             { "label", "key" },
///         },
///         Annotations =
///         {
///             { "label-one", "value-one" },
///         },
///     });
///
///     var defaultWorkstationConfig = new Gcp.Workstations.WorkstationConfig("default", new()
///     {
///         WorkstationConfigId = "workstation-config",
///         WorkstationClusterId = defaultWorkstationCluster.WorkstationClusterId,
///         Location = "us-central1",
///         Host = new Gcp.Workstations.Inputs.WorkstationConfigHostArgs
///         {
///             GceInstance = new Gcp.Workstations.Inputs.WorkstationConfigHostGceInstanceArgs
///             {
///                 MachineType = "e2-standard-4",
///                 BootDiskSizeGb = 35,
///                 DisablePublicIpAddresses = true,
///                 ShieldedInstanceConfig = new Gcp.Workstations.Inputs.WorkstationConfigHostGceInstanceShieldedInstanceConfigArgs
///                 {
///                     EnableSecureBoot = true,
///                     EnableVtpm = true,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/workstations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := compute.NewNetwork(ctx, "default", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("workstation-cluster"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultSubnetwork, err := compute.NewSubnetwork(ctx, "default", &compute.SubnetworkArgs{
/// 			Name:        pulumi.String("workstation-cluster"),
/// 			IpCidrRange: pulumi.String("10.0.0.0/24"),
/// 			Region:      pulumi.String("us-central1"),
/// 			Network:     _default.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultWorkstationCluster, err := workstations.NewWorkstationCluster(ctx, "default", &workstations.WorkstationClusterArgs{
/// 			WorkstationClusterId: pulumi.String("workstation-cluster"),
/// 			Network:              _default.ID().ToIDOutput().ToStringOutput(),
/// 			Subnetwork:           defaultSubnetwork.ID().ToIDOutput().ToStringOutput(),
/// 			Location:             pulumi.String("us-central1"),
/// 			Labels: pulumi.StringMap{
/// 				"label": pulumi.String("key"),
/// 			},
/// 			Annotations: pulumi.StringMap{
/// 				"label-one": pulumi.String("value-one"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = workstations.NewWorkstationConfig(ctx, "default", &workstations.WorkstationConfigArgs{
/// 			WorkstationConfigId:  pulumi.String("workstation-config"),
/// 			WorkstationClusterId: defaultWorkstationCluster.WorkstationClusterId,
/// 			Location:             pulumi.String("us-central1"),
/// 			Host: &workstations.WorkstationConfigHostArgs{
/// 				GceInstance: &workstations.WorkstationConfigHostGceInstanceArgs{
/// 					MachineType:              pulumi.String("e2-standard-4"),
/// 					BootDiskSizeGb:           pulumi.Int(35),
/// 					DisablePublicIpAddresses: pulumi.Bool(true),
/// 					ShieldedInstanceConfig: &workstations.WorkstationConfigHostGceInstanceShieldedInstanceConfigArgs{
/// 						EnableSecureBoot: pulumi.Bool(true),
/// 						EnableVtpm:       pulumi.Bool(true),
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
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_compute_network" "default" {
///   name                    = "workstation-cluster"
///   auto_create_subnetworks = false
/// }
/// resource "gcp_compute_subnetwork" "default" {
///   name          = "workstation-cluster"
///   ip_cidr_range = "10.0.0.0/24"
///   region        = "us-central1"
///   network       = gcp_compute_network.default.name
/// }
/// resource "gcp_workstations_workstationcluster" "default" {
///   workstation_cluster_id = "workstation-cluster"
///   network                = gcp_compute_network.default.id
///   subnetwork             = gcp_compute_subnetwork.default.id
///   location               = "us-central1"
///   labels = {
///     "label" = "key"
///   }
///   annotations = {
///     "label-one" = "value-one"
///   }
/// }
/// resource "gcp_workstations_workstationconfig" "default" {
///   workstation_config_id  = "workstation-config"
///   workstation_cluster_id = gcp_workstations_workstationcluster.default.workstation_cluster_id
///   location               = "us-central1"
///   host = {
///     gce_instance = {
///       machine_type                = "e2-standard-4"
///       boot_disk_size_gb           = 35
///       disable_public_ip_addresses = true
///       shielded_instance_config = {
///         enable_secure_boot = true
///         enable_vtpm        = true
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
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.compute.Subnetwork;
/// import com.pulumi.gcp.compute.SubnetworkArgs;
/// import com.pulumi.gcp.workstations.WorkstationCluster;
/// import com.pulumi.gcp.workstations.WorkstationClusterArgs;
/// import com.pulumi.gcp.workstations.WorkstationConfig;
/// import com.pulumi.gcp.workstations.WorkstationConfigArgs;
/// import com.pulumi.gcp.workstations.inputs.WorkstationConfigHostArgs;
/// import com.pulumi.gcp.workstations.inputs.WorkstationConfigHostGceInstanceArgs;
/// import com.pulumi.gcp.workstations.inputs.WorkstationConfigHostGceInstanceShieldedInstanceConfigArgs;
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
///         var default_ = new Network("default", NetworkArgs.builder()
///             .name("workstation-cluster")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var defaultSubnetwork = new Subnetwork("defaultSubnetwork", SubnetworkArgs.builder()
///             .name("workstation-cluster")
///             .ipCidrRange("10.0.0.0/24")
///             .region("us-central1")
///             .network(default_.name())
///             .build());
///
///         var defaultWorkstationCluster = new WorkstationCluster("defaultWorkstationCluster", WorkstationClusterArgs.builder()
///             .workstationClusterId("workstation-cluster")
///             .network(default_.id())
///             .subnetwork(defaultSubnetwork.id())
///             .location("us-central1")
///             .labels(Map.of("label", "key"))
///             .annotations(Map.of("label-one", "value-one"))
///             .build());
///
///         var defaultWorkstationConfig = new WorkstationConfig("defaultWorkstationConfig", WorkstationConfigArgs.builder()
///             .workstationConfigId("workstation-config")
///             .workstationClusterId(defaultWorkstationCluster.workstationClusterId())
///             .location("us-central1")
///             .host(WorkstationConfigHostArgs.builder()
///                 .gceInstance(WorkstationConfigHostGceInstanceArgs.builder()
///                     .machineType("e2-standard-4")
///                     .bootDiskSizeGb(35)
///                     .disablePublicIpAddresses(true)
///                     .shieldedInstanceConfig(WorkstationConfigHostGceInstanceShieldedInstanceConfigArgs.builder()
///                         .enableSecureBoot(true)
///                         .enableVtpm(true)
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
///     type: gcp:compute:Network
///     properties:
///       name: workstation-cluster
///       autoCreateSubnetworks: false
///   defaultSubnetwork:
///     type: gcp:compute:Subnetwork
///     name: default
///     properties:
///       name: workstation-cluster
///       ipCidrRange: 10.0.0.0/24
///       region: us-central1
///       network: ${default.name}
///   defaultWorkstationCluster:
///     type: gcp:workstations:WorkstationCluster
///     name: default
///     properties:
///       workstationClusterId: workstation-cluster
///       network: ${default.id}
///       subnetwork: ${defaultSubnetwork.id}
///       location: us-central1
///       labels:
///         label: key
///       annotations:
///         label-one: value-one
///   defaultWorkstationConfig:
///     type: gcp:workstations:WorkstationConfig
///     name: default
///     properties:
///       workstationConfigId: workstation-config
///       workstationClusterId: ${defaultWorkstationCluster.workstationClusterId}
///       location: us-central1
///       host:
///         gceInstance:
///           machineType: e2-standard-4
///           bootDiskSizeGb: 35
///           disablePublicIpAddresses: true
///           shieldedInstanceConfig:
///             enableSecureBoot: true
///             enableVtpm: true
/// ```
///
/// ### Workstation Config Accelerators
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.compute.Network("default", {
///     name: "workstation-cluster",
///     autoCreateSubnetworks: false,
/// });
/// const defaultSubnetwork = new gcp.compute.Subnetwork("default", {
///     name: "workstation-cluster",
///     ipCidrRange: "10.0.0.0/24",
///     region: "us-central1",
///     network: _default.name,
/// });
/// const defaultWorkstationCluster = new gcp.workstations.WorkstationCluster("default", {
///     workstationClusterId: "workstation-cluster",
///     network: _default.id,
///     subnetwork: defaultSubnetwork.id,
///     location: "us-central1",
///     labels: {
///         label: "key",
///     },
///     annotations: {
///         "label-one": "value-one",
///     },
/// });
/// const defaultWorkstationConfig = new gcp.workstations.WorkstationConfig("default", {
///     workstationConfigId: "workstation-config",
///     workstationClusterId: defaultWorkstationCluster.workstationClusterId,
///     location: "us-central1",
///     host: {
///         gceInstance: {
///             machineType: "n1-standard-2",
///             bootDiskSizeGb: 35,
///             disablePublicIpAddresses: true,
///             accelerators: [{
///                 type: "nvidia-tesla-t4",
///                 count: 1,
///             }],
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.compute.Network("default",
///     name="workstation-cluster",
///     auto_create_subnetworks=False)
/// default_subnetwork = gcp.compute.Subnetwork("default",
///     name="workstation-cluster",
///     ip_cidr_range="10.0.0.0/24",
///     region="us-central1",
///     network=default.name)
/// default_workstation_cluster = gcp.workstations.WorkstationCluster("default",
///     workstation_cluster_id="workstation-cluster",
///     network=default.id,
///     subnetwork=default_subnetwork.id,
///     location="us-central1",
///     labels={
///         "label": "key",
///     },
///     annotations={
///         "label-one": "value-one",
///     })
/// default_workstation_config = gcp.workstations.WorkstationConfig("default",
///     workstation_config_id="workstation-config",
///     workstation_cluster_id=default_workstation_cluster.workstation_cluster_id,
///     location="us-central1",
///     host={
///         "gce_instance": {
///             "machine_type": "n1-standard-2",
///             "boot_disk_size_gb": 35,
///             "disable_public_ip_addresses": True,
///             "accelerators": [{
///                 "type": "nvidia-tesla-t4",
///                 "count": 1,
///             }],
///         },
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
///     var @default = new Gcp.Compute.Network("default", new()
///     {
///         Name = "workstation-cluster",
///         AutoCreateSubnetworks = false,
///     });
///
///     var defaultSubnetwork = new Gcp.Compute.Subnetwork("default", new()
///     {
///         Name = "workstation-cluster",
///         IpCidrRange = "10.0.0.0/24",
///         Region = "us-central1",
///         Network = @default.Name,
///     });
///
///     var defaultWorkstationCluster = new Gcp.Workstations.WorkstationCluster("default", new()
///     {
///         WorkstationClusterId = "workstation-cluster",
///         Network = @default.Id,
///         Subnetwork = defaultSubnetwork.Id,
///         Location = "us-central1",
///         Labels =
///         {
///             { "label", "key" },
///         },
///         Annotations =
///         {
///             { "label-one", "value-one" },
///         },
///     });
///
///     var defaultWorkstationConfig = new Gcp.Workstations.WorkstationConfig("default", new()
///     {
///         WorkstationConfigId = "workstation-config",
///         WorkstationClusterId = defaultWorkstationCluster.WorkstationClusterId,
///         Location = "us-central1",
///         Host = new Gcp.Workstations.Inputs.WorkstationConfigHostArgs
///         {
///             GceInstance = new Gcp.Workstations.Inputs.WorkstationConfigHostGceInstanceArgs
///             {
///                 MachineType = "n1-standard-2",
///                 BootDiskSizeGb = 35,
///                 DisablePublicIpAddresses = true,
///                 Accelerators = new[]
///                 {
///                     new Gcp.Workstations.Inputs.WorkstationConfigHostGceInstanceAcceleratorArgs
///                     {
///                         Type = "nvidia-tesla-t4",
///                         Count = 1,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/workstations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := compute.NewNetwork(ctx, "default", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("workstation-cluster"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultSubnetwork, err := compute.NewSubnetwork(ctx, "default", &compute.SubnetworkArgs{
/// 			Name:        pulumi.String("workstation-cluster"),
/// 			IpCidrRange: pulumi.String("10.0.0.0/24"),
/// 			Region:      pulumi.String("us-central1"),
/// 			Network:     _default.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultWorkstationCluster, err := workstations.NewWorkstationCluster(ctx, "default", &workstations.WorkstationClusterArgs{
/// 			WorkstationClusterId: pulumi.String("workstation-cluster"),
/// 			Network:              _default.ID().ToIDOutput().ToStringOutput(),
/// 			Subnetwork:           defaultSubnetwork.ID().ToIDOutput().ToStringOutput(),
/// 			Location:             pulumi.String("us-central1"),
/// 			Labels: pulumi.StringMap{
/// 				"label": pulumi.String("key"),
/// 			},
/// 			Annotations: pulumi.StringMap{
/// 				"label-one": pulumi.String("value-one"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = workstations.NewWorkstationConfig(ctx, "default", &workstations.WorkstationConfigArgs{
/// 			WorkstationConfigId:  pulumi.String("workstation-config"),
/// 			WorkstationClusterId: defaultWorkstationCluster.WorkstationClusterId,
/// 			Location:             pulumi.String("us-central1"),
/// 			Host: &workstations.WorkstationConfigHostArgs{
/// 				GceInstance: &workstations.WorkstationConfigHostGceInstanceArgs{
/// 					MachineType:              pulumi.String("n1-standard-2"),
/// 					BootDiskSizeGb:           pulumi.Int(35),
/// 					DisablePublicIpAddresses: pulumi.Bool(true),
/// 					Accelerators: workstations.WorkstationConfigHostGceInstanceAcceleratorArray{
/// 						&workstations.WorkstationConfigHostGceInstanceAcceleratorArgs{
/// 							Type:  pulumi.String("nvidia-tesla-t4"),
/// 							Count: pulumi.Int(1),
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
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_compute_network" "default" {
///   name                    = "workstation-cluster"
///   auto_create_subnetworks = false
/// }
/// resource "gcp_compute_subnetwork" "default" {
///   name          = "workstation-cluster"
///   ip_cidr_range = "10.0.0.0/24"
///   region        = "us-central1"
///   network       = gcp_compute_network.default.name
/// }
/// resource "gcp_workstations_workstationcluster" "default" {
///   workstation_cluster_id = "workstation-cluster"
///   network                = gcp_compute_network.default.id
///   subnetwork             = gcp_compute_subnetwork.default.id
///   location               = "us-central1"
///   labels = {
///     "label" = "key"
///   }
///   annotations = {
///     "label-one" = "value-one"
///   }
/// }
/// resource "gcp_workstations_workstationconfig" "default" {
///   workstation_config_id  = "workstation-config"
///   workstation_cluster_id = gcp_workstations_workstationcluster.default.workstation_cluster_id
///   location               = "us-central1"
///   host = {
///     gce_instance = {
///       machine_type                = "n1-standard-2"
///       boot_disk_size_gb           = 35
///       disable_public_ip_addresses = true
///       accelerators = [{
///         "type"  = "nvidia-tesla-t4"
///         "count" = "1"
///       }]
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
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.compute.Subnetwork;
/// import com.pulumi.gcp.compute.SubnetworkArgs;
/// import com.pulumi.gcp.workstations.WorkstationCluster;
/// import com.pulumi.gcp.workstations.WorkstationClusterArgs;
/// import com.pulumi.gcp.workstations.WorkstationConfig;
/// import com.pulumi.gcp.workstations.WorkstationConfigArgs;
/// import com.pulumi.gcp.workstations.inputs.WorkstationConfigHostArgs;
/// import com.pulumi.gcp.workstations.inputs.WorkstationConfigHostGceInstanceArgs;
/// import com.pulumi.gcp.workstations.inputs.WorkstationConfigHostGceInstanceAcceleratorArgs;
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
///         var default_ = new Network("default", NetworkArgs.builder()
///             .name("workstation-cluster")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var defaultSubnetwork = new Subnetwork("defaultSubnetwork", SubnetworkArgs.builder()
///             .name("workstation-cluster")
///             .ipCidrRange("10.0.0.0/24")
///             .region("us-central1")
///             .network(default_.name())
///             .build());
///
///         var defaultWorkstationCluster = new WorkstationCluster("defaultWorkstationCluster", WorkstationClusterArgs.builder()
///             .workstationClusterId("workstation-cluster")
///             .network(default_.id())
///             .subnetwork(defaultSubnetwork.id())
///             .location("us-central1")
///             .labels(Map.of("label", "key"))
///             .annotations(Map.of("label-one", "value-one"))
///             .build());
///
///         var defaultWorkstationConfig = new WorkstationConfig("defaultWorkstationConfig", WorkstationConfigArgs.builder()
///             .workstationConfigId("workstation-config")
///             .workstationClusterId(defaultWorkstationCluster.workstationClusterId())
///             .location("us-central1")
///             .host(WorkstationConfigHostArgs.builder()
///                 .gceInstance(WorkstationConfigHostGceInstanceArgs.builder()
///                     .machineType("n1-standard-2")
///                     .bootDiskSizeGb(35)
///                     .disablePublicIpAddresses(true)
///                     .accelerators(WorkstationConfigHostGceInstanceAcceleratorArgs.builder()
///                         .type("nvidia-tesla-t4")
///                         .count(1)
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
///     type: gcp:compute:Network
///     properties:
///       name: workstation-cluster
///       autoCreateSubnetworks: false
///   defaultSubnetwork:
///     type: gcp:compute:Subnetwork
///     name: default
///     properties:
///       name: workstation-cluster
///       ipCidrRange: 10.0.0.0/24
///       region: us-central1
///       network: ${default.name}
///   defaultWorkstationCluster:
///     type: gcp:workstations:WorkstationCluster
///     name: default
///     properties:
///       workstationClusterId: workstation-cluster
///       network: ${default.id}
///       subnetwork: ${defaultSubnetwork.id}
///       location: us-central1
///       labels:
///         label: key
///       annotations:
///         label-one: value-one
///   defaultWorkstationConfig:
///     type: gcp:workstations:WorkstationConfig
///     name: default
///     properties:
///       workstationConfigId: workstation-config
///       workstationClusterId: ${defaultWorkstationCluster.workstationClusterId}
///       location: us-central1
///       host:
///         gceInstance:
///           machineType: n1-standard-2
///           bootDiskSizeGb: 35
///           disablePublicIpAddresses: true
///           accelerators:
///             - type: nvidia-tesla-t4
///               count: '1'
/// ```
///
/// ### Workstation Config Boost
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.compute.Network("default", {
///     name: "workstation-cluster",
///     autoCreateSubnetworks: false,
/// });
/// const defaultSubnetwork = new gcp.compute.Subnetwork("default", {
///     name: "workstation-cluster",
///     ipCidrRange: "10.0.0.0/24",
///     region: "us-central1",
///     network: _default.name,
/// });
/// const defaultWorkstationCluster = new gcp.workstations.WorkstationCluster("default", {
///     workstationClusterId: "workstation-cluster",
///     network: _default.id,
///     subnetwork: defaultSubnetwork.id,
///     location: "us-central1",
///     labels: {
///         label: "key",
///     },
///     annotations: {
///         "label-one": "value-one",
///     },
/// });
/// const defaultWorkstationConfig = new gcp.workstations.WorkstationConfig("default", {
///     workstationConfigId: "workstation-config",
///     workstationClusterId: defaultWorkstationCluster.workstationClusterId,
///     location: "us-central1",
///     host: {
///         gceInstance: {
///             machineType: "e2-standard-4",
///             bootDiskSizeGb: 35,
///             disablePublicIpAddresses: true,
///             boostConfigs: [
///                 {
///                     id: "boost-1",
///                     machineType: "n1-standard-2",
///                     accelerators: [{
///                         type: "nvidia-tesla-t4",
///                         count: 1,
///                     }],
///                 },
///                 {
///                     id: "boost-2",
///                     machineType: "n1-standard-2",
///                     poolSize: 2,
///                     bootDiskSizeGb: 30,
///                     enableNestedVirtualization: true,
///                 },
///             ],
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.compute.Network("default",
///     name="workstation-cluster",
///     auto_create_subnetworks=False)
/// default_subnetwork = gcp.compute.Subnetwork("default",
///     name="workstation-cluster",
///     ip_cidr_range="10.0.0.0/24",
///     region="us-central1",
///     network=default.name)
/// default_workstation_cluster = gcp.workstations.WorkstationCluster("default",
///     workstation_cluster_id="workstation-cluster",
///     network=default.id,
///     subnetwork=default_subnetwork.id,
///     location="us-central1",
///     labels={
///         "label": "key",
///     },
///     annotations={
///         "label-one": "value-one",
///     })
/// default_workstation_config = gcp.workstations.WorkstationConfig("default",
///     workstation_config_id="workstation-config",
///     workstation_cluster_id=default_workstation_cluster.workstation_cluster_id,
///     location="us-central1",
///     host={
///         "gce_instance": {
///             "machine_type": "e2-standard-4",
///             "boot_disk_size_gb": 35,
///             "disable_public_ip_addresses": True,
///             "boost_configs": [
///                 {
///                     "id": "boost-1",
///                     "machine_type": "n1-standard-2",
///                     "accelerators": [{
///                         "type": "nvidia-tesla-t4",
///                         "count": 1,
///                     }],
///                 },
///                 {
///                     "id": "boost-2",
///                     "machine_type": "n1-standard-2",
///                     "pool_size": 2,
///                     "boot_disk_size_gb": 30,
///                     "enable_nested_virtualization": True,
///                 },
///             ],
///         },
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
///     var @default = new Gcp.Compute.Network("default", new()
///     {
///         Name = "workstation-cluster",
///         AutoCreateSubnetworks = false,
///     });
///
///     var defaultSubnetwork = new Gcp.Compute.Subnetwork("default", new()
///     {
///         Name = "workstation-cluster",
///         IpCidrRange = "10.0.0.0/24",
///         Region = "us-central1",
///         Network = @default.Name,
///     });
///
///     var defaultWorkstationCluster = new Gcp.Workstations.WorkstationCluster("default", new()
///     {
///         WorkstationClusterId = "workstation-cluster",
///         Network = @default.Id,
///         Subnetwork = defaultSubnetwork.Id,
///         Location = "us-central1",
///         Labels =
///         {
///             { "label", "key" },
///         },
///         Annotations =
///         {
///             { "label-one", "value-one" },
///         },
///     });
///
///     var defaultWorkstationConfig = new Gcp.Workstations.WorkstationConfig("default", new()
///     {
///         WorkstationConfigId = "workstation-config",
///         WorkstationClusterId = defaultWorkstationCluster.WorkstationClusterId,
///         Location = "us-central1",
///         Host = new Gcp.Workstations.Inputs.WorkstationConfigHostArgs
///         {
///             GceInstance = new Gcp.Workstations.Inputs.WorkstationConfigHostGceInstanceArgs
///             {
///                 MachineType = "e2-standard-4",
///                 BootDiskSizeGb = 35,
///                 DisablePublicIpAddresses = true,
///                 BoostConfigs = new[]
///                 {
///                     new Gcp.Workstations.Inputs.WorkstationConfigHostGceInstanceBoostConfigArgs
///                     {
///                         Id = "boost-1",
///                         MachineType = "n1-standard-2",
///                         Accelerators = new[]
///                         {
///                             new Gcp.Workstations.Inputs.WorkstationConfigHostGceInstanceBoostConfigAcceleratorArgs
///                             {
///                                 Type = "nvidia-tesla-t4",
///                                 Count = 1,
///                             },
///                         },
///                     },
///                     new Gcp.Workstations.Inputs.WorkstationConfigHostGceInstanceBoostConfigArgs
///                     {
///                         Id = "boost-2",
///                         MachineType = "n1-standard-2",
///                         PoolSize = 2,
///                         BootDiskSizeGb = 30,
///                         EnableNestedVirtualization = true,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/workstations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := compute.NewNetwork(ctx, "default", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("workstation-cluster"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultSubnetwork, err := compute.NewSubnetwork(ctx, "default", &compute.SubnetworkArgs{
/// 			Name:        pulumi.String("workstation-cluster"),
/// 			IpCidrRange: pulumi.String("10.0.0.0/24"),
/// 			Region:      pulumi.String("us-central1"),
/// 			Network:     _default.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultWorkstationCluster, err := workstations.NewWorkstationCluster(ctx, "default", &workstations.WorkstationClusterArgs{
/// 			WorkstationClusterId: pulumi.String("workstation-cluster"),
/// 			Network:              _default.ID().ToIDOutput().ToStringOutput(),
/// 			Subnetwork:           defaultSubnetwork.ID().ToIDOutput().ToStringOutput(),
/// 			Location:             pulumi.String("us-central1"),
/// 			Labels: pulumi.StringMap{
/// 				"label": pulumi.String("key"),
/// 			},
/// 			Annotations: pulumi.StringMap{
/// 				"label-one": pulumi.String("value-one"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = workstations.NewWorkstationConfig(ctx, "default", &workstations.WorkstationConfigArgs{
/// 			WorkstationConfigId:  pulumi.String("workstation-config"),
/// 			WorkstationClusterId: defaultWorkstationCluster.WorkstationClusterId,
/// 			Location:             pulumi.String("us-central1"),
/// 			Host: &workstations.WorkstationConfigHostArgs{
/// 				GceInstance: &workstations.WorkstationConfigHostGceInstanceArgs{
/// 					MachineType:              pulumi.String("e2-standard-4"),
/// 					BootDiskSizeGb:           pulumi.Int(35),
/// 					DisablePublicIpAddresses: pulumi.Bool(true),
/// 					BoostConfigs: workstations.WorkstationConfigHostGceInstanceBoostConfigArray{
/// 						&workstations.WorkstationConfigHostGceInstanceBoostConfigArgs{
/// 							Id:          pulumi.String("boost-1"),
/// 							MachineType: pulumi.String("n1-standard-2"),
/// 							Accelerators: workstations.WorkstationConfigHostGceInstanceBoostConfigAcceleratorArray{
/// 								&workstations.WorkstationConfigHostGceInstanceBoostConfigAcceleratorArgs{
/// 									Type:  pulumi.String("nvidia-tesla-t4"),
/// 									Count: pulumi.Int(1),
/// 								},
/// 							},
/// 						},
/// 						&workstations.WorkstationConfigHostGceInstanceBoostConfigArgs{
/// 							Id:                         pulumi.String("boost-2"),
/// 							MachineType:                pulumi.String("n1-standard-2"),
/// 							PoolSize:                   pulumi.Int(2),
/// 							BootDiskSizeGb:             pulumi.Int(30),
/// 							EnableNestedVirtualization: pulumi.Bool(true),
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
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_compute_network" "default" {
///   name                    = "workstation-cluster"
///   auto_create_subnetworks = false
/// }
/// resource "gcp_compute_subnetwork" "default" {
///   name          = "workstation-cluster"
///   ip_cidr_range = "10.0.0.0/24"
///   region        = "us-central1"
///   network       = gcp_compute_network.default.name
/// }
/// resource "gcp_workstations_workstationcluster" "default" {
///   workstation_cluster_id = "workstation-cluster"
///   network                = gcp_compute_network.default.id
///   subnetwork             = gcp_compute_subnetwork.default.id
///   location               = "us-central1"
///   labels = {
///     "label" = "key"
///   }
///   annotations = {
///     "label-one" = "value-one"
///   }
/// }
/// resource "gcp_workstations_workstationconfig" "default" {
///   workstation_config_id  = "workstation-config"
///   workstation_cluster_id = gcp_workstations_workstationcluster.default.workstation_cluster_id
///   location               = "us-central1"
///   host = {
///     gce_instance = {
///       machine_type                = "e2-standard-4"
///       boot_disk_size_gb           = 35
///       disable_public_ip_addresses = true
///       boost_configs = [{
///         "id"          = "boost-1"
///         "machineType" = "n1-standard-2"
///         "accelerators" = [{
///           "type"  = "nvidia-tesla-t4"
///           "count" = "1"
///         }]
///         }, {
///         "id"                         = "boost-2"
///         "machineType"                = "n1-standard-2"
///         "poolSize"                   = 2
///         "bootDiskSizeGb"             = 30
///         "enableNestedVirtualization" = true
///       }]
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
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.compute.Subnetwork;
/// import com.pulumi.gcp.compute.SubnetworkArgs;
/// import com.pulumi.gcp.workstations.WorkstationCluster;
/// import com.pulumi.gcp.workstations.WorkstationClusterArgs;
/// import com.pulumi.gcp.workstations.WorkstationConfig;
/// import com.pulumi.gcp.workstations.WorkstationConfigArgs;
/// import com.pulumi.gcp.workstations.inputs.WorkstationConfigHostArgs;
/// import com.pulumi.gcp.workstations.inputs.WorkstationConfigHostGceInstanceArgs;
/// import com.pulumi.gcp.workstations.inputs.WorkstationConfigHostGceInstanceBoostConfigArgs;
/// import com.pulumi.gcp.workstations.inputs.WorkstationConfigHostGceInstanceBoostConfigAcceleratorArgs;
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
///         var default_ = new Network("default", NetworkArgs.builder()
///             .name("workstation-cluster")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var defaultSubnetwork = new Subnetwork("defaultSubnetwork", SubnetworkArgs.builder()
///             .name("workstation-cluster")
///             .ipCidrRange("10.0.0.0/24")
///             .region("us-central1")
///             .network(default_.name())
///             .build());
///
///         var defaultWorkstationCluster = new WorkstationCluster("defaultWorkstationCluster", WorkstationClusterArgs.builder()
///             .workstationClusterId("workstation-cluster")
///             .network(default_.id())
///             .subnetwork(defaultSubnetwork.id())
///             .location("us-central1")
///             .labels(Map.of("label", "key"))
///             .annotations(Map.of("label-one", "value-one"))
///             .build());
///
///         var defaultWorkstationConfig = new WorkstationConfig("defaultWorkstationConfig", WorkstationConfigArgs.builder()
///             .workstationConfigId("workstation-config")
///             .workstationClusterId(defaultWorkstationCluster.workstationClusterId())
///             .location("us-central1")
///             .host(WorkstationConfigHostArgs.builder()
///                 .gceInstance(WorkstationConfigHostGceInstanceArgs.builder()
///                     .machineType("e2-standard-4")
///                     .bootDiskSizeGb(35)
///                     .disablePublicIpAddresses(true)
///                     .boostConfigs(
///                         WorkstationConfigHostGceInstanceBoostConfigArgs.builder()
///                             .id("boost-1")
///                             .machineType("n1-standard-2")
///                             .accelerators(WorkstationConfigHostGceInstanceBoostConfigAcceleratorArgs.builder()
///                                 .type("nvidia-tesla-t4")
///                                 .count(1)
///                                 .build())
///                             .build(),
///                         WorkstationConfigHostGceInstanceBoostConfigArgs.builder()
///                             .id("boost-2")
///                             .machineType("n1-standard-2")
///                             .poolSize(2)
///                             .bootDiskSizeGb(30)
///                             .enableNestedVirtualization(true)
///                             .build())
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
///     type: gcp:compute:Network
///     properties:
///       name: workstation-cluster
///       autoCreateSubnetworks: false
///   defaultSubnetwork:
///     type: gcp:compute:Subnetwork
///     name: default
///     properties:
///       name: workstation-cluster
///       ipCidrRange: 10.0.0.0/24
///       region: us-central1
///       network: ${default.name}
///   defaultWorkstationCluster:
///     type: gcp:workstations:WorkstationCluster
///     name: default
///     properties:
///       workstationClusterId: workstation-cluster
///       network: ${default.id}
///       subnetwork: ${defaultSubnetwork.id}
///       location: us-central1
///       labels:
///         label: key
///       annotations:
///         label-one: value-one
///   defaultWorkstationConfig:
///     type: gcp:workstations:WorkstationConfig
///     name: default
///     properties:
///       workstationConfigId: workstation-config
///       workstationClusterId: ${defaultWorkstationCluster.workstationClusterId}
///       location: us-central1
///       host:
///         gceInstance:
///           machineType: e2-standard-4
///           bootDiskSizeGb: 35
///           disablePublicIpAddresses: true
///           boostConfigs:
///             - id: boost-1
///               machineType: n1-standard-2
///               accelerators:
///                 - type: nvidia-tesla-t4
///                   count: '1'
///             - id: boost-2
///               machineType: n1-standard-2
///               poolSize: 2
///               bootDiskSizeGb: 30
///               enableNestedVirtualization: true
/// ```
///
/// ### Workstation Config Encryption Key
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.compute.Network("default", {
///     name: "workstation-cluster",
///     autoCreateSubnetworks: false,
/// });
/// const defaultSubnetwork = new gcp.compute.Subnetwork("default", {
///     name: "workstation-cluster",
///     ipCidrRange: "10.0.0.0/24",
///     region: "us-central1",
///     network: _default.name,
/// });
/// const defaultWorkstationCluster = new gcp.workstations.WorkstationCluster("default", {
///     workstationClusterId: "workstation-cluster",
///     network: _default.id,
///     subnetwork: defaultSubnetwork.id,
///     location: "us-central1",
///     labels: {
///         label: "key",
///     },
///     annotations: {
///         "label-one": "value-one",
///     },
/// });
/// const defaultKeyRing = new gcp.kms.KeyRing("default", {
///     name: "workstation-cluster",
///     location: "us-central1",
/// });
/// const defaultCryptoKey = new gcp.kms.CryptoKey("default", {
///     name: "workstation-cluster",
///     keyRing: defaultKeyRing.id,
/// });
/// const defaultAccount = new gcp.serviceaccount.Account("default", {
///     accountId: "my-account",
///     displayName: "Service Account",
/// });
/// const defaultWorkstationConfig = new gcp.workstations.WorkstationConfig("default", {
///     workstationConfigId: "workstation-config",
///     workstationClusterId: defaultWorkstationCluster.workstationClusterId,
///     location: "us-central1",
///     host: {
///         gceInstance: {
///             machineType: "e2-standard-4",
///             bootDiskSizeGb: 35,
///             disablePublicIpAddresses: true,
///             shieldedInstanceConfig: {
///                 enableSecureBoot: true,
///                 enableVtpm: true,
///             },
///         },
///     },
///     encryptionKey: {
///         kmsKey: defaultCryptoKey.id,
///         kmsKeyServiceAccount: defaultAccount.email,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.compute.Network("default",
///     name="workstation-cluster",
///     auto_create_subnetworks=False)
/// default_subnetwork = gcp.compute.Subnetwork("default",
///     name="workstation-cluster",
///     ip_cidr_range="10.0.0.0/24",
///     region="us-central1",
///     network=default.name)
/// default_workstation_cluster = gcp.workstations.WorkstationCluster("default",
///     workstation_cluster_id="workstation-cluster",
///     network=default.id,
///     subnetwork=default_subnetwork.id,
///     location="us-central1",
///     labels={
///         "label": "key",
///     },
///     annotations={
///         "label-one": "value-one",
///     })
/// default_key_ring = gcp.kms.KeyRing("default",
///     name="workstation-cluster",
///     location="us-central1")
/// default_crypto_key = gcp.kms.CryptoKey("default",
///     name="workstation-cluster",
///     key_ring=default_key_ring.id)
/// default_account = gcp.serviceaccount.Account("default",
///     account_id="my-account",
///     display_name="Service Account")
/// default_workstation_config = gcp.workstations.WorkstationConfig("default",
///     workstation_config_id="workstation-config",
///     workstation_cluster_id=default_workstation_cluster.workstation_cluster_id,
///     location="us-central1",
///     host={
///         "gce_instance": {
///             "machine_type": "e2-standard-4",
///             "boot_disk_size_gb": 35,
///             "disable_public_ip_addresses": True,
///             "shielded_instance_config": {
///                 "enable_secure_boot": True,
///                 "enable_vtpm": True,
///             },
///         },
///     },
///     encryption_key={
///         "kms_key": default_crypto_key.id,
///         "kms_key_service_account": default_account.email,
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
///     var @default = new Gcp.Compute.Network("default", new()
///     {
///         Name = "workstation-cluster",
///         AutoCreateSubnetworks = false,
///     });
///
///     var defaultSubnetwork = new Gcp.Compute.Subnetwork("default", new()
///     {
///         Name = "workstation-cluster",
///         IpCidrRange = "10.0.0.0/24",
///         Region = "us-central1",
///         Network = @default.Name,
///     });
///
///     var defaultWorkstationCluster = new Gcp.Workstations.WorkstationCluster("default", new()
///     {
///         WorkstationClusterId = "workstation-cluster",
///         Network = @default.Id,
///         Subnetwork = defaultSubnetwork.Id,
///         Location = "us-central1",
///         Labels =
///         {
///             { "label", "key" },
///         },
///         Annotations =
///         {
///             { "label-one", "value-one" },
///         },
///     });
///
///     var defaultKeyRing = new Gcp.Kms.KeyRing("default", new()
///     {
///         Name = "workstation-cluster",
///         Location = "us-central1",
///     });
///
///     var defaultCryptoKey = new Gcp.Kms.CryptoKey("default", new()
///     {
///         Name = "workstation-cluster",
///         KeyRing = defaultKeyRing.Id,
///     });
///
///     var defaultAccount = new Gcp.ServiceAccount.Account("default", new()
///     {
///         AccountId = "my-account",
///         DisplayName = "Service Account",
///     });
///
///     var defaultWorkstationConfig = new Gcp.Workstations.WorkstationConfig("default", new()
///     {
///         WorkstationConfigId = "workstation-config",
///         WorkstationClusterId = defaultWorkstationCluster.WorkstationClusterId,
///         Location = "us-central1",
///         Host = new Gcp.Workstations.Inputs.WorkstationConfigHostArgs
///         {
///             GceInstance = new Gcp.Workstations.Inputs.WorkstationConfigHostGceInstanceArgs
///             {
///                 MachineType = "e2-standard-4",
///                 BootDiskSizeGb = 35,
///                 DisablePublicIpAddresses = true,
///                 ShieldedInstanceConfig = new Gcp.Workstations.Inputs.WorkstationConfigHostGceInstanceShieldedInstanceConfigArgs
///                 {
///                     EnableSecureBoot = true,
///                     EnableVtpm = true,
///                 },
///             },
///         },
///         EncryptionKey = new Gcp.Workstations.Inputs.WorkstationConfigEncryptionKeyArgs
///         {
///             KmsKey = defaultCryptoKey.Id,
///             KmsKeyServiceAccount = defaultAccount.Email,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/kms"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/serviceaccount"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/workstations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := compute.NewNetwork(ctx, "default", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("workstation-cluster"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultSubnetwork, err := compute.NewSubnetwork(ctx, "default", &compute.SubnetworkArgs{
/// 			Name:        pulumi.String("workstation-cluster"),
/// 			IpCidrRange: pulumi.String("10.0.0.0/24"),
/// 			Region:      pulumi.String("us-central1"),
/// 			Network:     _default.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultWorkstationCluster, err := workstations.NewWorkstationCluster(ctx, "default", &workstations.WorkstationClusterArgs{
/// 			WorkstationClusterId: pulumi.String("workstation-cluster"),
/// 			Network:              _default.ID().ToIDOutput().ToStringOutput(),
/// 			Subnetwork:           defaultSubnetwork.ID().ToIDOutput().ToStringOutput(),
/// 			Location:             pulumi.String("us-central1"),
/// 			Labels: pulumi.StringMap{
/// 				"label": pulumi.String("key"),
/// 			},
/// 			Annotations: pulumi.StringMap{
/// 				"label-one": pulumi.String("value-one"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultKeyRing, err := kms.NewKeyRing(ctx, "default", &kms.KeyRingArgs{
/// 			Name:     pulumi.String("workstation-cluster"),
/// 			Location: pulumi.String("us-central1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultCryptoKey, err := kms.NewCryptoKey(ctx, "default", &kms.CryptoKeyArgs{
/// 			Name:    pulumi.String("workstation-cluster"),
/// 			KeyRing: defaultKeyRing.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultAccount, err := serviceaccount.NewAccount(ctx, "default", &serviceaccount.AccountArgs{
/// 			AccountId:   pulumi.String("my-account"),
/// 			DisplayName: pulumi.String("Service Account"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = workstations.NewWorkstationConfig(ctx, "default", &workstations.WorkstationConfigArgs{
/// 			WorkstationConfigId:  pulumi.String("workstation-config"),
/// 			WorkstationClusterId: defaultWorkstationCluster.WorkstationClusterId,
/// 			Location:             pulumi.String("us-central1"),
/// 			Host: &workstations.WorkstationConfigHostArgs{
/// 				GceInstance: &workstations.WorkstationConfigHostGceInstanceArgs{
/// 					MachineType:              pulumi.String("e2-standard-4"),
/// 					BootDiskSizeGb:           pulumi.Int(35),
/// 					DisablePublicIpAddresses: pulumi.Bool(true),
/// 					ShieldedInstanceConfig: &workstations.WorkstationConfigHostGceInstanceShieldedInstanceConfigArgs{
/// 						EnableSecureBoot: pulumi.Bool(true),
/// 						EnableVtpm:       pulumi.Bool(true),
/// 					},
/// 				},
/// 			},
/// 			EncryptionKey: &workstations.WorkstationConfigEncryptionKeyArgs{
/// 				KmsKey:               defaultCryptoKey.ID().ToIDOutput().ToStringOutput(),
/// 				KmsKeyServiceAccount: defaultAccount.Email,
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
/// resource "gcp_compute_network" "default" {
///   name                    = "workstation-cluster"
///   auto_create_subnetworks = false
/// }
/// resource "gcp_compute_subnetwork" "default" {
///   name          = "workstation-cluster"
///   ip_cidr_range = "10.0.0.0/24"
///   region        = "us-central1"
///   network       = gcp_compute_network.default.name
/// }
/// resource "gcp_workstations_workstationcluster" "default" {
///   workstation_cluster_id = "workstation-cluster"
///   network                = gcp_compute_network.default.id
///   subnetwork             = gcp_compute_subnetwork.default.id
///   location               = "us-central1"
///   labels = {
///     "label" = "key"
///   }
///   annotations = {
///     "label-one" = "value-one"
///   }
/// }
/// resource "gcp_kms_keyring" "default" {
///   name     = "workstation-cluster"
///   location = "us-central1"
/// }
/// resource "gcp_kms_cryptokey" "default" {
///   name     = "workstation-cluster"
///   key_ring = gcp_kms_keyring.default.id
/// }
/// resource "gcp_serviceaccount_account" "default" {
///   account_id   = "my-account"
///   display_name = "Service Account"
/// }
/// resource "gcp_workstations_workstationconfig" "default" {
///   workstation_config_id  = "workstation-config"
///   workstation_cluster_id = gcp_workstations_workstationcluster.default.workstation_cluster_id
///   location               = "us-central1"
///   host = {
///     gce_instance = {
///       machine_type                = "e2-standard-4"
///       boot_disk_size_gb           = 35
///       disable_public_ip_addresses = true
///       shielded_instance_config = {
///         enable_secure_boot = true
///         enable_vtpm        = true
///       }
///     }
///   }
///   encryption_key = {
///     kms_key                 = gcp_kms_cryptokey.default.id
///     kms_key_service_account = gcp_serviceaccount_account.default.email
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.compute.Subnetwork;
/// import com.pulumi.gcp.compute.SubnetworkArgs;
/// import com.pulumi.gcp.workstations.WorkstationCluster;
/// import com.pulumi.gcp.workstations.WorkstationClusterArgs;
/// import com.pulumi.gcp.kms.KeyRing;
/// import com.pulumi.gcp.kms.KeyRingArgs;
/// import com.pulumi.gcp.kms.CryptoKey;
/// import com.pulumi.gcp.kms.CryptoKeyArgs;
/// import com.pulumi.gcp.serviceaccount.Account;
/// import com.pulumi.gcp.serviceaccount.AccountArgs;
/// import com.pulumi.gcp.workstations.WorkstationConfig;
/// import com.pulumi.gcp.workstations.WorkstationConfigArgs;
/// import com.pulumi.gcp.workstations.inputs.WorkstationConfigHostArgs;
/// import com.pulumi.gcp.workstations.inputs.WorkstationConfigHostGceInstanceArgs;
/// import com.pulumi.gcp.workstations.inputs.WorkstationConfigHostGceInstanceShieldedInstanceConfigArgs;
/// import com.pulumi.gcp.workstations.inputs.WorkstationConfigEncryptionKeyArgs;
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
///         var default_ = new Network("default", NetworkArgs.builder()
///             .name("workstation-cluster")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var defaultSubnetwork = new Subnetwork("defaultSubnetwork", SubnetworkArgs.builder()
///             .name("workstation-cluster")
///             .ipCidrRange("10.0.0.0/24")
///             .region("us-central1")
///             .network(default_.name())
///             .build());
///
///         var defaultWorkstationCluster = new WorkstationCluster("defaultWorkstationCluster", WorkstationClusterArgs.builder()
///             .workstationClusterId("workstation-cluster")
///             .network(default_.id())
///             .subnetwork(defaultSubnetwork.id())
///             .location("us-central1")
///             .labels(Map.of("label", "key"))
///             .annotations(Map.of("label-one", "value-one"))
///             .build());
///
///         var defaultKeyRing = new KeyRing("defaultKeyRing", KeyRingArgs.builder()
///             .name("workstation-cluster")
///             .location("us-central1")
///             .build());
///
///         var defaultCryptoKey = new CryptoKey("defaultCryptoKey", CryptoKeyArgs.builder()
///             .name("workstation-cluster")
///             .keyRing(defaultKeyRing.id())
///             .build());
///
///         var defaultAccount = new Account("defaultAccount", AccountArgs.builder()
///             .accountId("my-account")
///             .displayName("Service Account")
///             .build());
///
///         var defaultWorkstationConfig = new WorkstationConfig("defaultWorkstationConfig", WorkstationConfigArgs.builder()
///             .workstationConfigId("workstation-config")
///             .workstationClusterId(defaultWorkstationCluster.workstationClusterId())
///             .location("us-central1")
///             .host(WorkstationConfigHostArgs.builder()
///                 .gceInstance(WorkstationConfigHostGceInstanceArgs.builder()
///                     .machineType("e2-standard-4")
///                     .bootDiskSizeGb(35)
///                     .disablePublicIpAddresses(true)
///                     .shieldedInstanceConfig(WorkstationConfigHostGceInstanceShieldedInstanceConfigArgs.builder()
///                         .enableSecureBoot(true)
///                         .enableVtpm(true)
///                         .build())
///                     .build())
///                 .build())
///             .encryptionKey(WorkstationConfigEncryptionKeyArgs.builder()
///                 .kmsKey(defaultCryptoKey.id())
///                 .kmsKeyServiceAccount(defaultAccount.email())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:compute:Network
///     properties:
///       name: workstation-cluster
///       autoCreateSubnetworks: false
///   defaultSubnetwork:
///     type: gcp:compute:Subnetwork
///     name: default
///     properties:
///       name: workstation-cluster
///       ipCidrRange: 10.0.0.0/24
///       region: us-central1
///       network: ${default.name}
///   defaultWorkstationCluster:
///     type: gcp:workstations:WorkstationCluster
///     name: default
///     properties:
///       workstationClusterId: workstation-cluster
///       network: ${default.id}
///       subnetwork: ${defaultSubnetwork.id}
///       location: us-central1
///       labels:
///         label: key
///       annotations:
///         label-one: value-one
///   defaultKeyRing:
///     type: gcp:kms:KeyRing
///     name: default
///     properties:
///       name: workstation-cluster
///       location: us-central1
///   defaultCryptoKey:
///     type: gcp:kms:CryptoKey
///     name: default
///     properties:
///       name: workstation-cluster
///       keyRing: ${defaultKeyRing.id}
///   defaultAccount:
///     type: gcp:serviceaccount:Account
///     name: default
///     properties:
///       accountId: my-account
///       displayName: Service Account
///   defaultWorkstationConfig:
///     type: gcp:workstations:WorkstationConfig
///     name: default
///     properties:
///       workstationConfigId: workstation-config
///       workstationClusterId: ${defaultWorkstationCluster.workstationClusterId}
///       location: us-central1
///       host:
///         gceInstance:
///           machineType: e2-standard-4
///           bootDiskSizeGb: 35
///           disablePublicIpAddresses: true
///           shieldedInstanceConfig:
///             enableSecureBoot: true
///             enableVtpm: true
///       encryptionKey:
///         kmsKey: ${defaultCryptoKey.id}
///         kmsKeyServiceAccount: ${defaultAccount.email}
/// ```
///
/// ### Workstation Config Allowed Ports
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.compute.Network("default", {
///     name: "workstation-cluster",
///     autoCreateSubnetworks: false,
/// });
/// const defaultSubnetwork = new gcp.compute.Subnetwork("default", {
///     name: "workstation-cluster",
///     ipCidrRange: "10.0.0.0/24",
///     region: "us-central1",
///     network: _default.name,
/// });
/// const defaultWorkstationCluster = new gcp.workstations.WorkstationCluster("default", {
///     workstationClusterId: "workstation-cluster",
///     network: _default.id,
///     subnetwork: defaultSubnetwork.id,
///     location: "us-central1",
///     labels: {
///         label: "key",
///     },
///     annotations: {
///         "label-one": "value-one",
///     },
/// });
/// const defaultWorkstationConfig = new gcp.workstations.WorkstationConfig("default", {
///     workstationConfigId: "workstation-config",
///     workstationClusterId: defaultWorkstationCluster.workstationClusterId,
///     location: "us-central1",
///     host: {
///         gceInstance: {
///             machineType: "e2-standard-4",
///             bootDiskSizeGb: 35,
///             disablePublicIpAddresses: true,
///         },
///     },
///     allowedPorts: [
///         {
///             first: 80,
///             last: 80,
///         },
///         {
///             first: 22,
///             last: 22,
///         },
///         {
///             first: 1024,
///             last: 65535,
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.compute.Network("default",
///     name="workstation-cluster",
///     auto_create_subnetworks=False)
/// default_subnetwork = gcp.compute.Subnetwork("default",
///     name="workstation-cluster",
///     ip_cidr_range="10.0.0.0/24",
///     region="us-central1",
///     network=default.name)
/// default_workstation_cluster = gcp.workstations.WorkstationCluster("default",
///     workstation_cluster_id="workstation-cluster",
///     network=default.id,
///     subnetwork=default_subnetwork.id,
///     location="us-central1",
///     labels={
///         "label": "key",
///     },
///     annotations={
///         "label-one": "value-one",
///     })
/// default_workstation_config = gcp.workstations.WorkstationConfig("default",
///     workstation_config_id="workstation-config",
///     workstation_cluster_id=default_workstation_cluster.workstation_cluster_id,
///     location="us-central1",
///     host={
///         "gce_instance": {
///             "machine_type": "e2-standard-4",
///             "boot_disk_size_gb": 35,
///             "disable_public_ip_addresses": True,
///         },
///     },
///     allowed_ports=[
///         {
///             "first": 80,
///             "last": 80,
///         },
///         {
///             "first": 22,
///             "last": 22,
///         },
///         {
///             "first": 1024,
///             "last": 65535,
///         },
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.Compute.Network("default", new()
///     {
///         Name = "workstation-cluster",
///         AutoCreateSubnetworks = false,
///     });
///
///     var defaultSubnetwork = new Gcp.Compute.Subnetwork("default", new()
///     {
///         Name = "workstation-cluster",
///         IpCidrRange = "10.0.0.0/24",
///         Region = "us-central1",
///         Network = @default.Name,
///     });
///
///     var defaultWorkstationCluster = new Gcp.Workstations.WorkstationCluster("default", new()
///     {
///         WorkstationClusterId = "workstation-cluster",
///         Network = @default.Id,
///         Subnetwork = defaultSubnetwork.Id,
///         Location = "us-central1",
///         Labels =
///         {
///             { "label", "key" },
///         },
///         Annotations =
///         {
///             { "label-one", "value-one" },
///         },
///     });
///
///     var defaultWorkstationConfig = new Gcp.Workstations.WorkstationConfig("default", new()
///     {
///         WorkstationConfigId = "workstation-config",
///         WorkstationClusterId = defaultWorkstationCluster.WorkstationClusterId,
///         Location = "us-central1",
///         Host = new Gcp.Workstations.Inputs.WorkstationConfigHostArgs
///         {
///             GceInstance = new Gcp.Workstations.Inputs.WorkstationConfigHostGceInstanceArgs
///             {
///                 MachineType = "e2-standard-4",
///                 BootDiskSizeGb = 35,
///                 DisablePublicIpAddresses = true,
///             },
///         },
///         AllowedPorts = new[]
///         {
///             new Gcp.Workstations.Inputs.WorkstationConfigAllowedPortArgs
///             {
///                 First = 80,
///                 Last = 80,
///             },
///             new Gcp.Workstations.Inputs.WorkstationConfigAllowedPortArgs
///             {
///                 First = 22,
///                 Last = 22,
///             },
///             new Gcp.Workstations.Inputs.WorkstationConfigAllowedPortArgs
///             {
///                 First = 1024,
///                 Last = 65535,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/workstations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := compute.NewNetwork(ctx, "default", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("workstation-cluster"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultSubnetwork, err := compute.NewSubnetwork(ctx, "default", &compute.SubnetworkArgs{
/// 			Name:        pulumi.String("workstation-cluster"),
/// 			IpCidrRange: pulumi.String("10.0.0.0/24"),
/// 			Region:      pulumi.String("us-central1"),
/// 			Network:     _default.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultWorkstationCluster, err := workstations.NewWorkstationCluster(ctx, "default", &workstations.WorkstationClusterArgs{
/// 			WorkstationClusterId: pulumi.String("workstation-cluster"),
/// 			Network:              _default.ID().ToIDOutput().ToStringOutput(),
/// 			Subnetwork:           defaultSubnetwork.ID().ToIDOutput().ToStringOutput(),
/// 			Location:             pulumi.String("us-central1"),
/// 			Labels: pulumi.StringMap{
/// 				"label": pulumi.String("key"),
/// 			},
/// 			Annotations: pulumi.StringMap{
/// 				"label-one": pulumi.String("value-one"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = workstations.NewWorkstationConfig(ctx, "default", &workstations.WorkstationConfigArgs{
/// 			WorkstationConfigId:  pulumi.String("workstation-config"),
/// 			WorkstationClusterId: defaultWorkstationCluster.WorkstationClusterId,
/// 			Location:             pulumi.String("us-central1"),
/// 			Host: &workstations.WorkstationConfigHostArgs{
/// 				GceInstance: &workstations.WorkstationConfigHostGceInstanceArgs{
/// 					MachineType:              pulumi.String("e2-standard-4"),
/// 					BootDiskSizeGb:           pulumi.Int(35),
/// 					DisablePublicIpAddresses: pulumi.Bool(true),
/// 				},
/// 			},
/// 			AllowedPorts: workstations.WorkstationConfigAllowedPortArray{
/// 				&workstations.WorkstationConfigAllowedPortArgs{
/// 					First: pulumi.Int(80),
/// 					Last:  pulumi.Int(80),
/// 				},
/// 				&workstations.WorkstationConfigAllowedPortArgs{
/// 					First: pulumi.Int(22),
/// 					Last:  pulumi.Int(22),
/// 				},
/// 				&workstations.WorkstationConfigAllowedPortArgs{
/// 					First: pulumi.Int(1024),
/// 					Last:  pulumi.Int(65535),
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
/// resource "gcp_compute_network" "default" {
///   name                    = "workstation-cluster"
///   auto_create_subnetworks = false
/// }
/// resource "gcp_compute_subnetwork" "default" {
///   name          = "workstation-cluster"
///   ip_cidr_range = "10.0.0.0/24"
///   region        = "us-central1"
///   network       = gcp_compute_network.default.name
/// }
/// resource "gcp_workstations_workstationcluster" "default" {
///   workstation_cluster_id = "workstation-cluster"
///   network                = gcp_compute_network.default.id
///   subnetwork             = gcp_compute_subnetwork.default.id
///   location               = "us-central1"
///   labels = {
///     "label" = "key"
///   }
///   annotations = {
///     "label-one" = "value-one"
///   }
/// }
/// resource "gcp_workstations_workstationconfig" "default" {
///   workstation_config_id  = "workstation-config"
///   workstation_cluster_id = gcp_workstations_workstationcluster.default.workstation_cluster_id
///   location               = "us-central1"
///   host = {
///     gce_instance = {
///       machine_type                = "e2-standard-4"
///       boot_disk_size_gb           = 35
///       disable_public_ip_addresses = true
///     }
///   }
///   allowed_ports {
///     first = 80
///     last  = 80
///   }
///   allowed_ports {
///     first = 22
///     last  = 22
///   }
///   allowed_ports {
///     first = 1024
///     last  = 65535
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.compute.Subnetwork;
/// import com.pulumi.gcp.compute.SubnetworkArgs;
/// import com.pulumi.gcp.workstations.WorkstationCluster;
/// import com.pulumi.gcp.workstations.WorkstationClusterArgs;
/// import com.pulumi.gcp.workstations.WorkstationConfig;
/// import com.pulumi.gcp.workstations.WorkstationConfigArgs;
/// import com.pulumi.gcp.workstations.inputs.WorkstationConfigHostArgs;
/// import com.pulumi.gcp.workstations.inputs.WorkstationConfigHostGceInstanceArgs;
/// import com.pulumi.gcp.workstations.inputs.WorkstationConfigAllowedPortArgs;
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
///         var default_ = new Network("default", NetworkArgs.builder()
///             .name("workstation-cluster")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var defaultSubnetwork = new Subnetwork("defaultSubnetwork", SubnetworkArgs.builder()
///             .name("workstation-cluster")
///             .ipCidrRange("10.0.0.0/24")
///             .region("us-central1")
///             .network(default_.name())
///             .build());
///
///         var defaultWorkstationCluster = new WorkstationCluster("defaultWorkstationCluster", WorkstationClusterArgs.builder()
///             .workstationClusterId("workstation-cluster")
///             .network(default_.id())
///             .subnetwork(defaultSubnetwork.id())
///             .location("us-central1")
///             .labels(Map.of("label", "key"))
///             .annotations(Map.of("label-one", "value-one"))
///             .build());
///
///         var defaultWorkstationConfig = new WorkstationConfig("defaultWorkstationConfig", WorkstationConfigArgs.builder()
///             .workstationConfigId("workstation-config")
///             .workstationClusterId(defaultWorkstationCluster.workstationClusterId())
///             .location("us-central1")
///             .host(WorkstationConfigHostArgs.builder()
///                 .gceInstance(WorkstationConfigHostGceInstanceArgs.builder()
///                     .machineType("e2-standard-4")
///                     .bootDiskSizeGb(35)
///                     .disablePublicIpAddresses(true)
///                     .build())
///                 .build())
///             .allowedPorts(
///                 WorkstationConfigAllowedPortArgs.builder()
///                     .first(80)
///                     .last(80)
///                     .build(),
///                 WorkstationConfigAllowedPortArgs.builder()
///                     .first(22)
///                     .last(22)
///                     .build(),
///                 WorkstationConfigAllowedPortArgs.builder()
///                     .first(1024)
///                     .last(65535)
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:compute:Network
///     properties:
///       name: workstation-cluster
///       autoCreateSubnetworks: false
///   defaultSubnetwork:
///     type: gcp:compute:Subnetwork
///     name: default
///     properties:
///       name: workstation-cluster
///       ipCidrRange: 10.0.0.0/24
///       region: us-central1
///       network: ${default.name}
///   defaultWorkstationCluster:
///     type: gcp:workstations:WorkstationCluster
///     name: default
///     properties:
///       workstationClusterId: workstation-cluster
///       network: ${default.id}
///       subnetwork: ${defaultSubnetwork.id}
///       location: us-central1
///       labels:
///         label: key
///       annotations:
///         label-one: value-one
///   defaultWorkstationConfig:
///     type: gcp:workstations:WorkstationConfig
///     name: default
///     properties:
///       workstationConfigId: workstation-config
///       workstationClusterId: ${defaultWorkstationCluster.workstationClusterId}
///       location: us-central1
///       host:
///         gceInstance:
///           machineType: e2-standard-4
///           bootDiskSizeGb: 35
///           disablePublicIpAddresses: true
///       allowedPorts:
///         - first: 80
///           last: 80
///         - first: 22
///           last: 22
///         - first: 1024
///           last: 65535
/// ```
///
/// ### Workstation Config Idle Action
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.compute.Network("default", {
///     name: "workstation-cluster",
///     autoCreateSubnetworks: false,
/// });
/// const defaultSubnetwork = new gcp.compute.Subnetwork("default", {
///     name: "workstation-cluster",
///     ipCidrRange: "10.0.0.0/24",
///     region: "us-central1",
///     network: _default.name,
/// });
/// const defaultWorkstationCluster = new gcp.workstations.WorkstationCluster("default", {
///     workstationClusterId: "workstation-cluster",
///     network: _default.id,
///     subnetwork: defaultSubnetwork.id,
///     location: "us-central1",
/// });
/// const defaultWorkstationConfig = new gcp.workstations.WorkstationConfig("default", {
///     workstationConfigId: "workstation-config",
///     workstationClusterId: defaultWorkstationCluster.workstationClusterId,
///     location: "us-central1",
///     idleTimeout: "600s",
///     idleAction: "SUSPEND",
///     host: {
///         gceInstance: {
///             machineType: "e2-standard-4",
///             bootDiskSizeGb: 35,
///             disablePublicIpAddresses: true,
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.compute.Network("default",
///     name="workstation-cluster",
///     auto_create_subnetworks=False)
/// default_subnetwork = gcp.compute.Subnetwork("default",
///     name="workstation-cluster",
///     ip_cidr_range="10.0.0.0/24",
///     region="us-central1",
///     network=default.name)
/// default_workstation_cluster = gcp.workstations.WorkstationCluster("default",
///     workstation_cluster_id="workstation-cluster",
///     network=default.id,
///     subnetwork=default_subnetwork.id,
///     location="us-central1")
/// default_workstation_config = gcp.workstations.WorkstationConfig("default",
///     workstation_config_id="workstation-config",
///     workstation_cluster_id=default_workstation_cluster.workstation_cluster_id,
///     location="us-central1",
///     idle_timeout="600s",
///     idle_action="SUSPEND",
///     host={
///         "gce_instance": {
///             "machine_type": "e2-standard-4",
///             "boot_disk_size_gb": 35,
///             "disable_public_ip_addresses": True,
///         },
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
///     var @default = new Gcp.Compute.Network("default", new()
///     {
///         Name = "workstation-cluster",
///         AutoCreateSubnetworks = false,
///     });
///
///     var defaultSubnetwork = new Gcp.Compute.Subnetwork("default", new()
///     {
///         Name = "workstation-cluster",
///         IpCidrRange = "10.0.0.0/24",
///         Region = "us-central1",
///         Network = @default.Name,
///     });
///
///     var defaultWorkstationCluster = new Gcp.Workstations.WorkstationCluster("default", new()
///     {
///         WorkstationClusterId = "workstation-cluster",
///         Network = @default.Id,
///         Subnetwork = defaultSubnetwork.Id,
///         Location = "us-central1",
///     });
///
///     var defaultWorkstationConfig = new Gcp.Workstations.WorkstationConfig("default", new()
///     {
///         WorkstationConfigId = "workstation-config",
///         WorkstationClusterId = defaultWorkstationCluster.WorkstationClusterId,
///         Location = "us-central1",
///         IdleTimeout = "600s",
///         IdleAction = "SUSPEND",
///         Host = new Gcp.Workstations.Inputs.WorkstationConfigHostArgs
///         {
///             GceInstance = new Gcp.Workstations.Inputs.WorkstationConfigHostGceInstanceArgs
///             {
///                 MachineType = "e2-standard-4",
///                 BootDiskSizeGb = 35,
///                 DisablePublicIpAddresses = true,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/workstations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := compute.NewNetwork(ctx, "default", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("workstation-cluster"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultSubnetwork, err := compute.NewSubnetwork(ctx, "default", &compute.SubnetworkArgs{
/// 			Name:        pulumi.String("workstation-cluster"),
/// 			IpCidrRange: pulumi.String("10.0.0.0/24"),
/// 			Region:      pulumi.String("us-central1"),
/// 			Network:     _default.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultWorkstationCluster, err := workstations.NewWorkstationCluster(ctx, "default", &workstations.WorkstationClusterArgs{
/// 			WorkstationClusterId: pulumi.String("workstation-cluster"),
/// 			Network:              _default.ID().ToIDOutput().ToStringOutput(),
/// 			Subnetwork:           defaultSubnetwork.ID().ToIDOutput().ToStringOutput(),
/// 			Location:             pulumi.String("us-central1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = workstations.NewWorkstationConfig(ctx, "default", &workstations.WorkstationConfigArgs{
/// 			WorkstationConfigId:  pulumi.String("workstation-config"),
/// 			WorkstationClusterId: defaultWorkstationCluster.WorkstationClusterId,
/// 			Location:             pulumi.String("us-central1"),
/// 			IdleTimeout:          pulumi.String("600s"),
/// 			IdleAction:           pulumi.String("SUSPEND"),
/// 			Host: &workstations.WorkstationConfigHostArgs{
/// 				GceInstance: &workstations.WorkstationConfigHostGceInstanceArgs{
/// 					MachineType:              pulumi.String("e2-standard-4"),
/// 					BootDiskSizeGb:           pulumi.Int(35),
/// 					DisablePublicIpAddresses: pulumi.Bool(true),
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
/// resource "gcp_compute_network" "default" {
///   name                    = "workstation-cluster"
///   auto_create_subnetworks = false
/// }
/// resource "gcp_compute_subnetwork" "default" {
///   name          = "workstation-cluster"
///   ip_cidr_range = "10.0.0.0/24"
///   region        = "us-central1"
///   network       = gcp_compute_network.default.name
/// }
/// resource "gcp_workstations_workstationcluster" "default" {
///   workstation_cluster_id = "workstation-cluster"
///   network                = gcp_compute_network.default.id
///   subnetwork             = gcp_compute_subnetwork.default.id
///   location               = "us-central1"
/// }
/// resource "gcp_workstations_workstationconfig" "default" {
///   workstation_config_id  = "workstation-config"
///   workstation_cluster_id = gcp_workstations_workstationcluster.default.workstation_cluster_id
///   location               = "us-central1"
///   idle_timeout           = "600s"
///   idle_action            = "SUSPEND"
///   host = {
///     gce_instance = {
///       machine_type                = "e2-standard-4"
///       boot_disk_size_gb           = 35
///       disable_public_ip_addresses = true
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
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.compute.Subnetwork;
/// import com.pulumi.gcp.compute.SubnetworkArgs;
/// import com.pulumi.gcp.workstations.WorkstationCluster;
/// import com.pulumi.gcp.workstations.WorkstationClusterArgs;
/// import com.pulumi.gcp.workstations.WorkstationConfig;
/// import com.pulumi.gcp.workstations.WorkstationConfigArgs;
/// import com.pulumi.gcp.workstations.inputs.WorkstationConfigHostArgs;
/// import com.pulumi.gcp.workstations.inputs.WorkstationConfigHostGceInstanceArgs;
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
///         var default_ = new Network("default", NetworkArgs.builder()
///             .name("workstation-cluster")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var defaultSubnetwork = new Subnetwork("defaultSubnetwork", SubnetworkArgs.builder()
///             .name("workstation-cluster")
///             .ipCidrRange("10.0.0.0/24")
///             .region("us-central1")
///             .network(default_.name())
///             .build());
///
///         var defaultWorkstationCluster = new WorkstationCluster("defaultWorkstationCluster", WorkstationClusterArgs.builder()
///             .workstationClusterId("workstation-cluster")
///             .network(default_.id())
///             .subnetwork(defaultSubnetwork.id())
///             .location("us-central1")
///             .build());
///
///         var defaultWorkstationConfig = new WorkstationConfig("defaultWorkstationConfig", WorkstationConfigArgs.builder()
///             .workstationConfigId("workstation-config")
///             .workstationClusterId(defaultWorkstationCluster.workstationClusterId())
///             .location("us-central1")
///             .idleTimeout("600s")
///             .idleAction("SUSPEND")
///             .host(WorkstationConfigHostArgs.builder()
///                 .gceInstance(WorkstationConfigHostGceInstanceArgs.builder()
///                     .machineType("e2-standard-4")
///                     .bootDiskSizeGb(35)
///                     .disablePublicIpAddresses(true)
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
///     type: gcp:compute:Network
///     properties:
///       name: workstation-cluster
///       autoCreateSubnetworks: false
///   defaultSubnetwork:
///     type: gcp:compute:Subnetwork
///     name: default
///     properties:
///       name: workstation-cluster
///       ipCidrRange: 10.0.0.0/24
///       region: us-central1
///       network: ${default.name}
///   defaultWorkstationCluster:
///     type: gcp:workstations:WorkstationCluster
///     name: default
///     properties:
///       workstationClusterId: workstation-cluster
///       network: ${default.id}
///       subnetwork: ${defaultSubnetwork.id}
///       location: us-central1
///   defaultWorkstationConfig:
///     type: gcp:workstations:WorkstationConfig
///     name: default
///     properties:
///       workstationConfigId: workstation-config
///       workstationClusterId: ${defaultWorkstationCluster.workstationClusterId}
///       location: us-central1
///       idleTimeout: 600s
///       idleAction: SUSPEND
///       host:
///         gceInstance:
///           machineType: e2-standard-4
///           bootDiskSizeGb: 35
///           disablePublicIpAddresses: true
/// ```
///
///
/// ## Import
///
/// WorkstationConfig can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/workstationClusters/{{workstation_cluster_id}}/workstationConfigs/{{workstation_config_id}}`
/// * `{{project}}/{{location}}/{{workstation_cluster_id}}/{{workstation_config_id}}`
/// * `{{location}}/{{workstation_cluster_id}}/{{workstation_config_id}}`
///
///
/// When using the `pulumi import` command, WorkstationConfig can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:workstations/workstationConfig:WorkstationConfig default projects/{{project}}/locations/{{location}}/workstationClusters/{{workstation_cluster_id}}/workstationConfigs/{{workstation_config_id}}
/// $ pulumi import gcp:workstations/workstationConfig:WorkstationConfig default {{project}}/{{location}}/{{workstation_cluster_id}}/{{workstation_config_id}}
/// $ pulumi import gcp:workstations/workstationConfig:WorkstationConfig default {{location}}/{{workstation_cluster_id}}/{{workstation_config_id}}
/// ```
class WorkstationConfig extends pulumi.CustomResource {
  /// A list of port ranges specifying single ports or ranges of ports that are externally accessible in the workstation. Allowed ports must be one of 22, 80, or within range 1024-65535. If not specified defaults to ports 22, 80, and ports 1024-65535.
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>> allowedPorts;
  /// Client-specified annotations. This is distinct from labels.
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effectiveAnnotations` for all of the annotations present on the resource.
  late final pulumi.Output<Map<String, String>?> annotations;
  /// Status conditions describing the current resource state.
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>> conditions;
  /// Container that will be run for each workstation using this configuration when that workstation is started.
  /// Structure is documented below.
  late final pulumi.Output<WorkstationConfigContainer> container;
  /// Time when this resource was created.
  late final pulumi.Output<String> createTime;
  /// Whether this resource is in degraded mode, in which case it may require user action to restore full functionality. Details can be found in the conditions field.
  late final pulumi.Output<bool> degraded;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// Disables support for plain TCP connections in the workstation. By default the service supports TCP connections via a websocket relay. Setting this option to true disables that relay, which prevents the usage of services that require plain tcp connections, such as ssh. When enabled, all communication must occur over https or wss.
  late final pulumi.Output<bool?> disableTcpConnections;
  /// Human-readable name for this resource.
  late final pulumi.Output<String?> displayName;
  /// All of annotations (key/value pairs) present on the resource in GCP, including the annotations configured through Terraform, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveAnnotations;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// Whether to enable Linux `auditd` logging on the workstation. When enabled, a service account must also be specified that has `logging.buckets.write` permission on the project. Operating system audit logging is distinct from Cloud Audit Logs.
  late final pulumi.Output<bool?> enableAuditAgent;
  /// Encrypts resources of this workstation configuration using a customer-managed encryption key.
  /// If specified, the boot disk of the Compute Engine instance and the persistent disk are encrypted using this encryption key. If this field is not set, the disks are encrypted using a generated key. Customer-managed encryption keys do not protect disk metadata.
  /// If the customer-managed encryption key is rotated, when the workstation instance is stopped, the system attempts to recreate the persistent disk with the new version of the key. Be sure to keep older versions of the key until the persistent disk is recreated. Otherwise, data on the persistent disk will be lost.
  /// If the encryption key is revoked, the workstation session will automatically be stopped within 7 hours.
  /// Structure is documented below.
  late final pulumi.Output<WorkstationConfigEncryptionKey?> encryptionKey;
  /// Ephemeral directories which won't persist across workstation sessions.
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>> ephemeralDirectories;
  /// Checksum computed by the server.
  /// May be sent on update and delete requests to ensure that the client has an up-to-date value before proceeding.
  late final pulumi.Output<String> etag;
  /// Runtime host for a workstation.
  /// Structure is documented below.
  late final pulumi.Output<WorkstationConfigHost> host;
  /// (Optional, Beta)
  /// The action to take when the workstation has been idle for the duration specified in idle_timeout.
  /// Defaults to STOP.
  /// Default value is `STOP`.
  /// Possible values are: `STOP`, `SUSPEND`.
  late final pulumi.Output<String?> idleAction;
  /// How long to wait before automatically stopping an instance that hasn't recently received any user traffic. A value of 0 indicates that this instance should never time out from idleness. Defaults to 20 minutes.
  /// A duration in seconds with up to nine fractional digits, ending with 's'. Example: "3.5s".
  late final pulumi.Output<String?> idleTimeout;
  /// Client-specified labels that are applied to the resource and that are also propagated to the underlying Compute Engine resources.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// The location where the workstation cluster config should reside.
  late final pulumi.Output<String> location;
  /// Maximum number of workstations under this configuration a user can have workstations.workstation.use permission on. Only enforced on CreateWorkstation API calls on the user issuing the API request.
  late final pulumi.Output<int> maxUsableWorkstations;
  /// Full name of this resource.
  late final pulumi.Output<String> name;
  /// Directories to persist across workstation sessions.
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>> persistentDirectories;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// Readiness checks to be performed on a workstation.
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>?> readinessChecks;
  /// Specifies the zones used to replicate the VM and disk resources within the region. If set, exactly two zones within the workstation cluster's region must be specified—for example, `['us-central1-a', 'us-central1-f']`.
  /// If this field is empty, two default zones within the region are used. Immutable after the workstation configuration is created.
  late final pulumi.Output<List<String>> replicaZones;
  /// How long to wait before automatically stopping a workstation after it was started. A value of 0 indicates that workstations using this configuration should never time out from running duration. Must be greater than 0 and less than 24 hours if `encryptionKey` is set. Defaults to 12 hours.
  /// A duration in seconds with up to nine fractional digits, ending with 's'. Example: "3.5s".
  late final pulumi.Output<String?> runningTimeout;
  /// The system-generated UID of the resource.
  late final pulumi.Output<String> uid;
  /// The ID of the parent workstation cluster.
  late final pulumi.Output<String> workstationClusterId;
  /// The ID to be assigned to the workstation cluster config.
  late final pulumi.Output<String> workstationConfigId;

  /// Creates a new [WorkstationConfig].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WorkstationConfig]. {@macro pulumi_workstations_workstation_config_workstation_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WorkstationConfig(
    String name, {
    WorkstationConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:workstations/workstationConfig:WorkstationConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    allowedPorts = registerOutput<List<Map<String, dynamic>>>('allowedPorts');
    annotations = registerOutput<Map<String, String>?>('annotations');
    conditions = registerOutput<List<Map<String, dynamic>>>('conditions');
    container = registerOutput<WorkstationConfigContainer>('container', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkstationConfigContainer.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createTime = registerOutput<String>('createTime');
    degraded = registerOutput<bool>('degraded');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    disableTcpConnections = registerOutput<bool?>('disableTcpConnections');
    displayName = registerOutput<String?>('displayName');
    effectiveAnnotations = registerOutput<Map<String, String>>('effectiveAnnotations');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    enableAuditAgent = registerOutput<bool?>('enableAuditAgent');
    encryptionKey = registerOutput<WorkstationConfigEncryptionKey?>('encryptionKey', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkstationConfigEncryptionKey.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    ephemeralDirectories = registerOutput<List<Map<String, dynamic>>>('ephemeralDirectories');
    etag = registerOutput<String>('etag');
    host = registerOutput<WorkstationConfigHost>('host', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkstationConfigHost.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    idleAction = registerOutput<String?>('idleAction');
    idleTimeout = registerOutput<String?>('idleTimeout');
    labels = registerOutput<Map<String, String>?>('labels');
    location = registerOutput<String>('location');
    maxUsableWorkstations = registerOutput<int>('maxUsableWorkstations');
    this.name = registerOutput<String>('name');
    persistentDirectories = registerOutput<List<Map<String, dynamic>>>('persistentDirectories');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    readinessChecks = registerOutput<List<Map<String, dynamic>>?>('readinessChecks');
    replicaZones = registerOutput<List<String>>('replicaZones');
    runningTimeout = registerOutput<String?>('runningTimeout');
    uid = registerOutput<String>('uid');
    workstationClusterId = registerOutput<String>('workstationClusterId');
    workstationConfigId = registerOutput<String>('workstationConfigId');
  }

  /// Gets an existing [WorkstationConfig] resource's state with the given [name] and [id].
  static WorkstationConfig get(
    String name,
    pulumi.Input<String> id, {
    WorkstationConfigState? state,
  }) {
    return WorkstationConfig._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  WorkstationConfig._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:workstations/workstationConfig:WorkstationConfig',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    allowedPorts = registerOutput<List<Map<String, dynamic>>>('allowedPorts');
    annotations = registerOutput<Map<String, String>?>('annotations');
    conditions = registerOutput<List<Map<String, dynamic>>>('conditions');
    container = registerOutput<WorkstationConfigContainer>('container', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkstationConfigContainer.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createTime = registerOutput<String>('createTime');
    degraded = registerOutput<bool>('degraded');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    disableTcpConnections = registerOutput<bool?>('disableTcpConnections');
    displayName = registerOutput<String?>('displayName');
    effectiveAnnotations = registerOutput<Map<String, String>>('effectiveAnnotations');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    enableAuditAgent = registerOutput<bool?>('enableAuditAgent');
    encryptionKey = registerOutput<WorkstationConfigEncryptionKey?>('encryptionKey', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkstationConfigEncryptionKey.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    ephemeralDirectories = registerOutput<List<Map<String, dynamic>>>('ephemeralDirectories');
    etag = registerOutput<String>('etag');
    host = registerOutput<WorkstationConfigHost>('host', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkstationConfigHost.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    idleAction = registerOutput<String?>('idleAction');
    idleTimeout = registerOutput<String?>('idleTimeout');
    labels = registerOutput<Map<String, String>?>('labels');
    location = registerOutput<String>('location');
    maxUsableWorkstations = registerOutput<int>('maxUsableWorkstations');
    this.name = registerOutput<String>('name');
    persistentDirectories = registerOutput<List<Map<String, dynamic>>>('persistentDirectories');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    readinessChecks = registerOutput<List<Map<String, dynamic>>?>('readinessChecks');
    replicaZones = registerOutput<List<String>>('replicaZones');
    runningTimeout = registerOutput<String?>('runningTimeout');
    uid = registerOutput<String>('uid');
    workstationClusterId = registerOutput<String>('workstationClusterId');
    workstationConfigId = registerOutput<String>('workstationConfigId');
  }
}
