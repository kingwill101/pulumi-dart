// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_service_hostname_configuration_developer_portal.dart';
import 'get_service_hostname_configuration_management.dart';
import 'get_service_hostname_configuration_portal.dart';
import 'get_service_hostname_configuration_proxy.dart';
import 'get_service_hostname_configuration_scm.dart';

class GetServiceHostnameConfiguration {
  /// One or more `developer_portal` blocks as documented below.
  final List<GetServiceHostnameConfigurationDeveloperPortal> developerPortals;
  /// One or more `management` blocks as documented below.
  final List<GetServiceHostnameConfigurationManagement> managements;
  /// One or more `portal` blocks as documented below.
  final List<GetServiceHostnameConfigurationPortal> portals;
  /// One or more `proxy` blocks as documented below.
  final List<GetServiceHostnameConfigurationProxy> proxies;
  /// One or more `scm` blocks as documented below.
  final List<GetServiceHostnameConfigurationScm> scms;

  /// Creates a new [GetServiceHostnameConfiguration].
  /// [developerPortals] One or more `developer_portal` blocks as documented below.
  /// [managements] One or more `management` blocks as documented below.
  /// [portals] One or more `portal` blocks as documented below.
  /// [proxies] One or more `proxy` blocks as documented below.
  /// [scms] One or more `scm` blocks as documented below.
  GetServiceHostnameConfiguration({
    required this.developerPortals,
    required this.managements,
    required this.portals,
    required this.proxies,
    required this.scms,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'developerPortals': pulumi.Input.encodeList<GetServiceHostnameConfigurationDeveloperPortal, Map<String, dynamic>>(developerPortals, (value) => value.toMap()),
      'managements': pulumi.Input.encodeList<GetServiceHostnameConfigurationManagement, Map<String, dynamic>>(managements, (value) => value.toMap()),
      'portals': pulumi.Input.encodeList<GetServiceHostnameConfigurationPortal, Map<String, dynamic>>(portals, (value) => value.toMap()),
      'proxies': pulumi.Input.encodeList<GetServiceHostnameConfigurationProxy, Map<String, dynamic>>(proxies, (value) => value.toMap()),
      'scms': pulumi.Input.encodeList<GetServiceHostnameConfigurationScm, Map<String, dynamic>>(scms, (value) => value.toMap()),
    };
  }

  factory GetServiceHostnameConfiguration.fromMap(Map<String, dynamic> map) {
    return GetServiceHostnameConfiguration(
      developerPortals: pulumi.Input.decodeList<GetServiceHostnameConfigurationDeveloperPortal>(map['developerPortals'], (value) => GetServiceHostnameConfigurationDeveloperPortal.fromMap((value as Map).cast<String, dynamic>())),
      managements: pulumi.Input.decodeList<GetServiceHostnameConfigurationManagement>(map['managements'], (value) => GetServiceHostnameConfigurationManagement.fromMap((value as Map).cast<String, dynamic>())),
      portals: pulumi.Input.decodeList<GetServiceHostnameConfigurationPortal>(map['portals'], (value) => GetServiceHostnameConfigurationPortal.fromMap((value as Map).cast<String, dynamic>())),
      proxies: pulumi.Input.decodeList<GetServiceHostnameConfigurationProxy>(map['proxies'], (value) => GetServiceHostnameConfigurationProxy.fromMap((value as Map).cast<String, dynamic>())),
      scms: pulumi.Input.decodeList<GetServiceHostnameConfigurationScm>(map['scms'], (value) => GetServiceHostnameConfigurationScm.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

