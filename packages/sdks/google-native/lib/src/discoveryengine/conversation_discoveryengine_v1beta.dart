import 'package:pulumi/pulumi.dart' as pulumi;
import 'conversation_discoveryengine_v1beta_args.dart';

/// Creates a Conversation. If the Conversation to create already exists, an ALREADY_EXISTS error is returned.
/// Auto-naming is currently not supported for this resource.
class ConversationDiscoveryengineV1beta extends pulumi.CustomResource {
  late final pulumi.Output<String> collectionId;
  late final pulumi.Output<String> dataStoreId;

  /// The time the conversation finished.
  late final pulumi.Output<String> endTime;
  late final pulumi.Output<String> location;

  /// Conversation messages.
  late final pulumi.Output<List<Map<String, dynamic>>> messages;

  /// Immutable. Fully qualified name `project/*/locations/global/collections/{collection}/dataStore/*/conversations/*`
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// The time the conversation started.
  late final pulumi.Output<String> startTime;

  /// The state of the Conversation.
  late final pulumi.Output<String> state;

  /// A unique identifier for tracking users.
  late final pulumi.Output<String> userPseudoId;

  /// Creates a new [ConversationDiscoveryengineV1beta].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ConversationDiscoveryengineV1beta]. {@macro pulumi_discoveryengine_v1beta_conversation_discoveryengine_v1beta_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ConversationDiscoveryengineV1beta(
    String name, {
    ConversationDiscoveryengineV1betaArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:discoveryengine/v1beta:Conversation',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    collectionId = registerOutput<String>('collectionId');
    dataStoreId = registerOutput<String>('dataStoreId');
    endTime = registerOutput<String>('endTime');
    location = registerOutput<String>('location');
    messages = registerOutput<List<Map<String, dynamic>>>('messages');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    startTime = registerOutput<String>('startTime');
    state = registerOutput<String>('state');
    userPseudoId = registerOutput<String>('userPseudoId');
  }
}
