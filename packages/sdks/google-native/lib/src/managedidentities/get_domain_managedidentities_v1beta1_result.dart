// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'trust_response_managedidentities_v1beta1.dart';

/// Result data returned by getDomain.
class GetDomainManagedidentitiesV1beta1Result {
  /// Optional. The name of delegated administrator account used to perform Active Directory operations. If not specified, `setupadmin` will be used.
  final String? admin;
  /// Optional. Configuration for audit logs. True if audit logs are enabled, else false. Default is audit logs disabled.
  final bool? auditLogsEnabled;
  /// Optional. The full names of the Google Compute Engine [networks](/compute/docs/networks-and-firewalls#networks) the domain instance is connected to. Networks can be added using UpdateDomain. The domain is only available on networks listed in `authorized_networks`. If CIDR subnets overlap between networks, domain creation will fail.
  final List<String>? authorizedNetworks;
  /// The time the instance was created.
  final String? createTime;
  /// The fully-qualified domain name of the exposed domain used by clients to connect to the service. Similar to what would be chosen for an Active Directory set up on an internal network.
  final String? fqdn;
  /// Optional. Resource labels that can contain user-provided metadata.
  final Map<String, String>? labels;
  /// Locations where domain needs to be provisioned. regions e.g. us-west1 or us-east4 Service supports up to 4 locations at once. Each location will use a /26 block.
  final List<String>? locations;
  /// The unique name of the domain using the form: `projects/{project_id}/locations/global/domains/{domain_name}`.
  final String? name;
  /// The CIDR range of internal addresses that are reserved for this domain. Reserved networks must be /24 or larger. Ranges must be unique and non-overlapping with existing subnets in [Domain].[authorized_networks].
  final String? reservedIpRange;
  /// The current state of this domain.
  final String? state;
  /// Additional information about the current status of this domain, if available.
  final String? statusMessage;
  /// The current trusts associated with the domain.
  final List<TrustResponseManagedidentitiesV1beta1>? trusts;
  /// The last update time.
  final String? updateTime;

  /// Creates a new [GetDomainManagedidentitiesV1beta1Result].
  /// [admin] Optional. The name of delegated administrator account used to perform Active Directory operations. If not specified, `setupadmin` will be used.
  /// [auditLogsEnabled] Optional. Configuration for audit logs. True if audit logs are enabled, else false. Default is audit logs disabled.
  /// [authorizedNetworks] Optional. The full names of the Google Compute Engine [networks](/compute/docs/networks-and-firewalls#networks) the domain instance is connected to. Networks can be added using UpdateDomain. The domain is only available on networks listed in `authorized_networks`. If CIDR subnets overlap between networks, domain creation will fail.
  /// [createTime] The time the instance was created.
  /// [fqdn] The fully-qualified domain name of the exposed domain used by clients to connect to the service. Similar to what would be chosen for an Active Directory set up on an internal network.
  /// [labels] Optional. Resource labels that can contain user-provided metadata.
  /// [locations] Locations where domain needs to be provisioned. regions e.g. us-west1 or us-east4 Service supports up to 4 locations at once. Each location will use a /26 block.
  /// [name] The unique name of the domain using the form: `projects/{project_id}/locations/global/domains/{domain_name}`.
  /// [reservedIpRange] The CIDR range of internal addresses that are reserved for this domain. Reserved networks must be /24 or larger. Ranges must be unique and non-overlapping with existing subnets in [Domain].[authorized_networks].
  /// [state] The current state of this domain.
  /// [statusMessage] Additional information about the current status of this domain, if available.
  /// [trusts] The current trusts associated with the domain.
  /// [updateTime] The last update time.
  const GetDomainManagedidentitiesV1beta1Result({
    this.admin,
    this.auditLogsEnabled,
    this.authorizedNetworks,
    this.createTime,
    this.fqdn,
    this.labels,
    this.locations,
    this.name,
    this.reservedIpRange,
    this.state,
    this.statusMessage,
    this.trusts,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'admin': ?admin,
      'auditLogsEnabled': ?auditLogsEnabled,
      'authorizedNetworks': ?authorizedNetworks,
      'createTime': ?createTime,
      'fqdn': ?fqdn,
      'labels': ?labels,
      'locations': ?locations,
      'name': ?name,
      'reservedIpRange': ?reservedIpRange,
      'state': ?state,
      'statusMessage': ?statusMessage,
      'trusts': ?(() { final guardedValue = trusts; if (guardedValue == null) return null; return pulumi.Input.encodeList<TrustResponseManagedidentitiesV1beta1, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'updateTime': ?updateTime,
    };
  }

  factory GetDomainManagedidentitiesV1beta1Result.fromMap(Map<String, dynamic> map) {
    return GetDomainManagedidentitiesV1beta1Result(
      admin: (() { final guardedValue = map['admin']; if (guardedValue == null) return null; return guardedValue as String; })(),
      auditLogsEnabled: (() { final guardedValue = map['auditLogsEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      authorizedNetworks: (() { final guardedValue = map['authorizedNetworks']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      fqdn: (() { final guardedValue = map['fqdn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      locations: (() { final guardedValue = map['locations']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      reservedIpRange: (() { final guardedValue = map['reservedIpRange']; if (guardedValue == null) return null; return guardedValue as String; })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      statusMessage: (() { final guardedValue = map['statusMessage']; if (guardedValue == null) return null; return guardedValue as String; })(),
      trusts: (() { final guardedValue = map['trusts']; if (guardedValue == null) return null; return pulumi.Input.decodeList<TrustResponseManagedidentitiesV1beta1>(guardedValue, (value) => TrustResponseManagedidentitiesV1beta1.fromMap((value as Map).cast<String, dynamic>())); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
