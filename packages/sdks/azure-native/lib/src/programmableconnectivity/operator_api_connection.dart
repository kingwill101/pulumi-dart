import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_properties_response.dart';
import 'operator_api_connection_args.dart';
import 'saas_properties_response.dart';
import 'status_response.dart';
import 'system_data_response.dart';

/// A Programmable Connectivity Operator API Connection resource
///
/// Uses Azure REST API version 2024-01-15-preview. In version 2.x of the Azure Native provider, it used API version 2024-01-15-preview.
///
/// Other available API versions: 2025-03-30-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native programmableconnectivity [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### OperatorApiConnections_Create
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var operatorApiConnection = new AzureNative.ProgrammableConnectivity.OperatorApiConnection("operatorApiConnection", new()
///     {
///         AccountType = AzureNative.ProgrammableConnectivity.AccountType.AzureManaged,
///         AppId = "czgrhbvgr",
///         AppSecret = "wtxnpes",
///         ConfiguredApplication = new AzureNative.ProgrammableConnectivity.Inputs.ApplicationPropertiesArgs
///         {
///             ApplicationDescription = "gjlwegnqvffvsc",
///             ApplicationType = "f",
///             LegalName = "ar",
///             Name = "idzqqen",
///             OrganizationDescription = "fcueqzlxxr",
///             PrivacyContactEmailAddress = "l",
///             TaxNumber = "ngzv",
///         },
///         GatewayId = "/subscriptions/00000000-0000-0000-0000-00000000000/resourceGroups/example-rg/providers/Microsoft.ProgrammableConnectivity/gateways/cdvcixxcdhjqw",
///         Location = "dwvzfkjoepbmksygazllqryyinn",
///         OperatorApiConnectionName = "nzsdg",
///         OperatorApiPlanId = "/subscriptions/00000000-0000-0000-0000-00000000000/providers/Microsoft.ProgrammableConnectivity/operatorApiPlans/livmzrh",
///         ResourceGroupName = "rgopenapi",
///         SaasProperties = new AzureNative.ProgrammableConnectivity.Inputs.SaasPropertiesArgs
///         {
///             SaasResourceId = "pekejefyvfviabimdrmno",
///             SaasSubscriptionId = "mgyusmqt",
///         },
///         Tags =
///         {
///             { "key5536", "bjhvpzsmtalqxmjjbsfdizhg" },
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
/// 	programmableconnectivity "github.com/pulumi/pulumi-azure-native-sdk/programmableconnectivity/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := programmableconnectivity.NewOperatorApiConnection(ctx, "operatorApiConnection", &programmableconnectivity.OperatorApiConnectionArgs{
/// 			AccountType: pulumi.String(programmableconnectivity.AccountTypeAzureManaged),
/// 			AppId:       pulumi.String("czgrhbvgr"),
/// 			AppSecret:   pulumi.String("wtxnpes"),
/// 			ConfiguredApplication: &programmableconnectivity.ApplicationPropertiesArgs{
/// 				ApplicationDescription:     pulumi.String("gjlwegnqvffvsc"),
/// 				ApplicationType:            pulumi.String("f"),
/// 				LegalName:                  pulumi.String("ar"),
/// 				Name:                       pulumi.String("idzqqen"),
/// 				OrganizationDescription:    pulumi.String("fcueqzlxxr"),
/// 				PrivacyContactEmailAddress: pulumi.String("l"),
/// 				TaxNumber:                  pulumi.String("ngzv"),
/// 			},
/// 			GatewayId:                 pulumi.String("/subscriptions/00000000-0000-0000-0000-00000000000/resourceGroups/example-rg/providers/Microsoft.ProgrammableConnectivity/gateways/cdvcixxcdhjqw"),
/// 			Location:                  pulumi.String("dwvzfkjoepbmksygazllqryyinn"),
/// 			OperatorApiConnectionName: pulumi.String("nzsdg"),
/// 			OperatorApiPlanId:         pulumi.String("/subscriptions/00000000-0000-0000-0000-00000000000/providers/Microsoft.ProgrammableConnectivity/operatorApiPlans/livmzrh"),
/// 			ResourceGroupName:         pulumi.String("rgopenapi"),
/// 			SaasProperties: &programmableconnectivity.SaasPropertiesArgs{
/// 				SaasResourceId:     pulumi.String("pekejefyvfviabimdrmno"),
/// 				SaasSubscriptionId: pulumi.String("mgyusmqt"),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"key5536": pulumi.String("bjhvpzsmtalqxmjjbsfdizhg"),
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
/// resource "azure-native_programmableconnectivity_operatorapiconnection" "operatorApiConnection" {
///   account_type = "AzureManaged"
///   app_id       = "czgrhbvgr"
///   app_secret   = "wtxnpes"
///   configured_application = {
///     application_description       = "gjlwegnqvffvsc"
///     application_type              = "f"
///     legal_name                    = "ar"
///     name                          = "idzqqen"
///     organization_description      = "fcueqzlxxr"
///     privacy_contact_email_address = "l"
///     tax_number                    = "ngzv"
///   }
///   gateway_id                   = "/subscriptions/00000000-0000-0000-0000-00000000000/resourceGroups/example-rg/providers/Microsoft.ProgrammableConnectivity/gateways/cdvcixxcdhjqw"
///   location                     = "dwvzfkjoepbmksygazllqryyinn"
///   operator_api_connection_name = "nzsdg"
///   operator_api_plan_id         = "/subscriptions/00000000-0000-0000-0000-00000000000/providers/Microsoft.ProgrammableConnectivity/operatorApiPlans/livmzrh"
///   resource_group_name          = "rgopenapi"
///   saas_properties = {
///     saas_resource_id     = "pekejefyvfviabimdrmno"
///     saas_subscription_id = "mgyusmqt"
///   }
///   tags = {
///     "key5536" = "bjhvpzsmtalqxmjjbsfdizhg"
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
/// import com.pulumi.azurenative.programmableconnectivity.OperatorApiConnection;
/// import com.pulumi.azurenative.programmableconnectivity.OperatorApiConnectionArgs;
/// import com.pulumi.azurenative.programmableconnectivity.inputs.ApplicationPropertiesArgs;
/// import com.pulumi.azurenative.programmableconnectivity.inputs.SaasPropertiesArgs;
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
///         var operatorApiConnection = new OperatorApiConnection("operatorApiConnection", OperatorApiConnectionArgs.builder()
///             .accountType("AzureManaged")
///             .appId("czgrhbvgr")
///             .appSecret("wtxnpes")
///             .configuredApplication(ApplicationPropertiesArgs.builder()
///                 .applicationDescription("gjlwegnqvffvsc")
///                 .applicationType("f")
///                 .legalName("ar")
///                 .name("idzqqen")
///                 .organizationDescription("fcueqzlxxr")
///                 .privacyContactEmailAddress("l")
///                 .taxNumber("ngzv")
///                 .build())
///             .gatewayId("/subscriptions/00000000-0000-0000-0000-00000000000/resourceGroups/example-rg/providers/Microsoft.ProgrammableConnectivity/gateways/cdvcixxcdhjqw")
///             .location("dwvzfkjoepbmksygazllqryyinn")
///             .operatorApiConnectionName("nzsdg")
///             .operatorApiPlanId("/subscriptions/00000000-0000-0000-0000-00000000000/providers/Microsoft.ProgrammableConnectivity/operatorApiPlans/livmzrh")
///             .resourceGroupName("rgopenapi")
///             .saasProperties(SaasPropertiesArgs.builder()
///                 .saasResourceId("pekejefyvfviabimdrmno")
///                 .saasSubscriptionId("mgyusmqt")
///                 .build())
///             .tags(Map.of("key5536", "bjhvpzsmtalqxmjjbsfdizhg"))
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
/// const operatorApiConnection = new azure_native.programmableconnectivity.OperatorApiConnection("operatorApiConnection", {
///     accountType: azure_native.programmableconnectivity.AccountType.AzureManaged,
///     appId: "czgrhbvgr",
///     appSecret: "wtxnpes",
///     configuredApplication: {
///         applicationDescription: "gjlwegnqvffvsc",
///         applicationType: "f",
///         legalName: "ar",
///         name: "idzqqen",
///         organizationDescription: "fcueqzlxxr",
///         privacyContactEmailAddress: "l",
///         taxNumber: "ngzv",
///     },
///     gatewayId: "/subscriptions/00000000-0000-0000-0000-00000000000/resourceGroups/example-rg/providers/Microsoft.ProgrammableConnectivity/gateways/cdvcixxcdhjqw",
///     location: "dwvzfkjoepbmksygazllqryyinn",
///     operatorApiConnectionName: "nzsdg",
///     operatorApiPlanId: "/subscriptions/00000000-0000-0000-0000-00000000000/providers/Microsoft.ProgrammableConnectivity/operatorApiPlans/livmzrh",
///     resourceGroupName: "rgopenapi",
///     saasProperties: {
///         saasResourceId: "pekejefyvfviabimdrmno",
///         saasSubscriptionId: "mgyusmqt",
///     },
///     tags: {
///         key5536: "bjhvpzsmtalqxmjjbsfdizhg",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// operator_api_connection = azure_native.programmableconnectivity.OperatorApiConnection("operatorApiConnection",
///     account_type=azure_native.programmableconnectivity.AccountType.AZURE_MANAGED,
///     app_id="czgrhbvgr",
///     app_secret="wtxnpes",
///     configured_application={
///         "application_description": "gjlwegnqvffvsc",
///         "application_type": "f",
///         "legal_name": "ar",
///         "name": "idzqqen",
///         "organization_description": "fcueqzlxxr",
///         "privacy_contact_email_address": "l",
///         "tax_number": "ngzv",
///     },
///     gateway_id="/subscriptions/00000000-0000-0000-0000-00000000000/resourceGroups/example-rg/providers/Microsoft.ProgrammableConnectivity/gateways/cdvcixxcdhjqw",
///     location="dwvzfkjoepbmksygazllqryyinn",
///     operator_api_connection_name="nzsdg",
///     operator_api_plan_id="/subscriptions/00000000-0000-0000-0000-00000000000/providers/Microsoft.ProgrammableConnectivity/operatorApiPlans/livmzrh",
///     resource_group_name="rgopenapi",
///     saas_properties={
///         "saas_resource_id": "pekejefyvfviabimdrmno",
///         "saas_subscription_id": "mgyusmqt",
///     },
///     tags={
///         "key5536": "bjhvpzsmtalqxmjjbsfdizhg",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   operatorApiConnection:
///     type: azure-native:programmableconnectivity:OperatorApiConnection
///     properties:
///       accountType: AzureManaged
///       appId: czgrhbvgr
///       appSecret: wtxnpes
///       configuredApplication:
///         applicationDescription: gjlwegnqvffvsc
///         applicationType: f
///         legalName: ar
///         name: idzqqen
///         organizationDescription: fcueqzlxxr
///         privacyContactEmailAddress: l
///         taxNumber: ngzv
///       gatewayId: /subscriptions/00000000-0000-0000-0000-00000000000/resourceGroups/example-rg/providers/Microsoft.ProgrammableConnectivity/gateways/cdvcixxcdhjqw
///       location: dwvzfkjoepbmksygazllqryyinn
///       operatorApiConnectionName: nzsdg
///       operatorApiPlanId: /subscriptions/00000000-0000-0000-0000-00000000000/providers/Microsoft.ProgrammableConnectivity/operatorApiPlans/livmzrh
///       resourceGroupName: rgopenapi
///       saasProperties:
///         saasResourceId: pekejefyvfviabimdrmno
///         saasSubscriptionId: mgyusmqt
///       tags:
///         key5536: bjhvpzsmtalqxmjjbsfdizhg
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
/// $ pulumi import azure-native:programmableconnectivity:OperatorApiConnection zsilgtpflhroamaglfbywbn /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ProgrammableConnectivity/operatorApiConnections/{operatorApiConnectionName}
/// ```
class OperatorApiConnection extends pulumi.CustomResource {
  /// Type of the account the user has with the Operator's Network API infrastructure. AzureManaged | UserManaged.
  late final pulumi.Output<String> accountType;
  /// Application ID of the App Developer that is registered with the Operator in a specific country/region.
  late final pulumi.Output<String?> appId;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The Network API for the current operator in the country/region provided in the linked Operator API Plan.
  late final pulumi.Output<String> camaraApiName;
  /// Details about the Application that would use the Operator's Network APIs.
  late final pulumi.Output<ApplicationPropertiesResponse?> configuredApplication;
  /// Reference to the APC Gateway resource ID.
  late final pulumi.Output<String> gatewayId;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Reference to the Operator API Plan Resource ID.
  late final pulumi.Output<String> operatorApiPlanId;
  /// Name of the Operator in the linked Operator API Plan belongs to.
  late final pulumi.Output<String> operatorName;
  /// The status of the last operation.
  late final pulumi.Output<String> provisioningState;
  /// Details about the SaaS offer purchased from the marketplace.
  late final pulumi.Output<SaasPropertiesResponse?> saasProperties;
  /// The status of the OperatorApiConnection resource.
  late final pulumi.Output<StatusResponse> status;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [OperatorApiConnection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [OperatorApiConnection]. {@macro pulumi_programmableconnectivity_operator_api_connection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  OperatorApiConnection(
    String name, {
    OperatorApiConnectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:programmableconnectivity:OperatorApiConnection',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountType = registerOutput<String>('accountType');
    appId = registerOutput<String?>('appId');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    camaraApiName = registerOutput<String>('camaraApiName');
    configuredApplication = registerOutput<ApplicationPropertiesResponse?>('configuredApplication', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApplicationPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    gatewayId = registerOutput<String>('gatewayId');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    operatorApiPlanId = registerOutput<String>('operatorApiPlanId');
    operatorName = registerOutput<String>('operatorName');
    provisioningState = registerOutput<String>('provisioningState');
    saasProperties = registerOutput<SaasPropertiesResponse?>('saasProperties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SaasPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    status = registerOutput<StatusResponse>('status', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StatusResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
