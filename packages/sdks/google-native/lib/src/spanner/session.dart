import 'package:pulumi/pulumi.dart' as pulumi;
import 'session_args.dart';

/// Creates a new session. A session can be used to perform transactions that read and/or modify data in a Cloud Spanner database. Sessions are meant to be reused for many consecutive transactions. Sessions can only execute one transaction at a time. To execute multiple concurrent read-write/write-only transactions, create multiple sessions. Note that standalone reads and queries use a transaction internally, and count toward the one transaction limit. Active sessions use additional server resources, so it is a good idea to delete idle and unneeded sessions. Aside from explicit deletes, Cloud Spanner may delete sessions for which no operations are sent for more than an hour. If a session is deleted, requests to it return `NOT_FOUND`. Idle sessions can be kept alive by sending a trivial SQL query periodically, e.g., `"SELECT 1"`.
/// Auto-naming is currently not supported for this resource.
class Session extends pulumi.CustomResource {
  /// The approximate timestamp when the session is last used. It is typically earlier than the actual last use time.
  late final pulumi.Output<String> approximateLastUseTime;
  /// The timestamp when the session is created.
  late final pulumi.Output<String> createTime;
  /// The database role which created this session.
  late final pulumi.Output<String> creatorRole;
  late final pulumi.Output<String> databaseId;
  late final pulumi.Output<String> instanceId;
  /// The labels for the session. * Label keys must be between 1 and 63 characters long and must conform to the following regular expression: `[a-z]([-a-z0-9]*[a-z0-9])?`. * Label values must be between 0 and 63 characters long and must conform to the regular expression `([a-z]([-a-z0-9]*[a-z0-9])?)?`. * No more than 64 labels can be associated with a given session. See https://goo.gl/xmQnxf for more information on and examples of labels.
  late final pulumi.Output<Map<String, String>> labels;
  /// The name of the session. This is always system-assigned.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// Creates a new [Session].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Session]. {@macro pulumi_spanner_v1_session_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Session(
    String name, {
    SessionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:spanner/v1:Session',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.approximateLastUseTime = registerOutput<String>('approximateLastUseTime');
    this.createTime = registerOutput<String>('createTime');
    this.creatorRole = registerOutput<String>('creatorRole');
    this.databaseId = registerOutput<String>('databaseId');
    this.instanceId = registerOutput<String>('instanceId');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
  }
}
