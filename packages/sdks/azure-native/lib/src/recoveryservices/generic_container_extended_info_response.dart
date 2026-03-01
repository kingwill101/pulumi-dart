// ignore_for_file: unused_element, unnecessary_cast

import 'container_identity_info_response.dart';

/// Container extended information
class GenericContainerExtendedInfoResponse {
  /// Container identity information
  final ContainerIdentityInfoResponse? containerIdentityInfo;
  /// Public key of container cert
  final String? rawCertData;
  /// Azure Backup Service Endpoints for the container
  final Map<String, String>? serviceEndpoints;

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
      'containerIdentityInfo': ?containerIdentityInfo == null ? null : containerIdentityInfo!.toMap(),
      'rawCertData': ?rawCertData,
      'serviceEndpoints': ?serviceEndpoints,
    };
  }

  factory GenericContainerExtendedInfoResponse.fromMap(Map<String, dynamic> map) {
    return GenericContainerExtendedInfoResponse(
      containerIdentityInfo: map['containerIdentityInfo'] == null ? null : ContainerIdentityInfoResponse.fromMap((map['containerIdentityInfo'] as Map).cast<String, dynamic>()),
      rawCertData: map['rawCertData'] == null ? null : map['rawCertData'] as String,
      serviceEndpoints: map['serviceEndpoints'] == null ? null : (map['serviceEndpoints'] as Map).cast<String, String>(),
    );
  }
}

