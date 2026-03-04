// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_managed_server_ca_ca_cert.dart';

class GetClusterManagedServerCa {
  /// The PEM encoded CA certificate chains for redis managed server authentication
  final pulumi.Input<List<GetClusterManagedServerCaCaCert>> caCerts;

  /// Creates a new [GetClusterManagedServerCa].
  /// [caCerts] The PEM encoded CA certificate chains for redis managed server authentication
  GetClusterManagedServerCa({required this.caCerts});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'caCerts':
          pulumi.Input.mapInputValue<
            List<GetClusterManagedServerCaCaCert>,
            List<Map<String, dynamic>>
          >(
            caCerts,
            (value) =>
                pulumi.Input.encodeList<
                  GetClusterManagedServerCaCaCert,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory GetClusterManagedServerCa.fromMap(Map<String, dynamic> map) {
    return GetClusterManagedServerCa(
      caCerts: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetClusterManagedServerCaCaCert>(
          map['caCerts']!,
          (value) => GetClusterManagedServerCaCaCert.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
    );
  }
}
