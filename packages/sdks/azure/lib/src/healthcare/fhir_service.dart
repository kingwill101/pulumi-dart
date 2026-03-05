import 'package:pulumi/pulumi.dart' as pulumi;
import 'fhir_service_args.dart';
import 'fhir_service_authentication.dart';
import 'fhir_service_cors.dart';
import 'fhir_service_identity.dart';
import 'fhir_service_state.dart';

/// Manages a Healthcare FHIR (Fast Healthcare Interoperability Resources) Service
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example",
///     location: "West Europe",
/// });
/// const current = azure.core.getClientConfig({});
/// const exampleWorkspace = new azure.healthcare.Workspace("example", {
///     name: "example",
///     location: example.location,
///     resourceGroupName: example.name,
/// });
/// const exampleFhirService = new azure.healthcare.FhirService("example", {
///     name: "tfexfhir",
///     location: "east us",
///     resourceGroupName: "tfex-resource_group",
///     workspaceId: exampleWorkspace.id,
///     kind: "fhir-R4",
///     authentication: {
///         authority: "https://login.microsoftonline.com/tenantId",
///         audience: "https://tfexfhir.fhir.azurehealthcareapis.com",
///     },
///     accessPolicyObjectIds: [current.then(current => current.objectId)],
///     identity: {
///         type: "SystemAssigned",
///     },
///     containerRegistryLoginServerUrls: ["tfex-container_registry_login_server"],
///     cors: {
///         allowedOrigins: [
///             "https://tfex.com:123",
///             "https://tfex1.com:3389",
///         ],
///         allowedHeaders: ["*"],
///         allowedMethods: [
///             "GET",
///             "DELETE",
///             "PUT",
///         ],
///         maxAgeInSeconds: 3600,
///         credentialsAllowed: true,
///     },
///     configurationExportStorageAccountName: "storage_account_name",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example",
///     location="West Europe")
/// current = azure.core.get_client_config()
/// example_workspace = azure.healthcare.Workspace("example",
///     name="example",
///     location=example.location,
///     resource_group_name=example.name)
/// example_fhir_service = azure.healthcare.FhirService("example",
///     name="tfexfhir",
///     location="east us",
///     resource_group_name="tfex-resource_group",
///     workspace_id=example_workspace.id,
///     kind="fhir-R4",
///     authentication={
///         "authority": "https://login.microsoftonline.com/tenantId",
///         "audience": "https://tfexfhir.fhir.azurehealthcareapis.com",
///     },
///     access_policy_object_ids=[current.object_id],
///     identity={
///         "type": "SystemAssigned",
///     },
///     container_registry_login_server_urls=["tfex-container_registry_login_server"],
///     cors={
///         "allowed_origins": [
///             "https://tfex.com:123",
///             "https://tfex1.com:3389",
///         ],
///         "allowed_headers": ["*"],
///         "allowed_methods": [
///             "GET",
///             "DELETE",
///             "PUT",
///         ],
///         "max_age_in_seconds": 3600,
///         "credentials_allowed": True,
///     },
///     configuration_export_storage_account_name="storage_account_name")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example",
///         Location = "West Europe",
///     });
///
///     var current = Azure.Core.GetClientConfig.Invoke();
///
///     var exampleWorkspace = new Azure.Healthcare.Workspace("example", new()
///     {
///         Name = "example",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///     });
///
///     var exampleFhirService = new Azure.Healthcare.FhirService("example", new()
///     {
///         Name = "tfexfhir",
///         Location = "east us",
///         ResourceGroupName = "tfex-resource_group",
///         WorkspaceId = exampleWorkspace.Id,
///         Kind = "fhir-R4",
///         Authentication = new Azure.Healthcare.Inputs.FhirServiceAuthenticationArgs
///         {
///             Authority = "https://login.microsoftonline.com/tenantId",
///             Audience = "https://tfexfhir.fhir.azurehealthcareapis.com",
///         },
///         AccessPolicyObjectIds = new[]
///         {
///             current.Apply(getClientConfigResult => getClientConfigResult.ObjectId),
///         },
///         Identity = new Azure.Healthcare.Inputs.FhirServiceIdentityArgs
///         {
///             Type = "SystemAssigned",
///         },
///         ContainerRegistryLoginServerUrls = new[]
///         {
///             "tfex-container_registry_login_server",
///         },
///         Cors = new Azure.Healthcare.Inputs.FhirServiceCorsArgs
///         {
///             AllowedOrigins = new[]
///             {
///                 "https://tfex.com:123",
///                 "https://tfex1.com:3389",
///             },
///             AllowedHeaders = new[]
///             {
///                 "*",
///             },
///             AllowedMethods = new[]
///             {
///                 "GET",
///                 "DELETE",
///                 "PUT",
///             },
///             MaxAgeInSeconds = 3600,
///             CredentialsAllowed = true,
///         },
///         ConfigurationExportStorageAccountName = "storage_account_name",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/healthcare"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		current, err := core.GetClientConfig(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleWorkspace, err := healthcare.NewWorkspace(ctx, "example", &healthcare.WorkspaceArgs{
/// 			Name:              pulumi.String("example"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = healthcare.NewFhirService(ctx, "example", &healthcare.FhirServiceArgs{
/// 			Name:              pulumi.String("tfexfhir"),
/// 			Location:          pulumi.String("east us"),
/// 			ResourceGroupName: pulumi.String("tfex-resource_group"),
/// 			WorkspaceId:       exampleWorkspace.ID(),
/// 			Kind:              pulumi.String("fhir-R4"),
/// 			Authentication: &healthcare.FhirServiceAuthenticationArgs{
/// 				Authority: pulumi.String("https://login.microsoftonline.com/tenantId"),
/// 				Audience:  pulumi.String("https://tfexfhir.fhir.azurehealthcareapis.com"),
/// 			},
/// 			AccessPolicyObjectIds: pulumi.StringArray{
/// 				pulumi.String(current.ObjectId),
/// 			},
/// 			Identity: &healthcare.FhirServiceIdentityArgs{
/// 				Type: pulumi.String("SystemAssigned"),
/// 			},
/// 			ContainerRegistryLoginServerUrls: pulumi.StringArray{
/// 				pulumi.String("tfex-container_registry_login_server"),
/// 			},
/// 			Cors: &healthcare.FhirServiceCorsArgs{
/// 				AllowedOrigins: pulumi.StringArray{
/// 					pulumi.String("https://tfex.com:123"),
/// 					pulumi.String("https://tfex1.com:3389"),
/// 				},
/// 				AllowedHeaders: pulumi.StringArray{
/// 					pulumi.String("*"),
/// 				},
/// 				AllowedMethods: pulumi.StringArray{
/// 					pulumi.String("GET"),
/// 					pulumi.String("DELETE"),
/// 					pulumi.String("PUT"),
/// 				},
/// 				MaxAgeInSeconds:    pulumi.Int(3600),
/// 				CredentialsAllowed: pulumi.Bool(true),
/// 			},
/// 			ConfigurationExportStorageAccountName: pulumi.String("storage_account_name"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.core.CoreFunctions;
/// import com.pulumi.azure.healthcare.Workspace;
/// import com.pulumi.azure.healthcare.WorkspaceArgs;
/// import com.pulumi.azure.healthcare.FhirService;
/// import com.pulumi.azure.healthcare.FhirServiceArgs;
/// import com.pulumi.azure.healthcare.inputs.FhirServiceAuthenticationArgs;
/// import com.pulumi.azure.healthcare.inputs.FhirServiceIdentityArgs;
/// import com.pulumi.azure.healthcare.inputs.FhirServiceCorsArgs;
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
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("example")
///             .location("West Europe")
///             .build());
///
///         final var current = CoreFunctions.getClientConfig(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         var exampleWorkspace = new Workspace("exampleWorkspace", WorkspaceArgs.builder()
///             .name("example")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .build());
///
///         var exampleFhirService = new FhirService("exampleFhirService", FhirServiceArgs.builder()
///             .name("tfexfhir")
///             .location("east us")
///             .resourceGroupName("tfex-resource_group")
///             .workspaceId(exampleWorkspace.id())
///             .kind("fhir-R4")
///             .authentication(FhirServiceAuthenticationArgs.builder()
///                 .authority("https://login.microsoftonline.com/tenantId")
///                 .audience("https://tfexfhir.fhir.azurehealthcareapis.com")
///                 .build())
///             .accessPolicyObjectIds(current.objectId())
///             .identity(FhirServiceIdentityArgs.builder()
///                 .type("SystemAssigned")
///                 .build())
///             .containerRegistryLoginServerUrls("tfex-container_registry_login_server")
///             .cors(FhirServiceCorsArgs.builder()
///                 .allowedOrigins(
///                     "https://tfex.com:123",
///                     "https://tfex1.com:3389")
///                 .allowedHeaders("*")
///                 .allowedMethods(
///                     "GET",
///                     "DELETE",
///                     "PUT")
///                 .maxAgeInSeconds(3600)
///                 .credentialsAllowed(true)
///                 .build())
///             .configurationExportStorageAccountName("storage_account_name")
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
///       name: example
///       location: West Europe
///   exampleWorkspace:
///     type: azure:healthcare:Workspace
///     name: example
///     properties:
///       name: example
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///   exampleFhirService:
///     type: azure:healthcare:FhirService
///     name: example
///     properties:
///       name: tfexfhir
///       location: east us
///       resourceGroupName: tfex-resource_group
///       workspaceId: ${exampleWorkspace.id}
///       kind: fhir-R4
///       authentication:
///         authority: https://login.microsoftonline.com/tenantId
///         audience: https://tfexfhir.fhir.azurehealthcareapis.com
///       accessPolicyObjectIds:
///         - ${current.objectId}
///       identity:
///         type: SystemAssigned
///       containerRegistryLoginServerUrls:
///         - tfex-container_registry_login_server
///       cors:
///         allowedOrigins:
///           - https://tfex.com:123
///           - https://tfex1.com:3389
///         allowedHeaders:
///           - '*'
///         allowedMethods:
///           - GET
///           - DELETE
///           - PUT
///         maxAgeInSeconds: 3600
///         credentialsAllowed: true
///       configurationExportStorageAccountName: storage_account_name
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
/// * `Microsoft.HealthcareApis` - 2022-12-01
///
/// ## Import
///
/// Healthcare FHIR Service can be imported using the resource`id`, e.g.
///
/// ```sh
/// $ pulumi import azure:healthcare/fhirService:FhirService example /subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/group1/providers/Microsoft.HealthcareApis/workspaces/workspace1/fhirServices/service1
/// ```
class FhirService extends pulumi.CustomResource {
  /// A list of the access policies of the service instance.
  late final pulumi.Output<List<String>?> accessPolicyObjectIds;
  /// An `authentication` block as defined below.
  late final pulumi.Output<FhirServiceAuthentication> authentication;
  /// Specifies the name of the storage account which the operation configuration information is exported to.
  late final pulumi.Output<String?> configurationExportStorageAccountName;
  /// A list of azure container registry settings used for convert data operation of the service instance.
  late final pulumi.Output<List<String>?> containerRegistryLoginServerUrls;
  /// A `cors` block as defined below.
  late final pulumi.Output<FhirServiceCors?> cors;
  /// An `identity` block as defined below.
  late final pulumi.Output<FhirServiceIdentity?> identity;
  /// Specifies the kind of the Healthcare FHIR Service. Possible values are: `fhir-Stu3` and `fhir-R4`. Defaults to `fhir-R4`. Changing this forces a new Healthcare FHIR Service to be created.
  late final pulumi.Output<String?> kind;
  /// Specifies the Azure Region where the Healthcare FHIR Service should be created. Changing this forces a new Healthcare FHIR Service to be created.
  late final pulumi.Output<String> location;
  /// Specifies the name of the Healthcare FHIR Service. Changing this forces a new Healthcare FHIR Service to be created.
  late final pulumi.Output<String> name;
  /// [A list](https://www.terraform.io/docs/configuration/attr-as-blocks.html) of `oci_artifact` objects as defined below to describe [OCI artifacts for export](https://learn.microsoft.com/en-gb/azure/healthcare-apis/fhir/de-identified-export).
  late final pulumi.Output<List<Map<String, dynamic>>?> ociArtifacts;
  /// Whether public networks access is enabled.
  late final pulumi.Output<bool> publicNetworkAccessEnabled;
  /// Specifies the name of the Resource Group in which to create the Healthcare FHIR Service. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// A mapping of tags to assign to the Healthcare FHIR Service.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Specifies the id of the Healthcare Workspace where the Healthcare FHIR Service should exist. Changing this forces a new Healthcare FHIR Service to be created.
  late final pulumi.Output<String> workspaceId;

  /// Creates a new [FhirService].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FhirService]. {@macro pulumi_healthcare_fhir_service_fhir_service_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FhirService(
    String name, {
    FhirServiceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:healthcare/fhirService:FhirService',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accessPolicyObjectIds = registerOutput<List<String>?>('accessPolicyObjectIds');
    authentication = registerOutput<FhirServiceAuthentication>('authentication', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FhirServiceAuthentication.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    configurationExportStorageAccountName = registerOutput<String?>('configurationExportStorageAccountName');
    containerRegistryLoginServerUrls = registerOutput<List<String>?>('containerRegistryLoginServerUrls');
    cors = registerOutput<FhirServiceCors?>('cors', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FhirServiceCors.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    identity = registerOutput<FhirServiceIdentity?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FhirServiceIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    kind = registerOutput<String?>('kind');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    ociArtifacts = registerOutput<List<Map<String, dynamic>>?>('ociArtifacts');
    publicNetworkAccessEnabled = registerOutput<bool>('publicNetworkAccessEnabled');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    tags = registerOutput<Map<String, String>?>('tags');
    workspaceId = registerOutput<String>('workspaceId');
  }

  /// Gets an existing [FhirService] resource's state with the given [name] and [id].
  static FhirService get(
    String name,
    pulumi.Input<String> id, {
    FhirServiceState? state,
  }) {
    return FhirService._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  FhirService._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:healthcare/fhirService:FhirService',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accessPolicyObjectIds = registerOutput<List<String>?>('accessPolicyObjectIds');
    authentication = registerOutput<FhirServiceAuthentication>('authentication', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FhirServiceAuthentication.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    configurationExportStorageAccountName = registerOutput<String?>('configurationExportStorageAccountName');
    containerRegistryLoginServerUrls = registerOutput<List<String>?>('containerRegistryLoginServerUrls');
    cors = registerOutput<FhirServiceCors?>('cors', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FhirServiceCors.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    identity = registerOutput<FhirServiceIdentity?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FhirServiceIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    kind = registerOutput<String?>('kind');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    ociArtifacts = registerOutput<List<Map<String, dynamic>>?>('ociArtifacts');
    publicNetworkAccessEnabled = registerOutput<bool>('publicNetworkAccessEnabled');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    tags = registerOutput<Map<String, String>?>('tags');
    workspaceId = registerOutput<String>('workspaceId');
  }
}
