import 'package:pulumi/pulumi.dart' as pulumi;
import 'backup_schedule_response.dart';
import 'database_backup_setting_response.dart';
import 'web_app_backup_configuration_args.dart';

/// Description of a backup which will be performed.
///
/// Uses Azure REST API version 2024-04-01. In version 2.x of the Azure Native provider, it used API version 2022-09-01.
///
/// Other available API versions: 2016-08-01, 2018-02-01, 2018-11-01, 2019-08-01, 2020-06-01, 2020-09-01, 2020-10-01, 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-11-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:web:WebAppBackupConfiguration myresource1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Web/sites/{name}/config/backup
/// ```
class WebAppBackupConfiguration extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Name of the backup.
  late final pulumi.Output<String?> backupName;
  /// Schedule for the backup if it is executed periodically.
  late final pulumi.Output<BackupScheduleResponse?> backupSchedule;
  /// Databases included in the backup.
  late final pulumi.Output<List<DatabaseBackupSettingResponse>?> databases;
  /// True if the backup schedule is enabled (must be included in that case), false if the backup schedule should be disabled.
  late final pulumi.Output<bool?> enabled;
  /// Kind of resource.
  late final pulumi.Output<String?> kind;
  /// Resource Name.
  late final pulumi.Output<String> name;
  /// SAS URL to the container.
  late final pulumi.Output<String> storageAccountUrl;
  /// Resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [WebAppBackupConfiguration].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WebAppBackupConfiguration]. {@macro pulumi_web_web_app_backup_configuration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WebAppBackupConfiguration(
    String name, {
    WebAppBackupConfigurationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:web:WebAppBackupConfiguration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.backupName = registerOutput<String?>('backupName');
    this.backupSchedule = registerOutput<BackupScheduleResponse?>('backupSchedule');
    this.databases = registerOutput<List<DatabaseBackupSettingResponse>?>('databases');
    this.enabled = registerOutput<bool?>('enabled');
    this.kind = registerOutput<String?>('kind');
    this.name = registerOutput<String>('name');
    this.storageAccountUrl = registerOutput<String>('storageAccountUrl');
    this.type = registerOutput<String>('type');
  }
}
