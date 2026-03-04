// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_alternative_name_server_config_target_name_server_response.dart';

class PolicyAlternativeNameServerConfigResponse {
  final pulumi.Input<String> kind;

  /// Sets an alternative name server for the associated networks. When specified, all DNS queries are forwarded to a name server that you choose. Names such as .internal are not available when an alternative name server is specified.
  final pulumi.Input<
    List<PolicyAlternativeNameServerConfigTargetNameServerResponse>
  >
  targetNameServers;

  /// Creates a new [PolicyAlternativeNameServerConfigResponse].
  /// [kind] Required.
  /// [targetNameServers] Sets an alternative name server for the associated networks. When specified, all DNS queries are forwarded to a name server that you choose. Names such as .internal are not available when an alternative name server is specified.
  PolicyAlternativeNameServerConfigResponse({
    required this.kind,
    required this.targetNameServers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kind': kind,
      'targetNameServers':
          pulumi.Input.mapInputValue<
            List<PolicyAlternativeNameServerConfigTargetNameServerResponse>,
            List<Map<String, dynamic>>
          >(
            targetNameServers,
            (value) =>
                pulumi.Input.encodeList<
                  PolicyAlternativeNameServerConfigTargetNameServerResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory PolicyAlternativeNameServerConfigResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return PolicyAlternativeNameServerConfigResponse(
      kind: pulumi.Input.fromValue(map['kind'] as String),
      targetNameServers: pulumi.Input.fromValue(
        pulumi.Input.decodeList<
          PolicyAlternativeNameServerConfigTargetNameServerResponse
        >(
          map['targetNameServers']!,
          (value) =>
              PolicyAlternativeNameServerConfigTargetNameServerResponse.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
        ),
      ),
    );
  }
}
