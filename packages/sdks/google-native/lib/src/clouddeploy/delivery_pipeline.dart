import 'package:pulumi/pulumi.dart' as pulumi;
import 'delivery_pipeline_args.dart';
import 'pipeline_condition_response.dart';
import 'serial_pipeline_response.dart';

/// Creates a new DeliveryPipeline in a given project and location.
class DeliveryPipeline extends pulumi.CustomResource {
  /// User annotations. These attributes can only be set and used by the user, and not by Cloud Deploy.
  late final pulumi.Output<Map<String, String>> annotations;

  /// Information around the state of the Delivery Pipeline.
  late final pulumi.Output<PipelineConditionResponse> condition;

  /// Time at which the pipeline was created.
  late final pulumi.Output<String> createTime;

  /// Required. ID of the `DeliveryPipeline`.
  late final pulumi.Output<String> deliveryPipelineId;

  /// Description of the `DeliveryPipeline`. Max length is 255 characters.
  late final pulumi.Output<String> description;

  /// This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  late final pulumi.Output<String> etag;

  /// Labels are attributes that can be set and used by both the user and by Cloud Deploy. Labels must meet the following constraints: * Keys and values can contain only lowercase letters, numeric characters, underscores, and dashes. * All characters must use UTF-8 encoding, and international characters are allowed. * Keys must start with a lowercase letter or international character. * Each resource is limited to a maximum of 64 labels. Both keys and values are additionally constrained to be &lt;= 128 bytes.
  late final pulumi.Output<Map<String, String>> labels;
  late final pulumi.Output<String> location;

  /// Optional. Name of the `DeliveryPipeline`. Format is `projects/{project}/locations/{location}/deliveryPipelines/a-z{0,62}`.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  late final pulumi.Output<String?> requestId;

  /// SerialPipeline defines a sequential set of stages for a `DeliveryPipeline`.
  late final pulumi.Output<SerialPipelineResponse> serialPipeline;

  /// When suspended, no new releases or rollouts can be created, but in-progress ones will complete.
  late final pulumi.Output<bool> suspended;

  /// Unique identifier of the `DeliveryPipeline`.
  late final pulumi.Output<String> uid;

  /// Most recent time at which the pipeline was updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [DeliveryPipeline].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DeliveryPipeline]. {@macro pulumi_clouddeploy_v1_delivery_pipeline_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DeliveryPipeline(
    String name, {
    DeliveryPipelineArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:clouddeploy/v1:DeliveryPipeline',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    annotations = registerOutput<Map<String, String>>('annotations');
    condition = registerOutput<PipelineConditionResponse>('condition');
    createTime = registerOutput<String>('createTime');
    deliveryPipelineId = registerOutput<String>('deliveryPipelineId');
    description = registerOutput<String>('description');
    etag = registerOutput<String>('etag');
    labels = registerOutput<Map<String, String>>('labels');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    requestId = registerOutput<String?>('requestId');
    serialPipeline = registerOutput<SerialPipelineResponse>('serialPipeline');
    suspended = registerOutput<bool>('suspended');
    uid = registerOutput<String>('uid');
    updateTime = registerOutput<String>('updateTime');
  }
}
