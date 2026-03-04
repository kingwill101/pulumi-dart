import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_collection_args.dart';
import 'job_collection_properties_response.dart';

/// Uses Azure REST API version 2016-03-01. In version 2.x of the Azure Native provider, it used API version 2016-03-01.
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:scheduler:JobCollection myresource1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Scheduler/jobCollections/{jobCollectionName}
/// ```
class JobCollection extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Gets or sets the storage account location.
  late final pulumi.Output<String?> location;

  /// Gets or sets the job collection resource name.
  late final pulumi.Output<String?> name;

  /// Gets or sets the job collection properties.
  late final pulumi.Output<JobCollectionPropertiesResponse> properties;

  /// Gets or sets the tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Gets the job collection resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [JobCollection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [JobCollection]. {@macro pulumi_scheduler_job_collection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  JobCollection(
    String name, {
    JobCollectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:scheduler:JobCollection',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String?>('name');
    properties = registerOutput<JobCollectionPropertiesResponse>('properties');
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
