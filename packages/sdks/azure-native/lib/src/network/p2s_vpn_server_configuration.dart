import 'package:pulumi/pulumi.dart' as pulumi;
import 'p2_svpn_server_configuration_properties_response.dart';
import 'p2s_vpn_server_configuration_args.dart';

/// P2SVpnServerConfiguration Resource.
///
/// Uses Azure REST API version 2019-07-01. In version 2.x of the Azure Native provider, it used API version 2019-07-01.
///
/// Other available API versions: 2018-08-01, 2018-10-01, 2018-11-01, 2018-12-01, 2019-02-01, 2019-04-01, 2019-06-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### P2SVpnServerConfigurationPut
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var p2sVpnServerConfiguration = new AzureNative.Network.P2sVpnServerConfiguration("p2sVpnServerConfiguration", new()
///     {
///         P2SVpnServerConfigurationName = "p2sVpnServerConfiguration1",
///         Properties = new AzureNative.Network.Inputs.P2SVpnServerConfigurationPropertiesArgs
///         {
///             P2SVpnServerConfigRadiusClientRootCertificates = new[]
///             {
///                 new AzureNative.Network.Inputs.P2SVpnServerConfigRadiusClientRootCertificateArgs
///                 {
///                     Name = "p2sVpnServerConfigRadiusClientRootCert1",
///                     Thumbprint = "83FFBFC8848B5A5836C94D0112367E16148A286F",
///                 },
///             },
///             P2SVpnServerConfigRadiusServerRootCertificates = new[]
///             {
///                 new AzureNative.Network.Inputs.P2SVpnServerConfigRadiusServerRootCertificateArgs
///                 {
///                     Name = "p2sVpnServerConfigRadiusServerRootCert1",
///                     PublicCertData = "MIIC5zCCAc+gAwIBAgIQErQ0Hk4aDJxIA+Q5RagB+jANBgkqhkiG9w0BAQsFADAWMRQwEgYDVQQDDAtQMlNSb290Q2VydDAeFw0xNzEyMTQyMTA3MzhaFw0xODEyMTQyMTI3MzhaMBYxFDASBgNVBAMMC1AyU1Jvb3RDZXJ0MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEArP7/NQXmW7cQ/ZR1mv3Y3I29Lt7HTOqzo/1KUOoVH3NItbQIRAQbwKy3UWrOFz4eGNX2GWtNRMdCyWsKeqy9Ltsdfcm1IbKXkl84DFeU/ZacXu4Dl3xX3gV5du4TLZjEowJELyur11Ea2YcjPRQ/FzAF9/hGuboS1HZQEPLx4FdUs9OxCYOtc0MxBCwLfVTTRqarb0Ne+arNYd4kCzIhAke1nOyKAJBda5ZL+VHy3S5S8qGlD46jm8HXugmAkUygS4oIIXOmj/1O9sNAi3LN60zufSzCmP8Rm/iUGX+DHAGGiXxwZOKQLEDaZXKqoHjMPP0XudmSWwOIbyeQVrLhkwIDAQABozEwLzAOBgNVHQ8BAf8EBAMCAgQwHQYDVR0OBBYEFEfeNU2trYxNLF9ONmuJUsT13pKDMA0GCSqGSIb3DQEBCwUAA4IBAQBmM6RJzsGGipxyMhimHKN2xlkejhVsgBoTAhOU0llW9aUSwINJ9zFUGgI8IzUFy1VG776fchHp0LMRmPSIUYk5btEPxbsrPtumPuMH8EQGrS+Rt4pD+78c8H1fEPkq5CmDl/PKu4JoFGv+aFcE+Od0hlILstIF10Qysf++QXDolKfzJa/56bgMeYKFiju73loiRM57ns8ddXpfLl792UVpRkFU62LNns6Y1LKTwapmUF4IvIuAIzd6LZNOQng64LAKXtKnViJ1JQiXwf4CEzhgvAti3/ejpb3U90hsrUcyZi6wBv9bZLcAJRWpz61JNYliM1d1grSwQDKGXNQE4xuM",
///                 },
///             },
///             P2SVpnServerConfigVpnClientRevokedCertificates = new[]
///             {
///                 new AzureNative.Network.Inputs.P2SVpnServerConfigVpnClientRevokedCertificateArgs
///                 {
///                     Name = "p2sVpnServerConfigVpnClientRevokedCert1",
///                     Thumbprint = "83FFBFC8848B5A5836C94D0112367E16148A286F",
///                 },
///             },
///             P2SVpnServerConfigVpnClientRootCertificates = new[]
///             {
///                 new AzureNative.Network.Inputs.P2SVpnServerConfigVpnClientRootCertificateArgs
///                 {
///                     Name = "p2sVpnServerConfigVpnClientRootCert1",
///                     PublicCertData = "MIIC5zCCAc+gAwIBAgIQErQ0Hk4aDJxIA+Q5RagB+jANBgkqhkiG9w0BAQsFADAWMRQwEgYDVQQDDAtQMlNSb290Q2VydDAeFw0xNzEyMTQyMTA3MzhaFw0xODEyMTQyMTI3MzhaMBYxFDASBgNVBAMMC1AyU1Jvb3RDZXJ0MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEArP7/NQXmW7cQ/ZR1mv3Y3I29Lt7HTOqzo/1KUOoVH3NItbQIRAQbwKy3UWrOFz4eGNX2GWtNRMdCyWsKeqy9Ltsdfcm1IbKXkl84DFeU/ZacXu4Dl3xX3gV5du4TLZjEowJELyur11Ea2YcjPRQ/FzAF9/hGuboS1HZQEPLx4FdUs9OxCYOtc0MxBCwLfVTTRqarb0Ne+arNYd4kCzIhAke1nOyKAJBda5ZL+VHy3S5S8qGlD46jm8HXugmAkUygS4oIIXOmj/1O9sNAi3LN60zufSzCmP8Rm/iUGX+DHAGGiXxwZOKQLEDaZXKqoHjMPP0XudmSWwOIbyeQVrLhkwIDAQABozEwLzAOBgNVHQ8BAf8EBAMCAgQwHQYDVR0OBBYEFEfeNU2trYxNLF9ONmuJUsT13pKDMA0GCSqGSIb3DQEBCwUAA4IBAQBmM6RJzsGGipxyMhimHKN2xlkejhVsgBoTAhOU0llW9aUSwINJ9zFUGgI8IzUFy1VG776fchHp0LMRmPSIUYk5btEPxbsrPtumPuMH8EQGrS+Rt4pD+78c8H1fEPkq5CmDl/PKu4JoFGv+aFcE+Od0hlILstIF10Qysf++QXDolKfzJa/56bgMeYKFiju73loiRM57ns8ddXpfLl792UVpRkFU62LNns6Y1LKTwapmUF4IvIuAIzd6LZNOQng64LAKXtKnViJ1JQiXwf4CEzhgvAti3/ejpb3U90hsrUcyZi6wBv9bZLcAJRWpz61JNYliM1d1grSwQDKGXNQE4xuN",
///                 },
///             },
///             RadiusServerAddress = "8.9.9.9",
///             RadiusServerSecret = "<radiusServerSecret>",
///             VpnClientIpsecPolicies = new[]
///             {
///                 new AzureNative.Network.Inputs.IpsecPolicyArgs
///                 {
///                     DhGroup = AzureNative.Network.DhGroup.DHGroup14,
///                     IkeEncryption = AzureNative.Network.IkeEncryption.AES256,
///                     IkeIntegrity = AzureNative.Network.IkeIntegrity.SHA384,
///                     IpsecEncryption = AzureNative.Network.IpsecEncryption.AES256,
///                     IpsecIntegrity = AzureNative.Network.IpsecIntegrity.SHA256,
///                     PfsGroup = AzureNative.Network.PfsGroup.PFS14,
///                     SaDataSizeKilobytes = 429497,
///                     SaLifeTimeSeconds = 86472,
///                 },
///             },
///             VpnProtocols = new[]
///             {
///                 AzureNative.Network.VpnGatewayTunnelingProtocol.IkeV2,
///             },
///         },
///         ResourceGroupName = "rg1",
///         VirtualWanName = "virtualWan1",
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
/// 	network "github.com/pulumi/pulumi-azure-native-sdk/network/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := network.NewP2sVpnServerConfiguration(ctx, "p2sVpnServerConfiguration", &network.P2sVpnServerConfigurationArgs{
/// 			P2SVpnServerConfigurationName: pulumi.String("p2sVpnServerConfiguration1"),
/// 			Properties: &network.P2SVpnServerConfigurationPropertiesArgs{
/// 				P2SVpnServerConfigRadiusClientRootCertificates: network.P2SVpnServerConfigRadiusClientRootCertificateArray{
/// 					&network.P2SVpnServerConfigRadiusClientRootCertificateArgs{
/// 						Name:       pulumi.String("p2sVpnServerConfigRadiusClientRootCert1"),
/// 						Thumbprint: pulumi.String("83FFBFC8848B5A5836C94D0112367E16148A286F"),
/// 					},
/// 				},
/// 				P2SVpnServerConfigRadiusServerRootCertificates: network.P2SVpnServerConfigRadiusServerRootCertificateArray{
/// 					&network.P2SVpnServerConfigRadiusServerRootCertificateArgs{
/// 						Name:           pulumi.String("p2sVpnServerConfigRadiusServerRootCert1"),
/// 						PublicCertData: pulumi.String("MIIC5zCCAc+gAwIBAgIQErQ0Hk4aDJxIA+Q5RagB+jANBgkqhkiG9w0BAQsFADAWMRQwEgYDVQQDDAtQMlNSb290Q2VydDAeFw0xNzEyMTQyMTA3MzhaFw0xODEyMTQyMTI3MzhaMBYxFDASBgNVBAMMC1AyU1Jvb3RDZXJ0MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEArP7/NQXmW7cQ/ZR1mv3Y3I29Lt7HTOqzo/1KUOoVH3NItbQIRAQbwKy3UWrOFz4eGNX2GWtNRMdCyWsKeqy9Ltsdfcm1IbKXkl84DFeU/ZacXu4Dl3xX3gV5du4TLZjEowJELyur11Ea2YcjPRQ/FzAF9/hGuboS1HZQEPLx4FdUs9OxCYOtc0MxBCwLfVTTRqarb0Ne+arNYd4kCzIhAke1nOyKAJBda5ZL+VHy3S5S8qGlD46jm8HXugmAkUygS4oIIXOmj/1O9sNAi3LN60zufSzCmP8Rm/iUGX+DHAGGiXxwZOKQLEDaZXKqoHjMPP0XudmSWwOIbyeQVrLhkwIDAQABozEwLzAOBgNVHQ8BAf8EBAMCAgQwHQYDVR0OBBYEFEfeNU2trYxNLF9ONmuJUsT13pKDMA0GCSqGSIb3DQEBCwUAA4IBAQBmM6RJzsGGipxyMhimHKN2xlkejhVsgBoTAhOU0llW9aUSwINJ9zFUGgI8IzUFy1VG776fchHp0LMRmPSIUYk5btEPxbsrPtumPuMH8EQGrS+Rt4pD+78c8H1fEPkq5CmDl/PKu4JoFGv+aFcE+Od0hlILstIF10Qysf++QXDolKfzJa/56bgMeYKFiju73loiRM57ns8ddXpfLl792UVpRkFU62LNns6Y1LKTwapmUF4IvIuAIzd6LZNOQng64LAKXtKnViJ1JQiXwf4CEzhgvAti3/ejpb3U90hsrUcyZi6wBv9bZLcAJRWpz61JNYliM1d1grSwQDKGXNQE4xuM"),
/// 					},
/// 				},
/// 				P2SVpnServerConfigVpnClientRevokedCertificates: network.P2SVpnServerConfigVpnClientRevokedCertificateArray{
/// 					&network.P2SVpnServerConfigVpnClientRevokedCertificateArgs{
/// 						Name:       pulumi.String("p2sVpnServerConfigVpnClientRevokedCert1"),
/// 						Thumbprint: pulumi.String("83FFBFC8848B5A5836C94D0112367E16148A286F"),
/// 					},
/// 				},
/// 				P2SVpnServerConfigVpnClientRootCertificates: network.P2SVpnServerConfigVpnClientRootCertificateArray{
/// 					&network.P2SVpnServerConfigVpnClientRootCertificateArgs{
/// 						Name:           pulumi.String("p2sVpnServerConfigVpnClientRootCert1"),
/// 						PublicCertData: pulumi.String("MIIC5zCCAc+gAwIBAgIQErQ0Hk4aDJxIA+Q5RagB+jANBgkqhkiG9w0BAQsFADAWMRQwEgYDVQQDDAtQMlNSb290Q2VydDAeFw0xNzEyMTQyMTA3MzhaFw0xODEyMTQyMTI3MzhaMBYxFDASBgNVBAMMC1AyU1Jvb3RDZXJ0MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEArP7/NQXmW7cQ/ZR1mv3Y3I29Lt7HTOqzo/1KUOoVH3NItbQIRAQbwKy3UWrOFz4eGNX2GWtNRMdCyWsKeqy9Ltsdfcm1IbKXkl84DFeU/ZacXu4Dl3xX3gV5du4TLZjEowJELyur11Ea2YcjPRQ/FzAF9/hGuboS1HZQEPLx4FdUs9OxCYOtc0MxBCwLfVTTRqarb0Ne+arNYd4kCzIhAke1nOyKAJBda5ZL+VHy3S5S8qGlD46jm8HXugmAkUygS4oIIXOmj/1O9sNAi3LN60zufSzCmP8Rm/iUGX+DHAGGiXxwZOKQLEDaZXKqoHjMPP0XudmSWwOIbyeQVrLhkwIDAQABozEwLzAOBgNVHQ8BAf8EBAMCAgQwHQYDVR0OBBYEFEfeNU2trYxNLF9ONmuJUsT13pKDMA0GCSqGSIb3DQEBCwUAA4IBAQBmM6RJzsGGipxyMhimHKN2xlkejhVsgBoTAhOU0llW9aUSwINJ9zFUGgI8IzUFy1VG776fchHp0LMRmPSIUYk5btEPxbsrPtumPuMH8EQGrS+Rt4pD+78c8H1fEPkq5CmDl/PKu4JoFGv+aFcE+Od0hlILstIF10Qysf++QXDolKfzJa/56bgMeYKFiju73loiRM57ns8ddXpfLl792UVpRkFU62LNns6Y1LKTwapmUF4IvIuAIzd6LZNOQng64LAKXtKnViJ1JQiXwf4CEzhgvAti3/ejpb3U90hsrUcyZi6wBv9bZLcAJRWpz61JNYliM1d1grSwQDKGXNQE4xuN"),
/// 					},
/// 				},
/// 				RadiusServerAddress: pulumi.String("8.9.9.9"),
/// 				RadiusServerSecret:  pulumi.String("<radiusServerSecret>"),
/// 				VpnClientIpsecPolicies: network.IpsecPolicyArray{
/// 					&network.IpsecPolicyArgs{
/// 						DhGroup:             pulumi.String(network.DhGroupDHGroup14),
/// 						IkeEncryption:       pulumi.String(network.IkeEncryptionAES256),
/// 						IkeIntegrity:        pulumi.String(network.IkeIntegritySHA384),
/// 						IpsecEncryption:     pulumi.String(network.IpsecEncryptionAES256),
/// 						IpsecIntegrity:      pulumi.String(network.IpsecIntegritySHA256),
/// 						PfsGroup:            pulumi.String(network.PfsGroupPFS14),
/// 						SaDataSizeKilobytes: pulumi.Int(429497),
/// 						SaLifeTimeSeconds:   pulumi.Int(86472),
/// 					},
/// 				},
/// 				VpnProtocols: pulumi.StringArray{
/// 					pulumi.String(network.VpnGatewayTunnelingProtocolIkeV2),
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			VirtualWanName:    pulumi.String("virtualWan1"),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.network.P2sVpnServerConfiguration;
/// import com.pulumi.azurenative.network.P2sVpnServerConfigurationArgs;
/// import com.pulumi.azurenative.network.inputs.P2SVpnServerConfigurationPropertiesArgs;
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
///         var p2sVpnServerConfiguration = new P2sVpnServerConfiguration("p2sVpnServerConfiguration", P2sVpnServerConfigurationArgs.builder()
///             .p2SVpnServerConfigurationName("p2sVpnServerConfiguration1")
///             .properties(P2SVpnServerConfigurationPropertiesArgs.builder()
///                 .p2SVpnServerConfigRadiusClientRootCertificates(P2SVpnServerConfigRadiusClientRootCertificateArgs.builder()
///                     .name("p2sVpnServerConfigRadiusClientRootCert1")
///                     .thumbprint("83FFBFC8848B5A5836C94D0112367E16148A286F")
///                     .build())
///                 .p2SVpnServerConfigRadiusServerRootCertificates(P2SVpnServerConfigRadiusServerRootCertificateArgs.builder()
///                     .name("p2sVpnServerConfigRadiusServerRootCert1")
///                     .publicCertData("MIIC5zCCAc+gAwIBAgIQErQ0Hk4aDJxIA+Q5RagB+jANBgkqhkiG9w0BAQsFADAWMRQwEgYDVQQDDAtQMlNSb290Q2VydDAeFw0xNzEyMTQyMTA3MzhaFw0xODEyMTQyMTI3MzhaMBYxFDASBgNVBAMMC1AyU1Jvb3RDZXJ0MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEArP7/NQXmW7cQ/ZR1mv3Y3I29Lt7HTOqzo/1KUOoVH3NItbQIRAQbwKy3UWrOFz4eGNX2GWtNRMdCyWsKeqy9Ltsdfcm1IbKXkl84DFeU/ZacXu4Dl3xX3gV5du4TLZjEowJELyur11Ea2YcjPRQ/FzAF9/hGuboS1HZQEPLx4FdUs9OxCYOtc0MxBCwLfVTTRqarb0Ne+arNYd4kCzIhAke1nOyKAJBda5ZL+VHy3S5S8qGlD46jm8HXugmAkUygS4oIIXOmj/1O9sNAi3LN60zufSzCmP8Rm/iUGX+DHAGGiXxwZOKQLEDaZXKqoHjMPP0XudmSWwOIbyeQVrLhkwIDAQABozEwLzAOBgNVHQ8BAf8EBAMCAgQwHQYDVR0OBBYEFEfeNU2trYxNLF9ONmuJUsT13pKDMA0GCSqGSIb3DQEBCwUAA4IBAQBmM6RJzsGGipxyMhimHKN2xlkejhVsgBoTAhOU0llW9aUSwINJ9zFUGgI8IzUFy1VG776fchHp0LMRmPSIUYk5btEPxbsrPtumPuMH8EQGrS+Rt4pD+78c8H1fEPkq5CmDl/PKu4JoFGv+aFcE+Od0hlILstIF10Qysf++QXDolKfzJa/56bgMeYKFiju73loiRM57ns8ddXpfLl792UVpRkFU62LNns6Y1LKTwapmUF4IvIuAIzd6LZNOQng64LAKXtKnViJ1JQiXwf4CEzhgvAti3/ejpb3U90hsrUcyZi6wBv9bZLcAJRWpz61JNYliM1d1grSwQDKGXNQE4xuM")
///                     .build())
///                 .p2SVpnServerConfigVpnClientRevokedCertificates(P2SVpnServerConfigVpnClientRevokedCertificateArgs.builder()
///                     .name("p2sVpnServerConfigVpnClientRevokedCert1")
///                     .thumbprint("83FFBFC8848B5A5836C94D0112367E16148A286F")
///                     .build())
///                 .p2SVpnServerConfigVpnClientRootCertificates(P2SVpnServerConfigVpnClientRootCertificateArgs.builder()
///                     .name("p2sVpnServerConfigVpnClientRootCert1")
///                     .publicCertData("MIIC5zCCAc+gAwIBAgIQErQ0Hk4aDJxIA+Q5RagB+jANBgkqhkiG9w0BAQsFADAWMRQwEgYDVQQDDAtQMlNSb290Q2VydDAeFw0xNzEyMTQyMTA3MzhaFw0xODEyMTQyMTI3MzhaMBYxFDASBgNVBAMMC1AyU1Jvb3RDZXJ0MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEArP7/NQXmW7cQ/ZR1mv3Y3I29Lt7HTOqzo/1KUOoVH3NItbQIRAQbwKy3UWrOFz4eGNX2GWtNRMdCyWsKeqy9Ltsdfcm1IbKXkl84DFeU/ZacXu4Dl3xX3gV5du4TLZjEowJELyur11Ea2YcjPRQ/FzAF9/hGuboS1HZQEPLx4FdUs9OxCYOtc0MxBCwLfVTTRqarb0Ne+arNYd4kCzIhAke1nOyKAJBda5ZL+VHy3S5S8qGlD46jm8HXugmAkUygS4oIIXOmj/1O9sNAi3LN60zufSzCmP8Rm/iUGX+DHAGGiXxwZOKQLEDaZXKqoHjMPP0XudmSWwOIbyeQVrLhkwIDAQABozEwLzAOBgNVHQ8BAf8EBAMCAgQwHQYDVR0OBBYEFEfeNU2trYxNLF9ONmuJUsT13pKDMA0GCSqGSIb3DQEBCwUAA4IBAQBmM6RJzsGGipxyMhimHKN2xlkejhVsgBoTAhOU0llW9aUSwINJ9zFUGgI8IzUFy1VG776fchHp0LMRmPSIUYk5btEPxbsrPtumPuMH8EQGrS+Rt4pD+78c8H1fEPkq5CmDl/PKu4JoFGv+aFcE+Od0hlILstIF10Qysf++QXDolKfzJa/56bgMeYKFiju73loiRM57ns8ddXpfLl792UVpRkFU62LNns6Y1LKTwapmUF4IvIuAIzd6LZNOQng64LAKXtKnViJ1JQiXwf4CEzhgvAti3/ejpb3U90hsrUcyZi6wBv9bZLcAJRWpz61JNYliM1d1grSwQDKGXNQE4xuN")
///                     .build())
///                 .radiusServerAddress("8.9.9.9")
///                 .radiusServerSecret("<radiusServerSecret>")
///                 .vpnClientIpsecPolicies(IpsecPolicyArgs.builder()
///                     .dhGroup("DHGroup14")
///                     .ikeEncryption("AES256")
///                     .ikeIntegrity("SHA384")
///                     .ipsecEncryption("AES256")
///                     .ipsecIntegrity("SHA256")
///                     .pfsGroup("PFS14")
///                     .saDataSizeKilobytes(429497)
///                     .saLifeTimeSeconds(86472)
///                     .build())
///                 .vpnProtocols("IkeV2")
///                 .build())
///             .resourceGroupName("rg1")
///             .virtualWanName("virtualWan1")
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
/// const p2sVpnServerConfiguration = new azure_native.network.P2sVpnServerConfiguration("p2sVpnServerConfiguration", {
///     p2SVpnServerConfigurationName: "p2sVpnServerConfiguration1",
///     properties: {
///         p2SVpnServerConfigRadiusClientRootCertificates: [{
///             name: "p2sVpnServerConfigRadiusClientRootCert1",
///             thumbprint: "83FFBFC8848B5A5836C94D0112367E16148A286F",
///         }],
///         p2SVpnServerConfigRadiusServerRootCertificates: [{
///             name: "p2sVpnServerConfigRadiusServerRootCert1",
///             publicCertData: "MIIC5zCCAc+gAwIBAgIQErQ0Hk4aDJxIA+Q5RagB+jANBgkqhkiG9w0BAQsFADAWMRQwEgYDVQQDDAtQMlNSb290Q2VydDAeFw0xNzEyMTQyMTA3MzhaFw0xODEyMTQyMTI3MzhaMBYxFDASBgNVBAMMC1AyU1Jvb3RDZXJ0MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEArP7/NQXmW7cQ/ZR1mv3Y3I29Lt7HTOqzo/1KUOoVH3NItbQIRAQbwKy3UWrOFz4eGNX2GWtNRMdCyWsKeqy9Ltsdfcm1IbKXkl84DFeU/ZacXu4Dl3xX3gV5du4TLZjEowJELyur11Ea2YcjPRQ/FzAF9/hGuboS1HZQEPLx4FdUs9OxCYOtc0MxBCwLfVTTRqarb0Ne+arNYd4kCzIhAke1nOyKAJBda5ZL+VHy3S5S8qGlD46jm8HXugmAkUygS4oIIXOmj/1O9sNAi3LN60zufSzCmP8Rm/iUGX+DHAGGiXxwZOKQLEDaZXKqoHjMPP0XudmSWwOIbyeQVrLhkwIDAQABozEwLzAOBgNVHQ8BAf8EBAMCAgQwHQYDVR0OBBYEFEfeNU2trYxNLF9ONmuJUsT13pKDMA0GCSqGSIb3DQEBCwUAA4IBAQBmM6RJzsGGipxyMhimHKN2xlkejhVsgBoTAhOU0llW9aUSwINJ9zFUGgI8IzUFy1VG776fchHp0LMRmPSIUYk5btEPxbsrPtumPuMH8EQGrS+Rt4pD+78c8H1fEPkq5CmDl/PKu4JoFGv+aFcE+Od0hlILstIF10Qysf++QXDolKfzJa/56bgMeYKFiju73loiRM57ns8ddXpfLl792UVpRkFU62LNns6Y1LKTwapmUF4IvIuAIzd6LZNOQng64LAKXtKnViJ1JQiXwf4CEzhgvAti3/ejpb3U90hsrUcyZi6wBv9bZLcAJRWpz61JNYliM1d1grSwQDKGXNQE4xuM",
///         }],
///         p2SVpnServerConfigVpnClientRevokedCertificates: [{
///             name: "p2sVpnServerConfigVpnClientRevokedCert1",
///             thumbprint: "83FFBFC8848B5A5836C94D0112367E16148A286F",
///         }],
///         p2SVpnServerConfigVpnClientRootCertificates: [{
///             name: "p2sVpnServerConfigVpnClientRootCert1",
///             publicCertData: "MIIC5zCCAc+gAwIBAgIQErQ0Hk4aDJxIA+Q5RagB+jANBgkqhkiG9w0BAQsFADAWMRQwEgYDVQQDDAtQMlNSb290Q2VydDAeFw0xNzEyMTQyMTA3MzhaFw0xODEyMTQyMTI3MzhaMBYxFDASBgNVBAMMC1AyU1Jvb3RDZXJ0MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEArP7/NQXmW7cQ/ZR1mv3Y3I29Lt7HTOqzo/1KUOoVH3NItbQIRAQbwKy3UWrOFz4eGNX2GWtNRMdCyWsKeqy9Ltsdfcm1IbKXkl84DFeU/ZacXu4Dl3xX3gV5du4TLZjEowJELyur11Ea2YcjPRQ/FzAF9/hGuboS1HZQEPLx4FdUs9OxCYOtc0MxBCwLfVTTRqarb0Ne+arNYd4kCzIhAke1nOyKAJBda5ZL+VHy3S5S8qGlD46jm8HXugmAkUygS4oIIXOmj/1O9sNAi3LN60zufSzCmP8Rm/iUGX+DHAGGiXxwZOKQLEDaZXKqoHjMPP0XudmSWwOIbyeQVrLhkwIDAQABozEwLzAOBgNVHQ8BAf8EBAMCAgQwHQYDVR0OBBYEFEfeNU2trYxNLF9ONmuJUsT13pKDMA0GCSqGSIb3DQEBCwUAA4IBAQBmM6RJzsGGipxyMhimHKN2xlkejhVsgBoTAhOU0llW9aUSwINJ9zFUGgI8IzUFy1VG776fchHp0LMRmPSIUYk5btEPxbsrPtumPuMH8EQGrS+Rt4pD+78c8H1fEPkq5CmDl/PKu4JoFGv+aFcE+Od0hlILstIF10Qysf++QXDolKfzJa/56bgMeYKFiju73loiRM57ns8ddXpfLl792UVpRkFU62LNns6Y1LKTwapmUF4IvIuAIzd6LZNOQng64LAKXtKnViJ1JQiXwf4CEzhgvAti3/ejpb3U90hsrUcyZi6wBv9bZLcAJRWpz61JNYliM1d1grSwQDKGXNQE4xuN",
///         }],
///         radiusServerAddress: "8.9.9.9",
///         radiusServerSecret: "<radiusServerSecret>",
///         vpnClientIpsecPolicies: [{
///             dhGroup: azure_native.network.DhGroup.DHGroup14,
///             ikeEncryption: azure_native.network.IkeEncryption.AES256,
///             ikeIntegrity: azure_native.network.IkeIntegrity.SHA384,
///             ipsecEncryption: azure_native.network.IpsecEncryption.AES256,
///             ipsecIntegrity: azure_native.network.IpsecIntegrity.SHA256,
///             pfsGroup: azure_native.network.PfsGroup.PFS14,
///             saDataSizeKilobytes: 429497,
///             saLifeTimeSeconds: 86472,
///         }],
///         vpnProtocols: [azure_native.network.VpnGatewayTunnelingProtocol.IkeV2],
///     },
///     resourceGroupName: "rg1",
///     virtualWanName: "virtualWan1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// p2s_vpn_server_configuration = azure_native.network.P2sVpnServerConfiguration("p2sVpnServerConfiguration",
///     p2_s_vpn_server_configuration_name="p2sVpnServerConfiguration1",
///     properties={
///         "p2_s_vpn_server_config_radius_client_root_certificates": [{
///             "name": "p2sVpnServerConfigRadiusClientRootCert1",
///             "thumbprint": "83FFBFC8848B5A5836C94D0112367E16148A286F",
///         }],
///         "p2_s_vpn_server_config_radius_server_root_certificates": [{
///             "name": "p2sVpnServerConfigRadiusServerRootCert1",
///             "public_cert_data": "MIIC5zCCAc+gAwIBAgIQErQ0Hk4aDJxIA+Q5RagB+jANBgkqhkiG9w0BAQsFADAWMRQwEgYDVQQDDAtQMlNSb290Q2VydDAeFw0xNzEyMTQyMTA3MzhaFw0xODEyMTQyMTI3MzhaMBYxFDASBgNVBAMMC1AyU1Jvb3RDZXJ0MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEArP7/NQXmW7cQ/ZR1mv3Y3I29Lt7HTOqzo/1KUOoVH3NItbQIRAQbwKy3UWrOFz4eGNX2GWtNRMdCyWsKeqy9Ltsdfcm1IbKXkl84DFeU/ZacXu4Dl3xX3gV5du4TLZjEowJELyur11Ea2YcjPRQ/FzAF9/hGuboS1HZQEPLx4FdUs9OxCYOtc0MxBCwLfVTTRqarb0Ne+arNYd4kCzIhAke1nOyKAJBda5ZL+VHy3S5S8qGlD46jm8HXugmAkUygS4oIIXOmj/1O9sNAi3LN60zufSzCmP8Rm/iUGX+DHAGGiXxwZOKQLEDaZXKqoHjMPP0XudmSWwOIbyeQVrLhkwIDAQABozEwLzAOBgNVHQ8BAf8EBAMCAgQwHQYDVR0OBBYEFEfeNU2trYxNLF9ONmuJUsT13pKDMA0GCSqGSIb3DQEBCwUAA4IBAQBmM6RJzsGGipxyMhimHKN2xlkejhVsgBoTAhOU0llW9aUSwINJ9zFUGgI8IzUFy1VG776fchHp0LMRmPSIUYk5btEPxbsrPtumPuMH8EQGrS+Rt4pD+78c8H1fEPkq5CmDl/PKu4JoFGv+aFcE+Od0hlILstIF10Qysf++QXDolKfzJa/56bgMeYKFiju73loiRM57ns8ddXpfLl792UVpRkFU62LNns6Y1LKTwapmUF4IvIuAIzd6LZNOQng64LAKXtKnViJ1JQiXwf4CEzhgvAti3/ejpb3U90hsrUcyZi6wBv9bZLcAJRWpz61JNYliM1d1grSwQDKGXNQE4xuM",
///         }],
///         "p2_s_vpn_server_config_vpn_client_revoked_certificates": [{
///             "name": "p2sVpnServerConfigVpnClientRevokedCert1",
///             "thumbprint": "83FFBFC8848B5A5836C94D0112367E16148A286F",
///         }],
///         "p2_s_vpn_server_config_vpn_client_root_certificates": [{
///             "name": "p2sVpnServerConfigVpnClientRootCert1",
///             "public_cert_data": "MIIC5zCCAc+gAwIBAgIQErQ0Hk4aDJxIA+Q5RagB+jANBgkqhkiG9w0BAQsFADAWMRQwEgYDVQQDDAtQMlNSb290Q2VydDAeFw0xNzEyMTQyMTA3MzhaFw0xODEyMTQyMTI3MzhaMBYxFDASBgNVBAMMC1AyU1Jvb3RDZXJ0MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEArP7/NQXmW7cQ/ZR1mv3Y3I29Lt7HTOqzo/1KUOoVH3NItbQIRAQbwKy3UWrOFz4eGNX2GWtNRMdCyWsKeqy9Ltsdfcm1IbKXkl84DFeU/ZacXu4Dl3xX3gV5du4TLZjEowJELyur11Ea2YcjPRQ/FzAF9/hGuboS1HZQEPLx4FdUs9OxCYOtc0MxBCwLfVTTRqarb0Ne+arNYd4kCzIhAke1nOyKAJBda5ZL+VHy3S5S8qGlD46jm8HXugmAkUygS4oIIXOmj/1O9sNAi3LN60zufSzCmP8Rm/iUGX+DHAGGiXxwZOKQLEDaZXKqoHjMPP0XudmSWwOIbyeQVrLhkwIDAQABozEwLzAOBgNVHQ8BAf8EBAMCAgQwHQYDVR0OBBYEFEfeNU2trYxNLF9ONmuJUsT13pKDMA0GCSqGSIb3DQEBCwUAA4IBAQBmM6RJzsGGipxyMhimHKN2xlkejhVsgBoTAhOU0llW9aUSwINJ9zFUGgI8IzUFy1VG776fchHp0LMRmPSIUYk5btEPxbsrPtumPuMH8EQGrS+Rt4pD+78c8H1fEPkq5CmDl/PKu4JoFGv+aFcE+Od0hlILstIF10Qysf++QXDolKfzJa/56bgMeYKFiju73loiRM57ns8ddXpfLl792UVpRkFU62LNns6Y1LKTwapmUF4IvIuAIzd6LZNOQng64LAKXtKnViJ1JQiXwf4CEzhgvAti3/ejpb3U90hsrUcyZi6wBv9bZLcAJRWpz61JNYliM1d1grSwQDKGXNQE4xuN",
///         }],
///         "radius_server_address": "8.9.9.9",
///         "radius_server_secret": "<radiusServerSecret>",
///         "vpn_client_ipsec_policies": [{
///             "dh_group": azure_native.network.DhGroup.DH_GROUP14,
///             "ike_encryption": azure_native.network.IkeEncryption.AES256,
///             "ike_integrity": azure_native.network.IkeIntegrity.SHA384,
///             "ipsec_encryption": azure_native.network.IpsecEncryption.AES256,
///             "ipsec_integrity": azure_native.network.IpsecIntegrity.SHA256,
///             "pfs_group": azure_native.network.PfsGroup.PFS14,
///             "sa_data_size_kilobytes": 429497,
///             "sa_life_time_seconds": 86472,
///         }],
///         "vpn_protocols": [azure_native.network.VpnGatewayTunnelingProtocol.IKE_V2],
///     },
///     resource_group_name="rg1",
///     virtual_wan_name="virtualWan1")
///
/// ```
///
/// ```yaml
/// resources:
///   p2sVpnServerConfiguration:
///     type: azure-native:network:P2sVpnServerConfiguration
///     properties:
///       p2SVpnServerConfigurationName: p2sVpnServerConfiguration1
///       properties:
///         p2SVpnServerConfigRadiusClientRootCertificates:
///           - name: p2sVpnServerConfigRadiusClientRootCert1
///             thumbprint: 83FFBFC8848B5A5836C94D0112367E16148A286F
///         p2SVpnServerConfigRadiusServerRootCertificates:
///           - name: p2sVpnServerConfigRadiusServerRootCert1
///             publicCertData: MIIC5zCCAc+gAwIBAgIQErQ0Hk4aDJxIA+Q5RagB+jANBgkqhkiG9w0BAQsFADAWMRQwEgYDVQQDDAtQMlNSb290Q2VydDAeFw0xNzEyMTQyMTA3MzhaFw0xODEyMTQyMTI3MzhaMBYxFDASBgNVBAMMC1AyU1Jvb3RDZXJ0MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEArP7/NQXmW7cQ/ZR1mv3Y3I29Lt7HTOqzo/1KUOoVH3NItbQIRAQbwKy3UWrOFz4eGNX2GWtNRMdCyWsKeqy9Ltsdfcm1IbKXkl84DFeU/ZacXu4Dl3xX3gV5du4TLZjEowJELyur11Ea2YcjPRQ/FzAF9/hGuboS1HZQEPLx4FdUs9OxCYOtc0MxBCwLfVTTRqarb0Ne+arNYd4kCzIhAke1nOyKAJBda5ZL+VHy3S5S8qGlD46jm8HXugmAkUygS4oIIXOmj/1O9sNAi3LN60zufSzCmP8Rm/iUGX+DHAGGiXxwZOKQLEDaZXKqoHjMPP0XudmSWwOIbyeQVrLhkwIDAQABozEwLzAOBgNVHQ8BAf8EBAMCAgQwHQYDVR0OBBYEFEfeNU2trYxNLF9ONmuJUsT13pKDMA0GCSqGSIb3DQEBCwUAA4IBAQBmM6RJzsGGipxyMhimHKN2xlkejhVsgBoTAhOU0llW9aUSwINJ9zFUGgI8IzUFy1VG776fchHp0LMRmPSIUYk5btEPxbsrPtumPuMH8EQGrS+Rt4pD+78c8H1fEPkq5CmDl/PKu4JoFGv+aFcE+Od0hlILstIF10Qysf++QXDolKfzJa/56bgMeYKFiju73loiRM57ns8ddXpfLl792UVpRkFU62LNns6Y1LKTwapmUF4IvIuAIzd6LZNOQng64LAKXtKnViJ1JQiXwf4CEzhgvAti3/ejpb3U90hsrUcyZi6wBv9bZLcAJRWpz61JNYliM1d1grSwQDKGXNQE4xuM
///         p2SVpnServerConfigVpnClientRevokedCertificates:
///           - name: p2sVpnServerConfigVpnClientRevokedCert1
///             thumbprint: 83FFBFC8848B5A5836C94D0112367E16148A286F
///         p2SVpnServerConfigVpnClientRootCertificates:
///           - name: p2sVpnServerConfigVpnClientRootCert1
///             publicCertData: MIIC5zCCAc+gAwIBAgIQErQ0Hk4aDJxIA+Q5RagB+jANBgkqhkiG9w0BAQsFADAWMRQwEgYDVQQDDAtQMlNSb290Q2VydDAeFw0xNzEyMTQyMTA3MzhaFw0xODEyMTQyMTI3MzhaMBYxFDASBgNVBAMMC1AyU1Jvb3RDZXJ0MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEArP7/NQXmW7cQ/ZR1mv3Y3I29Lt7HTOqzo/1KUOoVH3NItbQIRAQbwKy3UWrOFz4eGNX2GWtNRMdCyWsKeqy9Ltsdfcm1IbKXkl84DFeU/ZacXu4Dl3xX3gV5du4TLZjEowJELyur11Ea2YcjPRQ/FzAF9/hGuboS1HZQEPLx4FdUs9OxCYOtc0MxBCwLfVTTRqarb0Ne+arNYd4kCzIhAke1nOyKAJBda5ZL+VHy3S5S8qGlD46jm8HXugmAkUygS4oIIXOmj/1O9sNAi3LN60zufSzCmP8Rm/iUGX+DHAGGiXxwZOKQLEDaZXKqoHjMPP0XudmSWwOIbyeQVrLhkwIDAQABozEwLzAOBgNVHQ8BAf8EBAMCAgQwHQYDVR0OBBYEFEfeNU2trYxNLF9ONmuJUsT13pKDMA0GCSqGSIb3DQEBCwUAA4IBAQBmM6RJzsGGipxyMhimHKN2xlkejhVsgBoTAhOU0llW9aUSwINJ9zFUGgI8IzUFy1VG776fchHp0LMRmPSIUYk5btEPxbsrPtumPuMH8EQGrS+Rt4pD+78c8H1fEPkq5CmDl/PKu4JoFGv+aFcE+Od0hlILstIF10Qysf++QXDolKfzJa/56bgMeYKFiju73loiRM57ns8ddXpfLl792UVpRkFU62LNns6Y1LKTwapmUF4IvIuAIzd6LZNOQng64LAKXtKnViJ1JQiXwf4CEzhgvAti3/ejpb3U90hsrUcyZi6wBv9bZLcAJRWpz61JNYliM1d1grSwQDKGXNQE4xuN
///         radiusServerAddress: 8.9.9.9
///         radiusServerSecret: <radiusServerSecret>
///         vpnClientIpsecPolicies:
///           - dhGroup: DHGroup14
///             ikeEncryption: AES256
///             ikeIntegrity: SHA384
///             ipsecEncryption: AES256
///             ipsecIntegrity: SHA256
///             pfsGroup: PFS14
///             saDataSizeKilobytes: 429497
///             saLifeTimeSeconds: 86472
///         vpnProtocols:
///           - IkeV2
///       resourceGroupName: rg1
///       virtualWanName: virtualWan1
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
/// $ pulumi import azure-native:network:P2sVpnServerConfiguration p2sVpnServerConfiguration1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/virtualWans/{virtualWanName}/p2sVpnServerConfigurations/{p2SVpnServerConfigurationName}
/// ```
class P2sVpnServerConfiguration extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// A unique read-only string that changes whenever the resource is updated.
  late final pulumi.Output<String> etag;
  /// The name of the resource that is unique within a resource group. This name can be used to access the resource.
  late final pulumi.Output<String?> name;
  /// Properties of the P2SVpnServer configuration.
  late final pulumi.Output<P2SVpnServerConfigurationPropertiesResponse> properties;

  /// Creates a new [P2sVpnServerConfiguration].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [P2sVpnServerConfiguration]. {@macro pulumi_network_p2s_vpn_server_configuration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  P2sVpnServerConfiguration(
    String name, {
    P2sVpnServerConfigurationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:network:P2sVpnServerConfiguration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.etag = registerOutput<String>('etag');
    this.name = registerOutput<String?>('name');
    this.properties = registerOutput<P2SVpnServerConfigurationPropertiesResponse>('properties');
  }
}
