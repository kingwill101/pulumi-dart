// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_directory_service_ldap.dart';

class GetInstanceDirectoryService {
  /// Configuration for LDAP servers.
  final pulumi.Input<List<GetInstanceDirectoryServiceLdap>> ldaps;

  /// Creates a new [GetInstanceDirectoryService].
  /// [ldaps] Configuration for LDAP servers.
  GetInstanceDirectoryService({
    required this.ldaps,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ldaps': pulumi.Input.mapInputValue<List<GetInstanceDirectoryServiceLdap>, List<Map<String, dynamic>>>(ldaps, (value) => pulumi.Input.encodeList<GetInstanceDirectoryServiceLdap, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetInstanceDirectoryService.fromMap(Map<String, dynamic> map) {
    return GetInstanceDirectoryService(
      ldaps: pulumi.Input.fromValue(pulumi.Input.decodeList<GetInstanceDirectoryServiceLdap>(map['ldaps']!, (value) => GetInstanceDirectoryServiceLdap.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

