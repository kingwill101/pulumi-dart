import 'package:pulumi/pulumi.dart' as pulumi;
import 'assessment_args.dart';
import 'assessment_links_response.dart';
import 'assessment_status_response_response.dart';
import 'azure_resource_details_response.dart';
import 'security_assessment_metadata_properties_response.dart';
import 'security_assessment_partner_data_response.dart';

/// Security assessment on a resource - response format
///
/// Uses Azure REST API version 2021-06-01. In version 2.x of the Azure Native provider, it used API version 2021-06-01.
///
/// Other available API versions: 2019-01-01-preview, 2020-01-01, 2025-05-04-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native security [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create security recommendation task on a resource
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var assessment = new AzureNative.Security.Assessment("assessment", new()
///     {
///         AssessmentName = "8bb8be0a-6010-4789-812f-e4d661c4ed0e",
///         ResourceDetails = new AzureNative.Security.Inputs.AzureResourceDetailsArgs
///         {
///             Source = "Azure",
///         },
///         ResourceId = "subscriptions/20ff7fc3-e762-44dd-bd96-b71116dcdc23/resourceGroups/myRg/providers/Microsoft.Compute/virtualMachineScaleSets/vmss2",
///         Status = new AzureNative.Security.Inputs.AssessmentStatusArgs
///         {
///             Code = AzureNative.Security.AssessmentStatusCode.Healthy,
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
/// 	security "github.com/pulumi/pulumi-azure-native-sdk/security/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := security.NewAssessment(ctx, "assessment", &security.AssessmentArgs{
/// 			AssessmentName: pulumi.String("8bb8be0a-6010-4789-812f-e4d661c4ed0e"),
/// 			ResourceDetails: &security.AzureResourceDetailsArgs{
/// 				Source: pulumi.String("Azure"),
/// 			},
/// 			ResourceId: pulumi.String("subscriptions/20ff7fc3-e762-44dd-bd96-b71116dcdc23/resourceGroups/myRg/providers/Microsoft.Compute/virtualMachineScaleSets/vmss2"),
/// 			Status: &security.AssessmentStatusArgs{
/// 				Code: pulumi.String(security.AssessmentStatusCodeHealthy),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.security.Assessment;
/// import com.pulumi.azurenative.security.AssessmentArgs;
/// import com.pulumi.azurenative.security.inputs.AssessmentStatusArgs;
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
///         var assessment = new Assessment("assessment", AssessmentArgs.builder()
///             .assessmentName("8bb8be0a-6010-4789-812f-e4d661c4ed0e")
///             .resourceDetails(AzureResourceDetailsArgs.builder()
///                 .source("Azure")
///                 .build())
///             .resourceId("subscriptions/20ff7fc3-e762-44dd-bd96-b71116dcdc23/resourceGroups/myRg/providers/Microsoft.Compute/virtualMachineScaleSets/vmss2")
///             .status(AssessmentStatusArgs.builder()
///                 .code("Healthy")
///                 .build())
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
/// const assessment = new azure_native.security.Assessment("assessment", {
///     assessmentName: "8bb8be0a-6010-4789-812f-e4d661c4ed0e",
///     resourceDetails: {
///         source: "Azure",
///     },
///     resourceId: "subscriptions/20ff7fc3-e762-44dd-bd96-b71116dcdc23/resourceGroups/myRg/providers/Microsoft.Compute/virtualMachineScaleSets/vmss2",
///     status: {
///         code: azure_native.security.AssessmentStatusCode.Healthy,
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// assessment = azure_native.security.Assessment("assessment",
///     assessment_name="8bb8be0a-6010-4789-812f-e4d661c4ed0e",
///     resource_details={
///         "source": "Azure",
///     },
///     resource_id="subscriptions/20ff7fc3-e762-44dd-bd96-b71116dcdc23/resourceGroups/myRg/providers/Microsoft.Compute/virtualMachineScaleSets/vmss2",
///     status={
///         "code": azure_native.security.AssessmentStatusCode.HEALTHY,
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   assessment:
///     type: azure-native:security:Assessment
///     properties:
///       assessmentName: 8bb8be0a-6010-4789-812f-e4d661c4ed0e
///       resourceDetails:
///         source: Azure
///       resourceId: subscriptions/20ff7fc3-e762-44dd-bd96-b71116dcdc23/resourceGroups/myRg/providers/Microsoft.Compute/virtualMachineScaleSets/vmss2
///       status:
///         code: Healthy
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
/// $ pulumi import azure-native:security:Assessment 8bb8be0a-6010-4789-812f-e4d661c4ed0e /{resourceId}/providers/Microsoft.Security/assessments/{assessmentName}
/// ```
class Assessment extends pulumi.CustomResource {
  /// Additional data regarding the assessment
  late final pulumi.Output<Map<String, String>?> additionalData;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// User friendly display name of the assessment
  late final pulumi.Output<String> displayName;
  /// Links relevant to the assessment
  late final pulumi.Output<AssessmentLinksResponse> links;
  /// Describes properties of an assessment metadata.
  late final pulumi.Output<SecurityAssessmentMetadataPropertiesResponse?> metadata;
  /// Resource name
  late final pulumi.Output<String> name;
  /// Data regarding 3rd party partner integration
  late final pulumi.Output<SecurityAssessmentPartnerDataResponse?> partnersData;
  /// Details of the resource that was assessed
  late final pulumi.Output<AzureResourceDetailsResponse> resourceDetails;
  /// The result of the assessment
  late final pulumi.Output<AssessmentStatusResponseResponse> status;
  /// Resource type
  late final pulumi.Output<String> type;

  /// Creates a new [Assessment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Assessment]. {@macro pulumi_security_assessment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Assessment(
    String name, {
    AssessmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:security:Assessment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    additionalData = registerOutput<Map<String, String>?>('additionalData');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    displayName = registerOutput<String>('displayName');
    links = registerOutput<AssessmentLinksResponse>('links', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AssessmentLinksResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    metadata = registerOutput<SecurityAssessmentMetadataPropertiesResponse?>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SecurityAssessmentMetadataPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    partnersData = registerOutput<SecurityAssessmentPartnerDataResponse?>('partnersData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SecurityAssessmentPartnerDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    resourceDetails = registerOutput<AzureResourceDetailsResponse>('resourceDetails', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AzureResourceDetailsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    status = registerOutput<AssessmentStatusResponseResponse>('status', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AssessmentStatusResponseResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
