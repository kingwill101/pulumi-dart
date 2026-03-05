import 'package:pulumi/pulumi.dart' as pulumi;
import 'aws_source_details_response_vmmigration_v1alpha1.dart';
import 'azure_source_details_response_vmmigration_v1alpha1.dart';
import 'encryption_response_vmmigration_v1alpha1.dart';
import 'source_vmmigration_v1alpha1_args.dart';
import 'status_response_vmmigration_v1alpha1.dart';
import 'vmware_source_details_response_vmmigration_v1alpha1.dart';

/// Creates a new Source in a given project and location.
/// Auto-naming is currently not supported for this resource.
class SourceVmmigrationV1alpha1 extends pulumi.CustomResource {
  /// AWS type source details.
  late final pulumi.Output<AwsSourceDetailsResponseVmmigrationV1alpha1> aws;

  /// Azure type source details.
  late final pulumi.Output<AzureSourceDetailsResponseVmmigrationV1alpha1> azure;

  /// The create time timestamp.
  late final pulumi.Output<String> createTime;

  /// User-provided description of the source.
  late final pulumi.Output<String> description;

  /// Optional. Immutable. The encryption details of the source data stored by the service.
  late final pulumi.Output<EncryptionResponseVmmigrationV1alpha1> encryption;

  /// Provides details on the state of the Source in case of an error.
  late final pulumi.Output<StatusResponseVmmigrationV1alpha1> error;

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
  late final pulumi.Output<VmwareSourceDetailsResponseVmmigrationV1alpha1>
  vmware;

  /// Creates a new [SourceVmmigrationV1alpha1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SourceVmmigrationV1alpha1]. {@macro pulumi_vmmigration_v1alpha1_source_vmmigration_v1alpha1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SourceVmmigrationV1alpha1(
    String name, {
    SourceVmmigrationV1alpha1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:vmmigration/v1alpha1:Source',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    aws = registerOutput<AwsSourceDetailsResponseVmmigrationV1alpha1>(
      'aws',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return AwsSourceDetailsResponseVmmigrationV1alpha1.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    azure = registerOutput<AzureSourceDetailsResponseVmmigrationV1alpha1>(
      'azure',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return AzureSourceDetailsResponseVmmigrationV1alpha1.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    createTime = registerOutput<String>('createTime');
    description = registerOutput<String>('description');
    encryption = registerOutput<EncryptionResponseVmmigrationV1alpha1>(
      'encryption',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return EncryptionResponseVmmigrationV1alpha1.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    error = registerOutput<StatusResponseVmmigrationV1alpha1>(
      'error',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return StatusResponseVmmigrationV1alpha1.fromMap(
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
    vmware = registerOutput<VmwareSourceDetailsResponseVmmigrationV1alpha1>(
      'vmware',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return VmwareSourceDetailsResponseVmmigrationV1alpha1.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
  }
}
