import 'package:pulumi/pulumi.dart' as pulumi;
import 'conversation_discoveryengine_v1beta_args.dart';
import 'google_cloud_discoveryengine_v1beta_conversation_message_response.dart';

/// Creates a Conversation. If the Conversation to create already exists, an ALREADY_EXISTS error is returned.
/// Auto-naming is currently not supported for this resource.
class ConversationDiscoveryengineV1beta extends pulumi.CustomResource {
  late final pulumi.Output<String> collectionId;
  late final pulumi.Output<String> dataStoreId;
  /// The time the conversation finished.
  late final pulumi.Output<String> endTime;
  late final pulumi.Output<String> location;
  /// Conversation messages.
  late final pulumi.Output<List<GoogleCloudDiscoveryengineV1betaConversationMessageResponse>> messages;
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
          pulumi.CustomResourceOptions(version: '0.32.0', replaceOnChanges: ['collectionId', 'dataStoreId', 'location', 'project']).merge(options),
        ) {
    collectionId = registerOutput<String>('collectionId');
    dataStoreId = registerOutput<String>('dataStoreId');
    endTime = registerOutput<String>('endTime');
    location = registerOutput<String>('location');
    messages = registerOutput<List<GoogleCloudDiscoveryengineV1betaConversationMessageResponse>>('messages', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<GoogleCloudDiscoveryengineV1betaConversationMessageResponse>(guardedValue, (value) => GoogleCloudDiscoveryengineV1betaConversationMessageResponse.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    startTime = registerOutput<String>('startTime');
    state = registerOutput<String>('state');
    userPseudoId = registerOutput<String>('userPseudoId');
  }

  /// Creates a typed reference to an existing [ConversationDiscoveryengineV1beta] resource.
  ConversationDiscoveryengineV1beta.reference(String urn)
    : super(
        'google-native:discoveryengine/v1beta:Conversation',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    collectionId = registerOutput<String>('collectionId');
    dataStoreId = registerOutput<String>('dataStoreId');
    endTime = registerOutput<String>('endTime');
    location = registerOutput<String>('location');
    messages = registerOutput<List<GoogleCloudDiscoveryengineV1betaConversationMessageResponse>>('messages', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<GoogleCloudDiscoveryengineV1betaConversationMessageResponse>(guardedValue, (value) => GoogleCloudDiscoveryengineV1betaConversationMessageResponse.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    startTime = registerOutput<String>('startTime');
    state = registerOutput<String>('state');
    userPseudoId = registerOutput<String>('userPseudoId');
  }
}
