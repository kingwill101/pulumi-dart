// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_managed_server_ca_ca_cert.dart';

class InstanceManagedServerCa {
  /// (Output)
  /// The PEM encoded CA certificate chains for managed server authentication
  /// Structure is documented below.
  final pulumi.Input<List<InstanceManagedServerCaCaCert>>? caCerts;

  /// Creates a new [InstanceManagedServerCa].
  /// [caCerts] (Output)
  InstanceManagedServerCa({
    this.caCerts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'caCerts': ?pulumi.Input.mapOptionalInputValue<List<InstanceManagedServerCaCaCert>, List<Map<String, dynamic>>>(caCerts, (value) => pulumi.Input.encodeList<InstanceManagedServerCaCaCert, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory InstanceManagedServerCa.fromMap(Map<String, dynamic> map) {
    return InstanceManagedServerCa(
      caCerts: map['caCerts'] == null ? null : (pulumi.Input.decodeList<InstanceManagedServerCaCaCert>(map['caCerts']!, (value) => InstanceManagedServerCaCaCert.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

