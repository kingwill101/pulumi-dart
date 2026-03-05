// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_beyondcorp_partnerservices_v1alpha_encryption_info_response.dart';
import 'google_cloud_beyondcorp_partnerservices_v1alpha_routing_info_response.dart';
import 'google_cloud_beyondcorp_partnerservices_v1alpha_transport_info_response.dart';

/// Result data returned by getProxyConfig.
class GetProxyConfigResult {
  /// Timestamp when the resource was created.
  final String createTime;
  /// Optional. An arbitrary caller-provided name for the ProxyConfig. Cannot exceed 64 characters.
  final String displayName;
  /// Optional. Information to encrypt JWT for the proxy server.
  final GoogleCloudBeyondcorpPartnerservicesV1alphaEncryptionInfoResponse encryptionInfo;
  /// ProxyConfig resource name.
  final String name;
  /// The URI of the proxy server.
  final String proxyUri;
  /// Routing info to direct traffic to the proxy server.
  final GoogleCloudBeyondcorpPartnerservicesV1alphaRoutingInfoResponse routingInfo;
  /// Transport layer information to verify for the proxy server.
  final GoogleCloudBeyondcorpPartnerservicesV1alphaTransportInfoResponse transportInfo;
  /// Timestamp when the resource was last modified.
  final String updateTime;

  /// Creates a new [GetProxyConfigResult].
  /// [createTime] Timestamp when the resource was created.
  /// [displayName] Optional. An arbitrary caller-provided name for the ProxyConfig. Cannot exceed 64 characters.
  /// [encryptionInfo] Optional. Information to encrypt JWT for the proxy server.
  /// [name] ProxyConfig resource name.
  /// [proxyUri] The URI of the proxy server.
  /// [routingInfo] Routing info to direct traffic to the proxy server.
  /// [transportInfo] Transport layer information to verify for the proxy server.
  /// [updateTime] Timestamp when the resource was last modified.
  GetProxyConfigResult({
    required this.createTime,
    required this.displayName,
    required this.encryptionInfo,
    required this.name,
    required this.proxyUri,
    required this.routingInfo,
    required this.transportInfo,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'displayName': displayName,
      'encryptionInfo': encryptionInfo.toMap(),
      'name': name,
      'proxyUri': proxyUri,
      'routingInfo': routingInfo.toMap(),
      'transportInfo': transportInfo.toMap(),
      'updateTime': updateTime,
    };
  }

  factory GetProxyConfigResult.fromMap(Map<String, dynamic> map) {
    return GetProxyConfigResult(
      createTime: map['createTime'] as String,
      displayName: map['displayName'] as String,
      encryptionInfo: GoogleCloudBeyondcorpPartnerservicesV1alphaEncryptionInfoResponse.fromMap((map['encryptionInfo']! as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      proxyUri: map['proxyUri'] as String,
      routingInfo: GoogleCloudBeyondcorpPartnerservicesV1alphaRoutingInfoResponse.fromMap((map['routingInfo']! as Map).cast<String, dynamic>()),
      transportInfo: GoogleCloudBeyondcorpPartnerservicesV1alphaTransportInfoResponse.fromMap((map['transportInfo']! as Map).cast<String, dynamic>()),
      updateTime: map['updateTime'] as String,
    );
  }
}

