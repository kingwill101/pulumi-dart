import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_authorization_response.dart';
import 'application_definition_args.dart';
import 'application_definition_artifact_response.dart';
import 'application_deployment_policy_response.dart';
import 'application_management_policy_response.dart';
import 'application_notification_policy_response.dart';
import 'application_package_locking_policy_definition_response.dart';
import 'application_policy_response.dart';
import 'sku_response.dart';
import 'system_data_response.dart';

/// Information about managed application definition.
///
/// Uses Azure REST API version 2021-07-01. In version 2.x of the Azure Native provider, it used API version 2021-07-01.
///
/// Other available API versions: 2023-12-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native solutions [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or update managed application definition
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var applicationDefinition = new AzureNative.Solutions.ApplicationDefinition("applicationDefinition", new()
///     {
///         ApplicationDefinitionName = "myManagedApplicationDef",
///         Authorizations = new[]
///         {
///             new AzureNative.Solutions.Inputs.ApplicationAuthorizationArgs
///             {
///                 PrincipalId = "validprincipalguid",
///                 RoleDefinitionId = "validroleguid",
///             },
///         },
///         Description = "myManagedApplicationDef description",
///         DisplayName = "myManagedApplicationDef",
///         LockLevel = AzureNative.Solutions.ApplicationLockLevel.None,
///         PackageFileUri = "https://path/to/packagezipfile",
///         ResourceGroupName = "rg",
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
/// 	solutions "github.com/pulumi/pulumi-azure-native-sdk/solutions/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := solutions.NewApplicationDefinition(ctx, "applicationDefinition", &solutions.ApplicationDefinitionArgs{
/// 			ApplicationDefinitionName: pulumi.String("myManagedApplicationDef"),
/// 			Authorizations: solutions.ApplicationAuthorizationArray{
/// 				&solutions.ApplicationAuthorizationArgs{
/// 					PrincipalId:      pulumi.String("validprincipalguid"),
/// 					RoleDefinitionId: pulumi.String("validroleguid"),
/// 				},
/// 			},
/// 			Description:       pulumi.String("myManagedApplicationDef description"),
/// 			DisplayName:       pulumi.String("myManagedApplicationDef"),
/// 			LockLevel:         solutions.ApplicationLockLevelNone,
/// 			PackageFileUri:    pulumi.String("https://path/to/packagezipfile"),
/// 			ResourceGroupName: pulumi.String("rg"),
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
/// resource "azure-native_solutions_applicationdefinition" "applicationDefinition" {
///   application_definition_name = "myManagedApplicationDef"
///   authorizations {
///     principal_id       = "validprincipalguid"
///     role_definition_id = "validroleguid"
///   }
///   description         = "myManagedApplicationDef description"
///   display_name        = "myManagedApplicationDef"
///   lock_level          = "None"
///   package_file_uri    = "https://path/to/packagezipfile"
///   resource_group_name = "rg"
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
/// import com.pulumi.azurenative.solutions.ApplicationDefinition;
/// import com.pulumi.azurenative.solutions.ApplicationDefinitionArgs;
/// import com.pulumi.azurenative.solutions.inputs.ApplicationAuthorizationArgs;
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
///         var applicationDefinition = new ApplicationDefinition("applicationDefinition", ApplicationDefinitionArgs.builder()
///             .applicationDefinitionName("myManagedApplicationDef")
///             .authorizations(ApplicationAuthorizationArgs.builder()
///                 .principalId("validprincipalguid")
///                 .roleDefinitionId("validroleguid")
///                 .build())
///             .description("myManagedApplicationDef description")
///             .displayName("myManagedApplicationDef")
///             .lockLevel("None")
///             .packageFileUri("https://path/to/packagezipfile")
///             .resourceGroupName("rg")
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
/// const applicationDefinition = new azure_native.solutions.ApplicationDefinition("applicationDefinition", {
///     applicationDefinitionName: "myManagedApplicationDef",
///     authorizations: [{
///         principalId: "validprincipalguid",
///         roleDefinitionId: "validroleguid",
///     }],
///     description: "myManagedApplicationDef description",
///     displayName: "myManagedApplicationDef",
///     lockLevel: azure_native.solutions.ApplicationLockLevel.None,
///     packageFileUri: "https://path/to/packagezipfile",
///     resourceGroupName: "rg",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// application_definition = azure_native.solutions.ApplicationDefinition("applicationDefinition",
///     application_definition_name="myManagedApplicationDef",
///     authorizations=[{
///         "principal_id": "validprincipalguid",
///         "role_definition_id": "validroleguid",
///     }],
///     description="myManagedApplicationDef description",
///     display_name="myManagedApplicationDef",
///     lock_level=azure_native.solutions.ApplicationLockLevel.NONE,
///     package_file_uri="https://path/to/packagezipfile",
///     resource_group_name="rg")
///
/// ```
///
/// ```yaml
/// resources:
///   applicationDefinition:
///     type: azure-native:solutions:ApplicationDefinition
///     properties:
///       applicationDefinitionName: myManagedApplicationDef
///       authorizations:
///         - principalId: validprincipalguid
///           roleDefinitionId: validroleguid
///       description: myManagedApplicationDef description
///       displayName: myManagedApplicationDef
///       lockLevel: None
///       packageFileUri: https://path/to/packagezipfile
///       resourceGroupName: rg
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
/// $ pulumi import azure-native:solutions:ApplicationDefinition myManagedApplicationDef /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Solutions/applicationDefinitions/{applicationDefinitionName}
/// ```
class ApplicationDefinition extends pulumi.CustomResource {
  /// The collection of managed application artifacts. The portal will use the files specified as artifacts to construct the user experience of creating a managed application from a managed application definition.
  late final pulumi.Output<List<ApplicationDefinitionArtifactResponse>?> artifacts;
  /// The managed application provider authorizations.
  late final pulumi.Output<List<ApplicationAuthorizationResponse>?> authorizations;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The createUiDefinition json for the backing template with Microsoft.Solutions/applications resource. It can be a JObject or well-formed JSON string.
  late final pulumi.Output<dynamic> createUiDefinition;
  /// The managed application deployment policy.
  late final pulumi.Output<ApplicationDeploymentPolicyResponse?> deploymentPolicy;
  /// The managed application definition description.
  late final pulumi.Output<String?> description;
  /// The managed application definition display name.
  late final pulumi.Output<String?> displayName;
  /// A value indicating whether the package is enabled or not.
  late final pulumi.Output<bool?> isEnabled;
  /// Resource location
  late final pulumi.Output<String?> location;
  /// The managed application lock level.
  late final pulumi.Output<String> lockLevel;
  /// The managed application locking policy.
  late final pulumi.Output<ApplicationPackageLockingPolicyDefinitionResponse?> lockingPolicy;
  /// The inline main template json which has resources to be provisioned. It can be a JObject or well-formed JSON string.
  late final pulumi.Output<dynamic> mainTemplate;
  /// ID of the resource that manages this resource.
  late final pulumi.Output<String?> managedBy;
  /// The managed application management policy that determines publisher's access to the managed resource group.
  late final pulumi.Output<ApplicationManagementPolicyResponse?> managementPolicy;
  /// Resource name
  late final pulumi.Output<String> name;
  /// The managed application notification policy.
  late final pulumi.Output<ApplicationNotificationPolicyResponse?> notificationPolicy;
  /// The managed application definition package file Uri. Use this element
  late final pulumi.Output<String?> packageFileUri;
  /// The managed application provider policies.
  late final pulumi.Output<List<ApplicationPolicyResponse>?> policies;
  /// The SKU of the resource.
  late final pulumi.Output<SkuResponse?> sku;
  /// The storage account id for bring your own storage scenario.
  late final pulumi.Output<String?> storageAccountId;
  /// Metadata pertaining to creation and last modification of the resource.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags
  late final pulumi.Output<Map<String, String>?> tags;
  /// Resource type
  late final pulumi.Output<String> type;

  /// Creates a new [ApplicationDefinition].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ApplicationDefinition]. {@macro pulumi_solutions_application_definition_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ApplicationDefinition(
    String name, {
    ApplicationDefinitionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:solutions:ApplicationDefinition',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    artifacts = registerOutput<List<ApplicationDefinitionArtifactResponse>?>('artifacts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ApplicationDefinitionArtifactResponse>(guardedValue, (value) => ApplicationDefinitionArtifactResponse.fromMap((value as Map).cast<String, dynamic>())); });
    authorizations = registerOutput<List<ApplicationAuthorizationResponse>?>('authorizations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ApplicationAuthorizationResponse>(guardedValue, (value) => ApplicationAuthorizationResponse.fromMap((value as Map).cast<String, dynamic>())); });
    azureApiVersion = registerOutput<String>('azureApiVersion');
    createUiDefinition = registerOutput<dynamic>('createUiDefinition');
    deploymentPolicy = registerOutput<ApplicationDeploymentPolicyResponse?>('deploymentPolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApplicationDeploymentPolicyResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    description = registerOutput<String?>('description');
    displayName = registerOutput<String?>('displayName');
    isEnabled = registerOutput<bool?>('isEnabled');
    location = registerOutput<String?>('location');
    lockLevel = registerOutput<String>('lockLevel');
    lockingPolicy = registerOutput<ApplicationPackageLockingPolicyDefinitionResponse?>('lockingPolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApplicationPackageLockingPolicyDefinitionResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    mainTemplate = registerOutput<dynamic>('mainTemplate');
    managedBy = registerOutput<String?>('managedBy');
    managementPolicy = registerOutput<ApplicationManagementPolicyResponse?>('managementPolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApplicationManagementPolicyResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    notificationPolicy = registerOutput<ApplicationNotificationPolicyResponse?>('notificationPolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApplicationNotificationPolicyResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    packageFileUri = registerOutput<String?>('packageFileUri');
    policies = registerOutput<List<ApplicationPolicyResponse>?>('policies', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ApplicationPolicyResponse>(guardedValue, (value) => ApplicationPolicyResponse.fromMap((value as Map).cast<String, dynamic>())); });
    sku = registerOutput<SkuResponse?>('sku', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SkuResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    storageAccountId = registerOutput<String?>('storageAccountId');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [ApplicationDefinition] resource.
  ApplicationDefinition.reference(String urn)
    : super(
        'azure-native:solutions:ApplicationDefinition',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    artifacts = registerOutput<List<ApplicationDefinitionArtifactResponse>?>('artifacts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ApplicationDefinitionArtifactResponse>(guardedValue, (value) => ApplicationDefinitionArtifactResponse.fromMap((value as Map).cast<String, dynamic>())); });
    authorizations = registerOutput<List<ApplicationAuthorizationResponse>?>('authorizations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ApplicationAuthorizationResponse>(guardedValue, (value) => ApplicationAuthorizationResponse.fromMap((value as Map).cast<String, dynamic>())); });
    azureApiVersion = registerOutput<String>('azureApiVersion');
    createUiDefinition = registerOutput<dynamic>('createUiDefinition');
    deploymentPolicy = registerOutput<ApplicationDeploymentPolicyResponse?>('deploymentPolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApplicationDeploymentPolicyResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    description = registerOutput<String?>('description');
    displayName = registerOutput<String?>('displayName');
    isEnabled = registerOutput<bool?>('isEnabled');
    location = registerOutput<String?>('location');
    lockLevel = registerOutput<String>('lockLevel');
    lockingPolicy = registerOutput<ApplicationPackageLockingPolicyDefinitionResponse?>('lockingPolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApplicationPackageLockingPolicyDefinitionResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    mainTemplate = registerOutput<dynamic>('mainTemplate');
    managedBy = registerOutput<String?>('managedBy');
    managementPolicy = registerOutput<ApplicationManagementPolicyResponse?>('managementPolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApplicationManagementPolicyResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    notificationPolicy = registerOutput<ApplicationNotificationPolicyResponse?>('notificationPolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApplicationNotificationPolicyResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    packageFileUri = registerOutput<String?>('packageFileUri');
    policies = registerOutput<List<ApplicationPolicyResponse>?>('policies', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ApplicationPolicyResponse>(guardedValue, (value) => ApplicationPolicyResponse.fromMap((value as Map).cast<String, dynamic>())); });
    sku = registerOutput<SkuResponse?>('sku', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SkuResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    storageAccountId = registerOutput<String?>('storageAccountId');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }
}
