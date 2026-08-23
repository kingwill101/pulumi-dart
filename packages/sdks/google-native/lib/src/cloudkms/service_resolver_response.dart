// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'certificate_response.dart';

/// A ServiceResolver represents an EKM replica that can be reached within an EkmConnection.
class ServiceResolverResponse {
  /// Optional. The filter applied to the endpoints of the resolved service. If no filter is specified, all endpoints will be considered. An endpoint will be chosen arbitrarily from the filtered list for each request. For endpoint filter syntax and examples, see https://cloud.google.com/service-directory/docs/reference/rpc/google.cloud.servicedirectory.v1#resolveservicerequest.
  final pulumi.Input<String> endpointFilter;
  /// The hostname of the EKM replica used at TLS and HTTP layers.
  final pulumi.Input<String> hostname;
  /// A list of leaf server certificates used to authenticate HTTPS connections to the EKM replica. Currently, a maximum of 10 Certificate is supported.
  final pulumi.Input<List<CertificateResponse>> serverCertificates;
  /// The resource name of the Service Directory service pointing to an EKM replica, in the format `projects/*/locations/*/namespaces/*/services/*`.
  final pulumi.Input<String> serviceDirectoryService;

  /// Creates a new [ServiceResolverResponse].
  /// [endpointFilter] Optional. The filter applied to the endpoints of the resolved service. If no filter is specified, all endpoints will be considered. An endpoint will be chosen arbitrarily from the filtered list for each request. For endpoint filter syntax and examples, see https://cloud.google.com/service-directory/docs/reference/rpc/google.cloud.servicedirectory.v1#resolveservicerequest.
  /// [hostname] The hostname of the EKM replica used at TLS and HTTP layers.
  /// [serverCertificates] A list of leaf server certificates used to authenticate HTTPS connections to the EKM replica. Currently, a maximum of 10 Certificate is supported.
  /// [serviceDirectoryService] The resource name of the Service Directory service pointing to an EKM replica, in the format `projects/*/locations/*/namespaces/*/services/*`.
  const ServiceResolverResponse({
    required this.endpointFilter,
    required this.hostname,
    required this.serverCertificates,
    required this.serviceDirectoryService,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpointFilter': endpointFilter,
      'hostname': hostname,
      'serverCertificates': pulumi.Input.mapInputValue<List<CertificateResponse>, List<Map<String, dynamic>>>(serverCertificates, (value) => pulumi.Input.encodeList<CertificateResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'serviceDirectoryService': serviceDirectoryService,
    };
  }

  factory ServiceResolverResponse.fromMap(Map<String, dynamic> map) {
    return ServiceResolverResponse(
      endpointFilter: pulumi.Input.fromValue(map['endpointFilter'] as String),
      hostname: pulumi.Input.fromValue(map['hostname'] as String),
      serverCertificates: pulumi.Input.fromValue(pulumi.Input.decodeList<CertificateResponse>(map['serverCertificates']!, (value) => CertificateResponse.fromMap((value as Map).cast<String, dynamic>()))),
      serviceDirectoryService: pulumi.Input.fromValue(map['serviceDirectoryService'] as String),
    );
  }
}
