import 'package:pulumi/pulumi.dart' as pulumi;
import 'contact_detail_response.dart';
import 'peer_asn_args.dart';

/// The essential information related to the peer's ASN.
///
/// Uses Azure REST API version 2022-10-01. In version 2.x of the Azure Native provider, it used API version 2022-10-01.
///
/// Other available API versions: 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native peering [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create a peer ASN
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var peerAsn = new AzureNative.Peering.PeerAsn("peerAsn", new()
///     {
///         PeerAsn = 65000,
///         PeerAsnName = "peerAsnName",
///         PeerContactDetail = new[]
///         {
///             new AzureNative.Peering.Inputs.ContactDetailArgs
///             {
///                 Email = "noc@contoso.com",
///                 Phone = "+1 (234) 567-8999",
///                 Role = AzureNative.Peering.Role.Noc,
///             },
///             new AzureNative.Peering.Inputs.ContactDetailArgs
///             {
///                 Email = "abc@contoso.com",
///                 Phone = "+1 (234) 567-8900",
///                 Role = AzureNative.Peering.Role.Policy,
///             },
///             new AzureNative.Peering.Inputs.ContactDetailArgs
///             {
///                 Email = "xyz@contoso.com",
///                 Phone = "+1 (234) 567-8900",
///                 Role = AzureNative.Peering.Role.Technical,
///             },
///         },
///         PeerName = "Contoso",
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
/// 	peering "github.com/pulumi/pulumi-azure-native-sdk/peering/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := peering.NewPeerAsn(ctx, "peerAsn", &peering.PeerAsnArgs{
/// 			PeerAsn:     pulumi.Int(65000),
/// 			PeerAsnName: pulumi.String("peerAsnName"),
/// 			PeerContactDetail: peering.ContactDetailArray{
/// 				&peering.ContactDetailArgs{
/// 					Email: pulumi.String("noc@contoso.com"),
/// 					Phone: pulumi.String("+1 (234) 567-8999"),
/// 					Role:  pulumi.String(peering.RoleNoc),
/// 				},
/// 				&peering.ContactDetailArgs{
/// 					Email: pulumi.String("abc@contoso.com"),
/// 					Phone: pulumi.String("+1 (234) 567-8900"),
/// 					Role:  pulumi.String(peering.RolePolicy),
/// 				},
/// 				&peering.ContactDetailArgs{
/// 					Email: pulumi.String("xyz@contoso.com"),
/// 					Phone: pulumi.String("+1 (234) 567-8900"),
/// 					Role:  pulumi.String(peering.RoleTechnical),
/// 				},
/// 			},
/// 			PeerName: pulumi.String("Contoso"),
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
/// resource "azure-native_peering_peerasn" "peerAsn" {
///   peer_asn      = 65000
///   peer_asn_name = "peerAsnName"
///   peer_contact_detail {
///     email = "noc@contoso.com"
///     phone = "+1 (234) 567-8999"
///     role  = "Noc"
///   }
///   peer_contact_detail {
///     email = "abc@contoso.com"
///     phone = "+1 (234) 567-8900"
///     role  = "Policy"
///   }
///   peer_contact_detail {
///     email = "xyz@contoso.com"
///     phone = "+1 (234) 567-8900"
///     role  = "Technical"
///   }
///   peer_name = "Contoso"
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
/// import com.pulumi.azurenative.peering.PeerAsn;
/// import com.pulumi.azurenative.peering.PeerAsnArgs;
/// import com.pulumi.azurenative.peering.inputs.ContactDetailArgs;
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
///         var peerAsn = new PeerAsn("peerAsn", PeerAsnArgs.builder()
///             .peerAsn(65000)
///             .peerAsnName("peerAsnName")
///             .peerContactDetail(
///                 ContactDetailArgs.builder()
///                     .email("noc@contoso.com")
///                     .phone("+1 (234) 567-8999")
///                     .role("Noc")
///                     .build(),
///                 ContactDetailArgs.builder()
///                     .email("abc@contoso.com")
///                     .phone("+1 (234) 567-8900")
///                     .role("Policy")
///                     .build(),
///                 ContactDetailArgs.builder()
///                     .email("xyz@contoso.com")
///                     .phone("+1 (234) 567-8900")
///                     .role("Technical")
///                     .build())
///             .peerName("Contoso")
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
/// const peerAsn = new azure_native.peering.PeerAsn("peerAsn", {
///     peerAsn: 65000,
///     peerAsnName: "peerAsnName",
///     peerContactDetail: [
///         {
///             email: "noc@contoso.com",
///             phone: "+1 (234) 567-8999",
///             role: azure_native.peering.Role.Noc,
///         },
///         {
///             email: "abc@contoso.com",
///             phone: "+1 (234) 567-8900",
///             role: azure_native.peering.Role.Policy,
///         },
///         {
///             email: "xyz@contoso.com",
///             phone: "+1 (234) 567-8900",
///             role: azure_native.peering.Role.Technical,
///         },
///     ],
///     peerName: "Contoso",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// peer_asn = azure_native.peering.PeerAsn("peerAsn",
///     peer_asn=65000,
///     peer_asn_name="peerAsnName",
///     peer_contact_detail=[
///         {
///             "email": "noc@contoso.com",
///             "phone": "+1 (234) 567-8999",
///             "role": azure_native.peering.Role.NOC,
///         },
///         {
///             "email": "abc@contoso.com",
///             "phone": "+1 (234) 567-8900",
///             "role": azure_native.peering.Role.POLICY,
///         },
///         {
///             "email": "xyz@contoso.com",
///             "phone": "+1 (234) 567-8900",
///             "role": azure_native.peering.Role.TECHNICAL,
///         },
///     ],
///     peer_name="Contoso")
///
/// ```
///
/// ```yaml
/// resources:
///   peerAsn:
///     type: azure-native:peering:PeerAsn
///     properties:
///       peerAsn: 65000
///       peerAsnName: peerAsnName
///       peerContactDetail:
///         - email: noc@contoso.com
///           phone: +1 (234) 567-8999
///           role: Noc
///         - email: abc@contoso.com
///           phone: +1 (234) 567-8900
///           role: Policy
///         - email: xyz@contoso.com
///           phone: +1 (234) 567-8900
///           role: Technical
///       peerName: Contoso
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
/// $ pulumi import azure-native:peering:PeerAsn peerAsnName /subscriptions/{subscriptionId}/providers/Microsoft.Peering/peerAsns/{peerAsnName}
/// ```
class PeerAsn extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The error message for the validation state
  late final pulumi.Output<String> errorMessage;
  /// The name of the resource.
  late final pulumi.Output<String> name;
  /// The Autonomous System Number (ASN) of the peer.
  late final pulumi.Output<int?> peerAsn;
  /// The contact details of the peer.
  late final pulumi.Output<List<ContactDetailResponse>?> peerContactDetail;
  /// The name of the peer.
  late final pulumi.Output<String?> peerName;
  /// The type of the resource.
  late final pulumi.Output<String> type;
  /// The validation state of the ASN associated with the peer.
  late final pulumi.Output<String> validationState;

  /// Creates a new [PeerAsn].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PeerAsn]. {@macro pulumi_peering_peer_asn_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PeerAsn(
    String name, {
    PeerAsnArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:peering:PeerAsn',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    errorMessage = registerOutput<String>('errorMessage');
    this.name = registerOutput<String>('name');
    peerAsn = registerOutput<int?>('peerAsn');
    peerContactDetail = registerOutput<List<ContactDetailResponse>?>('peerContactDetail', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ContactDetailResponse>(guardedValue, (value) => ContactDetailResponse.fromMap((value as Map).cast<String, dynamic>())); });
    peerName = registerOutput<String?>('peerName');
    type = registerOutput<String>('type');
    validationState = registerOutput<String>('validationState');
  }

  /// Creates a typed reference to an existing [PeerAsn] resource.
  PeerAsn.reference(String urn)
    : super(
        'azure-native:peering:PeerAsn',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    errorMessage = registerOutput<String>('errorMessage');
    this.name = registerOutput<String>('name');
    peerAsn = registerOutput<int?>('peerAsn');
    peerContactDetail = registerOutput<List<ContactDetailResponse>?>('peerContactDetail', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ContactDetailResponse>(guardedValue, (value) => ContactDetailResponse.fromMap((value as Map).cast<String, dynamic>())); });
    peerName = registerOutput<String?>('peerName');
    type = registerOutput<String>('type');
    validationState = registerOutput<String>('validationState');
  }
}
