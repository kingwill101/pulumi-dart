import 'package:pulumi/pulumi.dart' as pulumi;
import 'entity_args.dart';

/// Creates a new entity row of the specified entity type in the external system. The field values for creating the row are contained in the body of the request. The response message contains a `Entity` message object returned as a response by the external system.
/// Auto-naming is currently not supported for this resource.
class Entity extends pulumi.CustomResource {
  late final pulumi.Output<String> connectionId;
  late final pulumi.Output<String> entityTypeId;

  /// Fields of the entity. The key is name of the field and the value contains the applicable `google.protobuf.Value` entry for this field.
  late final pulumi.Output<Map<String, String>> fields;
  late final pulumi.Output<String> location;

  /// Resource name of the Entity. Format: projects/{project}/locations/{location}/connections/{connection}/entityTypes/{type}/entities/{id}
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// Creates a new [Entity].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Entity]. {@macro pulumi_connectors_v2_entity_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Entity(String name, {EntityArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'google-native:connectors/v2:Entity',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    connectionId = registerOutput<String>('connectionId');
    entityTypeId = registerOutput<String>('entityTypeId');
    fields = registerOutput<Map<String, String>>('fields');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
  }
}
