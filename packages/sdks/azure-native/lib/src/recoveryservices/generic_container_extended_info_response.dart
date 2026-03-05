// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_identity_info_response.dart';

/// Container extended information
class GenericContainerExtendedInfoResponse {
  /// Container identity information
  final pulumi.Input<ContainerIdentityInfoResponse>? containerIdentityInfo;
  /// Public key of container cert
  final pulumi.Input<String>? rawCertData;
  /// Azure Backup Service Endpoints for the container
  final pulumi.Input<Map<String, String>>? serviceEndpoints;

  /// Creates a new [GenericContainerExtendedInfoResponse].
  /// [containerIdentityInfo] Container identity information
  /// [rawCertData] Public key of container cert
  /// [serviceEndpoints] Azure Backup Service Endpoints for the container
  GenericContainerExtendedInfoResponse({
    this.containerIdentityInfo,
    this.rawCertData,
    this.serviceEndpoints,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerIdentityInfo': ?pulumi.Input.mapOptionalInputValue<ContainerIdentityInfoResponse, Map<String, dynamic>>(containerIdentityInfo, (value) => value.toMap()),
      'rawCertData': ?rawCertData,
      'serviceEndpoints': ?serviceEndpoints,
    };
  }

  factory GenericContainerExtendedInfoResponse.fromMap(Map<String, dynamic> map) {
    return GenericContainerExtendedInfoResponse(
      containerIdentityInfo: (() { final guardedValue = map['containerIdentityInfo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ContainerIdentityInfoResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      rawCertData: (() { final guardedValue = map['rawCertData']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceEndpoints: (() { final guardedValue = map['serviceEndpoints']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

