import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_args.dart';
import 'bucket_cmek_settings.dart';
import 'bucket_state.dart';

/// Bucket configuration for storing observability data.
///
///
///
/// ## Example Usage
///
/// ## Import
///
/// Bucket can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/buckets/{{bucket_id}}`
/// * `{{project}}/{{location}}/{{bucket_id}}`
/// * `{{location}}/{{bucket_id}}`
///
///
/// When using the `pulumi import` command, Bucket can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:observability/bucket:Bucket default projects/{{project}}/locations/{{location}}/buckets/{{bucket_id}}
/// $ pulumi import gcp:observability/bucket:Bucket default {{project}}/{{location}}/{{bucket_id}}
/// $ pulumi import gcp:observability/bucket:Bucket default {{location}}/{{bucket_id}}
/// ```
class Bucket extends pulumi.CustomResource {
  /// A client-assigned identifier for the bucket.
  late final pulumi.Output<String> bucketId;
  /// Settings for configuring CMEK for a bucket.
  /// Structure is documented below.
  late final pulumi.Output<BucketCmekSettings?> cmekSettings;
  /// Output only. Create timestamp.
  late final pulumi.Output<String> createTime;
  /// Output only. Delete timestamp.
  late final pulumi.Output<String> deleteTime;
  /// Description of the bucket.
  late final pulumi.Output<String> description;
  /// User friendly display name.
  late final pulumi.Output<String> displayName;
  /// The location of the bucket.
  late final pulumi.Output<String> location;
  /// Identifier. Name of the bucket. The format is: projects/[PROJECT_ID]/locations/[LOCATION]/buckets/[BUCKET_ID]
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// Output only. Timestamp when the bucket in soft-deleted state is purged.
  late final pulumi.Output<String> purgeTime;
  /// Output only. Update timestamp.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [Bucket].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Bucket]. {@macro pulumi_observability_bucket_bucket_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Bucket(
    String name, {
    BucketArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:observability/bucket:Bucket',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '10.2.0').merge(options),
        ) {
    bucketId = registerOutput<String>('bucketId');
    cmekSettings = registerOutput<BucketCmekSettings?>('cmekSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BucketCmekSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createTime = registerOutput<String>('createTime');
    deleteTime = registerOutput<String>('deleteTime');
    description = registerOutput<String>('description');
    displayName = registerOutput<String>('displayName');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    purgeTime = registerOutput<String>('purgeTime');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [Bucket] resource's state with the given [name] and [id].
  static Bucket get(
    String name,
    pulumi.Input<String> id, {
    BucketState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Bucket._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Bucket._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:observability/bucket:Bucket',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    bucketId = registerOutput<String>('bucketId');
    cmekSettings = registerOutput<BucketCmekSettings?>('cmekSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BucketCmekSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createTime = registerOutput<String>('createTime');
    deleteTime = registerOutput<String>('deleteTime');
    description = registerOutput<String>('description');
    displayName = registerOutput<String>('displayName');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    purgeTime = registerOutput<String>('purgeTime');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Creates a typed reference to an existing [Bucket] resource.
  Bucket.reference(String urn)
    : super(
        'gcp:observability/bucket:Bucket',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    bucketId = registerOutput<String>('bucketId');
    cmekSettings = registerOutput<BucketCmekSettings?>('cmekSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BucketCmekSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createTime = registerOutput<String>('createTime');
    deleteTime = registerOutput<String>('deleteTime');
    description = registerOutput<String>('description');
    displayName = registerOutput<String>('displayName');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    purgeTime = registerOutput<String>('purgeTime');
    updateTime = registerOutput<String>('updateTime');
  }
}
