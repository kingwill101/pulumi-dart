// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'kubernetes_cluster_aci_connector_linux_connector_identity.dart';

class KubernetesClusterAciConnectorLinux {
  /// A `connectorIdentity` block is exported. The exported attributes are defined below.
  final pulumi.Input<List<KubernetesClusterAciConnectorLinuxConnectorIdentity>?>? connectorIdentities;
  /// The subnet name for the virtual nodes to run.
  ///
  /// &gt; **Note:** At this time ACI Connectors are not supported in Azure China.
  ///
  /// &gt; **Note:** AKS will add a delegation to the subnet named here. To prevent further runs from failing you should make sure that the subnet you create for virtual nodes has a delegation, like so.
  ///
  ///
  /// ```typescript
  /// import * as pulumi from "@pulumi/pulumi";
  /// import * as azure from "@pulumi/azure";
  ///
  /// const virtual = new azure.network.Subnet("virtual", {delegations: [{
  ///     name: "aciDelegation",
  ///     serviceDelegation: {
  ///         name: "Microsoft.ContainerInstance/containerGroups",
  ///         actions: ["Microsoft.Network/virtualNetworks/subnets/action"],
  ///     },
  /// }]});
  /// ```
  /// ```python
  /// import pulumi
  /// import pulumi_azure as azure
  ///
  /// virtual = azure.network.Subnet("virtual", delegations=[{
  ///     "name": "aciDelegation",
  ///     "service_delegation": {
  ///         "name": "Microsoft.ContainerInstance/containerGroups",
  ///         "actions": ["Microsoft.Network/virtualNetworks/subnets/action"],
  ///     },
  /// }])
  /// ```
  /// ```csharp
  /// using System.Collections.Generic;
  /// using System.Linq;
  /// using Pulumi;
  /// using Azure = Pulumi.Azure;
  ///
  /// return await Deployment.RunAsync(() =>
  /// {
  ///     var @virtual = new Azure.Network.Subnet("virtual", new()
  ///     {
  ///         Delegations = new[]
  ///         {
  ///             new Azure.Network.Inputs.SubnetDelegationArgs
  ///             {
  ///                 Name = "aciDelegation",
  ///                 ServiceDelegation = new Azure.Network.Inputs.SubnetDelegationServiceDelegationArgs
  ///                 {
  ///                     Name = "Microsoft.ContainerInstance/containerGroups",
  ///                     Actions = new[]
  ///                     {
  ///                         "Microsoft.Network/virtualNetworks/subnets/action",
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
  /// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/network"
  /// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
  /// )
  ///
  /// func main() {
  /// 	pulumi.Run(func(ctx *pulumi.Context) error {
  /// 		_, err := network.NewSubnet(ctx, "virtual", &network.SubnetArgs{
  /// 			Delegations: network.SubnetDelegationArray{
  /// 				&network.SubnetDelegationArgs{
  /// 					Name: pulumi.String("aciDelegation"),
  /// 					ServiceDelegation: &network.SubnetDelegationServiceDelegationArgs{
  /// 						Name: pulumi.String("Microsoft.ContainerInstance/containerGroups"),
  /// 						Actions: pulumi.StringArray{
  /// 							pulumi.String("Microsoft.Network/virtualNetworks/subnets/action"),
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
  ///     azure = {
  ///       source = "pulumi/azure"
  ///     }
  ///   }
  /// }
  ///
  /// resource "azure_network_subnet" "virtual" {
  ///   delegations {
  ///     name = "aciDelegation"
  ///     service_delegation = {
  ///       name    = "Microsoft.ContainerInstance/containerGroups"
  ///       actions = ["Microsoft.Network/virtualNetworks/subnets/action"]
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
  /// import com.pulumi.azure.network.Subnet;
  /// import com.pulumi.azure.network.SubnetArgs;
  /// import com.pulumi.azure.network.inputs.SubnetDelegationArgs;
  /// import com.pulumi.azure.network.inputs.SubnetDelegationServiceDelegationArgs;
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
  ///         var virtual = new Subnet("virtual", SubnetArgs.builder()
  ///             .delegations(SubnetDelegationArgs.builder()
  ///                 .name("aciDelegation")
  ///                 .serviceDelegation(SubnetDelegationServiceDelegationArgs.builder()
  ///                     .name("Microsoft.ContainerInstance/containerGroups")
  ///                     .actions("Microsoft.Network/virtualNetworks/subnets/action")
  ///                     .build())
  ///                 .build())
  ///             .build());
  ///
  ///     }
  /// }
  /// ```
  /// ```yaml
  /// resources:
  ///   virtual:
  ///     type: azure:network:Subnet
  ///     properties:
  ///       delegations:
  ///         - name: aciDelegation
  ///           serviceDelegation:
  ///             name: Microsoft.ContainerInstance/containerGroups
  ///             actions:
  ///               - Microsoft.Network/virtualNetworks/subnets/action
  /// ```
  final pulumi.Input<String> subnetName;

  /// Creates a new [KubernetesClusterAciConnectorLinux].
  /// [connectorIdentities] A `connectorIdentity` block is exported. The exported attributes are defined below.
  /// [subnetName] The subnet name for the virtual nodes to run.
  const KubernetesClusterAciConnectorLinux({
    this.connectorIdentities,
    required this.subnetName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectorIdentities': ?pulumi.Input.mapOptionalInputValue<List<KubernetesClusterAciConnectorLinuxConnectorIdentity>, List<Map<String, dynamic>>>(connectorIdentities, (value) => pulumi.Input.encodeList<KubernetesClusterAciConnectorLinuxConnectorIdentity, Map<String, dynamic>>(value, (value) => value.toMap())),
      'subnetName': subnetName,
    };
  }

  factory KubernetesClusterAciConnectorLinux.fromMap(Map<String, dynamic> map) {
    return KubernetesClusterAciConnectorLinux(
      connectorIdentities: (() { final guardedValue = map['connectorIdentities']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<KubernetesClusterAciConnectorLinuxConnectorIdentity>(guardedValue, (value) => KubernetesClusterAciConnectorLinuxConnectorIdentity.fromMap((value as Map).cast<String, dynamic>()))); })(),
      subnetName: pulumi.Input.fromValue(map['subnetName'] as String),
    );
  }
}
