// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_hostname_configuration_developer_portal.dart';
import 'service_hostname_configuration_management.dart';
import 'service_hostname_configuration_portal.dart';
import 'service_hostname_configuration_proxy.dart';
import 'service_hostname_configuration_scm.dart';

class ServiceHostnameConfiguration {
  /// One or more `developer_portal` blocks as documented below.
  final pulumi.Input<List<ServiceHostnameConfigurationDeveloperPortal>>? developerPortals;
  /// One or more `management` blocks as documented below.
  final pulumi.Input<List<ServiceHostnameConfigurationManagement>>? managements;
  /// One or more `portal` blocks as documented below.
  final pulumi.Input<List<ServiceHostnameConfigurationPortal>>? portals;
  /// One or more `proxy` blocks as documented below.
  final pulumi.Input<List<ServiceHostnameConfigurationProxy>>? proxies;
  /// One or more `scm` blocks as documented below.
  final pulumi.Input<List<ServiceHostnameConfigurationScm>>? scms;

  /// Creates a new [ServiceHostnameConfiguration].
  /// [developerPortals] One or more `developer_portal` blocks as documented below.
  /// [managements] One or more `management` blocks as documented below.
  /// [portals] One or more `portal` blocks as documented below.
  /// [proxies] One or more `proxy` blocks as documented below.
  /// [scms] One or more `scm` blocks as documented below.
  ServiceHostnameConfiguration({
    this.developerPortals,
    this.managements,
    this.portals,
    this.proxies,
    this.scms,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'developerPortals': ?pulumi.Input.mapOptionalInputValue<List<ServiceHostnameConfigurationDeveloperPortal>, List<Map<String, dynamic>>>(developerPortals, (value) => pulumi.Input.encodeList<ServiceHostnameConfigurationDeveloperPortal, Map<String, dynamic>>(value, (value) => value.toMap())),
      'managements': ?pulumi.Input.mapOptionalInputValue<List<ServiceHostnameConfigurationManagement>, List<Map<String, dynamic>>>(managements, (value) => pulumi.Input.encodeList<ServiceHostnameConfigurationManagement, Map<String, dynamic>>(value, (value) => value.toMap())),
      'portals': ?pulumi.Input.mapOptionalInputValue<List<ServiceHostnameConfigurationPortal>, List<Map<String, dynamic>>>(portals, (value) => pulumi.Input.encodeList<ServiceHostnameConfigurationPortal, Map<String, dynamic>>(value, (value) => value.toMap())),
      'proxies': ?pulumi.Input.mapOptionalInputValue<List<ServiceHostnameConfigurationProxy>, List<Map<String, dynamic>>>(proxies, (value) => pulumi.Input.encodeList<ServiceHostnameConfigurationProxy, Map<String, dynamic>>(value, (value) => value.toMap())),
      'scms': ?pulumi.Input.mapOptionalInputValue<List<ServiceHostnameConfigurationScm>, List<Map<String, dynamic>>>(scms, (value) => pulumi.Input.encodeList<ServiceHostnameConfigurationScm, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ServiceHostnameConfiguration.fromMap(Map<String, dynamic> map) {
    return ServiceHostnameConfiguration(
      developerPortals: map['developerPortals'] == null ? null : (pulumi.Input.decodeList<ServiceHostnameConfigurationDeveloperPortal>(map['developerPortals']!, (value) => ServiceHostnameConfigurationDeveloperPortal.fromMap((value as Map).cast<String, dynamic>()))).input(),
      managements: map['managements'] == null ? null : (pulumi.Input.decodeList<ServiceHostnameConfigurationManagement>(map['managements']!, (value) => ServiceHostnameConfigurationManagement.fromMap((value as Map).cast<String, dynamic>()))).input(),
      portals: map['portals'] == null ? null : (pulumi.Input.decodeList<ServiceHostnameConfigurationPortal>(map['portals']!, (value) => ServiceHostnameConfigurationPortal.fromMap((value as Map).cast<String, dynamic>()))).input(),
      proxies: map['proxies'] == null ? null : (pulumi.Input.decodeList<ServiceHostnameConfigurationProxy>(map['proxies']!, (value) => ServiceHostnameConfigurationProxy.fromMap((value as Map).cast<String, dynamic>()))).input(),
      scms: map['scms'] == null ? null : (pulumi.Input.decodeList<ServiceHostnameConfigurationScm>(map['scms']!, (value) => ServiceHostnameConfigurationScm.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

