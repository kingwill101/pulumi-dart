// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_beyondcorp_partnerservices_v1alpha_encryption_info.dart';
import 'google_cloud_beyondcorp_partnerservices_v1alpha_routing_info.dart';
import 'google_cloud_beyondcorp_partnerservices_v1alpha_transport_info.dart';

/// {@template pulumi_beyondcorp_v1alpha_proxy_config_args_doc}
/// The set of arguments for ProxyConfig.
/// {@endtemplate}
/// {@macro pulumi_beyondcorp_v1alpha_proxy_config_args_doc}
class ProxyConfigArgs {
  /// Optional. An arbitrary caller-provided name for the ProxyConfig. Cannot exceed 64 characters.
  final pulumi.Input<String>? displayName;
  /// Optional. Information to encrypt JWT for the proxy server.
  final pulumi.Input<GoogleCloudBeyondcorpPartnerservicesV1alphaEncryptionInfo>? encryptionInfo;
  final pulumi.Input<String> organizationId;
  final pulumi.Input<String> partnerTenantId;
  /// The URI of the proxy server.
  final pulumi.Input<String> proxyUri;
  /// Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;
  /// Routing info to direct traffic to the proxy server.
  final pulumi.Input<GoogleCloudBeyondcorpPartnerservicesV1alphaRoutingInfo> routingInfo;
  /// Transport layer information to verify for the proxy server.
  final pulumi.Input<GoogleCloudBeyondcorpPartnerservicesV1alphaTransportInfo> transportInfo;

  /// Creates a new [ProxyConfigArgs].
  /// [displayName] Optional. An arbitrary caller-provided name for the ProxyConfig. Cannot exceed 64 characters.
  /// [encryptionInfo] Optional. Information to encrypt JWT for the proxy server.
  /// [organizationId] Required.
  /// [partnerTenantId] Required.
  /// [proxyUri] The URI of the proxy server.
  /// [requestId] Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  /// [routingInfo] Routing info to direct traffic to the proxy server.
  /// [transportInfo] Transport layer information to verify for the proxy server.
  const ProxyConfigArgs({
    this.displayName,
    this.encryptionInfo,
    required this.organizationId,
    required this.partnerTenantId,
    required this.proxyUri,
    this.requestId,
    required this.routingInfo,
    required this.transportInfo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'encryptionInfo': ?pulumi.Input.mapOptionalInputValue<GoogleCloudBeyondcorpPartnerservicesV1alphaEncryptionInfo, Map<String, dynamic>>(encryptionInfo, (value) => value.toMap()),
      'organizationId': organizationId,
      'partnerTenantId': partnerTenantId,
      'proxyUri': proxyUri,
      'requestId': ?requestId,
      'routingInfo': pulumi.Input.mapInputValue<GoogleCloudBeyondcorpPartnerservicesV1alphaRoutingInfo, Map<String, dynamic>>(routingInfo, (value) => value.toMap()),
      'transportInfo': pulumi.Input.mapInputValue<GoogleCloudBeyondcorpPartnerservicesV1alphaTransportInfo, Map<String, dynamic>>(transportInfo, (value) => value.toMap()),
    };
  }

  factory ProxyConfigArgs.fromMap(Map<String, dynamic> map) {
    return ProxyConfigArgs(
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      encryptionInfo: (() { final guardedValue = map['encryptionInfo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudBeyondcorpPartnerservicesV1alphaEncryptionInfo.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      organizationId: pulumi.Input.fromValue(map['organizationId'] as String),
      partnerTenantId: pulumi.Input.fromValue(map['partnerTenantId'] as String),
      proxyUri: pulumi.Input.fromValue(map['proxyUri'] as String),
      requestId: (() { final guardedValue = map['requestId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      routingInfo: pulumi.Input.fromValue(GoogleCloudBeyondcorpPartnerservicesV1alphaRoutingInfo.fromMap((map['routingInfo']! as Map).cast<String, dynamic>())),
      transportInfo: pulumi.Input.fromValue(GoogleCloudBeyondcorpPartnerservicesV1alphaTransportInfo.fromMap((map['transportInfo']! as Map).cast<String, dynamic>())),
    );
  }
}
