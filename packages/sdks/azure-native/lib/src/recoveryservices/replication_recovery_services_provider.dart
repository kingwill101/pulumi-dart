import 'package:pulumi/pulumi.dart' as pulumi;
import 'recovery_services_provider_properties_response.dart';
import 'replication_recovery_services_provider_args.dart';

/// Provider details.
///
/// Uses Azure REST API version 2024-10-01. In version 2.x of the Azure Native provider, it used API version 2023-04-01.
///
/// Other available API versions: 2023-02-01, 2023-04-01, 2023-06-01, 2023-08-01, 2024-01-01, 2024-02-01, 2024-04-01, 2025-01-01, 2025-02-01, 2025-08-01, 2026-01-01, 2026-02-01, 2026-03-31-preview, 2026-05-01, 2026-05-31-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native recoveryservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Adds a recovery services provider.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var replicationRecoveryServicesProvider = new AzureNative.RecoveryServices.ReplicationRecoveryServicesProvider("replicationRecoveryServicesProvider", new()
///     {
///         FabricName = "vmwarefabric1",
///         Properties = new AzureNative.RecoveryServices.Inputs.AddRecoveryServicesProviderInputPropertiesArgs
///         {
///             AuthenticationIdentityInput = new AzureNative.RecoveryServices.Inputs.IdentityProviderInputArgs
///             {
///                 AadAuthority = "https://login.microsoftonline.com",
///                 ApplicationId = "f66fce08-c0c6-47a1-beeb-0ede5ea94f90",
///                 Audience = "https://microsoft.onmicrosoft.com/cf19e349-644c-4c6a-bcae-9c8f35357874",
///                 ObjectId = "141360b8-5686-4240-a027-5e24e6affeba",
///                 TenantId = "72f988bf-86f1-41af-91ab-2d7cd011db47",
///             },
///             MachineName = "vmwareprovider1",
///             ResourceAccessIdentityInput = new AzureNative.RecoveryServices.Inputs.IdentityProviderInputArgs
///             {
///                 AadAuthority = "https://login.microsoftonline.com",
///                 ApplicationId = "f66fce08-c0c6-47a1-beeb-0ede5ea94f90",
///                 Audience = "https://microsoft.onmicrosoft.com/cf19e349-644c-4c6a-bcae-9c8f35357874",
///                 ObjectId = "141360b8-5686-4240-a027-5e24e6affeba",
///                 TenantId = "72f988bf-86f1-41af-91ab-2d7cd011db47",
///             },
///         },
///         ProviderName = "vmwareprovider1",
///         ResourceGroupName = "resourcegroup1",
///         ResourceName = "migrationvault",
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
/// 	recoveryservices "github.com/pulumi/pulumi-azure-native-sdk/recoveryservices/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := recoveryservices.NewReplicationRecoveryServicesProvider(ctx, "replicationRecoveryServicesProvider", &recoveryservices.ReplicationRecoveryServicesProviderArgs{
/// 			FabricName: pulumi.String("vmwarefabric1"),
/// 			Properties: &recoveryservices.AddRecoveryServicesProviderInputPropertiesArgs{
/// 				AuthenticationIdentityInput: &recoveryservices.IdentityProviderInputArgs{
/// 					AadAuthority:  pulumi.String("https://login.microsoftonline.com"),
/// 					ApplicationId: pulumi.String("f66fce08-c0c6-47a1-beeb-0ede5ea94f90"),
/// 					Audience:      pulumi.String("https://microsoft.onmicrosoft.com/cf19e349-644c-4c6a-bcae-9c8f35357874"),
/// 					ObjectId:      pulumi.String("141360b8-5686-4240-a027-5e24e6affeba"),
/// 					TenantId:      pulumi.String("72f988bf-86f1-41af-91ab-2d7cd011db47"),
/// 				},
/// 				MachineName: pulumi.String("vmwareprovider1"),
/// 				ResourceAccessIdentityInput: &recoveryservices.IdentityProviderInputArgs{
/// 					AadAuthority:  pulumi.String("https://login.microsoftonline.com"),
/// 					ApplicationId: pulumi.String("f66fce08-c0c6-47a1-beeb-0ede5ea94f90"),
/// 					Audience:      pulumi.String("https://microsoft.onmicrosoft.com/cf19e349-644c-4c6a-bcae-9c8f35357874"),
/// 					ObjectId:      pulumi.String("141360b8-5686-4240-a027-5e24e6affeba"),
/// 					TenantId:      pulumi.String("72f988bf-86f1-41af-91ab-2d7cd011db47"),
/// 				},
/// 			},
/// 			ProviderName:      pulumi.String("vmwareprovider1"),
/// 			ResourceGroupName: pulumi.String("resourcegroup1"),
/// 			ResourceName:      pulumi.String("migrationvault"),
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
/// resource "azure-native_recoveryservices_replicationrecoveryservicesprovider" "replicationRecoveryServicesProvider" {
///   fabric_name = "vmwarefabric1"
///   properties = {
///     authentication_identity_input = {
///       aad_authority  = "https://login.microsoftonline.com"
///       application_id = "f66fce08-c0c6-47a1-beeb-0ede5ea94f90"
///       audience       = "https://microsoft.onmicrosoft.com/cf19e349-644c-4c6a-bcae-9c8f35357874"
///       object_id      = "141360b8-5686-4240-a027-5e24e6affeba"
///       tenant_id      = "72f988bf-86f1-41af-91ab-2d7cd011db47"
///     }
///     machine_name = "vmwareprovider1"
///     resource_access_identity_input = {
///       aad_authority  = "https://login.microsoftonline.com"
///       application_id = "f66fce08-c0c6-47a1-beeb-0ede5ea94f90"
///       audience       = "https://microsoft.onmicrosoft.com/cf19e349-644c-4c6a-bcae-9c8f35357874"
///       object_id      = "141360b8-5686-4240-a027-5e24e6affeba"
///       tenant_id      = "72f988bf-86f1-41af-91ab-2d7cd011db47"
///     }
///   }
///   provider_name       = "vmwareprovider1"
///   resource_group_name = "resourcegroup1"
///   resource_name       = "migrationvault"
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
/// import com.pulumi.azurenative.recoveryservices.ReplicationRecoveryServicesProvider;
/// import com.pulumi.azurenative.recoveryservices.ReplicationRecoveryServicesProviderArgs;
/// import com.pulumi.azurenative.recoveryservices.inputs.AddRecoveryServicesProviderInputPropertiesArgs;
/// import com.pulumi.azurenative.recoveryservices.inputs.IdentityProviderInputArgs;
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
///         var replicationRecoveryServicesProvider = new ReplicationRecoveryServicesProvider("replicationRecoveryServicesProvider", ReplicationRecoveryServicesProviderArgs.builder()
///             .fabricName("vmwarefabric1")
///             .properties(AddRecoveryServicesProviderInputPropertiesArgs.builder()
///                 .authenticationIdentityInput(IdentityProviderInputArgs.builder()
///                     .aadAuthority("https://login.microsoftonline.com")
///                     .applicationId("f66fce08-c0c6-47a1-beeb-0ede5ea94f90")
///                     .audience("https://microsoft.onmicrosoft.com/cf19e349-644c-4c6a-bcae-9c8f35357874")
///                     .objectId("141360b8-5686-4240-a027-5e24e6affeba")
///                     .tenantId("72f988bf-86f1-41af-91ab-2d7cd011db47")
///                     .build())
///                 .machineName("vmwareprovider1")
///                 .resourceAccessIdentityInput(IdentityProviderInputArgs.builder()
///                     .aadAuthority("https://login.microsoftonline.com")
///                     .applicationId("f66fce08-c0c6-47a1-beeb-0ede5ea94f90")
///                     .audience("https://microsoft.onmicrosoft.com/cf19e349-644c-4c6a-bcae-9c8f35357874")
///                     .objectId("141360b8-5686-4240-a027-5e24e6affeba")
///                     .tenantId("72f988bf-86f1-41af-91ab-2d7cd011db47")
///                     .build())
///                 .build())
///             .providerName("vmwareprovider1")
///             .resourceGroupName("resourcegroup1")
///             .resourceName("migrationvault")
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
/// const replicationRecoveryServicesProvider = new azure_native.recoveryservices.ReplicationRecoveryServicesProvider("replicationRecoveryServicesProvider", {
///     fabricName: "vmwarefabric1",
///     properties: {
///         authenticationIdentityInput: {
///             aadAuthority: "https://login.microsoftonline.com",
///             applicationId: "f66fce08-c0c6-47a1-beeb-0ede5ea94f90",
///             audience: "https://microsoft.onmicrosoft.com/cf19e349-644c-4c6a-bcae-9c8f35357874",
///             objectId: "141360b8-5686-4240-a027-5e24e6affeba",
///             tenantId: "72f988bf-86f1-41af-91ab-2d7cd011db47",
///         },
///         machineName: "vmwareprovider1",
///         resourceAccessIdentityInput: {
///             aadAuthority: "https://login.microsoftonline.com",
///             applicationId: "f66fce08-c0c6-47a1-beeb-0ede5ea94f90",
///             audience: "https://microsoft.onmicrosoft.com/cf19e349-644c-4c6a-bcae-9c8f35357874",
///             objectId: "141360b8-5686-4240-a027-5e24e6affeba",
///             tenantId: "72f988bf-86f1-41af-91ab-2d7cd011db47",
///         },
///     },
///     providerName: "vmwareprovider1",
///     resourceGroupName: "resourcegroup1",
///     resourceName: "migrationvault",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// replication_recovery_services_provider = azure_native.recoveryservices.ReplicationRecoveryServicesProvider("replicationRecoveryServicesProvider",
///     fabric_name="vmwarefabric1",
///     properties={
///         "authentication_identity_input": {
///             "aad_authority": "https://login.microsoftonline.com",
///             "application_id": "f66fce08-c0c6-47a1-beeb-0ede5ea94f90",
///             "audience": "https://microsoft.onmicrosoft.com/cf19e349-644c-4c6a-bcae-9c8f35357874",
///             "object_id": "141360b8-5686-4240-a027-5e24e6affeba",
///             "tenant_id": "72f988bf-86f1-41af-91ab-2d7cd011db47",
///         },
///         "machine_name": "vmwareprovider1",
///         "resource_access_identity_input": {
///             "aad_authority": "https://login.microsoftonline.com",
///             "application_id": "f66fce08-c0c6-47a1-beeb-0ede5ea94f90",
///             "audience": "https://microsoft.onmicrosoft.com/cf19e349-644c-4c6a-bcae-9c8f35357874",
///             "object_id": "141360b8-5686-4240-a027-5e24e6affeba",
///             "tenant_id": "72f988bf-86f1-41af-91ab-2d7cd011db47",
///         },
///     },
///     provider_name="vmwareprovider1",
///     resource_group_name="resourcegroup1",
///     resource_name_="migrationvault")
///
/// ```
///
/// ```yaml
/// resources:
///   replicationRecoveryServicesProvider:
///     type: azure-native:recoveryservices:ReplicationRecoveryServicesProvider
///     properties:
///       fabricName: vmwarefabric1
///       properties:
///         authenticationIdentityInput:
///           aadAuthority: https://login.microsoftonline.com
///           applicationId: f66fce08-c0c6-47a1-beeb-0ede5ea94f90
///           audience: https://microsoft.onmicrosoft.com/cf19e349-644c-4c6a-bcae-9c8f35357874
///           objectId: 141360b8-5686-4240-a027-5e24e6affeba
///           tenantId: 72f988bf-86f1-41af-91ab-2d7cd011db47
///         machineName: vmwareprovider1
///         resourceAccessIdentityInput:
///           aadAuthority: https://login.microsoftonline.com
///           applicationId: f66fce08-c0c6-47a1-beeb-0ede5ea94f90
///           audience: https://microsoft.onmicrosoft.com/cf19e349-644c-4c6a-bcae-9c8f35357874
///           objectId: 141360b8-5686-4240-a027-5e24e6affeba
///           tenantId: 72f988bf-86f1-41af-91ab-2d7cd011db47
///       providerName: vmwareprovider1
///       resourceGroupName: resourcegroup1
///       resourceName: migrationvault
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
/// $ pulumi import azure-native:recoveryservices:ReplicationRecoveryServicesProvider vmwareprovider1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.RecoveryServices/vaults/{resourceName}/replicationFabrics/{fabricName}/replicationRecoveryServicesProviders/{providerName}
/// ```
class ReplicationRecoveryServicesProvider extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Resource Location
  late final pulumi.Output<String?> location;
  /// Resource Name
  late final pulumi.Output<String> name;
  /// Provider properties.
  late final pulumi.Output<RecoveryServicesProviderPropertiesResponse> properties;
  /// Resource Type
  late final pulumi.Output<String> type;

  /// Creates a new [ReplicationRecoveryServicesProvider].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ReplicationRecoveryServicesProvider]. {@macro pulumi_recoveryservices_replication_recovery_services_provider_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ReplicationRecoveryServicesProvider(
    String name, {
    ReplicationRecoveryServicesProviderArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:recoveryservices:ReplicationRecoveryServicesProvider',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<RecoveryServicesProviderPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RecoveryServicesProviderPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [ReplicationRecoveryServicesProvider] resource.
  ReplicationRecoveryServicesProvider.reference(String urn)
    : super(
        'azure-native:recoveryservices:ReplicationRecoveryServicesProvider',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<RecoveryServicesProviderPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RecoveryServicesProviderPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
