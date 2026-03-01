import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_args.dart';
import 'job_properties_response.dart';

/// Uses Azure REST API version 2016-03-01. In version 2.x of the Azure Native provider, it used API version 2016-03-01.
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:scheduler:Job myresource1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Scheduler/jobCollections/{jobCollectionName}/jobs/{jobName}
/// ```
class Job extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Gets the job resource name.
  late final pulumi.Output<String> name;
  /// Gets or sets the job properties.
  late final pulumi.Output<JobPropertiesResponse> properties;
  /// Gets the job resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [Job].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Job]. {@macro pulumi_scheduler_job_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Job(
    String name, {
    JobArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:scheduler:Job',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    this.properties = registerOutput<JobPropertiesResponse>('properties');
    this.type = registerOutput<String>('type');
  }
}
