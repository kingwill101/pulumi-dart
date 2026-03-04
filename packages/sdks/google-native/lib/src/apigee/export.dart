import 'package:pulumi/pulumi.dart' as pulumi;
import 'export_args.dart';

/// Submit a data export job to be processed in the background. If the request is successful, the API returns a 201 status, a URI that can be used to retrieve the status of the export job, and the `state` value of "enqueued".
/// Note - this resource's API doesn't support deletion. When deleted, the resource will persist
/// on Google Cloud even though it will be deleted from Pulumi state.
class Export extends pulumi.CustomResource {
  /// Time the export job was created.
  late final pulumi.Output<String> created;

  /// Name of the datastore that is the destination of the export job [datastore]
  late final pulumi.Output<String> datastoreName;

  /// Description of the export job.
  late final pulumi.Output<String> description;
  late final pulumi.Output<String> environmentId;

  /// Error is set when export fails
  late final pulumi.Output<String> error;

  /// Execution time for this export job. If the job is still in progress, it will be set to the amount of time that has elapsed since`created`, in seconds. Else, it will set to (`updated` - `created`), in seconds.
  late final pulumi.Output<String> executionTime;

  /// Display name of the export job.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> organizationId;

  /// Self link of the export job. A URI that can be used to retrieve the status of an export job. Example: `/organizations/myorg/environments/myenv/analytics/exports/9cfc0d85-0f30-46d6-ae6f-318d0cb961bd`
  late final pulumi.Output<String> self;

  /// Status of the export job. Valid values include `enqueued`, `running`, `completed`, and `failed`.
  late final pulumi.Output<String> state;

  /// Time the export job was last updated.
  late final pulumi.Output<String> updated;

  /// Creates a new [Export].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Export]. {@macro pulumi_apigee_v1_export_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Export(String name, {ExportArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'google-native:apigee/v1:Export',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    created = registerOutput<String>('created');
    datastoreName = registerOutput<String>('datastoreName');
    description = registerOutput<String>('description');
    environmentId = registerOutput<String>('environmentId');
    error = registerOutput<String>('error');
    executionTime = registerOutput<String>('executionTime');
    this.name = registerOutput<String>('name');
    organizationId = registerOutput<String>('organizationId');
    self = registerOutput<String>('self');
    state = registerOutput<String>('state');
    updated = registerOutput<String>('updated');
  }
}
