import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_view_args.dart';

/// Creates a view over log entries in a log bucket. A bucket may contain a maximum of 30 views.
class BucketView extends pulumi.CustomResource {
  late final pulumi.Output<String> bucketId;

  /// The creation timestamp of the view.
  late final pulumi.Output<String> createTime;

  /// Describes this view.
  late final pulumi.Output<String> description;

  /// Filter that restricts which log entries in a bucket are visible in this view.Filters are restricted to be a logical AND of ==/!= of any of the following: originating project/folder/organization/billing account. resource type log idFor example:SOURCE("projects/myproject") AND resource.type = "gce_instance" AND LOG_ID("stdout")
  late final pulumi.Output<String> filter;
  late final pulumi.Output<String> location;

  /// The resource name of the view.For example:projects/my-project/locations/global/buckets/my-bucket/views/my-view
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// The last update timestamp of the view.
  late final pulumi.Output<String> updateTime;

  /// Required. A client-assigned identifier such as "my-view". Identifiers are limited to 100 characters and can include only letters, digits, underscores, hyphens, and periods.
  late final pulumi.Output<String> viewId;

  /// Creates a new [BucketView].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BucketView]. {@macro pulumi_logging_v2_bucket_view_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BucketView(
    String name, {
    BucketViewArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:logging/v2:BucketView',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    bucketId = registerOutput<String>('bucketId');
    createTime = registerOutput<String>('createTime');
    description = registerOutput<String>('description');
    filter = registerOutput<String>('filter');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    updateTime = registerOutput<String>('updateTime');
    viewId = registerOutput<String>('viewId');
  }
}
