// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentGatewayGoogleManaged {
  /// Operating Mode of Agent Gateway.
  /// Possible values are: `AGENT_TO_ANYWHERE`, `CLIENT_TO_AGENT`.
  final pulumi.Input<String> governedAccessPath;

  /// Creates a new [AgentGatewayGoogleManaged].
  /// [governedAccessPath] Operating Mode of Agent Gateway.
  const AgentGatewayGoogleManaged({
    required this.governedAccessPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'governedAccessPath': governedAccessPath,
    };
  }

  factory AgentGatewayGoogleManaged.fromMap(Map<String, dynamic> map) {
    return AgentGatewayGoogleManaged(
      governedAccessPath: pulumi.Input.fromValue(map['governedAccessPath'] as String),
    );
  }
}
