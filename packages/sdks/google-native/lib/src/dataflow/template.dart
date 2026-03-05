import 'package:pulumi/pulumi.dart' as pulumi;
import 'runtime_metadata_response.dart';
import 'status_response.dart';
import 'template_args.dart';
import 'template_metadata_response.dart';

/// Creates a Cloud Dataflow job from a template. Do not enter confidential information when you supply string values using the API.
/// Auto-naming is currently not supported for this resource.
/// Note - this resource's API doesn't support deletion. When deleted, the resource will persist
/// on Google Cloud even though it will be deleted from Pulumi state.
class Template extends pulumi.CustomResource {
  late final pulumi.Output<String> location;

  /// The template metadata describing the template name, available parameters, etc.
  late final pulumi.Output<TemplateMetadataResponse> metadata;
  late final pulumi.Output<String> project;

  /// Describes the runtime metadata with SDKInfo and available parameters.
  late final pulumi.Output<RuntimeMetadataResponse> runtimeMetadata;

  /// The status of the get template request. Any problems with the request will be indicated in the error_details.
  late final pulumi.Output<StatusResponse> status;

  /// Template Type.
  late final pulumi.Output<String> templateType;

  /// Creates a new [Template].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Template]. {@macro pulumi_dataflow_v1b3_template_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Template(
    String name, {
    TemplateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:dataflow/v1b3:Template',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    location = registerOutput<String>('location');
    metadata = registerOutput<TemplateMetadataResponse>(
      'metadata',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return TemplateMetadataResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    project = registerOutput<String>('project');
    runtimeMetadata = registerOutput<RuntimeMetadataResponse>(
      'runtimeMetadata',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return RuntimeMetadataResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    status = registerOutput<StatusResponse>(
      'status',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return StatusResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    templateType = registerOutput<String>('templateType');
  }
}
