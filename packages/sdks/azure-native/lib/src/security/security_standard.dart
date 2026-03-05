import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_standard_args.dart';
import 'standard_metadata_response.dart';

/// Security Standard on a resource
///
/// Uses Azure REST API version 2024-08-01. In version 2.x of the Azure Native provider, it used API version 2024-08-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or update security standard over management group scope
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var securityStandard = new AzureNative.Security.SecurityStandard("securityStandard", new()
///     {
///         Assessments = new[]
///         {
///             new AzureNative.Security.Inputs.PartialAssessmentPropertiesArgs
///             {
///                 AssessmentKey = "1195afff-c881-495e-9bc5-1486211ae03f",
///             },
///             new AzureNative.Security.Inputs.PartialAssessmentPropertiesArgs
///             {
///                 AssessmentKey = "dbd0cb49-b563-45e7-9724-889e799fa648",
///             },
///         },
///         CloudProviders = new[]
///         {
///             AzureNative.Security.StandardSupportedCloud.GCP,
///         },
///         Description = "description of Azure Test Security Standard 1",
///         DisplayName = "Azure Test Security Standard 1",
///         PolicySetDefinitionId = "/subscriptions/20ff7fc3-e762-44dd-bd96-b71116dcdc23/providers/Microsoft.Authorization/policySetDefinitions/patchorchestration-applicationversions",
///         Scope = "providers/Microsoft.Management/managementGroups/contoso",
///         StandardId = "8bb8be0a-6010-4789-812f-e4d661c4ed0e",
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
/// 		_, err := security.NewSecurityStandard(ctx, "securityStandard", &security.SecurityStandardArgs{
/// 			Assessments: security.PartialAssessmentPropertiesArray{
/// 				&security.PartialAssessmentPropertiesArgs{
/// 					AssessmentKey: pulumi.String("1195afff-c881-495e-9bc5-1486211ae03f"),
/// 				},
/// 				&security.PartialAssessmentPropertiesArgs{
/// 					AssessmentKey: pulumi.String("dbd0cb49-b563-45e7-9724-889e799fa648"),
/// 				},
/// 			},
/// 			CloudProviders: pulumi.StringArray{
/// 				pulumi.String(security.StandardSupportedCloudGCP),
/// 			},
/// 			Description:           pulumi.String("description of Azure Test Security Standard 1"),
/// 			DisplayName:           pulumi.String("Azure Test Security Standard 1"),
/// 			PolicySetDefinitionId: pulumi.String("/subscriptions/20ff7fc3-e762-44dd-bd96-b71116dcdc23/providers/Microsoft.Authorization/policySetDefinitions/patchorchestration-applicationversions"),
/// 			Scope:                 pulumi.String("providers/Microsoft.Management/managementGroups/contoso"),
/// 			StandardId:            pulumi.String("8bb8be0a-6010-4789-812f-e4d661c4ed0e"),
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
/// import com.pulumi.azurenative.security.SecurityStandard;
/// import com.pulumi.azurenative.security.SecurityStandardArgs;
/// import com.pulumi.azurenative.security.inputs.PartialAssessmentPropertiesArgs;
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
///         var securityStandard = new SecurityStandard("securityStandard", SecurityStandardArgs.builder()
///             .assessments(
///                 PartialAssessmentPropertiesArgs.builder()
///                     .assessmentKey("1195afff-c881-495e-9bc5-1486211ae03f")
///                     .build(),
///                 PartialAssessmentPropertiesArgs.builder()
///                     .assessmentKey("dbd0cb49-b563-45e7-9724-889e799fa648")
///                     .build())
///             .cloudProviders("GCP")
///             .description("description of Azure Test Security Standard 1")
///             .displayName("Azure Test Security Standard 1")
///             .policySetDefinitionId("/subscriptions/20ff7fc3-e762-44dd-bd96-b71116dcdc23/providers/Microsoft.Authorization/policySetDefinitions/patchorchestration-applicationversions")
///             .scope("providers/Microsoft.Management/managementGroups/contoso")
///             .standardId("8bb8be0a-6010-4789-812f-e4d661c4ed0e")
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
/// const securityStandard = new azure_native.security.SecurityStandard("securityStandard", {
///     assessments: [
///         {
///             assessmentKey: "1195afff-c881-495e-9bc5-1486211ae03f",
///         },
///         {
///             assessmentKey: "dbd0cb49-b563-45e7-9724-889e799fa648",
///         },
///     ],
///     cloudProviders: [azure_native.security.StandardSupportedCloud.GCP],
///     description: "description of Azure Test Security Standard 1",
///     displayName: "Azure Test Security Standard 1",
///     policySetDefinitionId: "/subscriptions/20ff7fc3-e762-44dd-bd96-b71116dcdc23/providers/Microsoft.Authorization/policySetDefinitions/patchorchestration-applicationversions",
///     scope: "providers/Microsoft.Management/managementGroups/contoso",
///     standardId: "8bb8be0a-6010-4789-812f-e4d661c4ed0e",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// security_standard = azure_native.security.SecurityStandard("securityStandard",
///     assessments=[
///         {
///             "assessment_key": "1195afff-c881-495e-9bc5-1486211ae03f",
///         },
///         {
///             "assessment_key": "dbd0cb49-b563-45e7-9724-889e799fa648",
///         },
///     ],
///     cloud_providers=[azure_native.security.StandardSupportedCloud.GCP],
///     description="description of Azure Test Security Standard 1",
///     display_name="Azure Test Security Standard 1",
///     policy_set_definition_id="/subscriptions/20ff7fc3-e762-44dd-bd96-b71116dcdc23/providers/Microsoft.Authorization/policySetDefinitions/patchorchestration-applicationversions",
///     scope="providers/Microsoft.Management/managementGroups/contoso",
///     standard_id="8bb8be0a-6010-4789-812f-e4d661c4ed0e")
///
/// ```
///
/// ```yaml
/// resources:
///   securityStandard:
///     type: azure-native:security:SecurityStandard
///     properties:
///       assessments:
///         - assessmentKey: 1195afff-c881-495e-9bc5-1486211ae03f
///         - assessmentKey: dbd0cb49-b563-45e7-9724-889e799fa648
///       cloudProviders:
///         - GCP
///       description: description of Azure Test Security Standard 1
///       displayName: Azure Test Security Standard 1
///       policySetDefinitionId: /subscriptions/20ff7fc3-e762-44dd-bd96-b71116dcdc23/providers/Microsoft.Authorization/policySetDefinitions/patchorchestration-applicationversions
///       scope: providers/Microsoft.Management/managementGroups/contoso
///       standardId: 8bb8be0a-6010-4789-812f-e4d661c4ed0e
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create or update security standard over security connector scope
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var securityStandard = new AzureNative.Security.SecurityStandard("securityStandard", new()
///     {
///         Assessments = new[]
///         {
///             new AzureNative.Security.Inputs.PartialAssessmentPropertiesArgs
///             {
///                 AssessmentKey = "1195afff-c881-495e-9bc5-1486211ae03f",
///             },
///             new AzureNative.Security.Inputs.PartialAssessmentPropertiesArgs
///             {
///                 AssessmentKey = "dbd0cb49-b563-45e7-9724-889e799fa648",
///             },
///         },
///         CloudProviders = new[]
///         {
///             AzureNative.Security.StandardSupportedCloud.GCP,
///         },
///         Description = "description of Azure Test Security Standard 1",
///         DisplayName = "Azure Test Security Standard 1",
///         Scope = "subscriptions/20ff7fc3-e762-44dd-bd96-b71116dcdc23/resourceGroups/gcpResourceGroup/providers/Microsoft.Security/securityConnectors/gcpconnector",
///         StandardId = "8bb8be0a-6010-4789-812f-e4d661c4ed0e",
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
/// 		_, err := security.NewSecurityStandard(ctx, "securityStandard", &security.SecurityStandardArgs{
/// 			Assessments: security.PartialAssessmentPropertiesArray{
/// 				&security.PartialAssessmentPropertiesArgs{
/// 					AssessmentKey: pulumi.String("1195afff-c881-495e-9bc5-1486211ae03f"),
/// 				},
/// 				&security.PartialAssessmentPropertiesArgs{
/// 					AssessmentKey: pulumi.String("dbd0cb49-b563-45e7-9724-889e799fa648"),
/// 				},
/// 			},
/// 			CloudProviders: pulumi.StringArray{
/// 				pulumi.String(security.StandardSupportedCloudGCP),
/// 			},
/// 			Description: pulumi.String("description of Azure Test Security Standard 1"),
/// 			DisplayName: pulumi.String("Azure Test Security Standard 1"),
/// 			Scope:       pulumi.String("subscriptions/20ff7fc3-e762-44dd-bd96-b71116dcdc23/resourceGroups/gcpResourceGroup/providers/Microsoft.Security/securityConnectors/gcpconnector"),
/// 			StandardId:  pulumi.String("8bb8be0a-6010-4789-812f-e4d661c4ed0e"),
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
/// import com.pulumi.azurenative.security.SecurityStandard;
/// import com.pulumi.azurenative.security.SecurityStandardArgs;
/// import com.pulumi.azurenative.security.inputs.PartialAssessmentPropertiesArgs;
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
///         var securityStandard = new SecurityStandard("securityStandard", SecurityStandardArgs.builder()
///             .assessments(
///                 PartialAssessmentPropertiesArgs.builder()
///                     .assessmentKey("1195afff-c881-495e-9bc5-1486211ae03f")
///                     .build(),
///                 PartialAssessmentPropertiesArgs.builder()
///                     .assessmentKey("dbd0cb49-b563-45e7-9724-889e799fa648")
///                     .build())
///             .cloudProviders("GCP")
///             .description("description of Azure Test Security Standard 1")
///             .displayName("Azure Test Security Standard 1")
///             .scope("subscriptions/20ff7fc3-e762-44dd-bd96-b71116dcdc23/resourceGroups/gcpResourceGroup/providers/Microsoft.Security/securityConnectors/gcpconnector")
///             .standardId("8bb8be0a-6010-4789-812f-e4d661c4ed0e")
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
/// const securityStandard = new azure_native.security.SecurityStandard("securityStandard", {
///     assessments: [
///         {
///             assessmentKey: "1195afff-c881-495e-9bc5-1486211ae03f",
///         },
///         {
///             assessmentKey: "dbd0cb49-b563-45e7-9724-889e799fa648",
///         },
///     ],
///     cloudProviders: [azure_native.security.StandardSupportedCloud.GCP],
///     description: "description of Azure Test Security Standard 1",
///     displayName: "Azure Test Security Standard 1",
///     scope: "subscriptions/20ff7fc3-e762-44dd-bd96-b71116dcdc23/resourceGroups/gcpResourceGroup/providers/Microsoft.Security/securityConnectors/gcpconnector",
///     standardId: "8bb8be0a-6010-4789-812f-e4d661c4ed0e",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// security_standard = azure_native.security.SecurityStandard("securityStandard",
///     assessments=[
///         {
///             "assessment_key": "1195afff-c881-495e-9bc5-1486211ae03f",
///         },
///         {
///             "assessment_key": "dbd0cb49-b563-45e7-9724-889e799fa648",
///         },
///     ],
///     cloud_providers=[azure_native.security.StandardSupportedCloud.GCP],
///     description="description of Azure Test Security Standard 1",
///     display_name="Azure Test Security Standard 1",
///     scope="subscriptions/20ff7fc3-e762-44dd-bd96-b71116dcdc23/resourceGroups/gcpResourceGroup/providers/Microsoft.Security/securityConnectors/gcpconnector",
///     standard_id="8bb8be0a-6010-4789-812f-e4d661c4ed0e")
///
/// ```
///
/// ```yaml
/// resources:
///   securityStandard:
///     type: azure-native:security:SecurityStandard
///     properties:
///       assessments:
///         - assessmentKey: 1195afff-c881-495e-9bc5-1486211ae03f
///         - assessmentKey: dbd0cb49-b563-45e7-9724-889e799fa648
///       cloudProviders:
///         - GCP
///       description: description of Azure Test Security Standard 1
///       displayName: Azure Test Security Standard 1
///       scope: subscriptions/20ff7fc3-e762-44dd-bd96-b71116dcdc23/resourceGroups/gcpResourceGroup/providers/Microsoft.Security/securityConnectors/gcpconnector
///       standardId: 8bb8be0a-6010-4789-812f-e4d661c4ed0e
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create or update security standard over subscription scope
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var securityStandard = new AzureNative.Security.SecurityStandard("securityStandard", new()
///     {
///         Assessments = new[]
///         {
///             new AzureNative.Security.Inputs.PartialAssessmentPropertiesArgs
///             {
///                 AssessmentKey = "1195afff-c881-495e-9bc5-1486211ae03f",
///             },
///             new AzureNative.Security.Inputs.PartialAssessmentPropertiesArgs
///             {
///                 AssessmentKey = "dbd0cb49-b563-45e7-9724-889e799fa648",
///             },
///         },
///         CloudProviders = new[]
///         {
///             AzureNative.Security.StandardSupportedCloud.GCP,
///         },
///         Description = "description of Azure Test Security Standard 1",
///         DisplayName = "Azure Test Security Standard 1",
///         PolicySetDefinitionId = "/subscriptions/20ff7fc3-e762-44dd-bd96-b71116dcdc23/providers/Microsoft.Authorization/policySetDefinitions/patchorchestration-applicationversions",
///         Scope = "subscriptions/20ff7fc3-e762-44dd-bd96-b71116dcdc23",
///         StandardId = "8bb8be0a-6010-4789-812f-e4d661c4ed0e",
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
/// 		_, err := security.NewSecurityStandard(ctx, "securityStandard", &security.SecurityStandardArgs{
/// 			Assessments: security.PartialAssessmentPropertiesArray{
/// 				&security.PartialAssessmentPropertiesArgs{
/// 					AssessmentKey: pulumi.String("1195afff-c881-495e-9bc5-1486211ae03f"),
/// 				},
/// 				&security.PartialAssessmentPropertiesArgs{
/// 					AssessmentKey: pulumi.String("dbd0cb49-b563-45e7-9724-889e799fa648"),
/// 				},
/// 			},
/// 			CloudProviders: pulumi.StringArray{
/// 				pulumi.String(security.StandardSupportedCloudGCP),
/// 			},
/// 			Description:           pulumi.String("description of Azure Test Security Standard 1"),
/// 			DisplayName:           pulumi.String("Azure Test Security Standard 1"),
/// 			PolicySetDefinitionId: pulumi.String("/subscriptions/20ff7fc3-e762-44dd-bd96-b71116dcdc23/providers/Microsoft.Authorization/policySetDefinitions/patchorchestration-applicationversions"),
/// 			Scope:                 pulumi.String("subscriptions/20ff7fc3-e762-44dd-bd96-b71116dcdc23"),
/// 			StandardId:            pulumi.String("8bb8be0a-6010-4789-812f-e4d661c4ed0e"),
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
/// import com.pulumi.azurenative.security.SecurityStandard;
/// import com.pulumi.azurenative.security.SecurityStandardArgs;
/// import com.pulumi.azurenative.security.inputs.PartialAssessmentPropertiesArgs;
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
///         var securityStandard = new SecurityStandard("securityStandard", SecurityStandardArgs.builder()
///             .assessments(
///                 PartialAssessmentPropertiesArgs.builder()
///                     .assessmentKey("1195afff-c881-495e-9bc5-1486211ae03f")
///                     .build(),
///                 PartialAssessmentPropertiesArgs.builder()
///                     .assessmentKey("dbd0cb49-b563-45e7-9724-889e799fa648")
///                     .build())
///             .cloudProviders("GCP")
///             .description("description of Azure Test Security Standard 1")
///             .displayName("Azure Test Security Standard 1")
///             .policySetDefinitionId("/subscriptions/20ff7fc3-e762-44dd-bd96-b71116dcdc23/providers/Microsoft.Authorization/policySetDefinitions/patchorchestration-applicationversions")
///             .scope("subscriptions/20ff7fc3-e762-44dd-bd96-b71116dcdc23")
///             .standardId("8bb8be0a-6010-4789-812f-e4d661c4ed0e")
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
/// const securityStandard = new azure_native.security.SecurityStandard("securityStandard", {
///     assessments: [
///         {
///             assessmentKey: "1195afff-c881-495e-9bc5-1486211ae03f",
///         },
///         {
///             assessmentKey: "dbd0cb49-b563-45e7-9724-889e799fa648",
///         },
///     ],
///     cloudProviders: [azure_native.security.StandardSupportedCloud.GCP],
///     description: "description of Azure Test Security Standard 1",
///     displayName: "Azure Test Security Standard 1",
///     policySetDefinitionId: "/subscriptions/20ff7fc3-e762-44dd-bd96-b71116dcdc23/providers/Microsoft.Authorization/policySetDefinitions/patchorchestration-applicationversions",
///     scope: "subscriptions/20ff7fc3-e762-44dd-bd96-b71116dcdc23",
///     standardId: "8bb8be0a-6010-4789-812f-e4d661c4ed0e",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// security_standard = azure_native.security.SecurityStandard("securityStandard",
///     assessments=[
///         {
///             "assessment_key": "1195afff-c881-495e-9bc5-1486211ae03f",
///         },
///         {
///             "assessment_key": "dbd0cb49-b563-45e7-9724-889e799fa648",
///         },
///     ],
///     cloud_providers=[azure_native.security.StandardSupportedCloud.GCP],
///     description="description of Azure Test Security Standard 1",
///     display_name="Azure Test Security Standard 1",
///     policy_set_definition_id="/subscriptions/20ff7fc3-e762-44dd-bd96-b71116dcdc23/providers/Microsoft.Authorization/policySetDefinitions/patchorchestration-applicationversions",
///     scope="subscriptions/20ff7fc3-e762-44dd-bd96-b71116dcdc23",
///     standard_id="8bb8be0a-6010-4789-812f-e4d661c4ed0e")
///
/// ```
///
/// ```yaml
/// resources:
///   securityStandard:
///     type: azure-native:security:SecurityStandard
///     properties:
///       assessments:
///         - assessmentKey: 1195afff-c881-495e-9bc5-1486211ae03f
///         - assessmentKey: dbd0cb49-b563-45e7-9724-889e799fa648
///       cloudProviders:
///         - GCP
///       description: description of Azure Test Security Standard 1
///       displayName: Azure Test Security Standard 1
///       policySetDefinitionId: /subscriptions/20ff7fc3-e762-44dd-bd96-b71116dcdc23/providers/Microsoft.Authorization/policySetDefinitions/patchorchestration-applicationversions
///       scope: subscriptions/20ff7fc3-e762-44dd-bd96-b71116dcdc23
///       standardId: 8bb8be0a-6010-4789-812f-e4d661c4ed0e
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
/// $ pulumi import azure-native:security:SecurityStandard 8bb8be0a-6010-4789-812f-e4d661c4ed0e /{scope}/providers/Microsoft.Security/securityStandards/{standardId}
/// ```
class SecurityStandard extends pulumi.CustomResource {
  /// List of assessment keys to apply to standard scope.
  late final pulumi.Output<List<Map<String, dynamic>>?> assessments;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// List of all standard supported clouds.
  late final pulumi.Output<List<String>?> cloudProviders;
  /// Description of the standard
  late final pulumi.Output<String?> description;
  /// Display name of the standard, equivalent to the standardId
  late final pulumi.Output<String?> displayName;
  /// The security standard metadata.
  late final pulumi.Output<StandardMetadataResponse?> metadata;
  /// Resource name
  late final pulumi.Output<String> name;
  /// The policy set definition id associated with the standard.
  late final pulumi.Output<String?> policySetDefinitionId;
  /// Standard type (Custom or Default or Compliance only currently)
  late final pulumi.Output<String> standardType;
  /// Resource type
  late final pulumi.Output<String> type;

  /// Creates a new [SecurityStandard].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SecurityStandard]. {@macro pulumi_security_security_standard_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SecurityStandard(
    String name, {
    SecurityStandardArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:security:SecurityStandard',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    assessments = registerOutput<List<Map<String, dynamic>>?>('assessments');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    cloudProviders = registerOutput<List<String>?>('cloudProviders');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String?>('displayName');
    metadata = registerOutput<StandardMetadataResponse?>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StandardMetadataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    policySetDefinitionId = registerOutput<String?>('policySetDefinitionId');
    standardType = registerOutput<String>('standardType');
    type = registerOutput<String>('type');
  }
}
