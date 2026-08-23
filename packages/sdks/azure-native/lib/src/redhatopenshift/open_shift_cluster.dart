import 'package:pulumi/pulumi.dart' as pulumi;
import 'apiserver_profile_response.dart';
import 'cluster_profile_response.dart';
import 'console_profile_response.dart';
import 'master_profile_response.dart';
import 'network_profile_response.dart';
import 'open_shift_cluster_args.dart';
import 'service_principal_profile_response.dart';
import 'system_data_response.dart';

/// OpenShiftCluster represents an Azure Red Hat OpenShift cluster.
///
/// Uses Azure REST API version 2023-11-22. In version 2.x of the Azure Native provider, it used API version 2022-09-04.
///
/// Other available API versions: 2022-09-04, 2023-04-01, 2023-07-01-preview, 2023-09-04, 2024-08-12-preview, 2025-07-25. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native redhatopenshift [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Creates or updates a OpenShift cluster with the specified subscription, resource group and resource name.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var openShiftCluster = new AzureNative.RedHatOpenShift.OpenShiftCluster("openShiftCluster", new()
///     {
///         ApiserverProfile = new AzureNative.RedHatOpenShift.Inputs.APIServerProfileArgs
///         {
///             Visibility = AzureNative.RedHatOpenShift.Visibility.Public,
///         },
///         ClusterProfile = new AzureNative.RedHatOpenShift.Inputs.ClusterProfileArgs
///         {
///             Domain = "cluster.location.aroapp.io",
///             FipsValidatedModules = AzureNative.RedHatOpenShift.FipsValidatedModules.Enabled,
///             PullSecret = "{\"auths\":{\"registry.connect.redhat.com\":{\"auth\":\"\"},\"registry.redhat.io\":{\"auth\":\"\"}}}",
///             ResourceGroupId = "/subscriptions/subscriptionId/resourceGroups/clusterResourceGroup",
///         },
///         IngressProfiles = new[]
///         {
///             new AzureNative.RedHatOpenShift.Inputs.IngressProfileArgs
///             {
///                 Name = "default",
///                 Visibility = AzureNative.RedHatOpenShift.Visibility.Public,
///             },
///         },
///         Location = "location",
///         MasterProfile = new AzureNative.RedHatOpenShift.Inputs.MasterProfileArgs
///         {
///             EncryptionAtHost = AzureNative.RedHatOpenShift.EncryptionAtHost.Enabled,
///             SubnetId = "/subscriptions/subscriptionId/resourceGroups/vnetResourceGroup/providers/Microsoft.Network/virtualNetworks/vnet/subnets/master",
///             VmSize = "Standard_D8s_v3",
///         },
///         NetworkProfile = new AzureNative.RedHatOpenShift.Inputs.NetworkProfileArgs
///         {
///             LoadBalancerProfile = new AzureNative.RedHatOpenShift.Inputs.LoadBalancerProfileArgs
///             {
///                 ManagedOutboundIps = new AzureNative.RedHatOpenShift.Inputs.ManagedOutboundIPsArgs
///                 {
///                     Count = 1,
///                 },
///             },
///             PodCidr = "10.128.0.0/14",
///             PreconfiguredNSG = AzureNative.RedHatOpenShift.PreconfiguredNSG.Disabled,
///             ServiceCidr = "172.30.0.0/16",
///         },
///         ResourceGroupName = "resourceGroup",
///         ResourceName = "resourceName",
///         ServicePrincipalProfile = new AzureNative.RedHatOpenShift.Inputs.ServicePrincipalProfileArgs
///         {
///             ClientId = "clientId",
///             ClientSecret = "clientSecret",
///         },
///         Tags =
///         {
///             { "key", "value" },
///         },
///         WorkerProfiles = new[]
///         {
///             new AzureNative.RedHatOpenShift.Inputs.WorkerProfileArgs
///             {
///                 Count = 3,
///                 DiskSizeGB = 128,
///                 Name = "worker",
///                 SubnetId = "/subscriptions/subscriptionId/resourceGroups/vnetResourceGroup/providers/Microsoft.Network/virtualNetworks/vnet/subnets/worker",
///                 VmSize = "Standard_D2s_v3",
///             },
///         },
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	redhatopenshift "github.com/pulumi/pulumi-azure-native-sdk/redhatopenshift/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := redhatopenshift.NewOpenShiftCluster(ctx, "openShiftCluster", &redhatopenshift.OpenShiftClusterArgs{
/// 			ApiserverProfile: &redhatopenshift.APIServerProfileArgs{
/// 				Visibility: pulumi.String(redhatopenshift.VisibilityPublic),
/// 			},
/// 			ClusterProfile: &redhatopenshift.ClusterProfileArgs{
/// 				Domain:               pulumi.String("cluster.location.aroapp.io"),
/// 				FipsValidatedModules: pulumi.String(redhatopenshift.FipsValidatedModulesEnabled),
/// 				PullSecret:           pulumi.String("{\"auths\":{\"registry.connect.redhat.com\":{\"auth\":\"\"},\"registry.redhat.io\":{\"auth\":\"\"}}}"),
/// 				ResourceGroupId:      pulumi.String("/subscriptions/subscriptionId/resourceGroups/clusterResourceGroup"),
/// 			},
/// 			IngressProfiles: redhatopenshift.IngressProfileArray{
/// 				&redhatopenshift.IngressProfileArgs{
/// 					Name:       pulumi.String("default"),
/// 					Visibility: pulumi.String(redhatopenshift.VisibilityPublic),
/// 				},
/// 			},
/// 			Location: pulumi.String("location"),
/// 			MasterProfile: &redhatopenshift.MasterProfileArgs{
/// 				EncryptionAtHost: pulumi.String(redhatopenshift.EncryptionAtHostEnabled),
/// 				SubnetId:         pulumi.String("/subscriptions/subscriptionId/resourceGroups/vnetResourceGroup/providers/Microsoft.Network/virtualNetworks/vnet/subnets/master"),
/// 				VmSize:           pulumi.String("Standard_D8s_v3"),
/// 			},
/// 			NetworkProfile: &redhatopenshift.NetworkProfileArgs{
/// 				LoadBalancerProfile: &redhatopenshift.LoadBalancerProfileArgs{
/// 					ManagedOutboundIps: &redhatopenshift.ManagedOutboundIPsArgs{
/// 						Count: pulumi.Int(1),
/// 					},
/// 				},
/// 				PodCidr:          pulumi.String("10.128.0.0/14"),
/// 				PreconfiguredNSG: pulumi.String(redhatopenshift.PreconfiguredNSGDisabled),
/// 				ServiceCidr:      pulumi.String("172.30.0.0/16"),
/// 			},
/// 			ResourceGroupName: pulumi.String("resourceGroup"),
/// 			ResourceName:      pulumi.String("resourceName"),
/// 			ServicePrincipalProfile: &redhatopenshift.ServicePrincipalProfileArgs{
/// 				ClientId:     pulumi.String("clientId"),
/// 				ClientSecret: pulumi.String("clientSecret"),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"key": pulumi.String("value"),
/// 			},
/// 			WorkerProfiles: redhatopenshift.WorkerProfileArray{
/// 				&redhatopenshift.WorkerProfileArgs{
/// 					Count:      pulumi.Int(3),
/// 					DiskSizeGB: pulumi.Int(128),
/// 					Name:       pulumi.String("worker"),
/// 					SubnetId:   pulumi.String("/subscriptions/subscriptionId/resourceGroups/vnetResourceGroup/providers/Microsoft.Network/virtualNetworks/vnet/subnets/worker"),
/// 					VmSize:     pulumi.String("Standard_D2s_v3"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_redhatopenshift_openshiftcluster" "openShiftCluster" {
///   apiserver_profile = {
///     visibility = "Public"
///   }
///   cluster_profile = {
///     domain                 = "cluster.location.aroapp.io"
///     fips_validated_modules = "Enabled"
///     pull_secret            = "{\"auths\":{\"registry.connect.redhat.com\":{\"auth\":\"\"},\"registry.redhat.io\":{\"auth\":\"\"}}}"
///     resource_group_id      = "/subscriptions/subscriptionId/resourceGroups/clusterResourceGroup"
///   }
///   ingress_profiles {
///     name       = "default"
///     visibility = "Public"
///   }
///   location = "location"
///   master_profile = {
///     encryption_at_host = "Enabled"
///     subnet_id          = "/subscriptions/subscriptionId/resourceGroups/vnetResourceGroup/providers/Microsoft.Network/virtualNetworks/vnet/subnets/master"
///     vm_size            = "Standard_D8s_v3"
///   }
///   network_profile = {
///     load_balancer_profile = {
///       managed_outbound_ips = {
///         count = 1
///       }
///     }
///     pod_cidr          = "10.128.0.0/14"
///     preconfigured_nsg = "Disabled"
///     service_cidr      = "172.30.0.0/16"
///   }
///   resource_group_name = "resourceGroup"
///   resource_name       = "resourceName"
///   service_principal_profile = {
///     client_id     = "clientId"
///     client_secret = "clientSecret"
///   }
///   tags = {
///     "key" = "value"
///   }
///   worker_profiles {
///     count        = 3
///     disk_size_gb = 128
///     name         = "worker"
///     subnet_id    = "/subscriptions/subscriptionId/resourceGroups/vnetResourceGroup/providers/Microsoft.Network/virtualNetworks/vnet/subnets/worker"
///     vm_size      = "Standard_D2s_v3"
///   }
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.redhatopenshift.OpenShiftCluster;
/// import com.pulumi.azurenative.redhatopenshift.OpenShiftClusterArgs;
/// import com.pulumi.azurenative.redhatopenshift.inputs.APIServerProfileArgs;
/// import com.pulumi.azurenative.redhatopenshift.inputs.ClusterProfileArgs;
/// import com.pulumi.azurenative.redhatopenshift.inputs.IngressProfileArgs;
/// import com.pulumi.azurenative.redhatopenshift.inputs.MasterProfileArgs;
/// import com.pulumi.azurenative.redhatopenshift.inputs.NetworkProfileArgs;
/// import com.pulumi.azurenative.redhatopenshift.inputs.LoadBalancerProfileArgs;
/// import com.pulumi.azurenative.redhatopenshift.inputs.ManagedOutboundIPsArgs;
/// import com.pulumi.azurenative.redhatopenshift.inputs.ServicePrincipalProfileArgs;
/// import com.pulumi.azurenative.redhatopenshift.inputs.WorkerProfileArgs;
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
///         var openShiftCluster = new OpenShiftCluster("openShiftCluster", OpenShiftClusterArgs.builder()
///             .apiserverProfile(APIServerProfileArgs.builder()
///                 .visibility("Public")
///                 .build())
///             .clusterProfile(ClusterProfileArgs.builder()
///                 .domain("cluster.location.aroapp.io")
///                 .fipsValidatedModules("Enabled")
///                 .pullSecret("{\"auths\":{\"registry.connect.redhat.com\":{\"auth\":\"\"},\"registry.redhat.io\":{\"auth\":\"\"}}}")
///                 .resourceGroupId("/subscriptions/subscriptionId/resourceGroups/clusterResourceGroup")
///                 .build())
///             .ingressProfiles(IngressProfileArgs.builder()
///                 .name("default")
///                 .visibility("Public")
///                 .build())
///             .location("location")
///             .masterProfile(MasterProfileArgs.builder()
///                 .encryptionAtHost("Enabled")
///                 .subnetId("/subscriptions/subscriptionId/resourceGroups/vnetResourceGroup/providers/Microsoft.Network/virtualNetworks/vnet/subnets/master")
///                 .vmSize("Standard_D8s_v3")
///                 .build())
///             .networkProfile(NetworkProfileArgs.builder()
///                 .loadBalancerProfile(LoadBalancerProfileArgs.builder()
///                     .managedOutboundIps(ManagedOutboundIPsArgs.builder()
///                         .count(1)
///                         .build())
///                     .build())
///                 .podCidr("10.128.0.0/14")
///                 .preconfiguredNSG("Disabled")
///                 .serviceCidr("172.30.0.0/16")
///                 .build())
///             .resourceGroupName("resourceGroup")
///             .resourceName("resourceName")
///             .servicePrincipalProfile(ServicePrincipalProfileArgs.builder()
///                 .clientId("clientId")
///                 .clientSecret("clientSecret")
///                 .build())
///             .tags(Map.of("key", "value"))
///             .workerProfiles(WorkerProfileArgs.builder()
///                 .count(3)
///                 .diskSizeGB(128)
///                 .name("worker")
///                 .subnetId("/subscriptions/subscriptionId/resourceGroups/vnetResourceGroup/providers/Microsoft.Network/virtualNetworks/vnet/subnets/worker")
///                 .vmSize("Standard_D2s_v3")
///                 .build())
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const openShiftCluster = new azure_native.redhatopenshift.OpenShiftCluster("openShiftCluster", {
///     apiserverProfile: {
///         visibility: azure_native.redhatopenshift.Visibility.Public,
///     },
///     clusterProfile: {
///         domain: "cluster.location.aroapp.io",
///         fipsValidatedModules: azure_native.redhatopenshift.FipsValidatedModules.Enabled,
///         pullSecret: "{\"auths\":{\"registry.connect.redhat.com\":{\"auth\":\"\"},\"registry.redhat.io\":{\"auth\":\"\"}}}",
///         resourceGroupId: "/subscriptions/subscriptionId/resourceGroups/clusterResourceGroup",
///     },
///     ingressProfiles: [{
///         name: "default",
///         visibility: azure_native.redhatopenshift.Visibility.Public,
///     }],
///     location: "location",
///     masterProfile: {
///         encryptionAtHost: azure_native.redhatopenshift.EncryptionAtHost.Enabled,
///         subnetId: "/subscriptions/subscriptionId/resourceGroups/vnetResourceGroup/providers/Microsoft.Network/virtualNetworks/vnet/subnets/master",
///         vmSize: "Standard_D8s_v3",
///     },
///     networkProfile: {
///         loadBalancerProfile: {
///             managedOutboundIps: {
///                 count: 1,
///             },
///         },
///         podCidr: "10.128.0.0/14",
///         preconfiguredNSG: azure_native.redhatopenshift.PreconfiguredNSG.Disabled,
///         serviceCidr: "172.30.0.0/16",
///     },
///     resourceGroupName: "resourceGroup",
///     resourceName: "resourceName",
///     servicePrincipalProfile: {
///         clientId: "clientId",
///         clientSecret: "clientSecret",
///     },
///     tags: {
///         key: "value",
///     },
///     workerProfiles: [{
///         count: 3,
///         diskSizeGB: 128,
///         name: "worker",
///         subnetId: "/subscriptions/subscriptionId/resourceGroups/vnetResourceGroup/providers/Microsoft.Network/virtualNetworks/vnet/subnets/worker",
///         vmSize: "Standard_D2s_v3",
///     }],
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// open_shift_cluster = azure_native.redhatopenshift.OpenShiftCluster("openShiftCluster",
///     apiserver_profile={
///         "visibility": azure_native.redhatopenshift.Visibility.PUBLIC,
///     },
///     cluster_profile={
///         "domain": "cluster.location.aroapp.io",
///         "fips_validated_modules": azure_native.redhatopenshift.FipsValidatedModules.ENABLED,
///         "pull_secret": "{\"auths\":{\"registry.connect.redhat.com\":{\"auth\":\"\"},\"registry.redhat.io\":{\"auth\":\"\"}}}",
///         "resource_group_id": "/subscriptions/subscriptionId/resourceGroups/clusterResourceGroup",
///     },
///     ingress_profiles=[{
///         "name": "default",
///         "visibility": azure_native.redhatopenshift.Visibility.PUBLIC,
///     }],
///     location="location",
///     master_profile={
///         "encryption_at_host": azure_native.redhatopenshift.EncryptionAtHost.ENABLED,
///         "subnet_id": "/subscriptions/subscriptionId/resourceGroups/vnetResourceGroup/providers/Microsoft.Network/virtualNetworks/vnet/subnets/master",
///         "vm_size": "Standard_D8s_v3",
///     },
///     network_profile={
///         "load_balancer_profile": {
///             "managed_outbound_ips": {
///                 "count": 1,
///             },
///         },
///         "pod_cidr": "10.128.0.0/14",
///         "preconfigured_nsg": azure_native.redhatopenshift.PreconfiguredNSG.DISABLED,
///         "service_cidr": "172.30.0.0/16",
///     },
///     resource_group_name="resourceGroup",
///     resource_name_="resourceName",
///     service_principal_profile={
///         "client_id": "clientId",
///         "client_secret": "clientSecret",
///     },
///     tags={
///         "key": "value",
///     },
///     worker_profiles=[{
///         "count": 3,
///         "disk_size_gb": 128,
///         "name": "worker",
///         "subnet_id": "/subscriptions/subscriptionId/resourceGroups/vnetResourceGroup/providers/Microsoft.Network/virtualNetworks/vnet/subnets/worker",
///         "vm_size": "Standard_D2s_v3",
///     }])
///
/// ```
///
/// ```yaml
/// resources:
///   openShiftCluster:
///     type: azure-native:redhatopenshift:OpenShiftCluster
///     properties:
///       apiserverProfile:
///         visibility: Public
///       clusterProfile:
///         domain: cluster.location.aroapp.io
///         fipsValidatedModules: Enabled
///         pullSecret: '{"auths":{"registry.connect.redhat.com":{"auth":""},"registry.redhat.io":{"auth":""}}}'
///         resourceGroupId: /subscriptions/subscriptionId/resourceGroups/clusterResourceGroup
///       ingressProfiles:
///         - name: default
///           visibility: Public
///       location: location
///       masterProfile:
///         encryptionAtHost: Enabled
///         subnetId: /subscriptions/subscriptionId/resourceGroups/vnetResourceGroup/providers/Microsoft.Network/virtualNetworks/vnet/subnets/master
///         vmSize: Standard_D8s_v3
///       networkProfile:
///         loadBalancerProfile:
///           managedOutboundIps:
///             count: 1
///         podCidr: 10.128.0.0/14
///         preconfiguredNSG: Disabled
///         serviceCidr: 172.30.0.0/16
///       resourceGroupName: resourceGroup
///       resourceName: resourceName
///       servicePrincipalProfile:
///         clientId: clientId
///         clientSecret: clientSecret
///       tags:
///         key: value
///       workerProfiles:
///         - count: 3
///           diskSizeGB: 128
///           name: worker
///           subnetId: /subscriptions/subscriptionId/resourceGroups/vnetResourceGroup/providers/Microsoft.Network/virtualNetworks/vnet/subnets/worker
///           vmSize: Standard_D2s_v3
///
/// ```
///
/// {{% /example %}}
/// {{% /examples %}}
///
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:redhatopenshift:OpenShiftCluster resourceName /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.RedHatOpenShift/openShiftClusters/{resourceName}
/// ```
class OpenShiftCluster extends pulumi.CustomResource {
  /// The cluster API server profile.
  late final pulumi.Output<APIServerProfileResponse?> apiserverProfile;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The cluster profile.
  late final pulumi.Output<ClusterProfileResponse?> clusterProfile;
  /// The console profile.
  late final pulumi.Output<ConsoleProfileResponse?> consoleProfile;
  /// The cluster ingress profiles.
  late final pulumi.Output<List<Map<String, dynamic>>?> ingressProfiles;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The cluster master profile.
  late final pulumi.Output<MasterProfileResponse?> masterProfile;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The cluster network profile.
  late final pulumi.Output<NetworkProfileResponse?> networkProfile;
  /// The cluster provisioning state.
  late final pulumi.Output<String?> provisioningState;
  /// The cluster service principal profile.
  late final pulumi.Output<ServicePrincipalProfileResponse?> servicePrincipalProfile;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// The cluster worker profiles.
  late final pulumi.Output<List<Map<String, dynamic>>?> workerProfiles;
  /// The cluster worker profiles status.
  late final pulumi.Output<List<Map<String, dynamic>>> workerProfilesStatus;

  /// Creates a new [OpenShiftCluster].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [OpenShiftCluster]. {@macro pulumi_redhatopenshift_open_shift_cluster_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  OpenShiftCluster(
    String name, {
    OpenShiftClusterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:redhatopenshift:OpenShiftCluster',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiserverProfile = registerOutput<APIServerProfileResponse?>('apiserverProfile', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return APIServerProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    azureApiVersion = registerOutput<String>('azureApiVersion');
    clusterProfile = registerOutput<ClusterProfileResponse?>('clusterProfile', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    consoleProfile = registerOutput<ConsoleProfileResponse?>('consoleProfile', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ConsoleProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    ingressProfiles = registerOutput<List<Map<String, dynamic>>?>('ingressProfiles');
    location = registerOutput<String>('location');
    masterProfile = registerOutput<MasterProfileResponse?>('masterProfile', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MasterProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    networkProfile = registerOutput<NetworkProfileResponse?>('networkProfile', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NetworkProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    provisioningState = registerOutput<String?>('provisioningState');
    servicePrincipalProfile = registerOutput<ServicePrincipalProfileResponse?>('servicePrincipalProfile', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServicePrincipalProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
    workerProfiles = registerOutput<List<Map<String, dynamic>>?>('workerProfiles');
    workerProfilesStatus = registerOutput<List<Map<String, dynamic>>>('workerProfilesStatus');
  }
}
