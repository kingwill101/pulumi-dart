import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_beyondcorp_partnerservices_v1alpha_encryption_info_response.dart';
import 'google_cloud_beyondcorp_partnerservices_v1alpha_routing_info_response.dart';
import 'google_cloud_beyondcorp_partnerservices_v1alpha_transport_info_response.dart';
import 'proxy_config_args.dart';

/// Creates a new BeyondCorp Enterprise ProxyConfig in a given organization and PartnerTenant. Can only be called by on onboarded Beyondcorp Enterprise partner.
/// Auto-naming is currently not supported for this resource.
class ProxyConfig extends pulumi.CustomResource {
  /// Timestamp when the resource was created.
  late final pulumi.Output<String> createTime;

  /// Optional. An arbitrary caller-provided name for the ProxyConfig. Cannot exceed 64 characters.
  late final pulumi.Output<String> displayName;

  /// Optional. Information to encrypt JWT for the proxy server.
  late final pulumi.Output<
    GoogleCloudBeyondcorpPartnerservicesV1alphaEncryptionInfoResponse
  >
  encryptionInfo;

  /// ProxyConfig resource name.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> organizationId;
  late final pulumi.Output<String> partnerTenantId;

  /// The URI of the proxy server.
  late final pulumi.Output<String> proxyUri;

  /// Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  late final pulumi.Output<String?> requestId;

  /// Routing info to direct traffic to the proxy server.
  late final pulumi.Output<
    GoogleCloudBeyondcorpPartnerservicesV1alphaRoutingInfoResponse
  >
  routingInfo;

  /// Transport layer information to verify for the proxy server.
  late final pulumi.Output<
    GoogleCloudBeyondcorpPartnerservicesV1alphaTransportInfoResponse
  >
  transportInfo;

  /// Timestamp when the resource was last modified.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [ProxyConfig].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ProxyConfig]. {@macro pulumi_beyondcorp_v1alpha_proxy_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ProxyConfig(
    String name, {
    ProxyConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:beyondcorp/v1alpha:ProxyConfig',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    createTime = registerOutput<String>('createTime');
    displayName = registerOutput<String>('displayName');
    encryptionInfo =
        registerOutput<
          GoogleCloudBeyondcorpPartnerservicesV1alphaEncryptionInfoResponse
        >(
          'encryptionInfo',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return GoogleCloudBeyondcorpPartnerservicesV1alphaEncryptionInfoResponse.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    this.name = registerOutput<String>('name');
    organizationId = registerOutput<String>('organizationId');
    partnerTenantId = registerOutput<String>('partnerTenantId');
    proxyUri = registerOutput<String>('proxyUri');
    requestId = registerOutput<String?>('requestId');
    routingInfo =
        registerOutput<
          GoogleCloudBeyondcorpPartnerservicesV1alphaRoutingInfoResponse
        >(
          'routingInfo',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return GoogleCloudBeyondcorpPartnerservicesV1alphaRoutingInfoResponse.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    transportInfo =
        registerOutput<
          GoogleCloudBeyondcorpPartnerservicesV1alphaTransportInfoResponse
        >(
          'transportInfo',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return GoogleCloudBeyondcorpPartnerservicesV1alphaTransportInfoResponse.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    updateTime = registerOutput<String>('updateTime');
  }
}
