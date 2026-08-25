// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_index_endpoint_deployed_index_private_endpoint_psc_automated_endpoint.dart';

class AiIndexEndpointDeployedIndexPrivateEndpoint {
  /// (Output)
  /// The ip address used to send match gRPC requests.
  final pulumi.Input<String?>? matchGrpcAddress;
  /// (Output)
  /// PscAutomatedEndpoints is populated if private service connect is enabled if PscAutomatedConfig is set.
  /// Structure is documented below.
  final pulumi.Input<List<AiIndexEndpointDeployedIndexPrivateEndpointPscAutomatedEndpoint>?>? pscAutomatedEndpoints;
  /// (Output)
  /// The name of the service attachment resource. Populated if private service connect is enabled.
  final pulumi.Input<String?>? serviceAttachment;

  /// Creates a new [AiIndexEndpointDeployedIndexPrivateEndpoint].
  /// [matchGrpcAddress] (Output)
  /// [pscAutomatedEndpoints] (Output)
  /// [serviceAttachment] (Output)
  const AiIndexEndpointDeployedIndexPrivateEndpoint({
    this.matchGrpcAddress,
    this.pscAutomatedEndpoints,
    this.serviceAttachment,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'matchGrpcAddress': ?matchGrpcAddress,
      'pscAutomatedEndpoints': ?pulumi.Input.mapOptionalInputValue<List<AiIndexEndpointDeployedIndexPrivateEndpointPscAutomatedEndpoint>, List<Map<String, dynamic>>>(pscAutomatedEndpoints, (value) => pulumi.Input.encodeList<AiIndexEndpointDeployedIndexPrivateEndpointPscAutomatedEndpoint, Map<String, dynamic>>(value, (value) => value.toMap())),
      'serviceAttachment': ?serviceAttachment,
    };
  }

  factory AiIndexEndpointDeployedIndexPrivateEndpoint.fromMap(Map<String, dynamic> map) {
    return AiIndexEndpointDeployedIndexPrivateEndpoint(
      matchGrpcAddress: (() { final guardedValue = map['matchGrpcAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pscAutomatedEndpoints: (() { final guardedValue = map['pscAutomatedEndpoints']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AiIndexEndpointDeployedIndexPrivateEndpointPscAutomatedEndpoint>(guardedValue, (value) => AiIndexEndpointDeployedIndexPrivateEndpointPscAutomatedEndpoint.fromMap((value as Map).cast<String, dynamic>()))); })(),
      serviceAttachment: (() { final guardedValue = map['serviceAttachment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
