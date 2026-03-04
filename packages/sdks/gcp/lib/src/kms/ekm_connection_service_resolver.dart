// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ekm_connection_service_resolver_server_certificate.dart';

class EkmConnectionServiceResolver {
  /// Optional. The filter applied to the endpoints of the resolved service. If no filter is specified, all endpoints will be considered. An endpoint will be chosen arbitrarily from the filtered list for each request. For endpoint filter syntax and examples, see https://cloud.google.com/service-directory/docs/reference/rpc/google.cloud.servicedirectory.v1#resolveservicerequest.
  final pulumi.Input<String>? endpointFilter;

  /// Required. The hostname of the EKM replica used at TLS and HTTP layers.
  final pulumi.Input<String> hostname;

  /// Required. A list of leaf server certificates used to authenticate HTTPS connections to the EKM replica. Currently, a maximum of 10 Certificate is supported.
  /// Structure is documented below.
  final pulumi.Input<List<EkmConnectionServiceResolverServerCertificate>>
  serverCertificates;

  /// Required. The resource name of the Service Directory service pointing to an EKM replica, in the format projects/*/locations/*/namespaces/*/services/*
  final pulumi.Input<String> serviceDirectoryService;

  /// Creates a new [EkmConnectionServiceResolver].
  /// [endpointFilter] Optional. The filter applied to the endpoints of the resolved service. If no filter is specified, all endpoints will be considered. An endpoint will be chosen arbitrarily from the filtered list for each request. For endpoint filter syntax and examples, see https://cloud.google.com/service-directory/docs/reference/rpc/google.cloud.servicedirectory.v1#resolveservicerequest.
  /// [hostname] Required. The hostname of the EKM replica used at TLS and HTTP layers.
  /// [serverCertificates] Required. A list of leaf server certificates used to authenticate HTTPS connections to the EKM replica. Currently, a maximum of 10 Certificate is supported.
  /// [serviceDirectoryService] Required. The resource name of the Service Directory service pointing to an EKM replica, in the format projects/*/locations/*/namespaces/*/services/*
  EkmConnectionServiceResolver({
    this.endpointFilter,
    required this.hostname,
    required this.serverCertificates,
    required this.serviceDirectoryService,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpointFilter': ?endpointFilter,
      'hostname': hostname,
      'serverCertificates':
          pulumi.Input.mapInputValue<
            List<EkmConnectionServiceResolverServerCertificate>,
            List<Map<String, dynamic>>
          >(
            serverCertificates,
            (value) =>
                pulumi.Input.encodeList<
                  EkmConnectionServiceResolverServerCertificate,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'serviceDirectoryService': serviceDirectoryService,
    };
  }

  factory EkmConnectionServiceResolver.fromMap(Map<String, dynamic> map) {
    return EkmConnectionServiceResolver(
      endpointFilter: (() {
        final guardedValue = map['endpointFilter'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      hostname: pulumi.Input.fromValue(map['hostname'] as String),
      serverCertificates: pulumi.Input.fromValue(
        pulumi.Input.decodeList<EkmConnectionServiceResolverServerCertificate>(
          map['serverCertificates']!,
          (value) => EkmConnectionServiceResolverServerCertificate.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      serviceDirectoryService: pulumi.Input.fromValue(
        map['serviceDirectoryService'] as String,
      ),
    );
  }
}
