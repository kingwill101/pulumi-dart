import 'package:pulumi/pulumi.dart' as pulumi;
import 'ledger_args.dart';
import 'ledger_azuread_based_service_principal.dart';
import 'ledger_certificate_based_security_principal.dart';
import 'ledger_state.dart';

/// Manages a Confidential Ledger.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const current = azure.core.getClientConfig({});
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-resources",
///     location: "West Europe",
/// });
/// const ledger = new azure.confidentialledger.Ledger("ledger", {
///     name: "example-ledger",
///     resourceGroupName: example.name,
///     location: example.location,
///     ledgerType: "Private",
///     azureadBasedServicePrincipals: [{
///         principalId: current.then(current => current.objectId),
///         tenantId: current.then(current => current.tenantId),
///         ledgerRoleName: "Administrator",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// current = azure.core.get_client_config()
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// ledger = azure.confidentialledger.Ledger("ledger",
///     name="example-ledger",
///     resource_group_name=example.name,
///     location=example.location,
///     ledger_type="Private",
///     azuread_based_service_principals=[{
///         "principal_id": current.object_id,
///         "tenant_id": current.tenant_id,
///         "ledger_role_name": "Administrator",
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
///     var current = Azure.Core.GetClientConfig.Invoke();
///
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var ledger = new Azure.ConfidentialLedger.Ledger("ledger", new()
///     {
///         Name = "example-ledger",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         LedgerType = "Private",
///         AzureadBasedServicePrincipals = new[]
///         {
///             new Azure.ConfidentialLedger.Inputs.LedgerAzureadBasedServicePrincipalArgs
///             {
///                 PrincipalId = current.Apply(getClientConfigResult => getClientConfigResult.ObjectId),
///                 TenantId = current.Apply(getClientConfigResult => getClientConfigResult.TenantId),
///                 LedgerRoleName = "Administrator",
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/confidentialledger"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		current, err := core.GetClientConfig(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-resources"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = confidentialledger.NewLedger(ctx, "ledger", &confidentialledger.LedgerArgs{
/// 			Name:              pulumi.String("example-ledger"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			LedgerType:        pulumi.String("Private"),
/// 			AzureadBasedServicePrincipals: confidentialledger.LedgerAzureadBasedServicePrincipalArray{
/// 				&confidentialledger.LedgerAzureadBasedServicePrincipalArgs{
/// 					PrincipalId:    pulumi.String(current.ObjectId),
/// 					TenantId:       pulumi.String(current.TenantId),
/// 					LedgerRoleName: pulumi.String("Administrator"),
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
/// data "azure_core_getclientconfig" "current" {
/// }
///
/// resource "azure_core_resourcegroup" "example" {
///   name     = "example-resources"
///   location = "West Europe"
/// }
/// resource "azure_confidentialledger_ledger" "ledger" {
///   name                = "example-ledger"
///   resource_group_name = azure_core_resourcegroup.example.name
///   location            = azure_core_resourcegroup.example.location
///   ledger_type         = "Private"
///   azuread_based_service_principals {
///     principal_id     = data.azure_core_getclientconfig.current.object_id
///     tenant_id        = data.azure_core_getclientconfig.current.tenant_id
///     ledger_role_name = "Administrator"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.core.CoreFunctions;
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.confidentialledger.Ledger;
/// import com.pulumi.azure.confidentialledger.LedgerArgs;
/// import com.pulumi.azure.confidentialledger.inputs.LedgerAzureadBasedServicePrincipalArgs;
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
///         final var current = CoreFunctions.getClientConfig(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var ledger = new Ledger("ledger", LedgerArgs.builder()
///             .name("example-ledger")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .ledgerType("Private")
///             .azureadBasedServicePrincipals(LedgerAzureadBasedServicePrincipalArgs.builder()
///                 .principalId(current.objectId())
///                 .tenantId(current.tenantId())
///                 .ledgerRoleName("Administrator")
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
///   ledger:
///     type: azure:confidentialledger:Ledger
///     properties:
///       name: example-ledger
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       ledgerType: Private
///       azureadBasedServicePrincipals:
///         - principalId: ${current.objectId}
///           tenantId: ${current.tenantId}
///           ledgerRoleName: Administrator
/// variables:
///   current:
///     fn::invoke:
///       function: azure:core:getClientConfig
///       arguments: {}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.ConfidentialLedger` - 2022-05-13
///
/// ## Import
///
/// Confidential Ledgers can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:confidentialledger/ledger:Ledger example /subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-group/providers/Microsoft.ConfidentialLedger/ledgers/example-ledger
/// ```
class Ledger extends pulumi.CustomResource {
  /// A list of `azureadBasedServicePrincipal` blocks as defined below.
  late final pulumi.Output<List<LedgerAzureadBasedServicePrincipal>> azureadBasedServicePrincipals;
  /// A list of `certificateBasedSecurityPrincipal` blocks as defined below.
  late final pulumi.Output<List<LedgerCertificateBasedSecurityPrincipal>?> certificateBasedSecurityPrincipals;
  /// The Identity Service Endpoint for this Confidential Ledger.
  late final pulumi.Output<String> identityServiceEndpoint;
  /// The Endpoint for this Confidential Ledger.
  late final pulumi.Output<String> ledgerEndpoint;
  /// Specifies the type of Confidential Ledger. Possible values are `Private` and `Public`. Changing this forces a new resource to be created.
  late final pulumi.Output<String> ledgerType;
  /// Specifies the supported Azure location where the Confidential Ledger exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;
  /// Specifies the name of the Confidential Ledger. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The name of the Resource Group where the Confidential Ledger exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// A mapping of tags to assign to the Confidential Ledger.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [Ledger].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Ledger]. {@macro pulumi_confidentialledger_ledger_ledger_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Ledger(
    String name, {
    LedgerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:confidentialledger/ledger:Ledger',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
        ) {
    azureadBasedServicePrincipals = registerOutput<List<LedgerAzureadBasedServicePrincipal>>('azureadBasedServicePrincipals', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<LedgerAzureadBasedServicePrincipal>(guardedValue, (value) => LedgerAzureadBasedServicePrincipal.fromMap((value as Map).cast<String, dynamic>())); });
    certificateBasedSecurityPrincipals = registerOutput<List<LedgerCertificateBasedSecurityPrincipal>?>('certificateBasedSecurityPrincipals', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<LedgerCertificateBasedSecurityPrincipal>(guardedValue, (value) => LedgerCertificateBasedSecurityPrincipal.fromMap((value as Map).cast<String, dynamic>())); });
    identityServiceEndpoint = registerOutput<String>('identityServiceEndpoint');
    ledgerEndpoint = registerOutput<String>('ledgerEndpoint');
    ledgerType = registerOutput<String>('ledgerType');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Gets an existing [Ledger] resource's state with the given [name] and [id].
  static Ledger get(
    String name,
    pulumi.Input<String> id, {
    LedgerState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Ledger._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Ledger._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:confidentialledger/ledger:Ledger',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureadBasedServicePrincipals = registerOutput<List<LedgerAzureadBasedServicePrincipal>>('azureadBasedServicePrincipals', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<LedgerAzureadBasedServicePrincipal>(guardedValue, (value) => LedgerAzureadBasedServicePrincipal.fromMap((value as Map).cast<String, dynamic>())); });
    certificateBasedSecurityPrincipals = registerOutput<List<LedgerCertificateBasedSecurityPrincipal>?>('certificateBasedSecurityPrincipals', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<LedgerCertificateBasedSecurityPrincipal>(guardedValue, (value) => LedgerCertificateBasedSecurityPrincipal.fromMap((value as Map).cast<String, dynamic>())); });
    identityServiceEndpoint = registerOutput<String>('identityServiceEndpoint');
    ledgerEndpoint = registerOutput<String>('ledgerEndpoint');
    ledgerType = registerOutput<String>('ledgerType');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Creates a typed reference to an existing [Ledger] resource.
  Ledger.reference(String urn)
    : super(
        'azure:confidentialledger/ledger:Ledger',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureadBasedServicePrincipals = registerOutput<List<LedgerAzureadBasedServicePrincipal>>('azureadBasedServicePrincipals', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<LedgerAzureadBasedServicePrincipal>(guardedValue, (value) => LedgerAzureadBasedServicePrincipal.fromMap((value as Map).cast<String, dynamic>())); });
    certificateBasedSecurityPrincipals = registerOutput<List<LedgerCertificateBasedSecurityPrincipal>?>('certificateBasedSecurityPrincipals', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<LedgerCertificateBasedSecurityPrincipal>(guardedValue, (value) => LedgerCertificateBasedSecurityPrincipal.fromMap((value as Map).cast<String, dynamic>())); });
    identityServiceEndpoint = registerOutput<String>('identityServiceEndpoint');
    ledgerEndpoint = registerOutput<String>('ledgerEndpoint');
    ledgerType = registerOutput<String>('ledgerType');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }
}
