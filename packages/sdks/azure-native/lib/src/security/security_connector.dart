import 'package:pulumi/pulumi.dart' as pulumi;
import 'aws_environment_data_response.dart';
import 'security_connector_args.dart';
import 'system_data_response.dart';

/// The security connector resource.
///
/// Uses Azure REST API version 2024-08-01-preview. In version 2.x of the Azure Native provider, it used API version 2023-03-01-preview.
///
/// Other available API versions: 2021-07-01-preview, 2021-12-01-preview, 2022-05-01-preview, 2022-08-01-preview, 2023-03-01-preview, 2023-10-01-preview, 2024-03-01-preview, 2024-07-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native security [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or update a security connector
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var securityConnector = new AzureNative.Security.SecurityConnector("securityConnector", new()
///     {
///         EnvironmentData = new AzureNative.Security.Inputs.AwsEnvironmentDataArgs
///         {
///             EnvironmentType = "AwsAccount",
///             ScanInterval = 4,
///         },
///         EnvironmentName = AzureNative.Security.CloudName.AWS,
///         HierarchyIdentifier = "exampleHierarchyId",
///         Location = "Central US",
///         Offerings = new[]
///         {
///             new AzureNative.Security.Inputs.CspmMonitorAwsOfferingArgs
///             {
///                 NativeCloudConnection = new AzureNative.Security.Inputs.CspmMonitorAwsOfferingNativeCloudConnectionArgs
///                 {
///                     CloudRoleArn = "arn:aws:iam::00000000:role/ASCMonitor",
///                 },
///                 OfferingType = "CspmMonitorAws",
///             },
///         },
///         ResourceGroupName = "exampleResourceGroup",
///         SecurityConnectorName = "exampleSecurityConnectorName",
///         Tags = null,
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
/// 		_, err := security.NewSecurityConnector(ctx, "securityConnector", &security.SecurityConnectorArgs{
/// 			EnvironmentData: &security.AwsEnvironmentDataArgs{
/// 				EnvironmentType: pulumi.String("AwsAccount"),
/// 				ScanInterval:    pulumi.Float64(4),
/// 			},
/// 			EnvironmentName:     pulumi.String(security.CloudNameAWS),
/// 			HierarchyIdentifier: pulumi.String("exampleHierarchyId"),
/// 			Location:            pulumi.String("Central US"),
/// 			Offerings: pulumi.Array{
/// 				security.CspmMonitorAwsOffering{
/// 					NativeCloudConnection: security.CspmMonitorAwsOfferingNativeCloudConnection{
/// 						CloudRoleArn: "arn:aws:iam::00000000:role/ASCMonitor",
/// 					},
/// 					OfferingType: "CspmMonitorAws",
/// 				},
/// 			},
/// 			ResourceGroupName:     pulumi.String("exampleResourceGroup"),
/// 			SecurityConnectorName: pulumi.String("exampleSecurityConnectorName"),
/// 			Tags:                  pulumi.StringMap{},
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
/// import com.pulumi.azurenative.security.SecurityConnector;
/// import com.pulumi.azurenative.security.SecurityConnectorArgs;
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
///         var securityConnector = new SecurityConnector("securityConnector", SecurityConnectorArgs.builder()
///             .environmentData(AwsEnvironmentDataArgs.builder()
///                 .environmentType("AwsAccount")
///                 .scanInterval(4.0)
///                 .build())
///             .environmentName("AWS")
///             .hierarchyIdentifier("exampleHierarchyId")
///             .location("Central US")
///             .offerings(CspmMonitorAwsOfferingArgs.builder()
///                 .nativeCloudConnection(CspmMonitorAwsOfferingNativeCloudConnectionArgs.builder()
///                     .cloudRoleArn("arn:aws:iam::00000000:role/ASCMonitor")
///                     .build())
///                 .offeringType("CspmMonitorAws")
///                 .build())
///             .resourceGroupName("exampleResourceGroup")
///             .securityConnectorName("exampleSecurityConnectorName")
///             .tags(Map.ofEntries(
///             ))
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
/// const securityConnector = new azure_native.security.SecurityConnector("securityConnector", {
///     environmentData: {
///         environmentType: "AwsAccount",
///         scanInterval: 4,
///     },
///     environmentName: azure_native.security.CloudName.AWS,
///     hierarchyIdentifier: "exampleHierarchyId",
///     location: "Central US",
///     offerings: [{
///         nativeCloudConnection: {
///             cloudRoleArn: "arn:aws:iam::00000000:role/ASCMonitor",
///         },
///         offeringType: "CspmMonitorAws",
///     }],
///     resourceGroupName: "exampleResourceGroup",
///     securityConnectorName: "exampleSecurityConnectorName",
///     tags: {},
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// security_connector = azure_native.security.SecurityConnector("securityConnector",
///     environment_data={
///         "environment_type": "AwsAccount",
///         "scan_interval": 4,
///     },
///     environment_name=azure_native.security.CloudName.AWS,
///     hierarchy_identifier="exampleHierarchyId",
///     location="Central US",
///     offerings=[{
///         "native_cloud_connection": {
///             "cloud_role_arn": "arn:aws:iam::00000000:role/ASCMonitor",
///         },
///         "offering_type": "CspmMonitorAws",
///     }],
///     resource_group_name="exampleResourceGroup",
///     security_connector_name="exampleSecurityConnectorName",
///     tags={})
///
/// ```
///
/// ```yaml
/// resources:
///   securityConnector:
///     type: azure-native:security:SecurityConnector
///     properties:
///       environmentData:
///         environmentType: AwsAccount
///         scanInterval: 4
///       environmentName: AWS
///       hierarchyIdentifier: exampleHierarchyId
///       location: Central US
///       offerings:
///         - nativeCloudConnection:
///             cloudRoleArn: arn:aws:iam::00000000:role/ASCMonitor
///           offeringType: CspmMonitorAws
///       resourceGroupName: exampleResourceGroup
///       securityConnectorName: exampleSecurityConnectorName
///       tags: {}
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
/// $ pulumi import azure-native:security:SecurityConnector exampleSecurityConnectorName /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Security/securityConnectors/{securityConnectorName}
/// ```
class SecurityConnector extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The security connector environment data.
  late final pulumi.Output<AwsEnvironmentDataResponse?> environmentData;

  /// The multi cloud resource's cloud name.
  late final pulumi.Output<String?> environmentName;

  /// Entity tag is used for comparing two or more entities from the same requested resource.
  late final pulumi.Output<String?> etag;

  /// The multi cloud resource identifier (account id in case of AWS connector, project number in case of GCP connector).
  late final pulumi.Output<String?> hierarchyIdentifier;

  /// The date on which the trial period will end, if applicable. Trial period exists for 30 days after upgrading to payed offerings.
  late final pulumi.Output<String> hierarchyIdentifierTrialEndDate;

  /// Kind of the resource
  late final pulumi.Output<String?> kind;

  /// Location where the resource is stored
  late final pulumi.Output<String?> location;

  /// Resource name
  late final pulumi.Output<String> name;

  /// A collection of offerings for the security connector.
  late final pulumi.Output<List<Map<String, dynamic>>?> offerings;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// A list of key value pairs that describe the resource.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Resource type
  late final pulumi.Output<String> type;

  /// Creates a new [SecurityConnector].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SecurityConnector]. {@macro pulumi_security_security_connector_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SecurityConnector(
    String name, {
    SecurityConnectorArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:security:SecurityConnector',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    environmentData = registerOutput<AwsEnvironmentDataResponse?>(
      'environmentData',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return AwsEnvironmentDataResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    environmentName = registerOutput<String?>('environmentName');
    etag = registerOutput<String?>('etag');
    hierarchyIdentifier = registerOutput<String?>('hierarchyIdentifier');
    hierarchyIdentifierTrialEndDate = registerOutput<String>(
      'hierarchyIdentifierTrialEndDate',
    );
    kind = registerOutput<String?>('kind');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    offerings = registerOutput<List<Map<String, dynamic>>?>('offerings');
    systemData = registerOutput<SystemDataResponse>(
      'systemData',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SystemDataResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
