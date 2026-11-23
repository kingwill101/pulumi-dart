import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_model_development_cluster_args.dart';
import 'ai_model_development_cluster_cluster_event.dart';
import 'ai_model_development_cluster_cluster_status.dart';
import 'ai_model_development_cluster_lustre_export_config.dart';
import 'ai_model_development_cluster_network.dart';
import 'ai_model_development_cluster_node_pool.dart';
import 'ai_model_development_cluster_orchestrator_spec.dart';
import 'ai_model_development_cluster_runtime.dart';
import 'ai_model_development_cluster_runtime_spec.dart';
import 'ai_model_development_cluster_state.dart';

/// A Vertex AI ModelDevelopmentCluster resource that manages a cluster of compute
/// resources with an orchestrator (such as Slurm or GKE) for model development
/// and training workloads.
///
/// &gt; **Warning:** This resource is in beta, and should be used with the terraform-provider-google-beta provider.
/// See Provider Versions for more details on beta resources.
///
/// To get more information about ModelDevelopmentCluster, see:
///
/// * [API documentation](https://cloud.google.com/vertex-ai/docs/reference/rest/v1beta1/projects.locations.modelDevelopmentClusters)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/vertex-ai/docs)
///
///
/// ## Example Usage
///
/// ### Vertex Ai Model Development Cluster Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = gcp.organizations.getProject({});
/// const net = new gcp.compute.Network("net", {
///     name: "mdc-net",
///     autoCreateSubnetworks: false,
/// });
/// const subnet = new gcp.compute.Subnetwork("subnet", {
///     name: "mdc-subnet",
///     ipCidrRange: "10.0.0.0/24",
///     region: "us-east4",
///     network: net.id,
///     privateIpGoogleAccess: true,
/// });
/// const internal = new gcp.compute.Firewall("internal", {
///     name: "mdc-fw",
///     network: net.name,
///     direction: "INGRESS",
///     sourceRanges: ["10.0.0.0/24"],
///     allows: [
///         {
///             protocol: "tcp",
///             ports: ["0-65535"],
///         },
///         {
///             protocol: "udp",
///             ports: ["0-65535"],
///         },
///         {
///             protocol: "icmp",
///         },
///     ],
/// });
/// const home = new gcp.filestore.Instance("home", {
///     name: "mdc-home",
///     location: "us-east4-b",
///     tier: "BASIC_HDD",
///     fileShares: {
///         capacityGb: 1024,
///         name: "share1",
///     },
///     networks: [{
///         network: net.name,
///         modes: ["MODE_IPV4"],
///     }],
/// });
/// const data = new gcp.filestore.Instance("data", {
///     name: "mdc-data",
///     location: "us-east4-b",
///     tier: "BASIC_HDD",
///     fileShares: {
///         capacityGb: 1024,
///         name: "share1",
///     },
///     networks: [{
///         network: net.name,
///         modes: ["MODE_IPV4"],
///     }],
/// });
/// const res = new gcp.compute.Reservation("res", {
///     name: "mdc-res",
///     zone: "us-east4-b",
///     specificReservationRequired: true,
///     specificReservation: {
///         count: 1,
///         instanceProperties: {
///             machineType: "n2-standard-4",
///         },
///     },
/// });
/// const _default = new gcp.vertex.AiModelDevelopmentCluster("default", {
///     region: "us-east4",
///     modelDevelopmentClusterId: "tftest",
///     displayName: "tftest",
///     deletionPolicy: "DELETE",
///     updateMode: "USER_AND_SERVICE",
///     labels: {
///         env: "dev",
///     },
///     runtimeSpec: {
///         serviceAccount: project.then(project => `${project.number}-compute@developer.gserviceaccount.com`),
///     },
///     lustreExportConfig: {
///         destinationBucket: "mdc-backup-bucket",
///         daysOfWeeks: [
///             "MONDAY",
///             "THURSDAY",
///         ],
///         startTime: {
///             hours: 4,
///             minutes: 30,
///         },
///     },
///     network: {
///         network: net.id,
///         subnetwork: subnet.id,
///     },
///     orchestratorSpec: {
///         slurmSpec: {
///             homeDirectoryStorage: home.id,
///             loginNodePoolId: "login",
///             defaultPartitionId: "main",
///             prologBashScripts: [`#!/bin/bash
/// echo prolog`],
///             epilogBashScripts: [`#!/bin/bash
/// echo epilog`],
///             config: {
///                 PriorityType: "priority/multifactor",
///                 PriorityWeightAge: "1000",
///             },
///             nodeSets: [{
///                 nodePoolId: "compute",
///                 config: {
///                     Weight: "10",
///                 },
///             }],
///             partitions: [{
///                 id: "main",
///                 nodePoolIds: [
///                     "compute",
///                     "flexpool",
///                     "respool",
///                 ],
///                 config: {
///                     PriorityTier: "10",
///                 },
///             }],
///         },
///     },
///     nodePools: [
///         {
///             id: "compute",
///             zone: "us-east4-b",
///             provisioningModel: "ON_DEMAND",
///             nodeImage: "projects/clusterdirector-public-images/global/images/family/common-ubuntu-2204-amd64-nvidia-580-slurm-2505-v20251113",
///             startupScript: `#!/bin/bash
/// echo hello`,
///             enablePublicIps: true,
///             filestores: [data.id],
///             labels: {
///                 pool: "compute",
///             },
///             bootDisk: {
///                 bootDiskSizeGb: 100,
///                 bootDiskType: "pd-ssd",
///             },
///             machineSpec: {
///                 machineType: "n2-standard-4",
///             },
///             scalingSpec: {
///                 minNodeCount: 1,
///                 maxNodeCount: 2,
///             },
///         },
///         {
///             id: "flexpool",
///             zone: "us-east4-b",
///             provisioningModel: "FLEX_START",
///             flexStartMaxDuration: "3600s",
///             nodeImage: "projects/clusterdirector-public-images/global/images/family/common-ubuntu-2204-amd64-nvidia-580-slurm-2505-v20251113",
///             startupScript: `#!/bin/bash
/// echo hello`,
///             enablePublicIps: true,
///             filestores: [data.id],
///             labels: {
///                 pool: "flexpool",
///             },
///             bootDisk: {
///                 bootDiskSizeGb: 100,
///                 bootDiskType: "hyperdisk-balanced",
///             },
///             machineSpec: {
///                 machineType: "a3-ultragpu-8g",
///             },
///             scalingSpec: {
///                 minNodeCount: 0,
///                 maxNodeCount: 1,
///             },
///         },
///         {
///             id: "login",
///             zone: "us-east4-b",
///             provisioningModel: "ON_DEMAND",
///             nodeImage: "projects/clusterdirector-public-images/global/images/family/common-ubuntu-2204-amd64-nvidia-580-slurm-2505-v20251113",
///             startupScript: `#!/bin/bash
/// echo hello`,
///             enablePublicIps: true,
///             filestores: [data.id],
///             labels: {
///                 pool: "login",
///             },
///             bootDisk: {
///                 bootDiskSizeGb: 100,
///                 bootDiskType: "pd-ssd",
///             },
///             machineSpec: {
///                 machineType: "n2-standard-4",
///             },
///             scalingSpec: {
///                 minNodeCount: 1,
///                 maxNodeCount: 1,
///             },
///         },
///         {
///             id: "respool",
///             zone: "us-east4-b",
///             provisioningModel: "RESERVATION",
///             nodeImage: "projects/clusterdirector-public-images/global/images/family/common-ubuntu-2204-amd64-nvidia-580-slurm-2505-v20251113",
///             startupScript: `#!/bin/bash
/// echo hello`,
///             enablePublicIps: true,
///             filestores: [data.id],
///             labels: {
///                 pool: "respool",
///             },
///             bootDisk: {
///                 bootDiskSizeGb: 100,
///                 bootDiskType: "pd-ssd",
///             },
///             machineSpec: {
///                 machineType: "n2-standard-4",
///                 reservationAffinity: {
///                     reservationAffinityType: "SPECIFIC_RESERVATION",
///                     values: [res.id],
///                 },
///             },
///             scalingSpec: {
///                 minNodeCount: 0,
///                 maxNodeCount: 1,
///             },
///         },
///     ],
/// }, {
///     dependsOn: [internal],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project = gcp.organizations.get_project()
/// net = gcp.compute.Network("net",
///     name="mdc-net",
///     auto_create_subnetworks=False)
/// subnet = gcp.compute.Subnetwork("subnet",
///     name="mdc-subnet",
///     ip_cidr_range="10.0.0.0/24",
///     region="us-east4",
///     network=net.id,
///     private_ip_google_access=True)
/// internal = gcp.compute.Firewall("internal",
///     name="mdc-fw",
///     network=net.name,
///     direction="INGRESS",
///     source_ranges=["10.0.0.0/24"],
///     allows=[
///         {
///             "protocol": "tcp",
///             "ports": ["0-65535"],
///         },
///         {
///             "protocol": "udp",
///             "ports": ["0-65535"],
///         },
///         {
///             "protocol": "icmp",
///         },
///     ])
/// home = gcp.filestore.Instance("home",
///     name="mdc-home",
///     location="us-east4-b",
///     tier="BASIC_HDD",
///     file_shares={
///         "capacity_gb": 1024,
///         "name": "share1",
///     },
///     networks=[{
///         "network": net.name,
///         "modes": ["MODE_IPV4"],
///     }])
/// data = gcp.filestore.Instance("data",
///     name="mdc-data",
///     location="us-east4-b",
///     tier="BASIC_HDD",
///     file_shares={
///         "capacity_gb": 1024,
///         "name": "share1",
///     },
///     networks=[{
///         "network": net.name,
///         "modes": ["MODE_IPV4"],
///     }])
/// res = gcp.compute.Reservation("res",
///     name="mdc-res",
///     zone="us-east4-b",
///     specific_reservation_required=True,
///     specific_reservation={
///         "count": 1,
///         "instance_properties": {
///             "machine_type": "n2-standard-4",
///         },
///     })
/// default = gcp.vertex.AiModelDevelopmentCluster("default",
///     region="us-east4",
///     model_development_cluster_id="tftest",
///     display_name="tftest",
///     deletion_policy="DELETE",
///     update_mode="USER_AND_SERVICE",
///     labels={
///         "env": "dev",
///     },
///     runtime_spec={
///         "service_account": f"{project.number}-compute@developer.gserviceaccount.com",
///     },
///     lustre_export_config={
///         "destination_bucket": "mdc-backup-bucket",
///         "days_of_weeks": [
///             "MONDAY",
///             "THURSDAY",
///         ],
///         "start_time": {
///             "hours": 4,
///             "minutes": 30,
///         },
///     },
///     network={
///         "network": net.id,
///         "subnetwork": subnet.id,
///     },
///     orchestrator_spec={
///         "slurm_spec": {
///             "home_directory_storage": home.id,
///             "login_node_pool_id": "login",
///             "default_partition_id": "main",
///             "prolog_bash_scripts": ["""#!/bin/bash
/// echo prolog"""],
///             "epilog_bash_scripts": ["""#!/bin/bash
/// echo epilog"""],
///             "config": {
///                 "PriorityType": "priority/multifactor",
///                 "PriorityWeightAge": "1000",
///             },
///             "node_sets": [{
///                 "node_pool_id": "compute",
///                 "config": {
///                     "Weight": "10",
///                 },
///             }],
///             "partitions": [{
///                 "id": "main",
///                 "node_pool_ids": [
///                     "compute",
///                     "flexpool",
///                     "respool",
///                 ],
///                 "config": {
///                     "PriorityTier": "10",
///                 },
///             }],
///         },
///     },
///     node_pools=[
///         {
///             "id": "compute",
///             "zone": "us-east4-b",
///             "provisioning_model": "ON_DEMAND",
///             "node_image": "projects/clusterdirector-public-images/global/images/family/common-ubuntu-2204-amd64-nvidia-580-slurm-2505-v20251113",
///             "startup_script": """#!/bin/bash
/// echo hello""",
///             "enable_public_ips": True,
///             "filestores": [data.id],
///             "labels": {
///                 "pool": "compute",
///             },
///             "boot_disk": {
///                 "boot_disk_size_gb": 100,
///                 "boot_disk_type": "pd-ssd",
///             },
///             "machine_spec": {
///                 "machine_type": "n2-standard-4",
///             },
///             "scaling_spec": {
///                 "min_node_count": 1,
///                 "max_node_count": 2,
///             },
///         },
///         {
///             "id": "flexpool",
///             "zone": "us-east4-b",
///             "provisioning_model": "FLEX_START",
///             "flex_start_max_duration": "3600s",
///             "node_image": "projects/clusterdirector-public-images/global/images/family/common-ubuntu-2204-amd64-nvidia-580-slurm-2505-v20251113",
///             "startup_script": """#!/bin/bash
/// echo hello""",
///             "enable_public_ips": True,
///             "filestores": [data.id],
///             "labels": {
///                 "pool": "flexpool",
///             },
///             "boot_disk": {
///                 "boot_disk_size_gb": 100,
///                 "boot_disk_type": "hyperdisk-balanced",
///             },
///             "machine_spec": {
///                 "machine_type": "a3-ultragpu-8g",
///             },
///             "scaling_spec": {
///                 "min_node_count": 0,
///                 "max_node_count": 1,
///             },
///         },
///         {
///             "id": "login",
///             "zone": "us-east4-b",
///             "provisioning_model": "ON_DEMAND",
///             "node_image": "projects/clusterdirector-public-images/global/images/family/common-ubuntu-2204-amd64-nvidia-580-slurm-2505-v20251113",
///             "startup_script": """#!/bin/bash
/// echo hello""",
///             "enable_public_ips": True,
///             "filestores": [data.id],
///             "labels": {
///                 "pool": "login",
///             },
///             "boot_disk": {
///                 "boot_disk_size_gb": 100,
///                 "boot_disk_type": "pd-ssd",
///             },
///             "machine_spec": {
///                 "machine_type": "n2-standard-4",
///             },
///             "scaling_spec": {
///                 "min_node_count": 1,
///                 "max_node_count": 1,
///             },
///         },
///         {
///             "id": "respool",
///             "zone": "us-east4-b",
///             "provisioning_model": "RESERVATION",
///             "node_image": "projects/clusterdirector-public-images/global/images/family/common-ubuntu-2204-amd64-nvidia-580-slurm-2505-v20251113",
///             "startup_script": """#!/bin/bash
/// echo hello""",
///             "enable_public_ips": True,
///             "filestores": [data.id],
///             "labels": {
///                 "pool": "respool",
///             },
///             "boot_disk": {
///                 "boot_disk_size_gb": 100,
///                 "boot_disk_type": "pd-ssd",
///             },
///             "machine_spec": {
///                 "machine_type": "n2-standard-4",
///                 "reservation_affinity": {
///                     "reservation_affinity_type": "SPECIFIC_RESERVATION",
///                     "values": [res.id],
///                 },
///             },
///             "scaling_spec": {
///                 "min_node_count": 0,
///                 "max_node_count": 1,
///             },
///         },
///     ],
///     opts = pulumi.ResourceOptions(depends_on=[internal]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var project = Gcp.Organizations.GetProject.Invoke();
///
///     var net = new Gcp.Compute.Network("net", new()
///     {
///         Name = "mdc-net",
///         AutoCreateSubnetworks = false,
///     });
///
///     var subnet = new Gcp.Compute.Subnetwork("subnet", new()
///     {
///         Name = "mdc-subnet",
///         IpCidrRange = "10.0.0.0/24",
///         Region = "us-east4",
///         Network = net.Id,
///         PrivateIpGoogleAccess = true,
///     });
///
///     var @internal = new Gcp.Compute.Firewall("internal", new()
///     {
///         Name = "mdc-fw",
///         Network = net.Name,
///         Direction = "INGRESS",
///         SourceRanges = new[]
///         {
///             "10.0.0.0/24",
///         },
///         Allows = new[]
///         {
///             new Gcp.Compute.Inputs.FirewallAllowArgs
///             {
///                 Protocol = "tcp",
///                 Ports = new[]
///                 {
///                     "0-65535",
///                 },
///             },
///             new Gcp.Compute.Inputs.FirewallAllowArgs
///             {
///                 Protocol = "udp",
///                 Ports = new[]
///                 {
///                     "0-65535",
///                 },
///             },
///             new Gcp.Compute.Inputs.FirewallAllowArgs
///             {
///                 Protocol = "icmp",
///             },
///         },
///     });
///
///     var home = new Gcp.Filestore.Instance("home", new()
///     {
///         Name = "mdc-home",
///         Location = "us-east4-b",
///         Tier = "BASIC_HDD",
///         FileShares = new Gcp.Filestore.Inputs.InstanceFileSharesArgs
///         {
///             CapacityGb = 1024,
///             Name = "share1",
///         },
///         Networks = new[]
///         {
///             new Gcp.Filestore.Inputs.InstanceNetworkArgs
///             {
///                 Network = net.Name,
///                 Modes = new[]
///                 {
///                     "MODE_IPV4",
///                 },
///             },
///         },
///     });
///
///     var data = new Gcp.Filestore.Instance("data", new()
///     {
///         Name = "mdc-data",
///         Location = "us-east4-b",
///         Tier = "BASIC_HDD",
///         FileShares = new Gcp.Filestore.Inputs.InstanceFileSharesArgs
///         {
///             CapacityGb = 1024,
///             Name = "share1",
///         },
///         Networks = new[]
///         {
///             new Gcp.Filestore.Inputs.InstanceNetworkArgs
///             {
///                 Network = net.Name,
///                 Modes = new[]
///                 {
///                     "MODE_IPV4",
///                 },
///             },
///         },
///     });
///
///     var res = new Gcp.Compute.Reservation("res", new()
///     {
///         Name = "mdc-res",
///         Zone = "us-east4-b",
///         SpecificReservationRequired = true,
///         SpecificReservation = new Gcp.Compute.Inputs.ReservationSpecificReservationArgs
///         {
///             Count = 1,
///             InstanceProperties = new Gcp.Compute.Inputs.ReservationSpecificReservationInstancePropertiesArgs
///             {
///                 MachineType = "n2-standard-4",
///             },
///         },
///     });
///
///     var @default = new Gcp.Vertex.AiModelDevelopmentCluster("default", new()
///     {
///         Region = "us-east4",
///         ModelDevelopmentClusterId = "tftest",
///         DisplayName = "tftest",
///         DeletionPolicy = "DELETE",
///         UpdateMode = "USER_AND_SERVICE",
///         Labels =
///         {
///             { "env", "dev" },
///         },
///         RuntimeSpec = new Gcp.Vertex.Inputs.AiModelDevelopmentClusterRuntimeSpecArgs
///         {
///             ServiceAccount = $"{project.Apply(getProjectResult => getProjectResult.Number)}-compute@developer.gserviceaccount.com",
///         },
///         LustreExportConfig = new Gcp.Vertex.Inputs.AiModelDevelopmentClusterLustreExportConfigArgs
///         {
///             DestinationBucket = "mdc-backup-bucket",
///             DaysOfWeeks = new[]
///             {
///                 "MONDAY",
///                 "THURSDAY",
///             },
///             StartTime = new Gcp.Vertex.Inputs.AiModelDevelopmentClusterLustreExportConfigStartTimeArgs
///             {
///                 Hours = 4,
///                 Minutes = 30,
///             },
///         },
///         Network = new Gcp.Vertex.Inputs.AiModelDevelopmentClusterNetworkArgs
///         {
///             Network = net.Id,
///             Subnetwork = subnet.Id,
///         },
///         OrchestratorSpec = new Gcp.Vertex.Inputs.AiModelDevelopmentClusterOrchestratorSpecArgs
///         {
///             SlurmSpec = new Gcp.Vertex.Inputs.AiModelDevelopmentClusterOrchestratorSpecSlurmSpecArgs
///             {
///                 HomeDirectoryStorage = home.Id,
///                 LoginNodePoolId = "login",
///                 DefaultPartitionId = "main",
///                 PrologBashScripts = new[]
///                 {
///                     @"#!/bin/bash
/// echo prolog",
///                 },
///                 EpilogBashScripts = new[]
///                 {
///                     @"#!/bin/bash
/// echo epilog",
///                 },
///                 Config =
///                 {
///                     { "PriorityType", "priority/multifactor" },
///                     { "PriorityWeightAge", "1000" },
///                 },
///                 NodeSets = new[]
///                 {
///                     new Gcp.Vertex.Inputs.AiModelDevelopmentClusterOrchestratorSpecSlurmSpecNodeSetArgs
///                     {
///                         NodePoolId = "compute",
///                         Config =
///                         {
///                             { "Weight", "10" },
///                         },
///                     },
///                 },
///                 Partitions = new[]
///                 {
///                     new Gcp.Vertex.Inputs.AiModelDevelopmentClusterOrchestratorSpecSlurmSpecPartitionArgs
///                     {
///                         Id = "main",
///                         NodePoolIds = new[]
///                         {
///                             "compute",
///                             "flexpool",
///                             "respool",
///                         },
///                         Config =
///                         {
///                             { "PriorityTier", "10" },
///                         },
///                     },
///                 },
///             },
///         },
///         NodePools = new[]
///         {
///             new Gcp.Vertex.Inputs.AiModelDevelopmentClusterNodePoolArgs
///             {
///                 Id = "compute",
///                 Zone = "us-east4-b",
///                 ProvisioningModel = "ON_DEMAND",
///                 NodeImage = "projects/clusterdirector-public-images/global/images/family/common-ubuntu-2204-amd64-nvidia-580-slurm-2505-v20251113",
///                 StartupScript = @"#!/bin/bash
/// echo hello",
///                 EnablePublicIps = true,
///                 Filestores = new[]
///                 {
///                     data.Id,
///                 },
///                 Labels =
///                 {
///                     { "pool", "compute" },
///                 },
///                 BootDisk = new Gcp.Vertex.Inputs.AiModelDevelopmentClusterNodePoolBootDiskArgs
///                 {
///                     BootDiskSizeGb = 100,
///                     BootDiskType = "pd-ssd",
///                 },
///                 MachineSpec = new Gcp.Vertex.Inputs.AiModelDevelopmentClusterNodePoolMachineSpecArgs
///                 {
///                     MachineType = "n2-standard-4",
///                 },
///                 ScalingSpec = new Gcp.Vertex.Inputs.AiModelDevelopmentClusterNodePoolScalingSpecArgs
///                 {
///                     MinNodeCount = 1,
///                     MaxNodeCount = 2,
///                 },
///             },
///             new Gcp.Vertex.Inputs.AiModelDevelopmentClusterNodePoolArgs
///             {
///                 Id = "flexpool",
///                 Zone = "us-east4-b",
///                 ProvisioningModel = "FLEX_START",
///                 FlexStartMaxDuration = "3600s",
///                 NodeImage = "projects/clusterdirector-public-images/global/images/family/common-ubuntu-2204-amd64-nvidia-580-slurm-2505-v20251113",
///                 StartupScript = @"#!/bin/bash
/// echo hello",
///                 EnablePublicIps = true,
///                 Filestores = new[]
///                 {
///                     data.Id,
///                 },
///                 Labels =
///                 {
///                     { "pool", "flexpool" },
///                 },
///                 BootDisk = new Gcp.Vertex.Inputs.AiModelDevelopmentClusterNodePoolBootDiskArgs
///                 {
///                     BootDiskSizeGb = 100,
///                     BootDiskType = "hyperdisk-balanced",
///                 },
///                 MachineSpec = new Gcp.Vertex.Inputs.AiModelDevelopmentClusterNodePoolMachineSpecArgs
///                 {
///                     MachineType = "a3-ultragpu-8g",
///                 },
///                 ScalingSpec = new Gcp.Vertex.Inputs.AiModelDevelopmentClusterNodePoolScalingSpecArgs
///                 {
///                     MinNodeCount = 0,
///                     MaxNodeCount = 1,
///                 },
///             },
///             new Gcp.Vertex.Inputs.AiModelDevelopmentClusterNodePoolArgs
///             {
///                 Id = "login",
///                 Zone = "us-east4-b",
///                 ProvisioningModel = "ON_DEMAND",
///                 NodeImage = "projects/clusterdirector-public-images/global/images/family/common-ubuntu-2204-amd64-nvidia-580-slurm-2505-v20251113",
///                 StartupScript = @"#!/bin/bash
/// echo hello",
///                 EnablePublicIps = true,
///                 Filestores = new[]
///                 {
///                     data.Id,
///                 },
///                 Labels =
///                 {
///                     { "pool", "login" },
///                 },
///                 BootDisk = new Gcp.Vertex.Inputs.AiModelDevelopmentClusterNodePoolBootDiskArgs
///                 {
///                     BootDiskSizeGb = 100,
///                     BootDiskType = "pd-ssd",
///                 },
///                 MachineSpec = new Gcp.Vertex.Inputs.AiModelDevelopmentClusterNodePoolMachineSpecArgs
///                 {
///                     MachineType = "n2-standard-4",
///                 },
///                 ScalingSpec = new Gcp.Vertex.Inputs.AiModelDevelopmentClusterNodePoolScalingSpecArgs
///                 {
///                     MinNodeCount = 1,
///                     MaxNodeCount = 1,
///                 },
///             },
///             new Gcp.Vertex.Inputs.AiModelDevelopmentClusterNodePoolArgs
///             {
///                 Id = "respool",
///                 Zone = "us-east4-b",
///                 ProvisioningModel = "RESERVATION",
///                 NodeImage = "projects/clusterdirector-public-images/global/images/family/common-ubuntu-2204-amd64-nvidia-580-slurm-2505-v20251113",
///                 StartupScript = @"#!/bin/bash
/// echo hello",
///                 EnablePublicIps = true,
///                 Filestores = new[]
///                 {
///                     data.Id,
///                 },
///                 Labels =
///                 {
///                     { "pool", "respool" },
///                 },
///                 BootDisk = new Gcp.Vertex.Inputs.AiModelDevelopmentClusterNodePoolBootDiskArgs
///                 {
///                     BootDiskSizeGb = 100,
///                     BootDiskType = "pd-ssd",
///                 },
///                 MachineSpec = new Gcp.Vertex.Inputs.AiModelDevelopmentClusterNodePoolMachineSpecArgs
///                 {
///                     MachineType = "n2-standard-4",
///                     ReservationAffinity = new Gcp.Vertex.Inputs.AiModelDevelopmentClusterNodePoolMachineSpecReservationAffinityArgs
///                     {
///                         ReservationAffinityType = "SPECIFIC_RESERVATION",
///                         Values = new[]
///                         {
///                             res.Id,
///                         },
///                     },
///                 },
///                 ScalingSpec = new Gcp.Vertex.Inputs.AiModelDevelopmentClusterNodePoolScalingSpecArgs
///                 {
///                     MinNodeCount = 0,
///                     MaxNodeCount = 1,
///                 },
///             },
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             @internal,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/filestore"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/vertex"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		net, err := compute.NewNetwork(ctx, "net", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("mdc-net"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		subnet, err := compute.NewSubnetwork(ctx, "subnet", &compute.SubnetworkArgs{
/// 			Name:                  pulumi.String("mdc-subnet"),
/// 			IpCidrRange:           pulumi.String("10.0.0.0/24"),
/// 			Region:                pulumi.String("us-east4"),
/// 			Network:               net.ID(),
/// 			PrivateIpGoogleAccess: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		internal, err := compute.NewFirewall(ctx, "internal", &compute.FirewallArgs{
/// 			Name:      pulumi.String("mdc-fw"),
/// 			Network:   net.Name,
/// 			Direction: pulumi.String("INGRESS"),
/// 			SourceRanges: pulumi.StringArray{
/// 				pulumi.String("10.0.0.0/24"),
/// 			},
/// 			Allows: compute.FirewallAllowArray{
/// 				&compute.FirewallAllowArgs{
/// 					Protocol: pulumi.String("tcp"),
/// 					Ports: pulumi.StringArray{
/// 						pulumi.String("0-65535"),
/// 					},
/// 				},
/// 				&compute.FirewallAllowArgs{
/// 					Protocol: pulumi.String("udp"),
/// 					Ports: pulumi.StringArray{
/// 						pulumi.String("0-65535"),
/// 					},
/// 				},
/// 				&compute.FirewallAllowArgs{
/// 					Protocol: pulumi.String("icmp"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		home, err := filestore.NewInstance(ctx, "home", &filestore.InstanceArgs{
/// 			Name:     pulumi.String("mdc-home"),
/// 			Location: pulumi.String("us-east4-b"),
/// 			Tier:     pulumi.String("BASIC_HDD"),
/// 			FileShares: &filestore.InstanceFileSharesArgs{
/// 				CapacityGb: pulumi.Int(1024),
/// 				Name:       pulumi.String("share1"),
/// 			},
/// 			Networks: filestore.InstanceNetworkArray{
/// 				&filestore.InstanceNetworkArgs{
/// 					Network: net.Name,
/// 					Modes: pulumi.StringArray{
/// 						pulumi.String("MODE_IPV4"),
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		data, err := filestore.NewInstance(ctx, "data", &filestore.InstanceArgs{
/// 			Name:     pulumi.String("mdc-data"),
/// 			Location: pulumi.String("us-east4-b"),
/// 			Tier:     pulumi.String("BASIC_HDD"),
/// 			FileShares: &filestore.InstanceFileSharesArgs{
/// 				CapacityGb: pulumi.Int(1024),
/// 				Name:       pulumi.String("share1"),
/// 			},
/// 			Networks: filestore.InstanceNetworkArray{
/// 				&filestore.InstanceNetworkArgs{
/// 					Network: net.Name,
/// 					Modes: pulumi.StringArray{
/// 						pulumi.String("MODE_IPV4"),
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		res, err := compute.NewReservation(ctx, "res", &compute.ReservationArgs{
/// 			Name:                        pulumi.String("mdc-res"),
/// 			Zone:                        pulumi.String("us-east4-b"),
/// 			SpecificReservationRequired: pulumi.Bool(true),
/// 			SpecificReservation: &compute.ReservationSpecificReservationArgs{
/// 				Count: pulumi.Int(1),
/// 				InstanceProperties: &compute.ReservationSpecificReservationInstancePropertiesArgs{
/// 					MachineType: pulumi.String("n2-standard-4"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = vertex.NewAiModelDevelopmentCluster(ctx, "default", &vertex.AiModelDevelopmentClusterArgs{
/// 			Region:                    pulumi.String("us-east4"),
/// 			ModelDevelopmentClusterId: pulumi.String("tftest"),
/// 			DisplayName:               pulumi.String("tftest"),
/// 			DeletionPolicy:            pulumi.String("DELETE"),
/// 			UpdateMode:                pulumi.String("USER_AND_SERVICE"),
/// 			Labels: pulumi.StringMap{
/// 				"env": pulumi.String("dev"),
/// 			},
/// 			RuntimeSpec: &vertex.AiModelDevelopmentClusterRuntimeSpecArgs{
/// 				ServiceAccount: pulumi.Sprintf("%v-compute@developer.gserviceaccount.com", project.Number),
/// 			},
/// 			LustreExportConfig: &vertex.AiModelDevelopmentClusterLustreExportConfigArgs{
/// 				DestinationBucket: pulumi.String("mdc-backup-bucket"),
/// 				DaysOfWeeks: pulumi.StringArray{
/// 					pulumi.String("MONDAY"),
/// 					pulumi.String("THURSDAY"),
/// 				},
/// 				StartTime: &vertex.AiModelDevelopmentClusterLustreExportConfigStartTimeArgs{
/// 					Hours:   pulumi.Int(4),
/// 					Minutes: pulumi.Int(30),
/// 				},
/// 			},
/// 			Network: &vertex.AiModelDevelopmentClusterNetworkArgs{
/// 				Network:    net.ID(),
/// 				Subnetwork: subnet.ID(),
/// 			},
/// 			OrchestratorSpec: &vertex.AiModelDevelopmentClusterOrchestratorSpecArgs{
/// 				SlurmSpec: &vertex.AiModelDevelopmentClusterOrchestratorSpecSlurmSpecArgs{
/// 					HomeDirectoryStorage: home.ID(),
/// 					LoginNodePoolId:      pulumi.String("login"),
/// 					DefaultPartitionId:   pulumi.String("main"),
/// 					PrologBashScripts: pulumi.StringArray{
/// 						pulumi.String("#!/bin/bash\necho prolog"),
/// 					},
/// 					EpilogBashScripts: pulumi.StringArray{
/// 						pulumi.String("#!/bin/bash\necho epilog"),
/// 					},
/// 					Config: pulumi.StringMap{
/// 						"PriorityType":      pulumi.String("priority/multifactor"),
/// 						"PriorityWeightAge": pulumi.String("1000"),
/// 					},
/// 					NodeSets: vertex.AiModelDevelopmentClusterOrchestratorSpecSlurmSpecNodeSetArray{
/// 						&vertex.AiModelDevelopmentClusterOrchestratorSpecSlurmSpecNodeSetArgs{
/// 							NodePoolId: pulumi.String("compute"),
/// 							Config: pulumi.StringMap{
/// 								"Weight": pulumi.String("10"),
/// 							},
/// 						},
/// 					},
/// 					Partitions: vertex.AiModelDevelopmentClusterOrchestratorSpecSlurmSpecPartitionArray{
/// 						&vertex.AiModelDevelopmentClusterOrchestratorSpecSlurmSpecPartitionArgs{
/// 							Id: pulumi.String("main"),
/// 							NodePoolIds: pulumi.StringArray{
/// 								pulumi.String("compute"),
/// 								pulumi.String("flexpool"),
/// 								pulumi.String("respool"),
/// 							},
/// 							Config: pulumi.StringMap{
/// 								"PriorityTier": pulumi.String("10"),
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 			NodePools: vertex.AiModelDevelopmentClusterNodePoolArray{
/// 				&vertex.AiModelDevelopmentClusterNodePoolArgs{
/// 					Id:                pulumi.String("compute"),
/// 					Zone:              pulumi.String("us-east4-b"),
/// 					ProvisioningModel: pulumi.String("ON_DEMAND"),
/// 					NodeImage:         pulumi.String("projects/clusterdirector-public-images/global/images/family/common-ubuntu-2204-amd64-nvidia-580-slurm-2505-v20251113"),
/// 					StartupScript:     pulumi.String("#!/bin/bash\necho hello"),
/// 					EnablePublicIps:   pulumi.Bool(true),
/// 					Filestores: pulumi.StringArray{
/// 						data.ID(),
/// 					},
/// 					Labels: pulumi.StringMap{
/// 						"pool": pulumi.String("compute"),
/// 					},
/// 					BootDisk: &vertex.AiModelDevelopmentClusterNodePoolBootDiskArgs{
/// 						BootDiskSizeGb: pulumi.Int(100),
/// 						BootDiskType:   pulumi.String("pd-ssd"),
/// 					},
/// 					MachineSpec: &vertex.AiModelDevelopmentClusterNodePoolMachineSpecArgs{
/// 						MachineType: pulumi.String("n2-standard-4"),
/// 					},
/// 					ScalingSpec: &vertex.AiModelDevelopmentClusterNodePoolScalingSpecArgs{
/// 						MinNodeCount: pulumi.Int(1),
/// 						MaxNodeCount: pulumi.Int(2),
/// 					},
/// 				},
/// 				&vertex.AiModelDevelopmentClusterNodePoolArgs{
/// 					Id:                   pulumi.String("flexpool"),
/// 					Zone:                 pulumi.String("us-east4-b"),
/// 					ProvisioningModel:    pulumi.String("FLEX_START"),
/// 					FlexStartMaxDuration: pulumi.String("3600s"),
/// 					NodeImage:            pulumi.String("projects/clusterdirector-public-images/global/images/family/common-ubuntu-2204-amd64-nvidia-580-slurm-2505-v20251113"),
/// 					StartupScript:        pulumi.String("#!/bin/bash\necho hello"),
/// 					EnablePublicIps:      pulumi.Bool(true),
/// 					Filestores: pulumi.StringArray{
/// 						data.ID(),
/// 					},
/// 					Labels: pulumi.StringMap{
/// 						"pool": pulumi.String("flexpool"),
/// 					},
/// 					BootDisk: &vertex.AiModelDevelopmentClusterNodePoolBootDiskArgs{
/// 						BootDiskSizeGb: pulumi.Int(100),
/// 						BootDiskType:   pulumi.String("hyperdisk-balanced"),
/// 					},
/// 					MachineSpec: &vertex.AiModelDevelopmentClusterNodePoolMachineSpecArgs{
/// 						MachineType: pulumi.String("a3-ultragpu-8g"),
/// 					},
/// 					ScalingSpec: &vertex.AiModelDevelopmentClusterNodePoolScalingSpecArgs{
/// 						MinNodeCount: pulumi.Int(0),
/// 						MaxNodeCount: pulumi.Int(1),
/// 					},
/// 				},
/// 				&vertex.AiModelDevelopmentClusterNodePoolArgs{
/// 					Id:                pulumi.String("login"),
/// 					Zone:              pulumi.String("us-east4-b"),
/// 					ProvisioningModel: pulumi.String("ON_DEMAND"),
/// 					NodeImage:         pulumi.String("projects/clusterdirector-public-images/global/images/family/common-ubuntu-2204-amd64-nvidia-580-slurm-2505-v20251113"),
/// 					StartupScript:     pulumi.String("#!/bin/bash\necho hello"),
/// 					EnablePublicIps:   pulumi.Bool(true),
/// 					Filestores: pulumi.StringArray{
/// 						data.ID(),
/// 					},
/// 					Labels: pulumi.StringMap{
/// 						"pool": pulumi.String("login"),
/// 					},
/// 					BootDisk: &vertex.AiModelDevelopmentClusterNodePoolBootDiskArgs{
/// 						BootDiskSizeGb: pulumi.Int(100),
/// 						BootDiskType:   pulumi.String("pd-ssd"),
/// 					},
/// 					MachineSpec: &vertex.AiModelDevelopmentClusterNodePoolMachineSpecArgs{
/// 						MachineType: pulumi.String("n2-standard-4"),
/// 					},
/// 					ScalingSpec: &vertex.AiModelDevelopmentClusterNodePoolScalingSpecArgs{
/// 						MinNodeCount: pulumi.Int(1),
/// 						MaxNodeCount: pulumi.Int(1),
/// 					},
/// 				},
/// 				&vertex.AiModelDevelopmentClusterNodePoolArgs{
/// 					Id:                pulumi.String("respool"),
/// 					Zone:              pulumi.String("us-east4-b"),
/// 					ProvisioningModel: pulumi.String("RESERVATION"),
/// 					NodeImage:         pulumi.String("projects/clusterdirector-public-images/global/images/family/common-ubuntu-2204-amd64-nvidia-580-slurm-2505-v20251113"),
/// 					StartupScript:     pulumi.String("#!/bin/bash\necho hello"),
/// 					EnablePublicIps:   pulumi.Bool(true),
/// 					Filestores: pulumi.StringArray{
/// 						data.ID(),
/// 					},
/// 					Labels: pulumi.StringMap{
/// 						"pool": pulumi.String("respool"),
/// 					},
/// 					BootDisk: &vertex.AiModelDevelopmentClusterNodePoolBootDiskArgs{
/// 						BootDiskSizeGb: pulumi.Int(100),
/// 						BootDiskType:   pulumi.String("pd-ssd"),
/// 					},
/// 					MachineSpec: &vertex.AiModelDevelopmentClusterNodePoolMachineSpecArgs{
/// 						MachineType: pulumi.String("n2-standard-4"),
/// 						ReservationAffinity: &vertex.AiModelDevelopmentClusterNodePoolMachineSpecReservationAffinityArgs{
/// 							ReservationAffinityType: pulumi.String("SPECIFIC_RESERVATION"),
/// 							Values: pulumi.StringArray{
/// 								res.ID(),
/// 							},
/// 						},
/// 					},
/// 					ScalingSpec: &vertex.AiModelDevelopmentClusterNodePoolScalingSpecArgs{
/// 						MinNodeCount: pulumi.Int(0),
/// 						MaxNodeCount: pulumi.Int(1),
/// 					},
/// 				},
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			internal,
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
/// resource "gcp_compute_network" "net" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   name                    = "mdc-net"
///   auto_create_subnetworks = false
/// }
/// resource "gcp_compute_subnetwork" "subnet" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   name                     = "mdc-subnet"
///   ip_cidr_range            = "10.0.0.0/24"
///   region                   = "us-east4"
///   network                  = gcp_compute_network.net.id
///   private_ip_google_access = true
/// }
/// resource "gcp_compute_firewall" "internal" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   name          = "mdc-fw"
///   network       = gcp_compute_network.net.name
///   direction     = "INGRESS"
///   source_ranges = ["10.0.0.0/24"]
///   allows {
///     protocol = "tcp"
///     ports    = ["0-65535"]
///   }
///   allows {
///     protocol = "udp"
///     ports    = ["0-65535"]
///   }
///   allows {
///     protocol = "icmp"
///   }
/// }
/// resource "gcp_filestore_instance" "home" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   name     = "mdc-home"
///   location = "us-east4-b"
///   tier     = "BASIC_HDD"
///   file_shares = {
///     capacity_gb = 1024
///     name        = "share1"
///   }
///   networks {
///     network = gcp_compute_network.net.name
///     modes   = ["MODE_IPV4"]
///   }
/// }
/// resource "gcp_filestore_instance" "data" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   name     = "mdc-data"
///   location = "us-east4-b"
///   tier     = "BASIC_HDD"
///   file_shares = {
///     capacity_gb = 1024
///     name        = "share1"
///   }
///   networks {
///     network = gcp_compute_network.net.name
///     modes   = ["MODE_IPV4"]
///   }
/// }
/// resource "gcp_compute_reservation" "res" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   name                          = "mdc-res"
///   zone                          = "us-east4-b"
///   specific_reservation_required = true
///   specific_reservation = {
///     count = 1
///     instance_properties = {
///       machine_type = "n2-standard-4"
///     }
///   }
/// }
/// resource "gcp_vertex_ai_model_development_cluster" "default" {
///   depends_on = [gcp_compute_firewall.internal]
///   lifecycle {
///     create_before_destroy = true
///   }
///   region                       = "us-east4"
///   model_development_cluster_id = "tftest"
///   display_name                 = "tftest"
///   deletion_policy              = "DELETE"
///   update_mode                  = "USER_AND_SERVICE"
///   labels = {
///     "env" = "dev"
///   }
///   runtime_spec = {
///     service_account ="${data.gcp_organizations_project.project.number}-compute@developer.gserviceaccount.com"
///   }
///   lustre_export_config = {
///     destination_bucket = "mdc-backup-bucket"
///     days_of_weeks      = ["MONDAY", "THURSDAY"]
///     start_time = {
///       hours   = 4
///       minutes = 30
///     }
///   }
///   network = {
///     network    = gcp_compute_network.net.id
///     subnetwork = gcp_compute_subnetwork.subnet.id
///   }
///   orchestrator_spec = {
///     slurm_spec = {
///       home_directory_storage = gcp_filestore_instance.home.id
///       login_node_pool_id     = "login"
///       default_partition_id   = "main"
///       prolog_bash_scripts    = ["#!/bin/bash\necho prolog"]
///       epilog_bash_scripts    = ["#!/bin/bash\necho epilog"]
///       config = {
///         "PriorityType"      = "priority/multifactor"
///         "PriorityWeightAge" = "1000"
///       }
///       node_sets = [{
///         node_pool_id = "compute"
///         config = {
///           "Weight" = "10"
///         }
///       }]
///       partitions = [{
///         id            = "main"
///         node_pool_ids = ["compute", "flexpool", "respool"]
///         config = {
///           "PriorityTier" = "10"
///         }
///       }]
///     }
///   }
///   node_pools {
///     id                 = "compute"
///     zone               = "us-east4-b"
///     provisioning_model = "ON_DEMAND"
///     node_image         = "projects/clusterdirector-public-images/global/images/family/common-ubuntu-2204-amd64-nvidia-580-slurm-2505-v20251113"
///     startup_script     = "#!/bin/bash\necho hello"
///     enable_public_ips  = true
///     filestores         = [gcp_filestore_instance.data.id]
///     labels = {
///       "pool" = "compute"
///     }
///     boot_disk = {
///       boot_disk_size_gb = 100
///       boot_disk_type    = "pd-ssd"
///     }
///     machine_spec = {
///       machine_type = "n2-standard-4"
///     }
///     scaling_spec = {
///       min_node_count = 1
///       max_node_count = 2
///     }
///   }
///   node_pools {
///     id                      = "flexpool"
///     zone                    = "us-east4-b"
///     provisioning_model      = "FLEX_START"
///     flex_start_max_duration = "3600s"
///     node_image              = "projects/clusterdirector-public-images/global/images/family/common-ubuntu-2204-amd64-nvidia-580-slurm-2505-v20251113"
///     startup_script          = "#!/bin/bash\necho hello"
///     enable_public_ips       = true
///     filestores              = [gcp_filestore_instance.data.id]
///     labels = {
///       "pool" = "flexpool"
///     }
///     boot_disk = {
///       boot_disk_size_gb = 100
///       boot_disk_type    = "hyperdisk-balanced"
///     }
///     machine_spec = {
///       machine_type = "a3-ultragpu-8g"
///     }
///     scaling_spec = {
///       min_node_count = 0
///       max_node_count = 1
///     }
///   }
///   node_pools {
///     id                 = "login"
///     zone               = "us-east4-b"
///     provisioning_model = "ON_DEMAND"
///     node_image         = "projects/clusterdirector-public-images/global/images/family/common-ubuntu-2204-amd64-nvidia-580-slurm-2505-v20251113"
///     startup_script     = "#!/bin/bash\necho hello"
///     enable_public_ips  = true
///     filestores         = [gcp_filestore_instance.data.id]
///     labels = {
///       "pool" = "login"
///     }
///     boot_disk = {
///       boot_disk_size_gb = 100
///       boot_disk_type    = "pd-ssd"
///     }
///     machine_spec = {
///       machine_type = "n2-standard-4"
///     }
///     scaling_spec = {
///       min_node_count = 1
///       max_node_count = 1
///     }
///   }
///   node_pools {
///     id                 = "respool"
///     zone               = "us-east4-b"
///     provisioning_model = "RESERVATION"
///     node_image         = "projects/clusterdirector-public-images/global/images/family/common-ubuntu-2204-amd64-nvidia-580-slurm-2505-v20251113"
///     startup_script     = "#!/bin/bash\necho hello"
///     enable_public_ips  = true
///     filestores         = [gcp_filestore_instance.data.id]
///     labels = {
///       "pool" = "respool"
///     }
///     boot_disk = {
///       boot_disk_size_gb = 100
///       boot_disk_type    = "pd-ssd"
///     }
///     machine_spec = {
///       machine_type = "n2-standard-4"
///       reservation_affinity = {
///         reservation_affinity_type = "SPECIFIC_RESERVATION"
///         values                    = [gcp_compute_reservation.res.id]
///       }
///     }
///     scaling_spec = {
///       min_node_count = 0
///       max_node_count = 1
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
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.compute.Subnetwork;
/// import com.pulumi.gcp.compute.SubnetworkArgs;
/// import com.pulumi.gcp.compute.Firewall;
/// import com.pulumi.gcp.compute.FirewallArgs;
/// import com.pulumi.gcp.compute.inputs.FirewallAllowArgs;
/// import com.pulumi.gcp.filestore.Instance;
/// import com.pulumi.gcp.filestore.InstanceArgs;
/// import com.pulumi.gcp.filestore.inputs.InstanceFileSharesArgs;
/// import com.pulumi.gcp.filestore.inputs.InstanceNetworkArgs;
/// import com.pulumi.gcp.compute.Reservation;
/// import com.pulumi.gcp.compute.ReservationArgs;
/// import com.pulumi.gcp.compute.inputs.ReservationSpecificReservationArgs;
/// import com.pulumi.gcp.compute.inputs.ReservationSpecificReservationInstancePropertiesArgs;
/// import com.pulumi.gcp.vertex.AiModelDevelopmentCluster;
/// import com.pulumi.gcp.vertex.AiModelDevelopmentClusterArgs;
/// import com.pulumi.gcp.vertex.inputs.AiModelDevelopmentClusterRuntimeSpecArgs;
/// import com.pulumi.gcp.vertex.inputs.AiModelDevelopmentClusterLustreExportConfigArgs;
/// import com.pulumi.gcp.vertex.inputs.AiModelDevelopmentClusterLustreExportConfigStartTimeArgs;
/// import com.pulumi.gcp.vertex.inputs.AiModelDevelopmentClusterNetworkArgs;
/// import com.pulumi.gcp.vertex.inputs.AiModelDevelopmentClusterOrchestratorSpecArgs;
/// import com.pulumi.gcp.vertex.inputs.AiModelDevelopmentClusterOrchestratorSpecSlurmSpecArgs;
/// import com.pulumi.gcp.vertex.inputs.AiModelDevelopmentClusterOrchestratorSpecSlurmSpecNodeSetArgs;
/// import com.pulumi.gcp.vertex.inputs.AiModelDevelopmentClusterOrchestratorSpecSlurmSpecPartitionArgs;
/// import com.pulumi.gcp.vertex.inputs.AiModelDevelopmentClusterNodePoolArgs;
/// import com.pulumi.gcp.vertex.inputs.AiModelDevelopmentClusterNodePoolBootDiskArgs;
/// import com.pulumi.gcp.vertex.inputs.AiModelDevelopmentClusterNodePoolMachineSpecArgs;
/// import com.pulumi.gcp.vertex.inputs.AiModelDevelopmentClusterNodePoolScalingSpecArgs;
/// import com.pulumi.gcp.vertex.inputs.AiModelDevelopmentClusterNodePoolMachineSpecReservationAffinityArgs;
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
///         final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
///             .build());
///
///         var net = new Network("net", NetworkArgs.builder()
///             .name("mdc-net")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var subnet = new Subnetwork("subnet", SubnetworkArgs.builder()
///             .name("mdc-subnet")
///             .ipCidrRange("10.0.0.0/24")
///             .region("us-east4")
///             .network(net.id())
///             .privateIpGoogleAccess(true)
///             .build());
///
///         var internal = new Firewall("internal", FirewallArgs.builder()
///             .name("mdc-fw")
///             .network(net.name())
///             .direction("INGRESS")
///             .sourceRanges("10.0.0.0/24")
///             .allows(
///                 FirewallAllowArgs.builder()
///                     .protocol("tcp")
///                     .ports("0-65535")
///                     .build(),
///                 FirewallAllowArgs.builder()
///                     .protocol("udp")
///                     .ports("0-65535")
///                     .build(),
///                 FirewallAllowArgs.builder()
///                     .protocol("icmp")
///                     .build())
///             .build());
///
///         var home = new Instance("home", InstanceArgs.builder()
///             .name("mdc-home")
///             .location("us-east4-b")
///             .tier("BASIC_HDD")
///             .fileShares(InstanceFileSharesArgs.builder()
///                 .capacityGb(1024)
///                 .name("share1")
///                 .build())
///             .networks(InstanceNetworkArgs.builder()
///                 .network(net.name())
///                 .modes("MODE_IPV4")
///                 .build())
///             .build());
///
///         var data = new Instance("data", InstanceArgs.builder()
///             .name("mdc-data")
///             .location("us-east4-b")
///             .tier("BASIC_HDD")
///             .fileShares(InstanceFileSharesArgs.builder()
///                 .capacityGb(1024)
///                 .name("share1")
///                 .build())
///             .networks(InstanceNetworkArgs.builder()
///                 .network(net.name())
///                 .modes("MODE_IPV4")
///                 .build())
///             .build());
///
///         var res = new Reservation("res", ReservationArgs.builder()
///             .name("mdc-res")
///             .zone("us-east4-b")
///             .specificReservationRequired(true)
///             .specificReservation(ReservationSpecificReservationArgs.builder()
///                 .count(1)
///                 .instanceProperties(ReservationSpecificReservationInstancePropertiesArgs.builder()
///                     .machineType("n2-standard-4")
///                     .build())
///                 .build())
///             .build());
///
///         var default_ = new AiModelDevelopmentCluster("default", AiModelDevelopmentClusterArgs.builder()
///             .region("us-east4")
///             .modelDevelopmentClusterId("tftest")
///             .displayName("tftest")
///             .deletionPolicy("DELETE")
///             .updateMode("USER_AND_SERVICE")
///             .labels(Map.of("env", "dev"))
///             .runtimeSpec(AiModelDevelopmentClusterRuntimeSpecArgs.builder()
///                 .serviceAccount(String.format("%s-compute@developer.gserviceaccount.com", project.number()))
///                 .build())
///             .lustreExportConfig(AiModelDevelopmentClusterLustreExportConfigArgs.builder()
///                 .destinationBucket("mdc-backup-bucket")
///                 .daysOfWeeks(
///                     "MONDAY",
///                     "THURSDAY")
///                 .startTime(AiModelDevelopmentClusterLustreExportConfigStartTimeArgs.builder()
///                     .hours(4)
///                     .minutes(30)
///                     .build())
///                 .build())
///             .network(AiModelDevelopmentClusterNetworkArgs.builder()
///                 .network(net.id())
///                 .subnetwork(subnet.id())
///                 .build())
///             .orchestratorSpec(AiModelDevelopmentClusterOrchestratorSpecArgs.builder()
///                 .slurmSpec(AiModelDevelopmentClusterOrchestratorSpecSlurmSpecArgs.builder()
///                     .homeDirectoryStorage(home.id())
///                     .loginNodePoolId("login")
///                     .defaultPartitionId("main")
///                     .prologBashScripts("""
/// #!/bin/bash
/// echo prolog                    """)
///                     .epilogBashScripts("""
/// #!/bin/bash
/// echo epilog                    """)
///                     .config(Map.ofEntries(
///                         Map.entry("PriorityType", "priority/multifactor"),
///                         Map.entry("PriorityWeightAge", "1000")
///                     ))
///                     .nodeSets(AiModelDevelopmentClusterOrchestratorSpecSlurmSpecNodeSetArgs.builder()
///                         .nodePoolId("compute")
///                         .config(Map.of("Weight", "10"))
///                         .build())
///                     .partitions(AiModelDevelopmentClusterOrchestratorSpecSlurmSpecPartitionArgs.builder()
///                         .id("main")
///                         .nodePoolIds(
///                             "compute",
///                             "flexpool",
///                             "respool")
///                         .config(Map.of("PriorityTier", "10"))
///                         .build())
///                     .build())
///                 .build())
///             .nodePools(
///                 AiModelDevelopmentClusterNodePoolArgs.builder()
///                     .id("compute")
///                     .zone("us-east4-b")
///                     .provisioningModel("ON_DEMAND")
///                     .nodeImage("projects/clusterdirector-public-images/global/images/family/common-ubuntu-2204-amd64-nvidia-580-slurm-2505-v20251113")
///                     .startupScript("""
/// #!/bin/bash
/// echo hello                    """)
///                     .enablePublicIps(true)
///                     .filestores(data.id())
///                     .labels(Map.of("pool", "compute"))
///                     .bootDisk(AiModelDevelopmentClusterNodePoolBootDiskArgs.builder()
///                         .bootDiskSizeGb(100)
///                         .bootDiskType("pd-ssd")
///                         .build())
///                     .machineSpec(AiModelDevelopmentClusterNodePoolMachineSpecArgs.builder()
///                         .machineType("n2-standard-4")
///                         .build())
///                     .scalingSpec(AiModelDevelopmentClusterNodePoolScalingSpecArgs.builder()
///                         .minNodeCount(1)
///                         .maxNodeCount(2)
///                         .build())
///                     .build(),
///                 AiModelDevelopmentClusterNodePoolArgs.builder()
///                     .id("flexpool")
///                     .zone("us-east4-b")
///                     .provisioningModel("FLEX_START")
///                     .flexStartMaxDuration("3600s")
///                     .nodeImage("projects/clusterdirector-public-images/global/images/family/common-ubuntu-2204-amd64-nvidia-580-slurm-2505-v20251113")
///                     .startupScript("""
/// #!/bin/bash
/// echo hello                    """)
///                     .enablePublicIps(true)
///                     .filestores(data.id())
///                     .labels(Map.of("pool", "flexpool"))
///                     .bootDisk(AiModelDevelopmentClusterNodePoolBootDiskArgs.builder()
///                         .bootDiskSizeGb(100)
///                         .bootDiskType("hyperdisk-balanced")
///                         .build())
///                     .machineSpec(AiModelDevelopmentClusterNodePoolMachineSpecArgs.builder()
///                         .machineType("a3-ultragpu-8g")
///                         .build())
///                     .scalingSpec(AiModelDevelopmentClusterNodePoolScalingSpecArgs.builder()
///                         .minNodeCount(0)
///                         .maxNodeCount(1)
///                         .build())
///                     .build(),
///                 AiModelDevelopmentClusterNodePoolArgs.builder()
///                     .id("login")
///                     .zone("us-east4-b")
///                     .provisioningModel("ON_DEMAND")
///                     .nodeImage("projects/clusterdirector-public-images/global/images/family/common-ubuntu-2204-amd64-nvidia-580-slurm-2505-v20251113")
///                     .startupScript("""
/// #!/bin/bash
/// echo hello                    """)
///                     .enablePublicIps(true)
///                     .filestores(data.id())
///                     .labels(Map.of("pool", "login"))
///                     .bootDisk(AiModelDevelopmentClusterNodePoolBootDiskArgs.builder()
///                         .bootDiskSizeGb(100)
///                         .bootDiskType("pd-ssd")
///                         .build())
///                     .machineSpec(AiModelDevelopmentClusterNodePoolMachineSpecArgs.builder()
///                         .machineType("n2-standard-4")
///                         .build())
///                     .scalingSpec(AiModelDevelopmentClusterNodePoolScalingSpecArgs.builder()
///                         .minNodeCount(1)
///                         .maxNodeCount(1)
///                         .build())
///                     .build(),
///                 AiModelDevelopmentClusterNodePoolArgs.builder()
///                     .id("respool")
///                     .zone("us-east4-b")
///                     .provisioningModel("RESERVATION")
///                     .nodeImage("projects/clusterdirector-public-images/global/images/family/common-ubuntu-2204-amd64-nvidia-580-slurm-2505-v20251113")
///                     .startupScript("""
/// #!/bin/bash
/// echo hello                    """)
///                     .enablePublicIps(true)
///                     .filestores(data.id())
///                     .labels(Map.of("pool", "respool"))
///                     .bootDisk(AiModelDevelopmentClusterNodePoolBootDiskArgs.builder()
///                         .bootDiskSizeGb(100)
///                         .bootDiskType("pd-ssd")
///                         .build())
///                     .machineSpec(AiModelDevelopmentClusterNodePoolMachineSpecArgs.builder()
///                         .machineType("n2-standard-4")
///                         .reservationAffinity(AiModelDevelopmentClusterNodePoolMachineSpecReservationAffinityArgs.builder()
///                             .reservationAffinityType("SPECIFIC_RESERVATION")
///                             .values(res.id())
///                             .build())
///                         .build())
///                     .scalingSpec(AiModelDevelopmentClusterNodePoolScalingSpecArgs.builder()
///                         .minNodeCount(0)
///                         .maxNodeCount(1)
///                         .build())
///                     .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(internal)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   net:
///     type: gcp:compute:Network
///     properties:
///       name: mdc-net
///       autoCreateSubnetworks: false
///   subnet:
///     type: gcp:compute:Subnetwork
///     properties:
///       name: mdc-subnet
///       ipCidrRange: 10.0.0.0/24
///       region: us-east4
///       network: ${net.id}
///       privateIpGoogleAccess: true
///   internal:
///     type: gcp:compute:Firewall
///     properties:
///       name: mdc-fw
///       network: ${net.name}
///       direction: INGRESS
///       sourceRanges:
///         - 10.0.0.0/24
///       allows:
///         - protocol: tcp
///           ports:
///             - 0-65535
///         - protocol: udp
///           ports:
///             - 0-65535
///         - protocol: icmp
///   home:
///     type: gcp:filestore:Instance
///     properties:
///       name: mdc-home
///       location: us-east4-b
///       tier: BASIC_HDD
///       fileShares:
///         capacityGb: 1024
///         name: share1
///       networks:
///         - network: ${net.name}
///           modes:
///             - MODE_IPV4
///   data:
///     type: gcp:filestore:Instance
///     properties:
///       name: mdc-data
///       location: us-east4-b
///       tier: BASIC_HDD
///       fileShares:
///         capacityGb: 1024
///         name: share1
///       networks:
///         - network: ${net.name}
///           modes:
///             - MODE_IPV4
///   res:
///     type: gcp:compute:Reservation
///     properties:
///       name: mdc-res
///       zone: us-east4-b
///       specificReservationRequired: true
///       specificReservation:
///         count: 1
///         instanceProperties:
///           machineType: n2-standard-4
///   default:
///     type: gcp:vertex:AiModelDevelopmentCluster
///     properties:
///       region: us-east4
///       modelDevelopmentClusterId: tftest
///       displayName: tftest
///       deletionPolicy: DELETE
///       updateMode: USER_AND_SERVICE
///       labels:
///         env: dev
///       runtimeSpec:
///         serviceAccount: ${project.number}-compute@developer.gserviceaccount.com
///       lustreExportConfig:
///         destinationBucket: mdc-backup-bucket
///         daysOfWeeks:
///           - MONDAY
///           - THURSDAY
///         startTime:
///           hours: 4
///           minutes: 30
///       network:
///         network: ${net.id}
///         subnetwork: ${subnet.id}
///       orchestratorSpec:
///         slurmSpec:
///           homeDirectoryStorage: ${home.id}
///           loginNodePoolId: login
///           defaultPartitionId: main
///           prologBashScripts:
///             - |-
///               #!/bin/bash
///               echo prolog
///           epilogBashScripts:
///             - |-
///               #!/bin/bash
///               echo epilog
///           config:
///             PriorityType: priority/multifactor
///             PriorityWeightAge: '1000'
///           nodeSets:
///             - nodePoolId: compute
///               config:
///                 Weight: '10'
///           partitions:
///             - id: main
///               nodePoolIds:
///                 - compute
///                 - flexpool
///                 - respool
///               config:
///                 PriorityTier: '10'
///       nodePools:
///         - id: compute
///           zone: us-east4-b
///           provisioningModel: ON_DEMAND
///           nodeImage: projects/clusterdirector-public-images/global/images/family/common-ubuntu-2204-amd64-nvidia-580-slurm-2505-v20251113
///           startupScript: |-
///             #!/bin/bash
///             echo hello
///           enablePublicIps: true
///           filestores:
///             - ${data.id}
///           labels:
///             pool: compute
///           bootDisk:
///             bootDiskSizeGb: 100
///             bootDiskType: pd-ssd
///           machineSpec:
///             machineType: n2-standard-4
///           scalingSpec:
///             minNodeCount: 1
///             maxNodeCount: 2
///         - id: flexpool
///           zone: us-east4-b
///           provisioningModel: FLEX_START
///           flexStartMaxDuration: 3600s
///           nodeImage: projects/clusterdirector-public-images/global/images/family/common-ubuntu-2204-amd64-nvidia-580-slurm-2505-v20251113
///           startupScript: |-
///             #!/bin/bash
///             echo hello
///           enablePublicIps: true
///           filestores:
///             - ${data.id}
///           labels:
///             pool: flexpool
///           bootDisk:
///             bootDiskSizeGb: 100
///             bootDiskType: hyperdisk-balanced
///           machineSpec:
///             machineType: a3-ultragpu-8g
///           scalingSpec:
///             minNodeCount: 0
///             maxNodeCount: 1
///         - id: login
///           zone: us-east4-b
///           provisioningModel: ON_DEMAND
///           nodeImage: projects/clusterdirector-public-images/global/images/family/common-ubuntu-2204-amd64-nvidia-580-slurm-2505-v20251113
///           startupScript: |-
///             #!/bin/bash
///             echo hello
///           enablePublicIps: true
///           filestores:
///             - ${data.id}
///           labels:
///             pool: login
///           bootDisk:
///             bootDiskSizeGb: 100
///             bootDiskType: pd-ssd
///           machineSpec:
///             machineType: n2-standard-4
///           scalingSpec:
///             minNodeCount: 1
///             maxNodeCount: 1
///         - id: respool
///           zone: us-east4-b
///           provisioningModel: RESERVATION
///           nodeImage: projects/clusterdirector-public-images/global/images/family/common-ubuntu-2204-amd64-nvidia-580-slurm-2505-v20251113
///           startupScript: |-
///             #!/bin/bash
///             echo hello
///           enablePublicIps: true
///           filestores:
///             - ${data.id}
///           labels:
///             pool: respool
///           bootDisk:
///             bootDiskSizeGb: 100
///             bootDiskType: pd-ssd
///           machineSpec:
///             machineType: n2-standard-4
///             reservationAffinity:
///               reservationAffinityType: SPECIFIC_RESERVATION
///               values:
///                 - ${res.id}
///           scalingSpec:
///             minNodeCount: 0
///             maxNodeCount: 1
///     options:
///       dependsOn:
///         - ${internal}
/// variables:
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
///
/// ### Vertex Ai Model Development Cluster Gke
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const net = new gcp.compute.Network("net", {
///     name: "mdc-gke-net",
///     autoCreateSubnetworks: false,
/// });
/// const subnet = new gcp.compute.Subnetwork("subnet", {
///     name: "mdc-gke-subnet",
///     ipCidrRange: "10.0.0.0/24",
///     region: "us-east1",
///     network: net.id,
///     privateIpGoogleAccess: true,
/// });
/// const internal = new gcp.compute.Firewall("internal", {
///     name: "mdc-gke-fw",
///     network: net.name,
///     direction: "INGRESS",
///     sourceRanges: ["10.0.0.0/24"],
///     allows: [
///         {
///             protocol: "tcp",
///             ports: ["0-65535"],
///         },
///         {
///             protocol: "udp",
///             ports: ["0-65535"],
///         },
///         {
///             protocol: "icmp",
///         },
///     ],
/// });
/// const _default = new gcp.vertex.AiModelDevelopmentCluster("default", {
///     region: "us-east1",
///     modelDevelopmentClusterId: "tftest-gke",
///     displayName: "tftest-gke",
///     deletionPolicy: "DELETE",
///     labels: {
///         env: "dev",
///     },
///     network: {
///         network: net.id,
///         subnetwork: subnet.id,
///     },
///     orchestratorSpec: {
///         kubernetesSpec: {
///             nodePoolIds: ["cpu1"],
///             enableIpAlias: true,
///             publicAccessEndpointEnabled: true,
///             controlPlaneVersion: "-",
///             nodePoolVersions: {
///                 cpu1: "-",
///             },
///         },
///     },
///     nodePools: [{
///         id: "cpu1",
///         zone: "us-east1-b",
///         provisioningModel: "ON_DEMAND",
///         bootDisk: {
///             bootDiskSizeGb: 100,
///             bootDiskType: "pd-standard",
///         },
///         machineSpec: {
///             machineType: "n2-standard-4",
///         },
///         scalingSpec: {
///             minNodeCount: 1,
///             maxNodeCount: 2,
///         },
///     }],
/// }, {
///     dependsOn: [internal],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// net = gcp.compute.Network("net",
///     name="mdc-gke-net",
///     auto_create_subnetworks=False)
/// subnet = gcp.compute.Subnetwork("subnet",
///     name="mdc-gke-subnet",
///     ip_cidr_range="10.0.0.0/24",
///     region="us-east1",
///     network=net.id,
///     private_ip_google_access=True)
/// internal = gcp.compute.Firewall("internal",
///     name="mdc-gke-fw",
///     network=net.name,
///     direction="INGRESS",
///     source_ranges=["10.0.0.0/24"],
///     allows=[
///         {
///             "protocol": "tcp",
///             "ports": ["0-65535"],
///         },
///         {
///             "protocol": "udp",
///             "ports": ["0-65535"],
///         },
///         {
///             "protocol": "icmp",
///         },
///     ])
/// default = gcp.vertex.AiModelDevelopmentCluster("default",
///     region="us-east1",
///     model_development_cluster_id="tftest-gke",
///     display_name="tftest-gke",
///     deletion_policy="DELETE",
///     labels={
///         "env": "dev",
///     },
///     network={
///         "network": net.id,
///         "subnetwork": subnet.id,
///     },
///     orchestrator_spec={
///         "kubernetes_spec": {
///             "node_pool_ids": ["cpu1"],
///             "enable_ip_alias": True,
///             "public_access_endpoint_enabled": True,
///             "control_plane_version": "-",
///             "node_pool_versions": {
///                 "cpu1": "-",
///             },
///         },
///     },
///     node_pools=[{
///         "id": "cpu1",
///         "zone": "us-east1-b",
///         "provisioning_model": "ON_DEMAND",
///         "boot_disk": {
///             "boot_disk_size_gb": 100,
///             "boot_disk_type": "pd-standard",
///         },
///         "machine_spec": {
///             "machine_type": "n2-standard-4",
///         },
///         "scaling_spec": {
///             "min_node_count": 1,
///             "max_node_count": 2,
///         },
///     }],
///     opts = pulumi.ResourceOptions(depends_on=[internal]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var net = new Gcp.Compute.Network("net", new()
///     {
///         Name = "mdc-gke-net",
///         AutoCreateSubnetworks = false,
///     });
///
///     var subnet = new Gcp.Compute.Subnetwork("subnet", new()
///     {
///         Name = "mdc-gke-subnet",
///         IpCidrRange = "10.0.0.0/24",
///         Region = "us-east1",
///         Network = net.Id,
///         PrivateIpGoogleAccess = true,
///     });
///
///     var @internal = new Gcp.Compute.Firewall("internal", new()
///     {
///         Name = "mdc-gke-fw",
///         Network = net.Name,
///         Direction = "INGRESS",
///         SourceRanges = new[]
///         {
///             "10.0.0.0/24",
///         },
///         Allows = new[]
///         {
///             new Gcp.Compute.Inputs.FirewallAllowArgs
///             {
///                 Protocol = "tcp",
///                 Ports = new[]
///                 {
///                     "0-65535",
///                 },
///             },
///             new Gcp.Compute.Inputs.FirewallAllowArgs
///             {
///                 Protocol = "udp",
///                 Ports = new[]
///                 {
///                     "0-65535",
///                 },
///             },
///             new Gcp.Compute.Inputs.FirewallAllowArgs
///             {
///                 Protocol = "icmp",
///             },
///         },
///     });
///
///     var @default = new Gcp.Vertex.AiModelDevelopmentCluster("default", new()
///     {
///         Region = "us-east1",
///         ModelDevelopmentClusterId = "tftest-gke",
///         DisplayName = "tftest-gke",
///         DeletionPolicy = "DELETE",
///         Labels =
///         {
///             { "env", "dev" },
///         },
///         Network = new Gcp.Vertex.Inputs.AiModelDevelopmentClusterNetworkArgs
///         {
///             Network = net.Id,
///             Subnetwork = subnet.Id,
///         },
///         OrchestratorSpec = new Gcp.Vertex.Inputs.AiModelDevelopmentClusterOrchestratorSpecArgs
///         {
///             KubernetesSpec = new Gcp.Vertex.Inputs.AiModelDevelopmentClusterOrchestratorSpecKubernetesSpecArgs
///             {
///                 NodePoolIds = new[]
///                 {
///                     "cpu1",
///                 },
///                 EnableIpAlias = true,
///                 PublicAccessEndpointEnabled = true,
///                 ControlPlaneVersion = "-",
///                 NodePoolVersions =
///                 {
///                     { "cpu1", "-" },
///                 },
///             },
///         },
///         NodePools = new[]
///         {
///             new Gcp.Vertex.Inputs.AiModelDevelopmentClusterNodePoolArgs
///             {
///                 Id = "cpu1",
///                 Zone = "us-east1-b",
///                 ProvisioningModel = "ON_DEMAND",
///                 BootDisk = new Gcp.Vertex.Inputs.AiModelDevelopmentClusterNodePoolBootDiskArgs
///                 {
///                     BootDiskSizeGb = 100,
///                     BootDiskType = "pd-standard",
///                 },
///                 MachineSpec = new Gcp.Vertex.Inputs.AiModelDevelopmentClusterNodePoolMachineSpecArgs
///                 {
///                     MachineType = "n2-standard-4",
///                 },
///                 ScalingSpec = new Gcp.Vertex.Inputs.AiModelDevelopmentClusterNodePoolScalingSpecArgs
///                 {
///                     MinNodeCount = 1,
///                     MaxNodeCount = 2,
///                 },
///             },
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             @internal,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/vertex"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		net, err := compute.NewNetwork(ctx, "net", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("mdc-gke-net"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		subnet, err := compute.NewSubnetwork(ctx, "subnet", &compute.SubnetworkArgs{
/// 			Name:                  pulumi.String("mdc-gke-subnet"),
/// 			IpCidrRange:           pulumi.String("10.0.0.0/24"),
/// 			Region:                pulumi.String("us-east1"),
/// 			Network:               net.ID(),
/// 			PrivateIpGoogleAccess: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		internal, err := compute.NewFirewall(ctx, "internal", &compute.FirewallArgs{
/// 			Name:      pulumi.String("mdc-gke-fw"),
/// 			Network:   net.Name,
/// 			Direction: pulumi.String("INGRESS"),
/// 			SourceRanges: pulumi.StringArray{
/// 				pulumi.String("10.0.0.0/24"),
/// 			},
/// 			Allows: compute.FirewallAllowArray{
/// 				&compute.FirewallAllowArgs{
/// 					Protocol: pulumi.String("tcp"),
/// 					Ports: pulumi.StringArray{
/// 						pulumi.String("0-65535"),
/// 					},
/// 				},
/// 				&compute.FirewallAllowArgs{
/// 					Protocol: pulumi.String("udp"),
/// 					Ports: pulumi.StringArray{
/// 						pulumi.String("0-65535"),
/// 					},
/// 				},
/// 				&compute.FirewallAllowArgs{
/// 					Protocol: pulumi.String("icmp"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = vertex.NewAiModelDevelopmentCluster(ctx, "default", &vertex.AiModelDevelopmentClusterArgs{
/// 			Region:                    pulumi.String("us-east1"),
/// 			ModelDevelopmentClusterId: pulumi.String("tftest-gke"),
/// 			DisplayName:               pulumi.String("tftest-gke"),
/// 			DeletionPolicy:            pulumi.String("DELETE"),
/// 			Labels: pulumi.StringMap{
/// 				"env": pulumi.String("dev"),
/// 			},
/// 			Network: &vertex.AiModelDevelopmentClusterNetworkArgs{
/// 				Network:    net.ID(),
/// 				Subnetwork: subnet.ID(),
/// 			},
/// 			OrchestratorSpec: &vertex.AiModelDevelopmentClusterOrchestratorSpecArgs{
/// 				KubernetesSpec: &vertex.AiModelDevelopmentClusterOrchestratorSpecKubernetesSpecArgs{
/// 					NodePoolIds: pulumi.StringArray{
/// 						pulumi.String("cpu1"),
/// 					},
/// 					EnableIpAlias:               pulumi.Bool(true),
/// 					PublicAccessEndpointEnabled: pulumi.Bool(true),
/// 					ControlPlaneVersion:         pulumi.String("-"),
/// 					NodePoolVersions: pulumi.StringMap{
/// 						"cpu1": pulumi.String("-"),
/// 					},
/// 				},
/// 			},
/// 			NodePools: vertex.AiModelDevelopmentClusterNodePoolArray{
/// 				&vertex.AiModelDevelopmentClusterNodePoolArgs{
/// 					Id:                pulumi.String("cpu1"),
/// 					Zone:              pulumi.String("us-east1-b"),
/// 					ProvisioningModel: pulumi.String("ON_DEMAND"),
/// 					BootDisk: &vertex.AiModelDevelopmentClusterNodePoolBootDiskArgs{
/// 						BootDiskSizeGb: pulumi.Int(100),
/// 						BootDiskType:   pulumi.String("pd-standard"),
/// 					},
/// 					MachineSpec: &vertex.AiModelDevelopmentClusterNodePoolMachineSpecArgs{
/// 						MachineType: pulumi.String("n2-standard-4"),
/// 					},
/// 					ScalingSpec: &vertex.AiModelDevelopmentClusterNodePoolScalingSpecArgs{
/// 						MinNodeCount: pulumi.Int(1),
/// 						MaxNodeCount: pulumi.Int(2),
/// 					},
/// 				},
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			internal,
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
/// resource "gcp_compute_network" "net" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   name                    = "mdc-gke-net"
///   auto_create_subnetworks = false
/// }
/// resource "gcp_compute_subnetwork" "subnet" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   name                     = "mdc-gke-subnet"
///   ip_cidr_range            = "10.0.0.0/24"
///   region                   = "us-east1"
///   network                  = gcp_compute_network.net.id
///   private_ip_google_access = true
/// }
/// resource "gcp_compute_firewall" "internal" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   name          = "mdc-gke-fw"
///   network       = gcp_compute_network.net.name
///   direction     = "INGRESS"
///   source_ranges = ["10.0.0.0/24"]
///   allows {
///     protocol = "tcp"
///     ports    = ["0-65535"]
///   }
///   allows {
///     protocol = "udp"
///     ports    = ["0-65535"]
///   }
///   allows {
///     protocol = "icmp"
///   }
/// }
/// resource "gcp_vertex_ai_model_development_cluster" "default" {
///   depends_on = [gcp_compute_firewall.internal]
///   lifecycle {
///     create_before_destroy = true
///   }
///   region                       = "us-east1"
///   model_development_cluster_id = "tftest-gke"
///   display_name                 = "tftest-gke"
///   deletion_policy              = "DELETE"
///   labels = {
///     "env" = "dev"
///   }
///   network = {
///     network    = gcp_compute_network.net.id
///     subnetwork = gcp_compute_subnetwork.subnet.id
///   }
///   orchestrator_spec = {
///     kubernetes_spec = {
///       node_pool_ids                  = ["cpu1"]
///       enable_ip_alias                = true
///       public_access_endpoint_enabled = true
///       control_plane_version          = "-"
///       node_pool_versions = {
///         "cpu1" = "-"
///       }
///     }
///   }
///   node_pools {
///     id                 = "cpu1"
///     zone               = "us-east1-b"
///     provisioning_model = "ON_DEMAND"
///     boot_disk = {
///       boot_disk_size_gb = 100
///       boot_disk_type    = "pd-standard"
///     }
///     machine_spec = {
///       machine_type = "n2-standard-4"
///     }
///     scaling_spec = {
///       min_node_count = 1
///       max_node_count = 2
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
/// import com.pulumi.gcp.compute.Firewall;
/// import com.pulumi.gcp.compute.FirewallArgs;
/// import com.pulumi.gcp.compute.inputs.FirewallAllowArgs;
/// import com.pulumi.gcp.vertex.AiModelDevelopmentCluster;
/// import com.pulumi.gcp.vertex.AiModelDevelopmentClusterArgs;
/// import com.pulumi.gcp.vertex.inputs.AiModelDevelopmentClusterNetworkArgs;
/// import com.pulumi.gcp.vertex.inputs.AiModelDevelopmentClusterOrchestratorSpecArgs;
/// import com.pulumi.gcp.vertex.inputs.AiModelDevelopmentClusterOrchestratorSpecKubernetesSpecArgs;
/// import com.pulumi.gcp.vertex.inputs.AiModelDevelopmentClusterNodePoolArgs;
/// import com.pulumi.gcp.vertex.inputs.AiModelDevelopmentClusterNodePoolBootDiskArgs;
/// import com.pulumi.gcp.vertex.inputs.AiModelDevelopmentClusterNodePoolMachineSpecArgs;
/// import com.pulumi.gcp.vertex.inputs.AiModelDevelopmentClusterNodePoolScalingSpecArgs;
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
///         var net = new Network("net", NetworkArgs.builder()
///             .name("mdc-gke-net")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var subnet = new Subnetwork("subnet", SubnetworkArgs.builder()
///             .name("mdc-gke-subnet")
///             .ipCidrRange("10.0.0.0/24")
///             .region("us-east1")
///             .network(net.id())
///             .privateIpGoogleAccess(true)
///             .build());
///
///         var internal = new Firewall("internal", FirewallArgs.builder()
///             .name("mdc-gke-fw")
///             .network(net.name())
///             .direction("INGRESS")
///             .sourceRanges("10.0.0.0/24")
///             .allows(
///                 FirewallAllowArgs.builder()
///                     .protocol("tcp")
///                     .ports("0-65535")
///                     .build(),
///                 FirewallAllowArgs.builder()
///                     .protocol("udp")
///                     .ports("0-65535")
///                     .build(),
///                 FirewallAllowArgs.builder()
///                     .protocol("icmp")
///                     .build())
///             .build());
///
///         var default_ = new AiModelDevelopmentCluster("default", AiModelDevelopmentClusterArgs.builder()
///             .region("us-east1")
///             .modelDevelopmentClusterId("tftest-gke")
///             .displayName("tftest-gke")
///             .deletionPolicy("DELETE")
///             .labels(Map.of("env", "dev"))
///             .network(AiModelDevelopmentClusterNetworkArgs.builder()
///                 .network(net.id())
///                 .subnetwork(subnet.id())
///                 .build())
///             .orchestratorSpec(AiModelDevelopmentClusterOrchestratorSpecArgs.builder()
///                 .kubernetesSpec(AiModelDevelopmentClusterOrchestratorSpecKubernetesSpecArgs.builder()
///                     .nodePoolIds("cpu1")
///                     .enableIpAlias(true)
///                     .publicAccessEndpointEnabled(true)
///                     .controlPlaneVersion("-")
///                     .nodePoolVersions(Map.of("cpu1", "-"))
///                     .build())
///                 .build())
///             .nodePools(AiModelDevelopmentClusterNodePoolArgs.builder()
///                 .id("cpu1")
///                 .zone("us-east1-b")
///                 .provisioningModel("ON_DEMAND")
///                 .bootDisk(AiModelDevelopmentClusterNodePoolBootDiskArgs.builder()
///                     .bootDiskSizeGb(100)
///                     .bootDiskType("pd-standard")
///                     .build())
///                 .machineSpec(AiModelDevelopmentClusterNodePoolMachineSpecArgs.builder()
///                     .machineType("n2-standard-4")
///                     .build())
///                 .scalingSpec(AiModelDevelopmentClusterNodePoolScalingSpecArgs.builder()
///                     .minNodeCount(1)
///                     .maxNodeCount(2)
///                     .build())
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(internal)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   net:
///     type: gcp:compute:Network
///     properties:
///       name: mdc-gke-net
///       autoCreateSubnetworks: false
///   subnet:
///     type: gcp:compute:Subnetwork
///     properties:
///       name: mdc-gke-subnet
///       ipCidrRange: 10.0.0.0/24
///       region: us-east1
///       network: ${net.id}
///       privateIpGoogleAccess: true
///   internal:
///     type: gcp:compute:Firewall
///     properties:
///       name: mdc-gke-fw
///       network: ${net.name}
///       direction: INGRESS
///       sourceRanges:
///         - 10.0.0.0/24
///       allows:
///         - protocol: tcp
///           ports:
///             - 0-65535
///         - protocol: udp
///           ports:
///             - 0-65535
///         - protocol: icmp
///   default:
///     type: gcp:vertex:AiModelDevelopmentCluster
///     properties:
///       region: us-east1
///       modelDevelopmentClusterId: tftest-gke
///       displayName: tftest-gke
///       deletionPolicy: DELETE
///       labels:
///         env: dev
///       network:
///         network: ${net.id}
///         subnetwork: ${subnet.id}
///       orchestratorSpec:
///         kubernetesSpec:
///           nodePoolIds:
///             - cpu1
///           enableIpAlias: true
///           publicAccessEndpointEnabled: true
///           controlPlaneVersion: '-'
///           nodePoolVersions:
///             cpu1: '-'
///       nodePools:
///         - id: cpu1
///           zone: us-east1-b
///           provisioningModel: ON_DEMAND
///           bootDisk:
///             bootDiskSizeGb: 100
///             bootDiskType: pd-standard
///           machineSpec:
///             machineType: n2-standard-4
///           scalingSpec:
///             minNodeCount: 1
///             maxNodeCount: 2
///     options:
///       dependsOn:
///         - ${internal}
/// ```
///
///
/// ##   ## Constraints:
///
/// `machine_spec.reservation_affinity`
/// must not be set if `provisioningModel` is `ON_DEMAND`, `SPOT` or
/// ##   ## `FLEX_START`.
///
/// `machine_spec.reservation_affinity`
/// must be set if `provisioningModel` is `RESERVATION`.
/// Possible values:
/// ON_DEMAND
/// RESERVATION
/// SPOT
/// FLEX_START
///
/// * `scalingSpec` -
/// (Optional)
/// The scaling spec of the node pool.
/// Structure is documented below.
///
/// * `startupScript` -
/// (Optional)
/// Startup script for the node pool instances.
///
/// * `zone` -
/// (Optional)
/// The zone of the node pool.
///
///
/// &lt;a name="nestedNodePoolsBootDisk"&gt;&lt;/a&gt;The `bootDisk` block supports:
///
/// * `bootDiskSizeGb` -
/// (Optional)
/// Size in GB of the boot disk (default is 100GB).
///
/// * `bootDiskType` -
/// (Optional)
/// Type of the boot disk. For non-A3U machines, the default value is
/// "pd-ssd", for A3U machines, the default value is "hyperdisk-balanced".
/// Valid values: "pd-ssd" (Persistent Disk Solid State Drive),
/// "pd-standard" (Persistent Disk Hard Disk Drive) or "hyperdisk-balanced".
///
/// &lt;a name="nestedNodePoolsMachineSpec"&gt;&lt;/a&gt;The `machineSpec` block supports:
///
/// * `machineType` -
/// (Required)
/// The type of the machine.
/// See the [list of machine types supported for
/// prediction](https://cloud.google.com/vertex-ai/docs/predictions/configure-compute#machine-types)
/// See the [list of machine types supported for custom
/// training](https://cloud.google.com/vertex-ai/docs/training/configure-compute#machine-types).
/// For DeployedModel this field is optional, and the default
/// value is `n1-standard-2`. For BatchPredictionJob or as part of
/// WorkerPoolSpec this field is required.
///
/// * `reservationAffinity` -
/// (Optional)
/// A ReservationAffinity can be used to configure a Vertex AI resource (e.g., a
/// DeployedModel) to draw its Compute Engine resources from a Shared
/// Reservation, or exclusively from on-demand capacity.
/// Structure is documented below.
///
///
/// &lt;a name="nestedNodePoolsMachineSpecReservationAffinity"&gt;&lt;/a&gt;The `reservationAffinity` block supports:
///
/// * `reservationAffinityType` -
/// (Required)
/// Specifies the reservation affinity type.
/// Possible values:
/// NO_RESERVATION
/// ANY_RESERVATION
/// SPECIFIC_RESERVATION
///
/// * `values` -
/// (Optional)
/// Corresponds to the label values of a reservation resource. This must be the
/// resource name of the reservation, reservation block, or reservation sub-
/// block.
///
/// &lt;a name="nestedNodePoolsScalingSpec"&gt;&lt;/a&gt;The `scalingSpec` block supports:
///
/// * `maxNodeCount` -
/// (Optional)
/// maximum size of the node pool,
/// must be ≥ minNodeCount
///
/// * `minNodeCount` -
/// (Optional)
/// minimum size of the node pool,
/// must be &gt;= 0 and &lt;= maxNodeCount
///
/// &lt;a name="nestedOrchestratorSpec"&gt;&lt;/a&gt;The `orchestratorSpec` block supports:
///
/// * `slurmSpec` -
/// (Optional)
/// The Slurm orchestrator related spec of the cluster.
/// Structure is documented below.
///
/// * `kubernetesSpec` -
/// (Optional)
/// The GKE orchestrator related spec of the cluster.
/// Structure is documented below.
///
///
/// &lt;a name="nestedOrchestratorSpecSlurmSpec"&gt;&lt;/a&gt;The `slurmSpec` block supports:
///
/// * `config` -
/// (Optional)
/// Cluster-scoped Slurm settings, emitted as global `Key=Value` lines in
/// slurm.conf.
/// Keys are Slurm parameter names exactly as documented by SchedMD
/// (https://slurm.schedmd.com/slurm.conf.html), matched case-insensitively.
/// Values are written the way slurm.conf writes them, including composite
/// forms such as `bf_window=1440,bf_resolution=600`.
/// Example:
/// { "PriorityType":            "priority/multifactor",
/// "PriorityWeightAge":       "1000",
/// "PreemptMode":             "SUSPEND,GANG",
/// "SchedulerParameters":     "bf_window=1440,bf_resolution=600" }
/// Unsupported, reserved, or misspelled parameters, and values that are not
/// legal for the parameter, are rejected at request time with the offending
/// parameter named; they are never silently dropped. Settings
/// that apply to a single partition or node pool belong in
/// `SlurmPartition.config` or `SlurmNodeSet.config` instead -
/// several parameters (e.g. `DefMemPerCPU`, `OverTimeLimit`, `PreemptMode`)
/// are valid at more than one scope with different meanings and different
/// legal values.
/// On update this map is replaced wholesale; supply the complete desired set.
///
/// * `defaultPartitionId` -
/// (Optional)
/// Id of the partition that Slurm jobs submitted without an explicit
/// partition run on, for example `sbatch` without `--partition`. Must match
/// the `id` of one of `partitions`.
/// If unset, the service uses the first entry of `partitions` and this field
/// stays empty; the cluster always has a default partition whether or not this
/// field is set. Setting it makes the choice independent of list order, which
/// matters because `partitions` is replaced wholesale on update: reordering
/// the list, or prepending a partition to it, otherwise moves the default and
/// silently redirects every job submitted without `--partition`.
///
/// * `epilogBashScripts` -
/// (Optional)
/// Custom bash scripts executed after each slurm job on every allocated node.
///
/// * `homeDirectoryStorage` -
/// (Required)
/// Full name of the Filestore to be mounted as /home directory on every node.
///
/// * `loginNodePoolId` -
/// (Required)
/// The node pool id to be used as slurm login node.
///
/// * `nodeSets` -
/// (Optional)
/// Node-scoped Slurm settings, keyed by node pool. At most one entry per node
/// pool. Node pools without an entry use the settings derived by the cluster's
/// Slurm controller.
/// Structure is documented below.
///
/// * `partitions` -
/// (Optional)
/// The Slurm partitions spec.
/// Structure is documented below.
///
/// * `prologBashScripts` -
/// (Optional)
/// Custom bash scripts executed before each slurm job on every allocated node.
///
///
/// &lt;a name="nestedOrchestratorSpecSlurmSpecNodeSets"&gt;&lt;/a&gt;The `nodeSets` block supports:
///
/// * `config` -
/// (Optional)
/// Node-scoped Slurm settings, emitted as additional `Key=Value` pairs on the
/// `NodeName=` line for this node pool's nodes in slurm.conf.
/// Example:
/// { "Features":     "a3mega,nvlink",
/// "Weight":       "10",
/// "MemSpecLimit": "4096" }
/// On update this map is replaced wholesale; supply the complete desired set.
///
/// * `nodePoolId` -
/// (Required)
/// Id of the node pool these settings apply to. Must match the `id` of one of
/// the node pools in the cluster.
///
/// &lt;a name="nestedOrchestratorSpecSlurmSpecPartitions"&gt;&lt;/a&gt;The `partitions` block supports:
///
/// * `config` -
/// (Optional)
/// Partition-scoped Slurm settings, emitted as additional `Key=Value` pairs
/// on this partition's `PartitionName=` line in slurm.conf.
/// Example:
/// { "MaxTime":       "4-00:00:00",
/// "DenyAccounts":  "low-pri",
/// "PriorityTier":  "20",
/// "OverSubscribe": "YES:4" }
/// Note: values set here take precedence over service-computed defaults for
/// the same parameter (for example `OverSubscribe` and `DefMemPerCPU`, which
/// the service otherwise derives from the partition's exclusivity and from
/// the memory per CPU of its nodes).
/// `Default` is rejected here: which partition is the default is a
/// cluster-scoped choice, so it belongs in `SlurmSpec.default_partition_id`.
///
/// * `id` -
/// (Required)
/// Id of the slurm partiton
///
/// * `nodePoolIds` -
/// (Required)
/// Node pools for the slurm partition
///
/// &lt;a name="nestedOrchestratorSpecKubernetesSpec"&gt;&lt;/a&gt;The `kubernetesSpec` block supports:
///
/// * `nodePoolIds` -
/// (Optional)
/// IDs of the NodePools to be included in this GKE cluster. These IDs must
/// correspond to NodePools defined in the `nodePools` field.
///
/// * `enableIpAlias` -
/// (Optional)
/// Whether to enable IP alias.
///
/// * `publicAccessEndpointEnabled` -
/// (Optional)
/// Whether the GKE cluster's control plane endpoint is publicly accessible.
/// If true, the cluster is created with a public access endpoint (i.e. the
/// private cluster configuration is disabled). If false or unset, the cluster
/// is created with only private control plane access by default.
///
/// * `controlPlaneVersion` -
/// (Optional)
/// The Kubernetes version of the GKE control plane.
/// Accepted formats are minor version (for example, `"1.30"`), patch version
/// (for example, `"1.30.5"`), full GKE release version (for example,
/// `"1.30.5-gke.1014001"`), or `"-"` to use the service default version.
/// Upgrades can advance at most one minor version at a time; downgrades are
/// rejected.
///
/// * `nodePoolVersions` -
/// (Optional)
/// The Kubernetes versions for specific node pools, keyed by node pool ID.
/// When specified, all node pool IDs in the cluster must be included.
/// Accepted formats are minor version (for example, `"1.30"`), patch version
/// (for example, `"1.30.5"`), full GKE release version (for example,
/// `"1.30.5-gke.1014001"`), or `"-"` to align with the control plane version.
/// Node pools cannot be newer than the control plane or more than 2 minor
/// versions behind it; upgrades can advance at most one minor version at a
/// time and downgrades are rejected.
///
/// &lt;a name="nestedLustreExportConfig"&gt;&lt;/a&gt;The `lustreExportConfig` block supports:
///
/// * `daysOfWeek` -
/// (Optional)
/// Days of the week on which a backup runs, each at most once and
/// none of them DAY_OF_WEEK_UNSPECIFIED. If empty, a backup runs every day.
///
/// * `destinationBucket` -
/// (Required)
/// The Cloud Storage bucket that backups are written to, without
/// the "gs://" scheme.
///
/// * `lustres` -
/// (Optional)
/// The Managed Lustre instances to back up, each named as
/// "projects/{project}/locations/{zone}/instances/{instance}". Every entry
/// must be attached to one of the cluster's node pools, and no entry may
/// repeat. If empty, every attached instance is backed up.
///
/// * `startTime` -
/// (Optional)
/// Represents a time of day. The date and time zone are either not significant
/// or are specified elsewhere. An API may choose to allow leap seconds. Related
/// types are google.type.Date and `google.protobuf.Timestamp`.
/// Structure is documented below.
///
///
/// &lt;a name="nestedLustreExportConfigStartTime"&gt;&lt;/a&gt;The `startTime` block supports:
///
/// * `hours` -
/// (Optional)
/// Hours of a day in 24 hour format. Must be greater than or equal to 0 and
/// typically must be less than or equal to 23. An API may choose to allow the
/// value "24:00:00" for scenarios like business closing time.
///
/// * `minutes` -
/// (Optional)
/// Minutes of an hour. Must be greater than or equal to 0 and less than or
/// equal to 59.
///
/// &lt;a name="nestedNetwork"&gt;&lt;/a&gt;The `network` block supports:
///
/// * `network` -
/// (Required)
/// The name of the VPC network where to create the cluster.
/// The `default` network is used if not specified.
///
/// * `subnetwork` -
/// (Optional)
/// The name of the subnetwork in the above network to create the cluster.
/// If not specified:
/// * for auto mode VPC, the subnet in corresponding region is auto-selected;
/// * for custom mode VPC, a new subnet will be automatically created.
///
/// &lt;a name="nestedRuntimeSpec"&gt;&lt;/a&gt;The `runtimeSpec` block supports:
///
/// * `serviceAccount` -
/// (Optional)
/// The default service account used by the cluster when running any workloads
/// on it. If not specified, the default compute engine service account will be
/// used.
///
/// ## Import
///
/// ModelDevelopmentCluster can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{region}}/modelDevelopmentClusters/{{model_development_cluster_id}}`
/// * `{{project}}/{{region}}/{{model_development_cluster_id}}`
/// * `{{region}}/{{model_development_cluster_id}}`
/// * `{{model_development_cluster_id}}`
///
///
/// When using the `pulumi import` command, ModelDevelopmentCluster can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:vertex/aiModelDevelopmentCluster:AiModelDevelopmentCluster default projects/{{project}}/locations/{{region}}/modelDevelopmentClusters/{{model_development_cluster_id}}
/// $ pulumi import gcp:vertex/aiModelDevelopmentCluster:AiModelDevelopmentCluster default {{project}}/{{region}}/{{model_development_cluster_id}}
/// $ pulumi import gcp:vertex/aiModelDevelopmentCluster:AiModelDevelopmentCluster default {{region}}/{{model_development_cluster_id}}
/// $ pulumi import gcp:vertex/aiModelDevelopmentCluster:AiModelDevelopmentCluster default {{model_development_cluster_id}}
/// ```
class AiModelDevelopmentCluster extends pulumi.CustomResource {
  /// The events of the cluster. Displays the 100 most recent events.
  /// Structure is documented below.
  late final pulumi.Output<List<AiModelDevelopmentClusterClusterEvent>> clusterEvents;
  /// The status information of the cluster.
  /// Structure is documented below.
  late final pulumi.Output<List<AiModelDevelopmentClusterClusterStatus>> clusterStatuses;
  /// (Output)
  /// Time when the TrainingService was created.
  late final pulumi.Output<String> createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// The display name of the ModelDevelopmentCluster.
  /// The name can be up to 128 characters long and can consist of any UTF-8
  /// characters.
  late final pulumi.Output<String?> displayName;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// The labels with user-defined metadata to organize PersistentResource.
  /// Label keys and values can be no longer than 64 characters
  /// (Unicode codepoints), can only contain lowercase letters, numeric
  /// characters, underscores and dashes. International characters are allowed.
  /// See https://goo.gl/xmQnxf for more information and examples of labels.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// Configuration for backing up the Managed Lustre instances attached to a
  /// cluster to a Cloud Storage bucket.
  /// By default every instance attached to any node pool is backed up; set
  /// `lustres` to narrow that to a subset. Each instance is written to its own
  /// prefix under the bucket, so several instances, and several clusters, can
  /// share a destination.
  /// Structure is documented below.
  late final pulumi.Output<AiModelDevelopmentClusterLustreExportConfig?> lustreExportConfig;
  /// The ID to use for the cluster, which is the final component
  /// of the ModelDevelopmentCluster's resource name.
  /// This value should be 1-10 characters, and valid characters
  /// are `/^a-z?$/`. When using `slurmSpec`,
  /// hyphens are not allowed (`/^[a-z][a-z0-9]{0,9}$/`).
  late final pulumi.Output<String> modelDevelopmentClusterId;
  /// (Output)
  /// Identifier. Resource name of the TrainingService. Format:
  /// `projects/{project}/locations/{location}/modelDevelopmentClusters/{cluster}/trainingServices/{training_service}`
  late final pulumi.Output<String> name;
  /// Network spec of the cluster.
  /// Structure is documented below.
  late final pulumi.Output<AiModelDevelopmentClusterNetwork> network;
  /// The spec of the pools of different resources. Node pools can be added,
  /// removed, or reordered in place; changing some fields on an existing node
  /// pool may require replacing the node pool (validated server-side by the
  /// API).
  /// Structure is documented below.
  late final pulumi.Output<List<AiModelDevelopmentClusterNodePool>> nodePools;
  /// The spec of the orchestrator. Only one orchestrator may be specified.
  /// Structure is documented below.
  late final pulumi.Output<AiModelDevelopmentClusterOrchestratorSpec> orchestratorSpec;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// The region of the ModelDevelopmentCluster. eg us-central1
  late final pulumi.Output<String?> region;
  /// The runtime spec of the cluster.
  /// Structure is documented below.
  late final pulumi.Output<AiModelDevelopmentClusterRuntimeSpec> runtimeSpec;
  /// The runtime backfilled records of the cluster.
  /// Structure is documented below.
  late final pulumi.Output<List<AiModelDevelopmentClusterRuntime>> runtimes;
  /// Time when the ModelDevelopmentCluster for the first time entered the
  /// `RUNNING` state.
  late final pulumi.Output<String> startTime;
  /// Whether the service also refreshes service-managed fields (startup and
  /// prolog/epilog scripts, default node images) on update. `USER_ONLY` applies
  /// only your changes; adding a node pool requires `USER_AND_SERVICE`.
  /// Only applies to Slurm clusters (`orchestrator_spec.slurm_spec`); ignored
  /// for GKE clusters (`kubernetesSpec`).
  /// Defaults to `USER_AND_SERVICE`. Possible values are `USER_ONLY` and
  /// `USER_AND_SERVICE`.
  late final pulumi.Output<String?> updateMode;
  /// (Output)
  /// Time when the TrainingService was most recently updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [AiModelDevelopmentCluster].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AiModelDevelopmentCluster]. {@macro pulumi_vertex_ai_model_development_cluster_ai_model_development_cluster_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AiModelDevelopmentCluster(
    String name, {
    AiModelDevelopmentClusterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:vertex/aiModelDevelopmentCluster:AiModelDevelopmentCluster',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '10.5.0').merge(options),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        ) {
    clusterEvents = registerOutput<List<AiModelDevelopmentClusterClusterEvent>>('clusterEvents', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AiModelDevelopmentClusterClusterEvent>(guardedValue, (value) => AiModelDevelopmentClusterClusterEvent.fromMap((value as Map).cast<String, dynamic>())); });
    clusterStatuses = registerOutput<List<AiModelDevelopmentClusterClusterStatus>>('clusterStatuses', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AiModelDevelopmentClusterClusterStatus>(guardedValue, (value) => AiModelDevelopmentClusterClusterStatus.fromMap((value as Map).cast<String, dynamic>())); });
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String?>('displayName');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    lustreExportConfig = registerOutput<AiModelDevelopmentClusterLustreExportConfig?>('lustreExportConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiModelDevelopmentClusterLustreExportConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    modelDevelopmentClusterId = registerOutput<String>('modelDevelopmentClusterId');
    this.name = registerOutput<String>('name');
    network = registerOutput<AiModelDevelopmentClusterNetwork>('network', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiModelDevelopmentClusterNetwork.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    nodePools = registerOutput<List<AiModelDevelopmentClusterNodePool>>('nodePools', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AiModelDevelopmentClusterNodePool>(guardedValue, (value) => AiModelDevelopmentClusterNodePool.fromMap((value as Map).cast<String, dynamic>())); });
    orchestratorSpec = registerOutput<AiModelDevelopmentClusterOrchestratorSpec>('orchestratorSpec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiModelDevelopmentClusterOrchestratorSpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    region = registerOutput<String?>('region');
    runtimeSpec = registerOutput<AiModelDevelopmentClusterRuntimeSpec>('runtimeSpec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiModelDevelopmentClusterRuntimeSpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    runtimes = registerOutput<List<AiModelDevelopmentClusterRuntime>>('runtimes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AiModelDevelopmentClusterRuntime>(guardedValue, (value) => AiModelDevelopmentClusterRuntime.fromMap((value as Map).cast<String, dynamic>())); });
    startTime = registerOutput<String>('startTime');
    updateMode = registerOutput<String?>('updateMode');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [AiModelDevelopmentCluster] resource's state with the given [name] and [id].
  static AiModelDevelopmentCluster get(
    String name,
    pulumi.Input<String> id, {
    AiModelDevelopmentClusterState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return AiModelDevelopmentCluster._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  AiModelDevelopmentCluster._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:vertex/aiModelDevelopmentCluster:AiModelDevelopmentCluster',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    clusterEvents = registerOutput<List<AiModelDevelopmentClusterClusterEvent>>('clusterEvents', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AiModelDevelopmentClusterClusterEvent>(guardedValue, (value) => AiModelDevelopmentClusterClusterEvent.fromMap((value as Map).cast<String, dynamic>())); });
    clusterStatuses = registerOutput<List<AiModelDevelopmentClusterClusterStatus>>('clusterStatuses', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AiModelDevelopmentClusterClusterStatus>(guardedValue, (value) => AiModelDevelopmentClusterClusterStatus.fromMap((value as Map).cast<String, dynamic>())); });
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String?>('displayName');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    lustreExportConfig = registerOutput<AiModelDevelopmentClusterLustreExportConfig?>('lustreExportConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiModelDevelopmentClusterLustreExportConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    modelDevelopmentClusterId = registerOutput<String>('modelDevelopmentClusterId');
    this.name = registerOutput<String>('name');
    network = registerOutput<AiModelDevelopmentClusterNetwork>('network', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiModelDevelopmentClusterNetwork.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    nodePools = registerOutput<List<AiModelDevelopmentClusterNodePool>>('nodePools', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AiModelDevelopmentClusterNodePool>(guardedValue, (value) => AiModelDevelopmentClusterNodePool.fromMap((value as Map).cast<String, dynamic>())); });
    orchestratorSpec = registerOutput<AiModelDevelopmentClusterOrchestratorSpec>('orchestratorSpec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiModelDevelopmentClusterOrchestratorSpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    region = registerOutput<String?>('region');
    runtimeSpec = registerOutput<AiModelDevelopmentClusterRuntimeSpec>('runtimeSpec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiModelDevelopmentClusterRuntimeSpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    runtimes = registerOutput<List<AiModelDevelopmentClusterRuntime>>('runtimes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AiModelDevelopmentClusterRuntime>(guardedValue, (value) => AiModelDevelopmentClusterRuntime.fromMap((value as Map).cast<String, dynamic>())); });
    startTime = registerOutput<String>('startTime');
    updateMode = registerOutput<String?>('updateMode');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Creates a typed reference to an existing [AiModelDevelopmentCluster] resource.
  AiModelDevelopmentCluster.reference(String urn)
    : super(
        'gcp:vertex/aiModelDevelopmentCluster:AiModelDevelopmentCluster',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        isResourceReference: true,
      ) {
    clusterEvents = registerOutput<List<AiModelDevelopmentClusterClusterEvent>>('clusterEvents', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AiModelDevelopmentClusterClusterEvent>(guardedValue, (value) => AiModelDevelopmentClusterClusterEvent.fromMap((value as Map).cast<String, dynamic>())); });
    clusterStatuses = registerOutput<List<AiModelDevelopmentClusterClusterStatus>>('clusterStatuses', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AiModelDevelopmentClusterClusterStatus>(guardedValue, (value) => AiModelDevelopmentClusterClusterStatus.fromMap((value as Map).cast<String, dynamic>())); });
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String?>('displayName');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    lustreExportConfig = registerOutput<AiModelDevelopmentClusterLustreExportConfig?>('lustreExportConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiModelDevelopmentClusterLustreExportConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    modelDevelopmentClusterId = registerOutput<String>('modelDevelopmentClusterId');
    this.name = registerOutput<String>('name');
    network = registerOutput<AiModelDevelopmentClusterNetwork>('network', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiModelDevelopmentClusterNetwork.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    nodePools = registerOutput<List<AiModelDevelopmentClusterNodePool>>('nodePools', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AiModelDevelopmentClusterNodePool>(guardedValue, (value) => AiModelDevelopmentClusterNodePool.fromMap((value as Map).cast<String, dynamic>())); });
    orchestratorSpec = registerOutput<AiModelDevelopmentClusterOrchestratorSpec>('orchestratorSpec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiModelDevelopmentClusterOrchestratorSpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    region = registerOutput<String?>('region');
    runtimeSpec = registerOutput<AiModelDevelopmentClusterRuntimeSpec>('runtimeSpec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiModelDevelopmentClusterRuntimeSpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    runtimes = registerOutput<List<AiModelDevelopmentClusterRuntime>>('runtimes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AiModelDevelopmentClusterRuntime>(guardedValue, (value) => AiModelDevelopmentClusterRuntime.fromMap((value as Map).cast<String, dynamic>())); });
    startTime = registerOutput<String>('startTime');
    updateMode = registerOutput<String?>('updateMode');
    updateTime = registerOutput<String>('updateTime');
  }
}
