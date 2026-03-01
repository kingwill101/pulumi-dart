// ignore_for_file: unused_element, unnecessary_cast


/// Additional information of a Chat Engine. Fields in this message are output only.
class GoogleCloudDiscoveryengineV1alphaEngineChatEngineMetadataResponse {
  /// The resource name of a Dialogflow agent, that this Chat Engine refers to. Format: `projects//locations//agents/`.
  final String dialogflowAgent;

  /// Creates a new [GoogleCloudDiscoveryengineV1alphaEngineChatEngineMetadataResponse].
  /// [dialogflowAgent] The resource name of a Dialogflow agent, that this Chat Engine refers to. Format: `projects//locations//agents/`.
  GoogleCloudDiscoveryengineV1alphaEngineChatEngineMetadataResponse({
    required this.dialogflowAgent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dialogflowAgent': dialogflowAgent,
    };
  }

  factory GoogleCloudDiscoveryengineV1alphaEngineChatEngineMetadataResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDiscoveryengineV1alphaEngineChatEngineMetadataResponse(
      dialogflowAgent: map['dialogflowAgent'] as String,
    );
  }
}

