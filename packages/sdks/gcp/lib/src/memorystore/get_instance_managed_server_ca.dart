// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_managed_server_ca_ca_cert.dart';

class GetInstanceManagedServerCa {
  /// The PEM encoded CA certificate chains for managed server authentication
  final pulumi.Input<List<GetInstanceManagedServerCaCaCert>> caCerts;

  /// Creates a new [GetInstanceManagedServerCa].
  /// [caCerts] The PEM encoded CA certificate chains for managed server authentication
  GetInstanceManagedServerCa({required this.caCerts});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'caCerts':
          pulumi.Input.mapInputValue<
            List<GetInstanceManagedServerCaCaCert>,
            List<Map<String, dynamic>>
          >(
            caCerts,
            (value) =>
                pulumi.Input.encodeList<
                  GetInstanceManagedServerCaCaCert,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory GetInstanceManagedServerCa.fromMap(Map<String, dynamic> map) {
    return GetInstanceManagedServerCa(
      caCerts: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetInstanceManagedServerCaCaCert>(
          map['caCerts']!,
          (value) => GetInstanceManagedServerCaCaCert.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
    );
  }
}
