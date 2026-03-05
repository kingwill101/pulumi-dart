import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_cluster_args.dart';
import 'azure_cluster_authorization.dart';
import 'azure_cluster_azure_services_authentication.dart';
import 'azure_cluster_control_plane.dart';
import 'azure_cluster_fleet.dart';
import 'azure_cluster_logging_config.dart';
import 'azure_cluster_networking.dart';
import 'azure_cluster_state.dart';

/// An Anthos cluster running on Azure.
///
/// For more information, see:
/// * [Multicloud overview](https://cloud.google.com/kubernetes-engine/multi-cloud/docs)
/// ## Example Usage
///
/// ### Basic_azure_cluster
/// A basic example of a containerazure azure cluster
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const versions = gcp.container.getAzureVersions({
///     project: "my-project-name",
///     location: "us-west1",
/// });
/// const basic = new gcp.container.AzureClient("basic", {
///     applicationId: "12345678-1234-1234-1234-123456789111",
///     location: "us-west1",
///     name: "client-name",
///     tenantId: "12345678-1234-1234-1234-123456789111",
///     project: "my-project-name",
/// });
/// const primary = new gcp.container.AzureCluster("primary", {
///     authorization: {
///         adminUsers: [{
///             username: "mmv2@google.com",
///         }],
///         adminGroups: [{
///             group: "group@domain.com",
///         }],
///     },
///     azureRegion: "westus2",
///     client: pulumi.interpolate`projects/my-project-number/locations/us-west1/azureClients/${basic.name}`,
///     controlPlane: {
///         sshConfig: {
///             authorizedKey: "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQC8yaayO6lnb2v+SedxUMa2c8vtIEzCzBjM3EJJsv8Vm9zUDWR7dXWKoNGARUb2mNGXASvI6mFIDXTIlkQ0poDEPpMaXR0g2cb5xT8jAAJq7fqXL3+0rcJhY/uigQ+MrT6s+ub0BFVbsmGHNrMQttXX9gtmwkeAEvj3mra9e5pkNf90qlKnZz6U0SVArxVsLx07vHPHDIYrl0OPG4zUREF52igbBPiNrHJFDQJT/4YlDMJmo/QT/A1D6n9ocemvZSzhRx15/Arjowhr+VVKSbaxzPtEfY0oIg2SrqJnnr/l3Du5qIefwh5VmCZe4xopPUaDDoOIEFriZ88sB+3zz8ib8sk8zJJQCgeP78tQvXCgS+4e5W3TUg9mxjB6KjXTyHIVhDZqhqde0OI3Fy1UuVzRUwnBaLjBnAwP5EoFQGRmDYk/rEYe7HTmovLeEBUDQocBQKT4Ripm/xJkkWY7B07K/tfo56dGUCkvyIVXKBInCh+dLK7gZapnd4UWkY0xBYcwo1geMLRq58iFTLA2j/JmpmHXp7m0l7jJii7d44uD3tTIFYThn7NlOnvhLim/YcBK07GMGIN7XwrrKZKmxXaspw6KBWVhzuw1UPxctxshYEaMLfFg/bwOw8HvMPr9VtrElpSB7oiOh91PDIPdPBgHCi7N2QgQ5l/ZDBHieSpNrQ== thomasrodgers",
///         },
///         subnetId: "/subscriptions/12345678-1234-1234-1234-123456789111/resourceGroups/my--dev-byo/providers/Microsoft.Network/virtualNetworks/my--dev-vnet/subnets/default",
///         version: versions.then(versions => versions.validVersions?.[0]),
///     },
///     fleet: {
///         project: "my-project-number",
///     },
///     location: "us-west1",
///     name: "name",
///     networking: {
///         podAddressCidrBlocks: ["10.200.0.0/16"],
///         serviceAddressCidrBlocks: ["10.32.0.0/24"],
///         virtualNetworkId: "/subscriptions/12345678-1234-1234-1234-123456789111/resourceGroups/my--dev-byo/providers/Microsoft.Network/virtualNetworks/my--dev-vnet",
///     },
///     resourceGroupId: "/subscriptions/12345678-1234-1234-1234-123456789111/resourceGroups/my--dev-cluster",
///     project: "my-project-name",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// versions = gcp.container.get_azure_versions(project="my-project-name",
///     location="us-west1")
/// basic = gcp.container.AzureClient("basic",
///     application_id="12345678-1234-1234-1234-123456789111",
///     location="us-west1",
///     name="client-name",
///     tenant_id="12345678-1234-1234-1234-123456789111",
///     project="my-project-name")
/// primary = gcp.container.AzureCluster("primary",
///     authorization={
///         "admin_users": [{
///             "username": "mmv2@google.com",
///         }],
///         "admin_groups": [{
///             "group": "group@domain.com",
///         }],
///     },
///     azure_region="westus2",
///     client=basic.name.apply(lambda name: f"projects/my-project-number/locations/us-west1/azureClients/{name}"),
///     control_plane={
///         "ssh_config": {
///             "authorized_key": "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQC8yaayO6lnb2v+SedxUMa2c8vtIEzCzBjM3EJJsv8Vm9zUDWR7dXWKoNGARUb2mNGXASvI6mFIDXTIlkQ0poDEPpMaXR0g2cb5xT8jAAJq7fqXL3+0rcJhY/uigQ+MrT6s+ub0BFVbsmGHNrMQttXX9gtmwkeAEvj3mra9e5pkNf90qlKnZz6U0SVArxVsLx07vHPHDIYrl0OPG4zUREF52igbBPiNrHJFDQJT/4YlDMJmo/QT/A1D6n9ocemvZSzhRx15/Arjowhr+VVKSbaxzPtEfY0oIg2SrqJnnr/l3Du5qIefwh5VmCZe4xopPUaDDoOIEFriZ88sB+3zz8ib8sk8zJJQCgeP78tQvXCgS+4e5W3TUg9mxjB6KjXTyHIVhDZqhqde0OI3Fy1UuVzRUwnBaLjBnAwP5EoFQGRmDYk/rEYe7HTmovLeEBUDQocBQKT4Ripm/xJkkWY7B07K/tfo56dGUCkvyIVXKBInCh+dLK7gZapnd4UWkY0xBYcwo1geMLRq58iFTLA2j/JmpmHXp7m0l7jJii7d44uD3tTIFYThn7NlOnvhLim/YcBK07GMGIN7XwrrKZKmxXaspw6KBWVhzuw1UPxctxshYEaMLfFg/bwOw8HvMPr9VtrElpSB7oiOh91PDIPdPBgHCi7N2QgQ5l/ZDBHieSpNrQ== thomasrodgers",
///         },
///         "subnet_id": "/subscriptions/12345678-1234-1234-1234-123456789111/resourceGroups/my--dev-byo/providers/Microsoft.Network/virtualNetworks/my--dev-vnet/subnets/default",
///         "version": versions.valid_versions[0],
///     },
///     fleet={
///         "project": "my-project-number",
///     },
///     location="us-west1",
///     name="name",
///     networking={
///         "pod_address_cidr_blocks": ["10.200.0.0/16"],
///         "service_address_cidr_blocks": ["10.32.0.0/24"],
///         "virtual_network_id": "/subscriptions/12345678-1234-1234-1234-123456789111/resourceGroups/my--dev-byo/providers/Microsoft.Network/virtualNetworks/my--dev-vnet",
///     },
///     resource_group_id="/subscriptions/12345678-1234-1234-1234-123456789111/resourceGroups/my--dev-cluster",
///     project="my-project-name")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var versions = Gcp.Container.GetAzureVersions.Invoke(new()
///     {
///         Project = "my-project-name",
///         Location = "us-west1",
///     });
///
///     var basic = new Gcp.Container.AzureClient("basic", new()
///     {
///         ApplicationId = "12345678-1234-1234-1234-123456789111",
///         Location = "us-west1",
///         Name = "client-name",
///         TenantId = "12345678-1234-1234-1234-123456789111",
///         Project = "my-project-name",
///     });
///
///     var primary = new Gcp.Container.AzureCluster("primary", new()
///     {
///         Authorization = new Gcp.Container.Inputs.AzureClusterAuthorizationArgs
///         {
///             AdminUsers = new[]
///             {
///                 new Gcp.Container.Inputs.AzureClusterAuthorizationAdminUserArgs
///                 {
///                     Username = "mmv2@google.com",
///                 },
///             },
///             AdminGroups = new[]
///             {
///                 new Gcp.Container.Inputs.AzureClusterAuthorizationAdminGroupArgs
///                 {
///                     Group = "group@domain.com",
///                 },
///             },
///         },
///         AzureRegion = "westus2",
///         Client = basic.Name.Apply(name => $"projects/my-project-number/locations/us-west1/azureClients/{name}"),
///         ControlPlane = new Gcp.Container.Inputs.AzureClusterControlPlaneArgs
///         {
///             SshConfig = new Gcp.Container.Inputs.AzureClusterControlPlaneSshConfigArgs
///             {
///                 AuthorizedKey = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQC8yaayO6lnb2v+SedxUMa2c8vtIEzCzBjM3EJJsv8Vm9zUDWR7dXWKoNGARUb2mNGXASvI6mFIDXTIlkQ0poDEPpMaXR0g2cb5xT8jAAJq7fqXL3+0rcJhY/uigQ+MrT6s+ub0BFVbsmGHNrMQttXX9gtmwkeAEvj3mra9e5pkNf90qlKnZz6U0SVArxVsLx07vHPHDIYrl0OPG4zUREF52igbBPiNrHJFDQJT/4YlDMJmo/QT/A1D6n9ocemvZSzhRx15/Arjowhr+VVKSbaxzPtEfY0oIg2SrqJnnr/l3Du5qIefwh5VmCZe4xopPUaDDoOIEFriZ88sB+3zz8ib8sk8zJJQCgeP78tQvXCgS+4e5W3TUg9mxjB6KjXTyHIVhDZqhqde0OI3Fy1UuVzRUwnBaLjBnAwP5EoFQGRmDYk/rEYe7HTmovLeEBUDQocBQKT4Ripm/xJkkWY7B07K/tfo56dGUCkvyIVXKBInCh+dLK7gZapnd4UWkY0xBYcwo1geMLRq58iFTLA2j/JmpmHXp7m0l7jJii7d44uD3tTIFYThn7NlOnvhLim/YcBK07GMGIN7XwrrKZKmxXaspw6KBWVhzuw1UPxctxshYEaMLfFg/bwOw8HvMPr9VtrElpSB7oiOh91PDIPdPBgHCi7N2QgQ5l/ZDBHieSpNrQ== thomasrodgers",
///             },
///             SubnetId = "/subscriptions/12345678-1234-1234-1234-123456789111/resourceGroups/my--dev-byo/providers/Microsoft.Network/virtualNetworks/my--dev-vnet/subnets/default",
///             Version = versions.Apply(getAzureVersionsResult => getAzureVersionsResult.ValidVersions[0]),
///         },
///         Fleet = new Gcp.Container.Inputs.AzureClusterFleetArgs
///         {
///             Project = "my-project-number",
///         },
///         Location = "us-west1",
///         Name = "name",
///         Networking = new Gcp.Container.Inputs.AzureClusterNetworkingArgs
///         {
///             PodAddressCidrBlocks = new[]
///             {
///                 "10.200.0.0/16",
///             },
///             ServiceAddressCidrBlocks = new[]
///             {
///                 "10.32.0.0/24",
///             },
///             VirtualNetworkId = "/subscriptions/12345678-1234-1234-1234-123456789111/resourceGroups/my--dev-byo/providers/Microsoft.Network/virtualNetworks/my--dev-vnet",
///         },
///         ResourceGroupId = "/subscriptions/12345678-1234-1234-1234-123456789111/resourceGroups/my--dev-cluster",
///         Project = "my-project-name",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/container"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		versions, err := container.GetAzureVersions(ctx, &container.GetAzureVersionsArgs{
/// 			Project:  pulumi.StringRef("my-project-name"),
/// 			Location: pulumi.StringRef("us-west1"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		basic, err := container.NewAzureClient(ctx, "basic", &container.AzureClientArgs{
/// 			ApplicationId: pulumi.String("12345678-1234-1234-1234-123456789111"),
/// 			Location:      pulumi.String("us-west1"),
/// 			Name:          pulumi.String("client-name"),
/// 			TenantId:      pulumi.String("12345678-1234-1234-1234-123456789111"),
/// 			Project:       pulumi.String("my-project-name"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = container.NewAzureCluster(ctx, "primary", &container.AzureClusterArgs{
/// 			Authorization: &container.AzureClusterAuthorizationArgs{
/// 				AdminUsers: container.AzureClusterAuthorizationAdminUserArray{
/// 					&container.AzureClusterAuthorizationAdminUserArgs{
/// 						Username: pulumi.String("mmv2@google.com"),
/// 					},
/// 				},
/// 				AdminGroups: container.AzureClusterAuthorizationAdminGroupArray{
/// 					&container.AzureClusterAuthorizationAdminGroupArgs{
/// 						Group: pulumi.String("group@domain.com"),
/// 					},
/// 				},
/// 			},
/// 			AzureRegion: pulumi.String("westus2"),
/// 			Client: basic.Name.ApplyT(func(name string) (string, error) {
/// 				return fmt.Sprintf("projects/my-project-number/locations/us-west1/azureClients/%v", name), nil
/// 			}).(pulumi.StringOutput),
/// 			ControlPlane: &container.AzureClusterControlPlaneArgs{
/// 				SshConfig: &container.AzureClusterControlPlaneSshConfigArgs{
/// 					AuthorizedKey: pulumi.String("ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQC8yaayO6lnb2v+SedxUMa2c8vtIEzCzBjM3EJJsv8Vm9zUDWR7dXWKoNGARUb2mNGXASvI6mFIDXTIlkQ0poDEPpMaXR0g2cb5xT8jAAJq7fqXL3+0rcJhY/uigQ+MrT6s+ub0BFVbsmGHNrMQttXX9gtmwkeAEvj3mra9e5pkNf90qlKnZz6U0SVArxVsLx07vHPHDIYrl0OPG4zUREF52igbBPiNrHJFDQJT/4YlDMJmo/QT/A1D6n9ocemvZSzhRx15/Arjowhr+VVKSbaxzPtEfY0oIg2SrqJnnr/l3Du5qIefwh5VmCZe4xopPUaDDoOIEFriZ88sB+3zz8ib8sk8zJJQCgeP78tQvXCgS+4e5W3TUg9mxjB6KjXTyHIVhDZqhqde0OI3Fy1UuVzRUwnBaLjBnAwP5EoFQGRmDYk/rEYe7HTmovLeEBUDQocBQKT4Ripm/xJkkWY7B07K/tfo56dGUCkvyIVXKBInCh+dLK7gZapnd4UWkY0xBYcwo1geMLRq58iFTLA2j/JmpmHXp7m0l7jJii7d44uD3tTIFYThn7NlOnvhLim/YcBK07GMGIN7XwrrKZKmxXaspw6KBWVhzuw1UPxctxshYEaMLfFg/bwOw8HvMPr9VtrElpSB7oiOh91PDIPdPBgHCi7N2QgQ5l/ZDBHieSpNrQ== thomasrodgers"),
/// 				},
/// 				SubnetId: pulumi.String("/subscriptions/12345678-1234-1234-1234-123456789111/resourceGroups/my--dev-byo/providers/Microsoft.Network/virtualNetworks/my--dev-vnet/subnets/default"),
/// 				Version:  pulumi.String(versions.ValidVersions[0]),
/// 			},
/// 			Fleet: &container.AzureClusterFleetArgs{
/// 				Project: pulumi.String("my-project-number"),
/// 			},
/// 			Location: pulumi.String("us-west1"),
/// 			Name:     pulumi.String("name"),
/// 			Networking: &container.AzureClusterNetworkingArgs{
/// 				PodAddressCidrBlocks: pulumi.StringArray{
/// 					pulumi.String("10.200.0.0/16"),
/// 				},
/// 				ServiceAddressCidrBlocks: pulumi.StringArray{
/// 					pulumi.String("10.32.0.0/24"),
/// 				},
/// 				VirtualNetworkId: pulumi.String("/subscriptions/12345678-1234-1234-1234-123456789111/resourceGroups/my--dev-byo/providers/Microsoft.Network/virtualNetworks/my--dev-vnet"),
/// 			},
/// 			ResourceGroupId: pulumi.String("/subscriptions/12345678-1234-1234-1234-123456789111/resourceGroups/my--dev-cluster"),
/// 			Project:         pulumi.String("my-project-name"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.container.ContainerFunctions;
/// import com.pulumi.gcp.container.inputs.GetAzureVersionsArgs;
/// import com.pulumi.gcp.container.AzureClient;
/// import com.pulumi.gcp.container.AzureClientArgs;
/// import com.pulumi.gcp.container.AzureCluster;
/// import com.pulumi.gcp.container.AzureClusterArgs;
/// import com.pulumi.gcp.container.inputs.AzureClusterAuthorizationArgs;
/// import com.pulumi.gcp.container.inputs.AzureClusterControlPlaneArgs;
/// import com.pulumi.gcp.container.inputs.AzureClusterControlPlaneSshConfigArgs;
/// import com.pulumi.gcp.container.inputs.AzureClusterFleetArgs;
/// import com.pulumi.gcp.container.inputs.AzureClusterNetworkingArgs;
/// import java.util.List;
/// import java.util.ArrayList;
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
///         final var versions = ContainerFunctions.getAzureVersions(GetAzureVersionsArgs.builder()
///             .project("my-project-name")
///             .location("us-west1")
///             .build());
///
///         var basic = new AzureClient("basic", AzureClientArgs.builder()
///             .applicationId("12345678-1234-1234-1234-123456789111")
///             .location("us-west1")
///             .name("client-name")
///             .tenantId("12345678-1234-1234-1234-123456789111")
///             .project("my-project-name")
///             .build());
///
///         var primary = new AzureCluster("primary", AzureClusterArgs.builder()
///             .authorization(AzureClusterAuthorizationArgs.builder()
///                 .adminUsers(AzureClusterAuthorizationAdminUserArgs.builder()
///                     .username("mmv2@google.com")
///                     .build())
///                 .adminGroups(AzureClusterAuthorizationAdminGroupArgs.builder()
///                     .group("group@domain.com")
///                     .build())
///                 .build())
///             .azureRegion("westus2")
///             .client(basic.name().applyValue(_name -> String.format("projects/my-project-number/locations/us-west1/azureClients/%s", _name)))
///             .controlPlane(AzureClusterControlPlaneArgs.builder()
///                 .sshConfig(AzureClusterControlPlaneSshConfigArgs.builder()
///                     .authorizedKey("ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQC8yaayO6lnb2v+SedxUMa2c8vtIEzCzBjM3EJJsv8Vm9zUDWR7dXWKoNGARUb2mNGXASvI6mFIDXTIlkQ0poDEPpMaXR0g2cb5xT8jAAJq7fqXL3+0rcJhY/uigQ+MrT6s+ub0BFVbsmGHNrMQttXX9gtmwkeAEvj3mra9e5pkNf90qlKnZz6U0SVArxVsLx07vHPHDIYrl0OPG4zUREF52igbBPiNrHJFDQJT/4YlDMJmo/QT/A1D6n9ocemvZSzhRx15/Arjowhr+VVKSbaxzPtEfY0oIg2SrqJnnr/l3Du5qIefwh5VmCZe4xopPUaDDoOIEFriZ88sB+3zz8ib8sk8zJJQCgeP78tQvXCgS+4e5W3TUg9mxjB6KjXTyHIVhDZqhqde0OI3Fy1UuVzRUwnBaLjBnAwP5EoFQGRmDYk/rEYe7HTmovLeEBUDQocBQKT4Ripm/xJkkWY7B07K/tfo56dGUCkvyIVXKBInCh+dLK7gZapnd4UWkY0xBYcwo1geMLRq58iFTLA2j/JmpmHXp7m0l7jJii7d44uD3tTIFYThn7NlOnvhLim/YcBK07GMGIN7XwrrKZKmxXaspw6KBWVhzuw1UPxctxshYEaMLfFg/bwOw8HvMPr9VtrElpSB7oiOh91PDIPdPBgHCi7N2QgQ5l/ZDBHieSpNrQ== thomasrodgers")
///                     .build())
///                 .subnetId("/subscriptions/12345678-1234-1234-1234-123456789111/resourceGroups/my--dev-byo/providers/Microsoft.Network/virtualNetworks/my--dev-vnet/subnets/default")
///                 .version(versions.validVersions()[0])
///                 .build())
///             .fleet(AzureClusterFleetArgs.builder()
///                 .project("my-project-number")
///                 .build())
///             .location("us-west1")
///             .name("name")
///             .networking(AzureClusterNetworkingArgs.builder()
///                 .podAddressCidrBlocks("10.200.0.0/16")
///                 .serviceAddressCidrBlocks("10.32.0.0/24")
///                 .virtualNetworkId("/subscriptions/12345678-1234-1234-1234-123456789111/resourceGroups/my--dev-byo/providers/Microsoft.Network/virtualNetworks/my--dev-vnet")
///                 .build())
///             .resourceGroupId("/subscriptions/12345678-1234-1234-1234-123456789111/resourceGroups/my--dev-cluster")
///             .project("my-project-name")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   primary:
///     type: gcp:container:AzureCluster
///     properties:
///       authorization:
///         adminUsers:
///           - username: mmv2@google.com
///         adminGroups:
///           - group: group@domain.com
///       azureRegion: westus2
///       client: projects/my-project-number/locations/us-west1/azureClients/${basic.name}
///       controlPlane:
///         sshConfig:
///           authorizedKey: ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQC8yaayO6lnb2v+SedxUMa2c8vtIEzCzBjM3EJJsv8Vm9zUDWR7dXWKoNGARUb2mNGXASvI6mFIDXTIlkQ0poDEPpMaXR0g2cb5xT8jAAJq7fqXL3+0rcJhY/uigQ+MrT6s+ub0BFVbsmGHNrMQttXX9gtmwkeAEvj3mra9e5pkNf90qlKnZz6U0SVArxVsLx07vHPHDIYrl0OPG4zUREF52igbBPiNrHJFDQJT/4YlDMJmo/QT/A1D6n9ocemvZSzhRx15/Arjowhr+VVKSbaxzPtEfY0oIg2SrqJnnr/l3Du5qIefwh5VmCZe4xopPUaDDoOIEFriZ88sB+3zz8ib8sk8zJJQCgeP78tQvXCgS+4e5W3TUg9mxjB6KjXTyHIVhDZqhqde0OI3Fy1UuVzRUwnBaLjBnAwP5EoFQGRmDYk/rEYe7HTmovLeEBUDQocBQKT4Ripm/xJkkWY7B07K/tfo56dGUCkvyIVXKBInCh+dLK7gZapnd4UWkY0xBYcwo1geMLRq58iFTLA2j/JmpmHXp7m0l7jJii7d44uD3tTIFYThn7NlOnvhLim/YcBK07GMGIN7XwrrKZKmxXaspw6KBWVhzuw1UPxctxshYEaMLfFg/bwOw8HvMPr9VtrElpSB7oiOh91PDIPdPBgHCi7N2QgQ5l/ZDBHieSpNrQ== thomasrodgers
///         subnetId: /subscriptions/12345678-1234-1234-1234-123456789111/resourceGroups/my--dev-byo/providers/Microsoft.Network/virtualNetworks/my--dev-vnet/subnets/default
///         version: ${versions.validVersions[0]}
///       fleet:
///         project: my-project-number
///       location: us-west1
///       name: name
///       networking:
///         podAddressCidrBlocks:
///           - 10.200.0.0/16
///         serviceAddressCidrBlocks:
///           - 10.32.0.0/24
///         virtualNetworkId: /subscriptions/12345678-1234-1234-1234-123456789111/resourceGroups/my--dev-byo/providers/Microsoft.Network/virtualNetworks/my--dev-vnet
///       resourceGroupId: /subscriptions/12345678-1234-1234-1234-123456789111/resourceGroups/my--dev-cluster
///       project: my-project-name
///   basic:
///     type: gcp:container:AzureClient
///     properties:
///       applicationId: 12345678-1234-1234-1234-123456789111
///       location: us-west1
///       name: client-name
///       tenantId: 12345678-1234-1234-1234-123456789111
///       project: my-project-name
/// variables:
///   versions:
///     fn::invoke:
///       function: gcp:container:getAzureVersions
///       arguments:
///         project: my-project-name
///         location: us-west1
/// ```
///
/// ### Beta_basic_enum_azure_cluster
/// A basic example of a containerazure azure cluster with lowercase enums (beta)
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const versions = gcp.container.getAzureVersions({
///     project: "my-project-name",
///     location: "us-west1",
/// });
/// const basic = new gcp.container.AzureClient("basic", {
///     applicationId: "12345678-1234-1234-1234-123456789111",
///     location: "us-west1",
///     name: "client-name",
///     tenantId: "12345678-1234-1234-1234-123456789111",
///     project: "my-project-name",
/// });
/// const primary = new gcp.container.AzureCluster("primary", {
///     authorization: {
///         adminUsers: [{
///             username: "mmv2@google.com",
///         }],
///     },
///     azureRegion: "westus2",
///     client: pulumi.interpolate`projects/my-project-number/locations/us-west1/azureClients/${basic.name}`,
///     controlPlane: {
///         sshConfig: {
///             authorizedKey: "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQC8yaayO6lnb2v+SedxUMa2c8vtIEzCzBjM3EJJsv8Vm9zUDWR7dXWKoNGARUb2mNGXASvI6mFIDXTIlkQ0poDEPpMaXR0g2cb5xT8jAAJq7fqXL3+0rcJhY/uigQ+MrT6s+ub0BFVbsmGHNrMQttXX9gtmwkeAEvj3mra9e5pkNf90qlKnZz6U0SVArxVsLx07vHPHDIYrl0OPG4zUREF52igbBPiNrHJFDQJT/4YlDMJmo/QT/A1D6n9ocemvZSzhRx15/Arjowhr+VVKSbaxzPtEfY0oIg2SrqJnnr/l3Du5qIefwh5VmCZe4xopPUaDDoOIEFriZ88sB+3zz8ib8sk8zJJQCgeP78tQvXCgS+4e5W3TUg9mxjB6KjXTyHIVhDZqhqde0OI3Fy1UuVzRUwnBaLjBnAwP5EoFQGRmDYk/rEYe7HTmovLeEBUDQocBQKT4Ripm/xJkkWY7B07K/tfo56dGUCkvyIVXKBInCh+dLK7gZapnd4UWkY0xBYcwo1geMLRq58iFTLA2j/JmpmHXp7m0l7jJii7d44uD3tTIFYThn7NlOnvhLim/YcBK07GMGIN7XwrrKZKmxXaspw6KBWVhzuw1UPxctxshYEaMLfFg/bwOw8HvMPr9VtrElpSB7oiOh91PDIPdPBgHCi7N2QgQ5l/ZDBHieSpNrQ== thomasrodgers",
///         },
///         subnetId: "/subscriptions/12345678-1234-1234-1234-123456789111/resourceGroups/my--dev-byo/providers/Microsoft.Network/virtualNetworks/my--dev-vnet/subnets/default",
///         version: versions.then(versions => versions.validVersions?.[0]),
///     },
///     fleet: {
///         project: "my-project-number",
///     },
///     location: "us-west1",
///     name: "name",
///     networking: {
///         podAddressCidrBlocks: ["10.200.0.0/16"],
///         serviceAddressCidrBlocks: ["10.32.0.0/24"],
///         virtualNetworkId: "/subscriptions/12345678-1234-1234-1234-123456789111/resourceGroups/my--dev-byo/providers/Microsoft.Network/virtualNetworks/my--dev-vnet",
///     },
///     resourceGroupId: "/subscriptions/12345678-1234-1234-1234-123456789111/resourceGroups/my--dev-cluster",
///     project: "my-project-name",
///     loggingConfig: {
///         componentConfig: {
///             enableComponents: [
///                 "system_components",
///                 "workloads",
///             ],
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// versions = gcp.container.get_azure_versions(project="my-project-name",
///     location="us-west1")
/// basic = gcp.container.AzureClient("basic",
///     application_id="12345678-1234-1234-1234-123456789111",
///     location="us-west1",
///     name="client-name",
///     tenant_id="12345678-1234-1234-1234-123456789111",
///     project="my-project-name")
/// primary = gcp.container.AzureCluster("primary",
///     authorization={
///         "admin_users": [{
///             "username": "mmv2@google.com",
///         }],
///     },
///     azure_region="westus2",
///     client=basic.name.apply(lambda name: f"projects/my-project-number/locations/us-west1/azureClients/{name}"),
///     control_plane={
///         "ssh_config": {
///             "authorized_key": "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQC8yaayO6lnb2v+SedxUMa2c8vtIEzCzBjM3EJJsv8Vm9zUDWR7dXWKoNGARUb2mNGXASvI6mFIDXTIlkQ0poDEPpMaXR0g2cb5xT8jAAJq7fqXL3+0rcJhY/uigQ+MrT6s+ub0BFVbsmGHNrMQttXX9gtmwkeAEvj3mra9e5pkNf90qlKnZz6U0SVArxVsLx07vHPHDIYrl0OPG4zUREF52igbBPiNrHJFDQJT/4YlDMJmo/QT/A1D6n9ocemvZSzhRx15/Arjowhr+VVKSbaxzPtEfY0oIg2SrqJnnr/l3Du5qIefwh5VmCZe4xopPUaDDoOIEFriZ88sB+3zz8ib8sk8zJJQCgeP78tQvXCgS+4e5W3TUg9mxjB6KjXTyHIVhDZqhqde0OI3Fy1UuVzRUwnBaLjBnAwP5EoFQGRmDYk/rEYe7HTmovLeEBUDQocBQKT4Ripm/xJkkWY7B07K/tfo56dGUCkvyIVXKBInCh+dLK7gZapnd4UWkY0xBYcwo1geMLRq58iFTLA2j/JmpmHXp7m0l7jJii7d44uD3tTIFYThn7NlOnvhLim/YcBK07GMGIN7XwrrKZKmxXaspw6KBWVhzuw1UPxctxshYEaMLfFg/bwOw8HvMPr9VtrElpSB7oiOh91PDIPdPBgHCi7N2QgQ5l/ZDBHieSpNrQ== thomasrodgers",
///         },
///         "subnet_id": "/subscriptions/12345678-1234-1234-1234-123456789111/resourceGroups/my--dev-byo/providers/Microsoft.Network/virtualNetworks/my--dev-vnet/subnets/default",
///         "version": versions.valid_versions[0],
///     },
///     fleet={
///         "project": "my-project-number",
///     },
///     location="us-west1",
///     name="name",
///     networking={
///         "pod_address_cidr_blocks": ["10.200.0.0/16"],
///         "service_address_cidr_blocks": ["10.32.0.0/24"],
///         "virtual_network_id": "/subscriptions/12345678-1234-1234-1234-123456789111/resourceGroups/my--dev-byo/providers/Microsoft.Network/virtualNetworks/my--dev-vnet",
///     },
///     resource_group_id="/subscriptions/12345678-1234-1234-1234-123456789111/resourceGroups/my--dev-cluster",
///     project="my-project-name",
///     logging_config={
///         "component_config": {
///             "enable_components": [
///                 "system_components",
///                 "workloads",
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
///     var versions = Gcp.Container.GetAzureVersions.Invoke(new()
///     {
///         Project = "my-project-name",
///         Location = "us-west1",
///     });
///
///     var basic = new Gcp.Container.AzureClient("basic", new()
///     {
///         ApplicationId = "12345678-1234-1234-1234-123456789111",
///         Location = "us-west1",
///         Name = "client-name",
///         TenantId = "12345678-1234-1234-1234-123456789111",
///         Project = "my-project-name",
///     });
///
///     var primary = new Gcp.Container.AzureCluster("primary", new()
///     {
///         Authorization = new Gcp.Container.Inputs.AzureClusterAuthorizationArgs
///         {
///             AdminUsers = new[]
///             {
///                 new Gcp.Container.Inputs.AzureClusterAuthorizationAdminUserArgs
///                 {
///                     Username = "mmv2@google.com",
///                 },
///             },
///         },
///         AzureRegion = "westus2",
///         Client = basic.Name.Apply(name => $"projects/my-project-number/locations/us-west1/azureClients/{name}"),
///         ControlPlane = new Gcp.Container.Inputs.AzureClusterControlPlaneArgs
///         {
///             SshConfig = new Gcp.Container.Inputs.AzureClusterControlPlaneSshConfigArgs
///             {
///                 AuthorizedKey = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQC8yaayO6lnb2v+SedxUMa2c8vtIEzCzBjM3EJJsv8Vm9zUDWR7dXWKoNGARUb2mNGXASvI6mFIDXTIlkQ0poDEPpMaXR0g2cb5xT8jAAJq7fqXL3+0rcJhY/uigQ+MrT6s+ub0BFVbsmGHNrMQttXX9gtmwkeAEvj3mra9e5pkNf90qlKnZz6U0SVArxVsLx07vHPHDIYrl0OPG4zUREF52igbBPiNrHJFDQJT/4YlDMJmo/QT/A1D6n9ocemvZSzhRx15/Arjowhr+VVKSbaxzPtEfY0oIg2SrqJnnr/l3Du5qIefwh5VmCZe4xopPUaDDoOIEFriZ88sB+3zz8ib8sk8zJJQCgeP78tQvXCgS+4e5W3TUg9mxjB6KjXTyHIVhDZqhqde0OI3Fy1UuVzRUwnBaLjBnAwP5EoFQGRmDYk/rEYe7HTmovLeEBUDQocBQKT4Ripm/xJkkWY7B07K/tfo56dGUCkvyIVXKBInCh+dLK7gZapnd4UWkY0xBYcwo1geMLRq58iFTLA2j/JmpmHXp7m0l7jJii7d44uD3tTIFYThn7NlOnvhLim/YcBK07GMGIN7XwrrKZKmxXaspw6KBWVhzuw1UPxctxshYEaMLfFg/bwOw8HvMPr9VtrElpSB7oiOh91PDIPdPBgHCi7N2QgQ5l/ZDBHieSpNrQ== thomasrodgers",
///             },
///             SubnetId = "/subscriptions/12345678-1234-1234-1234-123456789111/resourceGroups/my--dev-byo/providers/Microsoft.Network/virtualNetworks/my--dev-vnet/subnets/default",
///             Version = versions.Apply(getAzureVersionsResult => getAzureVersionsResult.ValidVersions[0]),
///         },
///         Fleet = new Gcp.Container.Inputs.AzureClusterFleetArgs
///         {
///             Project = "my-project-number",
///         },
///         Location = "us-west1",
///         Name = "name",
///         Networking = new Gcp.Container.Inputs.AzureClusterNetworkingArgs
///         {
///             PodAddressCidrBlocks = new[]
///             {
///                 "10.200.0.0/16",
///             },
///             ServiceAddressCidrBlocks = new[]
///             {
///                 "10.32.0.0/24",
///             },
///             VirtualNetworkId = "/subscriptions/12345678-1234-1234-1234-123456789111/resourceGroups/my--dev-byo/providers/Microsoft.Network/virtualNetworks/my--dev-vnet",
///         },
///         ResourceGroupId = "/subscriptions/12345678-1234-1234-1234-123456789111/resourceGroups/my--dev-cluster",
///         Project = "my-project-name",
///         LoggingConfig = new Gcp.Container.Inputs.AzureClusterLoggingConfigArgs
///         {
///             ComponentConfig = new Gcp.Container.Inputs.AzureClusterLoggingConfigComponentConfigArgs
///             {
///                 EnableComponents = new[]
///                 {
///                     "system_components",
///                     "workloads",
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
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/container"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		versions, err := container.GetAzureVersions(ctx, &container.GetAzureVersionsArgs{
/// 			Project:  pulumi.StringRef("my-project-name"),
/// 			Location: pulumi.StringRef("us-west1"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		basic, err := container.NewAzureClient(ctx, "basic", &container.AzureClientArgs{
/// 			ApplicationId: pulumi.String("12345678-1234-1234-1234-123456789111"),
/// 			Location:      pulumi.String("us-west1"),
/// 			Name:          pulumi.String("client-name"),
/// 			TenantId:      pulumi.String("12345678-1234-1234-1234-123456789111"),
/// 			Project:       pulumi.String("my-project-name"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = container.NewAzureCluster(ctx, "primary", &container.AzureClusterArgs{
/// 			Authorization: &container.AzureClusterAuthorizationArgs{
/// 				AdminUsers: container.AzureClusterAuthorizationAdminUserArray{
/// 					&container.AzureClusterAuthorizationAdminUserArgs{
/// 						Username: pulumi.String("mmv2@google.com"),
/// 					},
/// 				},
/// 			},
/// 			AzureRegion: pulumi.String("westus2"),
/// 			Client: basic.Name.ApplyT(func(name string) (string, error) {
/// 				return fmt.Sprintf("projects/my-project-number/locations/us-west1/azureClients/%v", name), nil
/// 			}).(pulumi.StringOutput),
/// 			ControlPlane: &container.AzureClusterControlPlaneArgs{
/// 				SshConfig: &container.AzureClusterControlPlaneSshConfigArgs{
/// 					AuthorizedKey: pulumi.String("ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQC8yaayO6lnb2v+SedxUMa2c8vtIEzCzBjM3EJJsv8Vm9zUDWR7dXWKoNGARUb2mNGXASvI6mFIDXTIlkQ0poDEPpMaXR0g2cb5xT8jAAJq7fqXL3+0rcJhY/uigQ+MrT6s+ub0BFVbsmGHNrMQttXX9gtmwkeAEvj3mra9e5pkNf90qlKnZz6U0SVArxVsLx07vHPHDIYrl0OPG4zUREF52igbBPiNrHJFDQJT/4YlDMJmo/QT/A1D6n9ocemvZSzhRx15/Arjowhr+VVKSbaxzPtEfY0oIg2SrqJnnr/l3Du5qIefwh5VmCZe4xopPUaDDoOIEFriZ88sB+3zz8ib8sk8zJJQCgeP78tQvXCgS+4e5W3TUg9mxjB6KjXTyHIVhDZqhqde0OI3Fy1UuVzRUwnBaLjBnAwP5EoFQGRmDYk/rEYe7HTmovLeEBUDQocBQKT4Ripm/xJkkWY7B07K/tfo56dGUCkvyIVXKBInCh+dLK7gZapnd4UWkY0xBYcwo1geMLRq58iFTLA2j/JmpmHXp7m0l7jJii7d44uD3tTIFYThn7NlOnvhLim/YcBK07GMGIN7XwrrKZKmxXaspw6KBWVhzuw1UPxctxshYEaMLfFg/bwOw8HvMPr9VtrElpSB7oiOh91PDIPdPBgHCi7N2QgQ5l/ZDBHieSpNrQ== thomasrodgers"),
/// 				},
/// 				SubnetId: pulumi.String("/subscriptions/12345678-1234-1234-1234-123456789111/resourceGroups/my--dev-byo/providers/Microsoft.Network/virtualNetworks/my--dev-vnet/subnets/default"),
/// 				Version:  pulumi.String(versions.ValidVersions[0]),
/// 			},
/// 			Fleet: &container.AzureClusterFleetArgs{
/// 				Project: pulumi.String("my-project-number"),
/// 			},
/// 			Location: pulumi.String("us-west1"),
/// 			Name:     pulumi.String("name"),
/// 			Networking: &container.AzureClusterNetworkingArgs{
/// 				PodAddressCidrBlocks: pulumi.StringArray{
/// 					pulumi.String("10.200.0.0/16"),
/// 				},
/// 				ServiceAddressCidrBlocks: pulumi.StringArray{
/// 					pulumi.String("10.32.0.0/24"),
/// 				},
/// 				VirtualNetworkId: pulumi.String("/subscriptions/12345678-1234-1234-1234-123456789111/resourceGroups/my--dev-byo/providers/Microsoft.Network/virtualNetworks/my--dev-vnet"),
/// 			},
/// 			ResourceGroupId: pulumi.String("/subscriptions/12345678-1234-1234-1234-123456789111/resourceGroups/my--dev-cluster"),
/// 			Project:         pulumi.String("my-project-name"),
/// 			LoggingConfig: &container.AzureClusterLoggingConfigArgs{
/// 				ComponentConfig: &container.AzureClusterLoggingConfigComponentConfigArgs{
/// 					EnableComponents: pulumi.StringArray{
/// 						pulumi.String("system_components"),
/// 						pulumi.String("workloads"),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.container.ContainerFunctions;
/// import com.pulumi.gcp.container.inputs.GetAzureVersionsArgs;
/// import com.pulumi.gcp.container.AzureClient;
/// import com.pulumi.gcp.container.AzureClientArgs;
/// import com.pulumi.gcp.container.AzureCluster;
/// import com.pulumi.gcp.container.AzureClusterArgs;
/// import com.pulumi.gcp.container.inputs.AzureClusterAuthorizationArgs;
/// import com.pulumi.gcp.container.inputs.AzureClusterControlPlaneArgs;
/// import com.pulumi.gcp.container.inputs.AzureClusterControlPlaneSshConfigArgs;
/// import com.pulumi.gcp.container.inputs.AzureClusterFleetArgs;
/// import com.pulumi.gcp.container.inputs.AzureClusterNetworkingArgs;
/// import com.pulumi.gcp.container.inputs.AzureClusterLoggingConfigArgs;
/// import com.pulumi.gcp.container.inputs.AzureClusterLoggingConfigComponentConfigArgs;
/// import java.util.List;
/// import java.util.ArrayList;
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
///         final var versions = ContainerFunctions.getAzureVersions(GetAzureVersionsArgs.builder()
///             .project("my-project-name")
///             .location("us-west1")
///             .build());
///
///         var basic = new AzureClient("basic", AzureClientArgs.builder()
///             .applicationId("12345678-1234-1234-1234-123456789111")
///             .location("us-west1")
///             .name("client-name")
///             .tenantId("12345678-1234-1234-1234-123456789111")
///             .project("my-project-name")
///             .build());
///
///         var primary = new AzureCluster("primary", AzureClusterArgs.builder()
///             .authorization(AzureClusterAuthorizationArgs.builder()
///                 .adminUsers(AzureClusterAuthorizationAdminUserArgs.builder()
///                     .username("mmv2@google.com")
///                     .build())
///                 .build())
///             .azureRegion("westus2")
///             .client(basic.name().applyValue(_name -> String.format("projects/my-project-number/locations/us-west1/azureClients/%s", _name)))
///             .controlPlane(AzureClusterControlPlaneArgs.builder()
///                 .sshConfig(AzureClusterControlPlaneSshConfigArgs.builder()
///                     .authorizedKey("ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQC8yaayO6lnb2v+SedxUMa2c8vtIEzCzBjM3EJJsv8Vm9zUDWR7dXWKoNGARUb2mNGXASvI6mFIDXTIlkQ0poDEPpMaXR0g2cb5xT8jAAJq7fqXL3+0rcJhY/uigQ+MrT6s+ub0BFVbsmGHNrMQttXX9gtmwkeAEvj3mra9e5pkNf90qlKnZz6U0SVArxVsLx07vHPHDIYrl0OPG4zUREF52igbBPiNrHJFDQJT/4YlDMJmo/QT/A1D6n9ocemvZSzhRx15/Arjowhr+VVKSbaxzPtEfY0oIg2SrqJnnr/l3Du5qIefwh5VmCZe4xopPUaDDoOIEFriZ88sB+3zz8ib8sk8zJJQCgeP78tQvXCgS+4e5W3TUg9mxjB6KjXTyHIVhDZqhqde0OI3Fy1UuVzRUwnBaLjBnAwP5EoFQGRmDYk/rEYe7HTmovLeEBUDQocBQKT4Ripm/xJkkWY7B07K/tfo56dGUCkvyIVXKBInCh+dLK7gZapnd4UWkY0xBYcwo1geMLRq58iFTLA2j/JmpmHXp7m0l7jJii7d44uD3tTIFYThn7NlOnvhLim/YcBK07GMGIN7XwrrKZKmxXaspw6KBWVhzuw1UPxctxshYEaMLfFg/bwOw8HvMPr9VtrElpSB7oiOh91PDIPdPBgHCi7N2QgQ5l/ZDBHieSpNrQ== thomasrodgers")
///                     .build())
///                 .subnetId("/subscriptions/12345678-1234-1234-1234-123456789111/resourceGroups/my--dev-byo/providers/Microsoft.Network/virtualNetworks/my--dev-vnet/subnets/default")
///                 .version(versions.validVersions()[0])
///                 .build())
///             .fleet(AzureClusterFleetArgs.builder()
///                 .project("my-project-number")
///                 .build())
///             .location("us-west1")
///             .name("name")
///             .networking(AzureClusterNetworkingArgs.builder()
///                 .podAddressCidrBlocks("10.200.0.0/16")
///                 .serviceAddressCidrBlocks("10.32.0.0/24")
///                 .virtualNetworkId("/subscriptions/12345678-1234-1234-1234-123456789111/resourceGroups/my--dev-byo/providers/Microsoft.Network/virtualNetworks/my--dev-vnet")
///                 .build())
///             .resourceGroupId("/subscriptions/12345678-1234-1234-1234-123456789111/resourceGroups/my--dev-cluster")
///             .project("my-project-name")
///             .loggingConfig(AzureClusterLoggingConfigArgs.builder()
///                 .componentConfig(AzureClusterLoggingConfigComponentConfigArgs.builder()
///                     .enableComponents(
///                         "system_components",
///                         "workloads")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   primary:
///     type: gcp:container:AzureCluster
///     properties:
///       authorization:
///         adminUsers:
///           - username: mmv2@google.com
///       azureRegion: westus2
///       client: projects/my-project-number/locations/us-west1/azureClients/${basic.name}
///       controlPlane:
///         sshConfig:
///           authorizedKey: ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQC8yaayO6lnb2v+SedxUMa2c8vtIEzCzBjM3EJJsv8Vm9zUDWR7dXWKoNGARUb2mNGXASvI6mFIDXTIlkQ0poDEPpMaXR0g2cb5xT8jAAJq7fqXL3+0rcJhY/uigQ+MrT6s+ub0BFVbsmGHNrMQttXX9gtmwkeAEvj3mra9e5pkNf90qlKnZz6U0SVArxVsLx07vHPHDIYrl0OPG4zUREF52igbBPiNrHJFDQJT/4YlDMJmo/QT/A1D6n9ocemvZSzhRx15/Arjowhr+VVKSbaxzPtEfY0oIg2SrqJnnr/l3Du5qIefwh5VmCZe4xopPUaDDoOIEFriZ88sB+3zz8ib8sk8zJJQCgeP78tQvXCgS+4e5W3TUg9mxjB6KjXTyHIVhDZqhqde0OI3Fy1UuVzRUwnBaLjBnAwP5EoFQGRmDYk/rEYe7HTmovLeEBUDQocBQKT4Ripm/xJkkWY7B07K/tfo56dGUCkvyIVXKBInCh+dLK7gZapnd4UWkY0xBYcwo1geMLRq58iFTLA2j/JmpmHXp7m0l7jJii7d44uD3tTIFYThn7NlOnvhLim/YcBK07GMGIN7XwrrKZKmxXaspw6KBWVhzuw1UPxctxshYEaMLfFg/bwOw8HvMPr9VtrElpSB7oiOh91PDIPdPBgHCi7N2QgQ5l/ZDBHieSpNrQ== thomasrodgers
///         subnetId: /subscriptions/12345678-1234-1234-1234-123456789111/resourceGroups/my--dev-byo/providers/Microsoft.Network/virtualNetworks/my--dev-vnet/subnets/default
///         version: ${versions.validVersions[0]}
///       fleet:
///         project: my-project-number
///       location: us-west1
///       name: name
///       networking:
///         podAddressCidrBlocks:
///           - 10.200.0.0/16
///         serviceAddressCidrBlocks:
///           - 10.32.0.0/24
///         virtualNetworkId: /subscriptions/12345678-1234-1234-1234-123456789111/resourceGroups/my--dev-byo/providers/Microsoft.Network/virtualNetworks/my--dev-vnet
///       resourceGroupId: /subscriptions/12345678-1234-1234-1234-123456789111/resourceGroups/my--dev-cluster
///       project: my-project-name
///       loggingConfig:
///         componentConfig:
///           enableComponents:
///             - system_components
///             - workloads
///   basic:
///     type: gcp:container:AzureClient
///     properties:
///       applicationId: 12345678-1234-1234-1234-123456789111
///       location: us-west1
///       name: client-name
///       tenantId: 12345678-1234-1234-1234-123456789111
///       project: my-project-name
/// variables:
///   versions:
///     fn::invoke:
///       function: gcp:container:getAzureVersions
///       arguments:
///         project: my-project-name
///         location: us-west1
/// ```
///
///
/// ## Import
///
/// Cluster can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/azureClusters/{{name}}`
///
/// * `{{project}}/{{location}}/{{name}}`
///
/// * `{{location}}/{{name}}`
///
/// When using the `pulumi import` command, Cluster can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:container/azureCluster:AzureCluster default projects/{{project}}/locations/{{location}}/azureClusters/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:container/azureCluster:AzureCluster default {{project}}/{{location}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:container/azureCluster:AzureCluster default {{location}}/{{name}}
/// ```
class AzureCluster extends pulumi.CustomResource {
  /// Optional. Annotations on the cluster. This field has the same restrictions as Kubernetes annotations. The total size of all keys and values combined is limited to 256k. Keys can have 2 segments: prefix (optional) and name (required), separated by a slash (/). Prefix must be a DNS subdomain. Name must be 63 characters or less, begin and end with alphanumerics, with dashes (-), underscores (_), dots (.), and alphanumerics between.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  late final pulumi.Output<Map<String, String>?> annotations;

  /// Configuration related to the cluster RBAC settings.
  late final pulumi.Output<AzureClusterAuthorization> authorization;

  /// The Azure region where the cluster runs. Each Google Cloud region supports a subset of nearby Azure regions. You can call to list all supported Azure regions within a given Google Cloud region.
  late final pulumi.Output<String> azureRegion;

  /// Azure authentication configuration for management of Azure resources
  late final pulumi.Output<AzureClusterAzureServicesAuthentication?>
  azureServicesAuthentication;

  /// Name of the AzureClient. The `AzureClient` resource must reside on the same GCP project and region as the `AzureCluster`. `AzureClient` names are formatted as `projects/&lt;project-number&gt;/locations/&lt;region&gt;/azureClients/&lt;client-id&gt;`. See Resource Names (https:cloud.google.com/apis/design/resource_names) for more details on Google Cloud resource names.
  late final pulumi.Output<String?> client;

  /// Configuration related to the cluster control plane.
  late final pulumi.Output<AzureClusterControlPlane> controlPlane;

  /// Output only. The time at which this cluster was created.
  late final pulumi.Output<String> createTime;

  /// Optional. A human readable description of this cluster. Cannot be longer than 255 UTF-8 encoded bytes.
  late final pulumi.Output<String?> description;
  late final pulumi.Output<Map<String, String>> effectiveAnnotations;

  /// Output only. The endpoint of the cluster's API server.
  late final pulumi.Output<String> endpoint;

  /// Allows clients to perform consistent read-modify-writes through optimistic concurrency control. May be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  late final pulumi.Output<String> etag;

  /// Fleet configuration.
  late final pulumi.Output<AzureClusterFleet> fleet;

  /// The location for the resource
  late final pulumi.Output<String> location;

  /// Logging configuration.
  late final pulumi.Output<AzureClusterLoggingConfig> loggingConfig;

  /// The name of this resource.
  late final pulumi.Output<String> name;

  /// Cluster-wide networking configuration.
  late final pulumi.Output<AzureClusterNetworking> networking;

  /// The project for the resource
  late final pulumi.Output<String> project;

  /// Output only. If set, there are currently changes in flight to the cluster.
  late final pulumi.Output<bool> reconciling;

  /// The ARM ID of the resource group where the cluster resources are deployed. For example: `/subscriptions/*/resourceGroups/*`
  late final pulumi.Output<String> resourceGroupId;

  /// Output only. The current state of the cluster. Possible values: STATE_UNSPECIFIED, PROVISIONING, RUNNING, RECONCILING, STOPPING, ERROR, DEGRADED
  late final pulumi.Output<String> state;

  /// Output only. A globally unique identifier for the cluster.
  late final pulumi.Output<String> uid;

  /// Output only. The time at which this cluster was last updated.
  late final pulumi.Output<String> updateTime;

  /// Output only. Workload Identity settings.
  late final pulumi.Output<List<Map<String, dynamic>>> workloadIdentityConfigs;

  /// Creates a new [AzureCluster].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AzureCluster]. {@macro pulumi_container_azure_cluster_azure_cluster_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AzureCluster(
    String name, {
    AzureClusterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:container/azureCluster:AzureCluster',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    annotations = registerOutput<Map<String, String>?>('annotations');
    authorization = registerOutput<AzureClusterAuthorization>(
      'authorization',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return AzureClusterAuthorization.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    azureRegion = registerOutput<String>('azureRegion');
    azureServicesAuthentication =
        registerOutput<AzureClusterAzureServicesAuthentication?>(
          'azureServicesAuthentication',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return AzureClusterAzureServicesAuthentication.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    client = registerOutput<String?>('client');
    controlPlane = registerOutput<AzureClusterControlPlane>(
      'controlPlane',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return AzureClusterControlPlane.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    createTime = registerOutput<String>('createTime');
    description = registerOutput<String?>('description');
    effectiveAnnotations = registerOutput<Map<String, String>>(
      'effectiveAnnotations',
    );
    endpoint = registerOutput<String>('endpoint');
    etag = registerOutput<String>('etag');
    fleet = registerOutput<AzureClusterFleet>(
      'fleet',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return AzureClusterFleet.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    location = registerOutput<String>('location');
    loggingConfig = registerOutput<AzureClusterLoggingConfig>(
      'loggingConfig',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return AzureClusterLoggingConfig.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    this.name = registerOutput<String>('name');
    networking = registerOutput<AzureClusterNetworking>(
      'networking',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return AzureClusterNetworking.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    project = registerOutput<String>('project');
    reconciling = registerOutput<bool>('reconciling');
    resourceGroupId = registerOutput<String>('resourceGroupId');
    state = registerOutput<String>('state');
    uid = registerOutput<String>('uid');
    updateTime = registerOutput<String>('updateTime');
    workloadIdentityConfigs = registerOutput<List<Map<String, dynamic>>>(
      'workloadIdentityConfigs',
    );
  }

  /// Gets an existing [AzureCluster] resource's state with the given [name] and [id].
  static AzureCluster get(
    String name,
    pulumi.Input<String> id, {
    AzureClusterState? state,
  }) {
    return AzureCluster._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AzureCluster._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:container/azureCluster:AzureCluster',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    annotations = registerOutput<Map<String, String>?>('annotations');
    authorization = registerOutput<AzureClusterAuthorization>(
      'authorization',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return AzureClusterAuthorization.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    azureRegion = registerOutput<String>('azureRegion');
    azureServicesAuthentication =
        registerOutput<AzureClusterAzureServicesAuthentication?>(
          'azureServicesAuthentication',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return AzureClusterAzureServicesAuthentication.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    client = registerOutput<String?>('client');
    controlPlane = registerOutput<AzureClusterControlPlane>(
      'controlPlane',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return AzureClusterControlPlane.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    createTime = registerOutput<String>('createTime');
    description = registerOutput<String?>('description');
    effectiveAnnotations = registerOutput<Map<String, String>>(
      'effectiveAnnotations',
    );
    endpoint = registerOutput<String>('endpoint');
    etag = registerOutput<String>('etag');
    fleet = registerOutput<AzureClusterFleet>(
      'fleet',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return AzureClusterFleet.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    location = registerOutput<String>('location');
    loggingConfig = registerOutput<AzureClusterLoggingConfig>(
      'loggingConfig',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return AzureClusterLoggingConfig.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    this.name = registerOutput<String>('name');
    networking = registerOutput<AzureClusterNetworking>(
      'networking',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return AzureClusterNetworking.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    project = registerOutput<String>('project');
    reconciling = registerOutput<bool>('reconciling');
    resourceGroupId = registerOutput<String>('resourceGroupId');
    this.state = registerOutput<String>('state');
    uid = registerOutput<String>('uid');
    updateTime = registerOutput<String>('updateTime');
    workloadIdentityConfigs = registerOutput<List<Map<String, dynamic>>>(
      'workloadIdentityConfigs',
    );
  }
}
