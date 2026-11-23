import 'package:pulumi/pulumi.dart' as pulumi;
import 'workstation_config_allowed_port.dart';
import 'workstation_config_args.dart';
import 'workstation_config_condition.dart';
import 'workstation_config_container.dart';
import 'workstation_config_encryption_key.dart';
import 'workstation_config_ephemeral_directory.dart';
import 'workstation_config_host.dart';
import 'workstation_config_persistent_directory.dart';
import 'workstation_config_readiness_check.dart';
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
///     region: "us-west4",
///     network: _default.name,
/// });
/// const defaultWorkstationCluster = new gcp.workstations.WorkstationCluster("default", {
///     workstationClusterId: "workstation-cluster",
///     network: _default.id,
///     subnetwork: defaultSubnetwork.id,
///     location: "us-west4",
///     labels: {
///         label: "key",
///     },
///     annotations: {
///         "label-one": "value-one",
///     },
/// });
/// const defaultAccount = new gcp.serviceaccount.Account("default", {
///     accountId: "my-account",
///     displayName: "Service Account",
/// });
/// const defaultWorkstationConfig = new gcp.workstations.WorkstationConfig("default", {
///     workstationConfigId: "workstation-config",
///     workstationClusterId: defaultWorkstationCluster.workstationClusterId,
///     location: "us-west4",
///     idleTimeout: "600s",
///     runningTimeout: "21600s",
///     replicaZones: [
///         "us-west4-a",
///         "us-west4-b",
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
///             poolSize: 0,
///             serviceAccount: defaultAccount.email,
///             serviceAccountScopes: ["https://www.googleapis.com/auth/cloud-platform"],
///             disablePublicIpAddresses: true,
///             disableSsh: false,
///             vmTags: pulumi.all([tagKey1.id, tagValue1.id]).apply(([tagKey1Id, tagValue1Id]) => {
///                 [tagKey1Id]: tagValue1Id,
///             }),
///             shieldedInstanceConfig: {
///                 enableSecureBoot: false,
///                 enableVtpm: false,
///                 enableIntegrityMonitoring: false,
///             },
///             confidentialInstanceConfig: {
///                 enableConfidentialCompute: false,
///             },
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
///     region="us-west4",
///     network=default.name)
/// default_workstation_cluster = gcp.workstations.WorkstationCluster("default",
///     workstation_cluster_id="workstation-cluster",
///     network=default.id,
///     subnetwork=default_subnetwork.id,
///     location="us-west4",
///     labels={
///         "label": "key",
///     },
///     annotations={
///         "label-one": "value-one",
///     })
/// default_account = gcp.serviceaccount.Account("default",
///     account_id="my-account",
///     display_name="Service Account")
/// default_workstation_config = gcp.workstations.WorkstationConfig("default",
///     workstation_config_id="workstation-config",
///     workstation_cluster_id=default_workstation_cluster.workstation_cluster_id,
///     location="us-west4",
///     idle_timeout="600s",
///     running_timeout="21600s",
///     replica_zones=[
///         "us-west4-a",
///         "us-west4-b",
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
///             "pool_size": 0,
///             "service_account": default_account.email,
///             "service_account_scopes": ["https://www.googleapis.com/auth/cloud-platform"],
///             "disable_public_ip_addresses": True,
///             "disable_ssh": False,
///             "vm_tags": pulumi.Output.all(
///                 tagKey1Id=tag_key1.id,
///                 tagValue1Id=tag_value1.id
/// ).apply(lambda resolved_outputs: {
///                 str(resolved_outputs['tagKey1Id']): resolved_outputs['tagValue1Id'],
///             })
/// ,
///             "shielded_instance_config": {
///                 "enable_secure_boot": False,
///                 "enable_vtpm": False,
///                 "enable_integrity_monitoring": False,
///             },
///             "confidential_instance_config": {
///                 "enable_confidential_compute": False,
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
///         Region = "us-west4",
///         Network = @default.Name,
///     });
///
///     var defaultWorkstationCluster = new Gcp.Workstations.WorkstationCluster("default", new()
///     {
///         WorkstationClusterId = "workstation-cluster",
///         Network = @default.Id,
///         Subnetwork = defaultSubnetwork.Id,
///         Location = "us-west4",
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
///         Location = "us-west4",
///         IdleTimeout = "600s",
///         RunningTimeout = "21600s",
///         ReplicaZones = new[]
///         {
///             "us-west4-a",
///             "us-west4-b",
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
///                 PoolSize = 0,
///                 ServiceAccount = defaultAccount.Email,
///                 ServiceAccountScopes = new[]
///                 {
///                     "https://www.googleapis.com/auth/cloud-platform",
///                 },
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
///                 ShieldedInstanceConfig = new Gcp.Workstations.Inputs.WorkstationConfigHostGceInstanceShieldedInstanceConfigArgs
///                 {
///                     EnableSecureBoot = false,
///                     EnableVtpm = false,
///                     EnableIntegrityMonitoring = false,
///                 },
///                 ConfidentialInstanceConfig = new Gcp.Workstations.Inputs.WorkstationConfigHostGceInstanceConfidentialInstanceConfigArgs
///                 {
///                     EnableConfidentialCompute = false,
///                 },
///             },
///         },
///     });
///
/// });
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
/// resource "gcp_tags_tag_key" "tag_key1" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   parent     = "organizations/123456789"
///   short_name = "keyname"
/// }
/// resource "gcp_tags_tag_value" "tag_value1" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   parent     = gcp_tags_tag_key.tag_key1.id
///   short_name = "valuename"
/// }
/// resource "gcp_compute_network" "default" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   name                    = "workstation-cluster"
///   auto_create_subnetworks = false
/// }
/// resource "gcp_compute_subnetwork" "default" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   name          = "workstation-cluster"
///   ip_cidr_range = "10.0.0.0/24"
///   region        = "us-west4"
///   network       = gcp_compute_network.default.name
/// }
/// resource "gcp_workstations_workstation_cluster" "default" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   workstation_cluster_id = "workstation-cluster"
///   network                = gcp_compute_network.default.id
///   subnetwork             = gcp_compute_subnetwork.default.id
///   location               = "us-west4"
///   labels = {
///     "label" = "key"
///   }
///   annotations = {
///     "label-one" = "value-one"
///   }
/// }
/// resource "gcp_serviceaccount_account" "default" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   account_id   = "my-account"
///   display_name = "Service Account"
/// }
/// resource "gcp_workstations_workstation_config" "default" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   workstation_config_id  = "workstation-config"
///   workstation_cluster_id = gcp_workstations_workstation_cluster.default.workstation_cluster_id
///   location               = "us-west4"
///   idle_timeout           = "600s"
///   running_timeout        = "21600s"
///   replica_zones          = ["us-west4-a", "us-west4-b"]
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
///       pool_size                   = 0
///       service_account             = gcp_serviceaccount_account.default.email
///       service_account_scopes      = ["https://www.googleapis.com/auth/cloud-platform"]
///       disable_public_ip_addresses = true
///       disable_ssh                 = false
///       vm_tags = {
///         gcp_tags_tag_key.tag_key1.id = gcp_tags_tag_value.tag_value1.id
///       }
///       shielded_instance_config = {
///         enable_secure_boot          = false
///         enable_vtpm                 = false
///         enable_integrity_monitoring = false
///       }
///       confidential_instance_config = {
///         enable_confidential_compute = false
///       }
///     }
///   }
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
///       region: us-west4
///       network: ${default.name}
///   defaultWorkstationCluster:
///     type: gcp:workstations:WorkstationCluster
///     name: default
///     properties:
///       workstationClusterId: workstation-cluster
///       network: ${default.id}
///       subnetwork: ${defaultSubnetwork.id}
///       location: us-west4
///       labels:
///         label: key
///       annotations:
///         label-one: value-one
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
///       location: us-west4
///       idleTimeout: 600s
///       runningTimeout: 21600s
///       replicaZones:
///         - us-west4-a
///         - us-west4-b
///       annotations:
///         label-one: value-one
///       labels:
///         label: key
///       maxUsableWorkstations: 1
///       host:
///         gceInstance:
///           machineType: e2-standard-4
///           bootDiskSizeGb: 35
///           poolSize: 0
///           serviceAccount: ${defaultAccount.email}
///           serviceAccountScopes:
///             - https://www.googleapis.com/auth/cloud-platform
///           disablePublicIpAddresses: true
///           disableSsh: false
///           vmTags:
///             ${tagKey1.id}: ${tagValue1.id}
///           shieldedInstanceConfig:
///             enableSecureBoot: false
///             enableVtpm: false
///             enableIntegrityMonitoring: false
///           confidentialInstanceConfig:
///             enableConfidentialCompute: false
/// ```
///
///
/// ### Workstation Config Container
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
///     region: "us-west4",
///     network: _default.name,
/// });
/// const defaultWorkstationCluster = new gcp.workstations.WorkstationCluster("default", {
///     workstationClusterId: "workstation-cluster",
///     network: _default.id,
///     subnetwork: defaultSubnetwork.id,
///     location: "us-west4",
///     labels: {
///         label: "key",
///     },
///     annotations: {
///         "label-one": "value-one",
///     },
/// });
/// const defaultAccount = new gcp.serviceaccount.Account("default", {
///     accountId: "my-account",
///     displayName: "Service Account",
/// });
/// const defaultWorkstationConfig = new gcp.workstations.WorkstationConfig("default", {
///     workstationConfigId: "workstation-config",
///     workstationClusterId: defaultWorkstationCluster.workstationClusterId,
///     location: "us-west4",
///     displayName: "Display Name N",
///     idleTimeout: "1200s",
///     runningTimeout: "43200s",
///     replicaZones: [
///         "us-west4-a",
///         "us-west4-b",
///     ],
///     disableTcpConnections: true,
///     maxUsableWorkstations: 2,
///     labels: {
///         foo: "bar",
///     },
///     readinessChecks: [{
///         path: "/",
///         port: 80,
///     }],
///     allowedPorts: [{
///         first: 80,
///         last: 80,
///     }],
///     host: {
///         gceInstance: {
///             machineType: "n1-standard-4",
///             bootDiskSizeGb: 35,
///             disablePublicIpAddresses: true,
///             enableNestedVirtualization: true,
///             instanceMetadata: {
///                 "startup-key": "startup-value",
///                 "custom-field": "custom-value",
///             },
///         },
///     },
///     container: {
///         image: "us-central1-docker.pkg.dev/cloud-workstations-images/predefined/code-oss:latest",
///         workingDir: "/test",
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
///     region="us-west4",
///     network=default.name)
/// default_workstation_cluster = gcp.workstations.WorkstationCluster("default",
///     workstation_cluster_id="workstation-cluster",
///     network=default.id,
///     subnetwork=default_subnetwork.id,
///     location="us-west4",
///     labels={
///         "label": "key",
///     },
///     annotations={
///         "label-one": "value-one",
///     })
/// default_account = gcp.serviceaccount.Account("default",
///     account_id="my-account",
///     display_name="Service Account")
/// default_workstation_config = gcp.workstations.WorkstationConfig("default",
///     workstation_config_id="workstation-config",
///     workstation_cluster_id=default_workstation_cluster.workstation_cluster_id,
///     location="us-west4",
///     display_name="Display Name N",
///     idle_timeout="1200s",
///     running_timeout="43200s",
///     replica_zones=[
///         "us-west4-a",
///         "us-west4-b",
///     ],
///     disable_tcp_connections=True,
///     max_usable_workstations=2,
///     labels={
///         "foo": "bar",
///     },
///     readiness_checks=[{
///         "path": "/",
///         "port": 80,
///     }],
///     allowed_ports=[{
///         "first": 80,
///         "last": 80,
///     }],
///     host={
///         "gce_instance": {
///             "machine_type": "n1-standard-4",
///             "boot_disk_size_gb": 35,
///             "disable_public_ip_addresses": True,
///             "enable_nested_virtualization": True,
///             "instance_metadata": {
///                 "startup-key": "startup-value",
///                 "custom-field": "custom-value",
///             },
///         },
///     },
///     container={
///         "image": "us-central1-docker.pkg.dev/cloud-workstations-images/predefined/code-oss:latest",
///         "working_dir": "/test",
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
///         Region = "us-west4",
///         Network = @default.Name,
///     });
///
///     var defaultWorkstationCluster = new Gcp.Workstations.WorkstationCluster("default", new()
///     {
///         WorkstationClusterId = "workstation-cluster",
///         Network = @default.Id,
///         Subnetwork = defaultSubnetwork.Id,
///         Location = "us-west4",
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
///         Location = "us-west4",
///         DisplayName = "Display Name N",
///         IdleTimeout = "1200s",
///         RunningTimeout = "43200s",
///         ReplicaZones = new[]
///         {
///             "us-west4-a",
///             "us-west4-b",
///         },
///         DisableTcpConnections = true,
///         MaxUsableWorkstations = 2,
///         Labels =
///         {
///             { "foo", "bar" },
///         },
///         ReadinessChecks = new[]
///         {
///             new Gcp.Workstations.Inputs.WorkstationConfigReadinessCheckArgs
///             {
///                 Path = "/",
///                 Port = 80,
///             },
///         },
///         AllowedPorts = new[]
///         {
///             new Gcp.Workstations.Inputs.WorkstationConfigAllowedPortArgs
///             {
///                 First = 80,
///                 Last = 80,
///             },
///         },
///         Host = new Gcp.Workstations.Inputs.WorkstationConfigHostArgs
///         {
///             GceInstance = new Gcp.Workstations.Inputs.WorkstationConfigHostGceInstanceArgs
///             {
///                 MachineType = "n1-standard-4",
///                 BootDiskSizeGb = 35,
///                 DisablePublicIpAddresses = true,
///                 EnableNestedVirtualization = true,
///                 InstanceMetadata =
///                 {
///                     { "startup-key", "startup-value" },
///                     { "custom-field", "custom-value" },
///                 },
///             },
///         },
///         Container = new Gcp.Workstations.Inputs.WorkstationConfigContainerArgs
///         {
///             Image = "us-central1-docker.pkg.dev/cloud-workstations-images/predefined/code-oss:latest",
///             WorkingDir = "/test",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/serviceaccount"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/tags"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/workstations"
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
/// 		_, err = tags.NewTagValue(ctx, "tag_value1", &tags.TagValueArgs{
/// 			Parent:    tagKey1.ID(),
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
/// 			Region:      pulumi.String("us-west4"),
/// 			Network:     _default.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultWorkstationCluster, err := workstations.NewWorkstationCluster(ctx, "default", &workstations.WorkstationClusterArgs{
/// 			WorkstationClusterId: pulumi.String("workstation-cluster"),
/// 			Network:              _default.ID(),
/// 			Subnetwork:           defaultSubnetwork.ID(),
/// 			Location:             pulumi.String("us-west4"),
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
/// 		_, err = serviceaccount.NewAccount(ctx, "default", &serviceaccount.AccountArgs{
/// 			AccountId:   pulumi.String("my-account"),
/// 			DisplayName: pulumi.String("Service Account"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = workstations.NewWorkstationConfig(ctx, "default", &workstations.WorkstationConfigArgs{
/// 			WorkstationConfigId:  pulumi.String("workstation-config"),
/// 			WorkstationClusterId: defaultWorkstationCluster.WorkstationClusterId,
/// 			Location:             pulumi.String("us-west4"),
/// 			DisplayName:          pulumi.String("Display Name N"),
/// 			IdleTimeout:          pulumi.String("1200s"),
/// 			RunningTimeout:       pulumi.String("43200s"),
/// 			ReplicaZones: pulumi.StringArray{
/// 				pulumi.String("us-west4-a"),
/// 				pulumi.String("us-west4-b"),
/// 			},
/// 			DisableTcpConnections: pulumi.Bool(true),
/// 			MaxUsableWorkstations: pulumi.Int(2),
/// 			Labels: pulumi.StringMap{
/// 				"foo": pulumi.String("bar"),
/// 			},
/// 			ReadinessChecks: workstations.WorkstationConfigReadinessCheckArray{
/// 				&workstations.WorkstationConfigReadinessCheckArgs{
/// 					Path: pulumi.String("/"),
/// 					Port: pulumi.Int(80),
/// 				},
/// 			},
/// 			AllowedPorts: workstations.WorkstationConfigAllowedPortArray{
/// 				&workstations.WorkstationConfigAllowedPortArgs{
/// 					First: pulumi.Int(80),
/// 					Last:  pulumi.Int(80),
/// 				},
/// 			},
/// 			Host: &workstations.WorkstationConfigHostArgs{
/// 				GceInstance: &workstations.WorkstationConfigHostGceInstanceArgs{
/// 					MachineType:                pulumi.String("n1-standard-4"),
/// 					BootDiskSizeGb:             pulumi.Int(35),
/// 					DisablePublicIpAddresses:   pulumi.Bool(true),
/// 					EnableNestedVirtualization: pulumi.Bool(true),
/// 					InstanceMetadata: pulumi.StringMap{
/// 						"startup-key":  pulumi.String("startup-value"),
/// 						"custom-field": pulumi.String("custom-value"),
/// 					},
/// 				},
/// 			},
/// 			Container: &workstations.WorkstationConfigContainerArgs{
/// 				Image:      pulumi.String("us-central1-docker.pkg.dev/cloud-workstations-images/predefined/code-oss:latest"),
/// 				WorkingDir: pulumi.String("/test"),
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
/// terraform {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_tags_tag_key" "tag_key1" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   parent     = "organizations/123456789"
///   short_name = "keyname"
/// }
/// resource "gcp_tags_tag_value" "tag_value1" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   parent     = gcp_tags_tag_key.tag_key1.id
///   short_name = "valuename"
/// }
/// resource "gcp_compute_network" "default" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   name                    = "workstation-cluster"
///   auto_create_subnetworks = false
/// }
/// resource "gcp_compute_subnetwork" "default" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   name          = "workstation-cluster"
///   ip_cidr_range = "10.0.0.0/24"
///   region        = "us-west4"
///   network       = gcp_compute_network.default.name
/// }
/// resource "gcp_workstations_workstation_cluster" "default" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   workstation_cluster_id = "workstation-cluster"
///   network                = gcp_compute_network.default.id
///   subnetwork             = gcp_compute_subnetwork.default.id
///   location               = "us-west4"
///   labels = {
///     "label" = "key"
///   }
///   annotations = {
///     "label-one" = "value-one"
///   }
/// }
/// resource "gcp_serviceaccount_account" "default" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   account_id   = "my-account"
///   display_name = "Service Account"
/// }
/// resource "gcp_workstations_workstation_config" "default" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   workstation_config_id   = "workstation-config"
///   workstation_cluster_id  = gcp_workstations_workstation_cluster.default.workstation_cluster_id
///   location                = "us-west4"
///   display_name            = "Display Name N"
///   idle_timeout            = "1200s"
///   running_timeout         = "43200s"
///   replica_zones           = ["us-west4-a", "us-west4-b"]
///   disable_tcp_connections = true
///   max_usable_workstations = 2
///   labels = {
///     "foo" = "bar"
///   }
///   readiness_checks {
///     path = "/"
///     port = 80
///   }
///   allowed_ports {
///     first = 80
///     last  = 80
///   }
///   host = {
///     gce_instance = {
///       machine_type                 = "n1-standard-4"
///       boot_disk_size_gb            = 35
///       disable_public_ip_addresses  = true
///       enable_nested_virtualization = true
///       instance_metadata = {
///         "startup-key"  = "startup-value"
///         "custom-field" = "custom-value"
///       }
///     }
///   }
///   container = {
///     image       = "us-central1-docker.pkg.dev/cloud-workstations-images/predefined/code-oss:latest"
///     working_dir = "/test"
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
/// import com.pulumi.gcp.serviceaccount.Account;
/// import com.pulumi.gcp.serviceaccount.AccountArgs;
/// import com.pulumi.gcp.workstations.WorkstationConfig;
/// import com.pulumi.gcp.workstations.WorkstationConfigArgs;
/// import com.pulumi.gcp.workstations.inputs.WorkstationConfigReadinessCheckArgs;
/// import com.pulumi.gcp.workstations.inputs.WorkstationConfigAllowedPortArgs;
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
///             .region("us-west4")
///             .network(default_.name())
///             .build());
///
///         var defaultWorkstationCluster = new WorkstationCluster("defaultWorkstationCluster", WorkstationClusterArgs.builder()
///             .workstationClusterId("workstation-cluster")
///             .network(default_.id())
///             .subnetwork(defaultSubnetwork.id())
///             .location("us-west4")
///             .labels(Map.of("label", "key"))
///             .annotations(Map.of("label-one", "value-one"))
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
///             .location("us-west4")
///             .displayName("Display Name N")
///             .idleTimeout("1200s")
///             .runningTimeout("43200s")
///             .replicaZones(
///                 "us-west4-a",
///                 "us-west4-b")
///             .disableTcpConnections(true)
///             .maxUsableWorkstations(2)
///             .labels(Map.of("foo", "bar"))
///             .readinessChecks(WorkstationConfigReadinessCheckArgs.builder()
///                 .path("/")
///                 .port(80)
///                 .build())
///             .allowedPorts(WorkstationConfigAllowedPortArgs.builder()
///                 .first(80)
///                 .last(80)
///                 .build())
///             .host(WorkstationConfigHostArgs.builder()
///                 .gceInstance(WorkstationConfigHostGceInstanceArgs.builder()
///                     .machineType("n1-standard-4")
///                     .bootDiskSizeGb(35)
///                     .disablePublicIpAddresses(true)
///                     .enableNestedVirtualization(true)
///                     .instanceMetadata(Map.ofEntries(
///                         Map.entry("startup-key", "startup-value"),
///                         Map.entry("custom-field", "custom-value")
///                     ))
///                     .build())
///                 .build())
///             .container(WorkstationConfigContainerArgs.builder()
///                 .image("us-central1-docker.pkg.dev/cloud-workstations-images/predefined/code-oss:latest")
///                 .workingDir("/test")
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
///       region: us-west4
///       network: ${default.name}
///   defaultWorkstationCluster:
///     type: gcp:workstations:WorkstationCluster
///     name: default
///     properties:
///       workstationClusterId: workstation-cluster
///       network: ${default.id}
///       subnetwork: ${defaultSubnetwork.id}
///       location: us-west4
///       labels:
///         label: key
///       annotations:
///         label-one: value-one
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
///       location: us-west4
///       displayName: Display Name N
///       idleTimeout: 1200s
///       runningTimeout: 43200s
///       replicaZones:
///         - us-west4-a
///         - us-west4-b
///       disableTcpConnections: true
///       maxUsableWorkstations: 2
///       labels:
///         foo: bar
///       readinessChecks:
///         - path: /
///           port: 80
///       allowedPorts:
///         - first: 80
///           last: 80
///       host:
///         gceInstance:
///           machineType: n1-standard-4
///           bootDiskSizeGb: 35
///           disablePublicIpAddresses: true
///           enableNestedVirtualization: true
///           instanceMetadata:
///             startup-key: startup-value
///             custom-field: custom-value
///       container:
///         image: us-central1-docker.pkg.dev/cloud-workstations-images/predefined/code-oss:latest
///         workingDir: /test
///         env:
///           NAME: FOO
///           BABE: bar
/// ```
///
///
/// ### Workstation Config Allowed Ports
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
///     region: "us-west4",
///     network: _default.name,
/// });
/// const defaultWorkstationCluster = new gcp.workstations.WorkstationCluster("default", {
///     workstationClusterId: "workstation-cluster",
///     network: _default.id,
///     subnetwork: defaultSubnetwork.id,
///     location: "us-west4",
///     labels: {
///         label: "key",
///     },
///     annotations: {
///         "label-one": "value-one",
///     },
/// });
/// const defaultAccount = new gcp.serviceaccount.Account("default", {
///     accountId: "my-account",
///     displayName: "Service Account",
/// });
/// const defaultWorkstationConfig = new gcp.workstations.WorkstationConfig("default", {
///     workstationConfigId: "workstation-config",
///     workstationClusterId: defaultWorkstationCluster.workstationClusterId,
///     location: "us-west4",
///     displayName: "Display Name N2",
///     idleTimeout: "600s",
///     runningTimeout: "21600s",
///     replicaZones: [
///         "us-west4-a",
///         "us-west4-b",
///     ],
///     disableTcpConnections: false,
///     maxUsableWorkstations: 1,
///     annotations: {
///         "label-one": "value-one",
///     },
///     labels: {
///         label: "key",
///     },
///     readinessChecks: [{
///         path: "/healthz",
///         port: 8080,
///     }],
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
///     container: {
///         image: "us-central1-docker.pkg.dev/cloud-workstations-images/predefined/code-oss:latest",
///     },
///     host: {
///         gceInstance: {
///             machineType: "e2-standard-4",
///             bootDiskSizeGb: 35,
///             disablePublicIpAddresses: true,
///             disableSsh: false,
///             vmTags: pulumi.all([tagKey1.id, tagValue1.id]).apply(([tagKey1Id, tagValue1Id]) => {
///                 [tagKey1Id]: tagValue1Id,
///             }),
///             instanceMetadata: {
///                 "startup-key": "startup-value-changed",
///                 "second-key": "second-value",
///             },
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
///     region="us-west4",
///     network=default.name)
/// default_workstation_cluster = gcp.workstations.WorkstationCluster("default",
///     workstation_cluster_id="workstation-cluster",
///     network=default.id,
///     subnetwork=default_subnetwork.id,
///     location="us-west4",
///     labels={
///         "label": "key",
///     },
///     annotations={
///         "label-one": "value-one",
///     })
/// default_account = gcp.serviceaccount.Account("default",
///     account_id="my-account",
///     display_name="Service Account")
/// default_workstation_config = gcp.workstations.WorkstationConfig("default",
///     workstation_config_id="workstation-config",
///     workstation_cluster_id=default_workstation_cluster.workstation_cluster_id,
///     location="us-west4",
///     display_name="Display Name N2",
///     idle_timeout="600s",
///     running_timeout="21600s",
///     replica_zones=[
///         "us-west4-a",
///         "us-west4-b",
///     ],
///     disable_tcp_connections=False,
///     max_usable_workstations=1,
///     annotations={
///         "label-one": "value-one",
///     },
///     labels={
///         "label": "key",
///     },
///     readiness_checks=[{
///         "path": "/healthz",
///         "port": 8080,
///     }],
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
///     ],
///     container={
///         "image": "us-central1-docker.pkg.dev/cloud-workstations-images/predefined/code-oss:latest",
///     },
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
///             "instance_metadata": {
///                 "startup-key": "startup-value-changed",
///                 "second-key": "second-value",
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
///         Region = "us-west4",
///         Network = @default.Name,
///     });
///
///     var defaultWorkstationCluster = new Gcp.Workstations.WorkstationCluster("default", new()
///     {
///         WorkstationClusterId = "workstation-cluster",
///         Network = @default.Id,
///         Subnetwork = defaultSubnetwork.Id,
///         Location = "us-west4",
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
///         Location = "us-west4",
///         DisplayName = "Display Name N2",
///         IdleTimeout = "600s",
///         RunningTimeout = "21600s",
///         ReplicaZones = new[]
///         {
///             "us-west4-a",
///             "us-west4-b",
///         },
///         DisableTcpConnections = false,
///         MaxUsableWorkstations = 1,
///         Annotations =
///         {
///             { "label-one", "value-one" },
///         },
///         Labels =
///         {
///             { "label", "key" },
///         },
///         ReadinessChecks = new[]
///         {
///             new Gcp.Workstations.Inputs.WorkstationConfigReadinessCheckArgs
///             {
///                 Path = "/healthz",
///                 Port = 8080,
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
///         Container = new Gcp.Workstations.Inputs.WorkstationConfigContainerArgs
///         {
///             Image = "us-central1-docker.pkg.dev/cloud-workstations-images/predefined/code-oss:latest",
///         },
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
///                 InstanceMetadata =
///                 {
///                     { "startup-key", "startup-value-changed" },
///                     { "second-key", "second-value" },
///                 },
///             },
///         },
///     });
///
/// });
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
/// resource "gcp_tags_tag_key" "tag_key1" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   parent     = "organizations/123456789"
///   short_name = "keyname"
/// }
/// resource "gcp_tags_tag_value" "tag_value1" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   parent     = gcp_tags_tag_key.tag_key1.id
///   short_name = "valuename"
/// }
/// resource "gcp_compute_network" "default" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   name                    = "workstation-cluster"
///   auto_create_subnetworks = false
/// }
/// resource "gcp_compute_subnetwork" "default" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   name          = "workstation-cluster"
///   ip_cidr_range = "10.0.0.0/24"
///   region        = "us-west4"
///   network       = gcp_compute_network.default.name
/// }
/// resource "gcp_workstations_workstation_cluster" "default" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   workstation_cluster_id = "workstation-cluster"
///   network                = gcp_compute_network.default.id
///   subnetwork             = gcp_compute_subnetwork.default.id
///   location               = "us-west4"
///   labels = {
///     "label" = "key"
///   }
///   annotations = {
///     "label-one" = "value-one"
///   }
/// }
/// resource "gcp_serviceaccount_account" "default" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   account_id   = "my-account"
///   display_name = "Service Account"
/// }
/// resource "gcp_workstations_workstation_config" "default" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   workstation_config_id   = "workstation-config"
///   workstation_cluster_id  = gcp_workstations_workstation_cluster.default.workstation_cluster_id
///   location                = "us-west4"
///   display_name            = "Display Name N2"
///   idle_timeout            = "600s"
///   running_timeout         = "21600s"
///   replica_zones           = ["us-west4-a", "us-west4-b"]
///   disable_tcp_connections = false
///   max_usable_workstations = 1
///   annotations = {
///     "label-one" = "value-one"
///   }
///   labels = {
///     "label" = "key"
///   }
///   readiness_checks {
///     path = "/healthz"
///     port = 8080
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
///   container = {
///     image = "us-central1-docker.pkg.dev/cloud-workstations-images/predefined/code-oss:latest"
///   }
///   host = {
///     gce_instance = {
///       machine_type                = "e2-standard-4"
///       boot_disk_size_gb           = 35
///       disable_public_ip_addresses = true
///       disable_ssh                 = false
///       vm_tags = {
///         gcp_tags_tag_key.tag_key1.id = gcp_tags_tag_value.tag_value1.id
///       }
///       instance_metadata = {
///         "startup-key" = "startup-value-changed"
///         "second-key"  = "second-value"
///       }
///     }
///   }
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
///       region: us-west4
///       network: ${default.name}
///   defaultWorkstationCluster:
///     type: gcp:workstations:WorkstationCluster
///     name: default
///     properties:
///       workstationClusterId: workstation-cluster
///       network: ${default.id}
///       subnetwork: ${defaultSubnetwork.id}
///       location: us-west4
///       labels:
///         label: key
///       annotations:
///         label-one: value-one
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
///       location: us-west4
///       displayName: Display Name N2
///       idleTimeout: 600s
///       runningTimeout: 21600s
///       replicaZones:
///         - us-west4-a
///         - us-west4-b
///       disableTcpConnections: false
///       maxUsableWorkstations: 1
///       annotations:
///         label-one: value-one
///       labels:
///         label: key
///       readinessChecks:
///         - path: /healthz
///           port: 8080
///       allowedPorts:
///         - first: 80
///           last: 80
///         - first: 22
///           last: 22
///         - first: 1024
///           last: 65535
///       container:
///         image: us-central1-docker.pkg.dev/cloud-workstations-images/predefined/code-oss:latest
///       host:
///         gceInstance:
///           machineType: e2-standard-4
///           bootDiskSizeGb: 35
///           disablePublicIpAddresses: true
///           disableSsh: false
///           vmTags:
///             ${tagKey1.id}: ${tagValue1.id}
///           instanceMetadata:
///             startup-key: startup-value-changed
///             second-key: second-value
/// ```
///
///
/// ### Workstation Config Shielded Instance Config
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
///     region: "us-west4",
///     network: _default.name,
/// });
/// const defaultWorkstationCluster = new gcp.workstations.WorkstationCluster("default", {
///     workstationClusterId: "workstation-cluster",
///     network: _default.id,
///     subnetwork: defaultSubnetwork.id,
///     location: "us-west4",
///     labels: {
///         label: "key",
///     },
///     annotations: {
///         "label-one": "value-one",
///     },
/// });
/// const defaultAccount = new gcp.serviceaccount.Account("default", {
///     accountId: "my-account",
///     displayName: "Service Account",
/// });
/// const defaultWorkstationConfig = new gcp.workstations.WorkstationConfig("default", {
///     workstationConfigId: "workstation-config",
///     workstationClusterId: defaultWorkstationCluster.workstationClusterId,
///     location: "us-west4",
///     enableAuditAgent: true,
///     host: {
///         gceInstance: {
///             machineType: "n2d-standard-2",
///             bootDiskSizeGb: 35,
///             poolSize: 1,
///             serviceAccount: defaultAccount.email,
///             serviceAccountScopes: ["https://www.googleapis.com/auth/cloud-platform"],
///             disablePublicIpAddresses: false,
///             tags: [
///                 "foo",
///                 "bar",
///             ],
///             shieldedInstanceConfig: {
///                 enableSecureBoot: true,
///                 enableVtpm: true,
///                 enableIntegrityMonitoring: true,
///             },
///             confidentialInstanceConfig: {
///                 enableConfidentialCompute: true,
///             },
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
///     region="us-west4",
///     network=default.name)
/// default_workstation_cluster = gcp.workstations.WorkstationCluster("default",
///     workstation_cluster_id="workstation-cluster",
///     network=default.id,
///     subnetwork=default_subnetwork.id,
///     location="us-west4",
///     labels={
///         "label": "key",
///     },
///     annotations={
///         "label-one": "value-one",
///     })
/// default_account = gcp.serviceaccount.Account("default",
///     account_id="my-account",
///     display_name="Service Account")
/// default_workstation_config = gcp.workstations.WorkstationConfig("default",
///     workstation_config_id="workstation-config",
///     workstation_cluster_id=default_workstation_cluster.workstation_cluster_id,
///     location="us-west4",
///     enable_audit_agent=True,
///     host={
///         "gce_instance": {
///             "machine_type": "n2d-standard-2",
///             "boot_disk_size_gb": 35,
///             "pool_size": 1,
///             "service_account": default_account.email,
///             "service_account_scopes": ["https://www.googleapis.com/auth/cloud-platform"],
///             "disable_public_ip_addresses": False,
///             "tags": [
///                 "foo",
///                 "bar",
///             ],
///             "shielded_instance_config": {
///                 "enable_secure_boot": True,
///                 "enable_vtpm": True,
///                 "enable_integrity_monitoring": True,
///             },
///             "confidential_instance_config": {
///                 "enable_confidential_compute": True,
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
///         Region = "us-west4",
///         Network = @default.Name,
///     });
///
///     var defaultWorkstationCluster = new Gcp.Workstations.WorkstationCluster("default", new()
///     {
///         WorkstationClusterId = "workstation-cluster",
///         Network = @default.Id,
///         Subnetwork = defaultSubnetwork.Id,
///         Location = "us-west4",
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
///         Location = "us-west4",
///         EnableAuditAgent = true,
///         Host = new Gcp.Workstations.Inputs.WorkstationConfigHostArgs
///         {
///             GceInstance = new Gcp.Workstations.Inputs.WorkstationConfigHostGceInstanceArgs
///             {
///                 MachineType = "n2d-standard-2",
///                 BootDiskSizeGb = 35,
///                 PoolSize = 1,
///                 ServiceAccount = defaultAccount.Email,
///                 ServiceAccountScopes = new[]
///                 {
///                     "https://www.googleapis.com/auth/cloud-platform",
///                 },
///                 DisablePublicIpAddresses = false,
///                 Tags = new[]
///                 {
///                     "foo",
///                     "bar",
///                 },
///                 ShieldedInstanceConfig = new Gcp.Workstations.Inputs.WorkstationConfigHostGceInstanceShieldedInstanceConfigArgs
///                 {
///                     EnableSecureBoot = true,
///                     EnableVtpm = true,
///                     EnableIntegrityMonitoring = true,
///                 },
///                 ConfidentialInstanceConfig = new Gcp.Workstations.Inputs.WorkstationConfigHostGceInstanceConfidentialInstanceConfigArgs
///                 {
///                     EnableConfidentialCompute = true,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/serviceaccount"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/tags"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/workstations"
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
/// 		_, err = tags.NewTagValue(ctx, "tag_value1", &tags.TagValueArgs{
/// 			Parent:    tagKey1.ID(),
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
/// 			Region:      pulumi.String("us-west4"),
/// 			Network:     _default.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultWorkstationCluster, err := workstations.NewWorkstationCluster(ctx, "default", &workstations.WorkstationClusterArgs{
/// 			WorkstationClusterId: pulumi.String("workstation-cluster"),
/// 			Network:              _default.ID(),
/// 			Subnetwork:           defaultSubnetwork.ID(),
/// 			Location:             pulumi.String("us-west4"),
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
/// 			Location:             pulumi.String("us-west4"),
/// 			EnableAuditAgent:     pulumi.Bool(true),
/// 			Host: &workstations.WorkstationConfigHostArgs{
/// 				GceInstance: &workstations.WorkstationConfigHostGceInstanceArgs{
/// 					MachineType:    pulumi.String("n2d-standard-2"),
/// 					BootDiskSizeGb: pulumi.Int(35),
/// 					PoolSize:       pulumi.Int(1),
/// 					ServiceAccount: defaultAccount.Email,
/// 					ServiceAccountScopes: pulumi.StringArray{
/// 						pulumi.String("https://www.googleapis.com/auth/cloud-platform"),
/// 					},
/// 					DisablePublicIpAddresses: pulumi.Bool(false),
/// 					Tags: pulumi.StringArray{
/// 						pulumi.String("foo"),
/// 						pulumi.String("bar"),
/// 					},
/// 					ShieldedInstanceConfig: &workstations.WorkstationConfigHostGceInstanceShieldedInstanceConfigArgs{
/// 						EnableSecureBoot:          pulumi.Bool(true),
/// 						EnableVtpm:                pulumi.Bool(true),
/// 						EnableIntegrityMonitoring: pulumi.Bool(true),
/// 					},
/// 					ConfidentialInstanceConfig: &workstations.WorkstationConfigHostGceInstanceConfidentialInstanceConfigArgs{
/// 						EnableConfidentialCompute: pulumi.Bool(true),
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
/// resource "gcp_tags_tag_key" "tag_key1" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   parent     = "organizations/123456789"
///   short_name = "keyname"
/// }
/// resource "gcp_tags_tag_value" "tag_value1" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   parent     = gcp_tags_tag_key.tag_key1.id
///   short_name = "valuename"
/// }
/// resource "gcp_compute_network" "default" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   name                    = "workstation-cluster"
///   auto_create_subnetworks = false
/// }
/// resource "gcp_compute_subnetwork" "default" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   name          = "workstation-cluster"
///   ip_cidr_range = "10.0.0.0/24"
///   region        = "us-west4"
///   network       = gcp_compute_network.default.name
/// }
/// resource "gcp_workstations_workstation_cluster" "default" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   workstation_cluster_id = "workstation-cluster"
///   network                = gcp_compute_network.default.id
///   subnetwork             = gcp_compute_subnetwork.default.id
///   location               = "us-west4"
///   labels = {
///     "label" = "key"
///   }
///   annotations = {
///     "label-one" = "value-one"
///   }
/// }
/// resource "gcp_serviceaccount_account" "default" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   account_id   = "my-account"
///   display_name = "Service Account"
/// }
/// resource "gcp_workstations_workstation_config" "default" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   workstation_config_id  = "workstation-config"
///   workstation_cluster_id = gcp_workstations_workstation_cluster.default.workstation_cluster_id
///   location               = "us-west4"
///   enable_audit_agent     = true
///   host = {
///     gce_instance = {
///       machine_type                = "n2d-standard-2"
///       boot_disk_size_gb           = 35
///       pool_size                   = 1
///       service_account             = gcp_serviceaccount_account.default.email
///       service_account_scopes      = ["https://www.googleapis.com/auth/cloud-platform"]
///       disable_public_ip_addresses = false
///       tags                        = ["foo", "bar"]
///       shielded_instance_config = {
///         enable_secure_boot          = true
///         enable_vtpm                 = true
///         enable_integrity_monitoring = true
///       }
///       confidential_instance_config = {
///         enable_confidential_compute = true
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
/// import com.pulumi.gcp.serviceaccount.Account;
/// import com.pulumi.gcp.serviceaccount.AccountArgs;
/// import com.pulumi.gcp.workstations.WorkstationConfig;
/// import com.pulumi.gcp.workstations.WorkstationConfigArgs;
/// import com.pulumi.gcp.workstations.inputs.WorkstationConfigHostArgs;
/// import com.pulumi.gcp.workstations.inputs.WorkstationConfigHostGceInstanceArgs;
/// import com.pulumi.gcp.workstations.inputs.WorkstationConfigHostGceInstanceShieldedInstanceConfigArgs;
/// import com.pulumi.gcp.workstations.inputs.WorkstationConfigHostGceInstanceConfidentialInstanceConfigArgs;
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
///             .region("us-west4")
///             .network(default_.name())
///             .build());
///
///         var defaultWorkstationCluster = new WorkstationCluster("defaultWorkstationCluster", WorkstationClusterArgs.builder()
///             .workstationClusterId("workstation-cluster")
///             .network(default_.id())
///             .subnetwork(defaultSubnetwork.id())
///             .location("us-west4")
///             .labels(Map.of("label", "key"))
///             .annotations(Map.of("label-one", "value-one"))
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
///             .location("us-west4")
///             .enableAuditAgent(true)
///             .host(WorkstationConfigHostArgs.builder()
///                 .gceInstance(WorkstationConfigHostGceInstanceArgs.builder()
///                     .machineType("n2d-standard-2")
///                     .bootDiskSizeGb(35)
///                     .poolSize(1)
///                     .serviceAccount(defaultAccount.email())
///                     .serviceAccountScopes("https://www.googleapis.com/auth/cloud-platform")
///                     .disablePublicIpAddresses(false)
///                     .tags(
///                         "foo",
///                         "bar")
///                     .shieldedInstanceConfig(WorkstationConfigHostGceInstanceShieldedInstanceConfigArgs.builder()
///                         .enableSecureBoot(true)
///                         .enableVtpm(true)
///                         .enableIntegrityMonitoring(true)
///                         .build())
///                     .confidentialInstanceConfig(WorkstationConfigHostGceInstanceConfidentialInstanceConfigArgs.builder()
///                         .enableConfidentialCompute(true)
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
///       region: us-west4
///       network: ${default.name}
///   defaultWorkstationCluster:
///     type: gcp:workstations:WorkstationCluster
///     name: default
///     properties:
///       workstationClusterId: workstation-cluster
///       network: ${default.id}
///       subnetwork: ${defaultSubnetwork.id}
///       location: us-west4
///       labels:
///         label: key
///       annotations:
///         label-one: value-one
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
///       location: us-west4
///       enableAuditAgent: true
///       host:
///         gceInstance:
///           machineType: n2d-standard-2
///           bootDiskSizeGb: 35
///           poolSize: 1
///           serviceAccount: ${defaultAccount.email}
///           serviceAccountScopes:
///             - https://www.googleapis.com/auth/cloud-platform
///           disablePublicIpAddresses: false
///           tags:
///             - foo
///             - bar
///           shieldedInstanceConfig:
///             enableSecureBoot: true
///             enableVtpm: true
///             enableIntegrityMonitoring: true
///           confidentialInstanceConfig:
///             enableConfidentialCompute: true
/// ```
///
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
///     region: "europe-west4",
///     network: _default.name,
/// });
/// const defaultWorkstationCluster = new gcp.workstations.WorkstationCluster("default", {
///     workstationClusterId: "workstation-cluster",
///     network: _default.id,
///     subnetwork: defaultSubnetwork.id,
///     location: "europe-west4",
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
///     location: "europe-west4",
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
///     region="europe-west4",
///     network=default.name)
/// default_workstation_cluster = gcp.workstations.WorkstationCluster("default",
///     workstation_cluster_id="workstation-cluster",
///     network=default.id,
///     subnetwork=default_subnetwork.id,
///     location="europe-west4",
///     labels={
///         "label": "key",
///     },
///     annotations={
///         "label-one": "value-one",
///     })
/// default_workstation_config = gcp.workstations.WorkstationConfig("default",
///     workstation_config_id="workstation-config",
///     workstation_cluster_id=default_workstation_cluster.workstation_cluster_id,
///     location="europe-west4",
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
///         Region = "europe-west4",
///         Network = @default.Name,
///     });
///
///     var defaultWorkstationCluster = new Gcp.Workstations.WorkstationCluster("default", new()
///     {
///         WorkstationClusterId = "workstation-cluster",
///         Network = @default.Id,
///         Subnetwork = defaultSubnetwork.Id,
///         Location = "europe-west4",
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
///         Location = "europe-west4",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/workstations"
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
/// 			Region:      pulumi.String("europe-west4"),
/// 			Network:     _default.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultWorkstationCluster, err := workstations.NewWorkstationCluster(ctx, "default", &workstations.WorkstationClusterArgs{
/// 			WorkstationClusterId: pulumi.String("workstation-cluster"),
/// 			Network:              _default.ID(),
/// 			Subnetwork:           defaultSubnetwork.ID(),
/// 			Location:             pulumi.String("europe-west4"),
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
/// 			Location:             pulumi.String("europe-west4"),
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
/// terraform {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_compute_network" "default" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   name                    = "workstation-cluster"
///   auto_create_subnetworks = false
/// }
/// resource "gcp_compute_subnetwork" "default" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   name          = "workstation-cluster"
///   ip_cidr_range = "10.0.0.0/24"
///   region        = "europe-west4"
///   network       = gcp_compute_network.default.name
/// }
/// resource "gcp_workstations_workstation_cluster" "default" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   workstation_cluster_id = "workstation-cluster"
///   network                = gcp_compute_network.default.id
///   subnetwork             = gcp_compute_subnetwork.default.id
///   location               = "europe-west4"
///   labels = {
///     "label" = "key"
///   }
///   annotations = {
///     "label-one" = "value-one"
///   }
/// }
/// resource "gcp_workstations_workstation_config" "default" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   workstation_config_id  = "workstation-config"
///   workstation_cluster_id = gcp_workstations_workstation_cluster.default.workstation_cluster_id
///   location               = "europe-west4"
///   host = {
///     gce_instance = {
///       machine_type                = "e2-standard-4"
///       boot_disk_size_gb           = 35
///       disable_public_ip_addresses = true
///       boost_configs = [{
///         id           = "boost-1"
///         machine_type = "n1-standard-2"
///         accelerators = [{
///           type  = "nvidia-tesla-t4"
///           count = "1"
///         }]
///         }, {
///         id                           = "boost-2"
///         machine_type                 = "n1-standard-2"
///         pool_size                    = 2
///         boot_disk_size_gb            = 30
///         enable_nested_virtualization = true
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
///             .region("europe-west4")
///             .network(default_.name())
///             .build());
///
///         var defaultWorkstationCluster = new WorkstationCluster("defaultWorkstationCluster", WorkstationClusterArgs.builder()
///             .workstationClusterId("workstation-cluster")
///             .network(default_.id())
///             .subnetwork(defaultSubnetwork.id())
///             .location("europe-west4")
///             .labels(Map.of("label", "key"))
///             .annotations(Map.of("label-one", "value-one"))
///             .build());
///
///         var defaultWorkstationConfig = new WorkstationConfig("defaultWorkstationConfig", WorkstationConfigArgs.builder()
///             .workstationConfigId("workstation-config")
///             .workstationClusterId(defaultWorkstationCluster.workstationClusterId())
///             .location("europe-west4")
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
///       region: europe-west4
///       network: ${default.name}
///   defaultWorkstationCluster:
///     type: gcp:workstations:WorkstationCluster
///     name: default
///     properties:
///       workstationClusterId: workstation-cluster
///       network: ${default.id}
///       subnetwork: ${defaultSubnetwork.id}
///       location: europe-west4
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
///       location: europe-west4
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
///     region: "europe-west4",
///     network: _default.name,
/// });
/// const defaultWorkstationCluster = new gcp.workstations.WorkstationCluster("default", {
///     workstationClusterId: "workstation-cluster",
///     network: _default.id,
///     subnetwork: defaultSubnetwork.id,
///     location: "europe-west4",
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
///     location: "europe-west4",
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
///     region="europe-west4",
///     network=default.name)
/// default_workstation_cluster = gcp.workstations.WorkstationCluster("default",
///     workstation_cluster_id="workstation-cluster",
///     network=default.id,
///     subnetwork=default_subnetwork.id,
///     location="europe-west4",
///     labels={
///         "label": "key",
///     },
///     annotations={
///         "label-one": "value-one",
///     })
/// default_workstation_config = gcp.workstations.WorkstationConfig("default",
///     workstation_config_id="workstation-config",
///     workstation_cluster_id=default_workstation_cluster.workstation_cluster_id,
///     location="europe-west4",
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
///         Region = "europe-west4",
///         Network = @default.Name,
///     });
///
///     var defaultWorkstationCluster = new Gcp.Workstations.WorkstationCluster("default", new()
///     {
///         WorkstationClusterId = "workstation-cluster",
///         Network = @default.Id,
///         Subnetwork = defaultSubnetwork.Id,
///         Location = "europe-west4",
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
///         Location = "europe-west4",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/workstations"
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
/// 			Region:      pulumi.String("europe-west4"),
/// 			Network:     _default.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultWorkstationCluster, err := workstations.NewWorkstationCluster(ctx, "default", &workstations.WorkstationClusterArgs{
/// 			WorkstationClusterId: pulumi.String("workstation-cluster"),
/// 			Network:              _default.ID(),
/// 			Subnetwork:           defaultSubnetwork.ID(),
/// 			Location:             pulumi.String("europe-west4"),
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
/// 			Location:             pulumi.String("europe-west4"),
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
/// terraform {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_compute_network" "default" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   name                    = "workstation-cluster"
///   auto_create_subnetworks = false
/// }
/// resource "gcp_compute_subnetwork" "default" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   name          = "workstation-cluster"
///   ip_cidr_range = "10.0.0.0/24"
///   region        = "europe-west4"
///   network       = gcp_compute_network.default.name
/// }
/// resource "gcp_workstations_workstation_cluster" "default" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   workstation_cluster_id = "workstation-cluster"
///   network                = gcp_compute_network.default.id
///   subnetwork             = gcp_compute_subnetwork.default.id
///   location               = "europe-west4"
///   labels = {
///     "label" = "key"
///   }
///   annotations = {
///     "label-one" = "value-one"
///   }
/// }
/// resource "gcp_workstations_workstation_config" "default" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   workstation_config_id  = "workstation-config"
///   workstation_cluster_id = gcp_workstations_workstation_cluster.default.workstation_cluster_id
///   location               = "europe-west4"
///   host = {
///     gce_instance = {
///       machine_type                = "n1-standard-2"
///       boot_disk_size_gb           = 35
///       disable_public_ip_addresses = true
///       accelerators = [{
///         type  = "nvidia-tesla-t4"
///         count = "1"
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
///             .region("europe-west4")
///             .network(default_.name())
///             .build());
///
///         var defaultWorkstationCluster = new WorkstationCluster("defaultWorkstationCluster", WorkstationClusterArgs.builder()
///             .workstationClusterId("workstation-cluster")
///             .network(default_.id())
///             .subnetwork(defaultSubnetwork.id())
///             .location("europe-west4")
///             .labels(Map.of("label", "key"))
///             .annotations(Map.of("label-one", "value-one"))
///             .build());
///
///         var defaultWorkstationConfig = new WorkstationConfig("defaultWorkstationConfig", WorkstationConfigArgs.builder()
///             .workstationConfigId("workstation-config")
///             .workstationClusterId(defaultWorkstationCluster.workstationClusterId())
///             .location("europe-west4")
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
///       region: europe-west4
///       network: ${default.name}
///   defaultWorkstationCluster:
///     type: gcp:workstations:WorkstationCluster
///     name: default
///     properties:
///       workstationClusterId: workstation-cluster
///       network: ${default.id}
///       subnetwork: ${defaultSubnetwork.id}
///       location: europe-west4
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
///       location: europe-west4
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
///     region: "us-west4",
///     network: _default.name,
/// });
/// const mySourceDisk = new gcp.compute.Disk("my_source_disk", {
///     name: "workstation-config",
///     size: 10,
///     type: "pd-ssd",
///     zone: "us-west4-a",
/// });
/// const mySourceSnapshot = new gcp.compute.Snapshot("my_source_snapshot", {
///     name: "workstation-config",
///     sourceDisk: mySourceDisk.name,
///     zone: "us-west4-a",
/// });
/// const mySourceImage = new gcp.compute.Image("my_source_image", {
///     name: "workstation-config",
///     sourceDisk: mySourceDisk.selfLink,
///     storageLocations: ["us-west4"],
/// });
/// const defaultWorkstationCluster = new gcp.workstations.WorkstationCluster("default", {
///     workstationClusterId: "workstation-cluster",
///     network: _default.id,
///     subnetwork: defaultSubnetwork.id,
///     location: "us-west4",
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
///     location: "us-west4",
///     persistentDirectories: [{
///         mountPath: "/home",
///         gcePd: {
///             sourceSnapshot: mySourceSnapshot.id,
///             reclaimPolicy: "DELETE",
///         },
///     }],
/// });
/// const persistent = new gcp.workstations.WorkstationConfig("persistent", {
///     workstationConfigId: "workstation-config-pd",
///     workstationClusterId: defaultWorkstationCluster.workstationClusterId,
///     location: "us-west4",
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
/// const ephemeralSnapshot = new gcp.workstations.WorkstationConfig("ephemeral_snapshot", {
///     workstationConfigId: "workstation-config-eph-snap",
///     workstationClusterId: defaultWorkstationCluster.workstationClusterId,
///     location: "us-west4",
///     ephemeralDirectories: [{
///         mountPath: "/cache",
///         gcePd: {
///             sourceSnapshot: mySourceSnapshot.id,
///             readOnly: true,
///         },
///     }],
/// });
/// const ephemeralImage = new gcp.workstations.WorkstationConfig("ephemeral_image", {
///     workstationConfigId: "workstation-config-eph-img",
///     workstationClusterId: defaultWorkstationCluster.workstationClusterId,
///     location: "us-west4",
///     ephemeralDirectories: [{
///         mountPath: "/cache",
///         gcePd: {
///             diskType: "pd-standard",
///             sourceImage: mySourceImage.id,
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
///     region="us-west4",
///     network=default.name)
/// my_source_disk = gcp.compute.Disk("my_source_disk",
///     name="workstation-config",
///     size=10,
///     type="pd-ssd",
///     zone="us-west4-a")
/// my_source_snapshot = gcp.compute.Snapshot("my_source_snapshot",
///     name="workstation-config",
///     source_disk=my_source_disk.name,
///     zone="us-west4-a")
/// my_source_image = gcp.compute.Image("my_source_image",
///     name="workstation-config",
///     source_disk=my_source_disk.self_link,
///     storage_locations=["us-west4"])
/// default_workstation_cluster = gcp.workstations.WorkstationCluster("default",
///     workstation_cluster_id="workstation-cluster",
///     network=default.id,
///     subnetwork=default_subnetwork.id,
///     location="us-west4",
///     labels={
///         "label": "key",
///     },
///     annotations={
///         "label-one": "value-one",
///     })
/// default_workstation_config = gcp.workstations.WorkstationConfig("default",
///     workstation_config_id="workstation-config",
///     workstation_cluster_id=default_workstation_cluster.workstation_cluster_id,
///     location="us-west4",
///     persistent_directories=[{
///         "mount_path": "/home",
///         "gce_pd": {
///             "source_snapshot": my_source_snapshot.id,
///             "reclaim_policy": "DELETE",
///         },
///     }])
/// persistent = gcp.workstations.WorkstationConfig("persistent",
///     workstation_config_id="workstation-config-pd",
///     workstation_cluster_id=default_workstation_cluster.workstation_cluster_id,
///     location="us-west4",
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
/// ephemeral_snapshot = gcp.workstations.WorkstationConfig("ephemeral_snapshot",
///     workstation_config_id="workstation-config-eph-snap",
///     workstation_cluster_id=default_workstation_cluster.workstation_cluster_id,
///     location="us-west4",
///     ephemeral_directories=[{
///         "mount_path": "/cache",
///         "gce_pd": {
///             "source_snapshot": my_source_snapshot.id,
///             "read_only": True,
///         },
///     }])
/// ephemeral_image = gcp.workstations.WorkstationConfig("ephemeral_image",
///     workstation_config_id="workstation-config-eph-img",
///     workstation_cluster_id=default_workstation_cluster.workstation_cluster_id,
///     location="us-west4",
///     ephemeral_directories=[{
///         "mount_path": "/cache",
///         "gce_pd": {
///             "disk_type": "pd-standard",
///             "source_image": my_source_image.id,
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
///         Region = "us-west4",
///         Network = @default.Name,
///     });
///
///     var mySourceDisk = new Gcp.Compute.Disk("my_source_disk", new()
///     {
///         Name = "workstation-config",
///         Size = 10,
///         Type = "pd-ssd",
///         Zone = "us-west4-a",
///     });
///
///     var mySourceSnapshot = new Gcp.Compute.Snapshot("my_source_snapshot", new()
///     {
///         Name = "workstation-config",
///         SourceDisk = mySourceDisk.Name,
///         Zone = "us-west4-a",
///     });
///
///     var mySourceImage = new Gcp.Compute.Image("my_source_image", new()
///     {
///         Name = "workstation-config",
///         SourceDisk = mySourceDisk.SelfLink,
///         StorageLocations = new[]
///         {
///             "us-west4",
///         },
///     });
///
///     var defaultWorkstationCluster = new Gcp.Workstations.WorkstationCluster("default", new()
///     {
///         WorkstationClusterId = "workstation-cluster",
///         Network = @default.Id,
///         Subnetwork = defaultSubnetwork.Id,
///         Location = "us-west4",
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
///         Location = "us-west4",
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
///     var persistent = new Gcp.Workstations.WorkstationConfig("persistent", new()
///     {
///         WorkstationConfigId = "workstation-config-pd",
///         WorkstationClusterId = defaultWorkstationCluster.WorkstationClusterId,
///         Location = "us-west4",
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
///     var ephemeralSnapshot = new Gcp.Workstations.WorkstationConfig("ephemeral_snapshot", new()
///     {
///         WorkstationConfigId = "workstation-config-eph-snap",
///         WorkstationClusterId = defaultWorkstationCluster.WorkstationClusterId,
///         Location = "us-west4",
///         EphemeralDirectories = new[]
///         {
///             new Gcp.Workstations.Inputs.WorkstationConfigEphemeralDirectoryArgs
///             {
///                 MountPath = "/cache",
///                 GcePd = new Gcp.Workstations.Inputs.WorkstationConfigEphemeralDirectoryGcePdArgs
///                 {
///                     SourceSnapshot = mySourceSnapshot.Id,
///                     ReadOnly = true,
///                 },
///             },
///         },
///     });
///
///     var ephemeralImage = new Gcp.Workstations.WorkstationConfig("ephemeral_image", new()
///     {
///         WorkstationConfigId = "workstation-config-eph-img",
///         WorkstationClusterId = defaultWorkstationCluster.WorkstationClusterId,
///         Location = "us-west4",
///         EphemeralDirectories = new[]
///         {
///             new Gcp.Workstations.Inputs.WorkstationConfigEphemeralDirectoryArgs
///             {
///                 MountPath = "/cache",
///                 GcePd = new Gcp.Workstations.Inputs.WorkstationConfigEphemeralDirectoryGcePdArgs
///                 {
///                     DiskType = "pd-standard",
///                     SourceImage = mySourceImage.Id,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/workstations"
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
/// 			Region:      pulumi.String("us-west4"),
/// 			Network:     _default.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		mySourceDisk, err := compute.NewDisk(ctx, "my_source_disk", &compute.DiskArgs{
/// 			Name: pulumi.String("workstation-config"),
/// 			Size: pulumi.Int(10),
/// 			Type: pulumi.String("pd-ssd"),
/// 			Zone: pulumi.String("us-west4-a"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		mySourceSnapshot, err := compute.NewSnapshot(ctx, "my_source_snapshot", &compute.SnapshotArgs{
/// 			Name:       pulumi.String("workstation-config"),
/// 			SourceDisk: mySourceDisk.Name,
/// 			Zone:       pulumi.String("us-west4-a"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		mySourceImage, err := compute.NewImage(ctx, "my_source_image", &compute.ImageArgs{
/// 			Name:       pulumi.String("workstation-config"),
/// 			SourceDisk: mySourceDisk.SelfLink,
/// 			StorageLocations: pulumi.StringArray{
/// 				pulumi.String("us-west4"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultWorkstationCluster, err := workstations.NewWorkstationCluster(ctx, "default", &workstations.WorkstationClusterArgs{
/// 			WorkstationClusterId: pulumi.String("workstation-cluster"),
/// 			Network:              _default.ID(),
/// 			Subnetwork:           defaultSubnetwork.ID(),
/// 			Location:             pulumi.String("us-west4"),
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
/// 			Location:             pulumi.String("us-west4"),
/// 			PersistentDirectories: workstations.WorkstationConfigPersistentDirectoryArray{
/// 				&workstations.WorkstationConfigPersistentDirectoryArgs{
/// 					MountPath: pulumi.String("/home"),
/// 					GcePd: &workstations.WorkstationConfigPersistentDirectoryGcePdArgs{
/// 						SourceSnapshot: mySourceSnapshot.ID(),
/// 						ReclaimPolicy:  pulumi.String("DELETE"),
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = workstations.NewWorkstationConfig(ctx, "persistent", &workstations.WorkstationConfigArgs{
/// 			WorkstationConfigId:  pulumi.String("workstation-config-pd"),
/// 			WorkstationClusterId: defaultWorkstationCluster.WorkstationClusterId,
/// 			Location:             pulumi.String("us-west4"),
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
/// 		_, err = workstations.NewWorkstationConfig(ctx, "ephemeral_snapshot", &workstations.WorkstationConfigArgs{
/// 			WorkstationConfigId:  pulumi.String("workstation-config-eph-snap"),
/// 			WorkstationClusterId: defaultWorkstationCluster.WorkstationClusterId,
/// 			Location:             pulumi.String("us-west4"),
/// 			EphemeralDirectories: workstations.WorkstationConfigEphemeralDirectoryArray{
/// 				&workstations.WorkstationConfigEphemeralDirectoryArgs{
/// 					MountPath: pulumi.String("/cache"),
/// 					GcePd: &workstations.WorkstationConfigEphemeralDirectoryGcePdArgs{
/// 						SourceSnapshot: mySourceSnapshot.ID(),
/// 						ReadOnly:       pulumi.Bool(true),
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = workstations.NewWorkstationConfig(ctx, "ephemeral_image", &workstations.WorkstationConfigArgs{
/// 			WorkstationConfigId:  pulumi.String("workstation-config-eph-img"),
/// 			WorkstationClusterId: defaultWorkstationCluster.WorkstationClusterId,
/// 			Location:             pulumi.String("us-west4"),
/// 			EphemeralDirectories: workstations.WorkstationConfigEphemeralDirectoryArray{
/// 				&workstations.WorkstationConfigEphemeralDirectoryArgs{
/// 					MountPath: pulumi.String("/cache"),
/// 					GcePd: &workstations.WorkstationConfigEphemeralDirectoryGcePdArgs{
/// 						DiskType:    pulumi.String("pd-standard"),
/// 						SourceImage: mySourceImage.ID(),
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
/// resource "gcp_compute_network" "default" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   name                    = "workstation-cluster"
///   auto_create_subnetworks = false
/// }
/// resource "gcp_compute_subnetwork" "default" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   name          = "workstation-cluster"
///   ip_cidr_range = "10.0.0.0/24"
///   region        = "us-west4"
///   network       = gcp_compute_network.default.name
/// }
/// resource "gcp_compute_disk" "my_source_disk" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   name = "workstation-config"
///   size = 10
///   type = "pd-ssd"
///   zone = "us-west4-a"
/// }
/// resource "gcp_compute_snapshot" "my_source_snapshot" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   name        = "workstation-config"
///   source_disk = gcp_compute_disk.my_source_disk.name
///   zone        = "us-west4-a"
/// }
/// resource "gcp_compute_image" "my_source_image" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   name              = "workstation-config"
///   source_disk       = gcp_compute_disk.my_source_disk.self_link
///   storage_locations = ["us-west4"]
/// }
/// resource "gcp_workstations_workstation_cluster" "default" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   workstation_cluster_id = "workstation-cluster"
///   network                = gcp_compute_network.default.id
///   subnetwork             = gcp_compute_subnetwork.default.id
///   location               = "us-west4"
///   labels = {
///     "label" = "key"
///   }
///   annotations = {
///     "label-one" = "value-one"
///   }
/// }
/// resource "gcp_workstations_workstation_config" "default" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   workstation_config_id  = "workstation-config"
///   workstation_cluster_id = gcp_workstations_workstation_cluster.default.workstation_cluster_id
///   location               = "us-west4"
///   persistent_directories {
///     mount_path = "/home"
///     gce_pd = {
///       source_snapshot = gcp_compute_snapshot.my_source_snapshot.id
///       reclaim_policy  = "DELETE"
///     }
///   }
/// }
/// resource "gcp_workstations_workstation_config" "persistent" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   workstation_config_id  = "workstation-config-pd"
///   workstation_cluster_id = gcp_workstations_workstation_cluster.default.workstation_cluster_id
///   location               = "us-west4"
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
/// resource "gcp_workstations_workstation_config" "ephemeral_snapshot" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   workstation_config_id  = "workstation-config-eph-snap"
///   workstation_cluster_id = gcp_workstations_workstation_cluster.default.workstation_cluster_id
///   location               = "us-west4"
///   ephemeral_directories {
///     mount_path = "/cache"
///     gce_pd = {
///       source_snapshot = gcp_compute_snapshot.my_source_snapshot.id
///       read_only       = true
///     }
///   }
/// }
/// resource "gcp_workstations_workstation_config" "ephemeral_image" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   workstation_config_id  = "workstation-config-eph-img"
///   workstation_cluster_id = gcp_workstations_workstation_cluster.default.workstation_cluster_id
///   location               = "us-west4"
///   ephemeral_directories {
///     mount_path = "/cache"
///     gce_pd = {
///       disk_type    = "pd-standard"
///       source_image = gcp_compute_image.my_source_image.id
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
/// import com.pulumi.gcp.compute.Image;
/// import com.pulumi.gcp.compute.ImageArgs;
/// import com.pulumi.gcp.workstations.WorkstationCluster;
/// import com.pulumi.gcp.workstations.WorkstationClusterArgs;
/// import com.pulumi.gcp.workstations.WorkstationConfig;
/// import com.pulumi.gcp.workstations.WorkstationConfigArgs;
/// import com.pulumi.gcp.workstations.inputs.WorkstationConfigPersistentDirectoryArgs;
/// import com.pulumi.gcp.workstations.inputs.WorkstationConfigPersistentDirectoryGcePdArgs;
/// import com.pulumi.gcp.workstations.inputs.WorkstationConfigHostArgs;
/// import com.pulumi.gcp.workstations.inputs.WorkstationConfigHostGceInstanceArgs;
/// import com.pulumi.gcp.workstations.inputs.WorkstationConfigHostGceInstanceShieldedInstanceConfigArgs;
/// import com.pulumi.gcp.workstations.inputs.WorkstationConfigEphemeralDirectoryArgs;
/// import com.pulumi.gcp.workstations.inputs.WorkstationConfigEphemeralDirectoryGcePdArgs;
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
///             .region("us-west4")
///             .network(default_.name())
///             .build());
///
///         var mySourceDisk = new Disk("mySourceDisk", DiskArgs.builder()
///             .name("workstation-config")
///             .size(10)
///             .type("pd-ssd")
///             .zone("us-west4-a")
///             .build());
///
///         var mySourceSnapshot = new Snapshot("mySourceSnapshot", SnapshotArgs.builder()
///             .name("workstation-config")
///             .sourceDisk(mySourceDisk.name())
///             .zone("us-west4-a")
///             .build());
///
///         var mySourceImage = new Image("mySourceImage", ImageArgs.builder()
///             .name("workstation-config")
///             .sourceDisk(mySourceDisk.selfLink())
///             .storageLocations("us-west4")
///             .build());
///
///         var defaultWorkstationCluster = new WorkstationCluster("defaultWorkstationCluster", WorkstationClusterArgs.builder()
///             .workstationClusterId("workstation-cluster")
///             .network(default_.id())
///             .subnetwork(defaultSubnetwork.id())
///             .location("us-west4")
///             .labels(Map.of("label", "key"))
///             .annotations(Map.of("label-one", "value-one"))
///             .build());
///
///         var defaultWorkstationConfig = new WorkstationConfig("defaultWorkstationConfig", WorkstationConfigArgs.builder()
///             .workstationConfigId("workstation-config")
///             .workstationClusterId(defaultWorkstationCluster.workstationClusterId())
///             .location("us-west4")
///             .persistentDirectories(WorkstationConfigPersistentDirectoryArgs.builder()
///                 .mountPath("/home")
///                 .gcePd(WorkstationConfigPersistentDirectoryGcePdArgs.builder()
///                     .sourceSnapshot(mySourceSnapshot.id())
///                     .reclaimPolicy("DELETE")
///                     .build())
///                 .build())
///             .build());
///
///         var persistent = new WorkstationConfig("persistent", WorkstationConfigArgs.builder()
///             .workstationConfigId("workstation-config-pd")
///             .workstationClusterId(defaultWorkstationCluster.workstationClusterId())
///             .location("us-west4")
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
///         var ephemeralSnapshot = new WorkstationConfig("ephemeralSnapshot", WorkstationConfigArgs.builder()
///             .workstationConfigId("workstation-config-eph-snap")
///             .workstationClusterId(defaultWorkstationCluster.workstationClusterId())
///             .location("us-west4")
///             .ephemeralDirectories(WorkstationConfigEphemeralDirectoryArgs.builder()
///                 .mountPath("/cache")
///                 .gcePd(WorkstationConfigEphemeralDirectoryGcePdArgs.builder()
///                     .sourceSnapshot(mySourceSnapshot.id())
///                     .readOnly(true)
///                     .build())
///                 .build())
///             .build());
///
///         var ephemeralImage = new WorkstationConfig("ephemeralImage", WorkstationConfigArgs.builder()
///             .workstationConfigId("workstation-config-eph-img")
///             .workstationClusterId(defaultWorkstationCluster.workstationClusterId())
///             .location("us-west4")
///             .ephemeralDirectories(WorkstationConfigEphemeralDirectoryArgs.builder()
///                 .mountPath("/cache")
///                 .gcePd(WorkstationConfigEphemeralDirectoryGcePdArgs.builder()
///                     .diskType("pd-standard")
///                     .sourceImage(mySourceImage.id())
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
///       region: us-west4
///       network: ${default.name}
///   mySourceDisk:
///     type: gcp:compute:Disk
///     name: my_source_disk
///     properties:
///       name: workstation-config
///       size: 10
///       type: pd-ssd
///       zone: us-west4-a
///   mySourceSnapshot:
///     type: gcp:compute:Snapshot
///     name: my_source_snapshot
///     properties:
///       name: workstation-config
///       sourceDisk: ${mySourceDisk.name}
///       zone: us-west4-a
///   mySourceImage:
///     type: gcp:compute:Image
///     name: my_source_image
///     properties:
///       name: workstation-config
///       sourceDisk: ${mySourceDisk.selfLink}
///       storageLocations:
///         - us-west4
///   defaultWorkstationCluster:
///     type: gcp:workstations:WorkstationCluster
///     name: default
///     properties:
///       workstationClusterId: workstation-cluster
///       network: ${default.id}
///       subnetwork: ${defaultSubnetwork.id}
///       location: us-west4
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
///       location: us-west4
///       persistentDirectories:
///         - mountPath: /home
///           gcePd:
///             sourceSnapshot: ${mySourceSnapshot.id}
///             reclaimPolicy: DELETE
///   persistent:
///     type: gcp:workstations:WorkstationConfig
///     properties:
///       workstationConfigId: workstation-config-pd
///       workstationClusterId: ${defaultWorkstationCluster.workstationClusterId}
///       location: us-west4
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
///   ephemeralSnapshot:
///     type: gcp:workstations:WorkstationConfig
///     name: ephemeral_snapshot
///     properties:
///       workstationConfigId: workstation-config-eph-snap
///       workstationClusterId: ${defaultWorkstationCluster.workstationClusterId}
///       location: us-west4
///       ephemeralDirectories:
///         - mountPath: /cache
///           gcePd:
///             sourceSnapshot: ${mySourceSnapshot.id}
///             readOnly: true
///   ephemeralImage:
///     type: gcp:workstations:WorkstationConfig
///     name: ephemeral_image
///     properties:
///       workstationConfigId: workstation-config-eph-img
///       workstationClusterId: ${defaultWorkstationCluster.workstationClusterId}
///       location: us-west4
///       ephemeralDirectories:
///         - mountPath: /cache
///           gcePd:
///             diskType: pd-standard
///             sourceImage: ${mySourceImage.id}
/// ```
///
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
///     region: "us-west4",
///     network: _default.name,
/// });
/// const mySourceDisk = new gcp.compute.Disk("my_source_disk", {
///     name: "workstation-config",
///     size: 10,
///     type: "pd-ssd",
///     zone: "us-west4-a",
/// });
/// const mySourceSnapshot = new gcp.compute.Snapshot("my_source_snapshot", {
///     name: "workstation-config",
///     sourceDisk: mySourceDisk.name,
///     zone: "us-west4-a",
/// });
/// const mySourceSnapshot2 = new gcp.compute.Snapshot("my_source_snapshot2", {
///     name: "workstation-config-2",
///     sourceDisk: mySourceDisk.name,
///     zone: "us-west4-a",
/// });
/// const mySourceImage = new gcp.compute.Image("my_source_image", {
///     name: "workstation-config",
///     sourceDisk: mySourceDisk.selfLink,
///     storageLocations: ["us-west4"],
/// });
/// const defaultWorkstationCluster = new gcp.workstations.WorkstationCluster("default", {
///     workstationClusterId: "workstation-cluster",
///     network: _default.id,
///     subnetwork: defaultSubnetwork.id,
///     location: "us-west4",
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
///     location: "us-west4",
///     persistentDirectories: [{
///         mountPath: "/home",
///         gcePd: {
///             sourceSnapshot: mySourceSnapshot2.id,
///             reclaimPolicy: "RETAIN",
///         },
///     }],
/// });
/// const persistent = new gcp.workstations.WorkstationConfig("persistent", {
///     workstationConfigId: "workstation-config-pd",
///     workstationClusterId: defaultWorkstationCluster.workstationClusterId,
///     location: "us-west4",
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
/// const ephemeralSnapshot = new gcp.workstations.WorkstationConfig("ephemeral_snapshot", {
///     workstationConfigId: "workstation-config-eph-snap",
///     workstationClusterId: defaultWorkstationCluster.workstationClusterId,
///     location: "us-west4",
///     ephemeralDirectories: [{
///         mountPath: "/cache",
///         gcePd: {
///             sourceSnapshot: mySourceSnapshot.id,
///             readOnly: true,
///         },
///     }],
/// });
/// const ephemeralImage = new gcp.workstations.WorkstationConfig("ephemeral_image", {
///     workstationConfigId: "workstation-config-eph-img",
///     workstationClusterId: defaultWorkstationCluster.workstationClusterId,
///     location: "us-west4",
///     ephemeralDirectories: [{
///         mountPath: "/cache",
///         gcePd: {
///             diskType: "pd-standard",
///             sourceImage: mySourceImage.id,
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
///     region="us-west4",
///     network=default.name)
/// my_source_disk = gcp.compute.Disk("my_source_disk",
///     name="workstation-config",
///     size=10,
///     type="pd-ssd",
///     zone="us-west4-a")
/// my_source_snapshot = gcp.compute.Snapshot("my_source_snapshot",
///     name="workstation-config",
///     source_disk=my_source_disk.name,
///     zone="us-west4-a")
/// my_source_snapshot2 = gcp.compute.Snapshot("my_source_snapshot2",
///     name="workstation-config-2",
///     source_disk=my_source_disk.name,
///     zone="us-west4-a")
/// my_source_image = gcp.compute.Image("my_source_image",
///     name="workstation-config",
///     source_disk=my_source_disk.self_link,
///     storage_locations=["us-west4"])
/// default_workstation_cluster = gcp.workstations.WorkstationCluster("default",
///     workstation_cluster_id="workstation-cluster",
///     network=default.id,
///     subnetwork=default_subnetwork.id,
///     location="us-west4",
///     labels={
///         "label": "key",
///     },
///     annotations={
///         "label-one": "value-one",
///     })
/// default_workstation_config = gcp.workstations.WorkstationConfig("default",
///     workstation_config_id="workstation-config",
///     workstation_cluster_id=default_workstation_cluster.workstation_cluster_id,
///     location="us-west4",
///     persistent_directories=[{
///         "mount_path": "/home",
///         "gce_pd": {
///             "source_snapshot": my_source_snapshot2.id,
///             "reclaim_policy": "RETAIN",
///         },
///     }])
/// persistent = gcp.workstations.WorkstationConfig("persistent",
///     workstation_config_id="workstation-config-pd",
///     workstation_cluster_id=default_workstation_cluster.workstation_cluster_id,
///     location="us-west4",
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
/// ephemeral_snapshot = gcp.workstations.WorkstationConfig("ephemeral_snapshot",
///     workstation_config_id="workstation-config-eph-snap",
///     workstation_cluster_id=default_workstation_cluster.workstation_cluster_id,
///     location="us-west4",
///     ephemeral_directories=[{
///         "mount_path": "/cache",
///         "gce_pd": {
///             "source_snapshot": my_source_snapshot.id,
///             "read_only": True,
///         },
///     }])
/// ephemeral_image = gcp.workstations.WorkstationConfig("ephemeral_image",
///     workstation_config_id="workstation-config-eph-img",
///     workstation_cluster_id=default_workstation_cluster.workstation_cluster_id,
///     location="us-west4",
///     ephemeral_directories=[{
///         "mount_path": "/cache",
///         "gce_pd": {
///             "disk_type": "pd-standard",
///             "source_image": my_source_image.id,
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
///         Region = "us-west4",
///         Network = @default.Name,
///     });
///
///     var mySourceDisk = new Gcp.Compute.Disk("my_source_disk", new()
///     {
///         Name = "workstation-config",
///         Size = 10,
///         Type = "pd-ssd",
///         Zone = "us-west4-a",
///     });
///
///     var mySourceSnapshot = new Gcp.Compute.Snapshot("my_source_snapshot", new()
///     {
///         Name = "workstation-config",
///         SourceDisk = mySourceDisk.Name,
///         Zone = "us-west4-a",
///     });
///
///     var mySourceSnapshot2 = new Gcp.Compute.Snapshot("my_source_snapshot2", new()
///     {
///         Name = "workstation-config-2",
///         SourceDisk = mySourceDisk.Name,
///         Zone = "us-west4-a",
///     });
///
///     var mySourceImage = new Gcp.Compute.Image("my_source_image", new()
///     {
///         Name = "workstation-config",
///         SourceDisk = mySourceDisk.SelfLink,
///         StorageLocations = new[]
///         {
///             "us-west4",
///         },
///     });
///
///     var defaultWorkstationCluster = new Gcp.Workstations.WorkstationCluster("default", new()
///     {
///         WorkstationClusterId = "workstation-cluster",
///         Network = @default.Id,
///         Subnetwork = defaultSubnetwork.Id,
///         Location = "us-west4",
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
///         Location = "us-west4",
///         PersistentDirectories = new[]
///         {
///             new Gcp.Workstations.Inputs.WorkstationConfigPersistentDirectoryArgs
///             {
///                 MountPath = "/home",
///                 GcePd = new Gcp.Workstations.Inputs.WorkstationConfigPersistentDirectoryGcePdArgs
///                 {
///                     SourceSnapshot = mySourceSnapshot2.Id,
///                     ReclaimPolicy = "RETAIN",
///                 },
///             },
///         },
///     });
///
///     var persistent = new Gcp.Workstations.WorkstationConfig("persistent", new()
///     {
///         WorkstationConfigId = "workstation-config-pd",
///         WorkstationClusterId = defaultWorkstationCluster.WorkstationClusterId,
///         Location = "us-west4",
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
///     var ephemeralSnapshot = new Gcp.Workstations.WorkstationConfig("ephemeral_snapshot", new()
///     {
///         WorkstationConfigId = "workstation-config-eph-snap",
///         WorkstationClusterId = defaultWorkstationCluster.WorkstationClusterId,
///         Location = "us-west4",
///         EphemeralDirectories = new[]
///         {
///             new Gcp.Workstations.Inputs.WorkstationConfigEphemeralDirectoryArgs
///             {
///                 MountPath = "/cache",
///                 GcePd = new Gcp.Workstations.Inputs.WorkstationConfigEphemeralDirectoryGcePdArgs
///                 {
///                     SourceSnapshot = mySourceSnapshot.Id,
///                     ReadOnly = true,
///                 },
///             },
///         },
///     });
///
///     var ephemeralImage = new Gcp.Workstations.WorkstationConfig("ephemeral_image", new()
///     {
///         WorkstationConfigId = "workstation-config-eph-img",
///         WorkstationClusterId = defaultWorkstationCluster.WorkstationClusterId,
///         Location = "us-west4",
///         EphemeralDirectories = new[]
///         {
///             new Gcp.Workstations.Inputs.WorkstationConfigEphemeralDirectoryArgs
///             {
///                 MountPath = "/cache",
///                 GcePd = new Gcp.Workstations.Inputs.WorkstationConfigEphemeralDirectoryGcePdArgs
///                 {
///                     DiskType = "pd-standard",
///                     SourceImage = mySourceImage.Id,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/workstations"
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
/// 			Region:      pulumi.String("us-west4"),
/// 			Network:     _default.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		mySourceDisk, err := compute.NewDisk(ctx, "my_source_disk", &compute.DiskArgs{
/// 			Name: pulumi.String("workstation-config"),
/// 			Size: pulumi.Int(10),
/// 			Type: pulumi.String("pd-ssd"),
/// 			Zone: pulumi.String("us-west4-a"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		mySourceSnapshot, err := compute.NewSnapshot(ctx, "my_source_snapshot", &compute.SnapshotArgs{
/// 			Name:       pulumi.String("workstation-config"),
/// 			SourceDisk: mySourceDisk.Name,
/// 			Zone:       pulumi.String("us-west4-a"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		mySourceSnapshot2, err := compute.NewSnapshot(ctx, "my_source_snapshot2", &compute.SnapshotArgs{
/// 			Name:       pulumi.String("workstation-config-2"),
/// 			SourceDisk: mySourceDisk.Name,
/// 			Zone:       pulumi.String("us-west4-a"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		mySourceImage, err := compute.NewImage(ctx, "my_source_image", &compute.ImageArgs{
/// 			Name:       pulumi.String("workstation-config"),
/// 			SourceDisk: mySourceDisk.SelfLink,
/// 			StorageLocations: pulumi.StringArray{
/// 				pulumi.String("us-west4"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultWorkstationCluster, err := workstations.NewWorkstationCluster(ctx, "default", &workstations.WorkstationClusterArgs{
/// 			WorkstationClusterId: pulumi.String("workstation-cluster"),
/// 			Network:              _default.ID(),
/// 			Subnetwork:           defaultSubnetwork.ID(),
/// 			Location:             pulumi.String("us-west4"),
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
/// 			Location:             pulumi.String("us-west4"),
/// 			PersistentDirectories: workstations.WorkstationConfigPersistentDirectoryArray{
/// 				&workstations.WorkstationConfigPersistentDirectoryArgs{
/// 					MountPath: pulumi.String("/home"),
/// 					GcePd: &workstations.WorkstationConfigPersistentDirectoryGcePdArgs{
/// 						SourceSnapshot: mySourceSnapshot2.ID(),
/// 						ReclaimPolicy:  pulumi.String("RETAIN"),
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = workstations.NewWorkstationConfig(ctx, "persistent", &workstations.WorkstationConfigArgs{
/// 			WorkstationConfigId:  pulumi.String("workstation-config-pd"),
/// 			WorkstationClusterId: defaultWorkstationCluster.WorkstationClusterId,
/// 			Location:             pulumi.String("us-west4"),
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
/// 		_, err = workstations.NewWorkstationConfig(ctx, "ephemeral_snapshot", &workstations.WorkstationConfigArgs{
/// 			WorkstationConfigId:  pulumi.String("workstation-config-eph-snap"),
/// 			WorkstationClusterId: defaultWorkstationCluster.WorkstationClusterId,
/// 			Location:             pulumi.String("us-west4"),
/// 			EphemeralDirectories: workstations.WorkstationConfigEphemeralDirectoryArray{
/// 				&workstations.WorkstationConfigEphemeralDirectoryArgs{
/// 					MountPath: pulumi.String("/cache"),
/// 					GcePd: &workstations.WorkstationConfigEphemeralDirectoryGcePdArgs{
/// 						SourceSnapshot: mySourceSnapshot.ID(),
/// 						ReadOnly:       pulumi.Bool(true),
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = workstations.NewWorkstationConfig(ctx, "ephemeral_image", &workstations.WorkstationConfigArgs{
/// 			WorkstationConfigId:  pulumi.String("workstation-config-eph-img"),
/// 			WorkstationClusterId: defaultWorkstationCluster.WorkstationClusterId,
/// 			Location:             pulumi.String("us-west4"),
/// 			EphemeralDirectories: workstations.WorkstationConfigEphemeralDirectoryArray{
/// 				&workstations.WorkstationConfigEphemeralDirectoryArgs{
/// 					MountPath: pulumi.String("/cache"),
/// 					GcePd: &workstations.WorkstationConfigEphemeralDirectoryGcePdArgs{
/// 						DiskType:    pulumi.String("pd-standard"),
/// 						SourceImage: mySourceImage.ID(),
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
/// resource "gcp_compute_network" "default" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   name                    = "workstation-cluster"
///   auto_create_subnetworks = false
/// }
/// resource "gcp_compute_subnetwork" "default" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   name          = "workstation-cluster"
///   ip_cidr_range = "10.0.0.0/24"
///   region        = "us-west4"
///   network       = gcp_compute_network.default.name
/// }
/// resource "gcp_compute_disk" "my_source_disk" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   name = "workstation-config"
///   size = 10
///   type = "pd-ssd"
///   zone = "us-west4-a"
/// }
/// resource "gcp_compute_snapshot" "my_source_snapshot" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   name        = "workstation-config"
///   source_disk = gcp_compute_disk.my_source_disk.name
///   zone        = "us-west4-a"
/// }
/// resource "gcp_compute_snapshot" "my_source_snapshot2" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   name        = "workstation-config-2"
///   source_disk = gcp_compute_disk.my_source_disk.name
///   zone        = "us-west4-a"
/// }
/// resource "gcp_compute_image" "my_source_image" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   name              = "workstation-config"
///   source_disk       = gcp_compute_disk.my_source_disk.self_link
///   storage_locations = ["us-west4"]
/// }
/// resource "gcp_workstations_workstation_cluster" "default" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   workstation_cluster_id = "workstation-cluster"
///   network                = gcp_compute_network.default.id
///   subnetwork             = gcp_compute_subnetwork.default.id
///   location               = "us-west4"
///   labels = {
///     "label" = "key"
///   }
///   annotations = {
///     "label-one" = "value-one"
///   }
/// }
/// resource "gcp_workstations_workstation_config" "default" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   workstation_config_id  = "workstation-config"
///   workstation_cluster_id = gcp_workstations_workstation_cluster.default.workstation_cluster_id
///   location               = "us-west4"
///   persistent_directories {
///     mount_path = "/home"
///     gce_pd = {
///       source_snapshot = gcp_compute_snapshot.my_source_snapshot2.id
///       reclaim_policy  = "RETAIN"
///     }
///   }
/// }
/// resource "gcp_workstations_workstation_config" "persistent" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   workstation_config_id  = "workstation-config-pd"
///   workstation_cluster_id = gcp_workstations_workstation_cluster.default.workstation_cluster_id
///   location               = "us-west4"
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
/// resource "gcp_workstations_workstation_config" "ephemeral_snapshot" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   workstation_config_id  = "workstation-config-eph-snap"
///   workstation_cluster_id = gcp_workstations_workstation_cluster.default.workstation_cluster_id
///   location               = "us-west4"
///   ephemeral_directories {
///     mount_path = "/cache"
///     gce_pd = {
///       source_snapshot = gcp_compute_snapshot.my_source_snapshot.id
///       read_only       = true
///     }
///   }
/// }
/// resource "gcp_workstations_workstation_config" "ephemeral_image" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   workstation_config_id  = "workstation-config-eph-img"
///   workstation_cluster_id = gcp_workstations_workstation_cluster.default.workstation_cluster_id
///   location               = "us-west4"
///   ephemeral_directories {
///     mount_path = "/cache"
///     gce_pd = {
///       disk_type    = "pd-standard"
///       source_image = gcp_compute_image.my_source_image.id
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
/// import com.pulumi.gcp.compute.Image;
/// import com.pulumi.gcp.compute.ImageArgs;
/// import com.pulumi.gcp.workstations.WorkstationCluster;
/// import com.pulumi.gcp.workstations.WorkstationClusterArgs;
/// import com.pulumi.gcp.workstations.WorkstationConfig;
/// import com.pulumi.gcp.workstations.WorkstationConfigArgs;
/// import com.pulumi.gcp.workstations.inputs.WorkstationConfigPersistentDirectoryArgs;
/// import com.pulumi.gcp.workstations.inputs.WorkstationConfigPersistentDirectoryGcePdArgs;
/// import com.pulumi.gcp.workstations.inputs.WorkstationConfigHostArgs;
/// import com.pulumi.gcp.workstations.inputs.WorkstationConfigHostGceInstanceArgs;
/// import com.pulumi.gcp.workstations.inputs.WorkstationConfigHostGceInstanceShieldedInstanceConfigArgs;
/// import com.pulumi.gcp.workstations.inputs.WorkstationConfigEphemeralDirectoryArgs;
/// import com.pulumi.gcp.workstations.inputs.WorkstationConfigEphemeralDirectoryGcePdArgs;
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
///             .region("us-west4")
///             .network(default_.name())
///             .build());
///
///         var mySourceDisk = new Disk("mySourceDisk", DiskArgs.builder()
///             .name("workstation-config")
///             .size(10)
///             .type("pd-ssd")
///             .zone("us-west4-a")
///             .build());
///
///         var mySourceSnapshot = new Snapshot("mySourceSnapshot", SnapshotArgs.builder()
///             .name("workstation-config")
///             .sourceDisk(mySourceDisk.name())
///             .zone("us-west4-a")
///             .build());
///
///         var mySourceSnapshot2 = new Snapshot("mySourceSnapshot2", SnapshotArgs.builder()
///             .name("workstation-config-2")
///             .sourceDisk(mySourceDisk.name())
///             .zone("us-west4-a")
///             .build());
///
///         var mySourceImage = new Image("mySourceImage", ImageArgs.builder()
///             .name("workstation-config")
///             .sourceDisk(mySourceDisk.selfLink())
///             .storageLocations("us-west4")
///             .build());
///
///         var defaultWorkstationCluster = new WorkstationCluster("defaultWorkstationCluster", WorkstationClusterArgs.builder()
///             .workstationClusterId("workstation-cluster")
///             .network(default_.id())
///             .subnetwork(defaultSubnetwork.id())
///             .location("us-west4")
///             .labels(Map.of("label", "key"))
///             .annotations(Map.of("label-one", "value-one"))
///             .build());
///
///         var defaultWorkstationConfig = new WorkstationConfig("defaultWorkstationConfig", WorkstationConfigArgs.builder()
///             .workstationConfigId("workstation-config")
///             .workstationClusterId(defaultWorkstationCluster.workstationClusterId())
///             .location("us-west4")
///             .persistentDirectories(WorkstationConfigPersistentDirectoryArgs.builder()
///                 .mountPath("/home")
///                 .gcePd(WorkstationConfigPersistentDirectoryGcePdArgs.builder()
///                     .sourceSnapshot(mySourceSnapshot2.id())
///                     .reclaimPolicy("RETAIN")
///                     .build())
///                 .build())
///             .build());
///
///         var persistent = new WorkstationConfig("persistent", WorkstationConfigArgs.builder()
///             .workstationConfigId("workstation-config-pd")
///             .workstationClusterId(defaultWorkstationCluster.workstationClusterId())
///             .location("us-west4")
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
///         var ephemeralSnapshot = new WorkstationConfig("ephemeralSnapshot", WorkstationConfigArgs.builder()
///             .workstationConfigId("workstation-config-eph-snap")
///             .workstationClusterId(defaultWorkstationCluster.workstationClusterId())
///             .location("us-west4")
///             .ephemeralDirectories(WorkstationConfigEphemeralDirectoryArgs.builder()
///                 .mountPath("/cache")
///                 .gcePd(WorkstationConfigEphemeralDirectoryGcePdArgs.builder()
///                     .sourceSnapshot(mySourceSnapshot.id())
///                     .readOnly(true)
///                     .build())
///                 .build())
///             .build());
///
///         var ephemeralImage = new WorkstationConfig("ephemeralImage", WorkstationConfigArgs.builder()
///             .workstationConfigId("workstation-config-eph-img")
///             .workstationClusterId(defaultWorkstationCluster.workstationClusterId())
///             .location("us-west4")
///             .ephemeralDirectories(WorkstationConfigEphemeralDirectoryArgs.builder()
///                 .mountPath("/cache")
///                 .gcePd(WorkstationConfigEphemeralDirectoryGcePdArgs.builder()
///                     .diskType("pd-standard")
///                     .sourceImage(mySourceImage.id())
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
///       region: us-west4
///       network: ${default.name}
///   mySourceDisk:
///     type: gcp:compute:Disk
///     name: my_source_disk
///     properties:
///       name: workstation-config
///       size: 10
///       type: pd-ssd
///       zone: us-west4-a
///   mySourceSnapshot:
///     type: gcp:compute:Snapshot
///     name: my_source_snapshot
///     properties:
///       name: workstation-config
///       sourceDisk: ${mySourceDisk.name}
///       zone: us-west4-a
///   mySourceSnapshot2:
///     type: gcp:compute:Snapshot
///     name: my_source_snapshot2
///     properties:
///       name: workstation-config-2
///       sourceDisk: ${mySourceDisk.name}
///       zone: us-west4-a
///   mySourceImage:
///     type: gcp:compute:Image
///     name: my_source_image
///     properties:
///       name: workstation-config
///       sourceDisk: ${mySourceDisk.selfLink}
///       storageLocations:
///         - us-west4
///   defaultWorkstationCluster:
///     type: gcp:workstations:WorkstationCluster
///     name: default
///     properties:
///       workstationClusterId: workstation-cluster
///       network: ${default.id}
///       subnetwork: ${defaultSubnetwork.id}
///       location: us-west4
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
///       location: us-west4
///       persistentDirectories:
///         - mountPath: /home
///           gcePd:
///             sourceSnapshot: ${mySourceSnapshot2.id}
///             reclaimPolicy: RETAIN
///   persistent:
///     type: gcp:workstations:WorkstationConfig
///     properties:
///       workstationConfigId: workstation-config-pd
///       workstationClusterId: ${defaultWorkstationCluster.workstationClusterId}
///       location: us-west4
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
///   ephemeralSnapshot:
///     type: gcp:workstations:WorkstationConfig
///     name: ephemeral_snapshot
///     properties:
///       workstationConfigId: workstation-config-eph-snap
///       workstationClusterId: ${defaultWorkstationCluster.workstationClusterId}
///       location: us-west4
///       ephemeralDirectories:
///         - mountPath: /cache
///           gcePd:
///             sourceSnapshot: ${mySourceSnapshot.id}
///             readOnly: true
///   ephemeralImage:
///     type: gcp:workstations:WorkstationConfig
///     name: ephemeral_image
///     properties:
///       workstationConfigId: workstation-config-eph-img
///       workstationClusterId: ${defaultWorkstationCluster.workstationClusterId}
///       location: us-west4
///       ephemeralDirectories:
///         - mountPath: /cache
///           gcePd:
///             diskType: pd-standard
///             sourceImage: ${mySourceImage.id}
/// ```
///
///
/// ### Workstation Config Hyperdisk
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
///     region: "us-east5",
///     network: _default.name,
/// });
/// const mySourceDisk = new gcp.compute.Disk("my_source_disk", {
///     name: "workstation-config-source-disk",
///     size: 10,
///     type: "pd-ssd",
///     zone: "us-east5-a",
/// });
/// const mySourceSnapshot = new gcp.compute.Snapshot("my_source_snapshot", {
///     name: "workstation-config-source-snapshot",
///     sourceDisk: mySourceDisk.name,
///     zone: "us-east5-a",
/// });
/// const defaultWorkstationCluster = new gcp.workstations.WorkstationCluster("default", {
///     workstationClusterId: "workstation-cluster",
///     network: _default.id,
///     subnetwork: defaultSubnetwork.id,
///     location: "us-east5",
/// });
/// const defaultWorkstationConfig = new gcp.workstations.WorkstationConfig("default", {
///     workstationConfigId: "workstation-config",
///     workstationClusterId: defaultWorkstationCluster.workstationClusterId,
///     location: "us-east5",
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
/// const sourceSnapshot = new gcp.workstations.WorkstationConfig("source_snapshot", {
///     workstationConfigId: "workstation-config-hd-snap",
///     workstationClusterId: defaultWorkstationCluster.workstationClusterId,
///     location: "us-east5",
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
///     region="us-east5",
///     network=default.name)
/// my_source_disk = gcp.compute.Disk("my_source_disk",
///     name="workstation-config-source-disk",
///     size=10,
///     type="pd-ssd",
///     zone="us-east5-a")
/// my_source_snapshot = gcp.compute.Snapshot("my_source_snapshot",
///     name="workstation-config-source-snapshot",
///     source_disk=my_source_disk.name,
///     zone="us-east5-a")
/// default_workstation_cluster = gcp.workstations.WorkstationCluster("default",
///     workstation_cluster_id="workstation-cluster",
///     network=default.id,
///     subnetwork=default_subnetwork.id,
///     location="us-east5")
/// default_workstation_config = gcp.workstations.WorkstationConfig("default",
///     workstation_config_id="workstation-config",
///     workstation_cluster_id=default_workstation_cluster.workstation_cluster_id,
///     location="us-east5",
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
/// source_snapshot = gcp.workstations.WorkstationConfig("source_snapshot",
///     workstation_config_id="workstation-config-hd-snap",
///     workstation_cluster_id=default_workstation_cluster.workstation_cluster_id,
///     location="us-east5",
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
///         Region = "us-east5",
///         Network = @default.Name,
///     });
///
///     var mySourceDisk = new Gcp.Compute.Disk("my_source_disk", new()
///     {
///         Name = "workstation-config-source-disk",
///         Size = 10,
///         Type = "pd-ssd",
///         Zone = "us-east5-a",
///     });
///
///     var mySourceSnapshot = new Gcp.Compute.Snapshot("my_source_snapshot", new()
///     {
///         Name = "workstation-config-source-snapshot",
///         SourceDisk = mySourceDisk.Name,
///         Zone = "us-east5-a",
///     });
///
///     var defaultWorkstationCluster = new Gcp.Workstations.WorkstationCluster("default", new()
///     {
///         WorkstationClusterId = "workstation-cluster",
///         Network = @default.Id,
///         Subnetwork = defaultSubnetwork.Id,
///         Location = "us-east5",
///     });
///
///     var defaultWorkstationConfig = new Gcp.Workstations.WorkstationConfig("default", new()
///     {
///         WorkstationConfigId = "workstation-config",
///         WorkstationClusterId = defaultWorkstationCluster.WorkstationClusterId,
///         Location = "us-east5",
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
///     var sourceSnapshot = new Gcp.Workstations.WorkstationConfig("source_snapshot", new()
///     {
///         WorkstationConfigId = "workstation-config-hd-snap",
///         WorkstationClusterId = defaultWorkstationCluster.WorkstationClusterId,
///         Location = "us-east5",
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
/// ```hcl
/// terraform {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_tags_tag_key" "tag_key1" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   parent     = "organizations/0123456789"
///   short_name = "keyname"
/// }
/// resource "gcp_tags_tag_value" "tag_value1" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   parent     = gcp_tags_tag_key.tag_key1.id
///   short_name = "valuename"
/// }
/// resource "gcp_compute_network" "default" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   name                    = "workstation-cluster"
///   auto_create_subnetworks = false
/// }
/// resource "gcp_compute_subnetwork" "default" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   name          = "workstation-cluster"
///   ip_cidr_range = "10.0.0.0/24"
///   region        = "us-east5"
///   network       = gcp_compute_network.default.name
/// }
/// resource "gcp_compute_disk" "my_source_disk" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   name = "workstation-config-source-disk"
///   size = 10
///   type = "pd-ssd"
///   zone = "us-east5-a"
/// }
/// resource "gcp_compute_snapshot" "my_source_snapshot" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   name        = "workstation-config-source-snapshot"
///   source_disk = gcp_compute_disk.my_source_disk.name
///   zone        = "us-east5-a"
/// }
/// resource "gcp_workstations_workstation_cluster" "default" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   workstation_cluster_id = "workstation-cluster"
///   network                = gcp_compute_network.default.id
///   subnetwork             = gcp_compute_subnetwork.default.id
///   location               = "us-east5"
/// }
/// resource "gcp_workstations_workstation_config" "default" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   workstation_config_id  = "workstation-config"
///   workstation_cluster_id = gcp_workstations_workstation_cluster.default.workstation_cluster_id
///   location               = "us-east5"
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
/// resource "gcp_workstations_workstation_config" "source_snapshot" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   workstation_config_id  = "workstation-config-hd-snap"
///   workstation_cluster_id = gcp_workstations_workstation_cluster.default.workstation_cluster_id
///   location               = "us-east5"
///   host = {
///     gce_instance = {
///       machine_type                = "c3-standard-22"
///       boot_disk_size_gb           = 35
///       disable_public_ip_addresses = true
///       vm_tags = {
///         gcp_tags_tag_key.tag_key1.id = gcp_tags_tag_value.tag_value1.id
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
///       region: us-east5
///       network: ${default.name}
///   mySourceDisk:
///     type: gcp:compute:Disk
///     name: my_source_disk
///     properties:
///       name: workstation-config-source-disk
///       size: 10
///       type: pd-ssd
///       zone: us-east5-a
///   mySourceSnapshot:
///     type: gcp:compute:Snapshot
///     name: my_source_snapshot
///     properties:
///       name: workstation-config-source-snapshot
///       sourceDisk: ${mySourceDisk.name}
///       zone: us-east5-a
///   defaultWorkstationCluster:
///     type: gcp:workstations:WorkstationCluster
///     name: default
///     properties:
///       workstationClusterId: workstation-cluster
///       network: ${default.id}
///       subnetwork: ${defaultSubnetwork.id}
///       location: us-east5
///   defaultWorkstationConfig:
///     type: gcp:workstations:WorkstationConfig
///     name: default
///     properties:
///       workstationConfigId: workstation-config
///       workstationClusterId: ${defaultWorkstationCluster.workstationClusterId}
///       location: us-east5
///       host:
///         gceInstance:
///           machineType: c3-standard-22
///       persistentDirectories:
///         - mountPath: /home
///           gceHd:
///             sizeGb: 200
///             reclaimPolicy: DELETE
///             archiveTimeout: 3600s
///   sourceSnapshot:
///     type: gcp:workstations:WorkstationConfig
///     name: source_snapshot
///     properties:
///       workstationConfigId: workstation-config-hd-snap
///       workstationClusterId: ${defaultWorkstationCluster.workstationClusterId}
///       location: us-east5
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
///     region: "us-east5",
///     network: _default.name,
/// });
/// const defaultWorkstationCluster = new gcp.workstations.WorkstationCluster("default", {
///     workstationClusterId: "workstation-cluster",
///     network: _default.id,
///     subnetwork: defaultSubnetwork.id,
///     location: "us-east5",
///     labels: {
///         label: "key",
///     },
///     annotations: {
///         "label-one": "value-one",
///     },
/// });
/// const defaultKeyRing = new gcp.kms.KeyRing("default", {
///     name: "workstation-cluster",
///     location: "us-east5",
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
///     location: "us-east5",
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
///     region="us-east5",
///     network=default.name)
/// default_workstation_cluster = gcp.workstations.WorkstationCluster("default",
///     workstation_cluster_id="workstation-cluster",
///     network=default.id,
///     subnetwork=default_subnetwork.id,
///     location="us-east5",
///     labels={
///         "label": "key",
///     },
///     annotations={
///         "label-one": "value-one",
///     })
/// default_key_ring = gcp.kms.KeyRing("default",
///     name="workstation-cluster",
///     location="us-east5")
/// default_crypto_key = gcp.kms.CryptoKey("default",
///     name="workstation-cluster",
///     key_ring=default_key_ring.id)
/// default_account = gcp.serviceaccount.Account("default",
///     account_id="my-account",
///     display_name="Service Account")
/// default_workstation_config = gcp.workstations.WorkstationConfig("default",
///     workstation_config_id="workstation-config",
///     workstation_cluster_id=default_workstation_cluster.workstation_cluster_id,
///     location="us-east5",
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
///         Region = "us-east5",
///         Network = @default.Name,
///     });
///
///     var defaultWorkstationCluster = new Gcp.Workstations.WorkstationCluster("default", new()
///     {
///         WorkstationClusterId = "workstation-cluster",
///         Network = @default.Id,
///         Subnetwork = defaultSubnetwork.Id,
///         Location = "us-east5",
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
///         Location = "us-east5",
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
///         Location = "us-east5",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/kms"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/serviceaccount"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/workstations"
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
/// 			Region:      pulumi.String("us-east5"),
/// 			Network:     _default.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultWorkstationCluster, err := workstations.NewWorkstationCluster(ctx, "default", &workstations.WorkstationClusterArgs{
/// 			WorkstationClusterId: pulumi.String("workstation-cluster"),
/// 			Network:              _default.ID(),
/// 			Subnetwork:           defaultSubnetwork.ID(),
/// 			Location:             pulumi.String("us-east5"),
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
/// 			Location: pulumi.String("us-east5"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultCryptoKey, err := kms.NewCryptoKey(ctx, "default", &kms.CryptoKeyArgs{
/// 			Name:    pulumi.String("workstation-cluster"),
/// 			KeyRing: defaultKeyRing.ID(),
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
/// 			Location:             pulumi.String("us-east5"),
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
/// 				KmsKey:               defaultCryptoKey.ID(),
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
/// terraform {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_compute_network" "default" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   name                    = "workstation-cluster"
///   auto_create_subnetworks = false
/// }
/// resource "gcp_compute_subnetwork" "default" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   name          = "workstation-cluster"
///   ip_cidr_range = "10.0.0.0/24"
///   region        = "us-east5"
///   network       = gcp_compute_network.default.name
/// }
/// resource "gcp_workstations_workstation_cluster" "default" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   workstation_cluster_id = "workstation-cluster"
///   network                = gcp_compute_network.default.id
///   subnetwork             = gcp_compute_subnetwork.default.id
///   location               = "us-east5"
///   labels = {
///     "label" = "key"
///   }
///   annotations = {
///     "label-one" = "value-one"
///   }
/// }
/// resource "gcp_kms_key_ring" "default" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   name     = "workstation-cluster"
///   location = "us-east5"
/// }
/// resource "gcp_kms_crypto_key" "default" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   name     = "workstation-cluster"
///   key_ring = gcp_kms_key_ring.default.id
/// }
/// resource "gcp_serviceaccount_account" "default" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   account_id   = "my-account"
///   display_name = "Service Account"
/// }
/// resource "gcp_workstations_workstation_config" "default" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   workstation_config_id  = "workstation-config"
///   workstation_cluster_id = gcp_workstations_workstation_cluster.default.workstation_cluster_id
///   location               = "us-east5"
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
///     kms_key                 = gcp_kms_crypto_key.default.id
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
///             .region("us-east5")
///             .network(default_.name())
///             .build());
///
///         var defaultWorkstationCluster = new WorkstationCluster("defaultWorkstationCluster", WorkstationClusterArgs.builder()
///             .workstationClusterId("workstation-cluster")
///             .network(default_.id())
///             .subnetwork(defaultSubnetwork.id())
///             .location("us-east5")
///             .labels(Map.of("label", "key"))
///             .annotations(Map.of("label-one", "value-one"))
///             .build());
///
///         var defaultKeyRing = new KeyRing("defaultKeyRing", KeyRingArgs.builder()
///             .name("workstation-cluster")
///             .location("us-east5")
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
///             .location("us-east5")
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
///       region: us-east5
///       network: ${default.name}
///   defaultWorkstationCluster:
///     type: gcp:workstations:WorkstationCluster
///     name: default
///     properties:
///       workstationClusterId: workstation-cluster
///       network: ${default.id}
///       subnetwork: ${defaultSubnetwork.id}
///       location: us-east5
///       labels:
///         label: key
///       annotations:
///         label-one: value-one
///   defaultKeyRing:
///     type: gcp:kms:KeyRing
///     name: default
///     properties:
///       name: workstation-cluster
///       location: us-east5
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
///       location: us-east5
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
///     region: "us-west4",
///     network: _default.name,
/// });
/// const defaultWorkstationCluster = new gcp.workstations.WorkstationCluster("default", {
///     workstationClusterId: "workstation-cluster",
///     network: _default.id,
///     subnetwork: defaultSubnetwork.id,
///     location: "us-west4",
/// });
/// const defaultWorkstationConfig = new gcp.workstations.WorkstationConfig("default", {
///     workstationConfigId: "workstation-config",
///     workstationClusterId: defaultWorkstationCluster.workstationClusterId,
///     location: "us-west4",
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
///     region="us-west4",
///     network=default.name)
/// default_workstation_cluster = gcp.workstations.WorkstationCluster("default",
///     workstation_cluster_id="workstation-cluster",
///     network=default.id,
///     subnetwork=default_subnetwork.id,
///     location="us-west4")
/// default_workstation_config = gcp.workstations.WorkstationConfig("default",
///     workstation_config_id="workstation-config",
///     workstation_cluster_id=default_workstation_cluster.workstation_cluster_id,
///     location="us-west4",
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
///         Region = "us-west4",
///         Network = @default.Name,
///     });
///
///     var defaultWorkstationCluster = new Gcp.Workstations.WorkstationCluster("default", new()
///     {
///         WorkstationClusterId = "workstation-cluster",
///         Network = @default.Id,
///         Subnetwork = defaultSubnetwork.Id,
///         Location = "us-west4",
///     });
///
///     var defaultWorkstationConfig = new Gcp.Workstations.WorkstationConfig("default", new()
///     {
///         WorkstationConfigId = "workstation-config",
///         WorkstationClusterId = defaultWorkstationCluster.WorkstationClusterId,
///         Location = "us-west4",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/workstations"
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
/// 			Region:      pulumi.String("us-west4"),
/// 			Network:     _default.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultWorkstationCluster, err := workstations.NewWorkstationCluster(ctx, "default", &workstations.WorkstationClusterArgs{
/// 			WorkstationClusterId: pulumi.String("workstation-cluster"),
/// 			Network:              _default.ID(),
/// 			Subnetwork:           defaultSubnetwork.ID(),
/// 			Location:             pulumi.String("us-west4"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = workstations.NewWorkstationConfig(ctx, "default", &workstations.WorkstationConfigArgs{
/// 			WorkstationConfigId:  pulumi.String("workstation-config"),
/// 			WorkstationClusterId: defaultWorkstationCluster.WorkstationClusterId,
/// 			Location:             pulumi.String("us-west4"),
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
/// terraform {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_compute_network" "default" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   name                    = "workstation-cluster"
///   auto_create_subnetworks = false
/// }
/// resource "gcp_compute_subnetwork" "default" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   name          = "workstation-cluster"
///   ip_cidr_range = "10.0.0.0/24"
///   region        = "us-west4"
///   network       = gcp_compute_network.default.name
/// }
/// resource "gcp_workstations_workstation_cluster" "default" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   workstation_cluster_id = "workstation-cluster"
///   network                = gcp_compute_network.default.id
///   subnetwork             = gcp_compute_subnetwork.default.id
///   location               = "us-west4"
/// }
/// resource "gcp_workstations_workstation_config" "default" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   workstation_config_id  = "workstation-config"
///   workstation_cluster_id = gcp_workstations_workstation_cluster.default.workstation_cluster_id
///   location               = "us-west4"
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
///             .region("us-west4")
///             .network(default_.name())
///             .build());
///
///         var defaultWorkstationCluster = new WorkstationCluster("defaultWorkstationCluster", WorkstationClusterArgs.builder()
///             .workstationClusterId("workstation-cluster")
///             .network(default_.id())
///             .subnetwork(defaultSubnetwork.id())
///             .location("us-west4")
///             .build());
///
///         var defaultWorkstationConfig = new WorkstationConfig("defaultWorkstationConfig", WorkstationConfigArgs.builder()
///             .workstationConfigId("workstation-config")
///             .workstationClusterId(defaultWorkstationCluster.workstationClusterId())
///             .location("us-west4")
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
///       region: us-west4
///       network: ${default.name}
///   defaultWorkstationCluster:
///     type: gcp:workstations:WorkstationCluster
///     name: default
///     properties:
///       workstationClusterId: workstation-cluster
///       network: ${default.id}
///       subnetwork: ${defaultSubnetwork.id}
///       location: us-west4
///   defaultWorkstationConfig:
///     type: gcp:workstations:WorkstationConfig
///     name: default
///     properties:
///       workstationConfigId: workstation-config
///       workstationClusterId: ${defaultWorkstationCluster.workstationClusterId}
///       location: us-west4
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
/// ### Workstation Config Reservation Affinity
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
///     region: "us-east4",
///     network: _default.name,
/// });
/// const defaultWorkstationCluster = new gcp.workstations.WorkstationCluster("default", {
///     workstationClusterId: "workstation-cluster",
///     network: _default.id,
///     subnetwork: defaultSubnetwork.id,
///     location: "us-east4",
/// });
/// const defaultReservation = new gcp.compute.Reservation("default", {
///     name: "workstation-reservation",
///     zone: "us-east4-a",
///     specificReservation: {
///         count: 1,
///         instanceProperties: {
///             machineType: "e2-standard-4",
///         },
///     },
///     specificReservationRequired: true,
/// });
/// const defaultWorkstationConfig = new gcp.workstations.WorkstationConfig("default", {
///     workstationConfigId: "workstation-config",
///     workstationClusterId: defaultWorkstationCluster.workstationClusterId,
///     location: "us-east4",
///     replicaZones: [
///         "us-east4-a",
///         "us-east4-b",
///     ],
///     host: {
///         gceInstance: {
///             machineType: "e2-standard-4",
///             bootDiskSizeGb: 35,
///             disablePublicIpAddresses: true,
///             reservationAffinity: {
///                 consumeReservationType: "SPECIFIC_RESERVATION",
///                 key: "compute.googleapis.com/reservation-name",
///                 values: [defaultReservation.name],
///             },
///             boostConfigs: [{
///                 id: "boost-1",
///                 machineType: "e2-standard-4",
///                 bootDiskSizeGb: 35,
///                 reservationAffinity: {
///                     consumeReservationType: "ANY_RESERVATION",
///                 },
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
///     region="us-east4",
///     network=default.name)
/// default_workstation_cluster = gcp.workstations.WorkstationCluster("default",
///     workstation_cluster_id="workstation-cluster",
///     network=default.id,
///     subnetwork=default_subnetwork.id,
///     location="us-east4")
/// default_reservation = gcp.compute.Reservation("default",
///     name="workstation-reservation",
///     zone="us-east4-a",
///     specific_reservation={
///         "count": 1,
///         "instance_properties": {
///             "machine_type": "e2-standard-4",
///         },
///     },
///     specific_reservation_required=True)
/// default_workstation_config = gcp.workstations.WorkstationConfig("default",
///     workstation_config_id="workstation-config",
///     workstation_cluster_id=default_workstation_cluster.workstation_cluster_id,
///     location="us-east4",
///     replica_zones=[
///         "us-east4-a",
///         "us-east4-b",
///     ],
///     host={
///         "gce_instance": {
///             "machine_type": "e2-standard-4",
///             "boot_disk_size_gb": 35,
///             "disable_public_ip_addresses": True,
///             "reservation_affinity": {
///                 "consume_reservation_type": "SPECIFIC_RESERVATION",
///                 "key": "compute.googleapis.com/reservation-name",
///                 "values": [default_reservation.name],
///             },
///             "boost_configs": [{
///                 "id": "boost-1",
///                 "machine_type": "e2-standard-4",
///                 "boot_disk_size_gb": 35,
///                 "reservation_affinity": {
///                     "consume_reservation_type": "ANY_RESERVATION",
///                 },
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
///         Region = "us-east4",
///         Network = @default.Name,
///     });
///
///     var defaultWorkstationCluster = new Gcp.Workstations.WorkstationCluster("default", new()
///     {
///         WorkstationClusterId = "workstation-cluster",
///         Network = @default.Id,
///         Subnetwork = defaultSubnetwork.Id,
///         Location = "us-east4",
///     });
///
///     var defaultReservation = new Gcp.Compute.Reservation("default", new()
///     {
///         Name = "workstation-reservation",
///         Zone = "us-east4-a",
///         SpecificReservation = new Gcp.Compute.Inputs.ReservationSpecificReservationArgs
///         {
///             Count = 1,
///             InstanceProperties = new Gcp.Compute.Inputs.ReservationSpecificReservationInstancePropertiesArgs
///             {
///                 MachineType = "e2-standard-4",
///             },
///         },
///         SpecificReservationRequired = true,
///     });
///
///     var defaultWorkstationConfig = new Gcp.Workstations.WorkstationConfig("default", new()
///     {
///         WorkstationConfigId = "workstation-config",
///         WorkstationClusterId = defaultWorkstationCluster.WorkstationClusterId,
///         Location = "us-east4",
///         ReplicaZones = new[]
///         {
///             "us-east4-a",
///             "us-east4-b",
///         },
///         Host = new Gcp.Workstations.Inputs.WorkstationConfigHostArgs
///         {
///             GceInstance = new Gcp.Workstations.Inputs.WorkstationConfigHostGceInstanceArgs
///             {
///                 MachineType = "e2-standard-4",
///                 BootDiskSizeGb = 35,
///                 DisablePublicIpAddresses = true,
///                 ReservationAffinity = new Gcp.Workstations.Inputs.WorkstationConfigHostGceInstanceReservationAffinityArgs
///                 {
///                     ConsumeReservationType = "SPECIFIC_RESERVATION",
///                     Key = "compute.googleapis.com/reservation-name",
///                     Values = new[]
///                     {
///                         defaultReservation.Name,
///                     },
///                 },
///                 BoostConfigs = new[]
///                 {
///                     new Gcp.Workstations.Inputs.WorkstationConfigHostGceInstanceBoostConfigArgs
///                     {
///                         Id = "boost-1",
///                         MachineType = "e2-standard-4",
///                         BootDiskSizeGb = 35,
///                         ReservationAffinity = new Gcp.Workstations.Inputs.WorkstationConfigHostGceInstanceBoostConfigReservationAffinityArgs
///                         {
///                             ConsumeReservationType = "ANY_RESERVATION",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/workstations"
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
/// 			Region:      pulumi.String("us-east4"),
/// 			Network:     _default.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultWorkstationCluster, err := workstations.NewWorkstationCluster(ctx, "default", &workstations.WorkstationClusterArgs{
/// 			WorkstationClusterId: pulumi.String("workstation-cluster"),
/// 			Network:              _default.ID(),
/// 			Subnetwork:           defaultSubnetwork.ID(),
/// 			Location:             pulumi.String("us-east4"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultReservation, err := compute.NewReservation(ctx, "default", &compute.ReservationArgs{
/// 			Name: pulumi.String("workstation-reservation"),
/// 			Zone: pulumi.String("us-east4-a"),
/// 			SpecificReservation: &compute.ReservationSpecificReservationArgs{
/// 				Count: pulumi.Int(1),
/// 				InstanceProperties: &compute.ReservationSpecificReservationInstancePropertiesArgs{
/// 					MachineType: pulumi.String("e2-standard-4"),
/// 				},
/// 			},
/// 			SpecificReservationRequired: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = workstations.NewWorkstationConfig(ctx, "default", &workstations.WorkstationConfigArgs{
/// 			WorkstationConfigId:  pulumi.String("workstation-config"),
/// 			WorkstationClusterId: defaultWorkstationCluster.WorkstationClusterId,
/// 			Location:             pulumi.String("us-east4"),
/// 			ReplicaZones: pulumi.StringArray{
/// 				pulumi.String("us-east4-a"),
/// 				pulumi.String("us-east4-b"),
/// 			},
/// 			Host: &workstations.WorkstationConfigHostArgs{
/// 				GceInstance: &workstations.WorkstationConfigHostGceInstanceArgs{
/// 					MachineType:              pulumi.String("e2-standard-4"),
/// 					BootDiskSizeGb:           pulumi.Int(35),
/// 					DisablePublicIpAddresses: pulumi.Bool(true),
/// 					ReservationAffinity: &workstations.WorkstationConfigHostGceInstanceReservationAffinityArgs{
/// 						ConsumeReservationType: pulumi.String("SPECIFIC_RESERVATION"),
/// 						Key:                    pulumi.String("compute.googleapis.com/reservation-name"),
/// 						Values: pulumi.StringArray{
/// 							defaultReservation.Name,
/// 						},
/// 					},
/// 					BoostConfigs: workstations.WorkstationConfigHostGceInstanceBoostConfigArray{
/// 						&workstations.WorkstationConfigHostGceInstanceBoostConfigArgs{
/// 							Id:             pulumi.String("boost-1"),
/// 							MachineType:    pulumi.String("e2-standard-4"),
/// 							BootDiskSizeGb: pulumi.Int(35),
/// 							ReservationAffinity: &workstations.WorkstationConfigHostGceInstanceBoostConfigReservationAffinityArgs{
/// 								ConsumeReservationType: pulumi.String("ANY_RESERVATION"),
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
/// resource "gcp_compute_network" "default" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   name                    = "workstation-cluster"
///   auto_create_subnetworks = false
/// }
/// resource "gcp_compute_subnetwork" "default" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   name          = "workstation-cluster"
///   ip_cidr_range = "10.0.0.0/24"
///   region        = "us-east4"
///   network       = gcp_compute_network.default.name
/// }
/// resource "gcp_workstations_workstation_cluster" "default" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   workstation_cluster_id = "workstation-cluster"
///   network                = gcp_compute_network.default.id
///   subnetwork             = gcp_compute_subnetwork.default.id
///   location               = "us-east4"
/// }
/// resource "gcp_compute_reservation" "default" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   name = "workstation-reservation"
///   zone = "us-east4-a"
///   specific_reservation = {
///     count = 1
///     instance_properties = {
///       machine_type = "e2-standard-4"
///     }
///   }
///   specific_reservation_required = true
/// }
/// resource "gcp_workstations_workstation_config" "default" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   workstation_config_id  = "workstation-config"
///   workstation_cluster_id = gcp_workstations_workstation_cluster.default.workstation_cluster_id
///   location               = "us-east4"
///   replica_zones          = ["us-east4-a", "us-east4-b"]
///   host = {
///     gce_instance = {
///       machine_type                = "e2-standard-4"
///       boot_disk_size_gb           = 35
///       disable_public_ip_addresses = true
///       reservation_affinity = {
///         consume_reservation_type = "SPECIFIC_RESERVATION"
///         key                      = "compute.googleapis.com/reservation-name"
///         values                   = [gcp_compute_reservation.default.name]
///       }
///       boost_configs = [{
///         id                = "boost-1"
///         machine_type      = "e2-standard-4"
///         boot_disk_size_gb = 35
///         reservation_affinity = {
///           consume_reservation_type = "ANY_RESERVATION"
///         }
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
/// import com.pulumi.gcp.compute.Reservation;
/// import com.pulumi.gcp.compute.ReservationArgs;
/// import com.pulumi.gcp.compute.inputs.ReservationSpecificReservationArgs;
/// import com.pulumi.gcp.compute.inputs.ReservationSpecificReservationInstancePropertiesArgs;
/// import com.pulumi.gcp.workstations.WorkstationConfig;
/// import com.pulumi.gcp.workstations.WorkstationConfigArgs;
/// import com.pulumi.gcp.workstations.inputs.WorkstationConfigHostArgs;
/// import com.pulumi.gcp.workstations.inputs.WorkstationConfigHostGceInstanceArgs;
/// import com.pulumi.gcp.workstations.inputs.WorkstationConfigHostGceInstanceReservationAffinityArgs;
/// import com.pulumi.gcp.workstations.inputs.WorkstationConfigHostGceInstanceBoostConfigArgs;
/// import com.pulumi.gcp.workstations.inputs.WorkstationConfigHostGceInstanceBoostConfigReservationAffinityArgs;
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
///             .region("us-east4")
///             .network(default_.name())
///             .build());
///
///         var defaultWorkstationCluster = new WorkstationCluster("defaultWorkstationCluster", WorkstationClusterArgs.builder()
///             .workstationClusterId("workstation-cluster")
///             .network(default_.id())
///             .subnetwork(defaultSubnetwork.id())
///             .location("us-east4")
///             .build());
///
///         var defaultReservation = new Reservation("defaultReservation", ReservationArgs.builder()
///             .name("workstation-reservation")
///             .zone("us-east4-a")
///             .specificReservation(ReservationSpecificReservationArgs.builder()
///                 .count(1)
///                 .instanceProperties(ReservationSpecificReservationInstancePropertiesArgs.builder()
///                     .machineType("e2-standard-4")
///                     .build())
///                 .build())
///             .specificReservationRequired(true)
///             .build());
///
///         var defaultWorkstationConfig = new WorkstationConfig("defaultWorkstationConfig", WorkstationConfigArgs.builder()
///             .workstationConfigId("workstation-config")
///             .workstationClusterId(defaultWorkstationCluster.workstationClusterId())
///             .location("us-east4")
///             .replicaZones(
///                 "us-east4-a",
///                 "us-east4-b")
///             .host(WorkstationConfigHostArgs.builder()
///                 .gceInstance(WorkstationConfigHostGceInstanceArgs.builder()
///                     .machineType("e2-standard-4")
///                     .bootDiskSizeGb(35)
///                     .disablePublicIpAddresses(true)
///                     .reservationAffinity(WorkstationConfigHostGceInstanceReservationAffinityArgs.builder()
///                         .consumeReservationType("SPECIFIC_RESERVATION")
///                         .key("compute.googleapis.com/reservation-name")
///                         .values(defaultReservation.name())
///                         .build())
///                     .boostConfigs(WorkstationConfigHostGceInstanceBoostConfigArgs.builder()
///                         .id("boost-1")
///                         .machineType("e2-standard-4")
///                         .bootDiskSizeGb(35)
///                         .reservationAffinity(WorkstationConfigHostGceInstanceBoostConfigReservationAffinityArgs.builder()
///                             .consumeReservationType("ANY_RESERVATION")
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
///       region: us-east4
///       network: ${default.name}
///   defaultWorkstationCluster:
///     type: gcp:workstations:WorkstationCluster
///     name: default
///     properties:
///       workstationClusterId: workstation-cluster
///       network: ${default.id}
///       subnetwork: ${defaultSubnetwork.id}
///       location: us-east4
///   defaultReservation:
///     type: gcp:compute:Reservation
///     name: default
///     properties:
///       name: workstation-reservation
///       zone: us-east4-a
///       specificReservation:
///         count: 1
///         instanceProperties:
///           machineType: e2-standard-4
///       specificReservationRequired: true
///   defaultWorkstationConfig:
///     type: gcp:workstations:WorkstationConfig
///     name: default
///     properties:
///       workstationConfigId: workstation-config
///       workstationClusterId: ${defaultWorkstationCluster.workstationClusterId}
///       location: us-east4
///       replicaZones:
///         - us-east4-a
///         - us-east4-b
///       host:
///         gceInstance:
///           machineType: e2-standard-4
///           bootDiskSizeGb: 35
///           disablePublicIpAddresses: true
///           reservationAffinity:
///             consumeReservationType: SPECIFIC_RESERVATION
///             key: compute.googleapis.com/reservation-name
///             values:
///               - ${defaultReservation.name}
///           boostConfigs:
///             - id: boost-1
///               machineType: e2-standard-4
///               bootDiskSizeGb: 35
///               reservationAffinity:
///                 consumeReservationType: ANY_RESERVATION
/// ```
///
///
/// ## Regional Endpoint Policies
///
/// This resource supports Regional Endpoint Policies (REP). See the provider reference for more details on configuration.
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
  late final pulumi.Output<List<WorkstationConfigAllowedPort>> allowedPorts;
  /// Client-specified annotations. This is distinct from labels.
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effectiveAnnotations` for all of the annotations present on the resource.
  late final pulumi.Output<Map<String, String>?> annotations;
  /// Status conditions describing the current resource state.
  /// Structure is documented below.
  late final pulumi.Output<List<WorkstationConfigCondition>> conditions;
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
  late final pulumi.Output<List<WorkstationConfigEphemeralDirectory>> ephemeralDirectories;
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
  late final pulumi.Output<List<WorkstationConfigPersistentDirectory>> persistentDirectories;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// Readiness checks to be performed on a workstation.
  /// Structure is documented below.
  late final pulumi.Output<List<WorkstationConfigReadinessCheck>?> readinessChecks;
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
          pulumi.CustomResourceOptions(version: '10.5.0').merge(options),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        ) {
    allowedPorts = registerOutput<List<WorkstationConfigAllowedPort>>('allowedPorts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<WorkstationConfigAllowedPort>(guardedValue, (value) => WorkstationConfigAllowedPort.fromMap((value as Map).cast<String, dynamic>())); });
    annotations = registerOutput<Map<String, String>?>('annotations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    conditions = registerOutput<List<WorkstationConfigCondition>>('conditions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<WorkstationConfigCondition>(guardedValue, (value) => WorkstationConfigCondition.fromMap((value as Map).cast<String, dynamic>())); });
    container = registerOutput<WorkstationConfigContainer>('container', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkstationConfigContainer.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createTime = registerOutput<String>('createTime');
    degraded = registerOutput<bool>('degraded');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    disableTcpConnections = registerOutput<bool?>('disableTcpConnections');
    displayName = registerOutput<String?>('displayName');
    effectiveAnnotations = registerOutput<Map<String, String>>('effectiveAnnotations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    enableAuditAgent = registerOutput<bool?>('enableAuditAgent');
    encryptionKey = registerOutput<WorkstationConfigEncryptionKey?>('encryptionKey', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkstationConfigEncryptionKey.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    ephemeralDirectories = registerOutput<List<WorkstationConfigEphemeralDirectory>>('ephemeralDirectories', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<WorkstationConfigEphemeralDirectory>(guardedValue, (value) => WorkstationConfigEphemeralDirectory.fromMap((value as Map).cast<String, dynamic>())); });
    etag = registerOutput<String>('etag');
    host = registerOutput<WorkstationConfigHost>('host', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkstationConfigHost.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    idleAction = registerOutput<String?>('idleAction');
    idleTimeout = registerOutput<String?>('idleTimeout');
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String>('location');
    maxUsableWorkstations = registerOutput<int>('maxUsableWorkstations');
    this.name = registerOutput<String>('name');
    persistentDirectories = registerOutput<List<WorkstationConfigPersistentDirectory>>('persistentDirectories', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<WorkstationConfigPersistentDirectory>(guardedValue, (value) => WorkstationConfigPersistentDirectory.fromMap((value as Map).cast<String, dynamic>())); });
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    readinessChecks = registerOutput<List<WorkstationConfigReadinessCheck>?>('readinessChecks', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<WorkstationConfigReadinessCheck>(guardedValue, (value) => WorkstationConfigReadinessCheck.fromMap((value as Map).cast<String, dynamic>())); });
    replicaZones = registerOutput<List<String>>('replicaZones', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
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
    pulumi.CustomResourceOptions? options,
  }) {
    return WorkstationConfig._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
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
    allowedPorts = registerOutput<List<WorkstationConfigAllowedPort>>('allowedPorts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<WorkstationConfigAllowedPort>(guardedValue, (value) => WorkstationConfigAllowedPort.fromMap((value as Map).cast<String, dynamic>())); });
    annotations = registerOutput<Map<String, String>?>('annotations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    conditions = registerOutput<List<WorkstationConfigCondition>>('conditions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<WorkstationConfigCondition>(guardedValue, (value) => WorkstationConfigCondition.fromMap((value as Map).cast<String, dynamic>())); });
    container = registerOutput<WorkstationConfigContainer>('container', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkstationConfigContainer.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createTime = registerOutput<String>('createTime');
    degraded = registerOutput<bool>('degraded');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    disableTcpConnections = registerOutput<bool?>('disableTcpConnections');
    displayName = registerOutput<String?>('displayName');
    effectiveAnnotations = registerOutput<Map<String, String>>('effectiveAnnotations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    enableAuditAgent = registerOutput<bool?>('enableAuditAgent');
    encryptionKey = registerOutput<WorkstationConfigEncryptionKey?>('encryptionKey', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkstationConfigEncryptionKey.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    ephemeralDirectories = registerOutput<List<WorkstationConfigEphemeralDirectory>>('ephemeralDirectories', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<WorkstationConfigEphemeralDirectory>(guardedValue, (value) => WorkstationConfigEphemeralDirectory.fromMap((value as Map).cast<String, dynamic>())); });
    etag = registerOutput<String>('etag');
    host = registerOutput<WorkstationConfigHost>('host', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkstationConfigHost.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    idleAction = registerOutput<String?>('idleAction');
    idleTimeout = registerOutput<String?>('idleTimeout');
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String>('location');
    maxUsableWorkstations = registerOutput<int>('maxUsableWorkstations');
    this.name = registerOutput<String>('name');
    persistentDirectories = registerOutput<List<WorkstationConfigPersistentDirectory>>('persistentDirectories', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<WorkstationConfigPersistentDirectory>(guardedValue, (value) => WorkstationConfigPersistentDirectory.fromMap((value as Map).cast<String, dynamic>())); });
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    readinessChecks = registerOutput<List<WorkstationConfigReadinessCheck>?>('readinessChecks', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<WorkstationConfigReadinessCheck>(guardedValue, (value) => WorkstationConfigReadinessCheck.fromMap((value as Map).cast<String, dynamic>())); });
    replicaZones = registerOutput<List<String>>('replicaZones', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    runningTimeout = registerOutput<String?>('runningTimeout');
    uid = registerOutput<String>('uid');
    workstationClusterId = registerOutput<String>('workstationClusterId');
    workstationConfigId = registerOutput<String>('workstationConfigId');
  }

  /// Creates a typed reference to an existing [WorkstationConfig] resource.
  WorkstationConfig.reference(String urn)
    : super(
        'gcp:workstations/workstationConfig:WorkstationConfig',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        isResourceReference: true,
      ) {
    allowedPorts = registerOutput<List<WorkstationConfigAllowedPort>>('allowedPorts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<WorkstationConfigAllowedPort>(guardedValue, (value) => WorkstationConfigAllowedPort.fromMap((value as Map).cast<String, dynamic>())); });
    annotations = registerOutput<Map<String, String>?>('annotations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    conditions = registerOutput<List<WorkstationConfigCondition>>('conditions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<WorkstationConfigCondition>(guardedValue, (value) => WorkstationConfigCondition.fromMap((value as Map).cast<String, dynamic>())); });
    container = registerOutput<WorkstationConfigContainer>('container', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkstationConfigContainer.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createTime = registerOutput<String>('createTime');
    degraded = registerOutput<bool>('degraded');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    disableTcpConnections = registerOutput<bool?>('disableTcpConnections');
    displayName = registerOutput<String?>('displayName');
    effectiveAnnotations = registerOutput<Map<String, String>>('effectiveAnnotations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    enableAuditAgent = registerOutput<bool?>('enableAuditAgent');
    encryptionKey = registerOutput<WorkstationConfigEncryptionKey?>('encryptionKey', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkstationConfigEncryptionKey.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    ephemeralDirectories = registerOutput<List<WorkstationConfigEphemeralDirectory>>('ephemeralDirectories', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<WorkstationConfigEphemeralDirectory>(guardedValue, (value) => WorkstationConfigEphemeralDirectory.fromMap((value as Map).cast<String, dynamic>())); });
    etag = registerOutput<String>('etag');
    host = registerOutput<WorkstationConfigHost>('host', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkstationConfigHost.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    idleAction = registerOutput<String?>('idleAction');
    idleTimeout = registerOutput<String?>('idleTimeout');
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String>('location');
    maxUsableWorkstations = registerOutput<int>('maxUsableWorkstations');
    this.name = registerOutput<String>('name');
    persistentDirectories = registerOutput<List<WorkstationConfigPersistentDirectory>>('persistentDirectories', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<WorkstationConfigPersistentDirectory>(guardedValue, (value) => WorkstationConfigPersistentDirectory.fromMap((value as Map).cast<String, dynamic>())); });
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    readinessChecks = registerOutput<List<WorkstationConfigReadinessCheck>?>('readinessChecks', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<WorkstationConfigReadinessCheck>(guardedValue, (value) => WorkstationConfigReadinessCheck.fromMap((value as Map).cast<String, dynamic>())); });
    replicaZones = registerOutput<List<String>>('replicaZones', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    runningTimeout = registerOutput<String?>('runningTimeout');
    uid = registerOutput<String>('uid');
    workstationClusterId = registerOutput<String>('workstationClusterId');
    workstationConfigId = registerOutput<String>('workstationConfigId');
  }
}
