import 'package:pulumi/pulumi.dart' as pulumi;
import 'lineage_event_args.dart';

/// Creates a new lineage event.
class LineageEvent extends pulumi.CustomResource {
  /// Optional. The end of the transformation which resulted in this lineage event. For streaming scenarios, it should be the end of the period from which the lineage is being reported.
  late final pulumi.Output<String> endTime;
  /// Optional. List of source-target pairs. Can't contain more than 100 tuples.
  late final pulumi.Output<List<Map<String, dynamic>>> links;
  late final pulumi.Output<String> location;
  /// Immutable. The resource name of the lineage event. Format: `projects/{project}/locations/{location}/processes/{process}/runs/{run}/lineageEvents/{lineage_event}`. Can be specified or auto-assigned. {lineage_event} must be not longer than 200 characters and only contain characters in a set: `a-zA-Z0-9_-:.`
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> processId;
  late final pulumi.Output<String> project;
  /// A unique identifier for this request. Restricted to 36 ASCII characters. A random UUID is recommended. This request is idempotent only if a `request_id` is provided.
  late final pulumi.Output<String?> requestId;
  late final pulumi.Output<String> runId;
  /// The beginning of the transformation which resulted in this lineage event. For streaming scenarios, it should be the beginning of the period from which the lineage is being reported.
  late final pulumi.Output<String> startTime;

  /// Creates a new [LineageEvent].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LineageEvent]. {@macro pulumi_datalineage_v1_lineage_event_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LineageEvent(
    String name, {
    LineageEventArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:datalineage/v1:LineageEvent',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    endTime = registerOutput<String>('endTime');
    links = registerOutput<List<Map<String, dynamic>>>('links');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    processId = registerOutput<String>('processId');
    project = registerOutput<String>('project');
    requestId = registerOutput<String?>('requestId');
    runId = registerOutput<String>('runId');
    startTime = registerOutput<String>('startTime');
  }
}
