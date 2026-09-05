import 'package:pulumi/pulumi.dart' as pulumi;
import 'group_args.dart';
import 'group_container.dart';
import 'group_diagnostics.dart';
import 'group_dns_config.dart';
import 'group_exposed_port.dart';
import 'group_identity.dart';
import 'group_image_registry_credential.dart';
import 'group_init_container.dart';
import 'group_state.dart';

/// Manages as an Azure Container Group instance.
///
/// ## Example Usage
///
/// This example provisions a Basic Container.
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
/// const exampleGroup = new azure.containerservice.Group("example", {
///     name: "example-continst",
///     location: example.location,
///     resourceGroupName: example.name,
///     ipAddressType: "Public",
///     dnsNameLabel: "aci-label",
///     osType: "Linux",
///     containers: [
///         {
///             name: "hello-world",
///             image: "mcr.microsoft.com/azuredocs/aci-helloworld:latest",
///             cpu: 0.5,
///             memory: 1.5,
///             ports: [{
///                 port: 443,
///                 protocol: "TCP",
///             }],
///         },
///         {
///             name: "sidecar",
///             image: "mcr.microsoft.com/azuredocs/aci-tutorial-sidecar",
///             cpu: 0.5,
///             memory: 1.5,
///         },
///     ],
///     tags: {
///         environment: "testing",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_group = azure.containerservice.Group("example",
///     name="example-continst",
///     location=example.location,
///     resource_group_name=example.name,
///     ip_address_type="Public",
///     dns_name_label="aci-label",
///     os_type="Linux",
///     containers=[
///         {
///             "name": "hello-world",
///             "image": "mcr.microsoft.com/azuredocs/aci-helloworld:latest",
///             "cpu": 0.5,
///             "memory": 1.5,
///             "ports": [{
///                 "port": 443,
///                 "protocol": "TCP",
///             }],
///         },
///         {
///             "name": "sidecar",
///             "image": "mcr.microsoft.com/azuredocs/aci-tutorial-sidecar",
///             "cpu": 0.5,
///             "memory": 1.5,
///         },
///     ],
///     tags={
///         "environment": "testing",
///     })
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
///     var exampleGroup = new Azure.ContainerService.Group("example", new()
///     {
///         Name = "example-continst",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         IpAddressType = "Public",
///         DnsNameLabel = "aci-label",
///         OsType = "Linux",
///         Containers = new[]
///         {
///             new Azure.ContainerService.Inputs.GroupContainerArgs
///             {
///                 Name = "hello-world",
///                 Image = "mcr.microsoft.com/azuredocs/aci-helloworld:latest",
///                 Cpu = 0.5,
///                 Memory = 1.5,
///                 Ports = new[]
///                 {
///                     new Azure.ContainerService.Inputs.GroupContainerPortArgs
///                     {
///                         Port = 443,
///                         Protocol = "TCP",
///                     },
///                 },
///             },
///             new Azure.ContainerService.Inputs.GroupContainerArgs
///             {
///                 Name = "sidecar",
///                 Image = "mcr.microsoft.com/azuredocs/aci-tutorial-sidecar",
///                 Cpu = 0.5,
///                 Memory = 1.5,
///             },
///         },
///         Tags =
///         {
///             { "environment", "testing" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/containerservice"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
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
/// 		_, err = containerservice.NewGroup(ctx, "example", &containerservice.GroupArgs{
/// 			Name:              pulumi.String("example-continst"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			IpAddressType:     pulumi.String("Public"),
/// 			DnsNameLabel:      pulumi.String("aci-label"),
/// 			OsType:            pulumi.String("Linux"),
/// 			Containers: containerservice.GroupContainerArray{
/// 				&containerservice.GroupContainerArgs{
/// 					Name:   pulumi.String("hello-world"),
/// 					Image:  pulumi.String("mcr.microsoft.com/azuredocs/aci-helloworld:latest"),
/// 					Cpu:    pulumi.Float64(0.5),
/// 					Memory: pulumi.Float64(1.5),
/// 					Ports: containerservice.GroupContainerPortArray{
/// 						&containerservice.GroupContainerPortArgs{
/// 							Port:     pulumi.Int(443),
/// 							Protocol: pulumi.String("TCP"),
/// 						},
/// 					},
/// 				},
/// 				&containerservice.GroupContainerArgs{
/// 					Name:   pulumi.String("sidecar"),
/// 					Image:  pulumi.String("mcr.microsoft.com/azuredocs/aci-tutorial-sidecar"),
/// 					Cpu:    pulumi.Float64(0.5),
/// 					Memory: pulumi.Float64(1.5),
/// 				},
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"environment": pulumi.String("testing"),
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
/// resource "azure_containerservice_group" "example" {
///   name                = "example-continst"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   ip_address_type     = "Public"
///   dns_name_label      = "aci-label"
///   os_type             = "Linux"
///   containers {
///     name   = "hello-world"
///     image  = "mcr.microsoft.com/azuredocs/aci-helloworld:latest"
///     cpu    = "0.5"
///     memory = "1.5"
///     ports {
///       port     = 443
///       protocol = "TCP"
///     }
///   }
///   containers {
///     name   = "sidecar"
///     image  = "mcr.microsoft.com/azuredocs/aci-tutorial-sidecar"
///     cpu    = "0.5"
///     memory = "1.5"
///   }
///   tags = {
///     "environment" = "testing"
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
/// import com.pulumi.azure.containerservice.Group;
/// import com.pulumi.azure.containerservice.GroupArgs;
/// import com.pulumi.azure.containerservice.inputs.GroupContainerArgs;
/// import com.pulumi.azure.containerservice.inputs.GroupContainerPortArgs;
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
///         var exampleGroup = new Group("exampleGroup", GroupArgs.builder()
///             .name("example-continst")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .ipAddressType("Public")
///             .dnsNameLabel("aci-label")
///             .osType("Linux")
///             .containers(
///                 GroupContainerArgs.builder()
///                     .name("hello-world")
///                     .image("mcr.microsoft.com/azuredocs/aci-helloworld:latest")
///                     .cpu(0.5)
///                     .memory(1.5)
///                     .ports(GroupContainerPortArgs.builder()
///                         .port(443)
///                         .protocol("TCP")
///                         .build())
///                     .build(),
///                 GroupContainerArgs.builder()
///                     .name("sidecar")
///                     .image("mcr.microsoft.com/azuredocs/aci-tutorial-sidecar")
///                     .cpu(0.5)
///                     .memory(1.5)
///                     .build())
///             .tags(Map.of("environment", "testing"))
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
///   exampleGroup:
///     type: azure:containerservice:Group
///     name: example
///     properties:
///       name: example-continst
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       ipAddressType: Public
///       dnsNameLabel: aci-label
///       osType: Linux
///       containers:
///         - name: hello-world
///           image: mcr.microsoft.com/azuredocs/aci-helloworld:latest
///           cpu: '0.5'
///           memory: '1.5'
///           ports:
///             - port: 443
///               protocol: TCP
///         - name: sidecar
///           image: mcr.microsoft.com/azuredocs/aci-tutorial-sidecar
///           cpu: '0.5'
///           memory: '1.5'
///       tags:
///         environment: testing
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.ContainerInstance` - 2025-09-01
///
/// ## Import
///
/// Container Group's can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:containerservice/group:Group containerGroup1 /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.ContainerInstance/containerGroups/myContainerGroup1
/// ```
class Group extends pulumi.CustomResource {
  /// The definition of a container that is part of the group as documented in the `container` block below. Changing this forces a new resource to be created.
  late final pulumi.Output<List<GroupContainer>> containers;
  /// A `diagnostics` block as documented below. Changing this forces a new resource to be created.
  late final pulumi.Output<GroupDiagnostics?> diagnostics;
  /// A `dnsConfig` block as documented below. Changing this forces a new resource to be created.
  late final pulumi.Output<GroupDnsConfig?> dnsConfig;
  /// The DNS label/name for the container group's IP. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** DNS label/name is not supported when deploying to virtual networks.
  late final pulumi.Output<String?> dnsNameLabel;
  /// The value representing the security enum. `Noreuse`, `ResourceGroupReuse`, `SubscriptionReuse`, `TenantReuse` or `Unsecure`. Defaults to `Unsecure`. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> dnsNameLabelReusePolicy;
  /// Zero or more `exposedPort` blocks as defined below. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** The `exposedPort` can only contain ports that are also exposed on one or more containers in the group.
  late final pulumi.Output<List<GroupExposedPort>> exposedPorts;
  /// The FQDN of the container group derived from `dnsNameLabel`.
  late final pulumi.Output<String> fqdn;
  /// An `identity` block as defined below.
  late final pulumi.Output<GroupIdentity?> identity;
  /// An `imageRegistryCredential` block as documented below. Changing this forces a new resource to be created.
  late final pulumi.Output<List<GroupImageRegistryCredential>?> imageRegistryCredentials;
  /// The definition of an init container that is part of the group as documented in the `initContainer` block below. Changing this forces a new resource to be created.
  late final pulumi.Output<List<GroupInitContainer>?> initContainers;
  /// The IP address allocated to the container group.
  late final pulumi.Output<String> ipAddress;
  /// Specifies the IP address type of the container. `Public`, `Private` or `None`. Changing this forces a new resource to be created. If set to `Private`, `subnetIds` also needs to be set. Defaults to `Public`.
  ///
  /// &gt; **Note:** `dnsNameLabel` and `osType` set to `windows` are not compatible with `Private` `ipAddressType`
  late final pulumi.Output<String?> ipAddressType;
  /// The Key Vault key URI for CMK encryption. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> keyVaultKeyId;
  /// The user assigned identity that has access to the Key Vault Key. If not specified, the RP principal named "Azure Container Instance Service" will be used instead. Make sure the identity has the proper `keyPermissions` set, at least with `Get`, `UnwrapKey`, `WrapKey` and `GetRotationPolicy`.
  late final pulumi.Output<String?> keyVaultUserAssignedIdentityId;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;
  /// Specifies the name of the Container Group. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> networkProfileId;
  /// The OS for the container group. Allowed values are `Linux` and `Windows`. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** if `osType` is set to `Windows` currently only a single `container` block is supported. Windows containers are not supported in virtual networks.
  late final pulumi.Output<String> osType;
  /// The priority of the Container Group. Possible values are `Regular` and `Spot`. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** When `priority` is set to `Spot`, the `ipAddressType` has to be `None`.
  late final pulumi.Output<String?> priority;
  /// The name of the resource group in which to create the Container Group. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// Restart policy for the container group. Allowed values are `Always`, `Never`, `OnFailure`. Defaults to `Always`. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> restartPolicy;
  /// Specifies the sku of the Container Group. Possible values are `Confidential`, `Dedicated` and `Standard`. Defaults to `Standard`. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> sku;
  /// The subnet resource IDs for a container group. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> subnetIds;
  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A list of Availability Zones in which this Container Group is located. Changing this forces a new resource to be created.
  late final pulumi.Output<List<String>?> zones;

  /// Creates a new [Group].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Group]. {@macro pulumi_containerservice_group_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Group(
    String name, {
    GroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:containerservice/group:Group',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
        ) {
    containers = registerOutput<List<GroupContainer>>('containers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<GroupContainer>(guardedValue, (value) => GroupContainer.fromMap((value as Map).cast<String, dynamic>())); });
    diagnostics = registerOutput<GroupDiagnostics?>('diagnostics', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GroupDiagnostics.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    dnsConfig = registerOutput<GroupDnsConfig?>('dnsConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GroupDnsConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    dnsNameLabel = registerOutput<String?>('dnsNameLabel');
    dnsNameLabelReusePolicy = registerOutput<String?>('dnsNameLabelReusePolicy');
    exposedPorts = registerOutput<List<GroupExposedPort>>('exposedPorts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<GroupExposedPort>(guardedValue, (value) => GroupExposedPort.fromMap((value as Map).cast<String, dynamic>())); });
    fqdn = registerOutput<String>('fqdn');
    identity = registerOutput<GroupIdentity?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GroupIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    imageRegistryCredentials = registerOutput<List<GroupImageRegistryCredential>?>('imageRegistryCredentials', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<GroupImageRegistryCredential>(guardedValue, (value) => GroupImageRegistryCredential.fromMap((value as Map).cast<String, dynamic>())); });
    initContainers = registerOutput<List<GroupInitContainer>?>('initContainers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<GroupInitContainer>(guardedValue, (value) => GroupInitContainer.fromMap((value as Map).cast<String, dynamic>())); });
    ipAddress = registerOutput<String>('ipAddress');
    ipAddressType = registerOutput<String?>('ipAddressType');
    keyVaultKeyId = registerOutput<String?>('keyVaultKeyId');
    keyVaultUserAssignedIdentityId = registerOutput<String?>('keyVaultUserAssignedIdentityId');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    networkProfileId = registerOutput<String>('networkProfileId');
    osType = registerOutput<String>('osType');
    priority = registerOutput<String?>('priority');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    restartPolicy = registerOutput<String?>('restartPolicy');
    sku = registerOutput<String?>('sku');
    subnetIds = registerOutput<String?>('subnetIds');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    zones = registerOutput<List<String>?>('zones', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
  }

  /// Gets an existing [Group] resource's state with the given [name] and [id].
  static Group get(
    String name,
    pulumi.Input<String> id, {
    GroupState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Group._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Group._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:containerservice/group:Group',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    containers = registerOutput<List<GroupContainer>>('containers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<GroupContainer>(guardedValue, (value) => GroupContainer.fromMap((value as Map).cast<String, dynamic>())); });
    diagnostics = registerOutput<GroupDiagnostics?>('diagnostics', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GroupDiagnostics.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    dnsConfig = registerOutput<GroupDnsConfig?>('dnsConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GroupDnsConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    dnsNameLabel = registerOutput<String?>('dnsNameLabel');
    dnsNameLabelReusePolicy = registerOutput<String?>('dnsNameLabelReusePolicy');
    exposedPorts = registerOutput<List<GroupExposedPort>>('exposedPorts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<GroupExposedPort>(guardedValue, (value) => GroupExposedPort.fromMap((value as Map).cast<String, dynamic>())); });
    fqdn = registerOutput<String>('fqdn');
    identity = registerOutput<GroupIdentity?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GroupIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    imageRegistryCredentials = registerOutput<List<GroupImageRegistryCredential>?>('imageRegistryCredentials', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<GroupImageRegistryCredential>(guardedValue, (value) => GroupImageRegistryCredential.fromMap((value as Map).cast<String, dynamic>())); });
    initContainers = registerOutput<List<GroupInitContainer>?>('initContainers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<GroupInitContainer>(guardedValue, (value) => GroupInitContainer.fromMap((value as Map).cast<String, dynamic>())); });
    ipAddress = registerOutput<String>('ipAddress');
    ipAddressType = registerOutput<String?>('ipAddressType');
    keyVaultKeyId = registerOutput<String?>('keyVaultKeyId');
    keyVaultUserAssignedIdentityId = registerOutput<String?>('keyVaultUserAssignedIdentityId');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    networkProfileId = registerOutput<String>('networkProfileId');
    osType = registerOutput<String>('osType');
    priority = registerOutput<String?>('priority');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    restartPolicy = registerOutput<String?>('restartPolicy');
    sku = registerOutput<String?>('sku');
    subnetIds = registerOutput<String?>('subnetIds');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    zones = registerOutput<List<String>?>('zones', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
  }

  /// Creates a typed reference to an existing [Group] resource.
  Group.reference(String urn)
    : super(
        'azure:containerservice/group:Group',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    containers = registerOutput<List<GroupContainer>>('containers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<GroupContainer>(guardedValue, (value) => GroupContainer.fromMap((value as Map).cast<String, dynamic>())); });
    diagnostics = registerOutput<GroupDiagnostics?>('diagnostics', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GroupDiagnostics.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    dnsConfig = registerOutput<GroupDnsConfig?>('dnsConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GroupDnsConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    dnsNameLabel = registerOutput<String?>('dnsNameLabel');
    dnsNameLabelReusePolicy = registerOutput<String?>('dnsNameLabelReusePolicy');
    exposedPorts = registerOutput<List<GroupExposedPort>>('exposedPorts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<GroupExposedPort>(guardedValue, (value) => GroupExposedPort.fromMap((value as Map).cast<String, dynamic>())); });
    fqdn = registerOutput<String>('fqdn');
    identity = registerOutput<GroupIdentity?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GroupIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    imageRegistryCredentials = registerOutput<List<GroupImageRegistryCredential>?>('imageRegistryCredentials', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<GroupImageRegistryCredential>(guardedValue, (value) => GroupImageRegistryCredential.fromMap((value as Map).cast<String, dynamic>())); });
    initContainers = registerOutput<List<GroupInitContainer>?>('initContainers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<GroupInitContainer>(guardedValue, (value) => GroupInitContainer.fromMap((value as Map).cast<String, dynamic>())); });
    ipAddress = registerOutput<String>('ipAddress');
    ipAddressType = registerOutput<String?>('ipAddressType');
    keyVaultKeyId = registerOutput<String?>('keyVaultKeyId');
    keyVaultUserAssignedIdentityId = registerOutput<String?>('keyVaultUserAssignedIdentityId');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    networkProfileId = registerOutput<String>('networkProfileId');
    osType = registerOutput<String>('osType');
    priority = registerOutput<String?>('priority');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    restartPolicy = registerOutput<String?>('restartPolicy');
    sku = registerOutput<String?>('sku');
    subnetIds = registerOutput<String?>('subnetIds');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    zones = registerOutput<List<String>?>('zones', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
  }
}
