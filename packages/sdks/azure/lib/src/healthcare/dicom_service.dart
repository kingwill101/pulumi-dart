import 'package:pulumi/pulumi.dart' as pulumi;
import 'dicom_service_args.dart';
import 'dicom_service_cors.dart';
import 'dicom_service_identity.dart';
import 'dicom_service_state.dart';
import 'dicom_service_storage.dart';

/// Manages a Healthcare DICOM Service
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const test = new azure.healthcare.Workspace("test", {
///     name: "tfexworkspace",
///     resourceGroupName: "tfex-resource_group",
///     location: "east us",
/// });
/// const testDicomService = new azure.healthcare.DicomService("test", {
///     name: "tfexDicom",
///     workspaceId: test.id,
///     location: "east us",
///     identity: {
///         type: "SystemAssigned",
///     },
///     tags: {
///         environment: "None",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// test = azure.healthcare.Workspace("test",
///     name="tfexworkspace",
///     resource_group_name="tfex-resource_group",
///     location="east us")
/// test_dicom_service = azure.healthcare.DicomService("test",
///     name="tfexDicom",
///     workspace_id=test.id,
///     location="east us",
///     identity={
///         "type": "SystemAssigned",
///     },
///     tags={
///         "environment": "None",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = new Azure.Healthcare.Workspace("test", new()
///     {
///         Name = "tfexworkspace",
///         ResourceGroupName = "tfex-resource_group",
///         Location = "east us",
///     });
///
///     var testDicomService = new Azure.Healthcare.DicomService("test", new()
///     {
///         Name = "tfexDicom",
///         WorkspaceId = test.Id,
///         Location = "east us",
///         Identity = new Azure.Healthcare.Inputs.DicomServiceIdentityArgs
///         {
///             Type = "SystemAssigned",
///         },
///         Tags =
///         {
///             { "environment", "None" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/healthcare"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		test, err := healthcare.NewWorkspace(ctx, "test", &healthcare.WorkspaceArgs{
/// 			Name:              pulumi.String("tfexworkspace"),
/// 			ResourceGroupName: pulumi.String("tfex-resource_group"),
/// 			Location:          pulumi.String("east us"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = healthcare.NewDicomService(ctx, "test", &healthcare.DicomServiceArgs{
/// 			Name:        pulumi.String("tfexDicom"),
/// 			WorkspaceId: test.ID(),
/// 			Location:    pulumi.String("east us"),
/// 			Identity: &healthcare.DicomServiceIdentityArgs{
/// 				Type: pulumi.String("SystemAssigned"),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"environment": pulumi.String("None"),
/// 			},
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
/// import com.pulumi.azure.healthcare.Workspace;
/// import com.pulumi.azure.healthcare.WorkspaceArgs;
/// import com.pulumi.azure.healthcare.DicomService;
/// import com.pulumi.azure.healthcare.DicomServiceArgs;
/// import com.pulumi.azure.healthcare.inputs.DicomServiceIdentityArgs;
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
///         var test = new Workspace("test", WorkspaceArgs.builder()
///             .name("tfexworkspace")
///             .resourceGroupName("tfex-resource_group")
///             .location("east us")
///             .build());
///
///         var testDicomService = new DicomService("testDicomService", DicomServiceArgs.builder()
///             .name("tfexDicom")
///             .workspaceId(test.id())
///             .location("east us")
///             .identity(DicomServiceIdentityArgs.builder()
///                 .type("SystemAssigned")
///                 .build())
///             .tags(Map.of("environment", "None"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test:
///     type: azure:healthcare:Workspace
///     properties:
///       name: tfexworkspace
///       resourceGroupName: tfex-resource_group
///       location: east us
///   testDicomService:
///     type: azure:healthcare:DicomService
///     name: test
///     properties:
///       name: tfexDicom
///       workspaceId: ${test.id}
///       location: east us
///       identity:
///         type: SystemAssigned
///       tags:
///         environment: None
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.HealthcareApis` - 2024-03-31
///
/// ## Import
///
/// Healthcare DICOM Service can be imported using the resource`id`, e.g.
///
/// ```sh
/// $ pulumi import azure:healthcare/dicomService:DicomService example /subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/group1/providers/Microsoft.HealthcareApis/workspaces/workspace1/dicomServices/service1
/// ```
class DicomService extends pulumi.CustomResource {
  /// The `authentication` block as defined below.
  late final pulumi.Output<List<Map<String, dynamic>>> authentications;
  /// A `cors` block as defined below.
  late final pulumi.Output<DicomServiceCors> cors;
  /// If data partitions are enabled or not. Defaults to `false`. Changing this forces a new Healthcare DICOM Service to be created.
  late final pulumi.Output<bool?> dataPartitionsEnabled;
  /// The URL of the key to use for encryption as part of the customer-managed key encryption settings. For more details, refer to the [Azure Customer-Managed Keys Overview](https://learn.microsoft.com/en-us/azure/storage/common/customer-managed-keys-overview).
  late final pulumi.Output<String?> encryptionKeyUrl;
  /// An `identity` block as defined below.
  late final pulumi.Output<DicomServiceIdentity?> identity;
  /// Specifies the Azure Region where the Healthcare DICOM Service should be created. Changing this forces a new Healthcare DICOM Service to be created.
  late final pulumi.Output<String> location;
  /// Specifies the name of the Healthcare DICOM Service. Changing this forces a new Healthcare DICOM Service to be created.
  late final pulumi.Output<String> name;
  late final pulumi.Output<List<Map<String, dynamic>>> privateEndpoints;
  /// Whether to enabled public networks when data plane traffic coming from public networks while private endpoint is enabled. Defaults to `true`.
  late final pulumi.Output<bool?> publicNetworkAccessEnabled;
  /// The url of the Healthcare DICOM Services.
  late final pulumi.Output<String> serviceUrl;
  /// A `storage` block as defined below. Changing this forces a new resource to be created.
  late final pulumi.Output<DicomServiceStorage> storage;
  /// A mapping of tags to assign to the Healthcare DICOM Service.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Specifies the ID of the Healthcare Workspace where the Healthcare DICOM Service should exist. Changing this forces a new Healthcare DICOM Service to be created.
  late final pulumi.Output<String> workspaceId;

  /// Creates a new [DicomService].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DicomService]. {@macro pulumi_healthcare_dicom_service_dicom_service_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DicomService(
    String name, {
    DicomServiceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:healthcare/dicomService:DicomService',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    authentications = registerOutput<List<Map<String, dynamic>>>('authentications');
    cors = registerOutput<DicomServiceCors>('cors', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DicomServiceCors.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    dataPartitionsEnabled = registerOutput<bool?>('dataPartitionsEnabled');
    encryptionKeyUrl = registerOutput<String?>('encryptionKeyUrl');
    identity = registerOutput<DicomServiceIdentity?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DicomServiceIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    privateEndpoints = registerOutput<List<Map<String, dynamic>>>('privateEndpoints');
    publicNetworkAccessEnabled = registerOutput<bool?>('publicNetworkAccessEnabled');
    serviceUrl = registerOutput<String>('serviceUrl');
    storage = registerOutput<DicomServiceStorage>('storage', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DicomServiceStorage.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    workspaceId = registerOutput<String>('workspaceId');
  }

  /// Gets an existing [DicomService] resource's state with the given [name] and [id].
  static DicomService get(
    String name,
    pulumi.Input<String> id, {
    DicomServiceState? state,
  }) {
    return DicomService._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  DicomService._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:healthcare/dicomService:DicomService',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    authentications = registerOutput<List<Map<String, dynamic>>>('authentications');
    cors = registerOutput<DicomServiceCors>('cors', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DicomServiceCors.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    dataPartitionsEnabled = registerOutput<bool?>('dataPartitionsEnabled');
    encryptionKeyUrl = registerOutput<String?>('encryptionKeyUrl');
    identity = registerOutput<DicomServiceIdentity?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DicomServiceIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    privateEndpoints = registerOutput<List<Map<String, dynamic>>>('privateEndpoints');
    publicNetworkAccessEnabled = registerOutput<bool?>('publicNetworkAccessEnabled');
    serviceUrl = registerOutput<String>('serviceUrl');
    storage = registerOutput<DicomServiceStorage>('storage', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DicomServiceStorage.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    workspaceId = registerOutput<String>('workspaceId');
  }
}
