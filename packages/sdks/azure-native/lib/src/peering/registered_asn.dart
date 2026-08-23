import 'package:pulumi/pulumi.dart' as pulumi;
import 'registered_asn_args.dart';

/// The customer's ASN that is registered by the peering service provider.
///
/// Uses Azure REST API version 2022-10-01. In version 2.x of the Azure Native provider, it used API version 2022-10-01.
///
/// Other available API versions: 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native peering [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or update a registered ASN for the peering
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var registeredAsn = new AzureNative.Peering.RegisteredAsn("registeredAsn", new()
///     {
///         Asn = 65000,
///         PeeringName = "peeringName",
///         RegisteredAsnName = "registeredAsnName",
///         ResourceGroupName = "rgName",
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
/// 		_, err := peering.NewRegisteredAsn(ctx, "registeredAsn", &peering.RegisteredAsnArgs{
/// 			Asn:               pulumi.Int(65000),
/// 			PeeringName:       pulumi.String("peeringName"),
/// 			RegisteredAsnName: pulumi.String("registeredAsnName"),
/// 			ResourceGroupName: pulumi.String("rgName"),
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
/// resource "azure-native_peering_registeredasn" "registeredAsn" {
///   asn                 = 65000
///   peering_name        = "peeringName"
///   registered_asn_name = "registeredAsnName"
///   resource_group_name = "rgName"
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
/// import com.pulumi.azurenative.peering.RegisteredAsn;
/// import com.pulumi.azurenative.peering.RegisteredAsnArgs;
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
///         var registeredAsn = new RegisteredAsn("registeredAsn", RegisteredAsnArgs.builder()
///             .asn(65000)
///             .peeringName("peeringName")
///             .registeredAsnName("registeredAsnName")
///             .resourceGroupName("rgName")
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
/// const registeredAsn = new azure_native.peering.RegisteredAsn("registeredAsn", {
///     asn: 65000,
///     peeringName: "peeringName",
///     registeredAsnName: "registeredAsnName",
///     resourceGroupName: "rgName",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// registered_asn = azure_native.peering.RegisteredAsn("registeredAsn",
///     asn=65000,
///     peering_name="peeringName",
///     registered_asn_name="registeredAsnName",
///     resource_group_name="rgName")
///
/// ```
///
/// ```yaml
/// resources:
///   registeredAsn:
///     type: azure-native:peering:RegisteredAsn
///     properties:
///       asn: 65000
///       peeringName: peeringName
///       registeredAsnName: registeredAsnName
///       resourceGroupName: rgName
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
/// $ pulumi import azure-native:peering:RegisteredAsn registeredAsnName /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Peering/peerings/{peeringName}/registeredAsns/{registeredAsnName}
/// ```
class RegisteredAsn extends pulumi.CustomResource {
  /// The customer's ASN from which traffic originates.
  late final pulumi.Output<int?> asn;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The name of the resource.
  late final pulumi.Output<String> name;
  /// The peering service prefix key that is to be shared with the customer.
  late final pulumi.Output<String> peeringServicePrefixKey;
  /// The provisioning state of the resource.
  late final pulumi.Output<String> provisioningState;
  /// The type of the resource.
  late final pulumi.Output<String> type;

  /// Creates a new [RegisteredAsn].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RegisteredAsn]. {@macro pulumi_peering_registered_asn_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RegisteredAsn(
    String name, {
    RegisteredAsnArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:peering:RegisteredAsn',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    asn = registerOutput<int?>('asn');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    peeringServicePrefixKey = registerOutput<String>('peeringServicePrefixKey');
    provisioningState = registerOutput<String>('provisioningState');
    type = registerOutput<String>('type');
  }
}
