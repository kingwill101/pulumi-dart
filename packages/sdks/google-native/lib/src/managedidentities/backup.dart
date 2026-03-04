import 'package:pulumi/pulumi.dart' as pulumi;
import 'backup_args.dart';

/// Creates a Backup for a domain.
/// Auto-naming is currently not supported for this resource.
class Backup extends pulumi.CustomResource {
  /// Required. Backup Id, unique name to identify the backups with the following restrictions: * Must be lowercase letters, numbers, and hyphens * Must start with a letter. * Must contain between 1-63 characters. * Must end with a number or a letter. * Must be unique within the domain.
  late final pulumi.Output<String> backupId;

  /// The time the backups was created.
  late final pulumi.Output<String> createTime;
  late final pulumi.Output<String> domainId;

  /// Optional. Resource labels to represent user provided metadata.
  late final pulumi.Output<Map<String, String>> labels;

  /// The unique name of the Backup in the form of `projects/{project_id}/locations/global/domains/{domain_name}/backups/{name}`
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// The current state of the backup.
  late final pulumi.Output<String> state;

  /// Additional information about the current status of this backup, if available.
  late final pulumi.Output<String> statusMessage;

  /// Indicates whether it’s an on-demand backup or scheduled.
  late final pulumi.Output<String> type;

  /// Last update time.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [Backup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Backup]. {@macro pulumi_managedidentities_v1_backup_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Backup(String name, {BackupArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'google-native:managedidentities/v1:Backup',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    backupId = registerOutput<String>('backupId');
    createTime = registerOutput<String>('createTime');
    domainId = registerOutput<String>('domainId');
    labels = registerOutput<Map<String, String>>('labels');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    state = registerOutput<String>('state');
    statusMessage = registerOutput<String>('statusMessage');
    type = registerOutput<String>('type');
    updateTime = registerOutput<String>('updateTime');
  }
}
