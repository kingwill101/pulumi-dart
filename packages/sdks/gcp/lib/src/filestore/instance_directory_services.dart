// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_directory_services_ldap.dart';

class InstanceDirectoryServices {
  /// Configuration for LDAP servers.
  /// Structure is documented below.
  final pulumi.Input<InstanceDirectoryServicesLdap>? ldap;

  /// Creates a new [InstanceDirectoryServices].
  /// [ldap] Configuration for LDAP servers.
  InstanceDirectoryServices({this.ldap});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ldap':
          ?pulumi.Input.mapOptionalInputValue<
            InstanceDirectoryServicesLdap,
            Map<String, dynamic>
          >(ldap, (value) => value.toMap()),
    };
  }

  factory InstanceDirectoryServices.fromMap(Map<String, dynamic> map) {
    return InstanceDirectoryServices(
      ldap: (() {
        final guardedValue = map['ldap'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          InstanceDirectoryServicesLdap.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
