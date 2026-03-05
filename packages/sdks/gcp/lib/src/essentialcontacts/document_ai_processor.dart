import 'package:pulumi/pulumi.dart' as pulumi;
import 'document_ai_processor_args.dart';
import 'document_ai_processor_state.dart';

/// The first-class citizen for Document AI. Each processor defines how to extract structural information from a document.
///
///
/// To get more information about Processor, see:
///
/// * [API documentation](https://cloud.google.com/document-ai/docs/reference/rest/v1/projects.locations.processors)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/document-ai/docs/overview)
///
/// ## Example Usage
///
/// ### Documentai Processor
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const processor = new gcp.essentialcontacts.DocumentAiProcessor("processor", {
///     location: "us",
///     displayName: "test-processor",
///     type: "OCR_PROCESSOR",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// processor = gcp.essentialcontacts.DocumentAiProcessor("processor",
///     location="us",
///     display_name="test-processor",
///     type="OCR_PROCESSOR")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var processor = new Gcp.EssentialContacts.DocumentAiProcessor("processor", new()
///     {
///         Location = "us",
///         DisplayName = "test-processor",
///         Type = "OCR_PROCESSOR",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/essentialcontacts"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := essentialcontacts.NewDocumentAiProcessor(ctx, "processor", &essentialcontacts.DocumentAiProcessorArgs{
/// 			Location:    pulumi.String("us"),
/// 			DisplayName: pulumi.String("test-processor"),
/// 			Type:        pulumi.String("OCR_PROCESSOR"),
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
/// import com.pulumi.gcp.essentialcontacts.DocumentAiProcessor;
/// import com.pulumi.gcp.essentialcontacts.DocumentAiProcessorArgs;
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
///         var processor = new DocumentAiProcessor("processor", DocumentAiProcessorArgs.builder()
///             .location("us")
///             .displayName("test-processor")
///             .type("OCR_PROCESSOR")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   processor:
///     type: gcp:essentialcontacts:DocumentAiProcessor
///     properties:
///       location: us
///       displayName: test-processor
///       type: OCR_PROCESSOR
/// ```
///
///
/// ## Import
///
/// Processor can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/processors/{{name}}`
///
/// * `{{project}}/{{location}}/{{name}}`
///
/// * `{{location}}/{{name}}`
///
/// When using the `pulumi import` command, Processor can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:essentialcontacts/documentAiProcessor:DocumentAiProcessor default projects/{{project}}/locations/{{location}}/processors/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:essentialcontacts/documentAiProcessor:DocumentAiProcessor default {{project}}/{{location}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:essentialcontacts/documentAiProcessor:DocumentAiProcessor default {{location}}/{{name}}
/// ```
class DocumentAiProcessor extends pulumi.CustomResource {
  /// The display name. Must be unique.
  late final pulumi.Output<String> displayName;
  /// The KMS key used for encryption/decryption in CMEK scenarios. See https://cloud.google.com/security-key-management.
  late final pulumi.Output<String?> kmsKeyName;
  /// The location of the resource.
  late final pulumi.Output<String> location;
  /// The resource name of the processor.
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The type of processor. For possible types see the [official list](https://cloud.google.com/document-ai/docs/reference/rest/v1/projects.locations/fetchProcessorTypes#google.cloud.documentai.v1.DocumentProcessorService.FetchProcessorTypes)
  late final pulumi.Output<String> type;

  /// Creates a new [DocumentAiProcessor].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DocumentAiProcessor]. {@macro pulumi_essentialcontacts_document_ai_processor_document_ai_processor_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DocumentAiProcessor(
    String name, {
    DocumentAiProcessorArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:essentialcontacts/documentAiProcessor:DocumentAiProcessor',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    displayName = registerOutput<String>('displayName');
    kmsKeyName = registerOutput<String?>('kmsKeyName');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    type = registerOutput<String>('type');
  }

  /// Gets an existing [DocumentAiProcessor] resource's state with the given [name] and [id].
  static DocumentAiProcessor get(
    String name,
    pulumi.Input<String> id, {
    DocumentAiProcessorState? state,
  }) {
    return DocumentAiProcessor._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  DocumentAiProcessor._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:essentialcontacts/documentAiProcessor:DocumentAiProcessor',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    displayName = registerOutput<String>('displayName');
    kmsKeyName = registerOutput<String?>('kmsKeyName');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    type = registerOutput<String>('type');
  }
}
