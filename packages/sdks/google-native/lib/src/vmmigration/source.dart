import 'package:pulumi/pulumi.dart' as pulumi;
import 'aws_source_details_response.dart';
import 'azure_source_details_response.dart';
import 'encryption_response.dart';
import 'source_args.dart';
import 'vmware_source_details_response.dart';

/// Creates a new Source in a given project and location.
/// Auto-naming is currently not supported for this resource.
class Source extends pulumi.CustomResource {
  /// AWS type source details.
  late final pulumi.Output<AwsSourceDetailsResponse> aws;

  /// Azure type source details.
  late final pulumi.Output<AzureSourceDetailsResponse> azure;

  /// The create time timestamp.
  late final pulumi.Output<String> createTime;

  /// User-provided description of the source.
  late final pulumi.Output<String> description;

  /// Optional. Immutable. The encryption details of the source data stored by the service.
  late final pulumi.Output<EncryptionResponse> encryption;

  /// The labels of the source.
  late final pulumi.Output<Map<String, String>> labels;
  late final pulumi.Output<String> location;

  /// The Source name.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  late final pulumi.Output<String?> requestId;

  /// Required. The source identifier.
  late final pulumi.Output<String> sourceId;

  /// The update time timestamp.
  late final pulumi.Output<String> updateTime;

  /// Vmware type source details.
  late final pulumi.Output<VmwareSourceDetailsResponse> vmware;

  /// Creates a new [Source].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Source]. {@macro pulumi_vmmigration_v1_source_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Source(String name, {SourceArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'google-native:vmmigration/v1:Source',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    aws = registerOutput<AwsSourceDetailsResponse>(
      'aws',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return AwsSourceDetailsResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    azure = registerOutput<AzureSourceDetailsResponse>(
      'azure',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return AzureSourceDetailsResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    createTime = registerOutput<String>('createTime');
    description = registerOutput<String>('description');
    encryption = registerOutput<EncryptionResponse>(
      'encryption',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return EncryptionResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    labels = registerOutput<Map<String, String>>('labels');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    requestId = registerOutput<String?>('requestId');
    sourceId = registerOutput<String>('sourceId');
    updateTime = registerOutput<String>('updateTime');
    vmware = registerOutput<VmwareSourceDetailsResponse>(
      'vmware',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return VmwareSourceDetailsResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
  }
}
