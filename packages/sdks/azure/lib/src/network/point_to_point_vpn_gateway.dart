import 'package:pulumi/pulumi.dart' as pulumi;
import 'point_to_point_vpn_gateway_args.dart';
import 'point_to_point_vpn_gateway_state.dart';

/// Manages a Point-to-Site VPN Gateway.
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
/// const exampleVirtualWan = new azure.network.VirtualWan("example", {
///     name: "example-virtualwan",
///     resourceGroupName: example.name,
///     location: example.location,
/// });
/// const exampleVirtualHub = new azure.network.VirtualHub("example", {
///     name: "example-virtualhub",
///     resourceGroupName: example.name,
///     location: example.location,
///     virtualWanId: exampleVirtualWan.id,
///     addressPrefix: "10.0.0.0/23",
/// });
/// const exampleVpnServerConfiguration = new azure.network.VpnServerConfiguration("example", {
///     name: "example-config",
///     resourceGroupName: example.name,
///     location: example.location,
///     vpnAuthenticationTypes: ["Certificate"],
///     clientRootCertificates: [{
///         name: "DigiCert-Federated-ID-Root-CA",
///         publicCertData: `MIIDuzCCAqOgAwIBAgIQCHTZWCM+IlfFIRXIvyKSrjANBgkqhkiG9w0BAQsFADBn
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
///     }],
/// });
/// const examplePointToPointVpnGateway = new azure.network.PointToPointVpnGateway("example", {
///     name: "example-vpn-gateway",
///     location: example.location,
///     resourceGroupName: example.name,
///     virtualHubId: exampleVirtualHub.id,
///     vpnServerConfigurationId: exampleVpnServerConfiguration.id,
///     scaleUnit: 1,
///     connectionConfigurations: [{
///         name: "example-gateway-config",
///         vpnClientAddressPool: {
///             addressPrefixes: ["10.0.2.0/24"],
///         },
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
/// example_virtual_wan = azure.network.VirtualWan("example",
///     name="example-virtualwan",
///     resource_group_name=example.name,
///     location=example.location)
/// example_virtual_hub = azure.network.VirtualHub("example",
///     name="example-virtualhub",
///     resource_group_name=example.name,
///     location=example.location,
///     virtual_wan_id=example_virtual_wan.id,
///     address_prefix="10.0.0.0/23")
/// example_vpn_server_configuration = azure.network.VpnServerConfiguration("example",
///     name="example-config",
///     resource_group_name=example.name,
///     location=example.location,
///     vpn_authentication_types=["Certificate"],
///     client_root_certificates=[{
///         "name": "DigiCert-Federated-ID-Root-CA",
///         "public_cert_data": """MIIDuzCCAqOgAwIBAgIQCHTZWCM+IlfFIRXIvyKSrjANBgkqhkiG9w0BAQsFADBn
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
///     }])
/// example_point_to_point_vpn_gateway = azure.network.PointToPointVpnGateway("example",
///     name="example-vpn-gateway",
///     location=example.location,
///     resource_group_name=example.name,
///     virtual_hub_id=example_virtual_hub.id,
///     vpn_server_configuration_id=example_vpn_server_configuration.id,
///     scale_unit=1,
///     connection_configurations=[{
///         "name": "example-gateway-config",
///         "vpn_client_address_pool": {
///             "address_prefixes": ["10.0.2.0/24"],
///         },
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
///     var exampleVirtualWan = new Azure.Network.VirtualWan("example", new()
///     {
///         Name = "example-virtualwan",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///     });
///
///     var exampleVirtualHub = new Azure.Network.VirtualHub("example", new()
///     {
///         Name = "example-virtualhub",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         VirtualWanId = exampleVirtualWan.Id,
///         AddressPrefix = "10.0.0.0/23",
///     });
///
///     var exampleVpnServerConfiguration = new Azure.Network.VpnServerConfiguration("example", new()
///     {
///         Name = "example-config",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         VpnAuthenticationTypes = new[]
///         {
///             "Certificate",
///         },
///         ClientRootCertificates = new[]
///         {
///             new Azure.Network.Inputs.VpnServerConfigurationClientRootCertificateArgs
///             {
///                 Name = "DigiCert-Federated-ID-Root-CA",
///                 PublicCertData = @"MIIDuzCCAqOgAwIBAgIQCHTZWCM+IlfFIRXIvyKSrjANBgkqhkiG9w0BAQsFADBn
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
///             },
///         },
///     });
///
///     var examplePointToPointVpnGateway = new Azure.Network.PointToPointVpnGateway("example", new()
///     {
///         Name = "example-vpn-gateway",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         VirtualHubId = exampleVirtualHub.Id,
///         VpnServerConfigurationId = exampleVpnServerConfiguration.Id,
///         ScaleUnit = 1,
///         ConnectionConfigurations = new[]
///         {
///             new Azure.Network.Inputs.PointToPointVpnGatewayConnectionConfigurationArgs
///             {
///                 Name = "example-gateway-config",
///                 VpnClientAddressPool = new Azure.Network.Inputs.PointToPointVpnGatewayConnectionConfigurationVpnClientAddressPoolArgs
///                 {
///                     AddressPrefixes = new[]
///                     {
///                         "10.0.2.0/24",
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/network"
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
/// 		exampleVirtualWan, err := network.NewVirtualWan(ctx, "example", &network.VirtualWanArgs{
/// 			Name:              pulumi.String("example-virtualwan"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleVirtualHub, err := network.NewVirtualHub(ctx, "example", &network.VirtualHubArgs{
/// 			Name:              pulumi.String("example-virtualhub"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			VirtualWanId:      exampleVirtualWan.ID(),
/// 			AddressPrefix:     pulumi.String("10.0.0.0/23"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleVpnServerConfiguration, err := network.NewVpnServerConfiguration(ctx, "example", &network.VpnServerConfigurationArgs{
/// 			Name:              pulumi.String("example-config"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			VpnAuthenticationTypes: pulumi.StringArray{
/// 				pulumi.String("Certificate"),
/// 			},
/// 			ClientRootCertificates: network.VpnServerConfigurationClientRootCertificateArray{
/// 				&network.VpnServerConfigurationClientRootCertificateArgs{
/// 					Name: pulumi.String("DigiCert-Federated-ID-Root-CA"),
/// 					PublicCertData: pulumi.String(`MIIDuzCCAqOgAwIBAgIQCHTZWCM+IlfFIRXIvyKSrjANBgkqhkiG9w0BAQsFADBn
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
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = network.NewPointToPointVpnGateway(ctx, "example", &network.PointToPointVpnGatewayArgs{
/// 			Name:                     pulumi.String("example-vpn-gateway"),
/// 			Location:                 example.Location,
/// 			ResourceGroupName:        example.Name,
/// 			VirtualHubId:             exampleVirtualHub.ID(),
/// 			VpnServerConfigurationId: exampleVpnServerConfiguration.ID(),
/// 			ScaleUnit:                pulumi.Int(1),
/// 			ConnectionConfigurations: network.PointToPointVpnGatewayConnectionConfigurationArray{
/// 				&network.PointToPointVpnGatewayConnectionConfigurationArgs{
/// 					Name: pulumi.String("example-gateway-config"),
/// 					VpnClientAddressPool: &network.PointToPointVpnGatewayConnectionConfigurationVpnClientAddressPoolArgs{
/// 						AddressPrefixes: pulumi.StringArray{
/// 							pulumi.String("10.0.2.0/24"),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.network.VirtualWan;
/// import com.pulumi.azure.network.VirtualWanArgs;
/// import com.pulumi.azure.network.VirtualHub;
/// import com.pulumi.azure.network.VirtualHubArgs;
/// import com.pulumi.azure.network.VpnServerConfiguration;
/// import com.pulumi.azure.network.VpnServerConfigurationArgs;
/// import com.pulumi.azure.network.inputs.VpnServerConfigurationClientRootCertificateArgs;
/// import com.pulumi.azure.network.PointToPointVpnGateway;
/// import com.pulumi.azure.network.PointToPointVpnGatewayArgs;
/// import com.pulumi.azure.network.inputs.PointToPointVpnGatewayConnectionConfigurationArgs;
/// import com.pulumi.azure.network.inputs.PointToPointVpnGatewayConnectionConfigurationVpnClientAddressPoolArgs;
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
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var exampleVirtualWan = new VirtualWan("exampleVirtualWan", VirtualWanArgs.builder()
///             .name("example-virtualwan")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .build());
///
///         var exampleVirtualHub = new VirtualHub("exampleVirtualHub", VirtualHubArgs.builder()
///             .name("example-virtualhub")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .virtualWanId(exampleVirtualWan.id())
///             .addressPrefix("10.0.0.0/23")
///             .build());
///
///         var exampleVpnServerConfiguration = new VpnServerConfiguration("exampleVpnServerConfiguration", VpnServerConfigurationArgs.builder()
///             .name("example-config")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .vpnAuthenticationTypes("Certificate")
///             .clientRootCertificates(VpnServerConfigurationClientRootCertificateArgs.builder()
///                 .name("DigiCert-Federated-ID-Root-CA")
///                 .publicCertData("""
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
///                 """)
///                 .build())
///             .build());
///
///         var examplePointToPointVpnGateway = new PointToPointVpnGateway("examplePointToPointVpnGateway", PointToPointVpnGatewayArgs.builder()
///             .name("example-vpn-gateway")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .virtualHubId(exampleVirtualHub.id())
///             .vpnServerConfigurationId(exampleVpnServerConfiguration.id())
///             .scaleUnit(1)
///             .connectionConfigurations(PointToPointVpnGatewayConnectionConfigurationArgs.builder()
///                 .name("example-gateway-config")
///                 .vpnClientAddressPool(PointToPointVpnGatewayConnectionConfigurationVpnClientAddressPoolArgs.builder()
///                     .addressPrefixes("10.0.2.0/24")
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
///       name: example-resources
///       location: West Europe
///   exampleVirtualWan:
///     type: azure:network:VirtualWan
///     name: example
///     properties:
///       name: example-virtualwan
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///   exampleVirtualHub:
///     type: azure:network:VirtualHub
///     name: example
///     properties:
///       name: example-virtualhub
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       virtualWanId: ${exampleVirtualWan.id}
///       addressPrefix: 10.0.0.0/23
///   exampleVpnServerConfiguration:
///     type: azure:network:VpnServerConfiguration
///     name: example
///     properties:
///       name: example-config
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       vpnAuthenticationTypes:
///         - Certificate
///       clientRootCertificates:
///         - name: DigiCert-Federated-ID-Root-CA
///           publicCertData: |
///             MIIDuzCCAqOgAwIBAgIQCHTZWCM+IlfFIRXIvyKSrjANBgkqhkiG9w0BAQsFADBn
///             MQswCQYDVQQGEwJVUzEVMBMGA1UEChMMRGlnaUNlcnQgSW5jMRkwFwYDVQQLExB3
///             d3cuZGlnaWNlcnQuY29tMSYwJAYDVQQDEx1EaWdpQ2VydCBGZWRlcmF0ZWQgSUQg
///             Um9vdCBDQTAeFw0xMzAxMTUxMjAwMDBaFw0zMzAxMTUxMjAwMDBaMGcxCzAJBgNV
///             BAYTAlVTMRUwEwYDVQQKEwxEaWdpQ2VydCBJbmMxGTAXBgNVBAsTEHd3dy5kaWdp
///             Y2VydC5jb20xJjAkBgNVBAMTHURpZ2lDZXJ0IEZlZGVyYXRlZCBJRCBSb290IENB
///             MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvAEB4pcCqnNNOWE6Ur5j
///             QPUH+1y1F9KdHTRSza6k5iDlXq1kGS1qAkuKtw9JsiNRrjltmFnzMZRBbX8Tlfl8
///             zAhBmb6dDduDGED01kBsTkgywYPxXVTKec0WxYEEF0oMn4wSYNl0lt2eJAKHXjNf
///             GTwiibdP8CUR2ghSM2sUTI8Nt1Omfc4SMHhGhYD64uJMbX98THQ/4LMGuYegou+d
///             GTiahfHtjn7AboSEknwAMJHCh5RlYZZ6B1O4QbKJ+34Q0eKgnI3X6Vc9u0zf6DH8
///             Dk+4zQDYRRTqTnVO3VT8jzqDlCRuNtq6YvryOWN74/dq8LQhUnXHvFyrsdMaE1X2
///             DwIDAQABo2MwYTAPBgNVHRMBAf8EBTADAQH/MA4GA1UdDwEB/wQEAwIBhjAdBgNV
///             HQ4EFgQUGRdkFnbGt1EWjKwbUne+5OaZvRYwHwYDVR0jBBgwFoAUGRdkFnbGt1EW
///             jKwbUne+5OaZvRYwDQYJKoZIhvcNAQELBQADggEBAHcqsHkrjpESqfuVTRiptJfP
///             9JbdtWqRTmOf6uJi2c8YVqI6XlKXsD8C1dUUaaHKLUJzvKiazibVuBwMIT84AyqR
///             QELn3e0BtgEymEygMU569b01ZPxoFSnNXc7qDZBDef8WfqAV/sxkTi8L9BkmFYfL
///             uGLOhRJOFprPdoDIUBB+tmCl3oDcBy3vnUeOEioz8zAkprcb3GHwHAK+vHmmfgcn
///             WsfMLH4JCLa/tRYL+Rw/N3ybCkDp00s0WUZ+AoDywSl0Q/ZEnNY0MsFiw6LyIdbq
///             M/s/1JRtO3bDSzD9TazRVzn2oBqzSa8VgIo5C1nOnoAKJTlsClJKvIhnRlaLQqk=
///   examplePointToPointVpnGateway:
///     type: azure:network:PointToPointVpnGateway
///     name: example
///     properties:
///       name: example-vpn-gateway
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       virtualHubId: ${exampleVirtualHub.id}
///       vpnServerConfigurationId: ${exampleVpnServerConfiguration.id}
///       scaleUnit: 1
///       connectionConfigurations:
///         - name: example-gateway-config
///           vpnClientAddressPool:
///             addressPrefixes:
///               - 10.0.2.0/24
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
/// Point-to-Site VPN Gateway's can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:network/pointToPointVpnGateway:PointToPointVpnGateway example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.Network/p2sVpnGateways/gateway1
/// ```
class PointToPointVpnGateway extends pulumi.CustomResource {
  /// A `connection_configuration` block as defined below.
  late final pulumi.Output<List<Map<String, dynamic>>> connectionConfigurations;

  /// A list of IP Addresses of DNS Servers for the Point-to-Site VPN Gateway.
  late final pulumi.Output<List<String>?> dnsServers;

  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;

  /// Specifies the name of the Point-to-Site VPN Gateway. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;

  /// The name of the resource group in which to create the Point-to-Site VPN Gateway. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;

  /// Is the Routing Preference for the Public IP Interface of the VPN Gateway enabled? Defaults to `false`. Changing this forces a new resource to be created.
  late final pulumi.Output<bool?> routingPreferenceInternetEnabled;

  /// The [Scale Unit](https://docs.microsoft.com/azure/virtual-wan/virtual-wan-faq#what-is-a-virtual-wan-gateway-scale-unit) for this Point-to-Site VPN Gateway.
  late final pulumi.Output<int> scaleUnit;

  /// A mapping of tags to assign to the Point-to-Site VPN Gateway.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The ID of the Virtual Hub where this Point-to-Site VPN Gateway should exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String> virtualHubId;

  /// The ID of the VPN Server Configuration which this Point-to-Site VPN Gateway should use. Changing this forces a new resource to be created.
  late final pulumi.Output<String> vpnServerConfigurationId;

  /// Creates a new [PointToPointVpnGateway].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PointToPointVpnGateway]. {@macro pulumi_network_point_to_point_vpn_gateway_point_to_point_vpn_gateway_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PointToPointVpnGateway(
    String name, {
    PointToPointVpnGatewayArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:network/pointToPointVpnGateway:PointToPointVpnGateway',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    connectionConfigurations = registerOutput<List<Map<String, dynamic>>>(
      'connectionConfigurations',
    );
    dnsServers = registerOutput<List<String>?>('dnsServers');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    routingPreferenceInternetEnabled = registerOutput<bool?>(
      'routingPreferenceInternetEnabled',
    );
    scaleUnit = registerOutput<int>('scaleUnit');
    tags = registerOutput<Map<String, String>?>('tags');
    virtualHubId = registerOutput<String>('virtualHubId');
    vpnServerConfigurationId = registerOutput<String>(
      'vpnServerConfigurationId',
    );
  }

  /// Gets an existing [PointToPointVpnGateway] resource's state with the given [name] and [id].
  static PointToPointVpnGateway get(
    String name,
    pulumi.Input<String> id, {
    PointToPointVpnGatewayState? state,
  }) {
    return PointToPointVpnGateway._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  PointToPointVpnGateway._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:network/pointToPointVpnGateway:PointToPointVpnGateway',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    connectionConfigurations = registerOutput<List<Map<String, dynamic>>>(
      'connectionConfigurations',
    );
    dnsServers = registerOutput<List<String>?>('dnsServers');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    routingPreferenceInternetEnabled = registerOutput<bool?>(
      'routingPreferenceInternetEnabled',
    );
    scaleUnit = registerOutput<int>('scaleUnit');
    tags = registerOutput<Map<String, String>?>('tags');
    virtualHubId = registerOutput<String>('virtualHubId');
    vpnServerConfigurationId = registerOutput<String>(
      'vpnServerConfigurationId',
    );
  }
}
