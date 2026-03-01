// ignore_for_file: unused_element, unnecessary_cast

import 'instance_directory_services_ldap.dart';

class InstanceDirectoryServices {
  /// Configuration for LDAP servers.
  /// Structure is documented below.
  final InstanceDirectoryServicesLdap? ldap;

  /// Creates a new [InstanceDirectoryServices].
  /// [ldap] Configuration for LDAP servers.
  InstanceDirectoryServices({
    this.ldap,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ldap': ?ldap == null ? null : ldap!.toMap(),
    };
  }

  factory InstanceDirectoryServices.fromMap(Map<String, dynamic> map) {
    return InstanceDirectoryServices(
      ldap: map['ldap'] == null ? null : InstanceDirectoryServicesLdap.fromMap((map['ldap'] as Map).cast<String, dynamic>()),
    );
  }
}

