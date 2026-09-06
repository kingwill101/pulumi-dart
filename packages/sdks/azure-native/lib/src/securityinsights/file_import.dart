import 'package:pulumi/pulumi.dart' as pulumi;
import 'file_import_args.dart';
import 'file_metadata_response.dart';
import 'system_data_response.dart';
import 'validation_error_response.dart';

/// Represents a file import in Azure Security Insights.
///
/// Uses Azure REST API version 2025-01-01-preview. In version 2.x of the Azure Native provider, it used API version 2023-06-01-preview.
///
/// Other available API versions: 2023-03-01-preview, 2023-04-01-preview, 2023-05-01-preview, 2023-06-01-preview, 2023-07-01-preview, 2023-08-01-preview, 2023-09-01-preview, 2023-10-01-preview, 2023-12-01-preview, 2024-01-01-preview, 2024-04-01-preview, 2024-10-01-preview, 2025-04-01-preview, 2025-07-01-preview, 2025-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native securityinsights [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create a file import.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var fileImport = new AzureNative.SecurityInsights.FileImport("fileImport", new()
///     {
///         ContentType = AzureNative.SecurityInsights.FileImportContentType.StixIndicator,
///         FileImportId = "73e01a99-5cd7-4139-a149-9f2736ff2ab5",
///         ImportFile = new AzureNative.SecurityInsights.Inputs.FileMetadataArgs
///         {
///             FileFormat = AzureNative.SecurityInsights.FileFormat.JSON,
///             FileName = "myFile.json",
///             FileSize = 4653,
///         },
///         IngestionMode = AzureNative.SecurityInsights.IngestionMode.IngestAnyValidRecords,
///         ResourceGroupName = "myRg",
///         Source = "mySource",
///         WorkspaceName = "myWorkspace",
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
/// 	securityinsights "github.com/pulumi/pulumi-azure-native-sdk/securityinsights/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := securityinsights.NewFileImport(ctx, "fileImport", &securityinsights.FileImportArgs{
/// 			ContentType:  pulumi.String(securityinsights.FileImportContentTypeStixIndicator),
/// 			FileImportId: pulumi.String("73e01a99-5cd7-4139-a149-9f2736ff2ab5"),
/// 			ImportFile: &securityinsights.FileMetadataArgs{
/// 				FileFormat: pulumi.String(securityinsights.FileFormatJSON),
/// 				FileName:   pulumi.String("myFile.json"),
/// 				FileSize:   pulumi.Int(4653),
/// 			},
/// 			IngestionMode:     pulumi.String(securityinsights.IngestionModeIngestAnyValidRecords),
/// 			ResourceGroupName: pulumi.String("myRg"),
/// 			Source:            pulumi.String("mySource"),
/// 			WorkspaceName:     pulumi.String("myWorkspace"),
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
/// resource "azure-native_securityinsights_fileimport" "fileImport" {
///   content_type   = "StixIndicator"
///   file_import_id = "73e01a99-5cd7-4139-a149-9f2736ff2ab5"
///   import_file = {
///     file_format = "JSON"
///     file_name   = "myFile.json"
///     file_size   = 4653
///   }
///   ingestion_mode      = "IngestAnyValidRecords"
///   resource_group_name = "myRg"
///   source              = "mySource"
///   workspace_name      = "myWorkspace"
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
/// import com.pulumi.azurenative.securityinsights.FileImport;
/// import com.pulumi.azurenative.securityinsights.FileImportArgs;
/// import com.pulumi.azurenative.securityinsights.inputs.FileMetadataArgs;
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
///         var fileImport = new FileImport("fileImport", FileImportArgs.builder()
///             .contentType("StixIndicator")
///             .fileImportId("73e01a99-5cd7-4139-a149-9f2736ff2ab5")
///             .importFile(FileMetadataArgs.builder()
///                 .fileFormat("JSON")
///                 .fileName("myFile.json")
///                 .fileSize(4653)
///                 .build())
///             .ingestionMode("IngestAnyValidRecords")
///             .resourceGroupName("myRg")
///             .source("mySource")
///             .workspaceName("myWorkspace")
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
/// const fileImport = new azure_native.securityinsights.FileImport("fileImport", {
///     contentType: azure_native.securityinsights.FileImportContentType.StixIndicator,
///     fileImportId: "73e01a99-5cd7-4139-a149-9f2736ff2ab5",
///     importFile: {
///         fileFormat: azure_native.securityinsights.FileFormat.JSON,
///         fileName: "myFile.json",
///         fileSize: 4653,
///     },
///     ingestionMode: azure_native.securityinsights.IngestionMode.IngestAnyValidRecords,
///     resourceGroupName: "myRg",
///     source: "mySource",
///     workspaceName: "myWorkspace",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// file_import = azure_native.securityinsights.FileImport("fileImport",
///     content_type=azure_native.securityinsights.FileImportContentType.STIX_INDICATOR,
///     file_import_id="73e01a99-5cd7-4139-a149-9f2736ff2ab5",
///     import_file={
///         "file_format": azure_native.securityinsights.FileFormat.JSON,
///         "file_name": "myFile.json",
///         "file_size": 4653,
///     },
///     ingestion_mode=azure_native.securityinsights.IngestionMode.INGEST_ANY_VALID_RECORDS,
///     resource_group_name="myRg",
///     source="mySource",
///     workspace_name="myWorkspace")
///
/// ```
///
/// ```yaml
/// resources:
///   fileImport:
///     type: azure-native:securityinsights:FileImport
///     properties:
///       contentType: StixIndicator
///       fileImportId: 73e01a99-5cd7-4139-a149-9f2736ff2ab5
///       importFile:
///         fileFormat: JSON
///         fileName: myFile.json
///         fileSize: 4653
///       ingestionMode: IngestAnyValidRecords
///       resourceGroupName: myRg
///       source: mySource
///       workspaceName: myWorkspace
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
/// $ pulumi import azure-native:securityinsights:FileImport 73e01a99-5cd7-4139-a149-9f2736ff2ab5 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.OperationalInsights/workspaces/{workspaceName}/providers/Microsoft.SecurityInsights/fileImports/{fileImportId}
/// ```
class FileImport extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The content type of this file.
  late final pulumi.Output<String> contentType;
  /// The time the file was imported.
  late final pulumi.Output<String> createdTimeUTC;
  /// Represents the error file (if the import was ingested with errors or failed the validation).
  late final pulumi.Output<FileMetadataResponse> errorFile;
  /// An ordered list of some of the errors that were encountered during validation.
  late final pulumi.Output<List<ValidationErrorResponse>> errorsPreview;
  /// The time the files associated with this import are deleted from the storage account.
  late final pulumi.Output<String> filesValidUntilTimeUTC;
  /// Represents the imported file.
  late final pulumi.Output<FileMetadataResponse> importFile;
  /// The time the file import record is soft deleted from the database and history.
  late final pulumi.Output<String> importValidUntilTimeUTC;
  /// The number of records that have been successfully ingested.
  late final pulumi.Output<int> ingestedRecordCount;
  /// Describes how to ingest the records in the file.
  late final pulumi.Output<String> ingestionMode;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The source for the data in the file.
  late final pulumi.Output<String> source;
  /// The state of the file import.
  late final pulumi.Output<String> state;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The number of records in the file.
  late final pulumi.Output<int> totalRecordCount;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// The number of records that have passed validation.
  late final pulumi.Output<int> validRecordCount;

  /// Creates a new [FileImport].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FileImport]. {@macro pulumi_securityinsights_file_import_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FileImport(
    String name, {
    FileImportArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:securityinsights:FileImport',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    contentType = registerOutput<String>('contentType');
    createdTimeUTC = registerOutput<String>('createdTimeUTC');
    errorFile = registerOutput<FileMetadataResponse>('errorFile', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FileMetadataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    errorsPreview = registerOutput<List<ValidationErrorResponse>>('errorsPreview', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ValidationErrorResponse>(guardedValue, (value) => ValidationErrorResponse.fromMap((value as Map).cast<String, dynamic>())); });
    filesValidUntilTimeUTC = registerOutput<String>('filesValidUntilTimeUTC');
    importFile = registerOutput<FileMetadataResponse>('importFile', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FileMetadataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    importValidUntilTimeUTC = registerOutput<String>('importValidUntilTimeUTC');
    ingestedRecordCount = registerOutput<int>('ingestedRecordCount');
    ingestionMode = registerOutput<String>('ingestionMode');
    this.name = registerOutput<String>('name');
    source = registerOutput<String>('source');
    state = registerOutput<String>('state');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    totalRecordCount = registerOutput<int>('totalRecordCount');
    type = registerOutput<String>('type');
    validRecordCount = registerOutput<int>('validRecordCount');
  }

  /// Creates a typed reference to an existing [FileImport] resource.
  FileImport.reference(String urn)
    : super(
        'azure-native:securityinsights:FileImport',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    contentType = registerOutput<String>('contentType');
    createdTimeUTC = registerOutput<String>('createdTimeUTC');
    errorFile = registerOutput<FileMetadataResponse>('errorFile', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FileMetadataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    errorsPreview = registerOutput<List<ValidationErrorResponse>>('errorsPreview', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ValidationErrorResponse>(guardedValue, (value) => ValidationErrorResponse.fromMap((value as Map).cast<String, dynamic>())); });
    filesValidUntilTimeUTC = registerOutput<String>('filesValidUntilTimeUTC');
    importFile = registerOutput<FileMetadataResponse>('importFile', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FileMetadataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    importValidUntilTimeUTC = registerOutput<String>('importValidUntilTimeUTC');
    ingestedRecordCount = registerOutput<int>('ingestedRecordCount');
    ingestionMode = registerOutput<String>('ingestionMode');
    this.name = registerOutput<String>('name');
    source = registerOutput<String>('source');
    state = registerOutput<String>('state');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    totalRecordCount = registerOutput<int>('totalRecordCount');
    type = registerOutput<String>('type');
    validRecordCount = registerOutput<int>('validRecordCount');
  }
}
