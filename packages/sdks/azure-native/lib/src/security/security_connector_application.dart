import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_connector_application_args.dart';
import 'system_data_response.dart';

/// Security Application over a given scope
///
/// Uses Azure REST API version 2022-07-01-preview. In version 2.x of the Azure Native provider, it used API version 2022-07-01-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create Application
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var securityConnectorApplication = new AzureNative.Security.SecurityConnectorApplication("securityConnectorApplication", new()
///     {
///         ApplicationId = "ad9a8e26-29d9-4829-bb30-e597a58cdbb8",
///         ConditionSets = new[]
///         {
///             new Dictionary<string, object?>
///             {
///                 ["conditions"] = new[]
///                 {
///                     new Dictionary<string, object?>
///                     {
///                         ["operator"] = "contains",
///                         ["property"] = "$.Id",
///                         ["value"] = "-prod-",
///                     },
///                 },
///             },
///         },
///         Description = "An application on critical GCP recommendations",
///         DisplayName = "GCP Admin's application",
///         ResourceGroupName = "gcpResourceGroup",
///         SecurityConnectorName = "gcpconnector",
///         SourceResourceType = AzureNative.Security.ApplicationSourceResourceType.Assessments,
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
/// 	security "github.com/pulumi/pulumi-azure-native-sdk/security/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := security.NewSecurityConnectorApplication(ctx, "securityConnectorApplication", &security.SecurityConnectorApplicationArgs{
/// 			ApplicationId: pulumi.String("ad9a8e26-29d9-4829-bb30-e597a58cdbb8"),
/// 			ConditionSets: pulumi.Array{
/// 				pulumi.Any(map[string]interface{}{
/// 					"conditions": []map[string]interface{}{
/// 						map[string]interface{}{
/// 							"operator": "contains",
/// 							"property": "$.Id",
/// 							"value":    "-prod-",
/// 						},
/// 					},
/// 				}),
/// 			},
/// 			Description:           pulumi.String("An application on critical GCP recommendations"),
/// 			DisplayName:           pulumi.String("GCP Admin's application"),
/// 			ResourceGroupName:     pulumi.String("gcpResourceGroup"),
/// 			SecurityConnectorName: pulumi.String("gcpconnector"),
/// 			SourceResourceType:    pulumi.String(security.ApplicationSourceResourceTypeAssessments),
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
/// resource "azure-native_security_securityconnectorapplication" "securityConnectorApplication" {
///   application_id = "ad9a8e26-29d9-4829-bb30-e597a58cdbb8"
///   condition_sets = [{
///     "conditions" = [{
///       "operator" = "contains"
///       "property" = "$.Id"
///       "value"    = "-prod-"
///     }]
///   }]
///   description             = "An application on critical GCP recommendations"
///   display_name            = "GCP Admin's application"
///   resource_group_name     = "gcpResourceGroup"
///   security_connector_name = "gcpconnector"
///   source_resource_type    = "Assessments"
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
/// import com.pulumi.azurenative.security.SecurityConnectorApplication;
/// import com.pulumi.azurenative.security.SecurityConnectorApplicationArgs;
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
///         var securityConnectorApplication = new SecurityConnectorApplication("securityConnectorApplication", SecurityConnectorApplicationArgs.builder()
///             .applicationId("ad9a8e26-29d9-4829-bb30-e597a58cdbb8")
///             .conditionSets(Map.of("conditions", Arrays.asList(Map.ofEntries(
///                 Map.entry("operator", "contains"),
///                 Map.entry("property", "$.Id"),
///                 Map.entry("value", "-prod-")
///             ))))
///             .description("An application on critical GCP recommendations")
///             .displayName("GCP Admin's application")
///             .resourceGroupName("gcpResourceGroup")
///             .securityConnectorName("gcpconnector")
///             .sourceResourceType("Assessments")
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
/// const securityConnectorApplication = new azure_native.security.SecurityConnectorApplication("securityConnectorApplication", {
///     applicationId: "ad9a8e26-29d9-4829-bb30-e597a58cdbb8",
///     conditionSets: [{
///         conditions: [{
///             operator: "contains",
///             property: "$.Id",
///             value: "-prod-",
///         }],
///     }],
///     description: "An application on critical GCP recommendations",
///     displayName: "GCP Admin's application",
///     resourceGroupName: "gcpResourceGroup",
///     securityConnectorName: "gcpconnector",
///     sourceResourceType: azure_native.security.ApplicationSourceResourceType.Assessments,
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// security_connector_application = azure_native.security.SecurityConnectorApplication("securityConnectorApplication",
///     application_id="ad9a8e26-29d9-4829-bb30-e597a58cdbb8",
///     condition_sets=[{
///         "conditions": [{
///             "operator": "contains",
///             "property": "$.Id",
///             "value": "-prod-",
///         }],
///     }],
///     description="An application on critical GCP recommendations",
///     display_name="GCP Admin's application",
///     resource_group_name="gcpResourceGroup",
///     security_connector_name="gcpconnector",
///     source_resource_type=azure_native.security.ApplicationSourceResourceType.ASSESSMENTS)
///
/// ```
///
/// ```yaml
/// resources:
///   securityConnectorApplication:
///     type: azure-native:security:SecurityConnectorApplication
///     properties:
///       applicationId: ad9a8e26-29d9-4829-bb30-e597a58cdbb8
///       conditionSets:
///         - conditions:
///             - operator: contains
///               property: $.Id
///               value: -prod-
///       description: An application on critical GCP recommendations
///       displayName: GCP Admin's application
///       resourceGroupName: gcpResourceGroup
///       securityConnectorName: gcpconnector
///       sourceResourceType: Assessments
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
/// $ pulumi import azure-native:security:SecurityConnectorApplication 1f3afdf9-d0c9-4c3d-847f-89da613e70a8 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Security/securityConnectors/{securityConnectorName}/providers/Microsoft.Security/applications/{applicationId}
/// ```
class SecurityConnectorApplication extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The application conditionSets - see examples
  late final pulumi.Output<List<Map<String, dynamic>>> conditionSets;
  /// description of the application
  late final pulumi.Output<String?> description;
  /// display name of the application
  late final pulumi.Output<String?> displayName;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The application source, what it affects, e.g. Assessments
  late final pulumi.Output<String> sourceResourceType;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [SecurityConnectorApplication].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SecurityConnectorApplication]. {@macro pulumi_security_security_connector_application_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SecurityConnectorApplication(
    String name, {
    SecurityConnectorApplicationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:security:SecurityConnectorApplication',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    conditionSets = registerOutput<List<Map<String, dynamic>>>('conditionSets');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String?>('displayName');
    this.name = registerOutput<String>('name');
    sourceResourceType = registerOutput<String>('sourceResourceType');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
