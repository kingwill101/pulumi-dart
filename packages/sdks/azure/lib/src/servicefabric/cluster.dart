import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_args.dart';
import 'cluster_azure_active_directory.dart';
import 'cluster_certificate.dart';
import 'cluster_certificate_common_names.dart';
import 'cluster_diagnostics_config.dart';
import 'cluster_reverse_proxy_certificate.dart';
import 'cluster_reverse_proxy_certificate_common_names.dart';
import 'cluster_state.dart';
import 'cluster_upgrade_policy.dart';

/// Manages a Service Fabric Cluster.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-resources",
///     location: "West Europe",
/// });
/// const exampleCluster = new azure.servicefabric.Cluster("example", {
///     name: "example-servicefabric",
///     resourceGroupName: example.name,
///     location: example.location,
///     reliabilityLevel: "Bronze",
///     upgradeMode: "Manual",
///     clusterCodeVersion: "7.1.456.959",
///     vmImage: "Windows",
///     managementEndpoint: "https://example:80",
///     nodeTypes: [{
///         name: "first",
///         instanceCount: 3,
///         isPrimary: true,
///         clientEndpointPort: 2020,
///         httpEndpointPort: 80,
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_cluster = azure.servicefabric.Cluster("example",
///     name="example-servicefabric",
///     resource_group_name=example.name,
///     location=example.location,
///     reliability_level="Bronze",
///     upgrade_mode="Manual",
///     cluster_code_version="7.1.456.959",
///     vm_image="Windows",
///     management_endpoint="https://example:80",
///     node_types=[{
///         "name": "first",
///         "instance_count": 3,
///         "is_primary": True,
///         "client_endpoint_port": 2020,
///         "http_endpoint_port": 80,
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var exampleCluster = new Azure.ServiceFabric.Cluster("example", new()
///     {
///         Name = "example-servicefabric",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         ReliabilityLevel = "Bronze",
///         UpgradeMode = "Manual",
///         ClusterCodeVersion = "7.1.456.959",
///         VmImage = "Windows",
///         ManagementEndpoint = "https://example:80",
///         NodeTypes = new[]
///         {
///             new Azure.ServiceFabric.Inputs.ClusterNodeTypeArgs
///             {
///                 Name = "first",
///                 InstanceCount = 3,
///                 IsPrimary = true,
///                 ClientEndpointPort = 2020,
///                 HttpEndpointPort = 80,
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/servicefabric"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-resources"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = servicefabric.NewCluster(ctx, "example", &servicefabric.ClusterArgs{
/// 			Name:               pulumi.String("example-servicefabric"),
/// 			ResourceGroupName:  example.Name,
/// 			Location:           example.Location,
/// 			ReliabilityLevel:   pulumi.String("Bronze"),
/// 			UpgradeMode:        pulumi.String("Manual"),
/// 			ClusterCodeVersion: pulumi.String("7.1.456.959"),
/// 			VmImage:            pulumi.String("Windows"),
/// 			ManagementEndpoint: pulumi.String("https://example:80"),
/// 			NodeTypes: servicefabric.ClusterNodeTypeArray{
/// 				&servicefabric.ClusterNodeTypeArgs{
/// 					Name:               pulumi.String("first"),
/// 					InstanceCount:      pulumi.Int(3),
/// 					IsPrimary:          pulumi.Bool(true),
/// 					ClientEndpointPort: pulumi.Int(2020),
/// 					HttpEndpointPort:   pulumi.Int(80),
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
///     azure = {
///       source = "pulumi/azure"
///     }
///   }
/// }
///
/// resource "azure_core_resourcegroup" "example" {
///   name     = "example-resources"
///   location = "West Europe"
/// }
/// resource "azure_servicefabric_cluster" "example" {
///   name                 = "example-servicefabric"
///   resource_group_name  = azure_core_resourcegroup.example.name
///   location             = azure_core_resourcegroup.example.location
///   reliability_level    = "Bronze"
///   upgrade_mode         = "Manual"
///   cluster_code_version = "7.1.456.959"
///   vm_image             = "Windows"
///   management_endpoint  = "https://example:80"
///   node_types {
///     name                 = "first"
///     instance_count       = 3
///     is_primary           = true
///     client_endpoint_port = 2020
///     http_endpoint_port   = 80
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.servicefabric.Cluster;
/// import com.pulumi.azure.servicefabric.ClusterArgs;
/// import com.pulumi.azure.servicefabric.inputs.ClusterNodeTypeArgs;
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
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var exampleCluster = new Cluster("exampleCluster", ClusterArgs.builder()
///             .name("example-servicefabric")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .reliabilityLevel("Bronze")
///             .upgradeMode("Manual")
///             .clusterCodeVersion("7.1.456.959")
///             .vmImage("Windows")
///             .managementEndpoint("https://example:80")
///             .nodeTypes(ClusterNodeTypeArgs.builder()
///                 .name("first")
///                 .instanceCount(3)
///                 .isPrimary(true)
///                 .clientEndpointPort(2020)
///                 .httpEndpointPort(80)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:core:ResourceGroup
///     properties:
///       name: example-resources
///       location: West Europe
///   exampleCluster:
///     type: azure:servicefabric:Cluster
///     name: example
///     properties:
///       name: example-servicefabric
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       reliabilityLevel: Bronze
///       upgradeMode: Manual
///       clusterCodeVersion: 7.1.456.959
///       vmImage: Windows
///       managementEndpoint: https://example:80
///       nodeTypes:
///         - name: first
///           instanceCount: 3
///           isPrimary: true
///           clientEndpointPort: 2020
///           httpEndpointPort: 80
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.ServiceFabric` - 2021-06-01
///
/// ## Import
///
/// Service Fabric Clusters can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:servicefabric/cluster:Cluster cluster1 /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.ServiceFabric/clusters/cluster1
/// ```
class Cluster extends pulumi.CustomResource {
  /// A List of one or more features which should be enabled, such as `DnsService`.
  late final pulumi.Output<List<String>?> addOnFeatures;
  /// An `azureActiveDirectory` block as defined below.
  late final pulumi.Output<ClusterAzureActiveDirectory?> azureActiveDirectory;
  /// A `certificate` block as defined below. Conflicts with `certificateCommonNames`.
  late final pulumi.Output<ClusterCertificate?> certificate;
  /// A `certificateCommonNames` block as defined below. Conflicts with `certificate`.
  late final pulumi.Output<ClusterCertificateCommonNames?> certificateCommonNames;
  /// A `clientCertificateCommonName` block as defined below.
  ///
  /// &gt; **Note:** If Client Certificates are enabled then at a Certificate must be configured on the cluster.
  late final pulumi.Output<List<Map<String, dynamic>>?> clientCertificateCommonNames;
  /// One or more `clientCertificateThumbprint` blocks as defined below.
  late final pulumi.Output<List<Map<String, dynamic>>?> clientCertificateThumbprints;
  /// Required if Upgrade Mode set to `Manual`, Specifies the Version of the Cluster Code of the cluster.
  late final pulumi.Output<String> clusterCodeVersion;
  /// The Cluster Endpoint for this Service Fabric Cluster.
  late final pulumi.Output<String> clusterEndpoint;
  /// A `diagnosticsConfig` block as defined below.
  late final pulumi.Output<ClusterDiagnosticsConfig?> diagnosticsConfig;
  /// One or more `fabricSettings` blocks as defined below.
  late final pulumi.Output<List<Map<String, dynamic>>?> fabricSettings;
  /// Specifies the Azure Region where the Service Fabric Cluster should exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;
  /// Specifies the Management Endpoint of the cluster such as `http://example.com`. Changing this forces a new resource to be created.
  late final pulumi.Output<String> managementEndpoint;
  /// The name of the Service Fabric Cluster. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// One or more `nodeType` blocks as defined below.
  late final pulumi.Output<List<Map<String, dynamic>>> nodeTypes;
  /// Specifies the Reliability Level of the Cluster. Possible values include `None`, `Bronze`, `Silver`, `Gold` and `Platinum`.
  ///
  /// &gt; **Note:** The Reliability Level of the Cluster depends on the number of nodes in the Cluster: `Platinum` requires at least 9 VM's, `Gold` requires at least 7 VM's, `Silver` requires at least 5 VM's, `Bronze` requires at least 3 VM's.
  late final pulumi.Output<String> reliabilityLevel;
  /// The name of the Resource Group in which the Service Fabric Cluster exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// A `reverseProxyCertificate` block as defined below. Conflicts with `reverseProxyCertificateCommonNames`.
  late final pulumi.Output<ClusterReverseProxyCertificate?> reverseProxyCertificate;
  /// A `reverseProxyCertificateCommonNames` block as defined below. Conflicts with `reverseProxyCertificate`.
  late final pulumi.Output<ClusterReverseProxyCertificateCommonNames?> reverseProxyCertificateCommonNames;
  /// Specifies the logical grouping of VMs in upgrade domains. Possible values are `Hierarchical` or `Parallel`.
  late final pulumi.Output<String?> serviceFabricZonalUpgradeMode;
  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Specifies the Upgrade Mode of the cluster. Possible values are `Automatic` or `Manual`.
  late final pulumi.Output<String> upgradeMode;
  /// A `upgradePolicy` block as defined below.
  late final pulumi.Output<ClusterUpgradePolicy?> upgradePolicy;
  /// Specifies the Image expected for the Service Fabric Cluster, such as `Windows`. Changing this forces a new resource to be created.
  late final pulumi.Output<String> vmImage;
  /// Specifies the upgrade mode for the virtual machine scale set updates that happen in all availability zones at once. Possible values are `Hierarchical` or `Parallel`.
  late final pulumi.Output<String?> vmssZonalUpgradeMode;

  /// Creates a new [Cluster].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Cluster]. {@macro pulumi_servicefabric_cluster_cluster_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Cluster(
    String name, {
    ClusterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:servicefabric/cluster:Cluster',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    addOnFeatures = registerOutput<List<String>?>('addOnFeatures');
    azureActiveDirectory = registerOutput<ClusterAzureActiveDirectory?>('azureActiveDirectory', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterAzureActiveDirectory.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    certificate = registerOutput<ClusterCertificate?>('certificate', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterCertificate.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    certificateCommonNames = registerOutput<ClusterCertificateCommonNames?>('certificateCommonNames', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterCertificateCommonNames.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    clientCertificateCommonNames = registerOutput<List<Map<String, dynamic>>?>('clientCertificateCommonNames');
    clientCertificateThumbprints = registerOutput<List<Map<String, dynamic>>?>('clientCertificateThumbprints');
    clusterCodeVersion = registerOutput<String>('clusterCodeVersion');
    clusterEndpoint = registerOutput<String>('clusterEndpoint');
    diagnosticsConfig = registerOutput<ClusterDiagnosticsConfig?>('diagnosticsConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterDiagnosticsConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    fabricSettings = registerOutput<List<Map<String, dynamic>>?>('fabricSettings');
    location = registerOutput<String>('location');
    managementEndpoint = registerOutput<String>('managementEndpoint');
    this.name = registerOutput<String>('name');
    nodeTypes = registerOutput<List<Map<String, dynamic>>>('nodeTypes');
    reliabilityLevel = registerOutput<String>('reliabilityLevel');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    reverseProxyCertificate = registerOutput<ClusterReverseProxyCertificate?>('reverseProxyCertificate', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterReverseProxyCertificate.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    reverseProxyCertificateCommonNames = registerOutput<ClusterReverseProxyCertificateCommonNames?>('reverseProxyCertificateCommonNames', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterReverseProxyCertificateCommonNames.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    serviceFabricZonalUpgradeMode = registerOutput<String?>('serviceFabricZonalUpgradeMode');
    tags = registerOutput<Map<String, String>?>('tags');
    upgradeMode = registerOutput<String>('upgradeMode');
    upgradePolicy = registerOutput<ClusterUpgradePolicy?>('upgradePolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterUpgradePolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    vmImage = registerOutput<String>('vmImage');
    vmssZonalUpgradeMode = registerOutput<String?>('vmssZonalUpgradeMode');
  }

  /// Gets an existing [Cluster] resource's state with the given [name] and [id].
  static Cluster get(
    String name,
    pulumi.Input<String> id, {
    ClusterState? state,
  }) {
    return Cluster._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Cluster._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:servicefabric/cluster:Cluster',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    addOnFeatures = registerOutput<List<String>?>('addOnFeatures');
    azureActiveDirectory = registerOutput<ClusterAzureActiveDirectory?>('azureActiveDirectory', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterAzureActiveDirectory.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    certificate = registerOutput<ClusterCertificate?>('certificate', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterCertificate.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    certificateCommonNames = registerOutput<ClusterCertificateCommonNames?>('certificateCommonNames', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterCertificateCommonNames.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    clientCertificateCommonNames = registerOutput<List<Map<String, dynamic>>?>('clientCertificateCommonNames');
    clientCertificateThumbprints = registerOutput<List<Map<String, dynamic>>?>('clientCertificateThumbprints');
    clusterCodeVersion = registerOutput<String>('clusterCodeVersion');
    clusterEndpoint = registerOutput<String>('clusterEndpoint');
    diagnosticsConfig = registerOutput<ClusterDiagnosticsConfig?>('diagnosticsConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterDiagnosticsConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    fabricSettings = registerOutput<List<Map<String, dynamic>>?>('fabricSettings');
    location = registerOutput<String>('location');
    managementEndpoint = registerOutput<String>('managementEndpoint');
    this.name = registerOutput<String>('name');
    nodeTypes = registerOutput<List<Map<String, dynamic>>>('nodeTypes');
    reliabilityLevel = registerOutput<String>('reliabilityLevel');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    reverseProxyCertificate = registerOutput<ClusterReverseProxyCertificate?>('reverseProxyCertificate', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterReverseProxyCertificate.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    reverseProxyCertificateCommonNames = registerOutput<ClusterReverseProxyCertificateCommonNames?>('reverseProxyCertificateCommonNames', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterReverseProxyCertificateCommonNames.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    serviceFabricZonalUpgradeMode = registerOutput<String?>('serviceFabricZonalUpgradeMode');
    tags = registerOutput<Map<String, String>?>('tags');
    upgradeMode = registerOutput<String>('upgradeMode');
    upgradePolicy = registerOutput<ClusterUpgradePolicy?>('upgradePolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterUpgradePolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    vmImage = registerOutput<String>('vmImage');
    vmssZonalUpgradeMode = registerOutput<String?>('vmssZonalUpgradeMode');
  }
}
