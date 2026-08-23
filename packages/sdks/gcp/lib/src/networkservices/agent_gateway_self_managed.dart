// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentGatewaySelfManaged {
  /// A supported Google Cloud networking proxy in the Project and Location.
  final pulumi.Input<String> resourceUri;

  /// Creates a new [AgentGatewaySelfManaged].
  /// [resourceUri] A supported Google Cloud networking proxy in the Project and Location.
  const AgentGatewaySelfManaged({
    required this.resourceUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceUri': resourceUri,
    };
  }

  factory AgentGatewaySelfManaged.fromMap(Map<String, dynamic> map) {
    return AgentGatewaySelfManaged(
      resourceUri: pulumi.Input.fromValue(map['resourceUri'] as String),
    );
  }
}
