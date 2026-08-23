import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_network_gateway_args.dart';
import 'virtual_network_gateway_bgp_settings.dart';
import 'virtual_network_gateway_custom_route.dart';
import 'virtual_network_gateway_state.dart';
import 'virtual_network_gateway_vpn_client_configuration.dart';

/// Manages a Virtual Network Gateway to establish secure, cross-premises connectivity.
///
/// &gt; **Note:** Please be aware that provisioning a Virtual Network Gateway takes a long time (between 30 minutes and 1 hour)
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "test",
///     location: "West Europe",
/// });
/// const exampleVirtualNetwork = new azure.network.VirtualNetwork("example", {
///     name: "test",
///     location: example.location,
///     resourceGroupName: example.name,
///     addressSpaces: ["10.0.0.0/16"],
/// });
/// const exampleSubnet = new azure.network.Subnet("example", {
///     name: "GatewaySubnet",
///     resourceGroupName: example.name,
///     virtualNetworkName: exampleVirtualNetwork.name,
///     addressPrefixes: ["10.0.1.0/24"],
/// });
/// const examplePublicIp = new azure.network.PublicIp("example", {
///     name: "test",
///     location: example.location,
///     resourceGroupName: example.name,
///     allocationMethod: "Dynamic",
/// });
/// const exampleVirtualNetworkGateway = new azure.network.VirtualNetworkGateway("example", {
///     name: "test",
///     location: example.location,
///     resourceGroupName: example.name,
///     type: "Vpn",
///     vpnType: "RouteBased",
///     activeActive: false,
///     bgpEnabled: false,
///     sku: "Basic",
///     ipConfigurations: [{
///         name: "vnetGatewayConfig",
///         publicIpAddressId: examplePublicIp.id,
///         privateIpAddressAllocation: "Dynamic",
///         subnetId: exampleSubnet.id,
///     }],
///     vpnClientConfiguration: {
///         addressSpaces: ["10.2.0.0/24"],
///         rootCertificates: [{
///             name: "DigiCert-Federated-ID-Root-CA",
///             publicCertData: `MIIDuzCCAqOgAwIBAgIQCHTZWCM+IlfFIRXIvyKSrjANBgkqhkiG9w0BAQsFADBn
/// MQswCQYDVQQGEwJVUzEVMBMGA1UEChMMRGlnaUNlcnQgSW5jMRkwFwYDVQQLExB3
/// d3cuZGlnaWNlcnQuY29tMSYwJAYDVQQDEx1EaWdpQ2VydCBGZWRlcmF0ZWQgSUQg
/// Um9vdCBDQTAeFw0xMzAxMTUxMjAwMDBaFw0zMzAxMTUxMjAwMDBaMGcxCzAJBgNV
/// BAYTAlVTMRUwEwYDVQQKEwxEaWdpQ2VydCBJbmMxGTAXBgNVBAsTEHd3dy5kaWdp
/// Y2VydC5jb20xJjAkBgNVBAMTHURpZ2lDZXJ0IEZlZGVyYXRlZCBJRCBSb290IENB
/// MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvAEB4pcCqnNNOWE6Ur5j
/// QPUH+1y1F9KdHTRSza6k5iDlXq1kGS1qAkuKtw9JsiNRrjltmFnzMZRBbX8Tlfl8
/// zAhBmb6dDduDGED01kBsTkgywYPxXVTKec0WxYEEF0oMn4wSYNl0lt2eJAKHXjNf
/// GTwiibdP8CUR2ghSM2sUTI8Nt1Omfc4SMHhGhYD64uJMbX98THQ/4LMGuYegou+d
/// GTiahfHtjn7AboSEknwAMJHCh5RlYZZ6B1O4QbKJ+34Q0eKgnI3X6Vc9u0zf6DH8
/// Dk+4zQDYRRTqTnVO3VT8jzqDlCRuNtq6YvryOWN74/dq8LQhUnXHvFyrsdMaE1X2
/// DwIDAQABo2MwYTAPBgNVHRMBAf8EBTADAQH/MA4GA1UdDwEB/wQEAwIBhjAdBgNV
/// HQ4EFgQUGRdkFnbGt1EWjKwbUne+5OaZvRYwHwYDVR0jBBgwFoAUGRdkFnbGt1EW
/// jKwbUne+5OaZvRYwDQYJKoZIhvcNAQELBQADggEBAHcqsHkrjpESqfuVTRiptJfP
/// 9JbdtWqRTmOf6uJi2c8YVqI6XlKXsD8C1dUUaaHKLUJzvKiazibVuBwMIT84AyqR
/// QELn3e0BtgEymEygMU569b01ZPxoFSnNXc7qDZBDef8WfqAV/sxkTi8L9BkmFYfL
/// uGLOhRJOFprPdoDIUBB+tmCl3oDcBy3vnUeOEioz8zAkprcb3GHwHAK+vHmmfgcn
/// WsfMLH4JCLa/tRYL+Rw/N3ybCkDp00s0WUZ+AoDywSl0Q/ZEnNY0MsFiw6LyIdbq
/// M/s/1JRtO3bDSzD9TazRVzn2oBqzSa8VgIo5C1nOnoAKJTlsClJKvIhnRlaLQqk=
/// `,
///         }],
///         revokedCertificates: [{
///             name: "Verizon-Global-Root-CA",
///             thumbprint: "912198EEF23DCAC40939312FEE97DD560BAE49B1",
///         }],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="test",
///     location="West Europe")
/// example_virtual_network = azure.network.VirtualNetwork("example",
///     name="test",
///     location=example.location,
///     resource_group_name=example.name,
///     address_spaces=["10.0.0.0/16"])
/// example_subnet = azure.network.Subnet("example",
///     name="GatewaySubnet",
///     resource_group_name=example.name,
///     virtual_network_name=example_virtual_network.name,
///     address_prefixes=["10.0.1.0/24"])
/// example_public_ip = azure.network.PublicIp("example",
///     name="test",
///     location=example.location,
///     resource_group_name=example.name,
///     allocation_method="Dynamic")
/// example_virtual_network_gateway = azure.network.VirtualNetworkGateway("example",
///     name="test",
///     location=example.location,
///     resource_group_name=example.name,
///     type="Vpn",
///     vpn_type="RouteBased",
///     active_active=False,
///     bgp_enabled=False,
///     sku="Basic",
///     ip_configurations=[{
///         "name": "vnetGatewayConfig",
///         "public_ip_address_id": example_public_ip.id,
///         "private_ip_address_allocation": "Dynamic",
///         "subnet_id": example_subnet.id,
///     }],
///     vpn_client_configuration={
///         "address_spaces": ["10.2.0.0/24"],
///         "root_certificates": [{
///             "name": "DigiCert-Federated-ID-Root-CA",
///             "public_cert_data": """MIIDuzCCAqOgAwIBAgIQCHTZWCM+IlfFIRXIvyKSrjANBgkqhkiG9w0BAQsFADBn
/// MQswCQYDVQQGEwJVUzEVMBMGA1UEChMMRGlnaUNlcnQgSW5jMRkwFwYDVQQLExB3
/// d3cuZGlnaWNlcnQuY29tMSYwJAYDVQQDEx1EaWdpQ2VydCBGZWRlcmF0ZWQgSUQg
/// Um9vdCBDQTAeFw0xMzAxMTUxMjAwMDBaFw0zMzAxMTUxMjAwMDBaMGcxCzAJBgNV
/// BAYTAlVTMRUwEwYDVQQKEwxEaWdpQ2VydCBJbmMxGTAXBgNVBAsTEHd3dy5kaWdp
/// Y2VydC5jb20xJjAkBgNVBAMTHURpZ2lDZXJ0IEZlZGVyYXRlZCBJRCBSb290IENB
/// MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvAEB4pcCqnNNOWE6Ur5j
/// QPUH+1y1F9KdHTRSza6k5iDlXq1kGS1qAkuKtw9JsiNRrjltmFnzMZRBbX8Tlfl8
/// zAhBmb6dDduDGED01kBsTkgywYPxXVTKec0WxYEEF0oMn4wSYNl0lt2eJAKHXjNf
/// GTwiibdP8CUR2ghSM2sUTI8Nt1Omfc4SMHhGhYD64uJMbX98THQ/4LMGuYegou+d
/// GTiahfHtjn7AboSEknwAMJHCh5RlYZZ6B1O4QbKJ+34Q0eKgnI3X6Vc9u0zf6DH8
/// Dk+4zQDYRRTqTnVO3VT8jzqDlCRuNtq6YvryOWN74/dq8LQhUnXHvFyrsdMaE1X2
/// DwIDAQABo2MwYTAPBgNVHRMBAf8EBTADAQH/MA4GA1UdDwEB/wQEAwIBhjAdBgNV
/// HQ4EFgQUGRdkFnbGt1EWjKwbUne+5OaZvRYwHwYDVR0jBBgwFoAUGRdkFnbGt1EW
/// jKwbUne+5OaZvRYwDQYJKoZIhvcNAQELBQADggEBAHcqsHkrjpESqfuVTRiptJfP
/// 9JbdtWqRTmOf6uJi2c8YVqI6XlKXsD8C1dUUaaHKLUJzvKiazibVuBwMIT84AyqR
/// QELn3e0BtgEymEygMU569b01ZPxoFSnNXc7qDZBDef8WfqAV/sxkTi8L9BkmFYfL
/// uGLOhRJOFprPdoDIUBB+tmCl3oDcBy3vnUeOEioz8zAkprcb3GHwHAK+vHmmfgcn
/// WsfMLH4JCLa/tRYL+Rw/N3ybCkDp00s0WUZ+AoDywSl0Q/ZEnNY0MsFiw6LyIdbq
/// M/s/1JRtO3bDSzD9TazRVzn2oBqzSa8VgIo5C1nOnoAKJTlsClJKvIhnRlaLQqk=
/// """,
///         }],
///         "revoked_certificates": [{
///             "name": "Verizon-Global-Root-CA",
///             "thumbprint": "912198EEF23DCAC40939312FEE97DD560BAE49B1",
///         }],
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
///         Name = "test",
///         Location = "West Europe",
///     });
///
///     var exampleVirtualNetwork = new Azure.Network.VirtualNetwork("example", new()
///     {
///         Name = "test",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         AddressSpaces = new[]
///         {
///             "10.0.0.0/16",
///         },
///     });
///
///     var exampleSubnet = new Azure.Network.Subnet("example", new()
///     {
///         Name = "GatewaySubnet",
///         ResourceGroupName = example.Name,
///         VirtualNetworkName = exampleVirtualNetwork.Name,
///         AddressPrefixes = new[]
///         {
///             "10.0.1.0/24",
///         },
///     });
///
///     var examplePublicIp = new Azure.Network.PublicIp("example", new()
///     {
///         Name = "test",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         AllocationMethod = "Dynamic",
///     });
///
///     var exampleVirtualNetworkGateway = new Azure.Network.VirtualNetworkGateway("example", new()
///     {
///         Name = "test",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         Type = "Vpn",
///         VpnType = "RouteBased",
///         ActiveActive = false,
///         BgpEnabled = false,
///         Sku = "Basic",
///         IpConfigurations = new[]
///         {
///             new Azure.Network.Inputs.VirtualNetworkGatewayIpConfigurationArgs
///             {
///                 Name = "vnetGatewayConfig",
///                 PublicIpAddressId = examplePublicIp.Id,
///                 PrivateIpAddressAllocation = "Dynamic",
///                 SubnetId = exampleSubnet.Id,
///             },
///         },
///         VpnClientConfiguration = new Azure.Network.Inputs.VirtualNetworkGatewayVpnClientConfigurationArgs
///         {
///             AddressSpaces = new[]
///             {
///                 "10.2.0.0/24",
///             },
///             RootCertificates = new[]
///             {
///                 new Azure.Network.Inputs.VirtualNetworkGatewayVpnClientConfigurationRootCertificateArgs
///                 {
///                     Name = "DigiCert-Federated-ID-Root-CA",
///                     PublicCertData = @"MIIDuzCCAqOgAwIBAgIQCHTZWCM+IlfFIRXIvyKSrjANBgkqhkiG9w0BAQsFADBn
/// MQswCQYDVQQGEwJVUzEVMBMGA1UEChMMRGlnaUNlcnQgSW5jMRkwFwYDVQQLExB3
/// d3cuZGlnaWNlcnQuY29tMSYwJAYDVQQDEx1EaWdpQ2VydCBGZWRlcmF0ZWQgSUQg
/// Um9vdCBDQTAeFw0xMzAxMTUxMjAwMDBaFw0zMzAxMTUxMjAwMDBaMGcxCzAJBgNV
/// BAYTAlVTMRUwEwYDVQQKEwxEaWdpQ2VydCBJbmMxGTAXBgNVBAsTEHd3dy5kaWdp
/// Y2VydC5jb20xJjAkBgNVBAMTHURpZ2lDZXJ0IEZlZGVyYXRlZCBJRCBSb290IENB
/// MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvAEB4pcCqnNNOWE6Ur5j
/// QPUH+1y1F9KdHTRSza6k5iDlXq1kGS1qAkuKtw9JsiNRrjltmFnzMZRBbX8Tlfl8
/// zAhBmb6dDduDGED01kBsTkgywYPxXVTKec0WxYEEF0oMn4wSYNl0lt2eJAKHXjNf
/// GTwiibdP8CUR2ghSM2sUTI8Nt1Omfc4SMHhGhYD64uJMbX98THQ/4LMGuYegou+d
/// GTiahfHtjn7AboSEknwAMJHCh5RlYZZ6B1O4QbKJ+34Q0eKgnI3X6Vc9u0zf6DH8
/// Dk+4zQDYRRTqTnVO3VT8jzqDlCRuNtq6YvryOWN74/dq8LQhUnXHvFyrsdMaE1X2
/// DwIDAQABo2MwYTAPBgNVHRMBAf8EBTADAQH/MA4GA1UdDwEB/wQEAwIBhjAdBgNV
/// HQ4EFgQUGRdkFnbGt1EWjKwbUne+5OaZvRYwHwYDVR0jBBgwFoAUGRdkFnbGt1EW
/// jKwbUne+5OaZvRYwDQYJKoZIhvcNAQELBQADggEBAHcqsHkrjpESqfuVTRiptJfP
/// 9JbdtWqRTmOf6uJi2c8YVqI6XlKXsD8C1dUUaaHKLUJzvKiazibVuBwMIT84AyqR
/// QELn3e0BtgEymEygMU569b01ZPxoFSnNXc7qDZBDef8WfqAV/sxkTi8L9BkmFYfL
/// uGLOhRJOFprPdoDIUBB+tmCl3oDcBy3vnUeOEioz8zAkprcb3GHwHAK+vHmmfgcn
/// WsfMLH4JCLa/tRYL+Rw/N3ybCkDp00s0WUZ+AoDywSl0Q/ZEnNY0MsFiw6LyIdbq
/// M/s/1JRtO3bDSzD9TazRVzn2oBqzSa8VgIo5C1nOnoAKJTlsClJKvIhnRlaLQqk=
/// ",
///                 },
///             },
///             RevokedCertificates = new[]
///             {
///                 new Azure.Network.Inputs.VirtualNetworkGatewayVpnClientConfigurationRevokedCertificateArgs
///                 {
///                     Name = "Verizon-Global-Root-CA",
///                     Thumbprint = "912198EEF23DCAC40939312FEE97DD560BAE49B1",
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/network"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("test"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleVirtualNetwork, err := network.NewVirtualNetwork(ctx, "example", &network.VirtualNetworkArgs{
/// 			Name:              pulumi.String("test"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			AddressSpaces: pulumi.StringArray{
/// 				pulumi.String("10.0.0.0/16"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleSubnet, err := network.NewSubnet(ctx, "example", &network.SubnetArgs{
/// 			Name:               pulumi.String("GatewaySubnet"),
/// 			ResourceGroupName:  example.Name,
/// 			VirtualNetworkName: exampleVirtualNetwork.Name,
/// 			AddressPrefixes: pulumi.StringArray{
/// 				pulumi.String("10.0.1.0/24"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		examplePublicIp, err := network.NewPublicIp(ctx, "example", &network.PublicIpArgs{
/// 			Name:              pulumi.String("test"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			AllocationMethod:  pulumi.String("Dynamic"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = network.NewVirtualNetworkGateway(ctx, "example", &network.VirtualNetworkGatewayArgs{
/// 			Name:              pulumi.String("test"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			Type:              pulumi.String("Vpn"),
/// 			VpnType:           pulumi.String("RouteBased"),
/// 			ActiveActive:      pulumi.Bool(false),
/// 			BgpEnabled:        pulumi.Bool(false),
/// 			Sku:               pulumi.String("Basic"),
/// 			IpConfigurations: network.VirtualNetworkGatewayIpConfigurationArray{
/// 				&network.VirtualNetworkGatewayIpConfigurationArgs{
/// 					Name:                       pulumi.String("vnetGatewayConfig"),
/// 					PublicIpAddressId:          examplePublicIp.ID(),
/// 					PrivateIpAddressAllocation: pulumi.String("Dynamic"),
/// 					SubnetId:                   exampleSubnet.ID(),
/// 				},
/// 			},
/// 			VpnClientConfiguration: &network.VirtualNetworkGatewayVpnClientConfigurationArgs{
/// 				AddressSpaces: pulumi.StringArray{
/// 					pulumi.String("10.2.0.0/24"),
/// 				},
/// 				RootCertificates: network.VirtualNetworkGatewayVpnClientConfigurationRootCertificateArray{
/// 					&network.VirtualNetworkGatewayVpnClientConfigurationRootCertificateArgs{
/// 						Name: pulumi.String("DigiCert-Federated-ID-Root-CA"),
/// 						PublicCertData: pulumi.String(`MIIDuzCCAqOgAwIBAgIQCHTZWCM+IlfFIRXIvyKSrjANBgkqhkiG9w0BAQsFADBn
/// MQswCQYDVQQGEwJVUzEVMBMGA1UEChMMRGlnaUNlcnQgSW5jMRkwFwYDVQQLExB3
/// d3cuZGlnaWNlcnQuY29tMSYwJAYDVQQDEx1EaWdpQ2VydCBGZWRlcmF0ZWQgSUQg
/// Um9vdCBDQTAeFw0xMzAxMTUxMjAwMDBaFw0zMzAxMTUxMjAwMDBaMGcxCzAJBgNV
/// BAYTAlVTMRUwEwYDVQQKEwxEaWdpQ2VydCBJbmMxGTAXBgNVBAsTEHd3dy5kaWdp
/// Y2VydC5jb20xJjAkBgNVBAMTHURpZ2lDZXJ0IEZlZGVyYXRlZCBJRCBSb290IENB
/// MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvAEB4pcCqnNNOWE6Ur5j
/// QPUH+1y1F9KdHTRSza6k5iDlXq1kGS1qAkuKtw9JsiNRrjltmFnzMZRBbX8Tlfl8
/// zAhBmb6dDduDGED01kBsTkgywYPxXVTKec0WxYEEF0oMn4wSYNl0lt2eJAKHXjNf
/// GTwiibdP8CUR2ghSM2sUTI8Nt1Omfc4SMHhGhYD64uJMbX98THQ/4LMGuYegou+d
/// GTiahfHtjn7AboSEknwAMJHCh5RlYZZ6B1O4QbKJ+34Q0eKgnI3X6Vc9u0zf6DH8
/// Dk+4zQDYRRTqTnVO3VT8jzqDlCRuNtq6YvryOWN74/dq8LQhUnXHvFyrsdMaE1X2
/// DwIDAQABo2MwYTAPBgNVHRMBAf8EBTADAQH/MA4GA1UdDwEB/wQEAwIBhjAdBgNV
/// HQ4EFgQUGRdkFnbGt1EWjKwbUne+5OaZvRYwHwYDVR0jBBgwFoAUGRdkFnbGt1EW
/// jKwbUne+5OaZvRYwDQYJKoZIhvcNAQELBQADggEBAHcqsHkrjpESqfuVTRiptJfP
/// 9JbdtWqRTmOf6uJi2c8YVqI6XlKXsD8C1dUUaaHKLUJzvKiazibVuBwMIT84AyqR
/// QELn3e0BtgEymEygMU569b01ZPxoFSnNXc7qDZBDef8WfqAV/sxkTi8L9BkmFYfL
/// uGLOhRJOFprPdoDIUBB+tmCl3oDcBy3vnUeOEioz8zAkprcb3GHwHAK+vHmmfgcn
/// WsfMLH4JCLa/tRYL+Rw/N3ybCkDp00s0WUZ+AoDywSl0Q/ZEnNY0MsFiw6LyIdbq
/// M/s/1JRtO3bDSzD9TazRVzn2oBqzSa8VgIo5C1nOnoAKJTlsClJKvIhnRlaLQqk=
/// `),
/// 					},
/// 				},
/// 				RevokedCertificates: network.VirtualNetworkGatewayVpnClientConfigurationRevokedCertificateArray{
/// 					&network.VirtualNetworkGatewayVpnClientConfigurationRevokedCertificateArgs{
/// 						Name:       pulumi.String("Verizon-Global-Root-CA"),
/// 						Thumbprint: pulumi.String("912198EEF23DCAC40939312FEE97DD560BAE49B1"),
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
/// resource "azure_core_resourcegroup" "example" {
///   name     = "test"
///   location = "West Europe"
/// }
/// resource "azure_network_virtualnetwork" "example" {
///   name                = "test"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   address_spaces      = ["10.0.0.0/16"]
/// }
/// resource "azure_network_subnet" "example" {
///   name                 = "GatewaySubnet"
///   resource_group_name  = azure_core_resourcegroup.example.name
///   virtual_network_name = azure_network_virtualnetwork.example.name
///   address_prefixes     = ["10.0.1.0/24"]
/// }
/// resource "azure_network_publicip" "example" {
///   name                = "test"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   allocation_method   = "Dynamic"
/// }
/// resource "azure_network_virtualnetworkgateway" "example" {
///   name                = "test"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   type                = "Vpn"
///   vpn_type            = "RouteBased"
///   active_active       = false
///   bgp_enabled         = false
///   sku                 = "Basic"
///   ip_configurations {
///     name                          = "vnetGatewayConfig"
///     public_ip_address_id          = azure_network_publicip.example.id
///     private_ip_address_allocation = "Dynamic"
///     subnet_id                     = azure_network_subnet.example.id
///   }
///   vpn_client_configuration = {
///     address_spaces = ["10.2.0.0/24"]
///     root_certificates = [{
///       "name"           = "DigiCert-Federated-ID-Root-CA"
///       "publicCertData" = "MIIDuzCCAqOgAwIBAgIQCHTZWCM+IlfFIRXIvyKSrjANBgkqhkiG9w0BAQsFADBn\nMQswCQYDVQQGEwJVUzEVMBMGA1UEChMMRGlnaUNlcnQgSW5jMRkwFwYDVQQLExB3\nd3cuZGlnaWNlcnQuY29tMSYwJAYDVQQDEx1EaWdpQ2VydCBGZWRlcmF0ZWQgSUQg\nUm9vdCBDQTAeFw0xMzAxMTUxMjAwMDBaFw0zMzAxMTUxMjAwMDBaMGcxCzAJBgNV\nBAYTAlVTMRUwEwYDVQQKEwxEaWdpQ2VydCBJbmMxGTAXBgNVBAsTEHd3dy5kaWdp\nY2VydC5jb20xJjAkBgNVBAMTHURpZ2lDZXJ0IEZlZGVyYXRlZCBJRCBSb290IENB\nMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvAEB4pcCqnNNOWE6Ur5j\nQPUH+1y1F9KdHTRSza6k5iDlXq1kGS1qAkuKtw9JsiNRrjltmFnzMZRBbX8Tlfl8\nzAhBmb6dDduDGED01kBsTkgywYPxXVTKec0WxYEEF0oMn4wSYNl0lt2eJAKHXjNf\nGTwiibdP8CUR2ghSM2sUTI8Nt1Omfc4SMHhGhYD64uJMbX98THQ/4LMGuYegou+d\nGTiahfHtjn7AboSEknwAMJHCh5RlYZZ6B1O4QbKJ+34Q0eKgnI3X6Vc9u0zf6DH8\nDk+4zQDYRRTqTnVO3VT8jzqDlCRuNtq6YvryOWN74/dq8LQhUnXHvFyrsdMaE1X2\nDwIDAQABo2MwYTAPBgNVHRMBAf8EBTADAQH/MA4GA1UdDwEB/wQEAwIBhjAdBgNV\nHQ4EFgQUGRdkFnbGt1EWjKwbUne+5OaZvRYwHwYDVR0jBBgwFoAUGRdkFnbGt1EW\njKwbUne+5OaZvRYwDQYJKoZIhvcNAQELBQADggEBAHcqsHkrjpESqfuVTRiptJfP\n9JbdtWqRTmOf6uJi2c8YVqI6XlKXsD8C1dUUaaHKLUJzvKiazibVuBwMIT84AyqR\nQELn3e0BtgEymEygMU569b01ZPxoFSnNXc7qDZBDef8WfqAV/sxkTi8L9BkmFYfL\nuGLOhRJOFprPdoDIUBB+tmCl3oDcBy3vnUeOEioz8zAkprcb3GHwHAK+vHmmfgcn\nWsfMLH4JCLa/tRYL+Rw/N3ybCkDp00s0WUZ+AoDywSl0Q/ZEnNY0MsFiw6LyIdbq\nM/s/1JRtO3bDSzD9TazRVzn2oBqzSa8VgIo5C1nOnoAKJTlsClJKvIhnRlaLQqk=\n"
///     }]
///     revoked_certificates = [{
///       "name"       = "Verizon-Global-Root-CA"
///       "thumbprint" = "912198EEF23DCAC40939312FEE97DD560BAE49B1"
///     }]
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
/// import com.pulumi.azure.network.VirtualNetwork;
/// import com.pulumi.azure.network.VirtualNetworkArgs;
/// import com.pulumi.azure.network.Subnet;
/// import com.pulumi.azure.network.SubnetArgs;
/// import com.pulumi.azure.network.PublicIp;
/// import com.pulumi.azure.network.PublicIpArgs;
/// import com.pulumi.azure.network.VirtualNetworkGateway;
/// import com.pulumi.azure.network.VirtualNetworkGatewayArgs;
/// import com.pulumi.azure.network.inputs.VirtualNetworkGatewayIpConfigurationArgs;
/// import com.pulumi.azure.network.inputs.VirtualNetworkGatewayVpnClientConfigurationArgs;
/// import com.pulumi.azure.network.inputs.VirtualNetworkGatewayVpnClientConfigurationRootCertificateArgs;
/// import com.pulumi.azure.network.inputs.VirtualNetworkGatewayVpnClientConfigurationRevokedCertificateArgs;
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
///             .name("test")
///             .location("West Europe")
///             .build());
///
///         var exampleVirtualNetwork = new VirtualNetwork("exampleVirtualNetwork", VirtualNetworkArgs.builder()
///             .name("test")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .addressSpaces("10.0.0.0/16")
///             .build());
///
///         var exampleSubnet = new Subnet("exampleSubnet", SubnetArgs.builder()
///             .name("GatewaySubnet")
///             .resourceGroupName(example.name())
///             .virtualNetworkName(exampleVirtualNetwork.name())
///             .addressPrefixes("10.0.1.0/24")
///             .build());
///
///         var examplePublicIp = new PublicIp("examplePublicIp", PublicIpArgs.builder()
///             .name("test")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .allocationMethod("Dynamic")
///             .build());
///
///         var exampleVirtualNetworkGateway = new VirtualNetworkGateway("exampleVirtualNetworkGateway", VirtualNetworkGatewayArgs.builder()
///             .name("test")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .type("Vpn")
///             .vpnType("RouteBased")
///             .activeActive(false)
///             .bgpEnabled(false)
///             .sku("Basic")
///             .ipConfigurations(VirtualNetworkGatewayIpConfigurationArgs.builder()
///                 .name("vnetGatewayConfig")
///                 .publicIpAddressId(examplePublicIp.id())
///                 .privateIpAddressAllocation("Dynamic")
///                 .subnetId(exampleSubnet.id())
///                 .build())
///             .vpnClientConfiguration(VirtualNetworkGatewayVpnClientConfigurationArgs.builder()
///                 .addressSpaces("10.2.0.0/24")
///                 .rootCertificates(VirtualNetworkGatewayVpnClientConfigurationRootCertificateArgs.builder()
///                     .name("DigiCert-Federated-ID-Root-CA")
///                     .publicCertData("""
/// MIIDuzCCAqOgAwIBAgIQCHTZWCM+IlfFIRXIvyKSrjANBgkqhkiG9w0BAQsFADBn
/// MQswCQYDVQQGEwJVUzEVMBMGA1UEChMMRGlnaUNlcnQgSW5jMRkwFwYDVQQLExB3
/// d3cuZGlnaWNlcnQuY29tMSYwJAYDVQQDEx1EaWdpQ2VydCBGZWRlcmF0ZWQgSUQg
/// Um9vdCBDQTAeFw0xMzAxMTUxMjAwMDBaFw0zMzAxMTUxMjAwMDBaMGcxCzAJBgNV
/// BAYTAlVTMRUwEwYDVQQKEwxEaWdpQ2VydCBJbmMxGTAXBgNVBAsTEHd3dy5kaWdp
/// Y2VydC5jb20xJjAkBgNVBAMTHURpZ2lDZXJ0IEZlZGVyYXRlZCBJRCBSb290IENB
/// MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvAEB4pcCqnNNOWE6Ur5j
/// QPUH+1y1F9KdHTRSza6k5iDlXq1kGS1qAkuKtw9JsiNRrjltmFnzMZRBbX8Tlfl8
/// zAhBmb6dDduDGED01kBsTkgywYPxXVTKec0WxYEEF0oMn4wSYNl0lt2eJAKHXjNf
/// GTwiibdP8CUR2ghSM2sUTI8Nt1Omfc4SMHhGhYD64uJMbX98THQ/4LMGuYegou+d
/// GTiahfHtjn7AboSEknwAMJHCh5RlYZZ6B1O4QbKJ+34Q0eKgnI3X6Vc9u0zf6DH8
/// Dk+4zQDYRRTqTnVO3VT8jzqDlCRuNtq6YvryOWN74/dq8LQhUnXHvFyrsdMaE1X2
/// DwIDAQABo2MwYTAPBgNVHRMBAf8EBTADAQH/MA4GA1UdDwEB/wQEAwIBhjAdBgNV
/// HQ4EFgQUGRdkFnbGt1EWjKwbUne+5OaZvRYwHwYDVR0jBBgwFoAUGRdkFnbGt1EW
/// jKwbUne+5OaZvRYwDQYJKoZIhvcNAQELBQADggEBAHcqsHkrjpESqfuVTRiptJfP
/// 9JbdtWqRTmOf6uJi2c8YVqI6XlKXsD8C1dUUaaHKLUJzvKiazibVuBwMIT84AyqR
/// QELn3e0BtgEymEygMU569b01ZPxoFSnNXc7qDZBDef8WfqAV/sxkTi8L9BkmFYfL
/// uGLOhRJOFprPdoDIUBB+tmCl3oDcBy3vnUeOEioz8zAkprcb3GHwHAK+vHmmfgcn
/// WsfMLH4JCLa/tRYL+Rw/N3ybCkDp00s0WUZ+AoDywSl0Q/ZEnNY0MsFiw6LyIdbq
/// M/s/1JRtO3bDSzD9TazRVzn2oBqzSa8VgIo5C1nOnoAKJTlsClJKvIhnRlaLQqk=
///                     """)
///                     .build())
///                 .revokedCertificates(VirtualNetworkGatewayVpnClientConfigurationRevokedCertificateArgs.builder()
///                     .name("Verizon-Global-Root-CA")
///                     .thumbprint("912198EEF23DCAC40939312FEE97DD560BAE49B1")
///                     .build())
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
///       name: test
///       location: West Europe
///   exampleVirtualNetwork:
///     type: azure:network:VirtualNetwork
///     name: example
///     properties:
///       name: test
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       addressSpaces:
///         - 10.0.0.0/16
///   exampleSubnet:
///     type: azure:network:Subnet
///     name: example
///     properties:
///       name: GatewaySubnet
///       resourceGroupName: ${example.name}
///       virtualNetworkName: ${exampleVirtualNetwork.name}
///       addressPrefixes:
///         - 10.0.1.0/24
///   examplePublicIp:
///     type: azure:network:PublicIp
///     name: example
///     properties:
///       name: test
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       allocationMethod: Dynamic
///   exampleVirtualNetworkGateway:
///     type: azure:network:VirtualNetworkGateway
///     name: example
///     properties:
///       name: test
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       type: Vpn
///       vpnType: RouteBased
///       activeActive: false
///       bgpEnabled: false
///       sku: Basic
///       ipConfigurations:
///         - name: vnetGatewayConfig
///           publicIpAddressId: ${examplePublicIp.id}
///           privateIpAddressAllocation: Dynamic
///           subnetId: ${exampleSubnet.id}
///       vpnClientConfiguration:
///         addressSpaces:
///           - 10.2.0.0/24
///         rootCertificates:
///           - name: DigiCert-Federated-ID-Root-CA
///             publicCertData: |
///               MIIDuzCCAqOgAwIBAgIQCHTZWCM+IlfFIRXIvyKSrjANBgkqhkiG9w0BAQsFADBn
///               MQswCQYDVQQGEwJVUzEVMBMGA1UEChMMRGlnaUNlcnQgSW5jMRkwFwYDVQQLExB3
///               d3cuZGlnaWNlcnQuY29tMSYwJAYDVQQDEx1EaWdpQ2VydCBGZWRlcmF0ZWQgSUQg
///               Um9vdCBDQTAeFw0xMzAxMTUxMjAwMDBaFw0zMzAxMTUxMjAwMDBaMGcxCzAJBgNV
///               BAYTAlVTMRUwEwYDVQQKEwxEaWdpQ2VydCBJbmMxGTAXBgNVBAsTEHd3dy5kaWdp
///               Y2VydC5jb20xJjAkBgNVBAMTHURpZ2lDZXJ0IEZlZGVyYXRlZCBJRCBSb290IENB
///               MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvAEB4pcCqnNNOWE6Ur5j
///               QPUH+1y1F9KdHTRSza6k5iDlXq1kGS1qAkuKtw9JsiNRrjltmFnzMZRBbX8Tlfl8
///               zAhBmb6dDduDGED01kBsTkgywYPxXVTKec0WxYEEF0oMn4wSYNl0lt2eJAKHXjNf
///               GTwiibdP8CUR2ghSM2sUTI8Nt1Omfc4SMHhGhYD64uJMbX98THQ/4LMGuYegou+d
///               GTiahfHtjn7AboSEknwAMJHCh5RlYZZ6B1O4QbKJ+34Q0eKgnI3X6Vc9u0zf6DH8
///               Dk+4zQDYRRTqTnVO3VT8jzqDlCRuNtq6YvryOWN74/dq8LQhUnXHvFyrsdMaE1X2
///               DwIDAQABo2MwYTAPBgNVHRMBAf8EBTADAQH/MA4GA1UdDwEB/wQEAwIBhjAdBgNV
///               HQ4EFgQUGRdkFnbGt1EWjKwbUne+5OaZvRYwHwYDVR0jBBgwFoAUGRdkFnbGt1EW
///               jKwbUne+5OaZvRYwDQYJKoZIhvcNAQELBQADggEBAHcqsHkrjpESqfuVTRiptJfP
///               9JbdtWqRTmOf6uJi2c8YVqI6XlKXsD8C1dUUaaHKLUJzvKiazibVuBwMIT84AyqR
///               QELn3e0BtgEymEygMU569b01ZPxoFSnNXc7qDZBDef8WfqAV/sxkTi8L9BkmFYfL
///               uGLOhRJOFprPdoDIUBB+tmCl3oDcBy3vnUeOEioz8zAkprcb3GHwHAK+vHmmfgcn
///               WsfMLH4JCLa/tRYL+Rw/N3ybCkDp00s0WUZ+AoDywSl0Q/ZEnNY0MsFiw6LyIdbq
///               M/s/1JRtO3bDSzD9TazRVzn2oBqzSa8VgIo5C1nOnoAKJTlsClJKvIhnRlaLQqk=
///         revokedCertificates:
///           - name: Verizon-Global-Root-CA
///             thumbprint: 912198EEF23DCAC40939312FEE97DD560BAE49B1
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Network` - 2025-01-01
///
/// ## Import
///
/// Virtual Network Gateways can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:network/virtualNetworkGateway:VirtualNetworkGateway exampleGateway /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myGroup1/providers/Microsoft.Network/virtualNetworkGateways/myGateway1
/// ```
class VirtualNetworkGateway extends pulumi.CustomResource {
  /// If `true`, an active-active Virtual Network Gateway will be created. An active-active gateway requires a `HighPerformance` or an `UltraPerformance` SKU. If `false`, an active-standby gateway will be created. Defaults to `false`.
  late final pulumi.Output<bool> activeActive;
  /// If `true`, BGP (Border Gateway Protocol) will be enabled for this Virtual Network Gateway. Defaults to `false`.
  late final pulumi.Output<bool> bgpEnabled;
  /// Is BGP Route Translation for NAT enabled? Defaults to `false`.
  late final pulumi.Output<bool?> bgpRouteTranslationForNatEnabled;
  /// A `bgpSettings` block which is documented below. In this block the BGP specific settings can be defined.
  late final pulumi.Output<VirtualNetworkGatewayBgpSettings> bgpSettings;
  /// A `customRoute` block as defined below. Specifies a custom routes address space for a virtual network gateway and a VpnClient.
  late final pulumi.Output<VirtualNetworkGatewayCustomRoute?> customRoute;
  /// The ID of the local network gateway through which outbound Internet traffic from the virtual network in which the gateway is created will be routed (*forced tunnelling*). Refer to the [Azure documentation on forced tunnelling](https://docs.microsoft.com/azure/vpn-gateway/vpn-gateway-forced-tunneling-rm). If not specified, forced tunnelling is disabled.
  late final pulumi.Output<String?> defaultLocalNetworkGatewayId;
  /// Is DNS forwarding enabled?
  late final pulumi.Output<bool?> dnsForwardingEnabled;
  /// Specifies the Edge Zone within the Azure Region where this Virtual Network Gateway should exist. Changing this forces a new Virtual Network Gateway to be created.
  late final pulumi.Output<String?> edgeZone;
  late final pulumi.Output<bool> enableBgp;
  /// The Generation of the Virtual Network gateway. Possible values include `Generation1`, `Generation2` or `None`. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** The available values depend on the `type` and `sku` arguments - where `Generation2` is only value for a `sku` larger than `VpnGw2` or `VpnGw2AZ`.
  late final pulumi.Output<String> generation;
  /// One or more (up to 3) `ipConfiguration` blocks documented below. Changing this forces a new resource to be created. An active-standby gateway requires exactly one `ipConfiguration` block, an active-active gateway requires exactly two `ipConfiguration` blocks whereas an active-active zone redundant gateway with P2S configuration requires exactly three `ipConfiguration` blocks.
  late final pulumi.Output<List<Map<String, dynamic>>> ipConfigurations;
  /// Is IP Sec Replay Protection enabled? Defaults to `true`.
  late final pulumi.Output<bool?> ipSecReplayProtectionEnabled;
  /// The location/region where the Virtual Network Gateway is located. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;
  /// The maximum scale unit for the Virtual Network Gateway, possible values are `1` through `40`.
  ///
  /// &gt; **Note:** `maximumScaleUnit` is only supported for the `ErGwScale` SKU.
  late final pulumi.Output<int> maximumScaleUnit;
  /// The minimum scale unit for the Virtual Network Gateway, possible values are `1` through `40`.
  ///
  /// &gt; **Note:** `minimumScaleUnit` is only supported for the `ErGwScale` SKU.
  ///
  /// &gt; **Note:** To configure a `fixed-size` gateway, set `minimumScaleUnit` and `maximumScaleUnit` to the same value. To enable `autoscaling`, set `minimumScaleUnit` to `2` or higher and `maximumScaleUnit` up to `40`. When `maximumScaleUnit` is set to `1`, `minimumScaleUnit` must also be set to `1`.
  ///
  /// &gt; **Note:** Changing the `sku` between an availability-zone SKU (`ErGwScale`, `ErGw1AZ`, `ErGw2AZ`, `ErGw3AZ`) and a non-availability-zone SKU (`Standard`, `HighPerformance`, `UltraPerformance`) forces a new resource to be created.
  late final pulumi.Output<int> minimumScaleUnit;
  /// The name of the Virtual Network Gateway. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// One or more `policyGroup` blocks as defined below.
  late final pulumi.Output<List<Map<String, dynamic>>?> policyGroups;
  /// Should private IP be enabled on this gateway for connections? Changing this forces a new resource to be created.
  late final pulumi.Output<bool?> privateIpAddressEnabled;
  /// Is remote vnet traffic that is used to configure this gateway to accept traffic from other Azure Virtual Networks enabled? Defaults to `false`.
  late final pulumi.Output<bool?> remoteVnetTrafficEnabled;
  /// The name of the resource group in which to create the Virtual Network Gateway. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// Configuration of the size and capacity of the virtual network gateway. Valid options are `Basic`, `Standard`, `HighPerformance`, `UltraPerformance`, `ErGwScale`, `ErGw1AZ`, `ErGw2AZ`, `ErGw3AZ`, `VpnGw1`, `VpnGw2`, `VpnGw3`, `VpnGw4`,`VpnGw5`, `VpnGw1AZ`, `VpnGw2AZ`, `VpnGw3AZ`,`VpnGw4AZ` and `VpnGw5AZ` and depend on the `type`, `vpnType` and `generation` arguments. A `PolicyBased` gateway only supports the `Basic` SKU. Further, the `UltraPerformance` and `ErGwScale` SKU is only supported by an `ExpressRoute` gateway.
  ///
  /// &gt; **Note:** To build a UltraPerformance ExpressRoute Virtual Network gateway, the associated Public IP needs to be SKU "Basic" not "Standard"
  ///
  /// &gt; **Note:** Not all SKUs (e.g. `ErGw1AZ`) are available in all regions. If you see `StatusCode=400 -- Original Error: Code="InvalidGatewaySkuSpecifiedForGatewayDeploymentType"` please try another region.
  late final pulumi.Output<String> sku;
  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the Virtual Network Gateway. Valid options are `Vpn` or `ExpressRoute`. Changing the type forces a new resource to be created.
  late final pulumi.Output<String> type;
  /// Is remote vnet traffic that is used to configure this gateway to accept traffic from remote Virtual WAN networks enabled? Defaults to `false`.
  late final pulumi.Output<bool?> virtualWanTrafficEnabled;
  /// A `vpnClientConfiguration` block which is documented below. In this block the Virtual Network Gateway can be configured to accept IPSec point-to-site connections.
  late final pulumi.Output<VirtualNetworkGatewayVpnClientConfiguration?> vpnClientConfiguration;
  /// The routing type of the Virtual Network Gateway. Valid options are `RouteBased` or `PolicyBased`. Defaults to `RouteBased`. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> vpnType;

  /// Creates a new [VirtualNetworkGateway].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VirtualNetworkGateway]. {@macro pulumi_network_virtual_network_gateway_virtual_network_gateway_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VirtualNetworkGateway(
    String name, {
    VirtualNetworkGatewayArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:network/virtualNetworkGateway:VirtualNetworkGateway',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    activeActive = registerOutput<bool>('activeActive');
    bgpEnabled = registerOutput<bool>('bgpEnabled');
    bgpRouteTranslationForNatEnabled = registerOutput<bool?>('bgpRouteTranslationForNatEnabled');
    bgpSettings = registerOutput<VirtualNetworkGatewayBgpSettings>('bgpSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VirtualNetworkGatewayBgpSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    customRoute = registerOutput<VirtualNetworkGatewayCustomRoute?>('customRoute', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VirtualNetworkGatewayCustomRoute.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    defaultLocalNetworkGatewayId = registerOutput<String?>('defaultLocalNetworkGatewayId');
    dnsForwardingEnabled = registerOutput<bool?>('dnsForwardingEnabled');
    edgeZone = registerOutput<String?>('edgeZone');
    enableBgp = registerOutput<bool>('enableBgp');
    generation = registerOutput<String>('generation');
    ipConfigurations = registerOutput<List<Map<String, dynamic>>>('ipConfigurations');
    ipSecReplayProtectionEnabled = registerOutput<bool?>('ipSecReplayProtectionEnabled');
    location = registerOutput<String>('location');
    maximumScaleUnit = registerOutput<int>('maximumScaleUnit');
    minimumScaleUnit = registerOutput<int>('minimumScaleUnit');
    this.name = registerOutput<String>('name');
    policyGroups = registerOutput<List<Map<String, dynamic>>?>('policyGroups');
    privateIpAddressEnabled = registerOutput<bool?>('privateIpAddressEnabled');
    remoteVnetTrafficEnabled = registerOutput<bool?>('remoteVnetTrafficEnabled');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    sku = registerOutput<String>('sku');
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
    virtualWanTrafficEnabled = registerOutput<bool?>('virtualWanTrafficEnabled');
    vpnClientConfiguration = registerOutput<VirtualNetworkGatewayVpnClientConfiguration?>('vpnClientConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VirtualNetworkGatewayVpnClientConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    vpnType = registerOutput<String?>('vpnType');
  }

  /// Gets an existing [VirtualNetworkGateway] resource's state with the given [name] and [id].
  static VirtualNetworkGateway get(
    String name,
    pulumi.Input<String> id, {
    VirtualNetworkGatewayState? state,
  }) {
    return VirtualNetworkGateway._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  VirtualNetworkGateway._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:network/virtualNetworkGateway:VirtualNetworkGateway',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    activeActive = registerOutput<bool>('activeActive');
    bgpEnabled = registerOutput<bool>('bgpEnabled');
    bgpRouteTranslationForNatEnabled = registerOutput<bool?>('bgpRouteTranslationForNatEnabled');
    bgpSettings = registerOutput<VirtualNetworkGatewayBgpSettings>('bgpSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VirtualNetworkGatewayBgpSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    customRoute = registerOutput<VirtualNetworkGatewayCustomRoute?>('customRoute', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VirtualNetworkGatewayCustomRoute.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    defaultLocalNetworkGatewayId = registerOutput<String?>('defaultLocalNetworkGatewayId');
    dnsForwardingEnabled = registerOutput<bool?>('dnsForwardingEnabled');
    edgeZone = registerOutput<String?>('edgeZone');
    enableBgp = registerOutput<bool>('enableBgp');
    generation = registerOutput<String>('generation');
    ipConfigurations = registerOutput<List<Map<String, dynamic>>>('ipConfigurations');
    ipSecReplayProtectionEnabled = registerOutput<bool?>('ipSecReplayProtectionEnabled');
    location = registerOutput<String>('location');
    maximumScaleUnit = registerOutput<int>('maximumScaleUnit');
    minimumScaleUnit = registerOutput<int>('minimumScaleUnit');
    this.name = registerOutput<String>('name');
    policyGroups = registerOutput<List<Map<String, dynamic>>?>('policyGroups');
    privateIpAddressEnabled = registerOutput<bool?>('privateIpAddressEnabled');
    remoteVnetTrafficEnabled = registerOutput<bool?>('remoteVnetTrafficEnabled');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    sku = registerOutput<String>('sku');
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
    virtualWanTrafficEnabled = registerOutput<bool?>('virtualWanTrafficEnabled');
    vpnClientConfiguration = registerOutput<VirtualNetworkGatewayVpnClientConfiguration?>('vpnClientConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VirtualNetworkGatewayVpnClientConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    vpnType = registerOutput<String?>('vpnType');
  }
}
