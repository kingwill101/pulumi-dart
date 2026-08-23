import 'package:pulumi/pulumi.dart' as pulumi;
import 'authorized_application_args.dart';
import 'authorized_application_properties_response.dart';
import 'system_data_response.dart';

/// Concrete proxy resource types can be created by aliasing this type using a specific property type.
///
/// Uses Azure REST API version 2024-09-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### AuthorizedApplications_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var authorizedApplication = new AzureNative.ProviderHub.AuthorizedApplication("authorizedApplication", new()
///     {
///         ApplicationId = "760505bf-dcfa-4311-b890-18da392a00b2",
///         Properties = new AzureNative.ProviderHub.Inputs.AuthorizedApplicationPropertiesArgs
///         {
///             DataAuthorizations = new[]
///             {
///                 new AzureNative.ProviderHub.Inputs.ApplicationDataAuthorizationArgs
///                 {
///                     ResourceTypes = new[]
///                     {
///                         "*",
///                     },
///                     Role = AzureNative.ProviderHub.Role.ServiceOwner,
///                 },
///             },
///             ProviderAuthorization = new AzureNative.ProviderHub.Inputs.ApplicationProviderAuthorizationArgs
///             {
///                 ManagedByRoleDefinitionId = "1a3b5c7d-8e9f-10g1-1h12-i13j14k1",
///                 RoleDefinitionId = "123456bf-gkur-2098-b890-98da392a00b2",
///             },
///         },
///         ProviderNamespace = "Microsoft.Contoso",
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
/// 	providerhub "github.com/pulumi/pulumi-azure-native-sdk/providerhub/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := providerhub.NewAuthorizedApplication(ctx, "authorizedApplication", &providerhub.AuthorizedApplicationArgs{
/// 			ApplicationId: pulumi.String("760505bf-dcfa-4311-b890-18da392a00b2"),
/// 			Properties: &providerhub.AuthorizedApplicationPropertiesArgs{
/// 				DataAuthorizations: providerhub.ApplicationDataAuthorizationArray{
/// 					&providerhub.ApplicationDataAuthorizationArgs{
/// 						ResourceTypes: pulumi.StringArray{
/// 							pulumi.String("*"),
/// 						},
/// 						Role: pulumi.String(providerhub.RoleServiceOwner),
/// 					},
/// 				},
/// 				ProviderAuthorization: &providerhub.ApplicationProviderAuthorizationArgs{
/// 					ManagedByRoleDefinitionId: pulumi.String("1a3b5c7d-8e9f-10g1-1h12-i13j14k1"),
/// 					RoleDefinitionId:          pulumi.String("123456bf-gkur-2098-b890-98da392a00b2"),
/// 				},
/// 			},
/// 			ProviderNamespace: pulumi.String("Microsoft.Contoso"),
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
/// resource "azure-native_providerhub_authorizedapplication" "authorizedApplication" {
///   application_id = "760505bf-dcfa-4311-b890-18da392a00b2"
///   properties = {
///     data_authorizations = [{
///       "resourceTypes" = ["*"]
///       "role"          = "ServiceOwner"
///     }]
///     provider_authorization = {
///       managed_by_role_definition_id = "1a3b5c7d-8e9f-10g1-1h12-i13j14k1"
///       role_definition_id            = "123456bf-gkur-2098-b890-98da392a00b2"
///     }
///   }
///   provider_namespace = "Microsoft.Contoso"
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
/// import com.pulumi.azurenative.providerhub.AuthorizedApplication;
/// import com.pulumi.azurenative.providerhub.AuthorizedApplicationArgs;
/// import com.pulumi.azurenative.providerhub.inputs.AuthorizedApplicationPropertiesArgs;
/// import com.pulumi.azurenative.providerhub.inputs.ApplicationProviderAuthorizationArgs;
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
///         var authorizedApplication = new AuthorizedApplication("authorizedApplication", AuthorizedApplicationArgs.builder()
///             .applicationId("760505bf-dcfa-4311-b890-18da392a00b2")
///             .properties(AuthorizedApplicationPropertiesArgs.builder()
///                 .dataAuthorizations(ApplicationDataAuthorizationArgs.builder()
///                     .resourceTypes("*")
///                     .role("ServiceOwner")
///                     .build())
///                 .providerAuthorization(ApplicationProviderAuthorizationArgs.builder()
///                     .managedByRoleDefinitionId("1a3b5c7d-8e9f-10g1-1h12-i13j14k1")
///                     .roleDefinitionId("123456bf-gkur-2098-b890-98da392a00b2")
///                     .build())
///                 .build())
///             .providerNamespace("Microsoft.Contoso")
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
/// const authorizedApplication = new azure_native.providerhub.AuthorizedApplication("authorizedApplication", {
///     applicationId: "760505bf-dcfa-4311-b890-18da392a00b2",
///     properties: {
///         dataAuthorizations: [{
///             resourceTypes: ["*"],
///             role: azure_native.providerhub.Role.ServiceOwner,
///         }],
///         providerAuthorization: {
///             managedByRoleDefinitionId: "1a3b5c7d-8e9f-10g1-1h12-i13j14k1",
///             roleDefinitionId: "123456bf-gkur-2098-b890-98da392a00b2",
///         },
///     },
///     providerNamespace: "Microsoft.Contoso",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// authorized_application = azure_native.providerhub.AuthorizedApplication("authorizedApplication",
///     application_id="760505bf-dcfa-4311-b890-18da392a00b2",
///     properties={
///         "data_authorizations": [{
///             "resource_types": ["*"],
///             "role": azure_native.providerhub.Role.SERVICE_OWNER,
///         }],
///         "provider_authorization": {
///             "managed_by_role_definition_id": "1a3b5c7d-8e9f-10g1-1h12-i13j14k1",
///             "role_definition_id": "123456bf-gkur-2098-b890-98da392a00b2",
///         },
///     },
///     provider_namespace="Microsoft.Contoso")
///
/// ```
///
/// ```yaml
/// resources:
///   authorizedApplication:
///     type: azure-native:providerhub:AuthorizedApplication
///     properties:
///       applicationId: 760505bf-dcfa-4311-b890-18da392a00b2
///       properties:
///         dataAuthorizations:
///           - resourceTypes:
///               - '*'
///             role: ServiceOwner
///         providerAuthorization:
///           managedByRoleDefinitionId: 1a3b5c7d-8e9f-10g1-1h12-i13j14k1
///           roleDefinitionId: 123456bf-gkur-2098-b890-98da392a00b2
///       providerNamespace: Microsoft.Contoso
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
/// $ pulumi import azure-native:providerhub:AuthorizedApplication Microsoft.Contoso/760505bf-dcfa-4311-b890-18da392a00b2 /subscriptions/{subscriptionId}/providers/Microsoft.ProviderHub/providerRegistrations/{providerNamespace}/authorizedApplications/{applicationId}
/// ```
class AuthorizedApplication extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The name of the resource
  late final pulumi.Output<String> name;
  late final pulumi.Output<AuthorizedApplicationPropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [AuthorizedApplication].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AuthorizedApplication]. {@macro pulumi_providerhub_authorized_application_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AuthorizedApplication(
    String name, {
    AuthorizedApplicationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:providerhub:AuthorizedApplication',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<AuthorizedApplicationPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AuthorizedApplicationPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
