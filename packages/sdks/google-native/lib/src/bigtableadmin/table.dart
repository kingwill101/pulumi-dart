import 'package:pulumi/pulumi.dart' as pulumi;
import 'change_stream_config_response.dart';
import 'restore_info_response.dart';
import 'table_args.dart';
import 'table_stats_response.dart';

/// Creates a new table in the specified instance. The table can be created with a full set of initial column families, specified in the request.
class Table extends pulumi.CustomResource {
  /// If specified, enable the change stream on this table. Otherwise, the change stream is disabled and the change stream is not retained.
  late final pulumi.Output<ChangeStreamConfigResponse> changeStreamConfig;

  /// Map from cluster ID to per-cluster table state. If it could not be determined whether or not the table has data in a particular cluster (for example, if its zone is unavailable), then there will be an entry for the cluster with UNKNOWN `replication_status`. Views: `REPLICATION_VIEW`, `ENCRYPTION_VIEW`, `FULL`
  late final pulumi.Output<Map<String, String>> clusterStates;

  /// The column families configured for this table, mapped by column family ID. Views: `SCHEMA_VIEW`, `STATS_VIEW`, `FULL`
  late final pulumi.Output<Map<String, String>> columnFamilies;

  /// Set to true to make the table protected against data loss. i.e. deleting the following resources through Admin APIs are prohibited: * The table. * The column families in the table. * The instance containing the table. Note one can still delete the data stored in the table through Data APIs.
  late final pulumi.Output<bool> deletionProtection;

  /// Immutable. The granularity (i.e. `MILLIS`) at which timestamps are stored in this table. Timestamps not matching the granularity will be rejected. If unspecified at creation time, the value will be set to `MILLIS`. Views: `SCHEMA_VIEW`, `FULL`.
  late final pulumi.Output<String> granularity;
  late final pulumi.Output<String> instanceId;

  /// The unique name of the table. Values are of the form `projects/{project}/instances/{instance}/tables/_a-zA-Z0-9*`. Views: `NAME_ONLY`, `SCHEMA_VIEW`, `REPLICATION_VIEW`, `STATS_VIEW`, `FULL`
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// If this table was restored from another data source (e.g. a backup), this field will be populated with information about the restore.
  late final pulumi.Output<RestoreInfoResponse> restoreInfo;

  /// Only available with STATS_VIEW, this includes summary statistics about the entire table contents. For statistics about a specific column family, see ColumnFamilyStats in the mapped ColumnFamily collection above.
  late final pulumi.Output<TableStatsResponse> stats;

  /// Creates a new [Table].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Table]. {@macro pulumi_bigtableadmin_v2_table_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Table(String name, {TableArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'google-native:bigtableadmin/v2:Table',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    changeStreamConfig = registerOutput<ChangeStreamConfigResponse>(
      'changeStreamConfig',
    );
    clusterStates = registerOutput<Map<String, String>>('clusterStates');
    columnFamilies = registerOutput<Map<String, String>>('columnFamilies');
    deletionProtection = registerOutput<bool>('deletionProtection');
    granularity = registerOutput<String>('granularity');
    instanceId = registerOutput<String>('instanceId');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    restoreInfo = registerOutput<RestoreInfoResponse>('restoreInfo');
    stats = registerOutput<TableStatsResponse>('stats');
  }
}
