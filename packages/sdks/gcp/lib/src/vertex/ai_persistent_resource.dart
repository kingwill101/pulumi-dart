import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_persistent_resource_args.dart';
import 'ai_persistent_resource_encryption_spec.dart';
import 'ai_persistent_resource_psc_interface_config.dart';
import 'ai_persistent_resource_resource_runtime_spec.dart';
import 'ai_persistent_resource_state.dart';

/// Represents long-lasting resources that are dedicated to users to runs custom
/// workloads. A PersistentResource can have multiple node pools and each node
/// pool can have its own machine spec.
///
///
/// To get more information about PersistentResource, see:
///
/// * [API documentation](https://cloud.google.com/vertex-ai/docs/reference/rest/v1/projects.locations.persistentResources)
///
/// ## Example Usage
///
/// ### Vertex Ai Persistent Resource
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const persistentResource = new gcp.vertex.AiPersistentResource("persistent_resource", {
///     name: "example-persistent-resource",
///     location: "us-central1",
///     displayName: "Example persistent resource",
///     resourcePools: [{
///         machineSpec: {
///             machineType: "n1-standard-4",
///         },
///         replicaCount: "1",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// persistent_resource = gcp.vertex.AiPersistentResource("persistent_resource",
///     name="example-persistent-resource",
///     location="us-central1",
///     display_name="Example persistent resource",
///     resource_pools=[{
///         "machine_spec": {
///             "machine_type": "n1-standard-4",
///         },
///         "replica_count": "1",
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
///     var persistentResource = new Gcp.Vertex.AiPersistentResource("persistent_resource", new()
///     {
///         Name = "example-persistent-resource",
///         Location = "us-central1",
///         DisplayName = "Example persistent resource",
///         ResourcePools = new[]
///         {
///             new Gcp.Vertex.Inputs.AiPersistentResourceResourcePoolArgs
///             {
///                 MachineSpec = new Gcp.Vertex.Inputs.AiPersistentResourceResourcePoolMachineSpecArgs
///                 {
///                     MachineType = "n1-standard-4",
///                 },
///                 ReplicaCount = "1",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/vertex"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := vertex.NewAiPersistentResource(ctx, "persistent_resource", &vertex.AiPersistentResourceArgs{
/// 			Name:        pulumi.String("example-persistent-resource"),
/// 			Location:    pulumi.String("us-central1"),
/// 			DisplayName: pulumi.String("Example persistent resource"),
/// 			ResourcePools: vertex.AiPersistentResourceResourcePoolArray{
/// 				&vertex.AiPersistentResourceResourcePoolArgs{
/// 					MachineSpec: &vertex.AiPersistentResourceResourcePoolMachineSpecArgs{
/// 						MachineType: pulumi.String("n1-standard-4"),
/// 					},
/// 					ReplicaCount: pulumi.String("1"),
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
/// resource "gcp_vertex_aipersistentresource" "persistent_resource" {
///   name         = "example-persistent-resource"
///   location     = "us-central1"
///   display_name = "Example persistent resource"
///   resource_pools {
///     machine_spec = {
///       machine_type = "n1-standard-4"
///     }
///     replica_count = 1
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.vertex.AiPersistentResource;
/// import com.pulumi.gcp.vertex.AiPersistentResourceArgs;
/// import com.pulumi.gcp.vertex.inputs.AiPersistentResourceResourcePoolArgs;
/// import com.pulumi.gcp.vertex.inputs.AiPersistentResourceResourcePoolMachineSpecArgs;
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
///         var persistentResource = new AiPersistentResource("persistentResource", AiPersistentResourceArgs.builder()
///             .name("example-persistent-resource")
///             .location("us-central1")
///             .displayName("Example persistent resource")
///             .resourcePools(AiPersistentResourceResourcePoolArgs.builder()
///                 .machineSpec(AiPersistentResourceResourcePoolMachineSpecArgs.builder()
///                     .machineType("n1-standard-4")
///                     .build())
///                 .replicaCount("1")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   persistentResource:
///     type: gcp:vertex:AiPersistentResource
///     name: persistent_resource
///     properties:
///       name: example-persistent-resource
///       location: us-central1
///       displayName: Example persistent resource
///       resourcePools:
///         - machineSpec:
///             machineType: n1-standard-4
///           replicaCount: 1
/// ```
///
/// ### Vertex Ai Persistent Resource Autoscaling
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const persistentResource = new gcp.vertex.AiPersistentResource("persistent_resource", {
///     name: "example-persistent-resource",
///     location: "us-central1",
///     displayName: "Example persistent resource",
///     resourcePools: [{
///         machineSpec: {
///             machineType: "n1-standard-4",
///         },
///         replicaCount: "1",
///         autoscalingSpec: {
///             minReplicaCount: "1",
///             maxReplicaCount: "2",
///         },
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// persistent_resource = gcp.vertex.AiPersistentResource("persistent_resource",
///     name="example-persistent-resource",
///     location="us-central1",
///     display_name="Example persistent resource",
///     resource_pools=[{
///         "machine_spec": {
///             "machine_type": "n1-standard-4",
///         },
///         "replica_count": "1",
///         "autoscaling_spec": {
///             "min_replica_count": "1",
///             "max_replica_count": "2",
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
///     var persistentResource = new Gcp.Vertex.AiPersistentResource("persistent_resource", new()
///     {
///         Name = "example-persistent-resource",
///         Location = "us-central1",
///         DisplayName = "Example persistent resource",
///         ResourcePools = new[]
///         {
///             new Gcp.Vertex.Inputs.AiPersistentResourceResourcePoolArgs
///             {
///                 MachineSpec = new Gcp.Vertex.Inputs.AiPersistentResourceResourcePoolMachineSpecArgs
///                 {
///                     MachineType = "n1-standard-4",
///                 },
///                 ReplicaCount = "1",
///                 AutoscalingSpec = new Gcp.Vertex.Inputs.AiPersistentResourceResourcePoolAutoscalingSpecArgs
///                 {
///                     MinReplicaCount = "1",
///                     MaxReplicaCount = "2",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/vertex"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := vertex.NewAiPersistentResource(ctx, "persistent_resource", &vertex.AiPersistentResourceArgs{
/// 			Name:        pulumi.String("example-persistent-resource"),
/// 			Location:    pulumi.String("us-central1"),
/// 			DisplayName: pulumi.String("Example persistent resource"),
/// 			ResourcePools: vertex.AiPersistentResourceResourcePoolArray{
/// 				&vertex.AiPersistentResourceResourcePoolArgs{
/// 					MachineSpec: &vertex.AiPersistentResourceResourcePoolMachineSpecArgs{
/// 						MachineType: pulumi.String("n1-standard-4"),
/// 					},
/// 					ReplicaCount: pulumi.String("1"),
/// 					AutoscalingSpec: &vertex.AiPersistentResourceResourcePoolAutoscalingSpecArgs{
/// 						MinReplicaCount: pulumi.String("1"),
/// 						MaxReplicaCount: pulumi.String("2"),
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
/// resource "gcp_vertex_aipersistentresource" "persistent_resource" {
///   name         = "example-persistent-resource"
///   location     = "us-central1"
///   display_name = "Example persistent resource"
///   resource_pools {
///     machine_spec = {
///       machine_type = "n1-standard-4"
///     }
///     replica_count = 1
///     autoscaling_spec = {
///       min_replica_count = 1
///       max_replica_count = 2
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
/// import com.pulumi.gcp.vertex.AiPersistentResource;
/// import com.pulumi.gcp.vertex.AiPersistentResourceArgs;
/// import com.pulumi.gcp.vertex.inputs.AiPersistentResourceResourcePoolArgs;
/// import com.pulumi.gcp.vertex.inputs.AiPersistentResourceResourcePoolMachineSpecArgs;
/// import com.pulumi.gcp.vertex.inputs.AiPersistentResourceResourcePoolAutoscalingSpecArgs;
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
///         var persistentResource = new AiPersistentResource("persistentResource", AiPersistentResourceArgs.builder()
///             .name("example-persistent-resource")
///             .location("us-central1")
///             .displayName("Example persistent resource")
///             .resourcePools(AiPersistentResourceResourcePoolArgs.builder()
///                 .machineSpec(AiPersistentResourceResourcePoolMachineSpecArgs.builder()
///                     .machineType("n1-standard-4")
///                     .build())
///                 .replicaCount("1")
///                 .autoscalingSpec(AiPersistentResourceResourcePoolAutoscalingSpecArgs.builder()
///                     .minReplicaCount("1")
///                     .maxReplicaCount("2")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   persistentResource:
///     type: gcp:vertex:AiPersistentResource
///     name: persistent_resource
///     properties:
///       name: example-persistent-resource
///       location: us-central1
///       displayName: Example persistent resource
///       resourcePools:
///         - machineSpec:
///             machineType: n1-standard-4
///           replicaCount: 1
///           autoscalingSpec:
///             minReplicaCount: 1
///             maxReplicaCount: 2
/// ```
///
/// ### Vertex Ai Persistent Resource Machine Spec
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const persistentResource = new gcp.vertex.AiPersistentResource("persistent_resource", {
///     name: "example-persistent-resource",
///     location: "us-central1",
///     resourcePools: [{
///         machineSpec: {
///             machineType: "a3-highgpu-8g",
///             acceleratorCount: 8,
///             acceleratorType: "NVIDIA_H100_80GB",
///         },
///         replicaCount: "1",
///         diskSpec: {
///             bootDiskSizeGb: 200,
///             bootDiskType: "pd-ssd",
///         },
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// persistent_resource = gcp.vertex.AiPersistentResource("persistent_resource",
///     name="example-persistent-resource",
///     location="us-central1",
///     resource_pools=[{
///         "machine_spec": {
///             "machine_type": "a3-highgpu-8g",
///             "accelerator_count": 8,
///             "accelerator_type": "NVIDIA_H100_80GB",
///         },
///         "replica_count": "1",
///         "disk_spec": {
///             "boot_disk_size_gb": 200,
///             "boot_disk_type": "pd-ssd",
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
///     var persistentResource = new Gcp.Vertex.AiPersistentResource("persistent_resource", new()
///     {
///         Name = "example-persistent-resource",
///         Location = "us-central1",
///         ResourcePools = new[]
///         {
///             new Gcp.Vertex.Inputs.AiPersistentResourceResourcePoolArgs
///             {
///                 MachineSpec = new Gcp.Vertex.Inputs.AiPersistentResourceResourcePoolMachineSpecArgs
///                 {
///                     MachineType = "a3-highgpu-8g",
///                     AcceleratorCount = 8,
///                     AcceleratorType = "NVIDIA_H100_80GB",
///                 },
///                 ReplicaCount = "1",
///                 DiskSpec = new Gcp.Vertex.Inputs.AiPersistentResourceResourcePoolDiskSpecArgs
///                 {
///                     BootDiskSizeGb = 200,
///                     BootDiskType = "pd-ssd",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/vertex"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := vertex.NewAiPersistentResource(ctx, "persistent_resource", &vertex.AiPersistentResourceArgs{
/// 			Name:     pulumi.String("example-persistent-resource"),
/// 			Location: pulumi.String("us-central1"),
/// 			ResourcePools: vertex.AiPersistentResourceResourcePoolArray{
/// 				&vertex.AiPersistentResourceResourcePoolArgs{
/// 					MachineSpec: &vertex.AiPersistentResourceResourcePoolMachineSpecArgs{
/// 						MachineType:      pulumi.String("a3-highgpu-8g"),
/// 						AcceleratorCount: pulumi.Int(8),
/// 						AcceleratorType:  pulumi.String("NVIDIA_H100_80GB"),
/// 					},
/// 					ReplicaCount: pulumi.String("1"),
/// 					DiskSpec: &vertex.AiPersistentResourceResourcePoolDiskSpecArgs{
/// 						BootDiskSizeGb: pulumi.Int(200),
/// 						BootDiskType:   pulumi.String("pd-ssd"),
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
/// resource "gcp_vertex_aipersistentresource" "persistent_resource" {
///   name     = "example-persistent-resource"
///   location = "us-central1"
///   resource_pools {
///     machine_spec = {
///       machine_type      = "a3-highgpu-8g"
///       accelerator_count = 8
///       accelerator_type  = "NVIDIA_H100_80GB"
///     }
///     replica_count = "1"
///     disk_spec = {
///       boot_disk_size_gb = 200
///       boot_disk_type    = "pd-ssd"
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
/// import com.pulumi.gcp.vertex.AiPersistentResource;
/// import com.pulumi.gcp.vertex.AiPersistentResourceArgs;
/// import com.pulumi.gcp.vertex.inputs.AiPersistentResourceResourcePoolArgs;
/// import com.pulumi.gcp.vertex.inputs.AiPersistentResourceResourcePoolMachineSpecArgs;
/// import com.pulumi.gcp.vertex.inputs.AiPersistentResourceResourcePoolDiskSpecArgs;
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
///         var persistentResource = new AiPersistentResource("persistentResource", AiPersistentResourceArgs.builder()
///             .name("example-persistent-resource")
///             .location("us-central1")
///             .resourcePools(AiPersistentResourceResourcePoolArgs.builder()
///                 .machineSpec(AiPersistentResourceResourcePoolMachineSpecArgs.builder()
///                     .machineType("a3-highgpu-8g")
///                     .acceleratorCount(8)
///                     .acceleratorType("NVIDIA_H100_80GB")
///                     .build())
///                 .replicaCount("1")
///                 .diskSpec(AiPersistentResourceResourcePoolDiskSpecArgs.builder()
///                     .bootDiskSizeGb(200)
///                     .bootDiskType("pd-ssd")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   persistentResource:
///     type: gcp:vertex:AiPersistentResource
///     name: persistent_resource
///     properties:
///       name: example-persistent-resource
///       location: us-central1
///       resourcePools:
///         - machineSpec:
///             machineType: a3-highgpu-8g
///             acceleratorCount: 8
///             acceleratorType: NVIDIA_H100_80GB
///           replicaCount: '1'
///           diskSpec:
///             bootDiskSizeGb: 200
///             bootDiskType: pd-ssd
/// ```
///
/// ### Vertex Ai Persistent Resource Network
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as time from "@pulumiverse/time";
///
/// // VPC network for Vertex AI peering
/// const vertexNetwork = new gcp.compute.Network("vertex_network", {
///     name: "vertex-network",
///     autoCreateSubnetworks: false,
/// });
/// // Reserved IP range for Vertex AI peering
/// const vertexRange = new gcp.compute.GlobalAddress("vertex_range", {
///     name: "vertex-ip-range",
///     purpose: "VPC_PEERING",
///     addressType: "INTERNAL",
///     prefixLength: 24,
///     network: vertexNetwork.id,
/// });
/// // Service networking connection for Vertex AI
/// const vertexVpcConnection = new gcp.servicenetworking.Connection("vertex_vpc_connection", {
///     network: vertexNetwork.id,
///     service: "servicenetworking.googleapis.com",
///     reservedPeeringRanges: [vertexRange.name],
/// });
/// // Subnetwork for the network attachment
/// const pscSubnetwork = new gcp.compute.Subnetwork("psc_subnetwork", {
///     name: "psc-subnetwork",
///     region: "us-central1",
///     ipCidrRange: "10.0.0.0/16",
///     network: vertexNetwork.id,
/// });
/// // Network attachment for PSC-I
/// const pscAttachment = new gcp.compute.NetworkAttachment("psc_attachment", {
///     name: "psc-attachment",
///     region: "us-central1",
///     connectionPreference: "ACCEPT_MANUAL",
///     subnetworks: [pscSubnetwork.id],
/// });
/// const waitForDeletion = new time.Sleep("wait_for_deletion", {destroyDuration: "300s"}, {
///     dependsOn: [
///         pscAttachment,
///         vertexVpcConnection,
///     ],
/// });
/// const project = gcp.organizations.getProject({});
/// // Grant Vertex AI service agent access to the KMS key
/// const cryptoKey = new gcp.kms.CryptoKeyIAMMember("crypto_key", {
///     cryptoKeyId: "example-key",
///     role: "roles/cloudkms.cryptoKeyEncrypterDecrypter",
///     member: project.then(project => `serviceAccount:service-${project.number}@gcp-sa-aiplatform.iam.gserviceaccount.com`),
/// });
/// const persistentResource = new gcp.vertex.AiPersistentResource("persistent_resource", {
///     name: "example-persistent-resource",
///     location: "us-central1",
///     displayName: "test-persistent-resource-full",
///     labels: {
///         env: "test",
///     },
///     network: pulumi.all([project, vertexNetwork.name]).apply(([project, name]) => `projects/${project.number}/global/networks/${name}`),
///     reservedIpRanges: [vertexRange.name],
///     encryptionSpec: {
///         kmsKeyName: "example-key",
///     },
///     pscInterfaceConfig: {
///         networkAttachment: pscAttachment.id,
///         dnsPeeringConfigs: [{
///             domain: "example.com.",
///             targetProject: project.then(project => project.projectId),
///             targetNetwork: vertexNetwork.name,
///         }],
///     },
///     resourcePools: [{
///         id: "vpr-resource-pool",
///         replicaCount: "1",
///         machineSpec: {
///             machineType: "n1-standard-4",
///         },
///         diskSpec: {
///             bootDiskSizeGb: 200,
///             bootDiskType: "pd-ssd",
///         },
///     }],
///     resourceRuntimeSpec: {
///         serviceAccountSpec: {
///             enableCustomServiceAccount: true,
///         },
///     },
/// }, {
///     dependsOn: [
///         vertexVpcConnection,
///         cryptoKey,
///         waitForDeletion,
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumiverse_time as time
///
/// # VPC network for Vertex AI peering
/// vertex_network = gcp.compute.Network("vertex_network",
///     name="vertex-network",
///     auto_create_subnetworks=False)
/// # Reserved IP range for Vertex AI peering
/// vertex_range = gcp.compute.GlobalAddress("vertex_range",
///     name="vertex-ip-range",
///     purpose="VPC_PEERING",
///     address_type="INTERNAL",
///     prefix_length=24,
///     network=vertex_network.id)
/// # Service networking connection for Vertex AI
/// vertex_vpc_connection = gcp.servicenetworking.Connection("vertex_vpc_connection",
///     network=vertex_network.id,
///     service="servicenetworking.googleapis.com",
///     reserved_peering_ranges=[vertex_range.name])
/// # Subnetwork for the network attachment
/// psc_subnetwork = gcp.compute.Subnetwork("psc_subnetwork",
///     name="psc-subnetwork",
///     region="us-central1",
///     ip_cidr_range="10.0.0.0/16",
///     network=vertex_network.id)
/// # Network attachment for PSC-I
/// psc_attachment = gcp.compute.NetworkAttachment("psc_attachment",
///     name="psc-attachment",
///     region="us-central1",
///     connection_preference="ACCEPT_MANUAL",
///     subnetworks=[psc_subnetwork.id])
/// wait_for_deletion = time.Sleep("wait_for_deletion", destroy_duration="300s",
/// opts = pulumi.ResourceOptions(depends_on=[
///         psc_attachment,
///         vertex_vpc_connection,
///     ]))
/// project = gcp.organizations.get_project()
/// # Grant Vertex AI service agent access to the KMS key
/// crypto_key = gcp.kms.CryptoKeyIAMMember("crypto_key",
///     crypto_key_id="example-key",
///     role="roles/cloudkms.cryptoKeyEncrypterDecrypter",
///     member=f"serviceAccount:service-{project.number}@gcp-sa-aiplatform.iam.gserviceaccount.com")
/// persistent_resource = gcp.vertex.AiPersistentResource("persistent_resource",
///     name="example-persistent-resource",
///     location="us-central1",
///     display_name="test-persistent-resource-full",
///     labels={
///         "env": "test",
///     },
///     network=vertex_network.name.apply(lambda name: f"projects/{project.number}/global/networks/{name}"),
///     reserved_ip_ranges=[vertex_range.name],
///     encryption_spec={
///         "kms_key_name": "example-key",
///     },
///     psc_interface_config={
///         "network_attachment": psc_attachment.id,
///         "dns_peering_configs": [{
///             "domain": "example.com.",
///             "target_project": project.project_id,
///             "target_network": vertex_network.name,
///         }],
///     },
///     resource_pools=[{
///         "id": "vpr-resource-pool",
///         "replica_count": "1",
///         "machine_spec": {
///             "machine_type": "n1-standard-4",
///         },
///         "disk_spec": {
///             "boot_disk_size_gb": 200,
///             "boot_disk_type": "pd-ssd",
///         },
///     }],
///     resource_runtime_spec={
///         "service_account_spec": {
///             "enable_custom_service_account": True,
///         },
///     },
///     opts = pulumi.ResourceOptions(depends_on=[
///             vertex_vpc_connection,
///             crypto_key,
///             wait_for_deletion,
///         ]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
/// using Time = Pulumiverse.Time;
///
/// return await Deployment.RunAsync(() =>
/// {
///     // VPC network for Vertex AI peering
///     var vertexNetwork = new Gcp.Compute.Network("vertex_network", new()
///     {
///         Name = "vertex-network",
///         AutoCreateSubnetworks = false,
///     });
///
///     // Reserved IP range for Vertex AI peering
///     var vertexRange = new Gcp.Compute.GlobalAddress("vertex_range", new()
///     {
///         Name = "vertex-ip-range",
///         Purpose = "VPC_PEERING",
///         AddressType = "INTERNAL",
///         PrefixLength = 24,
///         Network = vertexNetwork.Id,
///     });
///
///     // Service networking connection for Vertex AI
///     var vertexVpcConnection = new Gcp.ServiceNetworking.Connection("vertex_vpc_connection", new()
///     {
///         Network = vertexNetwork.Id,
///         Service = "servicenetworking.googleapis.com",
///         ReservedPeeringRanges = new[]
///         {
///             vertexRange.Name,
///         },
///     });
///
///     // Subnetwork for the network attachment
///     var pscSubnetwork = new Gcp.Compute.Subnetwork("psc_subnetwork", new()
///     {
///         Name = "psc-subnetwork",
///         Region = "us-central1",
///         IpCidrRange = "10.0.0.0/16",
///         Network = vertexNetwork.Id,
///     });
///
///     // Network attachment for PSC-I
///     var pscAttachment = new Gcp.Compute.NetworkAttachment("psc_attachment", new()
///     {
///         Name = "psc-attachment",
///         Region = "us-central1",
///         ConnectionPreference = "ACCEPT_MANUAL",
///         Subnetworks = new[]
///         {
///             pscSubnetwork.Id,
///         },
///     });
///
///     var waitForDeletion = new Time.Sleep("wait_for_deletion", new()
///     {
///         DestroyDuration = "300s",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             pscAttachment,
///             vertexVpcConnection,
///         },
///     });
///
///     var project = Gcp.Organizations.GetProject.Invoke();
///
///     // Grant Vertex AI service agent access to the KMS key
///     var cryptoKey = new Gcp.Kms.CryptoKeyIAMMember("crypto_key", new()
///     {
///         CryptoKeyId = "example-key",
///         Role = "roles/cloudkms.cryptoKeyEncrypterDecrypter",
///         Member = $"serviceAccount:service-{project.Apply(getProjectResult => getProjectResult.Number)}@gcp-sa-aiplatform.iam.gserviceaccount.com",
///     });
///
///     var persistentResource = new Gcp.Vertex.AiPersistentResource("persistent_resource", new()
///     {
///         Name = "example-persistent-resource",
///         Location = "us-central1",
///         DisplayName = "test-persistent-resource-full",
///         Labels =
///         {
///             { "env", "test" },
///         },
///         Network = Output.Tuple(project, vertexNetwork.Name).Apply(values =>
///         {
///             var project = values.Item1;
///             var name = values.Item2;
///             return $"projects/{project.Apply(getProjectResult => getProjectResult.Number)}/global/networks/{name}";
///         }),
///         ReservedIpRanges = new[]
///         {
///             vertexRange.Name,
///         },
///         EncryptionSpec = new Gcp.Vertex.Inputs.AiPersistentResourceEncryptionSpecArgs
///         {
///             KmsKeyName = "example-key",
///         },
///         PscInterfaceConfig = new Gcp.Vertex.Inputs.AiPersistentResourcePscInterfaceConfigArgs
///         {
///             NetworkAttachment = pscAttachment.Id,
///             DnsPeeringConfigs = new[]
///             {
///                 new Gcp.Vertex.Inputs.AiPersistentResourcePscInterfaceConfigDnsPeeringConfigArgs
///                 {
///                     Domain = "example.com.",
///                     TargetProject = project.Apply(getProjectResult => getProjectResult.ProjectId),
///                     TargetNetwork = vertexNetwork.Name,
///                 },
///             },
///         },
///         ResourcePools = new[]
///         {
///             new Gcp.Vertex.Inputs.AiPersistentResourceResourcePoolArgs
///             {
///                 Id = "vpr-resource-pool",
///                 ReplicaCount = "1",
///                 MachineSpec = new Gcp.Vertex.Inputs.AiPersistentResourceResourcePoolMachineSpecArgs
///                 {
///                     MachineType = "n1-standard-4",
///                 },
///                 DiskSpec = new Gcp.Vertex.Inputs.AiPersistentResourceResourcePoolDiskSpecArgs
///                 {
///                     BootDiskSizeGb = 200,
///                     BootDiskType = "pd-ssd",
///                 },
///             },
///         },
///         ResourceRuntimeSpec = new Gcp.Vertex.Inputs.AiPersistentResourceResourceRuntimeSpecArgs
///         {
///             ServiceAccountSpec = new Gcp.Vertex.Inputs.AiPersistentResourceResourceRuntimeSpecServiceAccountSpecArgs
///             {
///                 EnableCustomServiceAccount = true,
///             },
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             vertexVpcConnection,
///             cryptoKey,
///             waitForDeletion,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/kms"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/servicenetworking"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/vertex"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumiverse/pulumi-time/sdk/go/time"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		// VPC network for Vertex AI peering
/// 		vertexNetwork, err := compute.NewNetwork(ctx, "vertex_network", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("vertex-network"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Reserved IP range for Vertex AI peering
/// 		vertexRange, err := compute.NewGlobalAddress(ctx, "vertex_range", &compute.GlobalAddressArgs{
/// 			Name:         pulumi.String("vertex-ip-range"),
/// 			Purpose:      pulumi.String("VPC_PEERING"),
/// 			AddressType:  pulumi.String("INTERNAL"),
/// 			PrefixLength: pulumi.Int(24),
/// 			Network:      vertexNetwork.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Service networking connection for Vertex AI
/// 		vertexVpcConnection, err := servicenetworking.NewConnection(ctx, "vertex_vpc_connection", &servicenetworking.ConnectionArgs{
/// 			Network: vertexNetwork.ID().ToIDOutput().ToStringOutput(),
/// 			Service: pulumi.String("servicenetworking.googleapis.com"),
/// 			ReservedPeeringRanges: pulumi.StringArray{
/// 				vertexRange.Name,
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Subnetwork for the network attachment
/// 		pscSubnetwork, err := compute.NewSubnetwork(ctx, "psc_subnetwork", &compute.SubnetworkArgs{
/// 			Name:        pulumi.String("psc-subnetwork"),
/// 			Region:      pulumi.String("us-central1"),
/// 			IpCidrRange: pulumi.String("10.0.0.0/16"),
/// 			Network:     vertexNetwork.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Network attachment for PSC-I
/// 		pscAttachment, err := compute.NewNetworkAttachment(ctx, "psc_attachment", &compute.NetworkAttachmentArgs{
/// 			Name:                 pulumi.String("psc-attachment"),
/// 			Region:               pulumi.String("us-central1"),
/// 			ConnectionPreference: pulumi.String("ACCEPT_MANUAL"),
/// 			Subnetworks: pulumi.StringArray{
/// 				pscSubnetwork.ID().ToIDOutput().ToStringOutput(),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		waitForDeletion, err := time.NewSleep(ctx, "wait_for_deletion", &time.SleepArgs{
/// 			DestroyDuration: pulumi.String("300s"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			pscAttachment,
/// 			vertexVpcConnection,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Grant Vertex AI service agent access to the KMS key
/// 		cryptoKey, err := kms.NewCryptoKeyIAMMember(ctx, "crypto_key", &kms.CryptoKeyIAMMemberArgs{
/// 			CryptoKeyId: pulumi.String("example-key"),
/// 			Role:        pulumi.String("roles/cloudkms.cryptoKeyEncrypterDecrypter"),
/// 			Member:      pulumi.Sprintf("serviceAccount:service-%v@gcp-sa-aiplatform.iam.gserviceaccount.com", project.Number),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = vertex.NewAiPersistentResource(ctx, "persistent_resource", &vertex.AiPersistentResourceArgs{
/// 			Name:        pulumi.String("example-persistent-resource"),
/// 			Location:    pulumi.String("us-central1"),
/// 			DisplayName: pulumi.String("test-persistent-resource-full"),
/// 			Labels: pulumi.StringMap{
/// 				"env": pulumi.String("test"),
/// 			},
/// 			Network: vertexNetwork.Name.ApplyT(func(name string) (string, error) {
/// 				return fmt.Sprintf("projects/%v/global/networks/%v", project.Number, name), nil
/// 			}).(pulumi.StringOutput),
/// 			ReservedIpRanges: pulumi.StringArray{
/// 				vertexRange.Name,
/// 			},
/// 			EncryptionSpec: &vertex.AiPersistentResourceEncryptionSpecArgs{
/// 				KmsKeyName: pulumi.String("example-key"),
/// 			},
/// 			PscInterfaceConfig: &vertex.AiPersistentResourcePscInterfaceConfigArgs{
/// 				NetworkAttachment: pscAttachment.ID().ToIDOutput().ToStringOutput(),
/// 				DnsPeeringConfigs: vertex.AiPersistentResourcePscInterfaceConfigDnsPeeringConfigArray{
/// 					&vertex.AiPersistentResourcePscInterfaceConfigDnsPeeringConfigArgs{
/// 						Domain:        pulumi.String("example.com."),
/// 						TargetProject: pulumi.String(project.ProjectId),
/// 						TargetNetwork: vertexNetwork.Name,
/// 					},
/// 				},
/// 			},
/// 			ResourcePools: vertex.AiPersistentResourceResourcePoolArray{
/// 				&vertex.AiPersistentResourceResourcePoolArgs{
/// 					Id:           pulumi.String("vpr-resource-pool"),
/// 					ReplicaCount: pulumi.String("1"),
/// 					MachineSpec: &vertex.AiPersistentResourceResourcePoolMachineSpecArgs{
/// 						MachineType: pulumi.String("n1-standard-4"),
/// 					},
/// 					DiskSpec: &vertex.AiPersistentResourceResourcePoolDiskSpecArgs{
/// 						BootDiskSizeGb: pulumi.Int(200),
/// 						BootDiskType:   pulumi.String("pd-ssd"),
/// 					},
/// 				},
/// 			},
/// 			ResourceRuntimeSpec: &vertex.AiPersistentResourceResourceRuntimeSpecArgs{
/// 				ServiceAccountSpec: &vertex.AiPersistentResourceResourceRuntimeSpecServiceAccountSpecArgs{
/// 					EnableCustomServiceAccount: pulumi.Bool(true),
/// 				},
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			vertexVpcConnection,
/// 			cryptoKey,
/// 			waitForDeletion,
/// 		}))
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
///     time = {
///       source = "pulumi/time"
///     }
///   }
/// }
///
/// data "gcp_organizations_getproject" "project" {
/// }
///
/// resource "gcp_vertex_aipersistentresource" "persistent_resource" {
///   depends_on   = [gcp_servicenetworking_connection.vertex_vpc_connection, gcp_kms_cryptokeyiammember.crypto_key, time_sleep.wait_for_deletion]
///   name         = "example-persistent-resource"
///   location     = "us-central1"
///   display_name = "test-persistent-resource-full"
///   labels = {
///     "env" = "test"
///   }
///   network            ="projects/${data.gcp_organizations_getproject.project.number}/global/networks/${gcp_compute_network.vertex_network.name}"
///   reserved_ip_ranges = [gcp_compute_globaladdress.vertex_range.name]
///   encryption_spec = {
///     kms_key_name = "example-key"
///   }
///   psc_interface_config = {
///     network_attachment = gcp_compute_networkattachment.psc_attachment.id
///     dns_peering_configs = [{
///       "domain"        = "example.com."
///       "targetProject" = data.gcp_organizations_getproject.project.project_id
///       "targetNetwork" = gcp_compute_network.vertex_network.name
///     }]
///   }
///   resource_pools {
///     id            = "vpr-resource-pool"
///     replica_count = "1"
///     machine_spec = {
///       machine_type = "n1-standard-4"
///     }
///     disk_spec = {
///       boot_disk_size_gb = 200
///       boot_disk_type    = "pd-ssd"
///     }
///   }
///   resource_runtime_spec = {
///     service_account_spec = {
///       enable_custom_service_account = true
///     }
///   }
/// }
/// # VPC network for Vertex AI peering
/// resource "gcp_compute_network" "vertex_network" {
///   name                    = "vertex-network"
///   auto_create_subnetworks = false
/// }
/// # Service networking connection for Vertex AI
/// resource "gcp_servicenetworking_connection" "vertex_vpc_connection" {
///   network                 = gcp_compute_network.vertex_network.id
///   service                 = "servicenetworking.googleapis.com"
///   reserved_peering_ranges = [gcp_compute_globaladdress.vertex_range.name]
/// }
/// # Reserved IP range for Vertex AI peering
/// resource "gcp_compute_globaladdress" "vertex_range" {
///   name          = "vertex-ip-range"
///   purpose       = "VPC_PEERING"
///   address_type  = "INTERNAL"
///   prefix_length = 24
///   network       = gcp_compute_network.vertex_network.id
/// }
/// resource "time_sleep" "wait_for_deletion" {
///   depends_on       = [gcp_compute_networkattachment.psc_attachment, gcp_servicenetworking_connection.vertex_vpc_connection]
///   destroy_duration = "300s"
/// }
/// # Network attachment for PSC-I
/// resource "gcp_compute_networkattachment" "psc_attachment" {
///   name                  = "psc-attachment"
///   region                = "us-central1"
///   connection_preference = "ACCEPT_MANUAL"
///   subnetworks           = [gcp_compute_subnetwork.psc_subnetwork.id]
/// }
/// # Subnetwork for the network attachment
/// resource "gcp_compute_subnetwork" "psc_subnetwork" {
///   name          = "psc-subnetwork"
///   region        = "us-central1"
///   ip_cidr_range = "10.0.0.0/16"
///   network       = gcp_compute_network.vertex_network.id
/// }
/// # Grant Vertex AI service agent access to the KMS key
/// resource "gcp_kms_cryptokeyiammember" "crypto_key" {
///   crypto_key_id = "example-key"
///   role          = "roles/cloudkms.cryptoKeyEncrypterDecrypter"
///   member        ="serviceAccount:service-${data.gcp_organizations_getproject.project.number}@gcp-sa-aiplatform.iam.gserviceaccount.com"
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
/// import com.pulumi.gcp.compute.GlobalAddress;
/// import com.pulumi.gcp.compute.GlobalAddressArgs;
/// import com.pulumi.gcp.servicenetworking.Connection;
/// import com.pulumi.gcp.servicenetworking.ConnectionArgs;
/// import com.pulumi.gcp.compute.Subnetwork;
/// import com.pulumi.gcp.compute.SubnetworkArgs;
/// import com.pulumi.gcp.compute.NetworkAttachment;
/// import com.pulumi.gcp.compute.NetworkAttachmentArgs;
/// import com.pulumiverse.time.Sleep;
/// import com.pulumiverse.time.SleepArgs;
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
/// import com.pulumi.gcp.kms.CryptoKeyIAMMember;
/// import com.pulumi.gcp.kms.CryptoKeyIAMMemberArgs;
/// import com.pulumi.gcp.vertex.AiPersistentResource;
/// import com.pulumi.gcp.vertex.AiPersistentResourceArgs;
/// import com.pulumi.gcp.vertex.inputs.AiPersistentResourceEncryptionSpecArgs;
/// import com.pulumi.gcp.vertex.inputs.AiPersistentResourcePscInterfaceConfigArgs;
/// import com.pulumi.gcp.vertex.inputs.AiPersistentResourcePscInterfaceConfigDnsPeeringConfigArgs;
/// import com.pulumi.gcp.vertex.inputs.AiPersistentResourceResourcePoolArgs;
/// import com.pulumi.gcp.vertex.inputs.AiPersistentResourceResourcePoolMachineSpecArgs;
/// import com.pulumi.gcp.vertex.inputs.AiPersistentResourceResourcePoolDiskSpecArgs;
/// import com.pulumi.gcp.vertex.inputs.AiPersistentResourceResourceRuntimeSpecArgs;
/// import com.pulumi.gcp.vertex.inputs.AiPersistentResourceResourceRuntimeSpecServiceAccountSpecArgs;
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
///         // VPC network for Vertex AI peering
///         var vertexNetwork = new Network("vertexNetwork", NetworkArgs.builder()
///             .name("vertex-network")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         // Reserved IP range for Vertex AI peering
///         var vertexRange = new GlobalAddress("vertexRange", GlobalAddressArgs.builder()
///             .name("vertex-ip-range")
///             .purpose("VPC_PEERING")
///             .addressType("INTERNAL")
///             .prefixLength(24)
///             .network(vertexNetwork.id())
///             .build());
///
///         // Service networking connection for Vertex AI
///         var vertexVpcConnection = new Connection("vertexVpcConnection", ConnectionArgs.builder()
///             .network(vertexNetwork.id())
///             .service("servicenetworking.googleapis.com")
///             .reservedPeeringRanges(vertexRange.name())
///             .build());
///
///         // Subnetwork for the network attachment
///         var pscSubnetwork = new Subnetwork("pscSubnetwork", SubnetworkArgs.builder()
///             .name("psc-subnetwork")
///             .region("us-central1")
///             .ipCidrRange("10.0.0.0/16")
///             .network(vertexNetwork.id())
///             .build());
///
///         // Network attachment for PSC-I
///         var pscAttachment = new NetworkAttachment("pscAttachment", NetworkAttachmentArgs.builder()
///             .name("psc-attachment")
///             .region("us-central1")
///             .connectionPreference("ACCEPT_MANUAL")
///             .subnetworks(pscSubnetwork.id())
///             .build());
///
///         var waitForDeletion = new Sleep("waitForDeletion", SleepArgs.builder()
///             .destroyDuration("300s")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(
///                     pscAttachment,
///                     vertexVpcConnection)
///                 .build());
///
///         final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
///             .build());
///
///         // Grant Vertex AI service agent access to the KMS key
///         var cryptoKey = new CryptoKeyIAMMember("cryptoKey", CryptoKeyIAMMemberArgs.builder()
///             .cryptoKeyId("example-key")
///             .role("roles/cloudkms.cryptoKeyEncrypterDecrypter")
///             .member(String.format("serviceAccount:service-%s@gcp-sa-aiplatform.iam.gserviceaccount.com", project.number()))
///             .build());
///
///         var persistentResource = new AiPersistentResource("persistentResource", AiPersistentResourceArgs.builder()
///             .name("example-persistent-resource")
///             .location("us-central1")
///             .displayName("test-persistent-resource-full")
///             .labels(Map.of("env", "test"))
///             .network(vertexNetwork.name().applyValue(_name -> String.format("projects/%s/global/networks/%s", project.number(),_name)))
///             .reservedIpRanges(vertexRange.name())
///             .encryptionSpec(AiPersistentResourceEncryptionSpecArgs.builder()
///                 .kmsKeyName("example-key")
///                 .build())
///             .pscInterfaceConfig(AiPersistentResourcePscInterfaceConfigArgs.builder()
///                 .networkAttachment(pscAttachment.id())
///                 .dnsPeeringConfigs(AiPersistentResourcePscInterfaceConfigDnsPeeringConfigArgs.builder()
///                     .domain("example.com.")
///                     .targetProject(project.projectId())
///                     .targetNetwork(vertexNetwork.name())
///                     .build())
///                 .build())
///             .resourcePools(AiPersistentResourceResourcePoolArgs.builder()
///                 .id("vpr-resource-pool")
///                 .replicaCount("1")
///                 .machineSpec(AiPersistentResourceResourcePoolMachineSpecArgs.builder()
///                     .machineType("n1-standard-4")
///                     .build())
///                 .diskSpec(AiPersistentResourceResourcePoolDiskSpecArgs.builder()
///                     .bootDiskSizeGb(200)
///                     .bootDiskType("pd-ssd")
///                     .build())
///                 .build())
///             .resourceRuntimeSpec(AiPersistentResourceResourceRuntimeSpecArgs.builder()
///                 .serviceAccountSpec(AiPersistentResourceResourceRuntimeSpecServiceAccountSpecArgs.builder()
///                     .enableCustomServiceAccount(true)
///                     .build())
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(
///                     vertexVpcConnection,
///                     cryptoKey,
///                     waitForDeletion)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   persistentResource:
///     type: gcp:vertex:AiPersistentResource
///     name: persistent_resource
///     properties:
///       name: example-persistent-resource
///       location: us-central1
///       displayName: test-persistent-resource-full
///       labels:
///         env: test
///       network: projects/${project.number}/global/networks/${vertexNetwork.name}
///       reservedIpRanges:
///         - ${vertexRange.name}
///       encryptionSpec:
///         kmsKeyName: example-key
///       pscInterfaceConfig:
///         networkAttachment: ${pscAttachment.id}
///         dnsPeeringConfigs:
///           - domain: example.com.
///             targetProject: ${project.projectId}
///             targetNetwork: ${vertexNetwork.name}
///       resourcePools:
///         - id: vpr-resource-pool
///           replicaCount: '1'
///           machineSpec:
///             machineType: n1-standard-4
///           diskSpec:
///             bootDiskSizeGb: 200
///             bootDiskType: pd-ssd
///       resourceRuntimeSpec:
///         serviceAccountSpec:
///           enableCustomServiceAccount: true
///     options:
///       dependsOn:
///         - ${vertexVpcConnection}
///         - ${cryptoKey}
///         - ${waitForDeletion}
///   # VPC network for Vertex AI peering
///   vertexNetwork:
///     type: gcp:compute:Network
///     name: vertex_network
///     properties:
///       name: vertex-network
///       autoCreateSubnetworks: false
///   # Service networking connection for Vertex AI
///   vertexVpcConnection:
///     type: gcp:servicenetworking:Connection
///     name: vertex_vpc_connection
///     properties:
///       network: ${vertexNetwork.id}
///       service: servicenetworking.googleapis.com
///       reservedPeeringRanges:
///         - ${vertexRange.name}
///   # Reserved IP range for Vertex AI peering
///   vertexRange:
///     type: gcp:compute:GlobalAddress
///     name: vertex_range
///     properties:
///       name: vertex-ip-range
///       purpose: VPC_PEERING
///       addressType: INTERNAL
///       prefixLength: 24
///       network: ${vertexNetwork.id}
///   waitForDeletion:
///     type: time:Sleep
///     name: wait_for_deletion
///     properties:
///       destroyDuration: 300s
///     options:
///       dependsOn:
///         - ${pscAttachment}
///         - ${vertexVpcConnection}
///   # Network attachment for PSC-I
///   pscAttachment:
///     type: gcp:compute:NetworkAttachment
///     name: psc_attachment
///     properties:
///       name: psc-attachment
///       region: us-central1
///       connectionPreference: ACCEPT_MANUAL
///       subnetworks:
///         - ${pscSubnetwork.id}
///   # Subnetwork for the network attachment
///   pscSubnetwork:
///     type: gcp:compute:Subnetwork
///     name: psc_subnetwork
///     properties:
///       name: psc-subnetwork
///       region: us-central1
///       ipCidrRange: 10.0.0.0/16
///       network: ${vertexNetwork.id}
///   # Grant Vertex AI service agent access to the KMS key
///   cryptoKey:
///     type: gcp:kms:CryptoKeyIAMMember
///     name: crypto_key
///     properties:
///       cryptoKeyId: example-key
///       role: roles/cloudkms.cryptoKeyEncrypterDecrypter
///       member: serviceAccount:service-${project.number}@gcp-sa-aiplatform.iam.gserviceaccount.com
/// variables:
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
///
/// ## Import
///
/// PersistentResource can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/persistentResources/{{name}}`
/// * `{{project}}/{{location}}/{{name}}`
/// * `{{location}}/{{name}}`
///
///
/// When using the `pulumi import` command, PersistentResource can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:vertex/aiPersistentResource:AiPersistentResource default projects/{{project}}/locations/{{location}}/persistentResources/{{name}}
/// $ pulumi import gcp:vertex/aiPersistentResource:AiPersistentResource default {{project}}/{{location}}/{{name}}
/// $ pulumi import gcp:vertex/aiPersistentResource:AiPersistentResource default {{location}}/{{name}}
/// ```
class AiPersistentResource extends pulumi.CustomResource {
  /// Time when the PersistentResource was created.
  late final pulumi.Output<String> createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// The display name of the PersistentResource.
  /// The name can be up to 128 characters long and can consist of any UTF-8
  /// characters.
  late final pulumi.Output<String?> displayName;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// Represents a customer-managed encryption key specification that can be
  /// applied to a Vertex AI resource.
  /// Structure is documented below.
  late final pulumi.Output<AiPersistentResourceEncryptionSpec?> encryptionSpec;
  /// The `Status` type defines a logical error model that is suitable for
  /// different programming environments, including REST APIs and RPC APIs. It is
  /// used by [gRPC](https://github.com/grpc). Each `Status` message contains
  /// three pieces of data: error code, error message, and error details.
  /// You can find out more about this error model and how to work with it in the
  /// [API Design Guide](https://cloud.google.com/apis/design/errors).
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>> errors;
  /// The labels with user-defined metadata to organize PersistentResource.
  /// Label keys and values can be no longer than 64 characters
  /// (Unicode codepoints), can only contain lowercase letters, numeric
  /// characters, underscores and dashes. International characters are allowed.
  /// See https://goo.gl/xmQnxf for more information and examples of labels.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// The location of the PersistentResource. eg us-central1
  late final pulumi.Output<String?> location;
  /// The ID to use for the PersistentResource, which become the final component
  /// of the PersistentResource's resource name.
  /// The maximum length is 63 characters, and valid characters
  /// are `/^a-z?$/`.
  late final pulumi.Output<String> name;
  /// The full name of the Compute Engine
  /// [network](https://www.terraform.io/compute/docs/networks-and-firewalls#networks) to peered with
  /// Vertex AI to host the persistent resources.
  /// For example, `projects/12345/global/networks/myVPC`.
  /// [Format](https://www.terraform.io/compute/docs/reference/rest/v1/networks/insert)
  /// is of the form `projects/{project}/global/networks/{network}`.
  /// Where {project} is a project number, as in `12345`, and {network} is a
  /// network name.
  /// To specify this field, you must have already [configured VPC Network
  /// Peering for Vertex
  /// AI](https://cloud.google.com/vertex-ai/docs/general/vpc-peering).
  /// If this field is left unspecified, the resources aren't peered with any
  /// network.
  late final pulumi.Output<String?> network;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// Configuration for PSC-I.
  /// Structure is documented below.
  late final pulumi.Output<AiPersistentResourcePscInterfaceConfig?> pscInterfaceConfig;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// A list of names for the reserved IP ranges under the VPC network
  /// that can be used for this persistent resource.
  /// If set, we will deploy the persistent resource within the provided IP
  /// ranges. Otherwise, the persistent resource is deployed to any IP
  /// ranges under the provided VPC network.
  /// Example: ['vertex-ai-ip-range'].
  late final pulumi.Output<List<String>?> reservedIpRanges;
  /// The spec of the pools of different resources.
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>> resourcePools;
  /// Configuration for the runtime on a PersistentResource instance.
  /// Structure is documented below.
  late final pulumi.Output<AiPersistentResourceResourceRuntimeSpec?> resourceRuntimeSpec;
  /// Persistent Cluster runtime information as output
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>> resourceRuntimes;
  /// Reserved for future use.
  late final pulumi.Output<bool> satisfiesPzi;
  /// Reserved for future use.
  late final pulumi.Output<bool> satisfiesPzs;
  /// Time when the PersistentResource for the first time entered the `RUNNING`
  /// state.
  late final pulumi.Output<String> startTime;
  /// The detailed state of a PersistentResource.
  /// Possible values:
  /// PROVISIONING
  /// RUNNING
  /// STOPPING
  /// ERROR
  /// REBOOTING
  /// UPDATING
  late final pulumi.Output<String> state;
  /// Time when the PersistentResource was most recently updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [AiPersistentResource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AiPersistentResource]. {@macro pulumi_vertex_ai_persistent_resource_ai_persistent_resource_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AiPersistentResource(
    String name, {
    AiPersistentResourceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:vertex/aiPersistentResource:AiPersistentResource',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String?>('displayName');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    encryptionSpec = registerOutput<AiPersistentResourceEncryptionSpec?>('encryptionSpec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiPersistentResourceEncryptionSpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    errors = registerOutput<List<Map<String, dynamic>>>('errors');
    labels = registerOutput<Map<String, String>?>('labels');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    network = registerOutput<String?>('network');
    project = registerOutput<String>('project');
    pscInterfaceConfig = registerOutput<AiPersistentResourcePscInterfaceConfig?>('pscInterfaceConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiPersistentResourcePscInterfaceConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    reservedIpRanges = registerOutput<List<String>?>('reservedIpRanges');
    resourcePools = registerOutput<List<Map<String, dynamic>>>('resourcePools');
    resourceRuntimeSpec = registerOutput<AiPersistentResourceResourceRuntimeSpec?>('resourceRuntimeSpec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiPersistentResourceResourceRuntimeSpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    resourceRuntimes = registerOutput<List<Map<String, dynamic>>>('resourceRuntimes');
    satisfiesPzi = registerOutput<bool>('satisfiesPzi');
    satisfiesPzs = registerOutput<bool>('satisfiesPzs');
    startTime = registerOutput<String>('startTime');
    state = registerOutput<String>('state');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [AiPersistentResource] resource's state with the given [name] and [id].
  static AiPersistentResource get(
    String name,
    pulumi.Input<String> id, {
    AiPersistentResourceState? state,
  }) {
    return AiPersistentResource._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AiPersistentResource._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:vertex/aiPersistentResource:AiPersistentResource',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String?>('displayName');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    encryptionSpec = registerOutput<AiPersistentResourceEncryptionSpec?>('encryptionSpec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiPersistentResourceEncryptionSpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    errors = registerOutput<List<Map<String, dynamic>>>('errors');
    labels = registerOutput<Map<String, String>?>('labels');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    network = registerOutput<String?>('network');
    project = registerOutput<String>('project');
    pscInterfaceConfig = registerOutput<AiPersistentResourcePscInterfaceConfig?>('pscInterfaceConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiPersistentResourcePscInterfaceConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    reservedIpRanges = registerOutput<List<String>?>('reservedIpRanges');
    resourcePools = registerOutput<List<Map<String, dynamic>>>('resourcePools');
    resourceRuntimeSpec = registerOutput<AiPersistentResourceResourceRuntimeSpec?>('resourceRuntimeSpec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiPersistentResourceResourceRuntimeSpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    resourceRuntimes = registerOutput<List<Map<String, dynamic>>>('resourceRuntimes');
    satisfiesPzi = registerOutput<bool>('satisfiesPzi');
    satisfiesPzs = registerOutput<bool>('satisfiesPzs');
    startTime = registerOutput<String>('startTime');
    this.state = registerOutput<String>('state');
    updateTime = registerOutput<String>('updateTime');
  }
}
