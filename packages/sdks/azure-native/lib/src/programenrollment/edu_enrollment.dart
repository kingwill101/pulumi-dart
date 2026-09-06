import 'package:pulumi/pulumi.dart' as pulumi;
import 'edu_enrollment_args.dart';
import 'edu_enrollment_properties_response.dart';
import 'system_data_response.dart';

/// An education program enrollment that groups Entra domains under a single sovereign/edu program scope.
///
/// Uses Azure REST API version 2026-03-01-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or update an edu enrollment
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var eduEnrollment = new AzureNative.ProgramEnrollment.EduEnrollment("eduEnrollment", new()
///     {
///         EnrollmentName = "default",
///         Location = "eastus",
///         Properties = new AzureNative.ProgramEnrollment.Inputs.EduEnrollmentPropertiesArgs
///         {
///             Domains = new[]
///             {
///                 new AzureNative.ProgramEnrollment.Inputs.DomainGroupArgs
///                 {
///                     DomainNames = new[]
///                     {
///                         "university.edu",
///                         "college.edu",
///                     },
///                     TenantId = "00000000-0000-0000-0000-000000000001",
///                 },
///             },
///         },
///         ResourceGroupName = "testrg",
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
/// 	programenrollment "github.com/pulumi/pulumi-azure-native-sdk/programenrollment/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := programenrollment.NewEduEnrollment(ctx, "eduEnrollment", &programenrollment.EduEnrollmentArgs{
/// 			EnrollmentName: pulumi.String("default"),
/// 			Location:       pulumi.String("eastus"),
/// 			Properties: &programenrollment.EduEnrollmentPropertiesArgs{
/// 				Domains: programenrollment.DomainGroupArray{
/// 					&programenrollment.DomainGroupArgs{
/// 						DomainNames: pulumi.StringArray{
/// 							pulumi.String("university.edu"),
/// 							pulumi.String("college.edu"),
/// 						},
/// 						TenantId: pulumi.String("00000000-0000-0000-0000-000000000001"),
/// 					},
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("testrg"),
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
/// resource "azure-native_programenrollment_eduenrollment" "eduEnrollment" {
///   enrollment_name = "default"
///   location        = "eastus"
///   properties = {
///     domains = [{
///       "domainNames" = ["university.edu", "college.edu"]
///       "tenantId"    = "00000000-0000-0000-0000-000000000001"
///     }]
///   }
///   resource_group_name = "testrg"
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
/// import com.pulumi.azurenative.programenrollment.EduEnrollment;
/// import com.pulumi.azurenative.programenrollment.EduEnrollmentArgs;
/// import com.pulumi.azurenative.programenrollment.inputs.EduEnrollmentPropertiesArgs;
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
///         var eduEnrollment = new EduEnrollment("eduEnrollment", EduEnrollmentArgs.builder()
///             .enrollmentName("default")
///             .location("eastus")
///             .properties(EduEnrollmentPropertiesArgs.builder()
///                 .domains(DomainGroupArgs.builder()
///                     .domainNames(
///                         "university.edu",
///                         "college.edu")
///                     .tenantId("00000000-0000-0000-0000-000000000001")
///                     .build())
///                 .build())
///             .resourceGroupName("testrg")
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
/// const eduEnrollment = new azure_native.programenrollment.EduEnrollment("eduEnrollment", {
///     enrollmentName: "default",
///     location: "eastus",
///     properties: {
///         domains: [{
///             domainNames: [
///                 "university.edu",
///                 "college.edu",
///             ],
///             tenantId: "00000000-0000-0000-0000-000000000001",
///         }],
///     },
///     resourceGroupName: "testrg",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// edu_enrollment = azure_native.programenrollment.EduEnrollment("eduEnrollment",
///     enrollment_name="default",
///     location="eastus",
///     properties={
///         "domains": [{
///             "domain_names": [
///                 "university.edu",
///                 "college.edu",
///             ],
///             "tenant_id": "00000000-0000-0000-0000-000000000001",
///         }],
///     },
///     resource_group_name="testrg")
///
/// ```
///
/// ```yaml
/// resources:
///   eduEnrollment:
///     type: azure-native:programenrollment:EduEnrollment
///     properties:
///       enrollmentName: default
///       location: eastus
///       properties:
///         domains:
///           - domainNames:
///               - university.edu
///               - college.edu
///             tenantId: 00000000-0000-0000-0000-000000000001
///       resourceGroupName: testrg
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
/// $ pulumi import azure-native:programenrollment:EduEnrollment default /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ProgramEnrollment/eduEnrollments/{enrollmentName}
/// ```
class EduEnrollment extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<EduEnrollmentPropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [EduEnrollment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EduEnrollment]. {@macro pulumi_programenrollment_edu_enrollment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EduEnrollment(
    String name, {
    EduEnrollmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:programenrollment:EduEnrollment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<EduEnrollmentPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EduEnrollmentPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [EduEnrollment] resource.
  EduEnrollment.reference(String urn)
    : super(
        'azure-native:programenrollment:EduEnrollment',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<EduEnrollmentPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EduEnrollmentPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }
}
