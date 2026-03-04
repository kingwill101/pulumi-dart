import 'package:pulumi/pulumi.dart' as pulumi;
import 'backup_metastore_v1beta_args.dart';
import 'service_response_metastore_v1beta.dart';

/// Creates a new backup in a given project and location.
class BackupMetastoreV1beta extends pulumi.CustomResource {
  /// Required. The ID of the backup, which is used as the final component of the backup's name.This value must be between 1 and 64 characters long, begin with a letter, end with a letter or number, and consist of alpha-numeric ASCII characters or hyphens.
  late final pulumi.Output<String> backupId;

  /// The time when the backup was started.
  late final pulumi.Output<String> createTime;

  /// The description of the backup.
  late final pulumi.Output<String> description;

  /// The time when the backup finished creating.
  late final pulumi.Output<String> endTime;
  late final pulumi.Output<String> location;

  /// Immutable. The relative resource name of the backup, in the following form:projects/{project_number}/locations/{location_id}/services/{service_id}/backups/{backup_id}
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// Optional. A request ID. Specify a unique request ID to allow the server to ignore the request if it has completed. The server will ignore subsequent requests that provide a duplicate request ID for at least 60 minutes after the first request.For example, if an initial request times out, followed by another request with the same request ID, the server ignores the second request to prevent the creation of duplicate commitments.The request ID must be a valid UUID (https://en.wikipedia.org/wiki/Universally_unique_identifier#Format) A zero UUID (00000000-0000-0000-0000-000000000000) is not supported.
  late final pulumi.Output<String?> requestId;

  /// Services that are restoring from the backup.
  late final pulumi.Output<List<String>> restoringServices;
  late final pulumi.Output<String> serviceId;

  /// The revision of the service at the time of backup.
  late final pulumi.Output<ServiceResponseMetastoreV1beta> serviceRevision;

  /// The current state of the backup.
  late final pulumi.Output<String> state;

  /// Creates a new [BackupMetastoreV1beta].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BackupMetastoreV1beta]. {@macro pulumi_metastore_v1beta_backup_metastore_v1beta_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BackupMetastoreV1beta(
    String name, {
    BackupMetastoreV1betaArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:metastore/v1beta:Backup',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    backupId = registerOutput<String>('backupId');
    createTime = registerOutput<String>('createTime');
    description = registerOutput<String>('description');
    endTime = registerOutput<String>('endTime');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    requestId = registerOutput<String?>('requestId');
    restoringServices = registerOutput<List<String>>('restoringServices');
    serviceId = registerOutput<String>('serviceId');
    serviceRevision = registerOutput<ServiceResponseMetastoreV1beta>(
      'serviceRevision',
    );
    state = registerOutput<String>('state');
  }
}
